-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Фев 11 2022 г., 09:36
-- Версия сервера: 8.0.21
-- Версия PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `basket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`basket_id`, `user_id`, `product_id`, `date`) VALUES
(1, 1, 2, '2022-02-11 09:16:53'),
(2, 2, 4, '2022-02-11 09:34:52'),
(3, 3, 2, '2022-02-11 09:35:10'),
(4, 4, 5, '2022-02-11 09:35:26'),
(5, 1, 3, '2022-02-11 09:35:40'),
(6, 5, 4, '2022-02-11 09:35:54');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `basket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `quantity` int NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`basket_id`, `user_id`, `quantity`, `date`) VALUES
(1, 1, 2, '2022-02-11 09:18:22'),
(3, 5, 1, '2022-02-11 09:32:39'),
(4, 3, 3, '2022-02-11 09:33:03'),
(5, 1, 1, '2022-02-11 09:33:19'),
(6, 4, 1, '2022-02-11 09:33:37'),
(3, 5, 1, '2022-02-11 09:34:19');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `product_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `product_compound` text COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_type`, `product_compound`, `product_price`) VALUES
(2, 'Pepperoni', 'Pizza', 'Pepperoni, Cheese, Tomato Sauce', '130 uah'),
(3, 'Beefburger', 'Burger', 'Beef, Hot Sauce, Mayonese', '100 uah'),
(4, 'Cheeseburger', 'Burger', 'Beef, Cheese Sauce, Mayonese', '95 uah'),
(5, 'Margareite', 'Pizza', 'Totamo Sauce, Cheese, Vegetables', '100 uah'),
(6, 'Hot Pizza', 'Pizza', 'Cheese, Chili Peper, Tomatoes, Sausage, Hot Sauce', '120 uah');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `adress` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `orders` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fullname`, `adress`, `orders`, `phone`, `email`) VALUES
(1, 'John Doe', 'Kramatorsk, Akademichna , 60', 'Cheese Pizza', '0997738551', 'dgugik@ukr.net'),
(2, 'Leonid Kravchuk', 'Kramatorsk, Vasila Stusa, 56', 'Hot Pizza, Beefburger', '880055535', 'testmail1@test.te'),
(3, 'Leonid Kuchma', 'Kramatorsk, Vasila Stusa, 23', 'Cheese Pizza, Beefburger', '8800151515', 'testmail122@test.te'),
(4, 'Viktor Uschenko', 'Kramatorsk, Parkova, 44', 'Cheese Pizza, Cheeseburger', '8800155515', 'testmail133@test.te'),
(5, 'Viktor Yanukovich', 'Kramatorsk, Parkova, 27', 'Cheese Pizza, Cheeseburger', '8860155515', 'testmai33@test.te');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO `products` SET `product_name`= 'Hot Pizza', `product_price`= '120 uah', `product_type`= 'Pizza', `product_compound` = 'Cheese, Chili Peper, Tomatoes, Sausage, Hot Sauce'
DELETE FROM `products` WHERE `product_type` = 'Pizza'
DELETE FROM `products`
INSERT INTO `users` SET `adress`= 'Kramatorsk, Akademichna , 60', `email` = 'dgugik@ukr.net', `fullname`= 'Lazurenko Roman', `orders` = 'Hot Pizza', `phone` = '0997738551'
SELECT `fullname`, `orders` FROM `users`
SELECT * FROM `users`
UPDATE `users` SET `orders` = 'Cheese Pizza' WHERE `orders` = 'Hot Pizza'
UPDATE `users` SET `fullname` = 'John Doe' WHERE `fullname` = 'Lazurenko Roman'
SELECT * FROM `users` WHERE `fullname` = 'John Doe'
SELECT * FROM `users` WHERE `orders` = 'Cheese Pizza'
INSERT INTO `basket` SET `basket_id` = 1, `date` = CURRENT_TIMESTAMP, `product_id` = 2, `user_id` = 1
INSERT INTO `orders` SET `basket_id` = 1, `date` = CURRENT_TIMESTAMP, `quantity` = 2, `user_id` = 1
INSERT INTO `products` SET `product_name` = 'Pepperoni', `product_price` = '130 uah', `product_type` = 'Pizza', `product_compound` = 'Pepperoni, Cheese, Tomato Sauce'
INSERT INTO `products` SET `product_name` = 'Beefburger', `product_price` = '100 uah', `product_type` = 'Burger', `product_compound` = 'Beef, Hot Sauce, Mayonese'
INSERT INTO `products` SET `product_name` = 'Cheeseburger', `product_price` = '95 uah', `product_type` = 'Burger', `product_compound` = 'Beef, Cheese Sauce, Mayonese'
INSERT INTO `products` SET `product_name` = 'Margareite', `product_price` = '100 uah', `product_type` = 'Pizza', `product_compound` = 'Totamo Sauce, Cheese, Vegetables'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Vasila Stusa, 56', `email` = 'testmail1@test.te', `fullname` = 'Leonid Kravchuk', `orders` = 'Hot Pizza, Beefburger', `phone`= '880055535'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Vasila Stusa, 23', `email` = 'testmail122@test.te', `fullname` = 'Leonid Kuchma', `orders` = 'Cheese Pizza, Beefburger', `phone`= '8800151515'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Parkova, 44', `email` = 'testmail133@test.te', `fullname` = 'Viktor Uschenko', `orders` = 'Cheese Pizza, Cheeseburger', `phone`= '8800155515'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Parkova, 27', `email` = 'testmai33@test.te', `fullname` = 'Viktor Yanukovich', `orders` = 'Cheese Pizza, Cheeseburger', `phone`= '8860155515'
INSERT INTO `products` SET `product_name`= 'Hot Pizza', `product_price`= '120 uah', `product_type`= 'Pizza', `product_compound` = 'Cheese, Chili Peper, Tomatoes, Sausage, Hot Sauce'
INSERT INTO `orders` SET `basket_id` = 3, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 5
INSERT INTO `orders` SET `basket_id` = 4, `date` = CURRENT_TIMESTAMP, `quantity` = 3, `user_id` = 3
INSERT INTO `orders` SET `basket_id` = 5, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 1
INSERT INTO `orders` SET `basket_id` = 6, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 4
INSERT INTO `orders` SET `basket_id` = 3, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 5
INSERT INTO `basket` SET `basket_id` = 2, `date` = CURRENT_TIMESTAMP, `product_id` = 4, `user_id` = 2
INSERT INTO `basket` SET `basket_id` = 3, `date` = CURRENT_TIMESTAMP, `product_id` = 2, `user_id` = 3
INSERT INTO `basket` SET `basket_id` = 4, `date` = CURRENT_TIMESTAMP, `product_id` = 5, `user_id` = 4
INSERT INTO `basket` SET `basket_id` = 5, `date` = CURRENT_TIMESTAMP, `product_id` = 3, `user_id` = 1
INSERT INTO `basket` SET `basket_id` = 6, `date` = CURRENT_TIMESTAMP, `product_id` = 4, `user_id` = 5






