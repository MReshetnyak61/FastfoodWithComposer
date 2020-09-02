<?php 
use App\Repositories\ProductRepository;
$productrepository = new ProductRepository;
$productToBasket= $productrepository->productsInBasket();
$totalPrice= $productrepository->getTotalPrice();
?>
<div class="basket">
   <div class="basketheader">
      <h2>Корзина</h2>
   </div>
   <div class="basketinfo">
      <p class="leftstr"> Название</p>
      <p class="rightstr">Количество</p>
   </div>
   <?php
   	//print_r($productToBasket);
   if ($productToBasket) {
      foreach ($productToBasket as $productInBasket) : ?>
         <div class="ProdInBasket">
            <p class="prodictName"><?php echo $productInBasket['name']; ?></p>
            <p class="productQuantity"><?php echo $productInBasket['quantity']; ?></p>
            <a class="deleteFromBasket" href="/deleteproduct/<? echo $productInBasket['id']; ?>/">Удалить</a>
         </div>
   <?php endforeach;
   } ?>

   <div class="BasetMain">

      <p class="basketPrice">
         Итого:<?php echo $totalPrice; ?>
      </p>


      <a class="Buy">
         Оформить заказ
      </a>
   </div>
