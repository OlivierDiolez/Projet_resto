-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 10 mai 2020 à 17:40
-- Version du serveur :  8.0.18
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
-- Base de données :  `vente_a_emporter`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `Code` varchar(10) COLLATE utf8_bin NOT NULL,
  `Mot de passe` varchar(20) COLLATE utf8_bin NOT NULL,
  `Nom` varchar(40) COLLATE utf8_bin NOT NULL,
  `Prénom` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `CodeCat` varchar(10) COLLATE utf8_bin NOT NULL,
  `LibelleCat` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `CodeCli` varchar(10) COLLATE utf8_bin NOT NULL,
  `TelCli` varchar(10) COLLATE utf8_bin NOT NULL,
  `AdresseCli` varchar(255) COLLATE utf8_bin NOT NULL,
  `CodePostal` varchar(6) COLLATE utf8_bin NOT NULL,
  `VilleCli` varchar(40) COLLATE utf8_bin NOT NULL,
  `CumulCATTC` int(10) NOT NULL,
  `Ancienneté` date NOT NULL,
  `Newsletter` tinyint(1) NOT NULL,
  `AdressMailCli` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `NumCde` varchar(10) COLLATE utf8_bin NOT NULL,
  `DateCde` date NOT NULL,
  `CodeCli` varchar(10) COLLATE utf8_bin NOT NULL,
  `TypeCde` varchar(3) COLLATE utf8_bin NOT NULL,
  `HeureRetrait` time(5) NOT NULL,
  `DateRetrait` date NOT NULL,
  `ModeReglt` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `detailcommande`
--

DROP TABLE IF EXISTS `detailcommande`;
CREATE TABLE IF NOT EXISTS `detailcommande` (
  `CodeProd` varchar(10) COLLATE utf8_bin NOT NULL,
  `DescriptionProd` varchar(40) COLLATE utf8_bin NOT NULL,
  `PrixProd` decimal(20,0) NOT NULL,
  `Quantite` int(10) NOT NULL,
  `TotalCde` decimal(20,0) NOT NULL,
  `CodeTVA` varchar(1) COLLATE utf8_bin NOT NULL,
  `CommentCli` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `modereglt`
--

DROP TABLE IF EXISTS `modereglt`;
CREATE TABLE IF NOT EXISTS `modereglt` (
  `CodModReg` varchar(4) COLLATE utf8_bin NOT NULL,
  `ModeReglt` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `CodeProd` varchar(10) COLLATE utf8_bin NOT NULL,
  `NomProduit` varchar(40) COLLATE utf8_bin NOT NULL,
  `DescriptionProd` text COLLATE utf8_bin NOT NULL,
  `PhotoTinyProd` blob,
  `PhotoLargeProd` blob,
  `CodeCat` varchar(10) COLLATE utf8_bin NOT NULL,
  `PrixHT` decimal(10,0) NOT NULL,
  `PrixTTC` decimal(10,0) NOT NULL,
  `CodeTVA` varchar(1) COLLATE utf8_bin NOT NULL,
  `MntTVA` decimal(10,0)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

DROP TABLE IF EXISTS `tva`;
CREATE TABLE IF NOT EXISTS `tva` (
  `CodeTVA` varchar(1) COLLATE utf8_bin NOT NULL,
  `TauxTVA` decimal(6,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `typecde`
--

DROP TABLE IF EXISTS `typecde`;
CREATE TABLE IF NOT EXISTS `typecde` (
  `CodTypCde` varchar(2) COLLATE utf8_bin NOT NULL,
  `TypeCde` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
