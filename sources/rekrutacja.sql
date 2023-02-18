-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8000
-- Czas generowania: 23 Lis 2020, 11:40
-- Wersja serwera: 5.7.26
-- Wersja PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rekrutacja2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zad_1_ceny`
--

CREATE TABLE `zad_1_ceny` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `value` double NOT NULL,
  `type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `zad_1_ceny`
--

INSERT INTO `zad_1_ceny` (`id`, `product_id`, `value`, `type`) VALUES
(11, 1, 9.99, 0),
(12, 2, 5.5, 0),
(13, 3, 13.9, 0),
(14, 4, 12.8, 0),
(15, 5, 2.2, 0),
(16, 6, 7.5, 0),
(17, 7, 6, 0),
(18, 8, 5, 0),
(19, 9, 15.9, 0),
(20, 10, 8, 0),
(21, 3, 11, 1),
(22, 6, 1, 1),
(23, 8, 4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zad_1_produkty`
--

CREATE TABLE `zad_1_produkty` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `zad_1_produkty`
--

INSERT INTO `zad_1_produkty` (`id`, `name`) VALUES
(1, 'Ogórek'),
(2, 'Salata'),
(3, 'Pomidor'),
(4, 'Kukurydza'),
(5, 'Burak'),
(6, 'Fasola'),
(7, 'Papryka'),
(8, 'Cebula'),
(9, 'Kapusta'),
(10, 'Cukinia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zad_2_wynajem`
--

CREATE TABLE `zad_2_wynajem` (
  `id` int(11) NOT NULL,
  `id_pokoju` int(11) DEFAULT NULL,
  `data_start` date DEFAULT NULL,
  `data_stop` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `zad_2_wynajem`
--

INSERT INTO `zad_2_wynajem` (`id`, `id_pokoju`, `data_start`, `data_stop`) VALUES
(1, 1, '2020-09-02', '2020-09-10'),
(2, 1, '2020-09-15', '2020-10-01'),
(3, 1, '2020-10-10', '2020-10-20');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zad_1_ceny`
--
ALTER TABLE `zad_1_ceny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zad_1_produkty`
--
ALTER TABLE `zad_1_produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zad_2_wynajem`
--
ALTER TABLE `zad_2_wynajem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `zad_1_ceny`
--
ALTER TABLE `zad_1_ceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `zad_1_produkty`
--
ALTER TABLE `zad_1_produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `zad_2_wynajem`
--
ALTER TABLE `zad_2_wynajem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
