-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 jun 2022 om 13:36
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
-- Tabelstructuur voor tabel `reis`
--

CREATE TABLE `reis` (
  `reisID` int(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `omschrijving` text,
  `begindatum` date NOT NULL,
  `einddatum` date NOT NULL,
  `bestemming` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `reis`
--

INSERT INTO `reis` (`reisID`, `foto`, `title`, `omschrijving`, `begindatum`, `einddatum`, `bestemming`) VALUES
(18, 'reisfoto18', 'WK voetbal Qatar Finale', 'Het GLR wil graag studenten de mogelijkheid geven om de finale op school te bekijken. In de ruimte van Podium- en Evenementen Techniek wordt een groot scherm gehangen waardoor dit mogelijke zou kunnen zijn!', '2022-12-18', '2022-12-18', 'In de ruimte van Podium- en Evenementen Techniek ');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `reis`
--
ALTER TABLE `reis`
  ADD PRIMARY KEY (`reisID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `reis`
--
ALTER TABLE `reis`
  MODIFY `reisID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
