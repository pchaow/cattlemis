<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Created by PhpStorm.
 * User: chaow
 * Date: 5/25/2016
 * Time: 3:50 PM
 */
class Breeding extends Model
{
    protected $fillable = [
        //part 1
       'breeding_rate'
        //part2
    ];

    public function farm_owner()
    {
        return $this->belongsTo(FarmOwner::class);
    }

    public function getFarmOwner()
    {
        return $this->farm_owner()->get();
    }
}
