-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 06 avr. 2021 à 22:44
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('01579e804943cb5bc6217e7be69cedc938fcdf0e8ae3fac33c9f587c5d419410c1493552c1f8abec', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 20:53:07', '2021-04-04 20:53:07', '2022-04-04 21:53:07'),
('0529f94e16e8b84c93319e909526082fadd5d49a71af89458cf5a0d30d130ae690d7927d30ccc8ee', 14, 2, NULL, '[\"*\"]', 0, '2021-04-06 19:29:27', '2021-04-06 19:29:27', '2022-04-06 20:29:27'),
('060d7c64f29a3d031ffeb63c7ab7feb8a424edc3b4fbf010ce872137dae3730198727939158a11a6', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 06:30:05', '2021-04-05 06:30:05', '2022-04-05 07:30:05'),
('1810198be551e53ba82a3e18c975cf7e4cea32fac9891052be6aad407cbfc1af051c0381ac5c853c', 9, 2, NULL, '[\"*\"]', 0, '2021-04-04 12:40:18', '2021-04-04 12:40:18', '2022-04-04 13:40:18'),
('274b05fb372b5c894d7f20d69a82899625befc0845e6be340b2b065998e3c65078dcb3b3a2e6d25f', 19, 2, NULL, '[\"*\"]', 0, '2021-04-06 13:16:25', '2021-04-06 13:16:25', '2022-04-06 14:16:25'),
('2d7ccca64eb14e89e2b3e7715de52e7850670e84d1bd88b84fd3d5985db05e3a415139ea2ff1bc2c', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 08:00:54', '2021-04-05 08:00:54', '2022-04-05 09:00:54'),
('36a5612e8d20efc55c0280cd8c4e3f2d39d5ecca7141e8b9fd9c3b945176ff918b9abcdb8f1a3eff', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 21:39:05', '2021-04-04 21:39:05', '2022-04-04 22:39:05'),
('3dfadb43da968b78f722d00fb04c39999c896dac7193ac1df9d6026650e1ff1b4a9991a59a6aeeb3', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 06:51:36', '2021-04-04 06:51:36', '2022-04-04 07:51:36'),
('4d067faf62bf0586227d6063abb9187f979433603dd7405008a85d6a21dbabee8a728a74ba8473c1', 19, 2, NULL, '[\"*\"]', 0, '2021-04-04 15:45:14', '2021-04-04 15:45:14', '2022-04-04 16:45:14'),
('4e7c066dfb322df063378afa0eb54b781d114a0d322a20bc6a2e67d111b3041ae60a98e37bbb510d', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 14:28:30', '2021-04-04 14:28:30', '2022-04-04 15:28:30'),
('59a5ed0bc4f58266aa050627865c2cdf398abd5d6fa4ee942934570b01ec72e27e3d6705379000ee', 3, 2, NULL, '[\"*\"]', 0, '2021-04-05 06:45:03', '2021-04-05 06:45:03', '2022-04-05 07:45:03'),
('5a32658f04c2eb698f4ac5162d1e54e30a4d30ef23e892979b07cebafb2263098021169cbefcf023', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 08:01:43', '2021-04-05 08:01:43', '2022-04-05 09:01:43'),
('5b859e1813a3e04f6dcfcc820797d40ecb91b3435d1d0e3d1aeb26cec640bed14e7d07f0b9dbfd01', 14, 2, NULL, '[\"*\"]', 0, '2021-04-06 19:33:23', '2021-04-06 19:33:23', '2022-04-06 20:33:23'),
('5c8f064889e686283d2777e26c714dc508a87fd7a3889e7f4e00c9a2c45726023cf08e5db56a9e5f', 1, 2, NULL, '[\"*\"]', 0, '2021-04-06 08:51:23', '2021-04-06 08:51:23', '2022-04-06 09:51:23'),
('651b27e0745e08e35cd67885dd7f222326fcc0636cf2dc8dd425cf6f7c224a729be20560b95f26eb', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 21:35:10', '2021-04-04 21:35:10', '2022-04-04 22:35:10'),
('6ffd634eeafbaffc023c62cb006ab3bdeaa47107045aa232a3e559d62f3577a42f6151308c41f253', 14, 2, NULL, '[\"*\"]', 0, '2021-04-06 19:31:58', '2021-04-06 19:31:58', '2022-04-06 20:31:58'),
('74c4ec5dadf16fc5eb47399a44387e1a74d956fb17245991bb84694040b162132e406b3d290cc054', 28, 2, NULL, '[\"*\"]', 0, '2021-04-06 13:39:12', '2021-04-06 13:39:12', '2022-04-06 14:39:12'),
('7a9c2f7cf3442ea113e4106c5282c221b694af78866de3231db9325b9f7f9ec9e315c5e914799612', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 08:05:03', '2021-04-05 08:05:03', '2022-04-05 09:05:03'),
('802d1ad1658dc39f8026268bb7dee87e74431ef4076d591bd2b0767ed97aabba3edf5f6968cf3030', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 13:20:12', '2021-04-04 13:20:12', '2022-04-04 14:20:12'),
('88d226181826cf6d11a138028433deef80a8e622016e229c6352ede4e86c99ff48f3eeb496ab55a8', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 21:28:00', '2021-04-04 21:28:00', '2022-04-04 22:28:00'),
('8a2746e9127cd41fff6c58fdacebb7f4e3eaa0bdef64386ea1df5e17a98fb1a61b12d04ac23a52ac', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 10:07:32', '2021-04-05 10:07:32', '2022-04-05 11:07:32'),
('8a719390bf3cca2d80c0c5b2ebdd89ae31a327a433aa168b49673ceddfb546ce443a1a225c1e577d', 19, 2, NULL, '[\"*\"]', 0, '2021-04-04 15:52:11', '2021-04-04 15:52:11', '2022-04-04 16:52:11'),
('8b5bd407385d7aeb8343d554c313cae68851e24acbda325f465cfc47dc336900c7dbb75a44c7bb36', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 21:41:04', '2021-04-04 21:41:04', '2022-04-04 22:41:04'),
('8dd97b66e8dbd370765a1ef517f85354667abbb8bf8392fed516882300aabe1c9f2d799842373793', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 21:43:59', '2021-04-04 21:43:59', '2022-04-04 22:43:59'),
('8e1ba090d6056769d84d83e0e6f3b0910130d55dfae3e7f20ce33052b217247449c7ef029db74c15', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 15:06:25', '2021-04-04 15:06:25', '2022-04-04 16:06:25'),
('99f7742955d7be628d1e6c4083914ad5285ef1f4bd9d0d10b66fd50559dc25c1eabb018401afb5f1', 24, 2, NULL, '[\"*\"]', 0, '2021-04-06 10:39:58', '2021-04-06 10:39:58', '2022-04-06 11:39:58'),
('ab7a790a476f8228443d2dbf4580d87c93ccb9e1b61ca9aae6a59c2783235836637c11a21bfa3a05', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 06:36:21', '2021-04-05 06:36:21', '2022-04-05 07:36:21'),
('b13aa99765491c1d4b2be90317ab2a8fa4d632ae738ff107254761420d3baf0a014cdd6ff8b92873', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 13:24:31', '2021-04-04 13:24:31', '2022-04-04 14:24:31'),
('c06419d0a024edcf7235923e3ee324d1c953a2696268277fab891e4edcf0263a164e6af3eec959f9', 9, 2, NULL, '[\"*\"]', 0, '2021-04-04 12:09:30', '2021-04-04 12:09:30', '2022-04-04 13:09:30'),
('c0dddb24e04570e24ac532ff732ca2759595834563948a2cab2dc5139c469ecb73ed420de6bb2143', 19, 2, NULL, '[\"*\"]', 0, '2021-04-06 13:11:32', '2021-04-06 13:11:32', '2022-04-06 14:11:32'),
('c7ba5fefdf62bc90108a5fc25504c278794b96c38809542dfada66589cb18121b7ba693fa40a40f6', 23, 2, NULL, '[\"*\"]', 0, '2021-04-06 09:11:27', '2021-04-06 09:11:27', '2022-04-06 10:11:27'),
('cb4a0a207177cdf3841af8aef00e5be412b6687c904625704f4e291fc3be95bc883cd6e1aabab53b', 1, 2, NULL, '[\"*\"]', 0, '2021-04-04 21:22:16', '2021-04-04 21:22:16', '2022-04-04 22:22:16'),
('ce9d545c08c50f0f200d62475eda6d9e5fbf0af76c3e94b5a207c2f3720298b1f6cea5800991675a', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 13:33:43', '2021-04-04 13:33:43', '2022-04-04 14:33:43'),
('de3037ea9eeaed27f8c06b6f52d1f85cb400002fbf6b0ca03d84141a78c67633da954214956371d3', 3, 2, NULL, '[\"*\"]', 0, '2021-04-04 12:53:00', '2021-04-04 12:53:00', '2022-04-04 13:53:00'),
('dfcf4a022c908935052e9a2f88f976c25a1fb040166059b9a20f01e94e2da4f9503f7b7bd8c64efc', 1, 2, NULL, '[\"*\"]', 0, '2021-04-05 10:08:20', '2021-04-05 10:08:20', '2022-04-05 11:08:20'),
('ea71d5e4ba99d8f57408a8f3bc858f62d18286b7d0ce58ffd4890be409b228f6e687207771dbf7e1', 20, 2, NULL, '[\"*\"]', 0, '2021-04-04 13:32:52', '2021-04-04 13:32:52', '2022-04-04 14:32:52'),
('ee03b9183cab4ede7bc689b60879b8702e0174c94fb33a251af016792189a30970b67bef8b5d405a', 3, 2, NULL, '[\"*\"]', 0, '2021-04-05 06:40:51', '2021-04-05 06:40:51', '2022-04-05 07:40:51'),
('f4b0693e5d46c70585ebbbe0aa87483283e660dcc98d26fa4f8d192c089181ce59d78684068f395a', 3, 2, NULL, '[\"*\"]', 0, '2021-04-05 06:39:26', '2021-04-05 06:39:26', '2022-04-05 07:39:26'),
('fee60dd15e6c31fd43bd4ad03970ad770f3ba4913c544d79a7071e8dff1ded29520904cf62d92d14', 19, 2, NULL, '[\"*\"]', 0, '2021-04-04 15:16:13', '2021-04-04 15:16:13', '2022-04-04 16:16:13');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'eATe2ecxz3o5kItfDj9nop6HMDC1y8CEpuFAHWAj', NULL, 'http://localhost', 1, 0, 0, '2021-04-03 20:10:31', '2021-04-03 20:10:31'),
(2, NULL, 'Laravel Password Grant Client', 'Nl6uOHMpljITvj0PHgHob6yY78o8a9ljYoFCjPp4', 'users', 'http://localhost', 0, 1, 0, '2021-04-03 20:10:31', '2021-04-03 20:10:31'),
(3, 1, 'client1', 'VTodNIzRgrgCl3353fEYiwdjZKdTSoYWFTtGBl8W', NULL, 'http://localhost/auth/callback', 0, 0, 0, '2021-04-04 06:25:35', '2021-04-04 06:25:35'),
(4, NULL, 'password', 'X4ZXKIkRHMHjRdgc4TCEbvNp3GVe98foOW1LFdbK', 'users', 'http://localhost', 0, 1, 0, '2021-04-04 06:32:56', '2021-04-04 06:32:56'),
(5, 1, 'client7', 'dq3SDDVvMoaOBQ1zaqLfqvOlvBlXilyJQdvF4lUF', NULL, 'http://localhost/auth/callback', 0, 0, 0, '2021-04-04 06:35:50', '2021-04-04 06:35:50');

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
(1, 1, '2021-04-03 20:10:31', '2021-04-03 20:10:31');

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
('027cec282438326d3984438fb7e4b4081c764f55c1a023926d9da964dc628875e1eb790d45cb1f2f', '5a32658f04c2eb698f4ac5162d1e54e30a4d30ef23e892979b07cebafb2263098021169cbefcf023', 0, '2022-04-05 09:01:43'),
('0d79b8802f695baa9d3b424035757c7307631f04237f705f98ccea384af73269dce43d3c2471723c', 'cb4a0a207177cdf3841af8aef00e5be412b6687c904625704f4e291fc3be95bc883cd6e1aabab53b', 0, '2022-04-04 22:22:16'),
('11062788be2cf5bf99db624336f24b8d9224d2474c901d6da8ec73960b384a73039873e76203c437', 'ce9d545c08c50f0f200d62475eda6d9e5fbf0af76c3e94b5a207c2f3720298b1f6cea5800991675a', 0, '2022-04-04 14:33:43'),
('1891bf54e06e8d358b85fb9aab1258b232fa5d7be2aac678a2372701dbf432bad3eede985bc45033', 'dfcf4a022c908935052e9a2f88f976c25a1fb040166059b9a20f01e94e2da4f9503f7b7bd8c64efc', 0, '2022-04-05 11:08:20'),
('2097ac5c0581ecde24611c8b2a0a58af944e24563c3f18f6deb541f88952f7d1ac7f8bec447341cc', '651b27e0745e08e35cd67885dd7f222326fcc0636cf2dc8dd425cf6f7c224a729be20560b95f26eb', 0, '2022-04-04 22:35:10'),
('2c1463248e20c33bd0d3fb8da6f59288bf2c37cf93a1a8713c55d2be8475d407f78bb6eeafc9822b', '0529f94e16e8b84c93319e909526082fadd5d49a71af89458cf5a0d30d130ae690d7927d30ccc8ee', 0, '2022-04-06 20:29:27'),
('2cb977c3bfc4845e0ac1a65088262c27fad82b1516e27e92ee5faa7aaee58fbdab2ac71ad7cf9ba0', '8e1ba090d6056769d84d83e0e6f3b0910130d55dfae3e7f20ce33052b217247449c7ef029db74c15', 0, '2022-04-04 16:06:25'),
('2dc547db6bcc35f7e983c0849b2e7b2b6e1a095e34998eb855a9cf270cd426c576441d2e70a7c339', '5b859e1813a3e04f6dcfcc820797d40ecb91b3435d1d0e3d1aeb26cec640bed14e7d07f0b9dbfd01', 0, '2022-04-06 20:33:23'),
('3bb54be88d817dfa69bec45cf474c7dfdbf518956eddee01254bcfd27a78b4cdab605f5f1eee61af', '8a719390bf3cca2d80c0c5b2ebdd89ae31a327a433aa168b49673ceddfb546ce443a1a225c1e577d', 0, '2022-04-04 16:52:11'),
('3eec53082cbb3cecc9d3948ddd45fbb3edeeee2fa0d3955fb1bdc32f4e9dd8dd39fd22fd06af6a2a', '5c8f064889e686283d2777e26c714dc508a87fd7a3889e7f4e00c9a2c45726023cf08e5db56a9e5f', 0, '2022-04-06 09:51:23'),
('47bc0142fb2e2b04bc5d02dd76a19c08003f1bdbb4a5825962cb639db0185641a7ba900d4dcb1f1a', '8b5bd407385d7aeb8343d554c313cae68851e24acbda325f465cfc47dc336900c7dbb75a44c7bb36', 0, '2022-04-04 22:41:04'),
('4e7847e07766d618376420258b7cbe79817c40a60700da3990f27cf223fb0c9bf8aad64e0156af12', 'ea71d5e4ba99d8f57408a8f3bc858f62d18286b7d0ce58ffd4890be409b228f6e687207771dbf7e1', 0, '2022-04-04 14:32:52'),
('60cc2a34420772c1a0078ba6890ced87828a352f4391725f898e6e4c770c1e095a12367f5da634de', '99f7742955d7be628d1e6c4083914ad5285ef1f4bd9d0d10b66fd50559dc25c1eabb018401afb5f1', 0, '2022-04-06 11:39:59'),
('62ce239277877e15d4d64e9d0cee7b509677cce044de5d828f29eb78c93d7defd9aa1f8e0b6c9a97', 'c0dddb24e04570e24ac532ff732ca2759595834563948a2cab2dc5139c469ecb73ed420de6bb2143', 0, '2022-04-06 14:11:32'),
('72397f9ce7034f60b7bbd811425f3c7df886f6d5f713256b31b059a9477f0544b561196a191707dd', 'de3037ea9eeaed27f8c06b6f52d1f85cb400002fbf6b0ca03d84141a78c67633da954214956371d3', 0, '2022-04-04 13:53:00'),
('762b6e0bb37bd9e90efaba193dde5a21f95140bc457966cfb653840a0e461a14151163848897d9fa', '8a2746e9127cd41fff6c58fdacebb7f4e3eaa0bdef64386ea1df5e17a98fb1a61b12d04ac23a52ac', 0, '2022-04-05 11:07:32'),
('7aa2569b91d3021ea11da08e9637169863539ad10a3874774dd3bb5c114eae563ef87960b19aaea7', 'ab7a790a476f8228443d2dbf4580d87c93ccb9e1b61ca9aae6a59c2783235836637c11a21bfa3a05', 0, '2022-04-05 07:36:21'),
('7e6c2ba1bd67eb15aebdca6fd783ccd61e46aed562e807b1c90249c438e4275752394dac5faa698c', 'b13aa99765491c1d4b2be90317ab2a8fa4d632ae738ff107254761420d3baf0a014cdd6ff8b92873', 0, '2022-04-04 14:24:31'),
('84f2bd0d8764504117467f97947ed9d3d719e75b065b49133ae7df89f60f83e282b8b66746735a98', '274b05fb372b5c894d7f20d69a82899625befc0845e6be340b2b065998e3c65078dcb3b3a2e6d25f', 0, '2022-04-06 14:16:25'),
('85be3161abe830b2cb70c7eb962fd27d57c533fc6a747d797c1da930544eb39125d43c67e20514b7', '3dfadb43da968b78f722d00fb04c39999c896dac7193ac1df9d6026650e1ff1b4a9991a59a6aeeb3', 0, '2022-04-04 07:51:36'),
('8fd12629d5d5e487d35bb1fe3b878ad8a701fc9490e222e098c0f762b62ae16a5c742a079ea2f062', '1810198be551e53ba82a3e18c975cf7e4cea32fac9891052be6aad407cbfc1af051c0381ac5c853c', 0, '2022-04-04 13:40:18'),
('90c53082fda8890325a01e8333b45df5b3479b42658fc04090e18eb2581fd8b5499305fdf3b0967a', 'c06419d0a024edcf7235923e3ee324d1c953a2696268277fab891e4edcf0263a164e6af3eec959f9', 0, '2022-04-04 13:09:30'),
('9abf1b6ad5f559a02e7dced921b4239ef747f2ed15f92d89bd2f25c64fcda0ba09e6d389510f08dc', '2d7ccca64eb14e89e2b3e7715de52e7850670e84d1bd88b84fd3d5985db05e3a415139ea2ff1bc2c', 0, '2022-04-05 09:00:54'),
('a066c5ef626e7f1f9b7b682ff43cf38405718050d318ee37a0a490dee7dc65dc908b0e6709da91a2', 'c7ba5fefdf62bc90108a5fc25504c278794b96c38809542dfada66589cb18121b7ba693fa40a40f6', 0, '2022-04-06 10:11:27'),
('a179cda8cecca1b9b79dbfe7a995c0358fbe139a8e14bb5a21e4f9028c45b1649d82755a9b0aa836', '36a5612e8d20efc55c0280cd8c4e3f2d39d5ecca7141e8b9fd9c3b945176ff918b9abcdb8f1a3eff', 0, '2022-04-04 22:39:05'),
('af4f522c8fb67d11392f5efe2a5cdb5b9cacd7ea30341d645b20a3ca5a8d93e911c72c32f74cb1ed', '74c4ec5dadf16fc5eb47399a44387e1a74d956fb17245991bb84694040b162132e406b3d290cc054', 0, '2022-04-06 14:39:12'),
('b4ec233ff441556a4ccbda02f1f3daad0f205912bac87e2754f8f1ac5369dcbcf4c8809eae5d29c7', '060d7c64f29a3d031ffeb63c7ab7feb8a424edc3b4fbf010ce872137dae3730198727939158a11a6', 0, '2022-04-05 07:30:05'),
('b5c0960b1e25a1270e2ba270c152430a939bbeb8d4af6e5680b0a68c7eccfac4f250dab62adb748d', '88d226181826cf6d11a138028433deef80a8e622016e229c6352ede4e86c99ff48f3eeb496ab55a8', 0, '2022-04-04 22:28:01'),
('b81330f72dc3161b4410c7c0c2e51197aefbce814605cb04678fd001f8b67b272bdc31c2145b691f', '8dd97b66e8dbd370765a1ef517f85354667abbb8bf8392fed516882300aabe1c9f2d799842373793', 0, '2022-04-04 22:43:59'),
('c4314ec36fe12718057ee214b87badf6ba74e96563cc08417e64e5b3005139be3789a9213fc0f4d7', '6ffd634eeafbaffc023c62cb006ab3bdeaa47107045aa232a3e559d62f3577a42f6151308c41f253', 0, '2022-04-06 20:31:58'),
('cf1c99a7802e40ef32afad2d954a9554d928f23ecd5de92f7049a3ab390fdd3a1607167439304f45', 'fee60dd15e6c31fd43bd4ad03970ad770f3ba4913c544d79a7071e8dff1ded29520904cf62d92d14', 0, '2022-04-04 16:16:13'),
('cf933cce5263bd17c640ec7cdf0ba2c0a16a06e45f623dc15127dfdef46a170116b88eacec14a3bc', '4e7c066dfb322df063378afa0eb54b781d114a0d322a20bc6a2e67d111b3041ae60a98e37bbb510d', 0, '2022-04-04 15:28:30'),
('dbfe468e23fc274ee72b09b5a8b6ab7589e8c5d412c66927c059ee98015c32e79677ac9de46ba2fa', 'ee03b9183cab4ede7bc689b60879b8702e0174c94fb33a251af016792189a30970b67bef8b5d405a', 0, '2022-04-05 07:40:51'),
('e40ba5678bd79c20fde7f496545ef88d608504fee492a83f862cbbb650dd227c76bbfe5d5a66e2fc', '7a9c2f7cf3442ea113e4106c5282c221b694af78866de3231db9325b9f7f9ec9e315c5e914799612', 0, '2022-04-05 09:05:03'),
('e709afc1d6cb4c0a0e7d5769e2db007122f77f07bb31d6b27490e3027ab65cf8f7e0579fe5ac0609', '01579e804943cb5bc6217e7be69cedc938fcdf0e8ae3fac33c9f587c5d419410c1493552c1f8abec', 0, '2022-04-04 21:53:07'),
('e92fee15a9d622e8bd24ffb3106530f5a5b09c74d7e2c8f77b90b1d6eaba8c44fca847f7b2d576c7', '4d067faf62bf0586227d6063abb9187f979433603dd7405008a85d6a21dbabee8a728a74ba8473c1', 0, '2022-04-04 16:45:14'),
('f08689400ca78ffee62976749b4139750e702804016f2997d2509a07a5749b6464e5903c0266e870', '59a5ed0bc4f58266aa050627865c2cdf398abd5d6fa4ee942934570b01ec72e27e3d6705379000ee', 0, '2022-04-05 07:45:03'),
('f667d7756fc3f49a5a321aecf96cb5fdb389e675b55deb3432902ecd46c83caf76028339215a5bbf', '802d1ad1658dc39f8026268bb7dee87e74431ef4076d591bd2b0767ed97aabba3edf5f6968cf3030', 0, '2022-04-04 14:20:13'),
('fed010d96f80285b1ac853e3011fcb2384c51104e80503a3a4aab20d6dfbdac44a7a01c019434278', 'f4b0693e5d46c70585ebbbe0aa87483283e660dcc98d26fa4f8d192c089181ce59d78684068f395a', 0, '2022-04-05 07:39:26');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Johnnie Kilback', 'gudrun.corkery@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'goOrVuvSKv', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(2, 'Mrs. Sunny Metz', 'jaskolski.annabelle@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ixSUCCfaq', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(3, 'Quincy Sauer', 'delia59@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YOfu6YqFQM', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(4, 'Rupert Luettgen', 'runolfsdottir.mathew@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lj7A2otxgk', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(5, 'Ceasar Christiansen III', 'nolan.marcelle@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vrKoiH9XQY', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(6, 'Mr. Bo Trantow II', 'feil.lula@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qI9aQKV9SN', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(7, 'Stevie Schaden', 'ziemann.lia@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MdsPq2ufim', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(8, 'Mrs. Arvilla Marvin', 'koch.bridget@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7PNGBLx4Tc', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(9, 'Mikayla Wolf', 'sibyl98@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'czXudxIA9o', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(10, 'Prof. Adrain Torphy', 'uwelch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4SYkCwle5D', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(11, 'Dr. Tomas Denesik', 'iyundt@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8vvpy3kKAp', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(12, 'Eva Rosenbaum', 'ocie.ward@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c1SZ5TiIlm', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(13, 'Jordy Huels PhD', 'benny94@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eGLb2jdB6n', '2021-04-03 19:59:52', '2021-04-03 19:59:52'),
(14, 'Elva Mraz', 'gmcclure@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fI0DbnXbOj', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(15, 'Dr. Ludie Harris Jr.', 'yasmine.pagac@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PXR9VOED56', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(16, 'Isac Kassulke', 'rozella52@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u2NcEnSRGh', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(17, 'Percival Sporer', 'prutherford@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ckSppUBuyr', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(18, 'Bailee Leannon Jr.', 'lukas32@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xm9yTzpruG', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(19, 'Dr. Maxime Wolff', 'leone.vandervort@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gmPeFi2rD6', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(20, 'Hans Armstrong MD', 'rmcclure@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WnUSYhsrRT', '2021-04-03 19:59:53', '2021-04-03 19:59:53'),
(22, 'kadjio', 'af@example', '$2y$10$mEQk2/V4VoeORFb5ifTgAeQ95c5De98cWnZFWFuzaYH0GEMIlyJmC', NULL, '2021-04-06 09:03:40', '2021-04-06 09:03:40'),
(24, 'joel', 'joel@example', '$2y$10$mfH/Km7nzO/oHgtFSlkI0.dPKBf.gqVvo6HBcjGLfTwBOVf0CgeOi', NULL, '2021-04-06 10:39:13', '2021-04-06 10:39:13'),
(27, 'Non', 'medipobe@mailinator.com', '$2y$10$LFHoCDpls6tM/WMImTnxHukoJKL2N47ROtOTXSjy3g472KUKcEg0e', NULL, '2021-04-06 13:36:09', '2021-04-06 13:36:09'),
(28, 'quia', 'dakoku@mailinator.com', '$2y$10$3a1JuNfw4s1gxeLFeskPIOpSkY2DBtpqtRQiijlFBoTCiVMUWnnpS', NULL, '2021-04-06 13:38:40', '2021-04-06 13:38:40');

--
-- Index pour les tables déchargées
--

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
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
