<?php
// Генерация пиксельной карты
require 'cfg.php';
$q = 'SELECT `color` FROM `pixel`';
$res = mysqli_query($link, $q);
$pixel = mysqli_fetch_all($res, MYSQLI_ASSOC);

$q = 'SELECT `color`,`clicks` FROM `users` WHERE `ip` = "' . $UserIP . '"';
$res = mysqli_query($link, $q);
$player = mysqli_fetch_all($res, MYSQLI_ASSOC);
$click = $player[0]['clicks'];
$colorPlayer = $player[0]['color'];
// Цикл вывода // Вставить после div (Это доп функции, были вырезаны для оптимизации) 
//onclick="pixely('.$key. ', colorer)"
//title="Цвет: '.$pixel[$key]['color'].' , Позиция: '.$key.' "
foreach ($pixel as $key => $value) {
    echo '<div onclick="pixely('.$key. ', colorer)" style="background:' .$pixel[$key]['color'] . ';"></div>';
}

?>
