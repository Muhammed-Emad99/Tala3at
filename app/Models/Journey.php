<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Journey extends Model
{
    use HasFactory;

    protected $fillable = [
        'journey_name','journey_description',
        'user_id','date_of_journey','time_of_journey',
        'image','category_id','state_id','city_id'
    ];

    public function getImageAttribute($value)
    {
        return asset('uploads/images/'.$value);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function state(){
        return $this->belongsTo(State::class);
    }

    public function city(){
        return $this->belongsTo(City::class);
    }

}
