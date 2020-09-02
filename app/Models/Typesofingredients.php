<?php
namespace App\Models;
use \Illuminate\Database\Eloquent\Model;
 
class Typesofingredients extends Model 
{
	protected $primaryKey = 'Id';
    protected $table = 'typesofingredients';
    protected $fillable = ['TypeName', 'TypeNameRussian'];
    public $timestamps = false;

    public function ingredients()
    {
        return $this->hasMany('App\Models\Ingredients', 'Type');
    }
}