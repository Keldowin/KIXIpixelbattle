<?php 
require 'cfg.php';
// Получаем статистику игроков и выводим 5 самых топовых по кликам
$q = 'SELECT * FROM `users` ORDER BY `clicks` DESC LIMIT 6';
$res = mysqli_query($link, $q);
$TopPlayer = mysqli_fetch_all($res, MYSQLI_ASSOC);
foreach ($TopPlayer as $key => $value) {
    echo '
    <li>'.$TopPlayer[$key]['name'].': <b>' . $TopPlayer[$key]['clicks'] . '</b></li>
    ';
}
?>
