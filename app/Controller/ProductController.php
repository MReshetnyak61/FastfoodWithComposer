<?
namespace App\Controller;
use App\Repositories\ProductRepository;
use App\Validation\ProductValidation;
use League\Plates\Engine;

class ProductController
{
	public function __construct()
	{
		$this->templates=new Engine(APP_URL.'/views');
		$this->productrepository=new ProductRepository();
		$this->validation=new ProductValidation();
	}

	public function getAllProducts()
	{
		$ProductList = $this->productrepository->getAll();
		echo $this->templates->render('templates/main', ['ProductList' => $ProductList]);
	}
	
	public function getByType($data)
	{

		$this->validation->getByType($data->variable);
		$ProductList =  $this->productrepository->getByType($data->variable);
		echo $this->templates->render('templates/main', ['ProductList' => $ProductList]);
    }

	public function addToCart($data)
	{
		$this->validation->checkid($data->variable);
		$product = $this->productrepository->addToCart($data->variable);
		$ProductList =$this->productrepository->getByType($product->Type);
		echo $this->templates->render('templates/main', ['ProductList' => $ProductList]);
	
	}
	
	public function deleteFromCart($data)
	{
		
		$this->validation->checkid($data->variable);
		$product= $this->productrepository->deleteFromCart($data->variable);
		$ProductList =$this->productrepository->getAll();
		echo $this->templates->render('templates/main', ['ProductList' => $ProductList]);
	}
	
}