<?php 
$link = mysqli_connect('localhost', 'user', 'password', 'db');
if (!$link) {
    exit('Ошибка бд');
}
$UserIP = $_SERVER['REMOTE_ADDR'];
$open = 1; // 1 - закрыто, 0 - открыто
?>