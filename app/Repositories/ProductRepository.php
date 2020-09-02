<?php
namespace app\Repositories;
use App\Models\Product;
use App\Repositories\RepositoryInterface;

header('Content-Type: text/html; charset=utf-8');
class ProductRepository implements RepositoryInterface
{



	public  function getbyId($id)
	{
		$product = Product::find($id);
	    return $product;
	}

	public function getAll()
	{
		$products = Product::all();
        foreach($products as $product){
		$product->Type=$product->type->TypesOfFood;
		$product->Logo=$product->logo->Picture;
	}
	return $products;
    }
	public function getByType($type)
	{
		
		$products = Product::join('typesoffood', function($join) use ($type)
        {
		$join->on('typesoffood.TypeId', "=", 'Type')
		->where('typesoffood.TypesOfFood', '=', $type);
	})->get();

	foreach($products as $product){
		$product->Type=$product->type->TypesOfFood;
		$product->Logo=$product->logo->Picture;
		
	}
		return $products;
    }


	public function addSandwich($product_id)
	{
		$product= $this->getbyId($product_id);
		$sandwich=array();
		$sandwich['Id']=$product->Id;
		$sandwich['Name']=$product->Name;
		$sandwich['Price']=$product->Price;
		$sandwich['Img']=$product->Img;
		$sandwich['Type']=$product->Type;
		$_SESSION['sandwich'] =$sandwich;
		return $product;
	}

	public function addToCart($product_id)
	{
		$product_id = intval($product_id);
		$product= $this->getbyId($product_id);
	json_decode($product);
		$product->Type=$product->type->TypesOfFood;
		$cart=array();
		if (isset($_SESSION['cart'])) {
            $cart = $_SESSION['cart'];
		}
        if (array_key_exists($product_id, $cart)) {

            $cart[$product->Id]['quantity']++;
		}

		else {
		$cart[$product->Id]=array(
			'id'       => $product->Id,
			'name'     => $product->Name,
			'type'     => $product->Type,
			'price'    => $product->Price,
			'quantity' => 1
		); 
	 }
		//echo $cart;
		$_SESSION['cart'] =$cart;

		return $product;
	
    }


	public function addSandwichToCart()
	{

		if (isset($_SESSION['sandwich'])) {

			$sandwich = $_SESSION['sandwich'];
		}
		for ($i = 1; $i <= 4; $i++) {
			if (isset($sandwich[$i]['Name'])) {
				echo $sandwich[$i]['Name'];
				$sandwich['Id'].= $sandwich[$i]['Id'];
				$sandwich['Name'].=' с '. $sandwich[$i]['Name'];
			}
     
		}
		$cart=array();
        if (isset($_SESSION['cart'])) {
            $cart = $_SESSION['cart'];
		}
		if (array_key_exists($sandwich['Id'], $cart)) {

            $cart[$sandwich['Id']]['quantity']++;
		}
		else {
			$cart[$sandwich['Id']]=array(
				'id'       => $sandwich['Id'],
				'name'     => $sandwich['Name'],
				'type'     => $sandwich['Type'],
				'price'    => $sandwich['Price'],
				'quantity' => 1
			); 
		 }
		 $_SESSION['cart'] =$cart;
		//$sandwich['Name'] .= $sandwich['Type'];
		
		//print_r($sandwich);
	/*	$product_id = intval($product_id);
		$product= $this->getbyId($product_id);
	json_decode($product);Ы
		$product->Type=$product->type->TypesOfFood;
		print_r($_SESSION['cart']);
		$cart=array();
		if (isset($_SESSION['cart'])) {
            $cart = $_SESSION['cart'];
		}
        if (array_key_exists($product_id, $cart)) {

            $cart[$product->Id]['quantity']++;
		}

		else {
		$cart[$product->Id]=array(
			'id'       => $product->Id,
			'name'     => $product->Name,
			'type'     => $product->Type,
			'price'    => $product->Price,
			'quantity' => 1
		); 
	 }
		//echo $cart;
		$_SESSION['cart'] =$cart;

		return $product;
	*/
    }





    public function productsInBasket()
	{
	$productsInBasket= $_SESSION['cart'];
  return $productsInBasket;
    }

	public function deleteFromCart($product_id)
	{
	$product= self::getbyId($product_id);
	json_decode($product);
	if (isset($_SESSION['cart'])) {
		$productsInBasket = $_SESSION['cart'];
	}
	unset($productsInBasket[$product_id]);
	$_SESSION['cart'] = $productsInBasket;
    return $product;
	}
	public function getTotalPrice()
	{

		$cart=array();
		if (isset($_SESSION['cart'])) {
            $cart = $_SESSION['cart'];
		}
		$totalPrice=0;
            foreach ($cart as $item) {
               
                $totalPrice += $item['price'] * $item['quantity'];
            }
        
	
    return $totalPrice;
	}
}