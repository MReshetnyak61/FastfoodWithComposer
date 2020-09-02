<!DOCTYPE html>
<html>
<head>
<?=$this->insert('layouts/head')?>
</head>

<header >
<?=$this->insert('layouts/header')?>
</header>
<nav>
<?=$this->insert('layouts/navigation')?>
<?=$this->insert('layouts/basket')?>
   </nav>
<body>
<?=$this->insert('layouts/body',['ProductList'=> $ProductList])?>

</body>
<?=$this->insert('layouts/modalwindow',['sandwich'=> $sandwich])?>
</html>