-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 mai 2026 à 14:07
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetmedecin`
--

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `idPatient` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomPatient` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenomPatient` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruePatient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpPatient` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `villePatient` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telPatient` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginPatient` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdpPatient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPatient`),
  UNIQUE KEY `patients_loginpatient_unique` (`loginPatient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`idPatient`, `nomPatient`, `prenomPatient`, `ruePatient`, `cpPatient`, `villePatient`, `telPatient`, `loginPatient`, `mdpPatient`, `created_at`, `updated_at`) VALUES
(1, 'Arens', 'Amélia', 'Rue test', '92040', 'Issy-les-Moulineaux', '0615789645', 'AmelA', '$2y$10$cfc.hsR70BxilhgB1r6GC.uowv70IXP24H.HVtnU.6TxxOYsPCix2', '2026-03-26 09:43:58', '2026-03-26 09:43:58'),
(2, 'W', 'Cloe', 'Rue CloW', '92040', 'Issy-les-Moulineaux', '0625789642', 'CloeW', '$2y$10$7wfeMulr6UAq1V.4UG5ZbOh5Sy8M7R5Uxxnjtmda/X8gbQlarITxe', '2026-03-26 12:47:38', '2026-03-26 12:47:38'),
(3, 'A', 'Amelia', '24', '55100', 'Issy-les-Moulineaux', '0658741258', 'Amelia', '$2y$10$bMITmd/Me5neKGhw9spNkuk/FwPH8iNMZ7WugUQ2NmEKeBD.PjH2K', '2026-04-09 10:44:16', '2026-04-09 10:44:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
