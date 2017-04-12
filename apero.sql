-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 12 Avril 2017 à 09:45
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `apero`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `Id_Adherent` int(255) NOT NULL,
  `Nom_Adherent` varchar(255) NOT NULL,
  `Prenom_Adherent` varchar(255) NOT NULL,
  `Telephone_Adherent` varchar(255) NOT NULL,
  `Mail_Adherent` varchar(255) NOT NULL,
  `Adresse_Adherent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `Id_Classe` int(255) NOT NULL,
  `Classe` varchar(255) NOT NULL,
  `Section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `Id_Editeur` int(255) NOT NULL,
  `Nom_Editeur` varchar(255) NOT NULL,
  `Site_Web` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `Id_Etablissement` int(255) NOT NULL,
  `Nom_Etablissement` varchar(255) NOT NULL,
  `Adresse_Etablissement` text NOT NULL,
  `Mail_Etablissement` varchar(255) NOT NULL,
  `Tel_Etablissement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etat_livre`
--

CREATE TABLE `etat_livre` (
  `Id_Etat` int(255) NOT NULL,
  `Etat_Livre` varchar(255) NOT NULL,
  `Decote` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `Id_Emplaire` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `Id_Livre` int(255) NOT NULL,
  `Prix` float NOT NULL,
  `Matiere` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`Id_Adherent`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`Id_Classe`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`Id_Editeur`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`Id_Etablissement`);

--
-- Index pour la table `etat_livre`
--
ALTER TABLE `etat_livre`
  ADD PRIMARY KEY (`Id_Etat`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`Id_Emplaire`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`Id_Livre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `Id_Adherent` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `Id_Classe` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `Id_Editeur` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etablissement`
--
ALTER TABLE `etablissement`
  MODIFY `Id_Etablissement` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  MODIFY `Id_Emplaire` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `Id_Livre` int(255) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `Acheter` FOREIGN KEY (`Id_Adherent`) REFERENCES `exemplaire` (`Id_Emplaire`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Apparteint` FOREIGN KEY (`Id_Adherent`) REFERENCES `etablissement` (`Id_Etablissement`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Deposer` FOREIGN KEY (`Id_Adherent`) REFERENCES `exemplaire` (`Id_Emplaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD CONSTRAINT `Editer` FOREIGN KEY (`Id_Editeur`) REFERENCES `livre` (`Id_Livre`);

--
-- Contraintes pour la table `etat_livre`
--
ALTER TABLE `etat_livre`
  ADD CONSTRAINT `Possede` FOREIGN KEY (`Id_Etat`) REFERENCES `exemplaire` (`Id_Emplaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `Appartient` FOREIGN KEY (`Id_Livre`) REFERENCES `classe` (`Id_Classe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Correspond` FOREIGN KEY (`Id_Livre`) REFERENCES `exemplaire` (`Id_Emplaire`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Correspondre` FOREIGN KEY (`Id_Livre`) REFERENCES `etablissement` (`Id_Etablissement`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
