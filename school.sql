-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 27 mars 2024 à 16:37
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `school`
--

-- --------------------------------------------------------

--
-- Structure de la table `Grade`
--

CREATE TABLE `Grade` (
  `id` int(11) NOT NULL,
  `student_id` varchar(250) NOT NULL,
  `subject_id` varchar(250) NOT NULL,
  `grade` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Grade`
--

INSERT INTO `Grade` (`id`, `student_id`, `subject_id`, `grade`) VALUES
(10, 'M001', '2', 18),
(11, 'M001', '2', 13),
(12, 'M002', '2', 19),
(16, 'M002', '2', 17),
(17, 'M003', '2', 9),
(18, 'M003', '2', 12);

-- --------------------------------------------------------

--
-- Structure de la table `Student`
--

CREATE TABLE `Student` (
  `id` varchar(50) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Student`
--

INSERT INTO `Student` (`id`, `firstName`, `lastName`) VALUES
('M001', 'Nadal', 'Rafael'),
('M002', 'DJokovi', 'Novak'),
('M003', 'Sage', 'Pierre');

-- --------------------------------------------------------

--
-- Structure de la table `Subject`
--

CREATE TABLE `Subject` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `factor` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Subject`
--

INSERT INTO `Subject` (`id`, `name`, `factor`) VALUES
(2, '1', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Grade`
--
ALTER TABLE `Grade`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Subject`
--
ALTER TABLE `Subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Grade`
--
ALTER TABLE `Grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `Subject`
--
ALTER TABLE `Subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
