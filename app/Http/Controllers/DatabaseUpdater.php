<?php

namespace App\Http\Controllers;

use Doctrine\DBAL\Schema\Column;
use Doctrine\DBAL\Schema\SchemaException;
use Doctrine\DBAL\Schema\TableDiff;
use Illuminate\Support\Facades\Artisan;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Database\Schema\Table;
use TCG\Voyager\Database\Types\Type;

class DatabaseUpdater
{
    protected $tableArr;
    protected $table;
    protected $originalTable;

    public function __construct(array $tableArr)
    {
        Type::registerCustomPlatformTypes();

        $this->table = Table::make($tableArr);
        $this->tableArr = $tableArr;
        $this->originalTable = SchemaManager::listTableDetails($tableArr['oldName']);
    }

    /**
     * Update the table.
     *
     * @return void
     */
    public static function update($table)
    {
        if (!is_array($table)) {
            $table = json_decode($table, true);
        }

        if (!SchemaManager::tableExists($table['oldName'])) {
            throw SchemaException::tableDoesNotExist($table['oldName']);
        }

        $updater = new self($table);

        $updater->updateTable();
    }

    /**
     * Updates the table.
     *
     * @return void
     */
    public function updateTable()
    {
        // Get table new name
        if (($newName = $this->table->getName()) != $this->originalTable->getName()) {
            // Make sure the new name doesn't already exist
            if (SchemaManager::tableExists($newName)) {
                throw SchemaException::tableAlreadyExists($newName);
            }
        } else {
            $newName = false;
        }
        // Rename columns
        if ($renamedColumnsDiff = $this->getRenamedColumnsDiff()) {
            SchemaManager::alterTable($renamedColumnsDiff);

            // Refresh original table after renaming the columns
            $this->originalTable = SchemaManager::listTableDetails($this->tableArr['oldName']);
        }

        $tableDiff = $this->originalTable->diff($this->table);

//        dd($tableDiff->addedColumns);


        // Add new table name to tableDiff
        if ($newName) {
            if (!$tableDiff) {
                $tableDiff = new TableDiff($this->tableArr['oldName']);
                $tableDiff->fromTable = $this->originalTable;
            }

            $tableDiff->newName = $newName;
        }

        // Update the table
        if ($tableDiff) {

//            --------------------------------Update Migration File-----------------------------------------------


//            --------------------------------TableName Migration File-----------------------------------------------

            if ($newName != false) {
                $oldName = $this->originalTable->getName();
                $fileName = 'up_n_' . $oldName . '_t_' . $newName;
                $pieces = explode("_", $fileName);
                $className = '';
                for ($i = 0, $iMax = count($pieces); $i < $iMax; $i++) {
                    $className = $className . ucfirst($pieces[$i]);

                }

                $my_file = '../database/migrations/' . date('Y_m_d') . '_' . time() . '_' . $fileName . '.php';
                $handle = fopen($my_file, 'w') or die('Cannot open file:  ' . $my_file); //implicitly creates file
                $handle = fopen($my_file, 'a') or die('Cannot open file:  ' . $my_file);

                $data = "
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class " . $className . " extends Migration
            {
                /**
                 * Run the migrations.
                 *
                 * @return void
                 */
                public function up()
                {
                    Schema::rename('$oldName', '$newName');
                }

                /**
                 * Reverse the migrations.
                 *
                 * @return void
                 */
                public function down()
                {
                    Schema::rename('$newName', '$oldName');
                }
            }";
                fwrite($handle, $data);
                Artisan::call('migrate', []);

            }
//            --------------------------------TableName Migration File-----------------------------------------------
//            --------------------------------Add Column Migration File-----------------------------------------------
            $addColumnCount = 0;
            $fileAddNameMain = '';
            $AdddedNames = '';
            $AddColumnsData = '';
            $DropAddColumnsData = '';
            foreach ($tableDiff->addedColumns as $addColumn) {
                $AdddedNames = $AdddedNames . $addColumn->getName() . '_';
                $TableAddName = $addColumn->getType()->tableName;
                $addColumnCount++;
                $pS = '';
                $pR = '';
                if ($addColumn->getautoIncrement() == 1) {
                    $pS = "->autoIncrement()";
                }
                if ($addColumn->getunsigned() == 1) {
                    $pS = $pS . "->unsigned()";
                }
                if ($addColumn->getnotnull() == 0) {
                    $pS = $pS . "->nullable()";
                }
                if ($addColumn->getdefault() != '') {

                    $pS = $pS . "->default('" . $addColumn->getdefault() . "')";
                }
                if ($addColumn->getlength() >= 1) {
                    $pR = "," . $addColumn->getlength();
                }

                $X = str_replace('\\', '', $addColumn->gettype());
                if ($X == 'TinyInt' || $X == 'SmallInt' || $X == 'MediumInt' || $X == 'BigInt') {
                    $X = 'Integer';
                }
                if ($X == 'TinyText' || $X == 'VarChar') {
                    $X = 'String';
                }

                $AddColumnsData = $AddColumnsData . "\$table->" . $X . "('" . $addColumn->getname() . "'" . $pR . ")" . $pS . "; \n";
                $DropAddColumnsData = $DropAddColumnsData . "\$table->dropColumn( '" . $addColumn->getname() . "');\n";
            }
            if ($addColumnCount > 0) {
                $pieces = explode("_", 'add_' . $AdddedNames . 'to_' . $TableAddName . '_table');
                $className = '';
                for ($i = 0, $iMax = count($pieces); $i < $iMax; $i++) {
                    $className = $className . ucfirst($pieces[$i]);

                }

                $tableAddName = date('Y_m_d') . '_' . time() . '_add_' . $AdddedNames . 'to_' . $TableAddName . '_table.php';
                $fileAddNameMain = '../database/migrations/' . $tableAddName;
                $handle = fopen($fileAddNameMain, 'w') or die('Cannot open file:  ' . $fileAddNameMain); //implicitly creates file
                $handle = fopen($fileAddNameMain, 'a') or die('Cannot open file:  ' . $fileAddNameMain);
                $data = "
            <?php
            use Illuminate\Database\Migrations\Migration;
            use Illuminate\Database\Schema\Blueprint;
            use Illuminate\Support\Facades\Schema;

            class " . $className . " extends Migration
            {
            /**
            * Run the migrations.
            *
            * @return void
            */
            public function up()
            {

            Schema::table( '" . $TableAddName . "', function (Blueprint \$table) {
                " . $AddColumnsData . "
            });
            }

            /**
            * Reverse the migrations.
            *
            * @return void
            */
            public function down()
            {
            Schema::table( '" . $TableAddName . "', function (Blueprint \$table) {
                " . $DropAddColumnsData . "
           });
            }
            }";
                fwrite($handle, $data);
                Artisan::call('migrate', []);

            }

//             --------------------------------Add Column Migration File-----------------------------------------------


//             --------------------------------Add Column Migration File-----------------------------------------------


            //            --------------------------------Update Migration File-----------------------------------------------

        }
    }

    /**
     * Get the table diff to rename columns.
     *
     * @return \Doctrine\DBAL\Schema\TableDiff
     */
    protected
    function getRenamedColumnsDiff()
    {
        $renamedColumns = $this->getRenamedColumns();

        if (empty($renamedColumns)) {
            return false;
        }

        $renamedColumnsDiff = new TableDiff($this->tableArr['oldName']);
        $renamedColumnsDiff->fromTable = $this->originalTable;

        foreach ($renamedColumns as $oldName => $newName) {
            $renamedColumnsDiff->renamedColumns[$oldName] = $this->table->getColumn($newName);
        }

        return $renamedColumnsDiff;
    }

    /**
     * Get the table diff to rename columns and indexes.
     *
     * @return \Doctrine\DBAL\Schema\TableDiff
     */
    protected
    function getRenamedDiff()
    {
        $renamedColumns = $this->getRenamedColumns();
        $renamedIndexes = $this->getRenamedIndexes();

        if (empty($renamedColumns) && empty($renamedIndexes)) {
            return false;
        }

        $renamedDiff = new TableDiff($this->tableArr['oldName']);
        $renamedDiff->fromTable = $this->originalTable;

        foreach ($renamedColumns as $oldName => $newName) {
            $renamedDiff->renamedColumns[$oldName] = $this->table->getColumn($newName);
        }

        foreach ($renamedIndexes as $oldName => $newName) {
            $renamedDiff->renamedIndexes[$oldName] = $this->table->getIndex($newName);
        }

        return $renamedDiff;
    }

    /**
     * Get columns that were renamed.
     *
     * @return array
     */
    protected
    function getRenamedColumns()
    {
        $renamedColumns = [];

        foreach ($this->tableArr['columns'] as $column) {
            $oldName = $column['oldName'];

            // make sure this is an existing column and not a new one
            if ($this->originalTable->hasColumn($oldName)) {
                $name = $column['name'];

                if ($name != $oldName) {
                    $renamedColumns[$oldName] = $name;
                }
            }
        }

        return $renamedColumns;
    }

    /**
     * Get indexes that were renamed.
     *
     * @return array
     */
    protected
    function getRenamedIndexes()
    {
        $renamedIndexes = [];

        foreach ($this->tableArr['indexes'] as $index) {
            $oldName = $index['oldName'];

            // make sure this is an existing index and not a new one
            if ($this->originalTable->hasIndex($oldName)) {
                $name = $index['name'];

                if ($name != $oldName) {
                    $renamedIndexes[$oldName] = $name;
                }
            }
        }

        return $renamedIndexes;
    }
}
