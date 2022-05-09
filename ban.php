<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIXI | Битва пикселей</title>
</head>
<body>
<?php 
require 'cfg.php';
$q = 'SELECT `ip` FROM `users` WHERE `ip` = "' . $UserIP . '"';
$res = mysqli_query($link, $q);
$user = mysqli_fetch_all($res, MYSQLI_ASSOC);

$q = 'SELECT `color`,`clicks`,`ban` FROM `users` WHERE `ip` = "' . $UserIP . '"';
$res = mysqli_query($link, $q);
$player = mysqli_fetch_all($res, MYSQLI_ASSOC);
if (empty($user)) {
    header('Location: index.php');
}elseif($player[0]['ban'] == 0){
    header('Location: index.php');
}else{
    header("HTTP/1.1 403 Forbidden");
}
?>
<h1>Мы посчитали что вы ломаете нашу игру или дудосите (ломаете) арты специально и будем вынуждены забанить вас.</h1><br>
<h2>Если это ошибка напишите мне - https://vk.com/kriptooff</h2>
</body>
</html>