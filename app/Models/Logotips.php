<?php
namespace App\Models;
use \Illuminate\Database\Eloquent\Model;
 
class Logotips extends Model 
{
	protected $primaryKey = 'LogoId';
    protected $table = 'logotips';
    protected $fillable = ['Picture'];
    public $timestamps = false;

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }
}