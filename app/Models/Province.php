<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Created by PhpStorm.
 * User: chaow
 * Date: 5/25/2016
 * Time: 3:50 PM
 */
class Province extends Model
{
    protected $table = "thailand_provinces";

    protected $primaryKey = 'PROVINCE_ID';


    public function amphurs()
    {
        return $this->hasMany(Amphur::class, "PROVINCE_ID", "PROVINCE_ID");
    }

}

