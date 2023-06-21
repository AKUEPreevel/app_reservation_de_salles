-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 21 juin 2023 à 13:04
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservationsdesalles`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `ID_reservation` int NOT NULL,
  `ID_salle` int DEFAULT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  `Date_reservation` date DEFAULT NULL,
  `Heure_debut` time DEFAULT NULL,
  `Heure_fin` time DEFAULT NULL,
  PRIMARY KEY (`ID_reservation`),
  KEY `ID_salle` (`ID_salle`),
  KEY `ID_utilisateur` (`ID_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`ID_reservation`, `ID_salle`, `ID_utilisateur`, `Date_reservation`, `Heure_debut`, `Heure_fin`) VALUES
(1, 1, 1, '2023-06-21', '10:00:00', '12:00:00'),
(2, 2, 2, '2023-06-22', '14:00:00', '16:00:00'),
(3, 3, 3, '2023-06-23', '09:00:00', '11:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

DROP TABLE IF EXISTS `salles`;
CREATE TABLE IF NOT EXISTS `salles` (
  `ID_salle` int NOT NULL,
  `Nom_salle` varchar(50) DEFAULT NULL,
  `Capacite` int DEFAULT NULL,
  `Equipements` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_salle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`ID_salle`, `Nom_salle`, `Capacite`, `Equipements`) VALUES
(1, 'Salle A', 150, 'Projecteur, Wi-Fi'),
(2, 'Salle B', 250, 'Tableau blanc, Chaises'),
(3, 'Salle C', 400, 'Écran, Sonorisation');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `ID_utilisateur` int NOT NULL,
  `Nom_utilisateur` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mot_de_passe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`ID_utilisateur`, `Nom_utilisateur`, `Email`, `Mot_de_passe`) VALUES
(1, 'ryanawokoman', 'ryanawokoman08@example.com', '1234'),
(2, 'jean-mark_bras_de_fer', 'jeanmarkbrasdefer2@example.com', '4321'),
(3, 'follygaston', 'follygaston3@example.com', '98765');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
