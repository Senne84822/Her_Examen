-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 jun 2022 om 13:35
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
-- Database: `her_examen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `id` int(11) NOT NULL,
  `naam` varchar(100) NOT NULL,
  `studentmail` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `adres` varchar(256) NOT NULL,
  `woonplaats` varchar(150) NOT NULL,
  `telnummer` varchar(50) NOT NULL,
  `geboortedatum` date NOT NULL,
  `geslacht` varchar(50) NOT NULL,
  `is_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`id`, `naam`, `studentmail`, `password`, `adres`, `woonplaats`, `telnummer`, `geboortedatum`, `geslacht`, `is_admin`) VALUES
(1, 'Henk', 'Admin', '9e860fba8d4a603b2fefc0f766bf9c50', 'Heer Bokelweg 255', 'Rotterdamn', '561478165', '2002-04-09', 'vrouw', 2),
(2, 'Noor', '84332@glr.nl', '9e860fba8d4a603b2fefc0f766bf9c50', 'Joseflaan 8', 'Rotterdamn', '556222222', '2000-07-24', 'vrouw', 1),
(3, 'Simon', '84567@glr.nl', '9e860fba8d4a603b2fefc0f766bf9c50', 'Fionastraat 74', 'Gouda', '9999999999', '2022-06-05', 'man', 1),
(4, 'Adjar', '84789@glr.nl', '9e860fba8d4a603b2fefc0f766bf9c50', 'Sint-Marten 3', 'Bergen op Zoom', '77777777', '2003-08-19', 'man', 1),
(5, 'Mo', '83333@glr.nl', '9e860fba8d4a603b2fefc0f766bf9c50', 'Willem straat 7', 'Roosendaal', '444444444', '2011-08-01', 'genderneutraal', 1);

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
