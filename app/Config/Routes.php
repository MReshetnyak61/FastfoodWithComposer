<?php
namespace App\Config;

use BulveyzRouter\Route;
use BulveyzRouter\Router;

class Routes
{


	public function run()
	{

Route::setNamespace('App\Controller');
Route::get('/', 'ProductController@getAllProducts');
Route::get('/getproduct/{variable}', 'ProductController@getByType');
Route::get('/addproduct/{variable}', 'ProductController@addToCart');
Route::get('/deleteproduct/{variable}', 'ProductController@deleteFromCart');
Route::get('/sandwichconstruct/{variable}', 'SandwichController@sandwichConstruct');
Route::get('/addingredients/{variable}', 'SandwichController@addIngredientTosandwich');
Route::get('/addSandwich', 'SandwichController@sandwichConstruct');
Route::get('/addSandwichToBasket', 'SandwichController@addSandwichToCart');
Router::routeVoid();
	}
			
}
