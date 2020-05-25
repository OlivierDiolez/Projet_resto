-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 18 mai 2020 à 12:33
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `secure`
--

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `GROUP_NAME` (`GROUP_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groups`
--

INSERT INTO `groups` (`ID`, `GROUP_NAME`) VALUES
(2, 'administration'),
(1, 'vendeurs');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 'durand', '80C6E784E91C36E418C36C6A9B19A460096AA87CB6CF3BE639E1351E2CF5B962'),
(2, 'dupond', '80C6E784E91C36E418C36C6A9B19A460096AA87CB6CF3BE639E1351E2CF5B962'),
(3, 'boulon', '80C6E784E91C36E418C36C6A9B19A460096AA87CB6CF3BE639E1351E2CF5B962'),
(4, 'bouchon', '80C6E784E91C36E418C36C6A9B19A460096AA87CB6CF3BE639E1351E2CF5B962'),
(5, 'admin', '80C6E784E91C36E418C36C6A9B19A460096AA87CB6CF3BE639E1351E2CF5B962'),
(6, 'benhamed', '80C6E784E91C36E418C36C6A9B19A460096AA87CB6CF3BE639E1351E2CF5B962');

-- --------------------------------------------------------

--
-- Structure de la table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `GROUP_NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  KEY `FK_USERS_GROUPS_USER` (`USERNAME`),
  KEY `FK_USERS_GROUPS_GROUP` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users_groups`
--

INSERT INTO `users_groups` (`GROUP_NAME`, `USERNAME`) VALUES
('vendeurs', 'bouchon'),
('vendeurs', 'boulon'),
('administration', 'dupond'),
('administration', 'durand'),
('administration', 'admin'),
('vendeurs', 'benhamed');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `FK_USERS_GROUPS_GROUP` FOREIGN KEY (`GROUP_NAME`) REFERENCES `groups` (`GROUP_NAME`),
  ADD CONSTRAINT `FK_USERS_GROUPS_USER` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
