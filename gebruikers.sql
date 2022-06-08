-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 jun 2022 om 06:52
-- Serverversie: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- PHP-versie: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `84822_senne`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `id` int(11) NOT NULL,
  `IDnummer` varchar(30) NOT NULL,
  `studentnummer` varchar(6) NOT NULL,
  `password` varchar(256) NOT NULL,
  `opmerking` varchar(256) NOT NULL,
  `is_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`id`, `IDnummer`, `studentnummer`, `password`, `opmerking`, `is_admin`) VALUES
(1, '111111111', 'Admin', '9e860fba8d4a603b2fefc0f766bf9c50', 'Kan niet tegen noten', 2),
(2, '969696969', '84332', '9e860fba8d4a603b2fefc0f766bf9c50', 'allergies voor appels', 1),
(3, '9752125', '84567', '9e860fba8d4a603b2fefc0f766bf9c50', 'lactose intollerant', 1),
(4, '8526314', '84789', '9e860fba8d4a603b2fefc0f766bf9c50', 'Geen op merking', 1),
(5, '464565464', '83333', '9e860fba8d4a603b2fefc0f766bf9c50', 'Geen opmerking', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
