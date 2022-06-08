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
-- Tabelstructuur voor tabel `inschrijvingen`
--

CREATE TABLE `inschrijvingen` (
  `reisID` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `inschrijvingen`
--

INSERT INTO `inschrijvingen` (`reisID`, `id`) VALUES
(18, 3),
(18, 2),
(39, 2),
(39, 4),
(18, 4),
(39, 3),
(19, 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `inschrijvingen`
--
ALTER TABLE `inschrijvingen`
  ADD KEY `reisID` (`reisID`),
  ADD KEY `id` (`id`);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `inschrijvingen`
--
ALTER TABLE `inschrijvingen`
  ADD CONSTRAINT `inschrijvingen_ibfk_1` FOREIGN KEY (`reisID`) REFERENCES `reis` (`reisID`),
  ADD CONSTRAINT `inschrijvingen_ibfk_2` FOREIGN KEY (`id`) REFERENCES `gebruikers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
