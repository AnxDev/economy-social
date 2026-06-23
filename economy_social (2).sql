-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 23, 2026 alle 13:28
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `economy_social`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `text_content` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `id_parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `economy`
--

CREATE TABLE `economy` (
  `type` varchar(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `economy`
--

INSERT INTO `economy` (`type`, `value`) VALUES
('new_post', -20),
('new_comment', -5),
('liked', 10),
('unliked', -10);

-- --------------------------------------------------------

--
-- Struttura della tabella `interactions`
--

CREATE TABLE `interactions` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_element` int(11) NOT NULL,
  `type` enum('like','dislike') NOT NULL,
  `element` enum('post','comment') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `interactions`
--

INSERT INTO `interactions` (`id`, `id_user`, `id_element`, `type`, `element`) VALUES
(172, 8, 11, 'like', 'post');

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text_content` varchar(255) DEFAULT NULL,
  `image_content` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `text_content`, `image_content`, `creation_date`) VALUES
(11, 8, 'Il colosseo', 'storage_utenti/8/posts/images (2).jfif', '2026-06-23 12:56:30'),
(12, 8, 'Splendida natura', 'storage_utenti/8/posts/images (3).jfif', '2026-06-23 12:56:51'),
(13, 8, 'Ponte', 'storage_utenti/8/posts/a-random-place-in-google-maps-v0-czymme37jp0f1.webp', '2026-06-23 12:57:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `id_user`, `value`, `description`, `date`) VALUES
(1, 1, -20, 'Pubblicazione post', '2026-04-19 15:39:54'),
(2, 1, -20, 'Pubblicazione post', '2026-04-19 15:55:28'),
(3, 1, -20, 'Pubblicazione post', '2026-04-19 15:55:50'),
(4, 1, -20, 'Pubblicazione post', '2026-04-19 16:01:43'),
(5, 1, 10, 'Like a post', '2026-04-19 16:15:39'),
(6, 1, 10, 'Like a post', '2026-04-19 16:15:44'),
(7, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:46'),
(8, 1, 10, 'Like a post', '2026-04-19 16:15:50'),
(9, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:50'),
(10, 1, 10, 'Like a post', '2026-04-19 16:15:50'),
(11, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:50'),
(12, 1, 10, 'Like a post', '2026-04-19 16:15:51'),
(13, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:51'),
(14, 1, 10, 'Like a post', '2026-04-19 16:15:51'),
(15, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:51'),
(16, 1, 10, 'Like a post', '2026-04-19 16:15:51'),
(17, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:51'),
(18, 1, 10, 'Like a post', '2026-04-19 16:15:52'),
(19, 1, -10, 'Rimozione like da un post', '2026-04-19 16:15:52'),
(20, 1, 10, 'Like a post', '2026-04-19 16:15:52'),
(21, 1, -10, 'Rimozione like da un post', '2026-04-19 16:16:36'),
(22, 1, -10, 'Rimozione like da un post', '2026-04-19 16:16:42'),
(23, 1, -10, 'Rimozione like da un post', '2026-04-19 16:16:48'),
(24, 2, -10, 'Rimozione like', '2026-04-19 17:21:05'),
(25, 2, 10, 'Aggiunta like', '2026-04-19 17:21:06'),
(26, 2, -10, 'Rimozione like', '2026-04-19 18:36:50'),
(27, 2, 10, 'Aggiunta like', '2026-04-19 18:36:56'),
(28, 2, -10, 'Rimozione like', '2026-04-19 18:37:02'),
(29, 2, 10, 'Aggiunta like', '2026-04-19 18:37:02'),
(30, 2, -10, 'Rimozione like', '2026-04-19 18:37:03'),
(31, 2, 10, 'Aggiunta like', '2026-04-19 18:37:03'),
(32, 2, -10, 'Rimozione like', '2026-04-19 18:37:28'),
(33, 2, 10, 'Aggiunta like', '2026-04-19 18:37:34'),
(34, 2, -10, 'Rimozione like', '2026-04-19 18:37:56'),
(60, 8, -20, 'Pubblicazione post', '2026-06-23 12:56:30'),
(61, 8, -20, 'Pubblicazione post', '2026-06-23 12:56:51'),
(62, 8, -20, 'Pubblicazione post', '2026-06-23 12:57:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token_balance` int(11) DEFAULT 0,
  `last_daily_bonus` date DEFAULT NULL,
  `pfp` varchar(255) DEFAULT 'storage_utenti/default_pfp.jpg',
  `bio` varchar(255) DEFAULT NULL,
  `creation_date` date NOT NULL DEFAULT current_timestamp(),
  `type` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `token_balance`, `last_daily_bonus`, `pfp`, `bio`, `creation_date`, `type`) VALUES
(8, 'andrea', 'andreaalletto@gmail.com', '$2y$10$rszwohyxr7YM41dN4nkcTOeniSBS7VJW3AkMC6KCo1r5wdQ3TjoUS', 80, '2026-06-23', 'storage_utenti/default_pfp.jpg', NULL, '2026-06-23', 'user');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_ibfk_1` (`id_post`),
  ADD KEY `comments_ibfk_2` (`id_user`);

--
-- Indici per le tabelle `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_interaction` (`id_user`,`id_element`,`element`),
  ADD KEY `id_post` (`id_element`);

--
-- Indici per le tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utente` (`id_user`);

--
-- Indici per le tabelle `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `interactions`
--
ALTER TABLE `interactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT per la tabella `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_post_comment` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD CONSTRAINT `transaction_history_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
