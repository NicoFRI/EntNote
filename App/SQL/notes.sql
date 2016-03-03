-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Mars 2016 à 15:57
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `notes`
--
CREATE DATABASE IF NOT EXISTS `notes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `notes`;

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE IF NOT EXISTS `appartient` (
  `ID_Promo` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID_Promo`,`ID`),
  KEY `FK_Appartient_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `devoirs`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `devoirs`;
CREATE TABLE IF NOT EXISTS `devoirs` (
  `Id_devoir` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_devoir` tinytext,
  `Type_devoir` tinytext,
  `Date_devoir` date NOT NULL,
  `ID_doc` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_devoir`),
  KEY `FK_Devoirs_ID_doc` (`ID_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `ID_doc` int(11) NOT NULL AUTO_INCREMENT,
  `Titre_doc` tinytext,
  `Description_doc` text,
  `Emplacement_fichier` text,
  `ID_module` int(11) NOT NULL,
  `Id_TypeDoc` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_doc`),
  KEY `FK_Document_ID_module` (`ID_module`),
  KEY `FK_Document_Id_TypeDoc` (`Id_TypeDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `enseigne`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `enseigne`;
CREATE TABLE IF NOT EXISTS `enseigne` (
  `ID` int(11) NOT NULL,
  `ID_module` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`ID_module`),
  KEY `FK_Enseigne_ID_module` (`ID_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `ID_module` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_module` tinytext NOT NULL,
  `Coef_module` int(11) NOT NULL,
  PRIMARY KEY (`ID_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `Valeur` int(11) DEFAULT NULL,
  `Commentaire` text NOT NULL,
  `Coef` int(11) NOT NULL,
  `Note_max` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `ID_module` int(11) NOT NULL,
  `Id_devoir` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`ID_module`,`Id_devoir`),
  KEY `FK_Notes_ID_module` (`ID_module`),
  KEY `FK_Notes_Id_devoir` (`Id_devoir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `ID_Promo` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Promo` tinytext,
  `Annee_promo` tinytext NOT NULL,
  PRIMARY KEY (`ID_Promo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `suit`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `suit`;
CREATE TABLE IF NOT EXISTS `suit` (
  `ID_Promo` int(11) NOT NULL,
  `ID_module` int(11) NOT NULL,
  PRIMARY KEY (`ID_Promo`,`ID_module`),
  KEY `FK_Suit_ID_module` (`ID_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typedocument`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `typedocument`;
CREATE TABLE IF NOT EXISTS `typedocument` (
  `Id_TypeDoc` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Doc` tinytext,
  PRIMARY KEY (`Id_TypeDoc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `typedocument`
--

INSERT INTO `typedocument` (`Id_TypeDoc`, `Type_Doc`) VALUES
(1, 'Cours'),
(2, 'Sujet d''examen');

-- --------------------------------------------------------

--
-- Structure de la table `type_utilisateur`
--
-- Création :  Jeu 03 Mars 2016 à 10:29
--

DROP TABLE IF EXISTS `type_utilisateur`;
CREATE TABLE IF NOT EXISTS `type_utilisateur` (
  `ID_Type` int(11) NOT NULL AUTO_INCREMENT,
  `Type_utilisateur` tinytext,
  PRIMARY KEY (`ID_Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `type_utilisateur`
--

INSERT INTO `type_utilisateur` (`ID_Type`, `Type_utilisateur`) VALUES
(1, 'Etu'),
(2, 'Ens'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `utilistateur`
--
-- Création :  Jeu 03 Mars 2016 à 12:11
--

DROP TABLE IF EXISTS `utilistateur`;
CREATE TABLE IF NOT EXISTS `utilistateur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` tinytext NOT NULL,
  `Prenom` tinytext NOT NULL,
  `Identifiant` tinytext,
  `Email` tinytext,
  `Mdp` tinytext,
  `ID_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Utilistateur_ID_Type` (`ID_Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Contenu de la table `utilistateur`
--

INSERT INTO `utilistateur` (`ID`, `Nom`, `Prenom`, `Identifiant`, `Email`, `Mdp`, `ID_Type`) VALUES
(1, 'Solene', 'Andrieux', 'SA171', 'Solene.Andrieux@univ-stq.fr', 'etu', 1),
(2, 'Capucine', 'Anquetil', 'CA822', 'Capucine.Anquetil@univ-stq.fr', 'etu', 1),
(3, 'Benoît', 'Arnaud', 'BA611', 'Benoît.Arnaud@univ-stq.fr', 'etu', 1),
(4, 'Margaux', 'Aubertin', 'MA358', 'Margaux.Aubertin@univ-stq.fr', 'etu', 1),
(5, 'Daniel', 'Ba', 'DB498', 'Daniel.Ba@univ-stq.fr', 'etu', 1),
(6, 'Gérard', 'Barbet', 'GB886', 'Gérard.Barbet@univ-stq.fr', 'etu', 1),
(7, 'Clara', 'Baret', 'CB439', 'Clara.Baret@univ-stq.fr', 'etu', 1),
(8, 'Roger', 'Barthe', 'RB385', 'Roger.Barthe@univ-stq.fr', 'etu', 1),
(9, 'Christophe', 'Baudet', 'CB913', 'Christophe.Baudet@univ-stq.fr', 'etu', 1),
(10, 'Guy', 'Baudin', 'GB891', 'Guy.Baudin@univ-stq.fr', 'etu', 1),
(11, 'Louise', 'Bauduin', 'LB439', 'Louise.Bauduin@univ-stq.fr', 'etu', 1),
(12, 'Clara', 'Bellet', 'CB426', 'Clara.Bellet@univ-stq.fr', 'etu', 1),
(13, 'Nicolas', 'Belliard', 'NB925', 'Nicolas.Belliard@univ-stq.fr', 'etu', 1),
(14, 'Heloise', 'Bellier', 'HB936', 'Heloise.Bellier@univ-stq.fr', 'etu', 1),
(15, 'Nicolas', 'Benoist', 'NB378', 'Nicolas.Benoist@univ-stq.fr', 'etu', 1),
(16, 'Louis', 'Bergeron', 'LB735', 'Louis.Bergeron@univ-stq.fr', 'etu', 1),
(17, 'Lou', 'Blachere', 'LB142', 'Lou.Blachere@univ-stq.fr', 'etu', 1),
(18, 'Lou', 'Blain', 'LB489', 'Lou.Blain@univ-stq.fr', 'etu', 1),
(19, 'Luna', 'Blanc', 'LB378', 'Luna.Blanc@univ-stq.fr', 'etu', 1),
(20, 'Frédéric', 'Bour', 'FB338', 'Frédéric.Bour@univ-stq.fr', 'etu', 1),
(21, 'Clarisse', 'Bouteiller', 'CB339', 'Clarisse.Bouteiller@univ-stq.fr', 'etu', 1),
(22, 'Gilles', 'Bret', 'GB919', 'Gilles.Bret@univ-stq.fr', 'etu', 1),
(23, 'Jean-Michel', 'Briere', 'JB321', 'Jean-Michel.Briere@univ-stq.fr', 'etu', 1),
(24, 'Jean-Marc', 'Busson', 'JB769', 'Jean-Marc.Busson@univ-stq.fr', 'etu', 1),
(25, 'Gabrielle', 'Caille', 'GC560', 'Gabrielle.Caille@univ-stq.fr', 'etu', 1),
(26, 'Franck', 'Caumont', 'FC723', 'Franck.Caumont@univ-stq.fr', 'etu', 1),
(27, 'Fanny', 'Chabot', 'FC496', 'Fanny.Chabot@univ-stq.fr', 'etu', 1),
(28, 'Alain', 'Cornet', 'AC873', 'Alain.Cornet@univ-stq.fr', 'etu', 1),
(29, 'Olivier', 'Cotte', 'OC630', 'Olivier.Cotte@univ-stq.fr', 'etu', 1),
(30, 'Leane', 'Delcourt', 'LD595', 'Leane.Delcourt@univ-stq.fr', 'etu', 1),
(31, 'Alicia', 'Delestre', 'AD483', 'Alicia.Delestre@univ-stq.fr', 'etu', 1),
(32, 'Camille', 'Denys', 'CD251', 'Camille.Denys@univ-stq.fr', 'etu', 1),
(33, 'Patrice', 'Dubos', 'PD513', 'Patrice.Dubos@univ-stq.fr', 'etu', 1),
(34, 'Eloise', 'Ducrocq', 'ED498', 'Eloise.Ducrocq@univ-stq.fr', 'etu', 1),
(35, 'Alice', 'Dupre', 'AD382', 'Alice.Dupre@univ-stq.fr', 'etu', 1),
(36, 'Julien', 'Dupuy', 'JD346', 'Julien.Dupuy@univ-stq.fr', 'etu', 1),
(37, 'Eric', 'Durieux', 'ED135', 'Eric.Durieux@univ-stq.fr', 'etu', 1),
(38, 'Jean-Marc', 'Eyraud', 'JE710', 'Jean-Marc.Eyraud@univ-stq.fr', 'etu', 1),
(39, 'Noemie', 'Faucher', 'NF770', 'Noemie.Faucher@univ-stq.fr', 'etu', 1),
(40, 'Henri', 'Faure', 'HF337', 'Henri.Faure@univ-stq.fr', 'etu', 1),
(41, 'Margaux', 'Garnier', 'MG526', 'Margaux.Garnier@univ-stq.fr', 'etu', 1),
(42, 'Rose', 'Gaucher', 'RG804', 'Rose.Gaucher@univ-stq.fr', 'etu', 1),
(43, 'Thomas', 'Gautheron', 'TG689', 'Thomas.Gautheron@univ-stq.fr', 'etu', 1),
(44, 'Thierry', 'Gentil', 'TG349', 'Thierry.Gentil@univ-stq.fr', 'etu', 1),
(45, 'Alicia', 'Germain', 'AG701', 'Alicia.Germain@univ-stq.fr', 'etu', 1),
(46, 'Kevin', 'Gonin', 'KG126', 'Kevin.Gonin@univ-stq.fr', 'etu', 1),
(47, 'Christian', 'Grenier', 'CG425', 'Christian.Grenier@univ-stq.fr', 'etu', 1),
(48, 'Xavier', 'Guitton', 'XG137', 'Xavier.Guitton@univ-stq.fr', 'etu', 1),
(49, 'Flavie', 'Hubert', 'FH947', 'Flavie.Hubert@univ-stq.fr', 'etu', 1),
(50, 'Agathe', 'James', 'AJ459', 'Agathe.James@univ-stq.fr', 'etu', 1),
(51, 'Jean-Paul', 'Janvier', 'JJ145', 'Jean-Paul.Janvier@univ-stq.fr', 'etu', 1),
(52, 'Louis', 'Jaubert', 'LJ610', 'Louis.Jaubert@univ-stq.fr', 'etu', 1),
(53, 'Xavier', 'Jay', 'XJ869', 'Xavier.Jay@univ-stq.fr', 'etu', 1),
(54, 'Elisa', 'Jeannot', 'EJ171', 'Elisa.Jeannot@univ-stq.fr', 'etu', 1),
(55, 'Emilie', 'Kuhn', 'EK939', 'Emilie.Kuhn@univ-stq.fr', 'etu', 1),
(56, 'Alice', 'Kuntz', 'AK987', 'Alice.Kuntz@univ-stq.fr', 'etu', 1),
(57, 'Raymond', 'Labbe', 'RL713', 'Raymond.Labbe@univ-stq.fr', 'etu', 1),
(58, 'Lana', 'Lafon', 'LL658', 'Lana.Lafon@univ-stq.fr', 'etu', 1),
(59, 'Guy', 'Larroque', 'GL353', 'Guy.Larroque@univ-stq.fr', 'etu', 1),
(60, 'Adrien', 'Le guen', 'AL879', 'Adrien.Le guen@univ-stq.fr', 'etu', 1),
(61, 'Alain', 'Lebrun', 'AL325', 'Alain.Lebrun@univ-stq.fr', 'etu', 1),
(62, 'Alain', 'Lecoeur', 'AL752', 'Alain.Lecoeur@univ-stq.fr', 'etu', 1),
(63, 'Ines', 'Long', 'IL746', 'Ines.Long@univ-stq.fr', 'etu', 1),
(64, 'Bernard', 'Magne', 'BM637', 'Bernard.Magne@univ-stq.fr', 'etu', 1),
(65, 'Agathe', 'Magnier', 'AM522', 'Agathe.Magnier@univ-stq.fr', 'etu', 1),
(66, 'Lina', 'Marchand', 'LM612', 'Lina.Marchand@univ-stq.fr', 'etu', 1),
(67, 'Camille', 'Marx', 'CM297', 'Camille.Marx@univ-stq.fr', 'etu', 1),
(68, 'Nina', 'Mazars', 'NM907', 'Nina.Mazars@univ-stq.fr', 'etu', 1),
(69, 'Olivia', 'Montagne', 'OM457', 'Olivia.Montagne@univ-stq.fr', 'etu', 1),
(70, 'Thomas', 'Moreira', 'TM406', 'Thomas.Moreira@univ-stq.fr', 'etu', 1),
(71, 'Sara', 'Moulin', 'SM488', 'Sara.Moulin@univ-stq.fr', 'etu', 1),
(72, 'Margot', 'Neuville', 'MN373', 'Margot.Neuville@univ-stq.fr', 'etu', 1),
(73, 'Christian', 'Pascual', 'CP165', 'Christian.Pascual@univ-stq.fr', 'etu', 1),
(74, 'Louna', 'Pascual', 'LP163', 'Louna.Pascual@univ-stq.fr', 'etu', 1),
(75, 'Lily', 'Pellerin', 'LP642', 'Lily.Pellerin@univ-stq.fr', 'etu', 1),
(76, 'Georges', 'Perin', 'GP602', 'Georges.Perin@univ-stq.fr', 'etu', 1),
(77, 'Richard', 'Perrin', 'RP426', 'Richard.Perrin@univ-stq.fr', 'etu', 1),
(78, 'Gilbert', 'Perron', 'GP603', 'Gilbert.Perron@univ-stq.fr', 'etu', 1),
(79, 'Jean-Marie', 'Petiot', 'JP400', 'Jean-Marie.Petiot@univ-stq.fr', 'etu', 1),
(80, 'Christian', 'Pinard', 'CP708', 'Christian.Pinard@univ-stq.fr', 'etu', 1),
(81, 'Philippe', 'Piton', 'PP291', 'Philippe.Piton@univ-stq.fr', 'etu', 1),
(82, 'Elise', 'Poncelet', 'EP290', 'Elise.Poncelet@univ-stq.fr', 'etu', 1),
(83, 'Margot', 'Porte', 'MP413', 'Margot.Porte@univ-stq.fr', 'etu', 1),
(84, 'Joël', 'Poussin', 'JP127', 'Joël.Poussin@univ-stq.fr', 'etu', 1),
(85, 'Hervé', 'Pradier', 'HP567', 'Hervé.Pradier@univ-stq.fr', 'etu', 1),
(86, 'Rose', 'Provost', 'RP581', 'Rose.Provost@univ-stq.fr', 'etu', 1),
(87, 'Olivia', 'Rigal', 'OR278', 'Olivia.Rigal@univ-stq.fr', 'etu', 1),
(88, 'Raymond', 'Roch', 'RR151', 'Raymond.Roch@univ-stq.fr', 'etu', 1),
(89, 'Emma', 'Romero', 'ER322', 'Emma.Romero@univ-stq.fr', 'etu', 1),
(90, 'Morgane', 'Rousselle', 'MR769', 'Morgane.Rousselle@univ-stq.fr', 'etu', 1),
(91, 'Leonie', 'Routier', 'LR496', 'Leonie.Routier@univ-stq.fr', 'etu', 1),
(92, 'Jean-Pierre', 'Ruiz', 'JR297', 'Jean-Pierre.Ruiz@univ-stq.fr', 'etu', 1),
(93, 'Louna', 'Tanguy', 'LT497', 'Louna.Tanguy@univ-stq.fr', 'etu', 1),
(94, 'Nina', 'Theron', 'NT956', 'Nina.Theron@univ-stq.fr', 'etu', 1),
(95, 'Salome', 'Trichet', 'ST647', 'Salome.Trichet@univ-stq.fr', 'etu', 1),
(96, 'Mickaël', 'Trouillet', 'MT676', 'Mickaël.Trouillet@univ-stq.fr', 'etu', 1),
(97, 'Jean-Marie', 'Trouve', 'JT102', 'Jean-Marie.Trouve@univ-stq.fr', 'etu', 1),
(98, 'Alexis', 'Vasseur', 'AV842', 'Alexis.Vasseur@univ-stq.fr', 'etu', 1),
(99, 'Emilie', 'Vergnaud', 'EV199', 'Emilie.Vergnaud@univ-stq.fr', 'etu', 1),
(100, 'Julia', 'Vion', 'JV320', 'Julia.Vion@univ-stq.fr', 'etu', 1),
(101, 'Karl', 'Marx', 'KM841', 'Karl.Marx@univ-stq.fr', 'admin', 3),
(102, 'Ada', 'lovelace', 'Al195', 'Ada.lovelace@univ-stq.fr', 'prof', 2),
(103, 'Hedy', 'Lamarr', 'HL780', 'Hedy.Lamarr@univ-stq.fr', 'prof', 2),
(104, 'Grace', 'Hopper', 'GH808', 'Grace.Hopper@univ-stq.fr', 'prof', 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `FK_Appartient_ID` FOREIGN KEY (`ID`) REFERENCES `utilistateur` (`ID`),
  ADD CONSTRAINT `FK_Appartient_ID_Promo` FOREIGN KEY (`ID_Promo`) REFERENCES `promotion` (`ID_Promo`);

--
-- Contraintes pour la table `devoirs`
--
ALTER TABLE `devoirs`
  ADD CONSTRAINT `FK_Devoirs_ID_doc` FOREIGN KEY (`ID_doc`) REFERENCES `document` (`ID_doc`);

--
-- Contraintes pour la table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `FK_Document_Id_TypeDoc` FOREIGN KEY (`Id_TypeDoc`) REFERENCES `typedocument` (`Id_TypeDoc`),
  ADD CONSTRAINT `FK_Document_ID_module` FOREIGN KEY (`ID_module`) REFERENCES `modules` (`ID_module`);

--
-- Contraintes pour la table `enseigne`
--
ALTER TABLE `enseigne`
  ADD CONSTRAINT `FK_Enseigne_ID_module` FOREIGN KEY (`ID_module`) REFERENCES `modules` (`ID_module`),
  ADD CONSTRAINT `FK_Enseigne_ID` FOREIGN KEY (`ID`) REFERENCES `utilistateur` (`ID`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FK_Notes_Id_devoir` FOREIGN KEY (`Id_devoir`) REFERENCES `devoirs` (`Id_devoir`),
  ADD CONSTRAINT `FK_Notes_ID` FOREIGN KEY (`ID`) REFERENCES `utilistateur` (`ID`),
  ADD CONSTRAINT `FK_Notes_ID_module` FOREIGN KEY (`ID_module`) REFERENCES `modules` (`ID_module`);

--
-- Contraintes pour la table `suit`
--
ALTER TABLE `suit`
  ADD CONSTRAINT `FK_Suit_ID_module` FOREIGN KEY (`ID_module`) REFERENCES `modules` (`ID_module`),
  ADD CONSTRAINT `FK_Suit_ID_Promo` FOREIGN KEY (`ID_Promo`) REFERENCES `promotion` (`ID_Promo`);

--
-- Contraintes pour la table `utilistateur`
--
ALTER TABLE `utilistateur`
  ADD CONSTRAINT `FK_Utilistateur_ID_Type` FOREIGN KEY (`ID_Type`) REFERENCES `type_utilisateur` (`ID_Type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
