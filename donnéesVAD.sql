SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données: `vente_a_emporter`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `CodeCat` varchar(10) COLLATE utf8_bin NOT NULL,
  `LibelleCat` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CodeCat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`CodeCat`, `LibelleCat`) VALUES
('PIZ', 'Pizzas'),
('GAL', 'Galettes de sarrasin'),
('CRE', 'Crêpes de froment'),
('GLA', 'Glaces'),
('BOI', 'Boissons sans alcool'),
('BIE', 'Bières');

-- --------------------------------------------------------

--
-- Structure de la table `modereglt`
--

DROP TABLE IF EXISTS `modereglt`;
CREATE TABLE IF NOT EXISTS `modereglt` (
  `CodModReg` varchar(4) COLLATE utf8_bin NOT NULL,
  `ModeReglt` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CodModReg`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `modereglt`
--

INSERT INTO `modereglt` (`CodModReg`, `ModeReglt`) VALUES
('CB', 'CB sur web'),
('PP', 'Paypal sur web'),
('SP', 'Sur place');

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

DROP TABLE IF EXISTS `tva`;
CREATE TABLE IF NOT EXISTS `tva` (
  `CodeTVA` varchar(1) COLLATE utf8_bin NOT NULL,
  `TauxTVA` decimal(6,3) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CodeTVA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `tva`
--

INSERT INTO `tva` (`CodeTVA`, `TauxTVA`) VALUES
(1, '0.100'),
(2, '0.200'),
(3, '0.055');
COMMIT;

-- --------------------------------------------------------

--
-- Structure de la table `typecde`
--

DROP TABLE IF EXISTS `typecde`;
CREATE TABLE IF NOT EXISTS `typecde` (
  `CodTypCde` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TypeCde` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CodTypCde`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `typecde`
--

INSERT INTO `typecde` (`CodTypCde`, `TypeCde`) VALUES
('AL', 'A livrer'),
('DR', 'Drive'),
('SP', 'A consommer s/ place');
COMMIT;

