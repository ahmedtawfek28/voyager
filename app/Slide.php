<?php

namespace App;
use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;


class Slide extends Model
{
	use Translatable;
	protected $translatable = ['maintitle','title', 'body'];
}
