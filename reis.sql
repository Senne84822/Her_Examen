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
(13, 'reisfoto13.png', 'Malvezie', 'Malvezie is een gemeente in het Franse departement Haute-Garonne en telt 121 inwoners. De plaats maakt deel uit van het arrondissement Saint-Gaudens.', '2022-07-20', '2022-07-28', 'Frankrijk'),
(18, 'reisfoto18.png', 'Fjorden', 'De peilloze diepten van de machtige Sognefjord; de ijzige gletsjers van Jostedalsbreen National Park, hoog boven de idyllische Nærøyfjord. Wat zíjn ze een contrast met het sappige fruit op de hellingen rondom de Hardangerfjord. De spectaculaire fjorden van West-Noorwegen zijn prima te bezoeken met een elektrische auto. Er zijn veel laadpunten en waterkrachtcentrales, je rijdt dus nog groen ook.', '2022-05-20', '2022-05-29', 'West-Noorwegen'),
(19, 'reisfoto19.png', 'Langs de Glen!', 'Leun achterover en geniet van de bergen (ben) en dalen (glen) van Schotland. Nergens zijn de Highlands zo ruig als daar waar alleen de trein een smal spoor achterlaat. Laat je ogen ontspannen over Loch Lomond glijden. Letterlijk een hoogtepunt is de desolate top van de Ben Nevis, met 1344 meter de hoogste berg van Schotland. Nét wanneer je zin krijgt in een verzetje, stopt de trein in koninklijk Edinburgh. Of bij een charmant kasteel, een whiskydistilleerderij of de Harry Potter-spoorbrug in Glenfinnan.', '2022-08-03', '2022-08-26', 'Highlands, Schotland'),
(39, 'reisfoto39', 'Pisa!', 'naar de toren van pizza gaan', '2022-06-14', '2022-06-17', 'Italië');

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
