<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Admins extends Model
{
//For Languages 
    protected $table='admins';
    protected $guarded = [];
    protected $fillable = ['name','settings'];

    
}
