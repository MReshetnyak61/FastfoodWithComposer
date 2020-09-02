<div class = "menu">
<?php 

foreach ($ProductList as $products): ?>
<div class = "ProductBlock">
<? 

echo '<img class="logoimg" src="\assets\images\markets'.$products['Logo'].'">';

 ?>


<div class = "FoodImage">
<? 
echo '<img class="Image" src="\assets\images'.$products['Img'].'">';
 ?>
</div>
<div class = "ProductName">
<? echo $products['Name']; ?>
</div>
<div class ="IngredientsBlock">
<p><? echo $products['Ingredients'];?></p>

</div>
<p class="Price">Цена:<? echo $products['Price']; ?>руб</p>
<?php if ($products['Type']=='sandwich'){
    ?>
<a href ="/sandwichconstruct/<?echo $products['Id'];?>/" id="openModal"  class ="ToBasket">В корзину</a>
<? }
else{?>
    <a href ="/addproduct/<?echo $products['Id'];?>/" class ="ToBasket">В корзину</a> 
<?}?>

</div>
<?php endforeach; ?>         
</div>