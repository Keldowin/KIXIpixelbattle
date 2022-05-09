-- phpMyAdmin SQL Dump
-- version 4.9.1deb3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 09 2022 г., 13:38
-- Версия сервера: 10.3.23-MariaDB-0+deb10u1
-- Версия PHP: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kripto`
--

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `id` int(4) NOT NULL,
  `colortext` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `colortext`, `color`) VALUES
(1, 'Красный', 'red'),
(2, 'Чёрный', 'black'),
(3, 'Белый', 'white'),
(4, 'Жёлтый', 'yellow'),
(5, 'Зелёный', 'green'),
(6, 'Золотой', 'gold'),
(7, 'Фиолетовый', 'blueviolet'),
(10, 'Светло-зелёный', 'greenyellow'),
(11, 'Тёмно-зелёный', 'seagreen'),
(12, 'Пудровый', 'salmon'),
(13, 'Розовый', 'pink'),
(14, 'Синий', 'blue'),
(15, 'Коричневый', 'brown'),
(16, 'Оранжевый', 'orange'),
(17, 'Серый', 'gray'),
(18, 'Тёмно-коричневый', 'saddlebrown'),
(19, 'Светло-серый', 'darkgray'),
(20, 'Голубой', 'cyan'),
(21, 'Аква', 'darkturquoise'),
(22, 'Тёмно-красный', 'darkred'),
(23, 'Оливковый', 'darkolivegreen'),
(24, 'Орхидеевый', 'darkorchid'),
(25, 'Деревянный', 'burlywood'),
(26, 'Кожа', 'bisque'),
(27, 'Сильно-серый', 'dimgrey'),
(28, 'Светло-серый2', 'gainsboro'),
(29, 'Медный', 'peru'),
(30, 'Бронзовый', 'darkgoldenrod'),
(31, 'Кирпичный', 'sienna'),
(32, 'Приятно-синий', 'royalblue'),
(33, 'Тёмно-синий', 'midnightblue'),
(34, 'Приятно-зелёный', 'mediumspringgreen'),
(35, 'Кислый', 'lime'),
(36, 'Синеголубой', 'darkslateblue');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
