<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Url extends Model
{
    protected $guarded = ['id'];
    protected $fillable = ['originalURL', 'shortURL', 'ip', 'count'];
}
