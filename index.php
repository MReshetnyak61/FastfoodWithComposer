<?php
/*Испоьзуемые библиотеки:
1) illuminate/database - Работа с БД
2) moltin/cart - Корзина покупок
3) league/plates - Шаблоны
4) symfony/routing - Маршрутизатор*/

// Фронт контроллер
// 1. Ошибки высвечиваются/включено
ini_set('display_errors', 1);
error_reporting(E_ALL);
//Начао сессии
session_start();
//Отключение сессии
//session_destroy();
//Создание констант с путём в  корневой каталог и путь в папку app
define('DIRECTORY_URL', dirname(__FILE__));
define('APP_URL', DIRECTORY_URL.'/App');
//Подключение composer
require_once(DIRECTORY_URL. '/vendor/autoload.php');
//Создаём объект класса БД
use App\Components\Database;
new Database;
//Подключаем роутер
use App\Config\Routes;
$router = new Routes;
$router->run();

?>