-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Paź 2022, 11:44
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `meme`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kot', NULL, NULL, NULL),
(2, 'pies', NULL, NULL, NULL),
(3, 'znani ludzie', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `memes_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`id`, `content`, `users_id`, `memes_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fajen koteł', 3, 1, NULL, NULL, NULL),
(2, 'Kox kot', 2, 1, NULL, NULL, NULL),
(3, 'xDDDDD', 5, 3, NULL, NULL, NULL),
(4, 'pies', 5, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `memes`
--

CREATE TABLE `memes` (
  `id` int(11) NOT NULL,
  `file` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `hash_tags` varchar(45) DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `memes`
--

INSERT INTO `memes` (`id`, `file`, `title`, `likes`, `hash_tags`, `admin_id`, `categories_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kot.png', 'giga kot', 200, 'kot', 1, 1, 3, NULL, NULL, NULL),
(2, 'pies.png', 'giga pies', 143, 'pies', 1, 2, 4, NULL, NULL, NULL),
(3, 'pudzianowski.png', 'giga pudzian', 543, 'pudzian', 1, 3, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `is_admin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'User1', 'e3bc38a4faa625d074664d572d810c1e', 'user1@gmail.com', 1, NULL, NULL, NULL),
(2, 'User2', '1df1f714c343da5c46e4c0c2e4781dbd', 'user2@wp.pl', 0, NULL, NULL, NULL),
(3, 'User3', 'a84bfe4f2c8c343cadf1940edb0ff776', 'user3@wp.pl', 0, NULL, NULL, NULL),
(4, 'User4', '0381407610a8102b68f3eb44d55b5506', 'user4@wp.pl', 0, NULL, NULL, NULL),
(5, 'User5', '16bab5fe3bac15e914da9b8559846b9c', 'user5@wp.pl', 0, NULL, NULL, NULL),
(6, 'User6', '7ae134b54fb3b7ef8e2e454f2eb7832c', 'user6@wp.pl', 0, NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`,`users_id`,`memes_id`);

--
-- Indeksy dla tabeli `memes`
--
ALTER TABLE `memes`
  ADD PRIMARY KEY (`id`,`admin_id`,`categories_id`,`user_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `memes`
--
ALTER TABLE `memes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
