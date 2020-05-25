SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données: `vente_a_emporter`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `produit`;
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `CodeArt` varchar(10) COLLATE utf8_bin NOT NULL,
  `NomArt` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DescriptionArt` text COLLATE utf8_bin NULL,
  `PhotoTinyArt` varchar(40) COLLATE utf8_bin NULL,
  `PhotoLargeArt` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `CodeCatArt` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PrixHT` decimal(10,2) NULL,
  `MntTVA` decimal(10,2) NULL,
  `PrixTTC` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CodeArt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`CodeArt`, `NomArt`,`DescriptionArt`,`PhotoTinyArt`,`PhotoLargeArt`,`CodeCatArt`,`PrixHT`,`MntTVA`,`PrixTTC`) VALUES
('COCA', 'Coca-cola 33cl',,,'images\\_Coca-cola 33cl.jpg','BOI',,,'2.5'),
('FANTA', 'Fanta 33cl',,,'images\\_Fanta 33cl.jpg','BOI',,,'2.5'),
('PEPSI', 'Pepsi-cola 33cl',,,'images\\_Pepsi-cola 33cl.jpg','BOI',,,'2.5'),
('SPRITE', 'Sprite 33cl',,,'images\\_Sprite 33cl.jpg','BOI',,,'2.5'),
('CRIS50', 'Cristaline 50cl',,,'images\\_Cristaline 50cl.jpg','BOI',,,'1.5'),
('CRIS150', 'Cristaline 150cl',,,'images\\_Cristaline 1,5L.jpg','BOI',,,'3.5'),
('CRISG50', 'Cristaline Gazeifiée 50cl',,,'images\\_Cristaline gazeifiee 50cl.jpg','BOI',,,'1.8'),
('EVIAN50', 'Evian 50cl',,,'images\\_Evian 50cl.jpg','BOI',,,'1.8'),
('EVIAN150', 'Evian 150cl',,,'images\\_Evian 1,5L.jpg','BOI',,,'3.5'),
('CARSBERG', 'Biere Carlsberg',,,'images\\Biere Carlsberg.jpg','BIE',,,'3.5'),
('GUINESS', 'Biere Guiness',,,'images\\Biere Guiness.jpg','BIE',,,'3.8'),
('HEINKEN', 'Biere Heineken',,,'images\\Biere Heineken.jpg','BIE',,,'3.5'),
('LAGER', 'Bière lager',,,'images\\Bière lager.jpg','BIE',,,'3.5'),
('STELLA', 'Bière Stella Artois',,,'images\\Bière Stella Artois.jpg','BIE',,,'3.5'),
('MIEL', 'Crepe au miel',,,'images\\Crepe au miel.jpg','CRE',,,'4.5'),
('BANACARA', 'Crepe banane caramel',,,'images\\Crepe banane caramel.jpg','CRE',,,'4.8'),
('BANANUTE', 'Crepe banane nutella',,,'images\\Crepe banane nutella.jpg','CRE',,,'4.8'),
('CHOCO', 'Crepe chocolat',,,'images\\Crepe chocolat.jpg','CRE',,,'4.5'),
('CONFIT', 'Crepe confiture',,,'images\\Crepe confiture.jpg','CRE',,,'5.5'),
('FRAISECHOC', 'Crepe fraises chocolat',,,'images\\Crepe fraises chocolat.jpg','CRE',,,'4.5'),
('ORANGE', 'Crepe marmelade d'orange',,,'images\\Crepe marmelade d'orange.jpg','CRE',,,'4.6'),
('ROULEES', 'Crepes roulees au caramel',,,'images\\Crepes roulees au caramel.jpg','CRE',,,'5.5'),
('TRIOCITRON', 'Trio de crepes au citron',,,'images\\Trio de crepes au citron.jpg','CRE',,,'5.9'),
('LARD', 'Galette au lard',,,'images\\Galette au lard.jpg','GAL',,,'7.5'),
('CHAMPI', 'Galette complete aux champignons',,,'images\\Galette complete aux champignons.jpg','GAL',,,'7.5'),
('LARDON', 'Galette complete aux lardons',,,'images\\Galette complete aux lardons.jpg','GAL',,,'7.5'),
('BACON', 'Galette complete bacon',,,'images\\Galette complete bacon.jpg','GAL',,,'8.0'),
('COMPLETE', 'Galette complete',,,'images\\Galette complete.jpg','GAL',,,'7.0'),
('GLABROWNIE', 'Glace brownie',,,'images\\Glace brownie.jpg','GLA',,,'5.5'),
('GLACHOCO', 'Glace chocolat',,,'images\\Glace chocolat.jpg','GLA',,,'5.0'),
('GLACOOKIES', 'Glace cookies',,,'images\\Glace cookies.jpg','GLA',,,'5.5'),
('GLAVANILLE', 'Glace vanille',,,'images\\Glace vanille.jpg','GLA',,,'4.5'),
('CANADIENNE', 'Pizza canadienne au bacon',,,'images\\Pizza canadienne au bacon.jpg','PIZZ',,,'7.5'),
('NAPLES', 'Pizza de Naples',,,'images\\Pizza de Naples.jpg','PIZZ',,,'7.5'),
('MARGARITA', 'Pizza Margarita','fromage mozzarella, basilic et tomates,,'images\\Pizza Margarita fromage mozzarella, basilic et tomates.jpg','PIZZ',,,'7.5'),
('PEPPERONI', 'Pizza Pepperoni',,,'images\\Pizza Pepperoni.jpg','PIZZ',,,'7.5'),
('4STAGIONI', 'Pizza Quattro stagioni',,,'images\\Pizza Quattro stagioni.jpg','PIZZ',,,'7.5');
COMMIT;

