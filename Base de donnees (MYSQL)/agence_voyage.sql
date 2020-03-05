-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 19 fév. 2019 à 22:06
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agence_voyage`
--
DROP DATABASE IF EXISTS agence_voyage;

CREATE DATABASE agence_voyage;

USE agence_voyage;
-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `ID_client` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `CIN` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reserver`
--

DROP TABLE IF EXISTS `reserver`;
CREATE TABLE IF NOT EXISTS `reserver` (
  `ID_voyage` int(11) NOT NULL,
  `ID_client` int(11) NOT NULL,
  `nbrPlace` int(11) NOT NULL,
  PRIMARY KEY (`ID_voyage`,`ID_client`),
  KEY `client_reserver_fk` (`ID_client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `traget`
--

DROP TABLE IF EXISTS `traget`;
CREATE TABLE IF NOT EXISTS `traget` (
  `ID_Traget` int(11) NOT NULL AUTO_INCREMENT,
  `Ville_depart` varchar(20) NOT NULL,
  `ville_arrive` varchar(20) NOT NULL,
  `Prix` double NOT NULL,
  PRIMARY KEY (`ID_Traget`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `Id_transport` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `nb_place` int(11) NOT NULL,
  `classe` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_transport`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `CIN` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
CREATE TABLE IF NOT EXISTS `voyage` (
  `ID_voyage` int(11) NOT NULL,
  `place_dispo` int(11) NOT NULL,
  `Temps_depart` time NOT NULL,
  `Temps_arrive` time NOT NULL,
  `Reduction` varchar(5) NOT NULL,
  `ID_Traget` int(11) NOT NULL,
  `Id_transport` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_voyage`),
  KEY `traget_voyage_fk` (`ID_Traget`),
  KEY `transport_voyage_fk` (`Id_transport`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
