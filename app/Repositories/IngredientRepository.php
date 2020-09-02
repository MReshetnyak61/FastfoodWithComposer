<?php

namespace app\Repositories;

use App\Models\Ingredient;
use App\Models\TypesofIngredients;
use App\Repositories\RepositoryInterface;


class IngredientRepository implements RepositoryInterface
{

	public function getall()
	{
		$ingredients = Ingredient::all();
		return $ingredients;
	}

	public function getIngredientTypes()
	{
		$TypesofIngredients = TypesofIngredients::all();
		return $TypesofIngredients;
	}


	public function addIngredient($ingredient_id)
	{
		$ingredient = Ingredient::find($ingredient_id);
		$IngredientType = $ingredient['Type'];
	
		$sandwich = array();
		if (isset($_SESSION['sandwich'])) {

			$sandwich = $_SESSION['sandwich'];
		}
		if (array_key_exists($IngredientType, $sandwich)) { //Если данный тип ингридиента уже есть в продукте
			$sandwich['Price'] -=  $sandwich[$IngredientType]['Price']; //Из стоимости продукта вычитается стоимость ингридиента
			$sandwich[$IngredientType]['Id'] = $ingredient['Id']; //Изменяется Id ингридиента
			$sandwich[$IngredientType]['Name'] = $ingredient['Name']; //Изменяется название ингридиента
			$sandwich[$IngredientType]['Price'] = $ingredient['Price']; //Увеличивается цена продукта при увеличении стоимости ингридиента
			$sandwich['Price'] += $ingredient['Price'];
		} else {
			$sandwich[$IngredientType]['Id'] = $ingredient['Id'];
			$sandwich[$IngredientType]['Name'] = $ingredient['Name'];
			$sandwich[$IngredientType]['Price'] = $ingredient['Price'];
			
			$sandwich['Price'] += $ingredient['Price'];
		}

		$_SESSION['sandwich'] = $sandwich;
		return $sandwich;
		return $sandwich;
	}
}
