-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Erstellungszeit: 29. Apr 2017 um 12:05
-- Server-Version: 5.7.18
-- PHP-Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `r2o`
--
CREATE DATABASE IF NOT EXISTS `r2o` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `r2o`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblInfo`
--

DROP TABLE IF EXISTS `tblInfo`;
CREATE TABLE `tblInfo` (
  `id` int(11) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `tblInfo`
--

INSERT INTO `tblInfo` (`id`, `info`) VALUES
(1, '<h1>Compose file structure and examples</h1>\r\nThe topics on this reference page are organized alphabetically by top-level key to reflect the structure of the Compose file itself. Top-level keys that define a section in the configuration file such as build, deploy, depends_on, networks, and so on, are listed with the options that support them as sub-topics. This maps to the indent structure of the Compose file.'),
(2, '<h1>Service configuration reference</h1>\r\nThe Compose file is a YAML file defining services, networks and volumes. The default path for a Compose file is ./docker-compose.yml.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tblInfo`
--
ALTER TABLE `tblInfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tblInfo`
--
ALTER TABLE `tblInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
