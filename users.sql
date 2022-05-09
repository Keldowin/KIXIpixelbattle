-- phpMyAdmin SQL Dump
-- version 4.9.1deb3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 09 2022 г., 12:38
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
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `ban` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `clicks` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `ip`, `ban`, `name`, `color`, `clicks`) VALUES
(1, '5.18.242.165', 0, 'Keldowin', 'saddlebrown', 72),
(3, '85.249.21.223', 0, 'Wedfill', 'black', 0),
(4, '178.47.111.62', 0, 'FelixTheGreat', 'gold', 0),
(6, '178.214.249.200', 0, 'Zelenovskiy', 'gainsboro', 1720),
(7, '91.219.191.146', 0, 'Wwworm', 'white', 2601),
(10, '89.109.199.69', 0, 'Reaper422', 'black', 2774),
(21, '217.66.152.116', 0, 'Player218', 'black', 0),
(22, '217.66.156.185', 0, 'Player441', 'black', 0),
(23, '85.140.0.157', 0, 'Player669', 'yellow', 0),
(24, '217.66.152.107', 0, 'Player732', 'black', 0),
(25, '85.249.22.56', 0, 'Player495', 'saddlebrown', 0),
(26, '31.163.200.237', 0, 'Alanis', 'burlywood', 0),
(27, '167.99.154.209', 0, 'Player773', 'black', 0),
(28, '66.249.81.174', 0, 'Player74', 'black', 0),
(29, '66.249.81.170', 0, 'Player513', 'black', 0),
(30, '66.249.81.172', 0, 'Player208', 'black', 0),
(31, '66.249.81.176', 0, 'Player668', 'black', 0),
(32, '95.55.13.133', 0, 'Player834', 'black', 0),
(33, '176.124.146.224', 0, 'Bironplayzer', 'gold', 0),
(34, '77.234.215.216', 0, 'CloneKeldowin', 'saddlebrown', 0),
(35, '91.202.254.196', 0, 'Player493', 'black', 0),
(36, '85.140.22.194', 0, 'Player967', 'black', 0),
(37, '31.162.210.228', 0, 'Mipouuuk', 'red', 0),
(38, '217.66.159.254', 0, 'Player475', 'black', 0),
(39, '185.174.193.165', 0, 'Player468', 'black', 0),
(40, '85.140.116.162', 0, 'Player184', 'black', 0),
(41, '188.19.54.177', 0, 'FelixTheGreat', 'darkgray', 2348),
(42, '213.180.203.97', 0, 'Player17', 'black', 0),
(43, '213.180.203.62', 0, 'Player112', 'black', 0),
(44, '85.249.22.194', 0, 'Wedfill', 'pink', 1270),
(45, '195.211.23.208', 0, 'Player762', 'black', 0),
(46, '79.98.8.165', 0, 'Player268', 'black', 0),
(47, '31.173.242.210', 0, 'Player60', 'black', 0),
(48, '145.239.81.13', 0, 'Player762', 'black', 0),
(49, '85.140.24.226', 0, 'Player699', 'black', 0),
(50, '85.249.20.83', 0, 'Player661', 'black', 2),
(51, '5.45.207.134', 0, 'Player548', 'black', 0),
(52, '87.250.224.28', 0, 'Player827', 'black', 0),
(53, '146.70.61.47', 0, 'Player844', 'black', 3),
(54, '91.235.226.123', 0, 'да', 'blue', 83),
(55, '128.1.195.69', 0, 'Player557', 'black', 76),
(56, '91.235.226.77', 0, 'Player348', 'yellow', 238),
(57, '217.66.156.54', 0, 'Player186', 'black', 0),
(58, '95.163.255.44', 0, 'Player97', 'black', 0),
(59, '95.163.255.49', 0, 'Player636', 'black', 0),
(60, '95.163.255.47', 0, 'Player452', 'black', 0),
(61, '176.59.213.19', 0, 'Player289', 'black', 0),
(62, '95.163.255.43', 0, 'Player139', 'black', 0),
(63, '95.163.255.48', 0, 'Player608', 'black', 0),
(64, '5.142.43.51', 0, 'Player789', 'black', 0),
(65, '109.173.82.112', 0, 'Player671', 'black', 0),
(66, '94.51.47.224', 0, 'Player895', 'black', 0),
(67, '188.19.34.171', 0, 'Player5', 'black', 0),
(68, '195.211.23.206', 0, 'Player820', 'black', 0),
(69, '195.211.23.216', 0, 'Player988', 'black', 0),
(70, '195.211.23.212', 0, 'Player399', 'black', 0),
(71, '95.163.255.46', 0, 'Player396', 'black', 0),
(72, '95.163.255.42', 0, 'Player902', 'black', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
