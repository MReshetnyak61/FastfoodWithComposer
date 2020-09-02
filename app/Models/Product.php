<?php
namespace App\Models;

use \Illuminate\Database\Eloquent\Model;
 
class Product extends Model 
{
	protected $primaryKey = 'Id';
    protected $table = 'product';
    protected $fillable = ['Name', 'Img', 'Logo', 'Price', 'Ingredients', 'Type'];
    public $timestamps = false;

    public function type()
    {
        return $this->belongsTo('App\Models\TypesofFood', 'Type');
    }
   
    public function logo()
    {
        return $this->belongsTo('App\Models\Logotips', 'Logo');
    }
}