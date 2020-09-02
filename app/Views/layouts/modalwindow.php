<?php 
use App\Repositories\IngredientRepository;
$this->ingredientRepository=new IngredientRepository();
$ingredients= $this->ingredientRepository->getall();
$typesOfIngredients=$this->ingredientRepository->getIngredientTypes();
?>

<div id="myModal" class="modal">


  <div class="modal-content">
    <div class="modal-header">
      <a href="/getproduct/sandwich/" class="close">&times;</a>
      <h2 class="modalHeaderText"> Проверьте и добавьте в корзину</h2>
    </div>
    <div class="modal-body">
      <ul class="ModalUl">
        <li class="ModalLi"><a class="ModalHref" id="gotosizes">Размер</a></li>
        <li class="ModalLi"><a class="ModalHref" id="gotobread">Хлеб</a></li>
        <li class="ModalLi"><a class="ModalHref" id="gotovegetables">Овощи</a></li>
        <li class="ModalLi"><a class="ModalHref" id="gotosauces">Соусы</a></li>
        <li class="ModalLi"><a class="ModalHref" id="gotofillings">Начинка</a></li>
        <li class="ModalLi"><a class="ModalHref" id="gotoready">Готово!</a></li>
      </ul>

      <?
//print_r($typesOfIngredients);
      foreach ($typesOfIngredients as $type) ://Перебираем все типы ингридиентво, и создаём блок для каждого, и сразу его заполняем
        echo '<div id="' . $type['TypeName'] . '" class="' . $type["TypeName"] . '">';
        foreach ($ingredients as $ingredient) ://Заполняем ингридиенты для данного блока
          if ($ingredient['Type'] == $type['Id']) {
            ?>
            <a href="/addingredients/<? echo $ingredient['Id']; ?>/" tabindex="-1" class="ProductBlock">
              <div class="FoodImage">
                <?
               echo '<img class="Image" src="\assets\images' . $ingredient['Img'] . '">';
                ?>
              </div>
              <div class="ProductName">
                <? echo $ingredient['Name']; ?>
              </div>
              <div class="IngredientsBlock">
                <p><? echo $ingredient['Description']; ?></p>

              </div>
              <p class="Price">Цена:<? echo $ingredient['Price']; ?>руб</p>

            </a>
            <?
            }
          endforeach;
        echo '</div>';
        endforeach;
    ?>


      <div id="ready" class="ready">

        <div class="ChoosenSandwich">
          <?
      echo '<img class="Image" src="\assets\images' . $sandwich['Img'] . '">';
          ?>
        </div>
        <div class="YourSandwichIsReady">
          <h1>Ваш сэндвич готов</h1>
        </div>

        <ul class="YourSandwichIngredientsUl">

<?
            foreach ($typesOfIngredients as $type) :
              $ingredId=$type['Id'];
              echo'  <li class="YourSandwichIngredientsLi"> '. $type['TypeNameRussian'] . ':';
              if (isset($sandwich[$ingredId])) {
                 echo  $sandwich[$ingredId]['Name'];}
              else {
               echo 'Нет';}
                     
endforeach;
?>
        </ul>

        <div class="YourSandwichName">
          <h1><? echo $sandwich['Name']; ?></h1>
        </div>
        <div class="modal-footer">
          <h3>Итого:<?

      echo $sandwich['Price'];
     if (isset($sandwich)) {
      echo '<a href ="/addSandwichToBasket/"  class ="AddToBasket">Добавить</a>';
 } ?></h3>
        </div>
      </div>



      <div class="modal-footer" id="commonfooter">
        <h3>Итого:<?
          echo $sandwich['Price'];
                  ?></h3>
      </div>

    </div>

  </div>