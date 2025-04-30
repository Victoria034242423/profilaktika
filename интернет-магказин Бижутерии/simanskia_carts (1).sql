-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Янв 28 2023 г., 11:20
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simanskia_carts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `product_price` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `product_code` varchar(10) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(221, 'Колье ', '65000', 'image/колье.png', 5, '325000', 'p1002');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `ordered` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `ordered`) VALUES
(1, 'Кольца', NULL, 1),
(2, 'Колье', NULL, 2),
(3, 'Серьги', NULL, 4),
(4, 'Комплекты', NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `pmode` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `products` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `amount_paid` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `product_price` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `product_code` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`, `category`) VALUES
(1, 'Кольцо \"Дея\" Кварц', '90000', 0, 'image/кольцо 2.png', 'p1000', 1),
(2, 'Кольцо \"Ангел\" Флюорит', '75000', 0, 'image/кольцо 4.png', 'p1001', 1),
(3, 'Колье \"Лорейн\" Фианит', '65000', 0, 'image/колье.png', 'p1002', 2),
(4, 'Кольцо \"Амфитрита\" Лабрадорит', '15000', 0, 'image/кольцо 3.png', 'p1003', 1),
(5, 'Серьги \"Джуния\" Агат', '25000', 16464, 'image/серьга 4.png', 'p1004', 4),
(6, 'Серьги \"Джуния\" Агат', '35000', 131, 'image/сергьга 1.png', 'p1005', 4),
(7, 'Комплект', '15000', 1333, 'image/Снимок экрана (14).png', 'p1006', 3),
(9, 'Комплект', '25000', 11123, 'image/скидки 1.jpg', 'p1007', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
