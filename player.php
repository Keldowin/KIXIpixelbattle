<?php 
require 'cfg.php';
// Получаем количество кликов игрока 
$q = 'SELECT * FROM `users` WHERE `ip` = "' . $UserIP . '"';
$res = mysqli_query($link, $q);
$player = mysqli_fetch_all($res, MYSQLI_ASSOC);
$click = $player[0]['clicks'];
echo $click;
?>
