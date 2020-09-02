<?php
namespace App\Models;
use \Illuminate\Database\Eloquent\Model;
 
class Typesoffood extends Model 
{
	protected $primaryKey = 'TypeId';
    protected $table = 'typesoffood';
    protected $fillable = ['TypesOfFood'];
    public $timestamps = false;


    public function products()
    {
        return $this->hasMany('App\Models\Product', 'Type');
    }
}