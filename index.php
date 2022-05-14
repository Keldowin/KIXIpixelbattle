<!DOCTYPE html>
<html lang="ru">
<!-- COPYRIGHT KELDOWIN -->
<!-- COPYRIGHT KELDOWIN -->
<!-- COPYRIGHT KELDOWIN -->
<!-- Основной файл страницы, внутри JS, часть PHP кода -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIXI | Битва пикселей</title>
    <link rel="stylesheet" href="pixels.css" class="css">
    <link rel="icon" href="https://multiplace.xyz/kripto/html/img/KRIpto_red_logo.webp" type="image/webp">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-compat/3.0.0-alpha1/jquery.min.js"></script>
</head>
<body>
    <?php
    require 'cfg.php';
    // Проверка если 1 то кидаем на хаб (Тип закрыто)
    if($open == 1){
        header('Location: hub.php');
    }
    // Находим игрока по айпи
    $q = 'SELECT `ip` FROM `users` WHERE `ip` = "' . $UserIP . '"';
    $res = mysqli_query($link, $q);
    $user = mysqli_fetch_all($res, MYSQLI_ASSOC);
    // Если нет айпи то регаем, если есть то получаем данные
if (empty($user)) {
    $rander = rand(0, 1000);
    $q = 'INSERT INTO `users` (`ip`, `name`,`ban`, `color`, `clicks`) VALUES ("' . $UserIP . '", "Player'.$rander.'",0,"black",0);';
    $res = mysqli_query($link, $q);
if($res = true){
    header('Location: index.php');
}else{
    exit("Auth header ERROR");
}}else{
    $q = 'SELECT `color`,`clicks`,`ban` FROM `users` WHERE `ip` = "' . $UserIP . '"';
    $res = mysqli_query($link, $q);
    $player = mysqli_fetch_all($res, MYSQLI_ASSOC);
    $click = $player[0]['clicks'];
    $colorPlayer = $player[0]['color'];
if($player[0]['ban'] == 1){
    header('Location: ban.php');
}}
    ?>
    <!--h1 style="text-align: center; display:none;">Битва #4 | Возрождение<br> <span style="color:red;">Делаем красивые арты</span></h1><br-->
    <!-- Меню -->
    <div class="MenuBlock">
        <h2>KIXI | Битва пикселей</h2>
        <form method="post">
            Выбрать цвет
            <select name="color">
                <option value="black">Выбрать цвет</option>
                <?php
                if (isset($_POST['go'])) {
                    if(!empty($_POST['username']) && $_POST['username'] != ''){
                        $q = 'UPDATE `users` SET `name`="' . $_POST['username'] . '" WHERE `ip` = "' . $UserIP . '" ';
                        $res = mysqli_query($link, $q);
                    }
                    $q = 'UPDATE `users` SET `color`="' . $_POST['color'] . '" WHERE `ip` = "' . $UserIP . '" ';
                    $res = mysqli_query($link, $q);
                    mysqli_close($link);
                    header('Location: index.php');
                }

                $q = 'SELECT * FROM `colors`';
                $res = mysqli_query($link, $q);
                $colors = mysqli_fetch_all($res, MYSQLI_ASSOC);
                // Цикл вывода
                foreach ($colors as $key => $value) {
                    echo "<option style='background-color:" . $colors[$key]['color'] . ";' value='" . $colors[$key]['color'] . "'>" . $colors[$key]['colortext'] . "</option>";
                }
                ?>
            </select><br><br>
            Введите ваш никнейм
            <input type="text" name="username"><br>
            <button type="submit" name="go">Изменить</button>
        </form><br>
        <p>Пикселей закрашено: <b id="clicknum"></b></p><br>
        <p>Сейчас выбран цвет: <span style="color: <?= $colorPlayer ?> ;"><?= $colorPlayer ?></span></p><br>
    </div>
    <div class="MenuBlock2">
        <h2>Топ 5 игроков по пикселям</h2>
        <ol id="stat">
        </ol><br>
        <a href="https://multiplace.xyz/link/dNG2HeFdd">Наш телеграмм</a><br>
        <a href="rule.php">Правила игры и соглашения</a><br>
        <p>Ширина 1 строки: 86 пикселей!</p>
    </div>
    <!-- Снизу лагучая штука -->
<main class="PixelPlace" id="result"></main>
<script type="text/javascript">
    // Основной код JS (Если не будет работать то напишите)
var dlay = 300;
var map = 1200;
$(document).ready(function() {
    console.log("В консоли пишеться откладка пикселей");
    console.log("Если ты хочешь как то улучшить KIXI, то напиши мне! - ");
});
var colorer = "<?= $colorPlayer ?>";
let timer;

function pixely(t, e) {
    timer || (console.log(t, e), $(function() {
        $.ajax({
            url: "PixelAdd.php?id=" + t + "&color=" + e,
            method: "GET",
            data: {
                test: "yes"
            },
            success: function(t) {}
        })
    }), timer = setTimeout(() => timer = clearTimeout(timer), dlay))
}
$(function() {
    ! function t() {
        $.ajax({
            url: "pixelmap.php",
            method: "POST",
            data: {
                test: "yes"
            },
            success: function(t) {
                $("#result").html(t)
            },
            complete: function() {
                setTimeout(t, map)
            }
        })
    }()
}), $(function() {
    ! function t() {
        $.ajax({
            url: "player.php",
            method: "POST",
            data: {
                test: "yes"
            },
            success: function(t) {
                $("#clicknum").html(t)
            },
            complete: function() {
                setTimeout(t, map)
            }
        })
    }()
}), $(function() {
    ! function t() {
        $.ajax({
            url: "stat.php",
            method: "POST",
            data: {
                test: "yes"
            },
            success: function(t) {
                $("#stat").html(t)
            },
            complete: function() {
                setTimeout(t, map)
            }
        })
    }()
});
</script>
</body>
</html>
