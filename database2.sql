-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 29 Décembre 2017 à 21:22
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `database2`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `libelle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `categorie_id` int(10) UNSIGNED NOT NULL,
  `boutique_id` int(10) UNSIGNED NOT NULL,
  `prix` int(11) DEFAULT NULL,
  `photo_article` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `libelle`, `description`, `quantite`, `categorie_id`, `boutique_id`, `prix`, `photo_article`, `created_at`, `updated_at`) VALUES
(1, 'PuLL', 'articlee11', 14, 1, 1, 15, 'product1.jpg', NULL, '2017-12-21 16:00:38'),
(2, 'aaaaaaaaa', 'bbbbbbbbbbbbbbbb', 14, 1, 1, 20, 'product2.jpg', NULL, '2017-12-20 15:45:20'),
(3, 'articlee', 'article33', 15, 1, 1, 40, 'product3.jpg', NULL, NULL),
(4, 'Djean', 'djeanZARA', 50, 2, 1, 30, 'product1.jpg', '2017-12-20 14:59:55', '2017-12-20 14:59:55'),
(6, 'CD/DVD', 'vendre des CD et DVD', 10, 1, 1, 50, 'product3.jpg', '2017-12-20 16:11:36', '2017-12-20 16:11:36'),
(7, 'articleVEtement1', 'articleee1111111', 14, 2, 1, NULL, 'product1.jpg', NULL, NULL),
(8, 'articleVEtement2', 'articleee222222', 10, 2, 1, 40, 'product1.jpg', NULL, NULL),
(10, 'aaaaaaaaaaa', 'zzz', 14, 2, 1, 15, 'IhrrDjBU_cover.jpg', '2017-12-21 16:06:48', '2017-12-21 16:06:48'),
(11, 'lllll', 'ssss', 10, 1, 1, 14, 'xMBB4NV3_cover.jpg', '2017-12-21 16:50:11', '2017-12-21 16:50:11'),
(15, 'PuLL', 'pull pour femme ', 10, 1, 1, 100, 'product3.jpg', NULL, NULL),
(16, 'article4', 'chemise', 14, 2, 1, 45, 'CP7hmZQQ_cover.jpg', '2017-12-21 22:01:58', '2017-12-21 22:02:21');

-- --------------------------------------------------------

--
-- Structure de la table `article_user`
--

CREATE TABLE `article_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `article_user`
--

INSERT INTO `article_user` (`id`, `article_id`, `user_id`, `created_at`, `updated_at`) VALUES
(15, 4, 3, '2017-12-21 10:47:40', '2017-12-21 10:47:40'),
(17, 1, 3, '2017-12-21 23:29:06', '2017-12-21 23:29:06'),
(20, 15, 3, '2017-12-29 19:16:42', '2017-12-29 19:16:42');

-- --------------------------------------------------------

--
-- Structure de la table `boutiques`
--

CREATE TABLE `boutiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `boutiques`
--

INSERT INTO `boutiques` (`id`, `nom`, `adresse`, `description`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JAJAA', 'Menezh8', 'boutique vendre vetement homme', NULL, '2017-12-19 22:01:56', '2017-12-21 22:00:34'),
(4, 'boutique hejer', 'Omrane', 'boutique vendre vetement hommee', NULL, '2017-12-21 22:00:16', '2017-12-21 22:00:16');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Livres', 'Livres ou histoir', 'Livres ', NULL, NULL),
(2, 'VÊTEMENTS', 'VÊTEMENTS1', 'VÊTEMENTS VÊTEMENTS', NULL, NULL),
(3, 'Electronique', 'Vente Electronique', 'Electronique Mterial', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2017_08_02_200145_create_table_video', 1),
(28, '2017_12_19_134109_create_roles_table', 1),
(29, '2017_12_19_134408_create_role_user_table', 1),
(30, '2017_12_19_172620_create_boutique_table', 1),
(31, '2017_12_19_213222_create_articles_table', 1),
(32, '2017_12_19_214708_create_categories_table', 1),
(33, '2017_12_19_220219_create_images_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'acheteur', 'A Acheteur User', '2017-12-19 21:56:56', '2017-12-19 21:56:56'),
(2, 'vendeur', 'A Vendeur User', '2017-12-19 21:56:56', '2017-12-19 21:56:56');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-12-19 21:56:57', '2017-12-19 21:56:57'),
(2, 2, 2, '2017-12-19 21:56:57', '2017-12-19 21:56:57'),
(3, 1, 3, '2017-12-19 21:59:54', '2017-12-19 21:59:54'),
(4, 2, 4, '2017-12-19 22:01:07', '2017-12-19 22:01:07'),
(5, 1, 5, '2017-12-22 00:30:34', '2017-12-22 00:30:34'),
(6, 1, 6, '2017-12-22 18:01:13', '2017-12-22 18:01:13');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `first_name`, `last_name`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'acheteur Name', 'acheteur@example.com', '$2y$10$MwlB8QtoZSFf2sCozB6LPenXOJ2BBcL1vjVl6p/OAcYY4Bf6zPCw6', 'User', 'acheteur2', '+2165478967', NULL, '2017-12-19 21:56:57', '2017-12-19 21:56:57'),
(2, 'vendeur Name', 'vendeur@example.com', '$2y$10$nvq4Hpa6Y3EzojYWoSTEQeCpnOaW5dKOXVY69LEusb.S1RnC/ioQ.', 'User', 'vendeur2', '+21622327041', NULL, '2017-12-19 21:56:57', '2017-12-19 21:56:57'),
(3, 'acheteur', 'hejer@gmail.com', '$2y$10$mljwOPIi.dy7eREijsuLnOT5xz/FtGwQndEV2xbvU1EqHP0qb53x.', 'hejerr', 'lasmer', '22327041', 'MZ8dscLHANag0AXljiL4jzX6levWhLsyQgOGg4OQPnUXMZraFpFnUQcEATyg', '2017-12-19 21:59:54', '2017-12-29 20:14:55'),
(4, 'vendeur', 'amine@gmail.com', '$2y$10$juESlhCiwAUEC9anUtzR6upd1XSbr95/R.BpYjSfBOoQqcBGwx4tW', 'amine', 'bensalem', '25547859', 'dtLngCd84gJotqUT4PZ4vNRqJEVRNCJZogrurdFmWQqGrNc1X3ltKMkMuiX8', '2017-12-19 22:01:07', '2017-12-29 20:17:06'),
(5, 'acheteur', 'amina@gmail.com', '123456', 'amina', 'cherif', '21478569', 'eXR4lGL8X9akR7MBsOxBL63regZITH3FtRufhq073IZbWDfz7b98hzDqc02k', '2017-12-22 00:30:33', '2017-12-22 00:30:33'),
(6, 'acheteur', 'senda@gmail.com', '$2y$10$DgGOoNABemHogzk1ztonHOExQlCUl3ix5acn0So0kR7WAZGLkU6Hy', 'senda', 'benamor', '22369854', 'fFv8zCILXxke8BtnH7tVfOiyJGrTLYWVRfk9BacRxFcvrQ5tMP82pK6ePDLw', '2017-12-22 18:01:13', '2017-12-22 18:01:13');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categorie_id_foreign` (`categorie_id`),
  ADD KEY `articles_boutique_id_foreign` (`boutique_id`);

--
-- Index pour la table `article_user`
--
ALTER TABLE `article_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_article_id_foreign` (`article_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_article_id_foreign` (`article_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `article_user`
--
ALTER TABLE `article_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `boutiques`
--
ALTER TABLE `boutiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
