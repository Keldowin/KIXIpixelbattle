<?php 
require 'cfg.php';

$id = $_GET['id']+1;
$color = $_GET['color'];
if(empty($id) || empty($color)){
    $id = 1;
    $color = 'black';
}
$q = 'SELECT `color` FROM `pixel` WHERE `id` = '.$id.'';
$res = mysqli_query($link, $q);
$data = mysqli_fetch_all($res, MYSQLI_ASSOC);

$q = 'SELECT `ban` FROM `users` WHERE `ip` = "' . $UserIP . '"';
$res = mysqli_query($link, $q);
$player = mysqli_fetch_all($res, MYSQLI_ASSOC);
if(!empty($data) && $player[0]['ban'] != 1){
    $q = 'UPDATE `pixel` SET `color`="'.$color.'" WHERE `id` = '.$id.'';
    $res = mysqli_query($link, $q);
    $q = 'UPDATE `users` SET `clicks` = `clicks` + 1 WHERE `ip` = "'.$UserIP.'" ';
    $res = mysqli_query($link, $q);
    if(!$res){
        exit('1'. mysqli_error($link));
    }else{
        mysqli_close($link);
    }
}
?>