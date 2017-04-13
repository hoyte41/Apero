-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 11 Janvier 2017 à 13:50
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `naturopathe`
--

-- --------------------------------------------------------

--
-- Structure de la table `accueil`
--

CREATE TABLE `accueil` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `contenu` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `accueil`
--

INSERT INTO `accueil` (`id`, `titre`, `contenu`, `date`, `auteur`) VALUES
(1, 'La naturopathie !', 'Qu\'est-ce-que la Naturopathie ?\r\n\r\nLa naturopathie est une hygiène de vie et le naturopathe un éducateur de la santé.\r\n\r\nLa naturopathie ne soigne pas, elle est là, pour aider à renforcer la force vitale de chacun d\'entre nous, ce qui nous permettra de combattre la maladie à l\'aide de différents conseils et techniques tant au niveau alimentaire, sportif, environnemental, psychologique et émotionnel.\r\n\r\nLe rôle du naturopathe est de faire comprendre et d’apprendre à utiliser les moyens naturels, en fonction de l’organisme et des rythmes de vie de chaque individu. C’est-à-dire, savoir s’alimenter correctement, apprendre à respirer, à optimiser la qualité de sommeil, à contrôler le stress, à renforcer l’exercice physique, etc... Et ce, afin de prévenir ou récupérer un déséquilibre installé, maintenir un système immunitaire actif, pour en définitive, prolonger l’état de santé le plus longtemps possible, et améliorer la qualité de vie.\r\n\r\nCette discipline s’applique à quiconque souhaite s’investir et se responsabiliser pour devenir un meilleur acteur de sa santé, en réformant son mode de vie au quotidien. C\'est avant tout une médecine de prévention qui ne remplace en rien la médecine allopathique. Ces deux médecines sont complémentaires. ', '1484139780', 'lala');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`, `email`) VALUES
(1, 'admin', 'a184ebbf0fb95211de38b9bc2be7e6c8dc55f69527af327c28ce6c15615d4757', 'naturopathe@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sujet` text NOT NULL,
  `message` text NOT NULL,
  `dateEnvoie` int(11) NOT NULL,
  `lu` tinyint(1) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `prenom`, `email`, `sujet`, `message`, `dateEnvoie`, `lu`, `ip`) VALUES
(1, 'Gicquel', 'Lucas', 'lucas.gicquel@gmail.com', 'Lala', 'lala', 1484058562, 0, '::1'),
(2, 'Gicquel', 'Lucas', 'lucas.gicquel@gmail.com', 'Lala', 'azeaze', 1484058741, 0, '::1'),
(3, '', 'Lucas', 'lucas.gicquel@gmail.com', 'aze', 'aze', 1484059152, 0, '::1');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `lien` text NOT NULL,
  `nom` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `date_ajout` varchar(255) NOT NULL,
  `actif_inactif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `accueil`
--
ALTER TABLE `accueil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `accueil`
--
ALTER TABLE `accueil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
