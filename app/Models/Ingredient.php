<?php
namespace App\Models;

use \Illuminate\Database\Eloquent\Model;
 
class Ingredient extends Model 
{
	protected $primaryKey = 'Id';
    protected $table = 'ingredients';
    protected $fillable = ['Name', 'Type', 'Price', 'Img', 'Description'];
    public $timestamps = false;

    public function type()
    {
        return $this->belongsTo('App\Models\TypesofIngredients', 'Type');
    }
   
}