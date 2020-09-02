<?php
namespace App\Controller;
use App\Repositories\ProductRepository;
use App\Repositories\IngredientRepository;
use App\Validation\ProductValidation;
use League\Plates\Engine;

class SandwichController {

	public function __construct()
	{
		$this->templates=new Engine(APP_URL.'/views');
		$this->productrepository=new ProductRepository();
		$this->ingredientRepository=new IngredientRepository();
		$this->validation=new ProductValidation();
	}

	public function sandwichConstruct($data)
	{
		$this->validation->checkid($data->variable);
		$sandwich =$this->productrepository->addSandwich($data->variable);
		$ProductList =	$this->productrepository->getByType($sandwich->Type);
		echo $this->templates->render('templates/addsandwich', ['ProductList' => $ProductList,
		'sandwich' => $sandwich]);
	}

	public function addIngredientTosandwich($data)
	{
		$this->validation->checkid($data->variable);
		$sandwich =	$this->ingredientRepository->addIngredient($data->variable);
		$ProductList =	$this->productrepository->getByType($sandwich['Type']);
		echo $this->templates->render('templates/addsandwich', ['ProductList' => $ProductList,
		'sandwich' => $sandwich]);
	}

	public function addSandwichToCart()
	{
		$sandwich =$this->productrepository->addSandwichToCart();
		echo $this->templates->render('templates/addsandwich', ['ProductList' => $ProductList,
		'sandwich' => $sandwich]);
	}
}