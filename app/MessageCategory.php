<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MessageCategory extends Model
{
    //
    protected $table = 'message_categories';

    protected $fillable = [
        'category_name','category_name_bn','status','details',
    ];
}
