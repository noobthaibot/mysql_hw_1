-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Фев 08 2022 г., 07:25
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
-- База данных: `education`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `title` text COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `author` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `donetskaya` text COLLATE utf8mb4_general_ci NOT NULL,
  `luganskaya` text COLLATE utf8mb4_general_ci NOT NULL,
  `kharkovskaya` text COLLATE utf8mb4_general_ci NOT NULL,
  `poltavskaya` text COLLATE utf8mb4_general_ci NOT NULL,
  `kievskaya` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `fullname` text COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ФИО пользователя',
  `adress` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `birthdate` date NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
