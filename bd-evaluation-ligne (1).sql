-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 23 avr. 2021 à 06:42
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd-evaluation-ligne`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `heure` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `cour_pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `description`, `heure`, `image`, `cour_pdf`, `created_at`, `updated_at`) VALUES
(1, 'Informatique', 'Programmation JAVA', '12h', 'http://127.0.0.1:8000/uploads/1619087547-java-N5uhyL.jpg', 'http://127.0.0.1:8000/uploads/1619087547-AVIS N° 05 CABAF II.pdf', '2021-04-22 09:32:27', '2021-04-22 09:32:27'),
(5, 'Anglais', 'Apprendre les Verbes irreguliers', '12h', 'http://127.0.0.1:8000/uploads/1619115510-anglais.png', 'http://127.0.0.1:8000/uploads/1619115510-listeverbesirreguliers.pdf', '2021-04-22 17:18:30', '2021-04-22 17:18:30'),
(6, 'SGBD', 'Apprendre MYSQL', '20H', 'http://127.0.0.1:8000/uploads/1619139211-mysql.jpg', 'http://127.0.0.1:8000/uploads/1619138906-mysql.pdf', '2021-04-22 23:48:26', '2021-04-22 23:53:31');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(23, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(24, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(25, '2016_06_01_000004_create_oauth_clients_table', 1),
(26, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2021_04_06_205322_create_cours_table', 1),
(29, '2021_04_21_201611_create_teachers_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('45c5788dcd7fa84efe93028ae1f60422783cfca4d9fa007264cf31afaf4d02408bb93d5cd0fafc23', 1, 2, NULL, '[\"*\"]', 0, '2021-04-22 09:29:53', '2021-04-22 09:29:53', '2022-04-22 10:29:53'),
('7ff8099417fa19bb5469602f5eb022015caf5b2188553264c5198d3655c7bcc68506f2b996308418', 1, 2, NULL, '[\"*\"]', 0, '2021-04-22 15:14:29', '2021-04-22 15:14:29', '2022-04-22 16:14:29');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'c8ikdKpI9I0soJd0IbA73xM6yoEDgTGwT3nddwdR', NULL, 'http://localhost', 1, 0, 0, '2021-04-22 09:27:27', '2021-04-22 09:27:27'),
(2, NULL, 'Laravel Password Grant Client', 'afSlyjMTjOGlbxwmDRNPz6RyHBdJsoKcqhAFDNPw', 'users', 'http://localhost', 0, 1, 0, '2021-04-22 09:27:27', '2021-04-22 09:27:27');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-22 09:27:27', '2021-04-22 09:27:27');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('4eff84bd8b43fee2d5c5ccbbc1668fd9fe570a2825418dca6d64077d0ae65520c92c585f940cdaf3', '7ff8099417fa19bb5469602f5eb022015caf5b2188553264c5198d3655c7bcc68506f2b996308418', 0, '2022-04-22 16:14:29'),
('9bcb642b1cf564d9afaf804adcd9eeb8254a064e91c2ac57958278fbfd2adbbcdbaf33b7bbee6104', '45c5788dcd7fa84efe93028ae1f60422783cfca4d9fa007264cf31afaf4d02408bb93d5cd0fafc23', 0, '2022-04-22 10:29:53');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `sexe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `image_prof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `subject`, `phone`, `sexe`, `image_prof`, `created_at`, `updated_at`) VALUES
(7, 'Mr KADJIO', 'kadjiosonna@gmail.com', 'Anglais', '2343243', 'Masculin', 'http://127.0.0.1:8000/uploads/profil/1619141309-brun.jpg', '2021-04-22 22:15:31', '2021-04-23 00:28:29'),
(8, 'Maeva', 'maeva@gmail.com', 'JAVA', '1231423', 'Feminin', 'http://127.0.0.1:8000/uploads/profil/1619140904-ezamaforkor.PNG', '2021-04-22 22:17:30', '2021-04-23 00:27:26');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jan Kerluke Jr.', 'cleta34@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CR2jSyKZJl', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(2, 'Angelina Leuschke', 'marvin.evie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H9dobThA1R', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(3, 'Mr. Abel Douglas V', 'elton64@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'seIVO0ARCr', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(4, 'Darion Hand Jr.', 'vern.beahan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ersmf5h9oz', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(5, 'Madge Abshire', 'adolphus.koss@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e8bBCCfZqt', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(6, 'Ruby Eichmann DDS', 'morissette.roslyn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yDcP5iuMsv', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(7, 'Colby Gottlieb', 'charles23@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UBvUAvh8yT', '2021-04-22 09:26:47', '2021-04-22 09:26:47'),
(8, 'Maria Lueilwitz', 'ofelia64@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FIm2bsNuCq', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(9, 'Deion Anderson', 'irobel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CFwsqBheIA', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(10, 'Lori Labadie', 'lorenza.hilpert@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nOVoPKbrA4', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(11, 'Annetta Murray', 'qgleichner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OhJCnUwAlM', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(12, 'Prof. Bernice Feil DDS', 'christine.connelly@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CwCoFrCejH', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(13, 'Miss Christina Jerde DVM', 'watsica.kasey@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3pf4GGQnqF', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(14, 'Mr. Anderson Jacobi DVM', 'adella.ward@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NZFxrzVlgs', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(15, 'Lysanne Torp PhD', 'zrunte@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aggfKnkCC9', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(16, 'Jordon Sporer V', 'maurine.bailey@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8H5NGJTrXA', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(17, 'Dario Kiehn Sr.', 'penelope.kuhn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9CiG2BGmgy', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(18, 'Miss Iva Ratke', 'deven09@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lSEXNxXlDC', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(19, 'Newell Quigley', 'qgusikowski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oOlEL6uiaA', '2021-04-22 09:26:48', '2021-04-22 09:26:48'),
(20, 'Lavina Marks', 'reichert.kristofer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BhyljGFYLG', '2021-04-22 09:26:48', '2021-04-22 09:26:48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
