<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class transfer extends Model
{
    //
    protected $fillable = [
        'from', 'to',
    ];
}
