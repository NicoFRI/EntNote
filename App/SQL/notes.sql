-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 24 Avril 2016 à 16:34
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

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE `appartient` (
  `ID_Promo` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID_Promo`,`ID`),
  KEY `FK_Appartient_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `appartient`
--

INSERT INTO `appartient` (`ID_Promo`, `ID`) VALUES
(5, 1),
(3, 2),
(4, 3),
(5, 4),
(5, 5),
(4, 6),
(4, 7),
(2, 8),
(1, 9),
(1, 10),
(5, 11),
(4, 12),
(5, 13),
(3, 14),
(2, 15),
(3, 16),
(4, 17),
(2, 18),
(5, 19),
(2, 20),
(2, 21),
(5, 22),
(2, 23),
(1, 24),
(2, 25),
(2, 26),
(3, 27),
(2, 28),
(3, 29),
(1, 30),
(4, 31),
(3, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(3, 37),
(4, 38),
(5, 39),
(3, 40),
(4, 41),
(2, 42),
(5, 43),
(4, 44),
(5, 45),
(2, 46),
(1, 47),
(3, 48),
(5, 49),
(1, 50),
(5, 51),
(5, 52),
(2, 53),
(2, 54),
(1, 55),
(2, 56),
(5, 57),
(2, 58),
(1, 59),
(5, 60),
(3, 61),
(3, 62),
(4, 63),
(3, 64),
(1, 65),
(3, 66),
(3, 67),
(2, 68),
(4, 69),
(5, 70),
(2, 71),
(2, 72),
(4, 73),
(2, 74),
(3, 75),
(5, 76),
(3, 77),
(2, 78),
(4, 79),
(3, 80),
(4, 81),
(5, 82),
(5, 83),
(5, 84),
(3, 85),
(3, 86),
(4, 87),
(4, 88),
(3, 89),
(5, 90),
(3, 91),
(3, 92),
(1, 93),
(2, 94),
(5, 95),
(4, 96),
(2, 97),
(5, 98),
(1, 99),
(1, 100);

-- --------------------------------------------------------

--
-- Structure de la table `devoirs`
--

DROP TABLE IF EXISTS `devoirs`;
CREATE TABLE `devoirs` (
  `Id_devoir` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_devoir` tinytext,
  `Type_devoir` tinytext,
  `Date_devoir` date NOT NULL,
  `ID_doc` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_devoir`),
  KEY `FK_Devoirs_ID_doc` (`ID_doc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `devoirs`
--

INSERT INTO `devoirs` (`Id_devoir`, `Nom_devoir`, `Type_devoir`, `Date_devoir`, `ID_doc`) VALUES
(1, 'Ammal', 'Oral', '0000-00-00', NULL),
(2, 'Camès', 'DS', '0000-00-00', NULL),
(3, 'Byssagym', 'QCM', '0000-00-00', NULL),
(4, 'Apozoch', 'Oral', '0000-00-00', NULL),
(5, 'Limelor', 'DS', '0000-00-00', NULL),
(6, 'Aguasor', 'QCM', '0000-00-00', NULL),
(7, 'Camcifuth', 'Oral', '0000-00-00', NULL),
(8, 'Moget', 'DS', '0000-00-00', NULL),
(9, 'Lulial', 'QCM', '0000-00-00', NULL),
(10, 'Anbeth', 'Oral', '0000-00-00', NULL),
(11, 'Agaron', 'DS', '0000-00-00', NULL),
(12, 'Cadrel', 'QCM', '0000-00-00', NULL),
(13, 'Agualphégée', 'Oral', '0000-00-00', NULL),
(14, 'Androliaroch', 'DS', '0000-00-00', NULL),
(15, 'Naleth', 'QCM', '0000-00-00', NULL),
(16, 'Adrastarax', 'Oral', '0000-00-00', NULL),
(17, 'Agamalet', 'DS', '0000-00-00', NULL),
(18, 'Andreaoth', 'QCM', '0000-00-00', NULL),
(19, 'Valym', 'Oral', '0000-00-00', NULL),
(20, 'Anlzéboth', 'DS', '0000-00-00', NULL),
(21, 'Alastan', 'QCM', '0000-00-00', NULL),
(22, 'Androhal', 'Oral', '0000-00-00', NULL),
(23, 'Alalym', 'DS', '0000-00-00', NULL),
(24, 'Stolphech', 'QCM', '0000-00-00', NULL),
(25, 'Byzor', 'Oral', '0000-00-00', NULL),
(26, 'Stomaluth', 'DS', '0000-00-00', NULL),
(27, 'Matial', 'QCM', '0000-00-00', NULL),
(28, 'Baphomius', 'Oral', '0000-00-00', NULL),
(29, 'Andreagès', 'DS', '0000-00-00', NULL),
(30, 'Paiberal', 'QCM', '0000-00-00', NULL),
(31, 'Agacifor', 'Oral', '0000-00-00', NULL),
(32, 'Anlas', 'DS', '0000-00-00', NULL),
(33, 'Abraberoch', 'QCM', '0000-00-00', NULL),
(34, 'Nahax', 'Oral', '0000-00-00', NULL),
(35, 'Pailphor', 'DS', '0000-00-00', NULL),
(36, 'Zazius', 'QCM', '0000-00-00', NULL),
(37, 'Lulefal', 'Oral', '0000-00-00', NULL),
(38, 'Belor', 'DS', '0000-00-00', NULL),
(39, 'Andraech', 'QCM', '0000-00-00', NULL),
(40, 'Nesus', 'Oral', '0000-00-00', NULL),
(41, 'Cammmith', 'DS', '0000-00-00', NULL),
(42, 'Zassagal', 'QCM', '0000-00-00', NULL),
(43, 'Camlphée', 'Oral', '0000-00-00', NULL),
(44, 'Lidrer', 'DS', '0000-00-00', NULL),
(45, 'Andreadroch', 'QCM', '0000-00-00', NULL),
(46, 'Andromelial', 'Oral', '0000-00-00', NULL),
(47, 'Basès', 'DS', '0000-00-00', NULL),
(48, 'Calus', 'QCM', '0000-00-00', NULL),
(49, 'Adraphomith', 'Oral', '0000-00-00', NULL),
(50, 'Byzus', 'DS', '0000-00-00', NULL),
(51, 'Alastaror', 'QCM', '0000-00-00', NULL),
(52, 'Apohial', 'Oral', '0000-00-00', NULL),
(53, 'Bemelel', 'DS', '0000-00-00', NULL),
(54, 'Nelus', 'QCM', '0000-00-00', NULL),
(55, 'Andracifial', 'Oral', '0000-00-00', NULL),
(56, 'Cagial', 'DS', '0000-00-00', NULL),
(57, 'Bestaran', 'QCM', '0000-00-00', NULL),
(58, 'Asmolon', 'Oral', '0000-00-00', NULL),
(59, 'Andrastarus', 'DS', '0000-00-00', NULL),
(60, 'Paizoth', 'QCM', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `ID_doc` int(11) NOT NULL AUTO_INCREMENT,
  `Titre_doc` tinytext,
  `Description_doc` text,
  `Emplacement_fichier` text,
  `ID_module` int(11) NOT NULL,
  `Id_TypeDoc` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_doc`),
  KEY `FK_Document_ID_module` (`ID_module`),
  KEY `FK_Document_Id_TypeDoc` (`Id_TypeDoc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `document`
--

INSERT INTO `document` (`ID_doc`, `Titre_doc`, `Description_doc`, `Emplacement_fichier`, `ID_module`, `Id_TypeDoc`) VALUES
(1, 'doc fake', 'dkjgh:kjd', NULL, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `enseigne`
--

DROP TABLE IF EXISTS `enseigne`;
CREATE TABLE `enseigne` (
  `ID` int(11) NOT NULL,
  `ID_module` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`ID_module`),
  KEY `FK_Enseigne_ID_module` (`ID_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `enseigne`
--

INSERT INTO `enseigne` (`ID`, `ID_module`) VALUES
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(102, 5),
(103, 6),
(104, 7),
(104, 8),
(103, 9),
(102, 10),
(103, 11),
(102, 12),
(104, 13),
(104, 14),
(104, 15),
(104, 16),
(102, 17),
(104, 18),
(104, 19),
(102, 20);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `ID_module` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_module` tinytext NOT NULL,
  `Coef_module` int(11) NOT NULL,
  PRIMARY KEY (`ID_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `modules`
--

INSERT INTO `modules` (`ID_module`, `Nom_module`, `Coef_module`) VALUES
(1, 'ALGEBRE LINEAIRE 1', 4),
(2, 'ANGLAIS', 2),
(3, 'BASES DE DONNEES', 3),
(4, 'PROGRAMMATION ORIENTEE OBJETS', 3),
(5, 'PROJET PROFESSIONNEL', 2),
(6, 'PROGRAMMATION MATLAB', 2),
(7, 'TECHNOLOGIE DES CIRCUITS NUMERIQUES', 2),
(8, 'BASES DE DONNES AVANCEES', 3),
(9, 'GESTION DE PROJET NUMERIQUE', 3),
(10, 'LANGAGE PHP', 4),
(11, 'ANALYSE NUMERIQUE', 2),
(12, 'LANGAGE JAVA', 3),
(13, 'PROJET', 3),
(14, 'STAGE (8 SEMAINES)', 3),
(15, 'UE LIBRE PARCOURS METIER DU WEB', 3),
(16, ' SECURITE INFORMATIQUE', 3),
(17, 'ALGORITHMIQUE AVANCEE', 3),
(18, 'E-MARKETING', 2),
(19, 'INTEGRATION DE SITES', 2),
(20, 'RESEAUX SOCIAUX', 2);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `modules_utilisateur`
--
DROP VIEW IF EXISTS `modules_utilisateur`;
CREATE TABLE `modules_utilisateur` (
`Identifiant` tinytext
,`Nom_module` tinytext
);
-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
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

--
-- Contenu de la table `notes`
--

INSERT INTO `notes` (`Valeur`, `Commentaire`, `Coef`, `Note_max`, `ID`, `ID_module`, `Id_devoir`) VALUES
(11, 'tu as eu :11', 1, 20, 1, 2, 53),
(14, 'tu as eu :14', 2, 20, 1, 20, 54),
(19, 'tu as eu :19', 4, 20, 2, 2, 53),
(15, 'tu as eu :15', 4, 20, 2, 7, 52),
(15, 'tu as eu :15', 2, 20, 2, 18, 41),
(3, 'tu as eu :3', 3, 20, 3, 4, 59),
(14, 'tu as eu :14', 2, 20, 3, 10, 48),
(10, 'tu as eu :10', 1, 20, 4, 7, 52),
(0, 'tu as eu :0', 3, 20, 4, 15, 39),
(12, 'tu as eu :12', 1, 20, 4, 17, 43),
(3, 'tu as eu :3', 4, 10, 4, 20, 54),
(2, 'tu as eu :2', 2, 10, 5, 5, 46),
(7, 'tu as eu :7', 4, 20, 5, 8, 49),
(8, 'tu as eu :8', 1, 20, 5, 11, 21),
(18, 'tu as eu :18', 1, 20, 5, 13, 19),
(18, 'tu as eu :18', 1, 20, 6, 5, 46),
(6, 'tu as eu :6', 2, 20, 6, 11, 21),
(10, 'tu as eu :10', 1, 20, 7, 13, 19),
(19, 'tu as eu :19', 1, 20, 8, 2, 53),
(17, 'tu as eu :17', 2, 20, 8, 6, 55),
(20, 'tu as eu :20', 4, 20, 8, 18, 41),
(13, 'tu as eu :13', 1, 20, 8, 19, 56),
(16, 'tu as eu :16', 2, 20, 9, 5, 46),
(18, 'tu as eu :18', 1, 20, 9, 6, 55),
(0, 'tu as eu :0', 2, 10, 9, 8, 49),
(11, 'tu as eu :11', 4, 20, 10, 3, 45),
(0, 'tu as eu :0', 2, 20, 10, 15, 39),
(3, 'tu as eu :3', 1, 10, 12, 8, 49),
(15, 'tu as eu :15', 4, 20, 12, 9, 36),
(18, 'tu as eu :18', 1, 20, 12, 15, 39),
(20, 'tu as eu :20', 2, 20, 13, 5, 46),
(10, 'tu as eu :10', 3, 20, 13, 17, 43),
(5, 'tu as eu :5', 2, 20, 13, 20, 54),
(6, 'tu as eu :6', 2, 10, 14, 3, 45),
(3, 'tu as eu :3', 4, 10, 14, 15, 39),
(14, 'tu as eu :14', 1, 20, 14, 17, 43),
(0, 'tu as eu :0', 4, 10, 14, 20, 54),
(17, 'tu as eu :17', 3, 20, 15, 12, 19),
(2, 'tu as eu :2', 4, 20, 15, 13, 19),
(12, 'tu as eu :12', 2, 20, 15, 16, 58),
(4, 'tu as eu :4', 1, 10, 16, 8, 49),
(4, 'tu as eu :4', 3, 10, 17, 3, 45),
(14, 'tu as eu :14', 2, 20, 17, 6, 55),
(12, 'tu as eu :12', 2, 20, 19, 20, 54),
(2, 'tu as eu :2', 3, 20, 20, 1, 60),
(1, 'tu as eu :1', 4, 10, 20, 7, 52),
(6, 'tu as eu :6', 2, 20, 20, 8, 49),
(15, 'tu as eu :15', 1, 20, 20, 11, 21),
(12, 'tu as eu :12', 4, 20, 20, 13, 19),
(14, 'tu as eu :14', 2, 20, 21, 8, 49),
(14, 'tu as eu :14', 3, 20, 22, 3, 45),
(9, 'tu as eu :9', 2, 10, 23, 2, 53),
(17, 'tu as eu :17', 2, 20, 23, 17, 43),
(13, 'tu as eu :13', 4, 20, 24, 7, 52),
(9, 'tu as eu :9', 2, 10, 24, 15, 39),
(6, 'tu as eu :6', 3, 10, 25, 4, 59),
(0, 'tu as eu :0', 3, 10, 25, 6, 55),
(12, 'tu as eu :12', 3, 20, 26, 2, 53),
(11, 'tu as eu :11', 2, 20, 26, 15, 39),
(13, 'tu as eu :13', 4, 20, 26, 17, 43),
(11, 'tu as eu :11', 4, 20, 27, 1, 60),
(0, 'tu as eu :0', 1, 10, 27, 9, 36),
(18, 'tu as eu :18', 4, 20, 27, 10, 48),
(20, 'tu as eu :20', 2, 20, 27, 13, 19),
(8, 'tu as eu :8', 2, 20, 27, 17, 43),
(3, 'tu as eu :3', 3, 20, 28, 1, 60),
(20, 'tu as eu :20', 1, 20, 28, 3, 45),
(5, 'tu as eu :5', 1, 10, 28, 13, 19),
(0, 'tu as eu :0', 4, 20, 28, 14, 57),
(20, 'tu as eu :20', 2, 20, 28, 16, 58),
(2, 'tu as eu :2', 3, 10, 28, 20, 54),
(12, 'tu as eu :12', 2, 20, 29, 2, 53),
(8, 'tu as eu :8', 3, 10, 29, 16, 58),
(2, 'tu as eu :2', 2, 10, 29, 20, 54),
(15, 'tu as eu :15', 4, 20, 30, 14, 57),
(1, 'tu as eu :1', 1, 10, 31, 1, 60),
(4, 'tu as eu :4', 1, 10, 31, 3, 45),
(15, 'tu as eu :15', 4, 20, 32, 16, 58),
(19, 'tu as eu :19', 3, 20, 32, 20, 54),
(13, 'tu as eu :13', 3, 20, 33, 1, 60),
(13, 'tu as eu :13', 1, 20, 33, 6, 55),
(14, 'tu as eu :14', 2, 20, 33, 9, 36),
(3, 'tu as eu :3', 3, 10, 33, 16, 58),
(4, 'tu as eu :4', 1, 10, 34, 1, 60),
(15, 'tu as eu :15', 4, 20, 34, 3, 45),
(20, 'tu as eu :20', 4, 20, 34, 6, 55),
(7, 'tu as eu :7', 4, 10, 35, 7, 52),
(18, 'tu as eu :18', 3, 20, 35, 16, 58),
(20, 'tu as eu :20', 3, 20, 36, 7, 52),
(3, 'tu as eu :3', 1, 10, 36, 20, 54),
(11, 'tu as eu :11', 3, 20, 37, 10, 48),
(7, 'tu as eu :7', 3, 20, 38, 3, 45),
(12, 'tu as eu :12', 3, 20, 38, 5, 46),
(17, 'tu as eu :17', 4, 20, 38, 9, 36),
(19, 'tu as eu :19', 4, 20, 39, 13, 19),
(1, 'tu as eu :1', 4, 10, 39, 14, 57),
(14, 'tu as eu :14', 2, 20, 39, 15, 39),
(2, 'tu as eu :2', 1, 20, 40, 11, 21),
(15, 'tu as eu :15', 2, 20, 40, 14, 57),
(13, 'tu as eu :13', 3, 20, 40, 18, 41),
(19, 'tu as eu :19', 3, 20, 41, 1, 60),
(16, 'tu as eu :16', 1, 20, 41, 11, 21),
(13, 'tu as eu :13', 2, 20, 41, 14, 57),
(6, 'tu as eu :6', 4, 20, 41, 16, 58),
(18, 'tu as eu :18', 2, 20, 41, 17, 43),
(2, 'tu as eu :2', 3, 10, 42, 3, 45),
(16, 'tu as eu :16', 1, 20, 42, 17, 43),
(0, 'tu as eu :0', 3, 10, 42, 20, 54),
(3, 'tu as eu :3', 3, 20, 43, 5, 46),
(11, 'tu as eu :11', 3, 20, 43, 7, 52),
(19, 'tu as eu :19', 1, 20, 43, 11, 21),
(8, 'tu as eu :8', 4, 20, 43, 16, 58),
(15, 'tu as eu :15', 2, 20, 43, 19, 56),
(16, 'tu as eu :16', 4, 20, 44, 7, 52),
(19, 'tu as eu :19', 1, 20, 45, 20, 54),
(3, 'tu as eu :3', 3, 20, 46, 4, 59),
(2, 'tu as eu :2', 2, 20, 47, 3, 45),
(15, 'tu as eu :15', 4, 20, 47, 4, 59),
(20, 'tu as eu :20', 1, 20, 47, 10, 48),
(15, 'tu as eu :15', 3, 20, 48, 7, 52),
(6, 'tu as eu :6', 2, 10, 48, 14, 57),
(18, 'tu as eu :18', 3, 20, 49, 1, 60),
(18, 'tu as eu :18', 4, 20, 49, 4, 59),
(0, 'tu as eu :0', 3, 10, 49, 6, 55),
(14, 'tu as eu :14', 4, 20, 49, 10, 48),
(16, 'tu as eu :16', 4, 20, 49, 15, 39),
(4, 'tu as eu :4', 2, 20, 50, 10, 48),
(20, 'tu as eu :20', 1, 20, 51, 14, 57),
(5, 'tu as eu :5', 4, 20, 52, 4, 59),
(15, 'tu as eu :15', 2, 20, 52, 10, 48),
(15, 'tu as eu :15', 2, 20, 52, 11, 21),
(6, 'tu as eu :6', 3, 20, 53, 3, 45),
(8, 'tu as eu :8', 1, 10, 53, 4, 59),
(2, 'tu as eu :2', 4, 10, 53, 19, 56),
(13, 'tu as eu :13', 3, 20, 54, 6, 55),
(8, 'tu as eu :8', 3, 10, 55, 4, 59),
(8, 'tu as eu :8', 2, 20, 55, 17, 43),
(16, 'tu as eu :16', 2, 20, 55, 18, 41),
(5, 'tu as eu :5', 3, 20, 56, 3, 45),
(17, 'tu as eu :17', 1, 20, 56, 12, 19),
(7, 'tu as eu :7', 1, 10, 56, 16, 58),
(9, 'tu as eu :9', 3, 20, 56, 19, 56),
(14, 'tu as eu :14', 3, 20, 57, 9, 36),
(17, 'tu as eu :17', 4, 20, 57, 19, 56),
(2, 'tu as eu :2', 2, 20, 57, 20, 54),
(3, 'tu as eu :3', 3, 20, 58, 12, 19),
(10, 'tu as eu :10', 2, 20, 58, 15, 39),
(14, 'tu as eu :14', 3, 20, 59, 6, 55),
(11, 'tu as eu :11', 1, 20, 59, 17, 43),
(13, 'tu as eu :13', 1, 20, 59, 18, 41),
(10, 'tu as eu :10', 1, 20, 60, 1, 60),
(0, 'tu as eu :0', 1, 10, 60, 3, 45),
(4, 'tu as eu :4', 3, 20, 60, 4, 59),
(14, 'tu as eu :14', 2, 20, 60, 12, 19),
(12, 'tu as eu :12', 1, 20, 60, 19, 56),
(5, 'tu as eu :5', 4, 10, 61, 2, 53),
(14, 'tu as eu :14', 1, 20, 61, 8, 49),
(15, 'tu as eu :15', 2, 20, 61, 12, 19),
(3, 'tu as eu :3', 3, 10, 61, 13, 19),
(18, 'tu as eu :18', 3, 20, 62, 2, 53),
(5, 'tu as eu :5', 2, 10, 62, 10, 48),
(17, 'tu as eu :17', 1, 20, 62, 15, 39),
(11, 'tu as eu :11', 3, 20, 64, 6, 55),
(18, 'tu as eu :18', 1, 20, 64, 13, 19),
(13, 'tu as eu :13', 3, 20, 64, 18, 41),
(17, 'tu as eu :17', 4, 20, 65, 6, 55),
(8, 'tu as eu :8', 2, 20, 65, 10, 48),
(0, 'tu as eu :0', 4, 20, 65, 19, 56),
(0, 'tu as eu :0', 4, 20, 66, 12, 19),
(7, 'tu as eu :7', 1, 10, 66, 15, 39),
(5, 'tu as eu :5', 4, 20, 66, 18, 41),
(9, 'tu as eu :9', 1, 10, 66, 20, 54),
(8, 'tu as eu :8', 4, 20, 67, 2, 53),
(20, 'tu as eu :20', 3, 20, 67, 5, 46),
(19, 'tu as eu :19', 2, 20, 68, 2, 53),
(8, 'tu as eu :8', 3, 10, 68, 5, 46),
(9, 'tu as eu :9', 3, 20, 68, 15, 39),
(6, 'tu as eu :6', 3, 20, 69, 3, 45),
(14, 'tu as eu :14', 1, 20, 69, 14, 57),
(4, 'tu as eu :4', 4, 10, 69, 17, 43),
(0, 'tu as eu :0', 1, 20, 70, 1, 60),
(2, 'tu as eu :2', 4, 20, 70, 18, 41),
(16, 'tu as eu :16', 3, 20, 70, 20, 54),
(16, 'tu as eu :16', 3, 20, 71, 3, 45),
(13, 'tu as eu :13', 4, 20, 71, 12, 19),
(8, 'tu as eu :8', 3, 20, 71, 18, 41),
(11, 'tu as eu :11', 3, 20, 72, 1, 60),
(13, 'tu as eu :13', 2, 20, 72, 3, 45),
(13, 'tu as eu :13', 2, 20, 72, 12, 19),
(8, 'tu as eu :8', 1, 20, 73, 5, 46),
(3, 'tu as eu :3', 3, 10, 73, 15, 39),
(3, 'tu as eu :3', 2, 10, 73, 17, 43),
(8, 'tu as eu :8', 4, 20, 74, 2, 53),
(10, 'tu as eu :10', 1, 20, 74, 5, 46),
(7, 'tu as eu :7', 4, 20, 74, 8, 49),
(20, 'tu as eu :20', 1, 20, 74, 20, 54),
(20, 'tu as eu :20', 2, 20, 75, 15, 39),
(11, 'tu as eu :11', 4, 20, 75, 16, 58),
(13, 'tu as eu :13', 2, 20, 76, 2, 53),
(20, 'tu as eu :20', 2, 20, 76, 14, 57),
(11, 'tu as eu :11', 1, 20, 77, 16, 58),
(18, 'tu as eu :18', 3, 20, 78, 5, 46),
(13, 'tu as eu :13', 4, 20, 78, 11, 21),
(14, 'tu as eu :14', 4, 20, 79, 2, 53),
(2, 'tu as eu :2', 4, 10, 79, 6, 55),
(20, 'tu as eu :20', 4, 20, 79, 7, 52),
(3, 'tu as eu :3', 2, 20, 79, 9, 36),
(16, 'tu as eu :16', 3, 20, 79, 18, 41),
(15, 'tu as eu :15', 4, 20, 80, 3, 45),
(2, 'tu as eu :2', 1, 10, 80, 11, 21),
(5, 'tu as eu :5', 2, 20, 80, 16, 58),
(14, 'tu as eu :14', 1, 20, 81, 1, 60),
(16, 'tu as eu :16', 3, 20, 81, 7, 52),
(3, 'tu as eu :3', 4, 10, 81, 15, 39),
(10, 'tu as eu :10', 3, 20, 82, 9, 36),
(16, 'tu as eu :16', 4, 20, 83, 20, 54),
(2, 'tu as eu :2', 3, 10, 84, 3, 45),
(17, 'tu as eu :17', 2, 20, 84, 6, 55),
(17, 'tu as eu :17', 2, 20, 84, 7, 52),
(12, 'tu as eu :12', 2, 20, 84, 9, 36),
(11, 'tu as eu :11', 2, 20, 85, 3, 45),
(7, 'tu as eu :7', 3, 20, 85, 18, 41),
(0, 'tu as eu :0', 3, 10, 85, 20, 54),
(6, 'tu as eu :6', 2, 10, 86, 19, 56),
(11, 'tu as eu :11', 2, 20, 87, 4, 59),
(17, 'tu as eu :17', 2, 20, 87, 8, 49),
(12, 'tu as eu :12', 1, 20, 87, 11, 21),
(4, 'tu as eu :4', 4, 10, 87, 12, 19),
(14, 'tu as eu :14', 3, 20, 88, 3, 45),
(12, 'tu as eu :12', 2, 20, 88, 6, 55),
(5, 'tu as eu :5', 1, 10, 88, 12, 19),
(18, 'tu as eu :18', 3, 20, 88, 14, 57),
(15, 'tu as eu :15', 3, 20, 89, 5, 46),
(1, 'tu as eu :1', 1, 10, 89, 11, 21),
(16, 'tu as eu :16', 4, 20, 89, 12, 19),
(14, 'tu as eu :14', 4, 20, 90, 9, 36),
(14, 'tu as eu :14', 2, 20, 91, 3, 45),
(15, 'tu as eu :15', 3, 20, 91, 8, 49),
(14, 'tu as eu :14', 4, 20, 91, 12, 19),
(2, 'tu as eu :2', 2, 10, 91, 17, 43),
(12, 'tu as eu :12', 2, 20, 92, 12, 19),
(9, 'tu as eu :9', 1, 20, 92, 13, 19),
(12, 'tu as eu :12', 1, 20, 92, 19, 56),
(17, 'tu as eu :17', 2, 20, 93, 13, 19),
(6, 'tu as eu :6', 1, 20, 93, 15, 39),
(7, 'tu as eu :7', 1, 10, 93, 17, 43),
(1, 'tu as eu :1', 3, 20, 93, 18, 41),
(7, 'tu as eu :7', 4, 10, 94, 2, 53),
(2, 'tu as eu :2', 2, 10, 94, 4, 59),
(7, 'tu as eu :7', 3, 20, 94, 12, 19),
(19, 'tu as eu :19', 3, 20, 94, 18, 41),
(14, 'tu as eu :14', 1, 20, 95, 6, 55),
(20, 'tu as eu :20', 1, 20, 95, 13, 19),
(13, 'tu as eu :13', 4, 20, 95, 19, 56),
(3, 'tu as eu :3', 4, 20, 96, 4, 59),
(19, 'tu as eu :19', 4, 20, 96, 5, 46),
(19, 'tu as eu :19', 3, 20, 96, 6, 55),
(6, 'tu as eu :6', 4, 20, 96, 7, 52),
(3, 'tu as eu :3', 4, 20, 96, 9, 36),
(14, 'tu as eu :14', 2, 20, 96, 13, 19),
(0, 'tu as eu :0', 2, 10, 97, 4, 59),
(4, 'tu as eu :4', 2, 10, 97, 5, 46),
(10, 'tu as eu :10', 2, 20, 97, 9, 36),
(6, 'tu as eu :6', 3, 10, 98, 1, 60),
(20, 'tu as eu :20', 4, 20, 98, 4, 59),
(16, 'tu as eu :16', 4, 20, 98, 12, 19),
(5, 'tu as eu :5', 2, 20, 99, 5, 46),
(15, 'tu as eu :15', 3, 20, 99, 8, 49),
(11, 'tu as eu :11', 3, 20, 99, 12, 19),
(2, 'tu as eu :2', 4, 10, 99, 18, 41),
(9, 'tu as eu :9', 4, 10, 100, 12, 19);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `notesusermoduledevoir`
--
DROP VIEW IF EXISTS `notesusermoduledevoir`;
CREATE TABLE `notesusermoduledevoir` (
`Nom_module` tinytext
,`Nom_devoir` tinytext
,`Identifiant` tinytext
,`Valeur` int(11)
,`Note_max` int(11)
,`Coef` int(11)
);
-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion` (
  `ID_Promo` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Promo` tinytext,
  `Annee_promo` tinytext NOT NULL,
  PRIMARY KEY (`ID_Promo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `promotion`
--

INSERT INTO `promotion` (`ID_Promo`, `Nom_Promo`, `Annee_promo`) VALUES
(1, 'L1 SPI', '2015-2016'),
(2, 'L2 SPI web', '2015-2016'),
(3, 'L2 SPI elec', '2015-2016'),
(4, 'L3 SPI web', '2015-2016'),
(5, 'L3 SPI elec', '2015-2016');

-- --------------------------------------------------------

--
-- Structure de la table `suit`
--

DROP TABLE IF EXISTS `suit`;
CREATE TABLE `suit` (
  `ID_Promo` int(11) NOT NULL,
  `ID_module` int(11) NOT NULL,
  PRIMARY KEY (`ID_Promo`,`ID_module`),
  KEY `FK_Suit_ID_module` (`ID_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `suit`
--

INSERT INTO `suit` (`ID_Promo`, `ID_module`) VALUES
(1, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(2, 3),
(5, 3),
(2, 4),
(4, 4),
(1, 5),
(5, 5),
(1, 6),
(1, 7),
(3, 7),
(1, 8),
(5, 8),
(3, 9),
(4, 9),
(2, 10),
(3, 10),
(4, 10),
(2, 11),
(4, 11),
(3, 12),
(2, 13),
(4, 13),
(1, 14),
(4, 14),
(2, 15),
(5, 15),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(4, 17),
(5, 17),
(3, 18),
(3, 19),
(5, 19),
(1, 20),
(5, 20);

-- --------------------------------------------------------

--
-- Structure de la table `typedocument`
--

DROP TABLE IF EXISTS `typedocument`;
CREATE TABLE `typedocument` (
  `Id_TypeDoc` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Doc` tinytext,
  PRIMARY KEY (`Id_TypeDoc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `type_utilisateur`;
CREATE TABLE `type_utilisateur` (
  `ID_Type` int(11) NOT NULL AUTO_INCREMENT,
  `Type_utilisateur` tinytext,
  PRIMARY KEY (`ID_Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `utilistateur`;
CREATE TABLE `utilistateur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` tinytext NOT NULL,
  `Prenom` tinytext NOT NULL,
  `Identifiant` tinytext,
  `Email` tinytext,
  `Mdp` tinytext,
  `ID_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Utilistateur_ID_Type` (`ID_Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Structure de la vue `modules_utilisateur`
--
DROP TABLE IF EXISTS `modules_utilisateur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `modules_utilisateur` AS select `utilistateur`.`Identifiant` AS `Identifiant`,`modules`.`Nom_module` AS `Nom_module` from ((((`utilistateur` join `promotion`) join `suit`) join `appartient`) join `modules`) where ((`suit`.`ID_Promo` = `appartient`.`ID_Promo`) and (`appartient`.`ID` = `utilistateur`.`ID`) and (`suit`.`ID_module` = `modules`.`ID_module`)) group by `modules`.`Nom_module` order by `utilistateur`.`Identifiant`;

-- --------------------------------------------------------

--
-- Structure de la vue `notesusermoduledevoir`
--
DROP TABLE IF EXISTS `notesusermoduledevoir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `notesusermoduledevoir` AS select `modules`.`Nom_module` AS `Nom_module`,`devoirs`.`Nom_devoir` AS `Nom_devoir`,`utilistateur`.`Identifiant` AS `Identifiant`,`Valeur` AS `Valeur`,`Note_max` AS `Note_max`,`Coef` AS `Coef` from (((`utilistateur` join `devoirs`) join `notes`) join `modules`) where ((`devoirs`.`Id_devoir` = `Id_devoir`) and (`utilistateur`.`ID` = `ID`) and (`modules`.`ID_module` = `ID_module`));

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
  ADD CONSTRAINT `FK_Document_ID_module` FOREIGN KEY (`ID_module`) REFERENCES `modules` (`ID_module`),
  ADD CONSTRAINT `FK_Document_Id_TypeDoc` FOREIGN KEY (`Id_TypeDoc`) REFERENCES `typedocument` (`Id_TypeDoc`);

--
-- Contraintes pour la table `enseigne`
--
ALTER TABLE `enseigne`
  ADD CONSTRAINT `FK_Enseigne_ID` FOREIGN KEY (`ID`) REFERENCES `utilistateur` (`ID`),
  ADD CONSTRAINT `FK_Enseigne_ID_module` FOREIGN KEY (`ID_module`) REFERENCES `modules` (`ID_module`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FK_Notes_ID` FOREIGN KEY (`ID`) REFERENCES `utilistateur` (`ID`),
  ADD CONSTRAINT `FK_Notes_Id_devoir` FOREIGN KEY (`Id_devoir`) REFERENCES `devoirs` (`Id_devoir`),
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
