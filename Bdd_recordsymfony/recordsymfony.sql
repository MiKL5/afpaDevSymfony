-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 20 juil. 2022 à 15:47
-- Version du serveur : 10.6.7-MariaDB-2ubuntu1.1
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recordsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `artist_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artist`
--

INSERT INTO `artist` (`id`, `artist_name`, `artist_url`) VALUES
(1, 'Neil Young', 'https://fr.wikipedia.org/wiki/Neil_Young'),
(2, 'YES', ''),
(3, 'Rolling Stones', 'https://fr.wikipedia.org/wiki/The_Rolling_Stones'),
(4, 'Queens of the Stone Age', 'https://qotsa.com/'),
(5, 'Serge Gainsbourg', ' '),
(6, 'AC/DC', 'https://fr.wikipedia.org/wiki/AC/DC'),
(7, 'Marillion', ''),
(8, 'Bob Dylan', ''),
(9, 'Fleshtones', ''),
(10, 'The Clash', '');

-- --------------------------------------------------------

--
-- Structure de la table `disc`
--

CREATE TABLE `disc` (
  `id` int(11) NOT NULL,
  `disc_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disc_genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disc_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disc_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `disc_price` decimal(5,2) NOT NULL,
  `disc_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `disc`
--

INSERT INTO `disc` (`id`, `disc_title`, `disc_genre`, `disc_label`, `disc_picture`, `artist_id`, `disc_price`, `disc_year`) VALUES
(61, 'Fugazi', 'Prog', 'EMI', 'Fugazi.jpeg', 7, '14.99', 1984),
(62, 'Songs for the Deaf', 'Rock/Stoner', 'Interscope Records', 'Songs for the Deaf.jpeg', 4, '12.99', 2002),
(63, 'Harvest Moon', 'Rock', 'Reprise Records', 'Harvest Moon.jpeg', 1, '4.20', 1992),
(64, 'Initials BB', ' Chanson, Pop Rock', 'Philips', 'Initials BB.jpeg', 5, '12.99', 1968),
(65, 'After the Gold Rush', 'Country Rock', ' Reprise Records', 'After the Gold Rush.jpeg', 1, '20.00', 1970),
(66, 'Broken Arrow', ' Country Rock, Classic Rock', 'Reprise Records', 'Broken Arrow.jpeg', 1, '15.00', 1996),
(67, 'Highway To Hell', 'Hard Rock', 'Atlantic', 'Highway To Hell.jpeg', 6, '15.00', 1979),
(68, 'Drama', 'Prog', 'Atlantic', 'Drama.jpeg', 2, '15.00', 1980),
(69, 'Year of the Horse', 'Country Rock, Classic Rock', 'Reprise Records', 'Year of the Horse.jpeg', 1, '7.50', 1997),
(70, 'Ragged Glory', 'Country Rock, Grunge', 'Reprise Records', 'Ragged Glory.jpeg', 1, '11.00', 1990),
(71, 'Rust Never Sleeps', 'Classic Rock, Arena Rock', 'Reprise Records', 'Rust Never Sleeps.jpeg', 1, '15.00', 1979),
(72, 'Exile on main street', 'Blues Rock, Classic Rock', 'Rolling Stones Records', 'Exile on main street.jpeg', 1, '33.00', 1972),
(73, 'London Calling', 'Punk, New Wave', 'CBS', 'London Calling.jpeg', 10, '33.00', 1971),
(74, 'Beggars Banquet', 'Blues Rock, Classic Rock', 'Rolling Stones Records', 'Beggars Banquet.jpeg', 1, '33.00', 1968),
(75, 'Laboratory of sound', 'Rock', 'Rebel Rec.', 'Laboratory of sound.jpeg', 9, '33.00', 1995);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220630141146', '2022-06-30 16:12:06', 43);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `name`, `firstname`) VALUES
(1, 'admin@admin.com', '[\"ROLE_ADMIN\",\"ROLE_CLIENT\",\"ROLE_USER\"]', '$2y$13$5tLrAoBAv0iIag5bVkz97OT0wymBHT9pBxwXQGkCTZVyaSR8yGwB.', 1, '', ''),
(2, 'ann.o-nym@gmail.com', '[\"ROLE_CLIENT\"]', '$2y$13$jEzXVzY9OC5u6b2hfY9LQuBstUC9U.S9rxTTG3HOt3Ht8G/K08TNK', 1, 'O\'Nym', 'Ann'),
(10, 'leo.pard@gmail.com', '[\"ROLE_CLIENT\",\"ROLE_USER\"]', '$2y$13$jB1DNMHHMsQoylsCCJpXeOZW7A1K3d7JTs7JDS0ff7LcqgSy2X48y', 1, 'PARD', 'Léo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `disc`
--
ALTER TABLE `disc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2AF5530B7970CF8` (`artist_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `disc`
--
ALTER TABLE `disc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `disc`
--
ALTER TABLE `disc`
  ADD CONSTRAINT `FK_2AF5530B7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
