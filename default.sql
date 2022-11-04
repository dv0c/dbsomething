-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 01:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `default`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::content-manager.explorer.create', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"]}', '[]', '2022-10-22 12:11:58.274000', '2022-10-22 12:11:58.274000', NULL, NULL),
(2, 'plugin::content-manager.explorer.create', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"]}', '[]', '2022-10-22 12:11:58.278000', '2022-10-22 12:11:58.278000', NULL, NULL),
(3, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\":[\"name\"]}', '[]', '2022-10-22 12:11:58.284000', '2022-10-22 12:11:58.284000', NULL, NULL),
(4, 'plugin::content-manager.explorer.create', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[]', '2022-10-22 12:11:58.287000', '2022-10-22 12:11:58.287000', NULL, NULL),
(5, 'plugin::content-manager.explorer.create', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"]}', '[]', '2022-10-22 12:11:58.290000', '2022-10-22 12:11:58.290000', NULL, NULL),
(6, 'plugin::content-manager.explorer.create', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[]', '2022-10-22 12:11:58.294000', '2022-10-22 12:11:58.294000', NULL, NULL),
(7, 'plugin::content-manager.explorer.create', 'api::type.type', '{\"fields\":[\"name\",\"listings\"]}', '[]', '2022-10-22 12:11:58.298000', '2022-10-22 12:11:58.298000', NULL, NULL),
(8, 'plugin::content-manager.explorer.read', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"]}', '[]', '2022-10-22 12:11:58.301000', '2022-10-22 12:11:58.301000', NULL, NULL),
(9, 'plugin::content-manager.explorer.read', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"]}', '[]', '2022-10-22 12:11:58.305000', '2022-10-22 12:11:58.305000', NULL, NULL),
(10, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\":[\"name\"]}', '[]', '2022-10-22 12:11:58.309000', '2022-10-22 12:11:58.309000', NULL, NULL),
(11, 'plugin::content-manager.explorer.read', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[]', '2022-10-22 12:11:58.312000', '2022-10-22 12:11:58.312000', NULL, NULL),
(12, 'plugin::content-manager.explorer.read', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"]}', '[]', '2022-10-22 12:11:58.315000', '2022-10-22 12:11:58.315000', NULL, NULL),
(13, 'plugin::content-manager.explorer.read', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[]', '2022-10-22 12:11:58.319000', '2022-10-22 12:11:58.319000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'api::type.type', '{\"fields\":[\"name\",\"listings\"]}', '[]', '2022-10-22 12:11:58.322000', '2022-10-22 12:11:58.322000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"]}', '[]', '2022-10-22 12:11:58.326000', '2022-10-22 12:11:58.326000', NULL, NULL),
(16, 'plugin::content-manager.explorer.update', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"]}', '[]', '2022-10-22 12:11:58.329000', '2022-10-22 12:11:58.329000', NULL, NULL),
(17, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\":[\"name\"]}', '[]', '2022-10-22 12:11:58.332000', '2022-10-22 12:11:58.332000', NULL, NULL),
(18, 'plugin::content-manager.explorer.update', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[]', '2022-10-22 12:11:58.335000', '2022-10-22 12:11:58.335000', NULL, NULL),
(19, 'plugin::content-manager.explorer.update', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"]}', '[]', '2022-10-22 12:11:58.339000', '2022-10-22 12:11:58.339000', NULL, NULL),
(20, 'plugin::content-manager.explorer.update', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[]', '2022-10-22 12:11:58.342000', '2022-10-22 12:11:58.342000', NULL, NULL),
(21, 'plugin::content-manager.explorer.update', 'api::type.type', '{\"fields\":[\"name\",\"listings\"]}', '[]', '2022-10-22 12:11:58.345000', '2022-10-22 12:11:58.345000', NULL, NULL),
(25, 'plugin::content-manager.explorer.delete', 'api::comment.comment', '{}', '[]', '2022-10-22 12:11:58.359000', '2022-10-22 12:11:58.359000', NULL, NULL),
(27, 'plugin::content-manager.explorer.delete', 'api::suggested-category.suggested-category', '{}', '[]', '2022-10-22 12:11:58.366000', '2022-10-22 12:11:58.366000', NULL, NULL),
(32, 'plugin::content-manager.explorer.publish', 'api::comment.comment', '{}', '[]', '2022-10-22 12:11:58.382000', '2022-10-22 12:11:58.382000', NULL, NULL),
(34, 'plugin::content-manager.explorer.publish', 'api::suggested-category.suggested-category', '{}', '[]', '2022-10-22 12:11:58.388000', '2022-10-22 12:11:58.388000', NULL, NULL),
(36, 'plugin::upload.read', NULL, '{}', '[]', '2022-10-22 12:11:58.395000', '2022-10-22 12:11:58.395000', NULL, NULL),
(37, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-10-22 12:11:58.398000', '2022-10-22 12:11:58.398000', NULL, NULL),
(38, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-10-22 12:11:58.402000', '2022-10-22 12:11:58.402000', NULL, NULL),
(39, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-10-22 12:11:58.405000', '2022-10-22 12:11:58.405000', NULL, NULL),
(40, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-10-22 12:11:58.408000', '2022-10-22 12:11:58.408000', NULL, NULL),
(41, 'plugin::content-manager.explorer.create', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.414000', '2022-10-22 12:11:58.414000', NULL, NULL),
(42, 'plugin::content-manager.explorer.create', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.419000', '2022-10-22 12:11:58.419000', NULL, NULL),
(43, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\":[\"name\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.422000', '2022-10-22 12:11:58.422000', NULL, NULL),
(44, 'plugin::content-manager.explorer.create', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.426000', '2022-10-22 12:11:58.426000', NULL, NULL),
(45, 'plugin::content-manager.explorer.create', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.429000', '2022-10-22 12:11:58.429000', NULL, NULL),
(46, 'plugin::content-manager.explorer.create', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.433000', '2022-10-22 12:11:58.433000', NULL, NULL),
(47, 'plugin::content-manager.explorer.create', 'api::type.type', '{\"fields\":[\"name\",\"listings\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.436000', '2022-10-22 12:11:58.436000', NULL, NULL),
(48, 'plugin::content-manager.explorer.read', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.439000', '2022-10-22 12:11:58.439000', NULL, NULL),
(49, 'plugin::content-manager.explorer.read', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.444000', '2022-10-22 12:11:58.444000', NULL, NULL),
(50, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\":[\"name\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.447000', '2022-10-22 12:11:58.447000', NULL, NULL),
(51, 'plugin::content-manager.explorer.read', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.451000', '2022-10-22 12:11:58.451000', NULL, NULL),
(52, 'plugin::content-manager.explorer.read', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.454000', '2022-10-22 12:11:58.454000', NULL, NULL),
(53, 'plugin::content-manager.explorer.read', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.458000', '2022-10-22 12:11:58.458000', NULL, NULL),
(54, 'plugin::content-manager.explorer.read', 'api::type.type', '{\"fields\":[\"name\",\"listings\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.461000', '2022-10-22 12:11:58.461000', NULL, NULL),
(55, 'plugin::content-manager.explorer.update', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.465000', '2022-10-22 12:11:58.465000', NULL, NULL),
(56, 'plugin::content-manager.explorer.update', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.469000', '2022-10-22 12:11:58.469000', NULL, NULL),
(57, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\":[\"name\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.473000', '2022-10-22 12:11:58.473000', NULL, NULL),
(58, 'plugin::content-manager.explorer.update', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.476000', '2022-10-22 12:11:58.476000', NULL, NULL),
(59, 'plugin::content-manager.explorer.update', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.480000', '2022-10-22 12:11:58.480000', NULL, NULL),
(60, 'plugin::content-manager.explorer.update', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.483000', '2022-10-22 12:11:58.483000', NULL, NULL),
(61, 'plugin::content-manager.explorer.update', 'api::type.type', '{\"fields\":[\"name\",\"listings\"]}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.512000', '2022-10-22 12:11:58.512000', NULL, NULL),
(65, 'plugin::content-manager.explorer.delete', 'api::comment.comment', '{}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.535000', '2022-10-22 12:11:58.535000', NULL, NULL),
(67, 'plugin::content-manager.explorer.delete', 'api::suggested-category.suggested-category', '{}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.542000', '2022-10-22 12:11:58.542000', NULL, NULL),
(69, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.549000', '2022-10-22 12:11:58.549000', NULL, NULL),
(70, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-10-22 12:11:58.553000', '2022-10-22 12:11:58.553000', NULL, NULL),
(71, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-10-22 12:11:58.556000', '2022-10-22 12:11:58.556000', NULL, NULL),
(72, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-10-22 12:11:58.561000', '2022-10-22 12:11:58.561000', NULL, NULL),
(73, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-10-22 12:11:58.565000', '2022-10-22 12:11:58.565000', NULL, NULL),
(74, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"avatar\",\"listings\",\"comments\",\"first_name\",\"last_name\",\"telephone\",\"phone\"]}', '[]', '2022-10-22 12:11:58.601000', '2022-10-22 12:11:58.601000', NULL, NULL),
(75, 'plugin::content-manager.explorer.create', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.605000', '2022-10-22 12:11:58.605000', NULL, NULL),
(76, 'plugin::content-manager.explorer.create', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.609000', '2022-10-22 12:11:58.609000', NULL, NULL),
(77, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\":[\"name\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.612000', '2022-10-22 12:11:58.612000', NULL, NULL),
(78, 'plugin::content-manager.explorer.create', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[]', '2022-10-22 12:11:58.615000', '2022-10-22 12:11:58.615000', NULL, NULL),
(79, 'plugin::content-manager.explorer.create', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.619000', '2022-10-22 12:11:58.619000', NULL, NULL),
(80, 'plugin::content-manager.explorer.create', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[]', '2022-10-22 12:11:58.622000', '2022-10-22 12:11:58.622000', NULL, NULL),
(82, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"avatar\",\"listings\",\"comments\",\"first_name\",\"last_name\",\"telephone\",\"phone\"]}', '[]', '2022-10-22 12:11:58.629000', '2022-10-22 12:11:58.629000', NULL, NULL),
(83, 'plugin::content-manager.explorer.read', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.632000', '2022-10-22 12:11:58.632000', NULL, NULL),
(84, 'plugin::content-manager.explorer.read', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.636000', '2022-10-22 12:11:58.636000', NULL, NULL),
(85, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\":[\"name\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.640000', '2022-10-22 12:11:58.640000', NULL, NULL),
(86, 'plugin::content-manager.explorer.read', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[]', '2022-10-22 12:11:58.644000', '2022-10-22 12:11:58.644000', NULL, NULL),
(87, 'plugin::content-manager.explorer.read', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.647000', '2022-10-22 12:11:58.647000', NULL, NULL),
(88, 'plugin::content-manager.explorer.read', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[]', '2022-10-22 12:11:58.650000', '2022-10-22 12:11:58.650000', NULL, NULL),
(90, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"avatar\",\"listings\",\"comments\",\"first_name\",\"last_name\",\"telephone\",\"phone\"]}', '[]', '2022-10-22 12:11:58.657000', '2022-10-22 12:11:58.657000', NULL, NULL),
(91, 'plugin::content-manager.explorer.update', 'api::amenity.amenity', '{\"fields\":[\"name\",\"icon\",\"Slug\",\"svg\",\"listings\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.660000', '2022-10-22 12:11:58.660000', NULL, NULL),
(92, 'plugin::content-manager.explorer.update', 'api::article.article', '{\"fields\":[\"title\",\"body\",\"image\",\"likes\",\"views\",\"categories\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.664000', '2022-10-22 12:11:58.664000', NULL, NULL),
(93, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\":[\"name\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.668000', '2022-10-22 12:11:58.668000', NULL, NULL),
(94, 'plugin::content-manager.explorer.update', 'api::comment.comment', '{\"fields\":[\"comment\",\"rating\",\"listing\",\"users_permissions_user\"]}', '[]', '2022-10-22 12:11:58.672000', '2022-10-22 12:11:58.672000', NULL, NULL),
(95, 'plugin::content-manager.explorer.update', 'api::listing.listing', '{\"fields\":[\"title\",\"description\",\"gallery\",\"Slug\",\"amenities\",\"telephone\",\"phone\",\"delivery\",\"location\",\"claimed\",\"type\",\"user\",\"Hours.day_interval\",\"Hours.opening_hour\",\"Hours.closing_hour\",\"comments\",\"_geo.lng\",\"_geo.lat\"],\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.676000', '2022-10-22 12:11:58.676000', NULL, NULL),
(96, 'plugin::content-manager.explorer.update', 'api::suggested-category.suggested-category', '{\"fields\":[\"name\",\"image\",\"svg\"]}', '[]', '2022-10-22 12:11:58.679000', '2022-10-22 12:11:58.679000', NULL, NULL),
(98, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-10-22 12:11:58.686000', '2022-10-22 12:11:58.686000', NULL, NULL),
(99, 'plugin::content-manager.explorer.delete', 'api::amenity.amenity', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.689000', '2022-10-22 12:11:58.689000', NULL, NULL),
(100, 'plugin::content-manager.explorer.delete', 'api::article.article', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.693000', '2022-10-22 12:11:58.693000', NULL, NULL),
(101, 'plugin::content-manager.explorer.delete', 'api::category.category', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.696000', '2022-10-22 12:11:58.696000', NULL, NULL),
(102, 'plugin::content-manager.explorer.delete', 'api::comment.comment', '{}', '[]', '2022-10-22 12:11:58.699000', '2022-10-22 12:11:58.699000', NULL, NULL),
(103, 'plugin::content-manager.explorer.delete', 'api::listing.listing', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.702000', '2022-10-22 12:11:58.702000', NULL, NULL),
(104, 'plugin::content-manager.explorer.delete', 'api::suggested-category.suggested-category', '{}', '[]', '2022-10-22 12:11:58.706000', '2022-10-22 12:11:58.706000', NULL, NULL),
(105, 'plugin::content-manager.explorer.delete', 'api::type.type', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.709000', '2022-10-22 12:11:58.709000', NULL, NULL),
(106, 'plugin::content-manager.explorer.publish', 'api::amenity.amenity', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.712000', '2022-10-22 12:11:58.712000', NULL, NULL),
(107, 'plugin::content-manager.explorer.publish', 'api::article.article', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.715000', '2022-10-22 12:11:58.715000', NULL, NULL),
(108, 'plugin::content-manager.explorer.publish', 'api::category.category', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.718000', '2022-10-22 12:11:58.718000', NULL, NULL),
(109, 'plugin::content-manager.explorer.publish', 'api::comment.comment', '{}', '[]', '2022-10-22 12:11:58.721000', '2022-10-22 12:11:58.721000', NULL, NULL),
(110, 'plugin::content-manager.explorer.publish', 'api::listing.listing', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.724000', '2022-10-22 12:11:58.724000', NULL, NULL),
(111, 'plugin::content-manager.explorer.publish', 'api::suggested-category.suggested-category', '{}', '[]', '2022-10-22 12:11:58.728000', '2022-10-22 12:11:58.728000', NULL, NULL),
(112, 'plugin::content-manager.explorer.publish', 'api::type.type', '{\"locales\":[\"en\"]}', '[]', '2022-10-22 12:11:58.731000', '2022-10-22 12:11:58.731000', NULL, NULL),
(113, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-10-22 12:11:58.734000', '2022-10-22 12:11:58.734000', NULL, NULL),
(114, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-10-22 12:11:58.738000', '2022-10-22 12:11:58.738000', NULL, NULL),
(115, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-10-22 12:11:58.741000', '2022-10-22 12:11:58.741000', NULL, NULL),
(116, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-10-22 12:11:58.744000', '2022-10-22 12:11:58.744000', NULL, NULL),
(117, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-10-22 12:11:58.747000', '2022-10-22 12:11:58.747000', NULL, NULL),
(118, 'plugin::upload.read', NULL, '{}', '[]', '2022-10-22 12:11:58.750000', '2022-10-22 12:11:58.750000', NULL, NULL),
(119, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-10-22 12:11:58.753000', '2022-10-22 12:11:58.753000', NULL, NULL),
(120, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-10-22 12:11:58.756000', '2022-10-22 12:11:58.756000', NULL, NULL),
(121, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-10-22 12:11:58.759000', '2022-10-22 12:11:58.759000', NULL, NULL),
(122, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-10-22 12:11:58.762000', '2022-10-22 12:11:58.762000', NULL, NULL),
(123, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-10-22 12:11:58.765000', '2022-10-22 12:11:58.765000', NULL, NULL),
(124, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-10-22 12:11:58.768000', '2022-10-22 12:11:58.768000', NULL, NULL),
(125, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-10-22 12:11:58.771000', '2022-10-22 12:11:58.771000', NULL, NULL),
(126, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-10-22 12:11:58.775000', '2022-10-22 12:11:58.775000', NULL, NULL),
(127, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-10-22 12:11:58.778000', '2022-10-22 12:11:58.778000', NULL, NULL),
(128, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-10-22 12:11:58.781000', '2022-10-22 12:11:58.781000', NULL, NULL),
(129, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-10-22 12:11:58.784000', '2022-10-22 12:11:58.784000', NULL, NULL),
(130, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-10-22 12:11:58.787000', '2022-10-22 12:11:58.787000', NULL, NULL),
(131, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-10-22 12:11:58.791000', '2022-10-22 12:11:58.791000', NULL, NULL),
(132, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-10-22 12:11:58.794000', '2022-10-22 12:11:58.794000', NULL, NULL),
(133, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-10-22 12:11:58.797000', '2022-10-22 12:11:58.797000', NULL, NULL),
(134, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-10-22 12:11:58.801000', '2022-10-22 12:11:58.801000', NULL, NULL),
(135, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-10-22 12:11:58.804000', '2022-10-22 12:11:58.804000', NULL, NULL),
(136, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-10-22 12:11:58.808000', '2022-10-22 12:11:58.808000', NULL, NULL),
(137, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-10-22 12:11:58.811000', '2022-10-22 12:11:58.811000', NULL, NULL),
(138, 'plugin::config-sync.settings.read', NULL, '{}', '[]', '2022-10-22 12:11:58.814000', '2022-10-22 12:11:58.814000', NULL, NULL),
(139, 'plugin::config-sync.menu-link', NULL, '{}', '[]', '2022-10-22 12:11:58.818000', '2022-10-22 12:11:58.818000', NULL, NULL),
(140, 'admin::marketplace.read', NULL, '{}', '[]', '2022-10-22 12:11:58.821000', '2022-10-22 12:11:58.821000', NULL, NULL),
(141, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-10-22 12:11:58.825000', '2022-10-22 12:11:58.825000', NULL, NULL),
(142, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-10-22 12:11:58.828000', '2022-10-22 12:11:58.828000', NULL, NULL),
(143, 'admin::webhooks.create', NULL, '{}', '[]', '2022-10-22 12:11:58.834000', '2022-10-22 12:11:58.834000', NULL, NULL),
(144, 'admin::webhooks.read', NULL, '{}', '[]', '2022-10-22 12:11:58.838000', '2022-10-22 12:11:58.838000', NULL, NULL),
(145, 'admin::webhooks.update', NULL, '{}', '[]', '2022-10-22 12:11:58.841000', '2022-10-22 12:11:58.841000', NULL, NULL),
(146, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-10-22 12:11:58.845000', '2022-10-22 12:11:58.845000', NULL, NULL),
(147, 'admin::users.create', NULL, '{}', '[]', '2022-10-22 12:11:58.849000', '2022-10-22 12:11:58.849000', NULL, NULL),
(148, 'admin::users.read', NULL, '{}', '[]', '2022-10-22 12:11:58.853000', '2022-10-22 12:11:58.853000', NULL, NULL),
(149, 'admin::users.update', NULL, '{}', '[]', '2022-10-22 12:11:58.856000', '2022-10-22 12:11:58.856000', NULL, NULL),
(150, 'admin::users.delete', NULL, '{}', '[]', '2022-10-22 12:11:58.859000', '2022-10-22 12:11:58.859000', NULL, NULL),
(151, 'admin::roles.create', NULL, '{}', '[]', '2022-10-22 12:11:58.862000', '2022-10-22 12:11:58.862000', NULL, NULL),
(152, 'admin::roles.read', NULL, '{}', '[]', '2022-10-22 12:11:58.866000', '2022-10-22 12:11:58.866000', NULL, NULL),
(153, 'admin::roles.update', NULL, '{}', '[]', '2022-10-22 12:11:58.869000', '2022-10-22 12:11:58.869000', NULL, NULL),
(154, 'admin::roles.delete', NULL, '{}', '[]', '2022-10-22 12:11:58.872000', '2022-10-22 12:11:58.872000', NULL, NULL),
(155, 'admin::api-tokens.access', NULL, '{}', '[]', '2022-10-22 12:11:58.875000', '2022-10-22 12:11:58.875000', NULL, NULL),
(156, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-10-22 12:11:58.879000', '2022-10-22 12:11:58.879000', NULL, NULL),
(157, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-10-22 12:11:58.882000', '2022-10-22 12:11:58.882000', NULL, NULL),
(158, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-10-22 12:11:58.885000', '2022-10-22 12:11:58.885000', NULL, NULL),
(159, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2022-10-22 12:11:58.888000', '2022-10-22 12:11:58.888000', NULL, NULL),
(160, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-10-22 12:11:58.891000', '2022-10-22 12:11:58.891000', NULL, NULL),
(161, 'admin::project-settings.update', NULL, '{}', '[]', '2022-10-22 12:11:58.894000', '2022-10-22 12:11:58.894000', NULL, NULL),
(162, 'admin::project-settings.read', NULL, '{}', '[]', '2022-10-22 12:11:58.897000', '2022-10-22 12:11:58.897000', NULL, NULL),
(163, 'plugin::content-manager.explorer.create', 'api::type.type', '{\"fields\":[\"name\",\"listings\",\"svg\",\"image\"],\"locales\":[\"en\"]}', '[]', '2022-10-24 18:19:10.533000', '2022-10-24 18:19:10.533000', NULL, NULL),
(164, 'plugin::content-manager.explorer.read', 'api::type.type', '{\"fields\":[\"name\",\"listings\",\"svg\",\"image\"],\"locales\":[\"en\"]}', '[]', '2022-10-24 18:19:10.538000', '2022-10-24 18:19:10.538000', NULL, NULL),
(165, 'plugin::content-manager.explorer.update', 'api::type.type', '{\"fields\":[\"name\",\"listings\",\"svg\",\"image\"],\"locales\":[\"en\"]}', '[]', '2022-10-24 18:19:10.541000', '2022-10-24 18:19:10.541000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(25, 25, 2),
(27, 27, 2),
(32, 32, 2),
(34, 34, 2),
(36, 36, 2),
(37, 37, 2),
(38, 38, 2),
(39, 39, 2),
(40, 40, 2),
(41, 41, 3),
(42, 42, 3),
(43, 43, 3),
(44, 44, 3),
(45, 45, 3),
(46, 46, 3),
(47, 47, 3),
(48, 48, 3),
(49, 49, 3),
(50, 50, 3),
(51, 51, 3),
(52, 52, 3),
(53, 53, 3),
(54, 54, 3),
(55, 55, 3),
(56, 56, 3),
(57, 57, 3),
(58, 58, 3),
(59, 59, 3),
(60, 60, 3),
(61, 61, 3),
(65, 65, 3),
(67, 67, 3),
(69, 69, 3),
(70, 70, 3),
(71, 71, 3),
(72, 72, 3),
(73, 73, 3),
(74, 74, 1),
(75, 75, 1),
(76, 76, 1),
(77, 77, 1),
(78, 78, 1),
(79, 79, 1),
(80, 80, 1),
(82, 82, 1),
(83, 83, 1),
(84, 84, 1),
(85, 85, 1),
(86, 86, 1),
(87, 87, 1),
(88, 88, 1),
(90, 90, 1),
(91, 91, 1),
(92, 92, 1),
(93, 93, 1),
(94, 94, 1),
(95, 95, 1),
(96, 96, 1),
(98, 98, 1),
(99, 99, 1),
(100, 100, 1),
(101, 101, 1),
(102, 102, 1),
(103, 103, 1),
(104, 104, 1),
(105, 105, 1),
(106, 106, 1),
(107, 107, 1),
(108, 108, 1),
(109, 109, 1),
(110, 110, 1),
(111, 111, 1),
(112, 112, 1),
(113, 113, 1),
(114, 114, 1),
(115, 115, 1),
(116, 116, 1),
(117, 117, 1),
(118, 118, 1),
(119, 119, 1),
(120, 120, 1),
(121, 121, 1),
(122, 122, 1),
(123, 123, 1),
(124, 124, 1),
(125, 125, 1),
(126, 126, 1),
(127, 127, 1),
(128, 128, 1),
(129, 129, 1),
(130, 130, 1),
(131, 131, 1),
(132, 132, 1),
(133, 133, 1),
(134, 134, 1),
(135, 135, 1),
(136, 136, 1),
(137, 137, 1),
(138, 138, 1),
(139, 139, 1),
(140, 140, 1),
(141, 141, 1),
(142, 142, 1),
(143, 143, 1),
(144, 144, 1),
(145, 145, 1),
(146, 146, 1),
(147, 147, 1),
(148, 148, 1),
(149, 149, 1),
(150, 150, 1),
(151, 151, 1),
(152, 152, 1),
(153, 153, 1),
(154, 154, 1),
(155, 155, 1),
(156, 156, 1),
(157, 157, 1),
(158, 158, 1),
(159, 159, 1),
(160, 160, 1),
(161, 161, 1),
(162, 162, 1),
(163, 163, 1),
(164, 164, 1),
(165, 165, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-10-22 12:11:58.251000', '2022-10-22 12:11:58.251000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-10-22 12:11:58.256000', '2022-10-22 12:11:58.256000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-10-22 12:11:58.261000', '2022-10-22 12:11:58.261000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Tasos', 'Meidanis', NULL, 'tasosmeidanis12@gmail.com', '$2a$10$Vch.78Ki3.ndmHheXV0F8.urdgsTnB3PHDZA.cxJHpD10r6PpEu8y', NULL, NULL, 1, 0, NULL, '2022-10-22 12:12:18.825000', '2022-10-22 12:12:18.825000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `svg` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `slug`, `svg`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Acceptance of credit - debit card', 'acceptance-of-credit-debit-card', '<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n    <path d=\"M22 10H2M11 14H6M2 8.2L2 15.8C2 16.9201 2 17.4802 2.21799 17.908C2.40973 18.2843 2.71569 18.5903 3.09202 18.782C3.51984 19 4.07989 19 5.2 19L18.8 19C19.9201 19 20.4802 19 20.908 18.782C21.2843 18.5903 21.5903 18.2843 21.782 17.908C22 17.4802 22 16.9201 22 15.8V8.2C22 7.0799 22 6.51984 21.782 6.09202C21.5903 5.7157 21.2843 5.40974 20.908 5.21799C20.4802 5 19.9201 5 18.8 5L5.2 5C4.0799 5 3.51984 5 3.09202 5.21799C2.7157 5.40973 2.40973 5.71569 2.21799 6.09202C2 6.51984 2 7.07989 2 8.2Z\" stroke=\"black\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path>\n</svg>', '2022-10-22 12:38:02.818000', '2022-10-22 12:38:05.893000', '2022-10-22 12:38:05.890000', 1, 1, 'en'),
(2, 'Free entrance', 'free-entrance', '<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4 12C4 12.2652 4.10536 12.5196 4.29289 12.7071C4.48043 12.8946 4.73478 13 5 13H12.59L10.29 15.29C10.1963 15.383 10.1219 15.4936 10.0711 15.6154C10.0203 15.7373 9.9942 15.868 9.9942 16C9.9942 16.132 10.0203 16.2627 10.0711 16.3846C10.1219 16.5064 10.1963 16.617 10.29 16.71C10.383 16.8037 10.4936 16.8781 10.6154 16.9289C10.7373 16.9797 10.868 17.0058 11 17.0058C11.132 17.0058 11.2627 16.9797 11.3846 16.9289C11.5064 16.8781 11.617 16.8037 11.71 16.71L15.71 12.71C15.801 12.6149 15.8724 12.5028 15.92 12.38C16.02 12.1365 16.02 11.8635 15.92 11.62C15.8724 11.4972 15.801 11.3851 15.71 11.29L11.71 7.29C11.6168 7.19676 11.5061 7.1228 11.3842 7.07234C11.2624 7.02188 11.1319 6.99591 11 6.99591C10.8681 6.99591 10.7376 7.02188 10.6158 7.07234C10.4939 7.1228 10.3832 7.19676 10.29 7.29C10.1968 7.38324 10.1228 7.49393 10.0723 7.61575C10.0219 7.73757 9.99591 7.86814 9.99591 8C9.99591 8.13186 10.0219 8.26243 10.0723 8.38425C10.1228 8.50607 10.1968 8.61676 10.29 8.71L12.59 11H5C4.73478 11 4.48043 11.1054 4.29289 11.2929C4.10536 11.4804 4 11.7348 4 12ZM17 2H7C6.20435 2 5.44129 2.31607 4.87868 2.87868C4.31607 3.44129 4 4.20435 4 5V8C4 8.26522 4.10536 8.51957 4.29289 8.70711C4.48043 8.89464 4.73478 9 5 9C5.26522 9 5.51957 8.89464 5.70711 8.70711C5.89464 8.51957 6 8.26522 6 8V5C6 4.73478 6.10536 4.48043 6.29289 4.29289C6.48043 4.10536 6.73478 4 7 4H17C17.2652 4 17.5196 4.10536 17.7071 4.29289C17.8946 4.48043 18 4.73478 18 5V19C18 19.2652 17.8946 19.5196 17.7071 19.7071C17.5196 19.8946 17.2652 20 17 20H7C6.73478 20 6.48043 19.8946 6.29289 19.7071C6.10536 19.5196 6 19.2652 6 19V16C6 15.7348 5.89464 15.4804 5.70711 15.2929C5.51957 15.1054 5.26522 15 5 15C4.73478 15 4.48043 15.1054 4.29289 15.2929C4.10536 15.4804 4 15.7348 4 16V19C4 19.7956 4.31607 20.5587 4.87868 21.1213C5.44129 21.6839 6.20435 22 7 22H17C17.7956 22 18.5587 21.6839 19.1213 21.1213C19.6839 20.5587 20 19.7956 20 19V5C20 4.20435 19.6839 3.44129 19.1213 2.87868C18.5587 2.31607 17.7956 2 17 2Z\" fill=\"black\"></path>\n</svg>', '2022-10-22 12:38:13.851000', '2022-10-22 12:38:14.342000', '2022-10-22 12:38:14.339000', 1, 1, 'en'),
(3, 'Parking', 'parking', '<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n    <path d=\"M13 7H10C9.73479 7 9.48043 7.10536 9.2929 7.29289C9.10536 7.48043 9 7.73478 9 8V16C9 16.2652 9.10536 16.5196 9.2929 16.7071C9.48043 16.8946 9.73479 17 10 17C10.2652 17 10.5196 16.8946 10.7071 16.7071C10.8946 16.5196 11 16.2652 11 16V14H13C13.7957 14 14.5587 13.6839 15.1213 13.1213C15.6839 12.5587 16 11.7956 16 11V10C16 9.20435 15.6839 8.44129 15.1213 7.87868C14.5587 7.31607 13.7957 7 13 7ZM14 11C14 11.2652 13.8946 11.5196 13.7071 11.7071C13.5196 11.8946 13.2652 12 13 12H11V9H13C13.2652 9 13.5196 9.10536 13.7071 9.29289C13.8946 9.48043 14 9.73478 14 10V11ZM12 2C10.0222 2 8.08879 2.58649 6.4443 3.6853C4.79981 4.78412 3.51809 6.3459 2.76121 8.17317C2.00433 10.0004 1.8063 12.0111 2.19215 13.9509C2.578 15.8907 3.53041 17.6725 4.92894 19.0711C6.32746 20.4696 8.10929 21.422 10.0491 21.8079C11.9889 22.1937 13.9996 21.9957 15.8268 21.2388C17.6541 20.4819 19.2159 19.2002 20.3147 17.5557C21.4135 15.9112 22 13.9778 22 12C22 10.6868 21.7413 9.38642 21.2388 8.17317C20.7363 6.95991 19.9997 5.85752 19.0711 4.92893C18.1425 4.00035 17.0401 3.26375 15.8268 2.7612C14.6136 2.25866 13.3132 2 12 2ZM12 20C10.4178 20 8.87104 19.5308 7.55544 18.6518C6.23985 17.7727 5.21447 16.5233 4.60897 15.0615C4.00347 13.5997 3.84504 11.9911 4.15372 10.4393C4.4624 8.88743 5.22433 7.46197 6.34315 6.34315C7.46197 5.22433 8.88743 4.4624 10.4393 4.15372C11.9911 3.84504 13.5997 4.00346 15.0615 4.60896C16.5233 5.21447 17.7727 6.23984 18.6518 7.55544C19.5308 8.87103 20 10.4177 20 12C20 14.1217 19.1572 16.1566 17.6569 17.6569C16.1566 19.1571 14.1217 20 12 20Z\" fill=\"black\"></path>\n</svg>', '2022-10-22 12:38:21.594000', '2022-10-22 12:38:22.375000', '2022-10-22 12:38:22.373000', 1, 1, 'en'),
(4, 'Pet friendly', 'pet-friendly', '<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M16.5 5.00044C15.6195 4.99974 14.7554 5.23823 14 5.69044C13.4523 4.43322 12.4904 3.40158 11.2745 2.76729C10.0587 2.13301 8.66226 1.93436 7.31776 2.20442C5.97327 2.47449 4.76186 3.19698 3.88526 4.25157C3.00866 5.30617 2.51977 6.62923 2.5 8.00044V12.0004C2.50144 13.4173 3.00425 14.788 3.91939 15.8697C4.83452 16.9514 6.10294 17.6743 7.5 17.9104V21.0004C7.5 21.2657 7.60536 21.52 7.79289 21.7075C7.98043 21.8951 8.23478 22.0004 8.5 22.0004C8.76522 22.0004 9.01957 21.8951 9.20711 21.7075C9.39464 21.52 9.5 21.2657 9.5 21.0004V17.9104C10.5187 17.7337 11.4755 17.3 12.28 16.6504C12.637 17.2234 13.1064 17.7182 13.6598 18.1049C14.2132 18.4916 14.8392 18.7622 15.5 18.9004V21.0004C15.5 21.2657 15.6054 21.52 15.7929 21.7075C15.9804 21.8951 16.2348 22.0004 16.5 22.0004C16.7652 22.0004 17.0196 21.8951 17.2071 21.7075C17.3946 21.52 17.5 21.2657 17.5 21.0004V18.9004C18.6294 18.6699 19.6444 18.0563 20.3733 17.1633C21.1022 16.2704 21.5002 15.1531 21.5 14.0004V10.0004C21.5 8.67435 20.9732 7.40259 20.0355 6.4649C19.0979 5.52722 17.8261 5.00044 16.5 5.00044ZM11.5 10.0004V14.0004C11.5096 14.1914 11.5296 14.3817 11.56 14.5704C11.0252 15.2074 10.3051 15.6618 9.5 15.8704V13.0004C9.5 12.7352 9.39464 12.4809 9.20711 12.2933C9.01957 12.1058 8.76522 12.0004 8.5 12.0004C8.23478 12.0004 7.98043 12.1058 7.79289 12.2933C7.60536 12.4809 7.5 12.7352 7.5 13.0004V15.8604C6.64353 15.6393 5.88451 15.1405 5.34169 14.4421C4.79887 13.7437 4.50287 12.885 4.5 12.0004V8.00044C4.49739 7.208 4.73022 6.43265 5.16894 5.77274C5.60766 5.11282 6.2325 4.59809 6.9642 4.29384C7.69591 3.98959 8.5015 3.90953 9.27877 4.06382C10.056 4.2181 10.77 4.59978 11.33 5.16044C11.8714 5.70907 12.2399 6.40444 12.39 7.16044C11.8119 7.99482 11.5015 8.98538 11.5 10.0004ZM19.5 14.0004C19.4983 14.6194 19.3051 15.2226 18.9471 15.7275C18.589 16.2324 18.0835 16.6141 17.5 16.8204V13.0004C17.5 12.7352 17.3946 12.4809 17.2071 12.2933C17.0196 12.1058 16.7652 12.0004 16.5 12.0004C16.2348 12.0004 15.9804 12.1058 15.7929 12.2933C15.6054 12.4809 15.5 12.7352 15.5 13.0004V16.8204C14.9165 16.6141 14.411 16.2324 14.0529 15.7275C13.6949 15.2226 13.5017 14.6194 13.5 14.0004V10.0004C13.5 9.20479 13.8161 8.44173 14.3787 7.87912C14.9413 7.31651 15.7044 7.00044 16.5 7.00044C17.2956 7.00044 18.0587 7.31651 18.6213 7.87912C19.1839 8.44173 19.5 9.20479 19.5 10.0004V14.0004Z\" fill=\"black\"></path>\n</svg>', '2022-10-22 12:38:31.328000', '2022-10-22 12:38:31.850000', '2022-10-22 12:38:31.847000', 1, 1, 'en'),
(5, 'WI-FI', 'wi-fi', '<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n    <path d=\"M12 19.5H12.01M22.8064 8.70076C19.9595 6.09199 16.1656 4.5 11.9999 4.5C7.83414 4.5 4.04023 6.09199 1.19336 8.70076M4.73193 12.243C6.67006 10.5357 9.21407 9.5 12 9.5C14.7859 9.5 17.3299 10.5357 19.268 12.243M15.6983 15.7751C14.6792 14.9763 13.3952 14.5 11.9999 14.5C10.5835 14.5 9.28172 14.9908 8.25537 15.8116\" stroke=\"black\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path>\n</svg>', '2022-10-22 12:38:39.259000', '2022-10-22 12:38:40.635000', '2022-10-22 12:38:40.633000', 1, 1, 'en'),
(6, 'e-order', 'e-order', '<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 21L11.8999 20.8499C11.2053 19.808 10.858 19.287 10.3991 18.9098C9.99286 18.5759 9.52476 18.3254 9.02161 18.1726C8.45325 18 7.82711 18 6.57482 18H5.2C4.07989 18 3.51984 18 3.09202 17.782C2.71569 17.5903 2.40973 17.2843 2.21799 16.908C2 16.4802 2 15.9201 2 14.8V6.2C2 5.07989 2 4.51984 2.21799 4.09202C2.40973 3.71569 2.71569 3.40973 3.09202 3.21799C3.51984 3 4.07989 3 5.2 3H5.6C7.84021 3 8.96031 3 9.81596 3.43597C10.5686 3.81947 11.1805 4.43139 11.564 5.18404C12 6.03968 12 7.15979 12 9.4M12 21V9.4M12 21L12.1001 20.8499C12.7947 19.808 13.142 19.287 13.6009 18.9098C14.0071 18.5759 14.4752 18.3254 14.9784 18.1726C15.5467 18 16.1729 18 17.4252 18H18.8C19.9201 18 20.4802 18 20.908 17.782C21.2843 17.5903 21.5903 17.2843 21.782 16.908C22 16.4802 22 15.9201 22 14.8V6.2C22 5.07989 22 4.51984 21.782 4.09202C21.5903 3.71569 21.2843 3.40973 20.908 3.21799C20.4802 3 19.9201 3 18.8 3H18.4C16.1598 3 15.0397 3 14.184 3.43597C13.4314 3.81947 12.8195 4.43139 12.436 5.18404C12 6.03968 12 7.15979 12 9.4\" stroke=\"black\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n</svg>', '2022-10-22 12:38:45.727000', '2022-10-22 12:38:46.169000', '2022-10-22 12:38:46.166000', 1, 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `amenities_localizations_links`
--

CREATE TABLE `amenities_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `amenity_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_amenity_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `likes`, `views`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Test Article', '# This is H1\n\n## This is H2\n\n### This is H3\n\n#### This is H4\n\n#### This is H5\n\n##### This is H6\n\n**This is Bold Text**\n\n_This is Italic Text_\n\n<u>This is Underscored Text</u>\n\nThis is an Image\n![1557376304.186_U5U7u5_100x100.jpg](http://localhost:1337/uploads/1557376304_186_U5_U7u5_100x100_35f82f8bd1.jpg)\n\n>This is quote \n>Hello Guys\n', 100000, 10101010, '2022-10-22 12:40:23.583000', '2022-10-22 12:40:42.622000', '2022-10-22 12:40:24.085000', 1, 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories_links`
--

CREATE TABLE `articles_categories_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles_categories_links`
--

INSERT INTO `articles_categories_links` (`id`, `article_id`, `category_id`) VALUES
(5, 1, 1),
(6, 1, 2),
(7, 1, 3),
(8, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `articles_localizations_links`
--

CREATE TABLE `articles_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_article_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Sights', '2022-10-22 12:38:52.724000', '2022-10-22 12:38:53.221000', '2022-10-22 12:38:53.218000', 1, 1, 'en'),
(2, 'Social Media', '2022-10-22 12:38:57.218000', '2022-10-22 12:38:57.621000', '2022-10-22 12:38:57.619000', 1, 1, 'en'),
(3, 'Startups', '2022-10-22 12:39:00.779000', '2022-10-22 12:39:01.410000', '2022-10-22 12:39:01.408000', 1, 1, 'en'),
(4, 'Travel', '2022-10-22 12:39:04.415000', '2022-10-22 12:39:04.834000', '2022-10-22 12:39:04.831000', 1, 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `categories_localizations_links`
--

CREATE TABLE `categories_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` longtext DEFAULT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `rating`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Απο τις καλύτερες καφετέριες της περιοχής. Καφές / Σέρβις 10/10', '5.00', '2022-10-31 17:43:27.418000', '2022-10-31 17:43:31.571000', '2022-10-31 17:43:28.109000', 1, 1),
(2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum reiciendis, qui nemo doloremque vero iste neque voluptas libero enim unde.', '4.44', '2022-10-31 18:18:45.347000', '2022-10-31 18:21:38.503000', '2022-10-31 18:18:46.085000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments_listing_links`
--

CREATE TABLE `comments_listing_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `listing_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments_listing_links`
--

INSERT INTO `comments_listing_links` (`id`, `comment_id`, `listing_id`) VALUES
(1, 1, 1),
(5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments_users_permissions_user_links`
--

CREATE TABLE `comments_users_permissions_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments_users_permissions_user_links`
--

INSERT INTO `comments_users_permissions_user_links` (`id`, `comment_id`, `user_id`) VALUES
(1, 1, 1),
(4, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `components_location_geos`
--

CREATE TABLE `components_location_geos` (
  `id` int(10) UNSIGNED NOT NULL,
  `lng` double DEFAULT NULL,
  `lat` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_location_geos`
--

INSERT INTO `components_location_geos` (`id`, `lng`, `lat`) VALUES
(1, 37.8491186763013, 21.25163134691572),
(2, 37.86174085001542, 21.25163134691572),
(3, 37.8491186763013, 21.2049349831784),
(4, 37.8617408500215, 21.25163134691572),
(5, 0, 1),
(6, 0, 1),
(7, 0, 1),
(8, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_openhours_open_hours`
--

CREATE TABLE `components_openhours_open_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_interval` varchar(255) DEFAULT NULL,
  `opening_hour` varchar(255) DEFAULT NULL,
  `closing_hour` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_openhours_open_hours`
--

INSERT INTO `components_openhours_open_hours` (`id`, `day_interval`, `opening_hour`, `closing_hour`) VALUES
(1, 'Tuesday', '12:30', '12:30'),
(2, 'Monday', '12:30', '12:30'),
(3, 'Wednesday', '12:30', '12:30'),
(4, 'Thursday', '12:30', '12:30'),
(5, 'Friday', '12:30', '12:30'),
(6, 'Sunday', '12:30', '12:30'),
(7, 'Saturday', '12:30', '12:30'),
(8, 'Δευτέρα', '7:00 AM', '3:00 AM'),
(9, 'Τρίτη', '7:00 AM', '3:00 AM'),
(10, 'Τετάρτη', '7:00 AM', '3:00 AM'),
(11, 'Πέμπτη', '7:00 AM', '3:00 AM'),
(12, 'Παρασκευή', '7:00 AM', '3:00 AM'),
(13, 'Σάββατο', '7:00 AM', '3:00 AM'),
(14, 'Κυριακή', '7:00 AM', '3:00 AM'),
(15, 'Every Day', '7:00 PM', '1:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Filtered_02232.jpg', 'Filtered_02232.jpg', 'Filtered_02232.jpg', 480, 853, '{\"thumbnail\":{\"name\":\"thumbnail_Filtered_02232.jpg\",\"hash\":\"thumbnail_Filtered_02232_536c08cdb1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":88,\"height\":156,\"size\":1.77,\"url\":\"/uploads/thumbnail_Filtered_02232_536c08cdb1.jpg\"},\"medium\":{\"name\":\"medium_Filtered_02232.jpg\",\"hash\":\"medium_Filtered_02232_536c08cdb1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":422,\"height\":750,\"size\":18.23,\"url\":\"/uploads/medium_Filtered_02232_536c08cdb1.jpg\"},\"small\":{\"name\":\"small_Filtered_02232.jpg\",\"hash\":\"small_Filtered_02232_536c08cdb1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":281,\"height\":500,\"size\":9.18,\"url\":\"/uploads/small_Filtered_02232_536c08cdb1.jpg\"}}', 'Filtered_02232_536c08cdb1', '.jpg', 'image/jpeg', '22.90', '/uploads/Filtered_02232_536c08cdb1.jpg', NULL, 'local', NULL, '/', '2022-10-22 12:16:50.408000', '2022-10-22 12:16:50.408000', 1, 1),
(2, '1557376304.186_U5U7u5_100x100.jpg', '1557376304.186_U5U7u5_100x100.jpg', '1557376304.186_U5U7u5_100x100.jpg', 100, 100, NULL, '1557376304_186_U5_U7u5_100x100_35f82f8bd1', '.jpg', 'image/jpeg', '2.30', '/uploads/1557376304_186_U5_U7u5_100x100_35f82f8bd1.jpg', NULL, 'local', NULL, '/', '2022-10-22 12:40:12.521000', '2022-10-22 12:40:12.521000', 1, 1),
(3, '5xa0g19ynp43bsrwf6kjilh7zm2odqt8.jpg', '5xa0g19ynp43bsrwf6kjilh7zm2odqt8.jpg', '5xa0g19ynp43bsrwf6kjilh7zm2odqt8.jpg', 980, 980, '{\"thumbnail\":{\"name\":\"thumbnail_5xa0g19ynp43bsrwf6kjilh7zm2odqt8.jpg\",\"hash\":\"thumbnail_5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.29,\"url\":\"/uploads/thumbnail_5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de.jpg\"},\"medium\":{\"name\":\"medium_5xa0g19ynp43bsrwf6kjilh7zm2odqt8.jpg\",\"hash\":\"medium_5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":26.84,\"url\":\"/uploads/medium_5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de.jpg\"},\"small\":{\"name\":\"small_5xa0g19ynp43bsrwf6kjilh7zm2odqt8.jpg\",\"hash\":\"small_5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":15.27,\"url\":\"/uploads/small_5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de.jpg\"}}', '5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de', '.jpg', 'image/jpeg', '34.85', '/uploads/5xa0g19ynp43bsrwf6kjilh7zm2odqt8_d8eba1c4de.jpg', NULL, 'local', NULL, '/1', '2022-10-22 12:43:50.872000', '2022-10-22 12:43:50.872000', 1, 1),
(4, '8welc2bhdoxjvkq15sn39zy6fitu7pmr.jpg', '8welc2bhdoxjvkq15sn39zy6fitu7pmr.jpg', '8welc2bhdoxjvkq15sn39zy6fitu7pmr.jpg', 720, 960, '{\"thumbnail\":{\"name\":\"thumbnail_8welc2bhdoxjvkq15sn39zy6fitu7pmr.jpg\",\"hash\":\"thumbnail_8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":117,\"height\":156,\"size\":6.7,\"url\":\"/uploads/thumbnail_8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66.jpg\"},\"small\":{\"name\":\"small_8welc2bhdoxjvkq15sn39zy6fitu7pmr.jpg\",\"hash\":\"small_8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":375,\"height\":500,\"size\":47.58,\"url\":\"/uploads/small_8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66.jpg\"},\"medium\":{\"name\":\"medium_8welc2bhdoxjvkq15sn39zy6fitu7pmr.jpg\",\"hash\":\"medium_8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":563,\"height\":750,\"size\":91.64,\"url\":\"/uploads/medium_8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66.jpg\"}}', '8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66', '.jpg', 'image/jpeg', '94.95', '/uploads/8welc2bhdoxjvkq15sn39zy6fitu7pmr_f4f71a0b66.jpg', NULL, 'local', NULL, '/1', '2022-10-22 12:43:50.873000', '2022-10-22 12:43:50.873000', 1, 1),
(5, 't38mhrjqz6avefwk74so1pnbg2lcdy0i.jpg', 't38mhrjqz6avefwk74so1pnbg2lcdy0i.jpg', 't38mhrjqz6avefwk74so1pnbg2lcdy0i.jpg', 720, 960, '{\"thumbnail\":{\"name\":\"thumbnail_t38mhrjqz6avefwk74so1pnbg2lcdy0i.jpg\",\"hash\":\"thumbnail_t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":117,\"height\":156,\"size\":6.02,\"url\":\"/uploads/thumbnail_t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977.jpg\"},\"small\":{\"name\":\"small_t38mhrjqz6avefwk74so1pnbg2lcdy0i.jpg\",\"hash\":\"small_t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":375,\"height\":500,\"size\":41.71,\"url\":\"/uploads/small_t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977.jpg\"},\"medium\":{\"name\":\"medium_t38mhrjqz6avefwk74so1pnbg2lcdy0i.jpg\",\"hash\":\"medium_t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":563,\"height\":750,\"size\":78.24,\"url\":\"/uploads/medium_t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977.jpg\"}}', 't38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977', '.jpg', 'image/jpeg', '83.07', '/uploads/t38mhrjqz6avefwk74so1pnbg2lcdy0i_5f53cf8977.jpg', NULL, 'local', NULL, '/1', '2022-10-22 12:43:50.877000', '2022-10-22 12:43:50.877000', 1, 1),
(6, 'qun8dit2yjz6fwb34hgrxlpko0vm57cs.jpg', 'qun8dit2yjz6fwb34hgrxlpko0vm57cs.jpg', 'qun8dit2yjz6fwb34hgrxlpko0vm57cs.jpg', 720, 960, '{\"thumbnail\":{\"name\":\"thumbnail_qun8dit2yjz6fwb34hgrxlpko0vm57cs.jpg\",\"hash\":\"thumbnail_qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":117,\"height\":156,\"size\":6.87,\"url\":\"/uploads/thumbnail_qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f.jpg\"},\"small\":{\"name\":\"small_qun8dit2yjz6fwb34hgrxlpko0vm57cs.jpg\",\"hash\":\"small_qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":375,\"height\":500,\"size\":50.64,\"url\":\"/uploads/small_qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f.jpg\"},\"medium\":{\"name\":\"medium_qun8dit2yjz6fwb34hgrxlpko0vm57cs.jpg\",\"hash\":\"medium_qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":563,\"height\":750,\"size\":98.23,\"url\":\"/uploads/medium_qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f.jpg\"}}', 'qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f', '.jpg', 'image/jpeg', '102.77', '/uploads/qun8dit2yjz6fwb34hgrxlpko0vm57cs_de850d0e2f.jpg', NULL, 'local', NULL, '/1', '2022-10-22 12:43:50.878000', '2022-10-22 12:43:50.878000', 1, 1),
(7, '45ownload.png', '45ownload.png', '45ownload.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_45ownload.png\",\"hash\":\"thumbnail_45ownload_3652326cbc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":74.87,\"url\":\"/uploads/thumbnail_45ownload_3652326cbc.png\"},\"small\":{\"name\":\"small_45ownload.png\",\"hash\":\"small_45ownload_3652326cbc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":657.92,\"url\":\"/uploads/small_45ownload_3652326cbc.png\"},\"medium\":{\"name\":\"medium_45ownload.png\",\"hash\":\"medium_45ownload_3652326cbc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1383.02,\"url\":\"/uploads/medium_45ownload_3652326cbc.png\"},\"large\":{\"name\":\"large_45ownload.png\",\"hash\":\"large_45ownload_3652326cbc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2311.23,\"url\":\"/uploads/large_45ownload_3652326cbc.png\"}}', '45ownload_3652326cbc', '.png', 'image/png', '2604.47', '/uploads/45ownload_3652326cbc.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:25.081000', '2022-10-23 11:14:25.081000', 1, 1),
(8, 'down5load.png', 'down5load.png', 'down5load.png', 1440, 1271, '{\"thumbnail\":{\"name\":\"thumbnail_down5load.png\",\"hash\":\"thumbnail_down5load_2bab76e028\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":177,\"height\":156,\"size\":83.51,\"url\":\"/uploads/thumbnail_down5load_2bab76e028.png\"},\"small\":{\"name\":\"small_down5load.png\",\"hash\":\"small_down5load_2bab76e028\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":441,\"size\":583.32,\"url\":\"/uploads/small_down5load_2bab76e028.png\"},\"medium\":{\"name\":\"medium_down5load.png\",\"hash\":\"medium_down5load_2bab76e028\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":662,\"size\":1240.95,\"url\":\"/uploads/medium_down5load_2bab76e028.png\"},\"large\":{\"name\":\"large_down5load.png\",\"hash\":\"large_down5load_2bab76e028\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":883,\"size\":2099.27,\"url\":\"/uploads/large_down5load_2bab76e028.png\"}}', 'down5load_2bab76e028', '.png', 'image/png', '2475.66', '/uploads/down5load_2bab76e028.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:25.556000', '2022-10-23 11:14:25.556000', 1, 1),
(9, 'dow6nload.png', 'dow6nload.png', 'dow6nload.png', 1440, 1271, '{\"thumbnail\":{\"name\":\"thumbnail_dow6nload.png\",\"hash\":\"thumbnail_dow6nload_3a8daa0036\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":177,\"height\":156,\"size\":83.34,\"url\":\"/uploads/thumbnail_dow6nload_3a8daa0036.png\"},\"small\":{\"name\":\"small_dow6nload.png\",\"hash\":\"small_dow6nload_3a8daa0036\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":441,\"size\":584.3,\"url\":\"/uploads/small_dow6nload_3a8daa0036.png\"},\"medium\":{\"name\":\"medium_dow6nload.png\",\"hash\":\"medium_dow6nload_3a8daa0036\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":662,\"size\":1244.48,\"url\":\"/uploads/medium_dow6nload_3a8daa0036.png\"},\"large\":{\"name\":\"large_dow6nload.png\",\"hash\":\"large_dow6nload_3a8daa0036\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":883,\"size\":2103.85,\"url\":\"/uploads/large_dow6nload_3a8daa0036.png\"}}', 'dow6nload_3a8daa0036', '.png', 'image/png', '2486.72', '/uploads/dow6nload_3a8daa0036.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:25.854000', '2022-10-23 11:14:25.854000', 1, 1),
(10, 'dow3nload.png', 'dow3nload.png', 'dow3nload.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_dow3nload.png\",\"hash\":\"thumbnail_dow3nload_de504b32c1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":74.79,\"url\":\"/uploads/thumbnail_dow3nload_de504b32c1.png\"},\"small\":{\"name\":\"small_dow3nload.png\",\"hash\":\"small_dow3nload_de504b32c1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":681.84,\"url\":\"/uploads/small_dow3nload_de504b32c1.png\"},\"medium\":{\"name\":\"medium_dow3nload.png\",\"hash\":\"medium_dow3nload_de504b32c1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1452.83,\"url\":\"/uploads/medium_dow3nload_de504b32c1.png\"},\"large\":{\"name\":\"large_dow3nload.png\",\"hash\":\"large_dow3nload_de504b32c1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2462.57,\"url\":\"/uploads/large_dow3nload_de504b32c1.png\"}}', 'dow3nload_de504b32c1', '.png', 'image/png', '2978.43', '/uploads/dow3nload_de504b32c1.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:25.932000', '2022-10-23 11:14:25.932000', 1, 1),
(11, 'do14wnload.png', 'do14wnload.png', 'do14wnload.png', 1284, 2282, '{\"thumbnail\":{\"name\":\"thumbnail_do14wnload.png\",\"hash\":\"thumbnail_do14wnload_ce18a74c25\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":88,\"height\":156,\"size\":41.11,\"url\":\"/uploads/thumbnail_do14wnload_ce18a74c25.png\"},\"small\":{\"name\":\"small_do14wnload.png\",\"hash\":\"small_do14wnload_ce18a74c25\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":281,\"height\":500,\"size\":365.44,\"url\":\"/uploads/small_do14wnload_ce18a74c25.png\"},\"medium\":{\"name\":\"medium_do14wnload.png\",\"hash\":\"medium_do14wnload_ce18a74c25\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":422,\"height\":750,\"size\":779.24,\"url\":\"/uploads/medium_do14wnload_ce18a74c25.png\"},\"large\":{\"name\":\"large_do14wnload.png\",\"hash\":\"large_do14wnload_ce18a74c25\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":1000,\"size\":1340.86,\"url\":\"/uploads/large_do14wnload_ce18a74c25.png\"}}', 'do14wnload_ce18a74c25', '.png', 'image/png', '4080.84', '/uploads/do14wnload_ce18a74c25.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:26.776000', '2022-10-23 11:14:26.776000', 1, 1),
(12, 'do567wnload.png', 'do567wnload.png', 'do567wnload.png', 1284, 2282, '{\"thumbnail\":{\"name\":\"thumbnail_do567wnload.png\",\"hash\":\"thumbnail_do567wnload_26a0a5fad4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":88,\"height\":156,\"size\":43.94,\"url\":\"/uploads/thumbnail_do567wnload_26a0a5fad4.png\"},\"small\":{\"name\":\"small_do567wnload.png\",\"hash\":\"small_do567wnload_26a0a5fad4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":281,\"height\":500,\"size\":405.56,\"url\":\"/uploads/small_do567wnload_26a0a5fad4.png\"},\"medium\":{\"name\":\"medium_do567wnload.png\",\"hash\":\"medium_do567wnload_26a0a5fad4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":422,\"height\":750,\"size\":871.85,\"url\":\"/uploads/medium_do567wnload_26a0a5fad4.png\"},\"large\":{\"name\":\"large_do567wnload.png\",\"hash\":\"large_do567wnload_26a0a5fad4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":1000,\"size\":1503.22,\"url\":\"/uploads/large_do567wnload_26a0a5fad4.png\"}}', 'do567wnload_26a0a5fad4', '.png', 'image/png', '4169.45', '/uploads/do567wnload_26a0a5fad4.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:26.938000', '2022-10-23 11:14:26.938000', 1, 1),
(13, 'downl2oad.png', 'downl2oad.png', 'downl2oad.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_downl2oad.png\",\"hash\":\"thumbnail_downl2oad_8c444d5c9a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":71.12,\"url\":\"/uploads/thumbnail_downl2oad_8c444d5c9a.png\"},\"small\":{\"name\":\"small_downl2oad.png\",\"hash\":\"small_downl2oad_8c444d5c9a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":619.57,\"url\":\"/uploads/small_downl2oad_8c444d5c9a.png\"},\"medium\":{\"name\":\"medium_downl2oad.png\",\"hash\":\"medium_downl2oad_8c444d5c9a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1302.84,\"url\":\"/uploads/medium_downl2oad_8c444d5c9a.png\"},\"large\":{\"name\":\"large_downl2oad.png\",\"hash\":\"large_downl2oad_8c444d5c9a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2186.88,\"url\":\"/uploads/large_downl2oad_8c444d5c9a.png\"}}', 'downl2oad_8c444d5c9a', '.png', 'image/png', '2606.95', '/uploads/downl2oad_8c444d5c9a.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:27.599000', '2022-10-23 11:14:27.599000', 1, 1),
(14, 'downl45oad.png', 'downl45oad.png', 'downl45oad.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_downl45oad.png\",\"hash\":\"thumbnail_downl45oad_4891c5a0e5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":70.82,\"url\":\"/uploads/thumbnail_downl45oad_4891c5a0e5.png\"},\"small\":{\"name\":\"small_downl45oad.png\",\"hash\":\"small_downl45oad_4891c5a0e5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":640.99,\"url\":\"/uploads/small_downl45oad_4891c5a0e5.png\"},\"medium\":{\"name\":\"medium_downl45oad.png\",\"hash\":\"medium_downl45oad_4891c5a0e5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1356.32,\"url\":\"/uploads/medium_downl45oad_4891c5a0e5.png\"},\"large\":{\"name\":\"large_downl45oad.png\",\"hash\":\"large_downl45oad_4891c5a0e5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2284.61,\"url\":\"/uploads/large_downl45oad_4891c5a0e5.png\"}}', 'downl45oad_4891c5a0e5', '.png', 'image/png', '2630.20', '/uploads/downl45oad_4891c5a0e5.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:27.606000', '2022-10-23 11:14:27.606000', 1, 1),
(15, 'down7load.png', 'down7load.png', 'down7load.png', 1440, 1271, '{\"thumbnail\":{\"name\":\"thumbnail_down7load.png\",\"hash\":\"thumbnail_down7load_ec47c11764\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":177,\"height\":156,\"size\":85.69,\"url\":\"/uploads/thumbnail_down7load_ec47c11764.png\"},\"small\":{\"name\":\"small_down7load.png\",\"hash\":\"small_down7load_ec47c11764\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":441,\"size\":626.55,\"url\":\"/uploads/small_down7load_ec47c11764.png\"},\"medium\":{\"name\":\"medium_down7load.png\",\"hash\":\"medium_down7load_ec47c11764\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":662,\"size\":1355.26,\"url\":\"/uploads/medium_down7load_ec47c11764.png\"},\"large\":{\"name\":\"large_down7load.png\",\"hash\":\"large_down7load_ec47c11764\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":883,\"size\":2321.37,\"url\":\"/uploads/large_down7load_ec47c11764.png\"}}', 'down7load_ec47c11764', '.png', 'image/png', '2861.67', '/uploads/down7load_ec47c11764.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:27.645000', '2022-10-23 11:14:27.645000', 1, 1),
(16, 'dow31nload.png', 'dow31nload.png', 'dow31nload.png', 1284, 2098, '{\"thumbnail\":{\"name\":\"thumbnail_dow31nload.png\",\"hash\":\"thumbnail_dow31nload_0a99818df5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":95,\"height\":156,\"size\":47.88,\"url\":\"/uploads/thumbnail_dow31nload_0a99818df5.png\"},\"small\":{\"name\":\"small_dow31nload.png\",\"hash\":\"small_dow31nload_0a99818df5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":306,\"height\":500,\"size\":475.02,\"url\":\"/uploads/small_dow31nload_0a99818df5.png\"},\"medium\":{\"name\":\"medium_dow31nload.png\",\"hash\":\"medium_dow31nload_0a99818df5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":459,\"height\":750,\"size\":1050.67,\"url\":\"/uploads/medium_dow31nload_0a99818df5.png\"},\"large\":{\"name\":\"large_dow31nload.png\",\"hash\":\"large_dow31nload_0a99818df5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":612,\"height\":1000,\"size\":1839.11,\"url\":\"/uploads/large_dow31nload_0a99818df5.png\"}}', 'dow31nload_0a99818df5', '.png', 'image/png', '4997.75', '/uploads/dow31nload_0a99818df5.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:28.195000', '2022-10-23 11:14:28.195000', 1, 1),
(17, 'downl567oad.png', 'downl567oad.png', 'downl567oad.png', 1440, 1271, '{\"thumbnail\":{\"name\":\"thumbnail_downl567oad.png\",\"hash\":\"thumbnail_downl567oad_835f53552f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":177,\"height\":156,\"size\":71.59,\"url\":\"/uploads/thumbnail_downl567oad_835f53552f.png\"},\"small\":{\"name\":\"small_downl567oad.png\",\"hash\":\"small_downl567oad_835f53552f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":441,\"size\":460.41,\"url\":\"/uploads/small_downl567oad_835f53552f.png\"},\"medium\":{\"name\":\"medium_downl567oad.png\",\"hash\":\"medium_downl567oad_835f53552f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":662,\"size\":928.95,\"url\":\"/uploads/medium_downl567oad_835f53552f.png\"},\"large\":{\"name\":\"large_downl567oad.png\",\"hash\":\"large_downl567oad_835f53552f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":883,\"size\":1508.99,\"url\":\"/uploads/large_downl567oad_835f53552f.png\"}}', 'downl567oad_835f53552f', '.png', 'image/png', '1630.63', '/uploads/downl567oad_835f53552f.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:28.300000', '2022-10-23 11:14:28.300000', 1, 1),
(18, 'downl111oad.png', 'downl111oad.png', 'downl111oad.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_downl111oad.png\",\"hash\":\"thumbnail_downl111oad_4b5c9cf3c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":76.17,\"url\":\"/uploads/thumbnail_downl111oad_4b5c9cf3c0.png\"},\"small\":{\"name\":\"small_downl111oad.png\",\"hash\":\"small_downl111oad_4b5c9cf3c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":694.83,\"url\":\"/uploads/small_downl111oad_4b5c9cf3c0.png\"},\"medium\":{\"name\":\"medium_downl111oad.png\",\"hash\":\"medium_downl111oad_4b5c9cf3c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1480.35,\"url\":\"/uploads/medium_downl111oad_4b5c9cf3c0.png\"},\"large\":{\"name\":\"large_downl111oad.png\",\"hash\":\"large_downl111oad_4b5c9cf3c0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2507.42,\"url\":\"/uploads/large_downl111oad_4b5c9cf3c0.png\"}}', 'downl111oad_4b5c9cf3c0', '.png', 'image/png', '2848.31', '/uploads/downl111oad_4b5c9cf3c0.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:28.806000', '2022-10-23 11:14:28.806000', 1, 1),
(19, 'downlo8ad.png', 'downlo8ad.png', 'downlo8ad.png', 1271, 1123, '{\"thumbnail\":{\"name\":\"thumbnail_downlo8ad.png\",\"hash\":\"thumbnail_downlo8ad_bc5b788170\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":177,\"height\":156,\"size\":79.47,\"url\":\"/uploads/thumbnail_downlo8ad_bc5b788170.png\"},\"small\":{\"name\":\"small_downlo8ad.png\",\"hash\":\"small_downlo8ad_bc5b788170\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":442,\"size\":548,\"url\":\"/uploads/small_downlo8ad_bc5b788170.png\"},\"medium\":{\"name\":\"medium_downlo8ad.png\",\"hash\":\"medium_downlo8ad_bc5b788170\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":663,\"size\":1154.21,\"url\":\"/uploads/medium_downlo8ad_bc5b788170.png\"},\"large\":{\"name\":\"large_downlo8ad.png\",\"hash\":\"large_downlo8ad_bc5b788170\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":884,\"size\":1933.32,\"url\":\"/uploads/large_downlo8ad_bc5b788170.png\"}}', 'downlo8ad_bc5b788170', '.png', 'image/png', '1939.01', '/uploads/downlo8ad_bc5b788170.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:28.948000', '2022-10-23 11:14:28.948000', 1, 1),
(20, 'downlo2ad.png', 'downlo2ad.png', 'downlo2ad.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_downlo2ad.png\",\"hash\":\"thumbnail_downlo2ad_6403dd4a76\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":72.8,\"url\":\"/uploads/thumbnail_downlo2ad_6403dd4a76.png\"},\"small\":{\"name\":\"small_downlo2ad.png\",\"hash\":\"small_downlo2ad_6403dd4a76\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":620.4,\"url\":\"/uploads/small_downlo2ad_6403dd4a76.png\"},\"medium\":{\"name\":\"medium_downlo2ad.png\",\"hash\":\"medium_downlo2ad_6403dd4a76\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1285.8,\"url\":\"/uploads/medium_downlo2ad_6403dd4a76.png\"},\"large\":{\"name\":\"large_downlo2ad.png\",\"hash\":\"large_downlo2ad_6403dd4a76\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2131.71,\"url\":\"/uploads/large_downlo2ad_6403dd4a76.png\"}}', 'downlo2ad_6403dd4a76', '.png', 'image/png', '2434.57', '/uploads/downlo2ad_6403dd4a76.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:29.020000', '2022-10-23 11:14:29.020000', 1, 1),
(21, 'downlo456ad.png', 'downlo456ad.png', 'downlo456ad.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_downlo456ad.png\",\"hash\":\"thumbnail_downlo456ad_63732865a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":77.91,\"url\":\"/uploads/thumbnail_downlo456ad_63732865a0.png\"},\"small\":{\"name\":\"small_downlo456ad.png\",\"hash\":\"small_downlo456ad_63732865a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":730.21,\"url\":\"/uploads/small_downlo456ad_63732865a0.png\"},\"medium\":{\"name\":\"medium_downlo456ad.png\",\"hash\":\"medium_downlo456ad_63732865a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1573.83,\"url\":\"/uploads/medium_downlo456ad_63732865a0.png\"},\"large\":{\"name\":\"large_downlo456ad.png\",\"hash\":\"large_downlo456ad_63732865a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2689.96,\"url\":\"/uploads/large_downlo456ad_63732865a0.png\"}}', 'downlo456ad_63732865a0', '.png', 'image/png', '3139.46', '/uploads/downlo456ad_63732865a0.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:29.427000', '2022-10-23 11:14:29.427000', 1, 1),
(22, 'downloa345d.png', 'downloa345d.png', 'downloa345d.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_downloa345d.png\",\"hash\":\"thumbnail_downloa345d_de4f798c3f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":72.47,\"url\":\"/uploads/thumbnail_downloa345d_de4f798c3f.png\"},\"small\":{\"name\":\"small_downloa345d.png\",\"hash\":\"small_downloa345d_de4f798c3f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":644.79,\"url\":\"/uploads/small_downloa345d_de4f798c3f.png\"},\"medium\":{\"name\":\"medium_downloa345d.png\",\"hash\":\"medium_downloa345d_de4f798c3f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1364.86,\"url\":\"/uploads/medium_downloa345d_de4f798c3f.png\"},\"large\":{\"name\":\"large_downloa345d.png\",\"hash\":\"large_downloa345d_de4f798c3f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2300.45,\"url\":\"/uploads/large_downloa345d_de4f798c3f.png\"}}', 'downloa345d_de4f798c3f', '.png', 'image/png', '2568.00', '/uploads/downloa345d_de4f798c3f.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:29.567000', '2022-10-23 11:14:29.567000', 1, 1),
(23, 'download2.png', 'download2.png', 'download2.png', 1440, 1440, '{\"thumbnail\":{\"name\":\"thumbnail_download2.png\",\"hash\":\"thumbnail_download2_e4413b22da\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":78.1,\"url\":\"/uploads/thumbnail_download2_e4413b22da.png\"},\"small\":{\"name\":\"small_download2.png\",\"hash\":\"small_download2_e4413b22da\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":732.49,\"url\":\"/uploads/small_download2_e4413b22da.png\"},\"medium\":{\"name\":\"medium_download2.png\",\"hash\":\"medium_download2_e4413b22da\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1579.92,\"url\":\"/uploads/medium_download2_e4413b22da.png\"},\"large\":{\"name\":\"large_download2.png\",\"hash\":\"large_download2_e4413b22da\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2701.73,\"url\":\"/uploads/large_download2_e4413b22da.png\"}}', 'download2_e4413b22da', '.png', 'image/png', '3153.74', '/uploads/download2_e4413b22da.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:30.023000', '2022-10-23 11:14:30.023000', 1, 1),
(24, 'download.png', 'download.png', 'download.png', 1734, 1734, '{\"thumbnail\":{\"name\":\"thumbnail_download.png\",\"hash\":\"thumbnail_download_1542a8ecdc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":53.56,\"url\":\"/uploads/thumbnail_download_1542a8ecdc.png\"},\"small\":{\"name\":\"small_download.png\",\"hash\":\"small_download_1542a8ecdc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":650.36,\"url\":\"/uploads/small_download_1542a8ecdc.png\"},\"medium\":{\"name\":\"medium_download.png\",\"hash\":\"medium_download_1542a8ecdc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1486.39,\"url\":\"/uploads/medium_download_1542a8ecdc.png\"},\"large\":{\"name\":\"large_download.png\",\"hash\":\"large_download_1542a8ecdc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":2605.21,\"url\":\"/uploads/large_download_1542a8ecdc.png\"}}', 'download_1542a8ecdc', '.png', 'image/png', '6111.72', '/uploads/download_1542a8ecdc.png', NULL, 'local', NULL, '/1', '2022-10-23 11:14:30.383000', '2022-10-23 11:14:30.383000', 1, 1),
(25, 'download.png', 'download.png', 'download.png', 1181, 709, '{\"thumbnail\":{\"name\":\"thumbnail_download.png\",\"hash\":\"thumbnail_download_b85b0626dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":147,\"size\":39.2,\"url\":\"/uploads/thumbnail_download_b85b0626dd.png\"},\"small\":{\"name\":\"small_download.png\",\"hash\":\"small_download_b85b0626dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":300,\"size\":141.43,\"url\":\"/uploads/small_download_b85b0626dd.png\"},\"medium\":{\"name\":\"medium_download.png\",\"hash\":\"medium_download_b85b0626dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":450,\"size\":298.38,\"url\":\"/uploads/medium_download_b85b0626dd.png\"},\"large\":{\"name\":\"large_download.png\",\"hash\":\"large_download_b85b0626dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":600,\"size\":508.5,\"url\":\"/uploads/large_download_b85b0626dd.png\"}}', 'download_b85b0626dd', '.png', 'image/png', '531.50', '/uploads/download_b85b0626dd.png', NULL, 'local', NULL, '/', '2022-10-23 14:07:00.179000', '2022-10-23 14:07:00.179000', 1, 1),
(26, 'downlo2ad.png', 'downlo2ad.png', 'downlo2ad.png', 612, 1088, '{\"thumbnail\":{\"name\":\"thumbnail_downlo2ad.png\",\"hash\":\"thumbnail_downlo2ad_a8b1ced0a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":88,\"height\":156,\"size\":18.93,\"url\":\"/uploads/thumbnail_downlo2ad_a8b1ced0a9.png\"},\"small\":{\"name\":\"small_downlo2ad.png\",\"hash\":\"small_downlo2ad_a8b1ced0a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":281,\"height\":500,\"size\":141.67,\"url\":\"/uploads/small_downlo2ad_a8b1ced0a9.png\"},\"medium\":{\"name\":\"medium_downlo2ad.png\",\"hash\":\"medium_downlo2ad_a8b1ced0a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":422,\"height\":750,\"size\":274.31,\"url\":\"/uploads/medium_downlo2ad_a8b1ced0a9.png\"},\"large\":{\"name\":\"large_downlo2ad.png\",\"hash\":\"large_downlo2ad_a8b1ced0a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":1000,\"size\":431.74,\"url\":\"/uploads/large_downlo2ad_a8b1ced0a9.png\"}}', 'downlo2ad_a8b1ced0a9', '.png', 'image/png', '315.67', '/uploads/downlo2ad_a8b1ced0a9.png', NULL, 'local', NULL, '/1', '2022-10-23 14:31:01.890000', '2022-10-23 14:31:01.890000', 1, 1),
(27, 'download (3).png', 'download (3).png', 'download (3).png', 1920, 1280, '{\"thumbnail\":{\"name\":\"thumbnail_download (3).png\",\"hash\":\"thumbnail_download_3_2c188370dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":96.04,\"url\":\"/uploads/thumbnail_download_3_2c188370dd.png\"},\"small\":{\"name\":\"small_download (3).png\",\"hash\":\"small_download_3_2c188370dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":400.03,\"url\":\"/uploads/small_download_3_2c188370dd.png\"},\"medium\":{\"name\":\"medium_download (3).png\",\"hash\":\"medium_download_3_2c188370dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":500,\"size\":865.62,\"url\":\"/uploads/medium_download_3_2c188370dd.png\"},\"large\":{\"name\":\"large_download (3).png\",\"hash\":\"large_download_3_2c188370dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":667,\"size\":1484.19,\"url\":\"/uploads/large_download_3_2c188370dd.png\"}}', 'download_3_2c188370dd', '.png', 'image/png', '3282.99', '/uploads/download_3_2c188370dd.png', NULL, 'local', NULL, '/1', '2022-10-23 14:31:02.377000', '2022-10-23 14:31:02.377000', 1, 1),
(28, 'download (2).png', 'download (2).png', 'download (2).png', 1365, 2048, '{\"thumbnail\":{\"name\":\"thumbnail_download (2).png\",\"hash\":\"thumbnail_download_2_be127d5830\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":104,\"height\":156,\"size\":32.41,\"url\":\"/uploads/thumbnail_download_2_be127d5830.png\"},\"small\":{\"name\":\"small_download (2).png\",\"hash\":\"small_download_2_be127d5830\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":333,\"height\":500,\"size\":239.46,\"url\":\"/uploads/small_download_2_be127d5830.png\"},\"medium\":{\"name\":\"medium_download (2).png\",\"hash\":\"medium_download_2_be127d5830\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":750,\"size\":508.05,\"url\":\"/uploads/medium_download_2_be127d5830.png\"},\"large\":{\"name\":\"large_download (2).png\",\"hash\":\"large_download_2_be127d5830\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":667,\"height\":1000,\"size\":908.68,\"url\":\"/uploads/large_download_2_be127d5830.png\"}}', 'download_2_be127d5830', '.png', 'image/png', '3477.42', '/uploads/download_2_be127d5830.png', NULL, 'local', NULL, '/1', '2022-10-23 14:31:02.778000', '2022-10-23 14:31:02.778000', 1, 1),
(29, 'download.png', 'download.png', 'download.png', 1365, 2048, '{\"thumbnail\":{\"name\":\"thumbnail_download.png\",\"hash\":\"thumbnail_download_46b4ebd1d3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":104,\"height\":156,\"size\":34.8,\"url\":\"/uploads/thumbnail_download_46b4ebd1d3.png\"},\"small\":{\"name\":\"small_download.png\",\"hash\":\"small_download_46b4ebd1d3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":333,\"height\":500,\"size\":295.14,\"url\":\"/uploads/small_download_46b4ebd1d3.png\"},\"medium\":{\"name\":\"medium_download.png\",\"hash\":\"medium_download_46b4ebd1d3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":750,\"size\":631.48,\"url\":\"/uploads/medium_download_46b4ebd1d3.png\"},\"large\":{\"name\":\"large_download.png\",\"hash\":\"large_download_46b4ebd1d3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":667,\"height\":1000,\"size\":1102.53,\"url\":\"/uploads/large_download_46b4ebd1d3.png\"}}', 'download_46b4ebd1d3', '.png', 'image/png', '3209.24', '/uploads/download_46b4ebd1d3.png', NULL, 'local', NULL, '/1', '2022-10-23 14:31:02.931000', '2022-10-23 14:31:02.931000', 1, 1),
(30, 'download (1).png', 'download (1).png', 'download (1).png', 1365, 2048, '{\"thumbnail\":{\"name\":\"thumbnail_download (1).png\",\"hash\":\"thumbnail_download_1_8630cf632c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":104,\"height\":156,\"size\":35.57,\"url\":\"/uploads/thumbnail_download_1_8630cf632c.png\"},\"small\":{\"name\":\"small_download (1).png\",\"hash\":\"small_download_1_8630cf632c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":333,\"height\":500,\"size\":310.95,\"url\":\"/uploads/small_download_1_8630cf632c.png\"},\"medium\":{\"name\":\"medium_download (1).png\",\"hash\":\"medium_download_1_8630cf632c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":750,\"size\":699.67,\"url\":\"/uploads/medium_download_1_8630cf632c.png\"},\"large\":{\"name\":\"large_download (1).png\",\"hash\":\"large_download_1_8630cf632c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":667,\"height\":1000,\"size\":1260.74,\"url\":\"/uploads/large_download_1_8630cf632c.png\"}}', 'download_1_8630cf632c', '.png', 'image/png', '4537.58', '/uploads/download_1_8630cf632c.png', NULL, 'local', NULL, '/1', '2022-10-23 14:31:03.149000', '2022-10-23 14:31:03.149000', 1, 1),
(31, 'download (4).png', 'download (4).png', 'download (4).png', 1365, 2048, '{\"thumbnail\":{\"name\":\"thumbnail_download (4).png\",\"hash\":\"thumbnail_download_4_e0eab0f1fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":104,\"height\":156,\"size\":50.37,\"url\":\"/uploads/thumbnail_download_4_e0eab0f1fa.png\"},\"small\":{\"name\":\"small_download (4).png\",\"hash\":\"small_download_4_e0eab0f1fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":333,\"height\":500,\"size\":429.7,\"url\":\"/uploads/small_download_4_e0eab0f1fa.png\"},\"medium\":{\"name\":\"medium_download (4).png\",\"hash\":\"medium_download_4_e0eab0f1fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":750,\"size\":921.4,\"url\":\"/uploads/medium_download_4_e0eab0f1fa.png\"},\"large\":{\"name\":\"large_download (4).png\",\"hash\":\"large_download_4_e0eab0f1fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":667,\"height\":1000,\"size\":1603.85,\"url\":\"/uploads/large_download_4_e0eab0f1fa.png\"}}', 'download_4_e0eab0f1fa', '.png', 'image/png', '4776.12', '/uploads/download_4_e0eab0f1fa.png', NULL, 'local', NULL, '/1', '2022-10-23 14:31:03.262000', '2022-10-23 14:31:03.262000', 1, 1),
(33, 'louis-hansel-shotsoflouis-sNIR3YxdB-s-unsplash-1-234x234.jpg', 'louis-hansel-shotsoflouis-sNIR3YxdB-s-unsplash-1-234x234.jpg', 'louis-hansel-shotsoflouis-sNIR3YxdB-s-unsplash-1-234x234.jpg', 234, 234, '{\"thumbnail\":{\"name\":\"thumbnail_louis-hansel-shotsoflouis-sNIR3YxdB-s-unsplash-1-234x234.jpg\",\"hash\":\"thumbnail_louis_hansel_shotsoflouis_s_NIR_3_Yxd_B_s_unsplash_1_234x234_901c807904\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":6.16,\"url\":\"/uploads/thumbnail_louis_hansel_shotsoflouis_s_NIR_3_Yxd_B_s_unsplash_1_234x234_901c807904.jpg\"}}', 'louis_hansel_shotsoflouis_s_NIR_3_Yxd_B_s_unsplash_1_234x234_901c807904', '.jpg', 'image/jpeg', '11.04', '/uploads/louis_hansel_shotsoflouis_s_NIR_3_Yxd_B_s_unsplash_1_234x234_901c807904.jpg', NULL, 'local', NULL, '/', '2022-10-24 18:20:46.244000', '2022-10-24 18:20:46.244000', 1, 1),
(34, 'toa-heftiba-MSxw2vpQzx4-unsplash-234x234.jpg', 'toa-heftiba-MSxw2vpQzx4-unsplash-234x234.jpg', 'toa-heftiba-MSxw2vpQzx4-unsplash-234x234.jpg', 234, 234, '{\"thumbnail\":{\"name\":\"thumbnail_toa-heftiba-MSxw2vpQzx4-unsplash-234x234.jpg\",\"hash\":\"thumbnail_toa_heftiba_M_Sxw2vp_Qzx4_unsplash_234x234_7449973fb9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":8.4,\"url\":\"/uploads/thumbnail_toa_heftiba_M_Sxw2vp_Qzx4_unsplash_234x234_7449973fb9.jpg\"}}', 'toa_heftiba_M_Sxw2vp_Qzx4_unsplash_234x234_7449973fb9', '.jpg', 'image/jpeg', '17.26', '/uploads/toa_heftiba_M_Sxw2vp_Qzx4_unsplash_234x234_7449973fb9.jpg', NULL, 'local', NULL, '/', '2022-10-24 18:23:06.167000', '2022-10-24 18:23:06.167000', 1, 1),
(35, 'gesti.jpg', 'gesti.jpg', 'gesti.jpg', 102, 147, NULL, 'gesti_cd8e44757c', '.jpg', 'image/jpeg', '3.70', '/uploads/gesti_cd8e44757c.jpg', NULL, 'local', NULL, '/', '2022-10-29 15:42:09.206000', '2022-10-29 15:42:09.206000', 1, 1),
(36, 'dow2nlo3ad.png', 'dow2nlo3ad.png', 'dow2nlo3ad.png', 750, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_dow2nlo3ad.png\",\"hash\":\"thumbnail_dow2nlo3ad_8c97c2981f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":58.29,\"url\":\"/uploads/thumbnail_dow2nlo3ad_8c97c2981f.png\"},\"small\":{\"name\":\"small_dow2nlo3ad.png\",\"hash\":\"small_dow2nlo3ad_8c97c2981f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":531.07,\"url\":\"/uploads/small_dow2nlo3ad_8c97c2981f.png\"},\"medium\":{\"name\":\"medium_dow2nlo3ad.png\",\"hash\":\"medium_dow2nlo3ad_8c97c2981f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":1137.92,\"url\":\"/uploads/medium_dow2nlo3ad_8c97c2981f.png\"}}', 'dow2nlo3ad_8c97c2981f', '.png', 'image/png', '1214.94', '/uploads/dow2nlo3ad_8c97c2981f.png', NULL, 'local', NULL, '/1', '2022-10-31 15:11:45.657000', '2022-10-31 15:11:45.657000', 1, 1),
(37, 'download.png', 'download.png', 'download.png', 1200, 800, '{\"thumbnail\":{\"name\":\"thumbnail_download.png\",\"hash\":\"thumbnail_download_8d9be57135\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":93.51,\"url\":\"/uploads/thumbnail_download_8d9be57135.png\"},\"small\":{\"name\":\"small_download.png\",\"hash\":\"small_download_8d9be57135\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":421.37,\"url\":\"/uploads/small_download_8d9be57135.png\"},\"medium\":{\"name\":\"medium_download.png\",\"hash\":\"medium_download_8d9be57135\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":500,\"size\":940.35,\"url\":\"/uploads/medium_download_8d9be57135.png\"},\"large\":{\"name\":\"large_download.png\",\"hash\":\"large_download_8d9be57135\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":667,\"size\":1659.08,\"url\":\"/uploads/large_download_8d9be57135.png\"}}', 'download_8d9be57135', '.png', 'image/png', '1889.67', '/uploads/download_8d9be57135.png', NULL, 'local', NULL, '/1', '2022-10-31 15:11:46.018000', '2022-10-31 15:11:46.018000', 1, 1),
(38, 'do2wnload.png', 'do2wnload.png', 'do2wnload.png', 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_do2wnload.png\",\"hash\":\"thumbnail_do2wnload_033da2472b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":60.02,\"url\":\"/uploads/thumbnail_do2wnload_033da2472b.png\"},\"small\":{\"name\":\"small_do2wnload.png\",\"hash\":\"small_do2wnload_033da2472b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":523.6,\"url\":\"/uploads/small_do2wnload_033da2472b.png\"},\"medium\":{\"name\":\"medium_do2wnload.png\",\"hash\":\"medium_do2wnload_033da2472b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1132.81,\"url\":\"/uploads/medium_do2wnload_033da2472b.png\"},\"large\":{\"name\":\"large_do2wnload.png\",\"hash\":\"large_do2wnload_033da2472b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":1958.47,\"url\":\"/uploads/large_do2wnload_033da2472b.png\"}}', 'do2wnload_033da2472b', '.png', 'image/png', '1853.24', '/uploads/do2wnload_033da2472b.png', NULL, 'local', NULL, '/1', '2022-10-31 15:11:46.104000', '2022-10-31 15:11:46.104000', 1, 1),
(39, 'd2ownload.png', 'd2ownload.png', 'd2ownload.png', 1920, 1282, '{\"thumbnail\":{\"name\":\"thumbnail_d2ownload.png\",\"hash\":\"thumbnail_d2ownload_71c7ef319b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":101.87,\"url\":\"/uploads/thumbnail_d2ownload_71c7ef319b.png\"},\"small\":{\"name\":\"small_d2ownload.png\",\"hash\":\"small_d2ownload_71c7ef319b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":334,\"size\":417.25,\"url\":\"/uploads/small_d2ownload_71c7ef319b.png\"},\"medium\":{\"name\":\"medium_d2ownload.png\",\"hash\":\"medium_d2ownload_71c7ef319b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":501,\"size\":881.29,\"url\":\"/uploads/medium_d2ownload_71c7ef319b.png\"},\"large\":{\"name\":\"large_d2ownload.png\",\"hash\":\"large_d2ownload_71c7ef319b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":668,\"size\":1485.01,\"url\":\"/uploads/large_d2ownload_71c7ef319b.png\"}}', 'd2ownload_71c7ef319b', '.png', 'image/png', '3075.46', '/uploads/d2ownload_71c7ef319b.png', NULL, 'local', NULL, '/1', '2022-10-31 15:11:46.569000', '2022-10-31 15:11:46.569000', 1, 1),
(40, 'downloa2d.png', 'downloa2d.png', 'downloa2d.png', 1919, 1279, '{\"thumbnail\":{\"name\":\"thumbnail_downloa2d.png\",\"hash\":\"thumbnail_downloa2d_bedc0fc5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":89.65,\"url\":\"/uploads/thumbnail_downloa2d_bedc0fc5a1.png\"},\"small\":{\"name\":\"small_downloa2d.png\",\"hash\":\"small_downloa2d_bedc0fc5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":369.81,\"url\":\"/uploads/small_downloa2d_bedc0fc5a1.png\"},\"medium\":{\"name\":\"medium_downloa2d.png\",\"hash\":\"medium_downloa2d_bedc0fc5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":500,\"size\":801.98,\"url\":\"/uploads/medium_downloa2d_bedc0fc5a1.png\"},\"large\":{\"name\":\"large_downloa2d.png\",\"hash\":\"large_downloa2d_bedc0fc5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":666,\"size\":1379.75,\"url\":\"/uploads/large_downloa2d_bedc0fc5a1.png\"}}', 'downloa2d_bedc0fc5a1', '.png', 'image/png', '3092.04', '/uploads/downloa2d_bedc0fc5a1.png', NULL, 'local', NULL, '/1', '2022-10-31 15:11:46.581000', '2022-10-31 15:11:46.581000', 1, 1),
(41, 'dow2nload.png', 'dow2nload.png', 'dow2nload.png', 1920, 1280, '{\"thumbnail\":{\"name\":\"thumbnail_dow2nload.png\",\"hash\":\"thumbnail_dow2nload_f38148a0f3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":105.69,\"url\":\"/uploads/thumbnail_dow2nload_f38148a0f3.png\"},\"small\":{\"name\":\"small_dow2nload.png\",\"hash\":\"small_dow2nload_f38148a0f3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":445.62,\"url\":\"/uploads/small_dow2nload_f38148a0f3.png\"},\"medium\":{\"name\":\"medium_dow2nload.png\",\"hash\":\"medium_dow2nload_f38148a0f3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":500,\"size\":966.25,\"url\":\"/uploads/medium_dow2nload_f38148a0f3.png\"},\"large\":{\"name\":\"large_dow2nload.png\",\"hash\":\"large_dow2nload_f38148a0f3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":667,\"size\":1668.92,\"url\":\"/uploads/large_dow2nload_f38148a0f3.png\"}}', 'dow2nload_f38148a0f3', '.png', 'image/png', '4021.83', '/uploads/dow2nload_f38148a0f3.png', NULL, 'local', NULL, '/1', '2022-10-31 15:11:46.716000', '2022-10-31 15:11:46.716000', 1, 1),
(42, 'd12ownload.png', 'd12ownload.png', 'd12ownload.png', 1600, 1200, '{\"thumbnail\":{\"name\":\"thumbnail_d12ownload.png\",\"hash\":\"thumbnail_d12ownload_cfb7d7fde8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":208,\"height\":156,\"size\":95.12,\"url\":\"/uploads/thumbnail_d12ownload_cfb7d7fde8.png\"},\"small\":{\"name\":\"small_d12ownload.png\",\"hash\":\"small_d12ownload_cfb7d7fde8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":375,\"size\":482.64,\"url\":\"/uploads/small_d12ownload_cfb7d7fde8.png\"},\"medium\":{\"name\":\"medium_d12ownload.png\",\"hash\":\"medium_d12ownload_cfb7d7fde8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":563,\"size\":1026.99,\"url\":\"/uploads/medium_d12ownload_cfb7d7fde8.png\"},\"large\":{\"name\":\"large_d12ownload.png\",\"hash\":\"large_d12ownload_cfb7d7fde8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":750,\"size\":1709.87,\"url\":\"/uploads/large_d12ownload_cfb7d7fde8.png\"}}', 'd12ownload_cfb7d7fde8', '.png', 'image/png', '2548.92', '/uploads/d12ownload_cfb7d7fde8.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:49.535000', '2022-10-31 15:16:49.535000', 1, 1),
(43, 'downloa3d.png', 'downloa3d.png', 'downloa3d.png', 1920, 2560, '{\"thumbnail\":{\"name\":\"thumbnail_downloa3d.png\",\"hash\":\"thumbnail_downloa3d_678e1a99b7\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":56.62,\"url\":\"/uploads/thumbnail_downloa3d_678e1a99b7.png\"},\"small\":{\"name\":\"small_downloa3d.png\",\"hash\":\"small_downloa3d_678e1a99b7\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":507.29,\"url\":\"/uploads/small_downloa3d_678e1a99b7.png\"},\"medium\":{\"name\":\"medium_downloa3d.png\",\"hash\":\"medium_downloa3d_678e1a99b7\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":1072.8,\"url\":\"/uploads/medium_downloa3d_678e1a99b7.png\"},\"large\":{\"name\":\"large_downloa3d.png\",\"hash\":\"large_downloa3d_678e1a99b7\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":1000,\"size\":1808.94,\"url\":\"/uploads/large_downloa3d_678e1a99b7.png\"}}', 'downloa3d_678e1a99b7', '.png', 'image/png', '5541.81', '/uploads/downloa3d_678e1a99b7.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:50.102000', '2022-10-31 15:16:50.102000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(44, 'do1wnload.png', 'do1wnload.png', 'do1wnload.png', 1920, 2560, '{\"thumbnail\":{\"name\":\"thumbnail_do1wnload.png\",\"hash\":\"thumbnail_do1wnload_d0ca7b55b5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":54.92,\"url\":\"/uploads/thumbnail_do1wnload_d0ca7b55b5.png\"},\"small\":{\"name\":\"small_do1wnload.png\",\"hash\":\"small_do1wnload_d0ca7b55b5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":494.46,\"url\":\"/uploads/small_do1wnload_d0ca7b55b5.png\"},\"medium\":{\"name\":\"medium_do1wnload.png\",\"hash\":\"medium_do1wnload_d0ca7b55b5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":1059.16,\"url\":\"/uploads/medium_do1wnload_d0ca7b55b5.png\"},\"large\":{\"name\":\"large_do1wnload.png\",\"hash\":\"large_do1wnload_d0ca7b55b5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":1000,\"size\":1802.97,\"url\":\"/uploads/large_do1wnload_d0ca7b55b5.png\"}}', 'do1wnload_d0ca7b55b5', '.png', 'image/png', '5940.91', '/uploads/do1wnload_d0ca7b55b5.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:50.713000', '2022-10-31 15:16:50.713000', 1, 1),
(45, 'down2load.png', 'down2load.png', 'down2load.png', 1920, 2560, '{\"thumbnail\":{\"name\":\"thumbnail_down2load.png\",\"hash\":\"thumbnail_down2load_349ac5b191\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":59.13,\"url\":\"/uploads/thumbnail_down2load_349ac5b191.png\"},\"small\":{\"name\":\"small_down2load.png\",\"hash\":\"small_down2load_349ac5b191\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":557.35,\"url\":\"/uploads/small_down2load_349ac5b191.png\"},\"medium\":{\"name\":\"medium_down2load.png\",\"hash\":\"medium_down2load_349ac5b191\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":1202.86,\"url\":\"/uploads/medium_down2load_349ac5b191.png\"},\"large\":{\"name\":\"large_down2load.png\",\"hash\":\"large_down2load_349ac5b191\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":1000,\"size\":2056.07,\"url\":\"/uploads/large_down2load_349ac5b191.png\"}}', 'down2load_349ac5b191', '.png', 'image/png', '6416.08', '/uploads/down2load_349ac5b191.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:50.962000', '2022-10-31 15:16:50.962000', 1, 1),
(46, 'download.png', 'download.png', 'download.png', 1440, 843, '{\"thumbnail\":{\"name\":\"thumbnail_download.png\",\"hash\":\"thumbnail_download_b55cb6862e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":98.55,\"url\":\"/uploads/thumbnail_download_b55cb6862e.png\"},\"small\":{\"name\":\"small_download.png\",\"hash\":\"small_download_b55cb6862e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":389.59,\"url\":\"/uploads/small_download_b55cb6862e.png\"},\"medium\":{\"name\":\"medium_download.png\",\"hash\":\"medium_download_b55cb6862e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":439,\"size\":847,\"url\":\"/uploads/medium_download_b55cb6862e.png\"},\"large\":{\"name\":\"large_download.png\",\"hash\":\"large_download_b55cb6862e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":585,\"size\":1461.29,\"url\":\"/uploads/large_download_b55cb6862e.png\"}}', 'download_b55cb6862e', '.png', 'image/png', '2020.46', '/uploads/download_b55cb6862e.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:51.154000', '2022-10-31 15:16:51.154000', 1, 1),
(47, 'downl22oad.png', 'downl22oad.png', 'downl22oad.png', 1920, 2560, '{\"thumbnail\":{\"name\":\"thumbnail_downl22oad.png\",\"hash\":\"thumbnail_downl22oad_7bd7e22cba\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":54.4,\"url\":\"/uploads/thumbnail_downl22oad_7bd7e22cba.png\"},\"small\":{\"name\":\"small_downl22oad.png\",\"hash\":\"small_downl22oad_7bd7e22cba\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":472.91,\"url\":\"/uploads/small_downl22oad_7bd7e22cba.png\"},\"medium\":{\"name\":\"medium_downl22oad.png\",\"hash\":\"medium_downl22oad_7bd7e22cba\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":1013.43,\"url\":\"/uploads/medium_downl22oad_7bd7e22cba.png\"},\"large\":{\"name\":\"large_downl22oad.png\",\"hash\":\"large_downl22oad_7bd7e22cba\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":1000,\"size\":1747.88,\"url\":\"/uploads/large_downl22oad_7bd7e22cba.png\"}}', 'downl22oad_7bd7e22cba', '.png', 'image/png', '6432.01', '/uploads/downl22oad_7bd7e22cba.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:51.440000', '2022-10-31 15:16:51.440000', 1, 1),
(48, 'd2ownload.png', 'd2ownload.png', 'd2ownload.png', 1200, 1600, '{\"thumbnail\":{\"name\":\"thumbnail_d2ownload.png\",\"hash\":\"thumbnail_d2ownload_ac066c8682\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":53.37,\"url\":\"/uploads/thumbnail_d2ownload_ac066c8682.png\"},\"small\":{\"name\":\"small_d2ownload.png\",\"hash\":\"small_d2ownload_ac066c8682\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":458.43,\"url\":\"/uploads/small_d2ownload_ac066c8682.png\"},\"medium\":{\"name\":\"medium_d2ownload.png\",\"hash\":\"medium_d2ownload_ac066c8682\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":973.64,\"url\":\"/uploads/medium_d2ownload_ac066c8682.png\"},\"large\":{\"name\":\"large_d2ownload.png\",\"hash\":\"large_d2ownload_ac066c8682\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":1000,\"size\":1614.22,\"url\":\"/uploads/large_d2ownload_ac066c8682.png\"}}', 'd2ownload_ac066c8682', '.png', 'image/png', '2399.61', '/uploads/d2ownload_ac066c8682.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:51.498000', '2022-10-31 15:16:51.498000', 1, 1),
(49, 'dow323nload.png', 'dow323nload.png', 'dow323nload.png', 1920, 2560, '{\"thumbnail\":{\"name\":\"thumbnail_dow323nload.png\",\"hash\":\"thumbnail_dow323nload_9e1661e652\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":117,\"height\":156,\"size\":57.8,\"url\":\"/uploads/thumbnail_dow323nload_9e1661e652.png\"},\"small\":{\"name\":\"small_dow323nload.png\",\"hash\":\"small_dow323nload_9e1661e652\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":375,\"height\":500,\"size\":532.74,\"url\":\"/uploads/small_dow323nload_9e1661e652.png\"},\"medium\":{\"name\":\"medium_dow323nload.png\",\"hash\":\"medium_dow323nload_9e1661e652\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":563,\"height\":750,\"size\":1164.35,\"url\":\"/uploads/medium_dow323nload_9e1661e652.png\"},\"large\":{\"name\":\"large_dow323nload.png\",\"hash\":\"large_dow323nload_9e1661e652\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":1000,\"size\":2042.5,\"url\":\"/uploads/large_dow323nload_9e1661e652.png\"}}', 'dow323nload_9e1661e652', '.png', 'image/png', '8380.69', '/uploads/dow323nload_9e1661e652.png', NULL, 'local', NULL, '/1', '2022-10-31 15:16:51.836000', '2022-10-31 15:16:51.836000', 1, 1),
(50, 'do2wnload.png', 'do2wnload.png', 'do2wnload.png', 1920, 1278, '{\"thumbnail\":{\"name\":\"thumbnail_do2wnload.png\",\"hash\":\"thumbnail_do2wnload_c8bb8eb375\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":88.32,\"url\":\"/uploads/thumbnail_do2wnload_c8bb8eb375.png\"},\"small\":{\"name\":\"small_do2wnload.png\",\"hash\":\"small_do2wnload_c8bb8eb375\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":360.2,\"url\":\"/uploads/small_do2wnload_c8bb8eb375.png\"},\"medium\":{\"name\":\"medium_do2wnload.png\",\"hash\":\"medium_do2wnload_c8bb8eb375\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":499,\"size\":757.77,\"url\":\"/uploads/medium_do2wnload_c8bb8eb375.png\"},\"large\":{\"name\":\"large_do2wnload.png\",\"hash\":\"large_do2wnload_c8bb8eb375\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":666,\"size\":1277.64,\"url\":\"/uploads/large_do2wnload_c8bb8eb375.png\"}}', 'do2wnload_c8bb8eb375', '.png', 'image/png', '2701.89', '/uploads/do2wnload_c8bb8eb375.png', NULL, 'local', NULL, '/1', '2022-10-31 15:21:09.800000', '2022-10-31 15:21:09.800000', 1, 1),
(51, 'downlo123ad.png', 'downlo123ad.png', 'downlo123ad.png', 1920, 1282, '{\"thumbnail\":{\"name\":\"thumbnail_downlo123ad.png\",\"hash\":\"thumbnail_downlo123ad_49d170d5dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":94.68,\"url\":\"/uploads/thumbnail_downlo123ad_49d170d5dd.png\"},\"small\":{\"name\":\"small_downlo123ad.png\",\"hash\":\"small_downlo123ad_49d170d5dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":334,\"size\":393.48,\"url\":\"/uploads/small_downlo123ad_49d170d5dd.png\"},\"medium\":{\"name\":\"medium_downlo123ad.png\",\"hash\":\"medium_downlo123ad_49d170d5dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":501,\"size\":832.85,\"url\":\"/uploads/medium_downlo123ad_49d170d5dd.png\"},\"large\":{\"name\":\"large_downlo123ad.png\",\"hash\":\"large_downlo123ad_49d170d5dd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":668,\"size\":1399.53,\"url\":\"/uploads/large_downlo123ad_49d170d5dd.png\"}}', 'downlo123ad_49d170d5dd', '.png', 'image/png', '2496.05', '/uploads/downlo123ad_49d170d5dd.png', NULL, 'local', NULL, '/1', '2022-10-31 15:21:10.004000', '2022-10-31 15:21:10.004000', 1, 1),
(52, 'download.png', 'download.png', 'download.png', 1920, 1278, '{\"thumbnail\":{\"name\":\"thumbnail_download.png\",\"hash\":\"thumbnail_download_582880167c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":89.19,\"url\":\"/uploads/thumbnail_download_582880167c.png\"},\"small\":{\"name\":\"small_download.png\",\"hash\":\"small_download_582880167c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":364.75,\"url\":\"/uploads/small_download_582880167c.png\"},\"medium\":{\"name\":\"medium_download.png\",\"hash\":\"medium_download_582880167c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":499,\"size\":775.05,\"url\":\"/uploads/medium_download_582880167c.png\"},\"large\":{\"name\":\"large_download.png\",\"hash\":\"large_download_582880167c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":666,\"size\":1321.1,\"url\":\"/uploads/large_download_582880167c.png\"}}', 'download_582880167c', '.png', 'image/png', '2924.53', '/uploads/download_582880167c.png', NULL, 'local', NULL, '/1', '2022-10-31 15:21:10.136000', '2022-10-31 15:21:10.136000', 1, 1),
(53, 'do1wnload.png', 'do1wnload.png', 'do1wnload.png', 1920, 1282, '{\"thumbnail\":{\"name\":\"thumbnail_do1wnload.png\",\"hash\":\"thumbnail_do1wnload_9849c35d2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":104.3,\"url\":\"/uploads/thumbnail_do1wnload_9849c35d2e.png\"},\"small\":{\"name\":\"small_do1wnload.png\",\"hash\":\"small_do1wnload_9849c35d2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":334,\"size\":447.62,\"url\":\"/uploads/small_do1wnload_9849c35d2e.png\"},\"medium\":{\"name\":\"medium_do1wnload.png\",\"hash\":\"medium_do1wnload_9849c35d2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":501,\"size\":964.2,\"url\":\"/uploads/medium_do1wnload_9849c35d2e.png\"},\"large\":{\"name\":\"large_do1wnload.png\",\"hash\":\"large_do1wnload_9849c35d2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":668,\"size\":1642.45,\"url\":\"/uploads/large_do1wnload_9849c35d2e.png\"}}', 'do1wnload_9849c35d2e', '.png', 'image/png', '2957.51', '/uploads/do1wnload_9849c35d2e.png', NULL, 'local', NULL, '/1', '2022-10-31 15:21:10.460000', '2022-10-31 15:21:10.460000', 1, 1),
(54, 'downl45oad.png', 'downl45oad.png', 'downl45oad.png', 1920, 1280, '{\"thumbnail\":{\"name\":\"thumbnail_downl45oad.png\",\"hash\":\"thumbnail_downl45oad_945efafd9e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":234,\"height\":156,\"size\":99.96,\"url\":\"/uploads/thumbnail_downl45oad_945efafd9e.png\"},\"small\":{\"name\":\"small_downl45oad.png\",\"hash\":\"small_downl45oad_945efafd9e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":333,\"size\":434.39,\"url\":\"/uploads/small_downl45oad_945efafd9e.png\"},\"medium\":{\"name\":\"medium_downl45oad.png\",\"hash\":\"medium_downl45oad_945efafd9e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":500,\"size\":957.17,\"url\":\"/uploads/medium_downl45oad_945efafd9e.png\"},\"large\":{\"name\":\"large_downl45oad.png\",\"hash\":\"large_downl45oad_945efafd9e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":667,\"size\":1667.63,\"url\":\"/uploads/large_downl45oad_945efafd9e.png\"}}', 'downl45oad_945efafd9e', '.png', 'image/png', '3982.78', '/uploads/downl45oad_945efafd9e.png', NULL, 'local', NULL, '/1', '2022-10-31 15:21:10.570000', '2022-10-31 15:21:10.570000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 5, 1),
(4, 6, 1),
(5, 7, 1),
(6, 8, 1),
(7, 9, 1),
(8, 10, 1),
(9, 11, 1),
(10, 12, 1),
(11, 13, 1),
(12, 14, 1),
(13, 15, 1),
(14, 16, 1),
(15, 17, 1),
(16, 18, 1),
(17, 19, 1),
(18, 20, 1),
(19, 21, 1),
(20, 22, 1),
(21, 23, 1),
(22, 24, 1),
(23, 26, 1),
(24, 27, 1),
(25, 28, 1),
(26, 29, 1),
(27, 30, 1),
(28, 31, 1),
(29, 36, 1),
(30, 37, 1),
(31, 38, 1),
(32, 39, 1),
(33, 40, 1),
(34, 41, 1),
(35, 42, 1),
(36, 43, 1),
(37, 44, 1),
(38, 45, 1),
(39, 46, 1),
(40, 47, 1),
(41, 48, 1),
(42, 49, 1),
(43, 50, 1),
(44, 51, 1),
(45, 52, 1),
(46, 53, 1),
(47, 54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(6, 3, 1, 'api::listing.listing', 'gallery', 1),
(7, 5, 1, 'api::listing.listing', 'gallery', 2),
(8, 6, 1, 'api::listing.listing', 'gallery', 3),
(9, 4, 1, 'api::listing.listing', 'gallery', 4),
(10, 1, 1, 'plugin::users-permissions.user', 'avatar', 1),
(44, 26, 3, 'api::listing.listing', 'gallery', 1),
(45, 30, 3, 'api::listing.listing', 'gallery', 2),
(46, 31, 3, 'api::listing.listing', 'gallery', 3),
(47, 27, 3, 'api::listing.listing', 'gallery', 4),
(48, 29, 3, 'api::listing.listing', 'gallery', 5),
(49, 28, 3, 'api::listing.listing', 'gallery', 6),
(50, 25, 3, 'api::listing.listing', 'gallery', 7),
(52, 34, 2, 'api::type.type', 'image', 1),
(55, 33, 1, 'api::type.type', 'image', 1),
(56, 33, 3, 'api::type.type', 'image', 1),
(76, 24, 2, 'api::listing.listing', 'gallery', 1),
(77, 7, 2, 'api::listing.listing', 'gallery', 2),
(78, 8, 2, 'api::listing.listing', 'gallery', 3),
(79, 9, 2, 'api::listing.listing', 'gallery', 4),
(80, 10, 2, 'api::listing.listing', 'gallery', 5),
(81, 11, 2, 'api::listing.listing', 'gallery', 6),
(82, 12, 2, 'api::listing.listing', 'gallery', 7),
(83, 13, 2, 'api::listing.listing', 'gallery', 8),
(84, 14, 2, 'api::listing.listing', 'gallery', 9),
(85, 15, 2, 'api::listing.listing', 'gallery', 10),
(86, 16, 2, 'api::listing.listing', 'gallery', 11),
(87, 17, 2, 'api::listing.listing', 'gallery', 12),
(88, 18, 2, 'api::listing.listing', 'gallery', 13),
(89, 19, 2, 'api::listing.listing', 'gallery', 14),
(90, 20, 2, 'api::listing.listing', 'gallery', 15),
(91, 21, 2, 'api::listing.listing', 'gallery', 16),
(92, 22, 2, 'api::listing.listing', 'gallery', 17),
(93, 23, 2, 'api::listing.listing', 'gallery', 18),
(94, 41, 4, 'api::listing.listing', 'gallery', 1),
(95, 37, 4, 'api::listing.listing', 'gallery', 2),
(96, 38, 4, 'api::listing.listing', 'gallery', 3),
(97, 36, 4, 'api::listing.listing', 'gallery', 4),
(98, 39, 4, 'api::listing.listing', 'gallery', 5),
(99, 40, 4, 'api::listing.listing', 'gallery', 6),
(108, 46, 5, 'api::listing.listing', 'gallery', 1),
(109, 42, 5, 'api::listing.listing', 'gallery', 2),
(110, 43, 5, 'api::listing.listing', 'gallery', 3),
(111, 44, 5, 'api::listing.listing', 'gallery', 4),
(112, 45, 5, 'api::listing.listing', 'gallery', 5),
(113, 47, 5, 'api::listing.listing', 'gallery', 6),
(114, 48, 5, 'api::listing.listing', 'gallery', 7),
(115, 49, 5, 'api::listing.listing', 'gallery', 8),
(121, 50, 6, 'api::listing.listing', 'gallery', 1),
(122, 54, 6, 'api::listing.listing', 'gallery', 2),
(123, 51, 6, 'api::listing.listing', 'gallery', 3),
(124, 52, 6, 'api::listing.listing', 'gallery', 4),
(125, 53, 6, 'api::listing.listing', 'gallery', 5);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-10-22 12:11:58.195000', '2022-10-22 12:11:58.195000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `claimed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `description`, `slug`, `telephone`, `phone`, `delivery`, `location`, `claimed`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Barista Cafe', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Animi tempora, mollitia minus modi laudantium adipisci maiores natus porro harum quae facere iure placeat soluta magni perferendis. Voluptatem sit voluptas molestiae rem ab at magnam inventore, enim possimus aut recusandae deleniti laudantium vitae tempore quasi, eos sunt saepe veniam ducimus dolor sint, illo et. Deleniti maiores nemo unde odio iure quae consequatur voluptatum itaque alias commodi atque totam quidem modi voluptas tenetur quia quibusdam odit assumenda architecto eos quam earum rerum, nisi dolor. Amet, maiores minima sit eligendi libero illo dolorem, fugiat nulla beatae enim, soluta doloremque consequatur consequuntur culpa qui.', 'barista-cafe', '2623020060', '6989508033', 1, 'Σισινη, Γιαννακόπουλου και, Γαστούνη 273 00, Ελλάδα', 1, '2022-10-22 12:42:36.227000', '2022-10-22 12:47:00.057000', '2022-10-22 12:42:37.423000', 1, 1, 'en'),
(2, 'La Bohème All Day Coffee Bar', 'Χώρος που σε ταξιδεύει ! Αρωματικός καφές , Μοναδικά ροφήματα , Signature Cocktails , Τα καλύτερα Pancakes , Πεντανόστιμο και Δυναμωτικό Brunch κάθε Σαββατοκύριακο και πολλά Events που πραγματοποιούνται θα σας κάνουν να αγαπήσετε αυτό που έχουμε δημιουργήσει με σκοπό το διαφορετικό !', 'la-boheme-all-day-coffee-bar', '2623094276', '6974682451', 1, 'ΝΕΟΧΩΡΙΟΥ, Κυλλήνη 270 53, Ελλάδα', 1, '2022-10-23 11:17:06.612000', '2022-10-29 15:42:53.879000', '2022-10-23 11:17:16.884000', 1, 1, 'en'),
(3, 'My Friend\'s Cafe', 'Καφέ Μπαρ στο κέντρο της πόλης.', 'my-friend-s-cafe', '2623020060', '6989508033', 0, 'Σισινη, Γαστούνη 273 00, Ελλάδα', 0, '2022-10-23 14:03:59.234000', '2022-10-23 14:32:20.539000', '2022-10-23 14:04:08.070000', 1, 1, 'en'),
(4, 'Street 17', 'Καφέ Μπαρ στο Πεζόδρομο της Αμαλιάδας.', 'street-17', NULL, ' 6984691130', 0, ' Οθωνος Αμαλίας 17, Αμαλιάδα 272 00, Ελλάδα', 1, '2022-10-31 15:12:53.944000', '2022-10-31 15:12:55.416000', '2022-10-31 15:12:55.412000', 1, 1, 'en'),
(5, 'Ψητοπωλείο Μπούγος', 'Καλώς ήρθατε στην Παραδοσιακή ταβέρνα μας με ψητά από το 1994, πιστή στην ποιότητα και στις απλές γεύσεις. Θα μας βρείτε στην κεντρική πλατεία της Γαστούνης καθημερινά με φρέσκα προϊόντα.\n\nαγαπημένα πιάτα: σουβλάκι χοιρινό, κοντοσούβλι και γύρος\n\nWelcome to our local tavern “Bougos”with the best grill food, from 1994. Our priority is the quality in every simple taste. You can find us in the central square of Gastouni every day from 19:00 to 01:00.\n\nspecial plates: souvlaki, kontosouvli, gyros pork', 'p-sitopoleio-mpoygos', ' 2623033504', NULL, 1, 'Γεωρ. Σισινη 60, Γαστούνη 273 00, Ελλάδα', 1, '2022-10-31 15:16:40.407000', '2022-10-31 15:17:19.176000', '2022-10-31 15:17:19.172000', 1, 1, 'en'),
(6, 'Sinner Cafe – Bar Pezodromos Amaliadas', 'Καφέ - Μπάρ στο πεζόδρομο Αμαλιάδας', 'sinner-cafe-bar-pezodromos-amaliadas', NULL, ' 6970618183', 0, ' Οθωνος Αμαλίας 25, Αμαλιάδα 272 00, Ελλάδα', 0, '2022-10-31 15:20:57.611000', '2022-10-31 15:21:22.171000', '2022-10-31 15:21:22.168000', 1, 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `listings_amenities_links`
--

CREATE TABLE `listings_amenities_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED DEFAULT NULL,
  `amenity_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings_amenities_links`
--

INSERT INTO `listings_amenities_links` (`id`, `listing_id`, `amenity_id`) VALUES
(9, 1, 1),
(10, 1, 2),
(11, 1, 4),
(12, 1, 5),
(13, 1, 3),
(32, 3, 2),
(33, 3, 5),
(34, 3, 6),
(41, 2, 1),
(42, 2, 2),
(43, 2, 3),
(44, 2, 4),
(45, 2, 5),
(46, 2, 6),
(47, 4, 5),
(48, 4, 1),
(59, 5, 1),
(60, 5, 2),
(61, 5, 3),
(62, 5, 5),
(63, 5, 6),
(68, 6, 5),
(69, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `listings_components`
--

CREATE TABLE `listings_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings_components`
--

INSERT INTO `listings_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(17, 1, 2, 'openhours.open-hours', 'Hours', 1),
(18, 1, 1, 'openhours.open-hours', 'Hours', 2),
(19, 1, 3, 'openhours.open-hours', 'Hours', 3),
(20, 1, 4, 'openhours.open-hours', 'Hours', 4),
(21, 1, 5, 'openhours.open-hours', 'Hours', 5),
(22, 1, 7, 'openhours.open-hours', 'Hours', 6),
(23, 1, 6, 'openhours.open-hours', 'Hours', 7),
(24, 1, 1, 'location.geo', '_geo', 1),
(39, 2, 8, 'openhours.open-hours', 'Hours', 1),
(40, 2, 9, 'openhours.open-hours', 'Hours', 2),
(41, 2, 10, 'openhours.open-hours', 'Hours', 3),
(42, 2, 11, 'openhours.open-hours', 'Hours', 4),
(43, 2, 12, 'openhours.open-hours', 'Hours', 5),
(44, 2, 13, 'openhours.open-hours', 'Hours', 6),
(45, 2, 14, 'openhours.open-hours', 'Hours', 7),
(46, 4, 2, 'location.geo', '_geo', 1),
(51, 5, 15, 'openhours.open-hours', 'Hours', 1),
(52, 5, 3, 'location.geo', '_geo', 1),
(55, 6, 4, 'location.geo', '_geo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `listings_localizations_links`
--

CREATE TABLE `listings_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_listing_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listings_type_links`
--

CREATE TABLE `listings_type_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings_type_links`
--

INSERT INTO `listings_type_links` (`id`, `listing_id`, `type_id`) VALUES
(16, 1, 1),
(18, 3, 1),
(20, 2, 1),
(21, 4, 1),
(24, 5, 2),
(27, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `listings_user_links`
--

CREATE TABLE `listings_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings_user_links`
--

INSERT INTO `listings_user_links` (`id`, `listing_id`, `user_id`) VALUES
(4, 1, 1),
(10, 3, 1),
(12, 2, 1),
(13, 4, 1),
(16, 5, 1),
(19, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(3, 'BuzzyFester Token', 'Public API Key for Buzzy Fester', 'custom', '49bb1cf280b41d77dbe7829a4ce0ebd6ab3eba7cd8d8e2055114284367d0fd26f4bf08c8fd89a6ac64c04e4a5e6ffb88c8286ff0c54529549c52b035b8acc095', '2022-11-02 20:19:37.309000', NULL, NULL, '2022-11-01 14:39:58.816000', '2022-11-02 20:19:37.310000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'api::amenity.amenity.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(2, 'api::amenity.amenity.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(3, 'api::article.article.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(4, 'api::article.article.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(5, 'api::suggested-category.suggested-category.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(6, 'api::comment.comment.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(7, 'api::listing.listing.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(8, 'api::type.type.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(9, 'api::comment.comment.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(10, 'api::category.category.find', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(11, 'api::category.category.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(12, 'api::suggested-category.suggested-category.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(13, 'api::listing.listing.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(14, 'api::type.type.findOne', '2022-10-30 10:06:10.617000', '2022-10-30 10:06:10.617000', NULL, NULL),
(15, 'plugin::upload.content-api.findOne', '2022-10-30 10:31:28.750000', '2022-10-30 10:31:28.750000', NULL, NULL),
(16, 'plugin::upload.content-api.find', '2022-10-30 10:31:28.750000', '2022-10-30 10:31:28.750000', NULL, NULL),
(17, 'plugin::users-permissions.user.find', '2022-10-30 10:31:51.796000', '2022-10-30 10:31:51.796000', NULL, NULL),
(18, 'plugin::users-permissions.user.findOne', '2022-10-30 10:31:51.796000', '2022-10-30 10:31:51.796000', NULL, NULL),
(19, 'plugin::users-permissions.auth.register', '2022-10-30 10:32:49.686000', '2022-10-30 10:32:49.686000', NULL, NULL),
(22, 'plugin::users-permissions.auth.connect', '2022-10-30 10:33:26.861000', '2022-10-30 10:33:26.861000', NULL, NULL),
(23, 'plugin::users-permissions.auth.emailConfirmation', '2022-10-30 10:33:58.590000', '2022-10-30 10:33:58.590000', NULL, NULL),
(24, 'plugin::users-permissions.auth.forgotPassword', '2022-10-30 10:33:58.590000', '2022-10-30 10:33:58.590000', NULL, NULL),
(25, 'plugin::users-permissions.auth.resetPassword', '2022-10-30 10:33:58.591000', '2022-10-30 10:33:58.591000', NULL, NULL),
(26, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-10-30 10:33:58.591000', '2022-10-30 10:33:58.591000', NULL, NULL),
(27, 'plugin::users-permissions.auth.callback', '2022-10-30 10:33:58.591000', '2022-10-30 10:33:58.591000', NULL, NULL),
(29, 'plugin::users-permissions.user.me', '2022-10-30 10:34:41.489000', '2022-10-30 10:34:41.489000', NULL, NULL),
(33, 'api::listing.listing.findOne', '2022-11-01 14:39:58.822000', '2022-11-01 14:39:58.822000', NULL, NULL),
(34, 'plugin::users-permissions.auth.callback', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(35, 'plugin::users-permissions.auth.resetPassword', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(36, 'plugin::users-permissions.auth.forgotPassword', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(37, 'plugin::users-permissions.user.findOne', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(38, 'plugin::users-permissions.user.find', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(39, 'plugin::users-permissions.auth.register', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(40, 'plugin::users-permissions.auth.connect', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(41, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(43, 'plugin::users-permissions.auth.emailConfirmation', '2022-11-01 14:42:39.270000', '2022-11-01 14:42:39.270000', NULL, NULL),
(44, 'api::amenity.amenity.find', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(45, 'api::amenity.amenity.findOne', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(46, 'api::article.article.find', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(47, 'api::article.article.findOne', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(48, 'api::category.category.find', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(49, 'api::category.category.findOne', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(50, 'api::comment.comment.find', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(51, 'api::comment.comment.findOne', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(53, 'api::suggested-category.suggested-category.find', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(54, 'api::suggested-category.suggested-category.findOne', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(55, 'api::type.type.find', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(56, 'api::type.type.findOne', '2022-11-01 16:05:34.275000', '2022-11-01 16:05:34.275000', NULL, NULL),
(61, 'plugin::users-permissions.role.find', '2022-11-01 16:43:02.696000', '2022-11-01 16:43:02.696000', NULL, NULL),
(62, 'plugin::users-permissions.role.findOne', '2022-11-01 16:43:02.696000', '2022-11-01 16:43:02.696000', NULL, NULL),
(63, 'api::listing.listing.find', '2022-11-01 16:43:21.841000', '2022-11-01 16:43:21.841000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`) VALUES
(33, 33, 3),
(34, 35, 3),
(35, 34, 3),
(36, 36, 3),
(37, 37, 3),
(38, 43, 3),
(39, 38, 3),
(40, 41, 3),
(42, 40, 3),
(43, 39, 3),
(44, 44, 3),
(45, 45, 3),
(46, 46, 3),
(47, 47, 3),
(48, 48, 3),
(49, 50, 3),
(50, 53, 3),
(51, 54, 3),
(52, 51, 3),
(53, 49, 3),
(55, 55, 3),
(56, 56, 3),
(61, 61, 3),
(62, 62, 3),
(63, 63, 3);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"integer\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"integer\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"listings\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::listing.listing\",\"mappedBy\":\"user\"},\"comments\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::comment.comment\",\"mappedBy\":\"users_permissions_user\"},\"first_name\":{\"type\":\"string\"},\"last_name\":{\"type\":\"string\"},\"telephone\":{\"type\":\"string\",\"maxLength\":14},\"phone\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"listings\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::listing.listing\",\"mappedBy\":\"user\"},\"comments\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::comment.comment\",\"mappedBy\":\"users_permissions_user\"},\"first_name\":{\"type\":\"string\"},\"last_name\":{\"type\":\"string\"},\"telephone\":{\"type\":\"string\",\"maxLength\":14},\"phone\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"api::amenity.amenity\":{\"kind\":\"collectionType\",\"collectionName\":\"amenities\",\"info\":{\"singularName\":\"amenity\",\"pluralName\":\"amenities\",\"displayName\":\"amenity\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"icon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"Slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"name\"},\"svg\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"listings\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::listing.listing\",\"mappedBy\":\"amenities\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::amenity.amenity\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"amenities\",\"info\":{\"singularName\":\"amenity\",\"pluralName\":\"amenities\",\"displayName\":\"amenity\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"icon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"Slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"name\"},\"svg\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"listings\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::listing.listing\",\"mappedBy\":\"amenities\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"amenity\",\"connection\":\"default\",\"uid\":\"api::amenity.amenity\",\"apiName\":\"amenity\",\"globalId\":\"Amenity\",\"actions\":{},\"lifecycles\":{}},\"api::article.article\":{\"kind\":\"collectionType\",\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"article\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"body\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"likes\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"biginteger\",\"default\":\"0\"},\"views\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"biginteger\",\"default\":\"0\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"article\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"body\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"likes\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"biginteger\",\"default\":\"0\"},\"views\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"biginteger\",\"default\":\"0\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"article\",\"connection\":\"default\",\"uid\":\"api::article.article\",\"apiName\":\"article\",\"globalId\":\"Article\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::comment.comment\":{\"kind\":\"collectionType\",\"collectionName\":\"comments\",\"info\":{\"singularName\":\"comment\",\"pluralName\":\"comments\",\"displayName\":\"comments\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"comment\":{\"type\":\"text\",\"required\":true,\"maxLength\":1000,\"minLength\":20},\"rating\":{\"type\":\"decimal\",\"default\":0},\"listing\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::listing.listing\",\"inversedBy\":\"comments\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"comments\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"comments\",\"info\":{\"singularName\":\"comment\",\"pluralName\":\"comments\",\"displayName\":\"comments\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"comment\":{\"type\":\"text\",\"required\":true,\"maxLength\":1000,\"minLength\":20},\"rating\":{\"type\":\"decimal\",\"default\":0},\"listing\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::listing.listing\",\"inversedBy\":\"comments\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"comments\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"comment\",\"connection\":\"default\",\"uid\":\"api::comment.comment\",\"apiName\":\"comment\",\"globalId\":\"Comment\",\"actions\":{},\"lifecycles\":{}},\"api::listing.listing\":{\"kind\":\"collectionType\",\"collectionName\":\"listings\",\"info\":{\"singularName\":\"listing\",\"pluralName\":\"listings\",\"displayName\":\"listing\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"maxLength\":250},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"required\":true},\"gallery\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"Slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"title\"},\"amenities\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::amenity.amenity\",\"inversedBy\":\"listings\"},\"telephone\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"required\":false,\"maxLength\":120,\"minLength\":10},\"phone\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":false,\"maxLength\":120,\"minLength\":10},\"delivery\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"required\":true},\"location\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"claimed\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":false,\"required\":false},\"type\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::type.type\",\"inversedBy\":\"listings\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"listings\"},\"Hours\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"openhours.open-hours\"},\"comments\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::comment.comment\",\"mappedBy\":\"listing\"},\"_geo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"location.geo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::listing.listing\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"listings\",\"info\":{\"singularName\":\"listing\",\"pluralName\":\"listings\",\"displayName\":\"listing\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"maxLength\":250},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"required\":true},\"gallery\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"Slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"title\"},\"amenities\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::amenity.amenity\",\"inversedBy\":\"listings\"},\"telephone\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"required\":false,\"maxLength\":120,\"minLength\":10},\"phone\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":false,\"maxLength\":120,\"minLength\":10},\"delivery\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"required\":true},\"location\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"claimed\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":false,\"required\":false},\"type\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::type.type\",\"inversedBy\":\"listings\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"listings\"},\"Hours\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"openhours.open-hours\"},\"comments\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::comment.comment\",\"mappedBy\":\"listing\"},\"_geo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"location.geo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"listing\",\"connection\":\"default\",\"uid\":\"api::listing.listing\",\"apiName\":\"listing\",\"globalId\":\"Listing\",\"actions\":{},\"lifecycles\":{}},\"api::suggested-category.suggested-category\":{\"kind\":\"collectionType\",\"collectionName\":\"suggested_categories\",\"info\":{\"singularName\":\"suggested-category\",\"pluralName\":\"suggested-categories\",\"displayName\":\"suggested category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"svg\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"suggested_categories\",\"info\":{\"singularName\":\"suggested-category\",\"pluralName\":\"suggested-categories\",\"displayName\":\"suggested category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false},\"svg\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"suggested-category\",\"connection\":\"default\",\"uid\":\"api::suggested-category.suggested-category\",\"apiName\":\"suggested-category\",\"globalId\":\"SuggestedCategory\",\"actions\":{},\"lifecycles\":{}},\"api::type.type\":{\"kind\":\"collectionType\",\"collectionName\":\"types\",\"info\":{\"singularName\":\"type\",\"pluralName\":\"types\",\"displayName\":\"type\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"listings\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::listing.listing\",\"mappedBy\":\"type\"},\"svg\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::type.type\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"types\",\"info\":{\"singularName\":\"type\",\"pluralName\":\"types\",\"displayName\":\"type\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"listings\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::listing.listing\",\"mappedBy\":\"type\"},\"svg\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"type\",\"connection\":\"default\",\"uid\":\"api::type.type\",\"apiName\":\"type\",\"globalId\":\"Type\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_components::location.geo', '{\"uid\":\"location.geo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"lng\":{\"edit\":{\"label\":\"lng\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lng\",\"searchable\":true,\"sortable\":true}},\"lat\":{\"edit\":{\"label\":\"lat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lat\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"lng\",\"lat\"],\"edit\":[[{\"name\":\"lng\",\"size\":4},{\"name\":\"lat\",\"size\":4}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_components::openhours.open-hours', '{\"uid\":\"openhours.open-hours\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"day_interval\",\"defaultSortBy\":\"day_interval\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"day_interval\":{\"edit\":{\"label\":\"day_interval\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"day_interval\",\"searchable\":true,\"sortable\":true}},\"opening_hour\":{\"edit\":{\"label\":\"opening_hour\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"opening_hour\",\"searchable\":true,\"sortable\":true}},\"closing_hour\":{\"edit\":{\"label\":\"closing_hour\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"closing_hour\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"day_interval\",\"opening_hour\",\"closing_hour\"],\"edit\":[[{\"name\":\"day_interval\",\"size\":6},{\"name\":\"opening_hour\",\"size\":6}],[{\"name\":\"closing_hour\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"editRelations\":[\"token\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"listings\":{\"edit\":{\"label\":\"listings\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"listings\",\"searchable\":false,\"sortable\":false}},\"comments\":{\"edit\":{\"label\":\"comments\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"comments\",\"searchable\":false,\"sortable\":false}},\"first_name\":{\"edit\":{\"label\":\"first_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"first_name\",\"searchable\":true,\"sortable\":true}},\"last_name\":{\"edit\":{\"label\":\"last_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"last_name\",\"searchable\":true,\"sortable\":true}},\"telephone\":{\"edit\":{\"label\":\"telephone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"telephone\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\",\"listings\",\"comments\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"first_name\",\"size\":6},{\"name\":\"last_name\",\"size\":6}],[{\"name\":\"telephone\",\"size\":6},{\"name\":\"phone\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::api::amenity.amenity', '{\"uid\":\"api::amenity.amenity\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"svg\":{\"edit\":{\"label\":\"svg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"svg\",\"searchable\":true,\"sortable\":true}},\"listings\":{\"edit\":{\"label\":\"listings\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"listings\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"icon\",\"Slug\"],\"editRelations\":[\"listings\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"Slug\",\"size\":6},{\"name\":\"svg\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"folder\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"editRelations\":[\"parent\",\"children\",\"files\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::api::article.article', '{\"uid\":\"api::article.article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"likes\":{\"edit\":{\"label\":\"likes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"likes\",\"searchable\":true,\"sortable\":true}},\"views\":{\"edit\":{\"label\":\"views\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"views\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"image\",\"likes\"],\"editRelations\":[\"categories\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"body\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"likes\",\"size\":4}],[{\"name\":\"views\",\"size\":4}]]}}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::api::listing.listing', '{\"uid\":\"api::listing.listing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"gallery\":{\"edit\":{\"label\":\"gallery\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gallery\",\"searchable\":false,\"sortable\":false}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"amenities\":{\"edit\":{\"label\":\"amenities\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"amenities\",\"searchable\":false,\"sortable\":false}},\"telephone\":{\"edit\":{\"label\":\"telephone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"telephone\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"delivery\":{\"edit\":{\"label\":\"delivery\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delivery\",\"searchable\":true,\"sortable\":true}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"location\",\"searchable\":true,\"sortable\":true}},\"claimed\":{\"edit\":{\"label\":\"claimed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"claimed\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"Hours\":{\"edit\":{\"label\":\"Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hours\",\"searchable\":false,\"sortable\":false}},\"comments\":{\"edit\":{\"label\":\"comments\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"comments\",\"searchable\":false,\"sortable\":false}},\"_geo\":{\"edit\":{\"label\":\"_geo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"_geo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"gallery\"],\"editRelations\":[\"amenities\",\"type\",\"user\",\"comments\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"gallery\",\"size\":6},{\"name\":\"Slug\",\"size\":6}],[{\"name\":\"telephone\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"delivery\",\"size\":4},{\"name\":\"location\",\"size\":6}],[{\"name\":\"claimed\",\"size\":4}],[{\"name\":\"Hours\",\"size\":12}],[{\"name\":\"_geo\",\"size\":12}]]}}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::suggested-category.suggested-category', '{\"uid\":\"api::suggested-category.suggested-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"svg\":{\"edit\":{\"label\":\"svg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"svg\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"svg\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"svg\",\"size\":6}]]}}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::api::comment.comment', '{\"uid\":\"api::comment.comment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"comment\":{\"edit\":{\"label\":\"comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comment\",\"searchable\":true,\"sortable\":true}},\"rating\":{\"edit\":{\"label\":\"rating\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"rating\",\"searchable\":true,\"sortable\":true}},\"listing\":{\"edit\":{\"label\":\"listing\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"listing\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"comment\",\"rating\",\"listing\"],\"editRelations\":[\"listing\",\"users_permissions_user\"],\"edit\":[[{\"name\":\"comment\",\"size\":6},{\"name\":\"rating\",\"size\":4}]]}}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::api::type.type', '{\"uid\":\"api::type.type\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"listings\":{\"edit\":{\"label\":\"listings\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"listings\",\"searchable\":false,\"sortable\":false}},\"svg\":{\"edit\":{\"label\":\"svg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"svg\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"listings\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"svg\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]],\"editRelations\":[\"listings\"]}}', 'object', NULL, NULL),
(22, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(23, 'plugin_upload_metrics', '{\"weeklySchedule\":\"26 41 12 * * 6\",\"lastWeeklyUpdate\":1667036486024}', 'object', NULL, NULL),
(24, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"http://localhost:1337/api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"http://localhost:1337/api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"http://localhost:1337/api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"http://localhost:1337/api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(25, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(26, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(27, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(28, 'plugin_meilisearch_meilisearch_api_key_config', 'false', 'boolean', NULL, NULL),
(29, 'plugin_meilisearch_meilisearch_host_config', 'false', 'boolean', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(30, 'plugin_meilisearch_meilisearch_listened_content_types', '[\"api::listing.listing\"]', 'object', NULL, NULL),
(31, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(32, 'plugin_meilisearch_meilisearch_api_key', '\"\"', 'string', NULL, NULL),
(33, 'plugin_meilisearch_meilisearch_host', '\"http://127.0.0.1:7700\"', 'string', NULL, NULL),
(34, 'plugin_meilisearch_meilisearch_indexed_content_types', '[\"api::listing.listing\"]', 'object', NULL, NULL),
(35, 'core_admin_project-settings', '{\"menuLogo\":{\"name\":\"favicon.png\",\"hash\":\"favicon_c8aaecdcea\",\"url\":\"/uploads/favicon_c8aaecdcea.png\",\"width\":513,\"height\":513,\"ext\":\".png\",\"size\":30.53,\"provider\":\"local\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(8, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"first_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"telephone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"amenities\",\"indexes\":[{\"type\":\"unique\",\"name\":\"amenities_slug_unique\",\"columns\":[\"slug\"]},{\"name\":\"amenities_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"amenities_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"amenities_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"amenities_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false,\"unique\":true},{\"name\":\"svg\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"articles\",\"indexes\":[{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"likes\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"views\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"comments\",\"indexes\":[{\"name\":\"comments_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"comments_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"comments_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"comments_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"comment\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"rating\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"listings\",\"indexes\":[{\"type\":\"unique\",\"name\":\"listings_slug_unique\",\"columns\":[\"slug\"]},{\"name\":\"listings_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"listings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"listings_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"listings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false,\"unique\":true},{\"name\":\"telephone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"delivery\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"location\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"claimed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"suggested_categories\",\"indexes\":[{\"name\":\"suggested_categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"suggested_categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"suggested_categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"suggested_categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"svg\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"types\",\"indexes\":[{\"name\":\"types_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"types_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"types_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"types_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"svg\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_location_geos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"lng\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lat\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_openhours_open_hours\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"day_interval\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"opening_hour\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"closing_hour\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"amenities_localizations_links\",\"indexes\":[{\"name\":\"amenities_localizations_links_fk\",\"columns\":[\"amenity_id\"]},{\"name\":\"amenities_localizations_links_inv_fk\",\"columns\":[\"inv_amenity_id\"]}],\"foreignKeys\":[{\"name\":\"amenities_localizations_links_fk\",\"columns\":[\"amenity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"amenities\",\"onDelete\":\"CASCADE\"},{\"name\":\"amenities_localizations_links_inv_fk\",\"columns\":[\"inv_amenity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"amenities\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"amenity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_amenity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_categories_links\",\"indexes\":[{\"name\":\"articles_categories_links_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_categories_links_inv_fk\",\"columns\":[\"category_id\"]}],\"foreignKeys\":[{\"name\":\"articles_categories_links_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_categories_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_localizations_links\",\"indexes\":[{\"name\":\"articles_localizations_links_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_localizations_links_inv_fk\",\"columns\":[\"inv_article_id\"]}],\"foreignKeys\":[{\"name\":\"articles_localizations_links_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_localizations_links_inv_fk\",\"columns\":[\"inv_article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories_localizations_links\",\"indexes\":[{\"name\":\"categories_localizations_links_fk\",\"columns\":[\"category_id\"]},{\"name\":\"categories_localizations_links_inv_fk\",\"columns\":[\"inv_category_id\"]}],\"foreignKeys\":[{\"name\":\"categories_localizations_links_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"},{\"name\":\"categories_localizations_links_inv_fk\",\"columns\":[\"inv_category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_listing_links\",\"indexes\":[{\"name\":\"comments_listing_links_fk\",\"columns\":[\"comment_id\"]},{\"name\":\"comments_listing_links_inv_fk\",\"columns\":[\"listing_id\"]}],\"foreignKeys\":[{\"name\":\"comments_listing_links_fk\",\"columns\":[\"comment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments\",\"onDelete\":\"CASCADE\"},{\"name\":\"comments_listing_links_inv_fk\",\"columns\":[\"listing_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"listing_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_users_permissions_user_links\",\"indexes\":[{\"name\":\"comments_users_permissions_user_links_fk\",\"columns\":[\"comment_id\"]},{\"name\":\"comments_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"comments_users_permissions_user_links_fk\",\"columns\":[\"comment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments\",\"onDelete\":\"CASCADE\"},{\"name\":\"comments_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"listings_components\",\"indexes\":[{\"name\":\"listings_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"listings_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"listings_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"listings_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"listings_amenities_links\",\"indexes\":[{\"name\":\"listings_amenities_links_fk\",\"columns\":[\"listing_id\"]},{\"name\":\"listings_amenities_links_inv_fk\",\"columns\":[\"amenity_id\"]}],\"foreignKeys\":[{\"name\":\"listings_amenities_links_fk\",\"columns\":[\"listing_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"},{\"name\":\"listings_amenities_links_inv_fk\",\"columns\":[\"amenity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"amenities\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"listing_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"amenity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"listings_type_links\",\"indexes\":[{\"name\":\"listings_type_links_fk\",\"columns\":[\"listing_id\"]},{\"name\":\"listings_type_links_inv_fk\",\"columns\":[\"type_id\"]}],\"foreignKeys\":[{\"name\":\"listings_type_links_fk\",\"columns\":[\"listing_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"},{\"name\":\"listings_type_links_inv_fk\",\"columns\":[\"type_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"types\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"listing_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"type_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"listings_user_links\",\"indexes\":[{\"name\":\"listings_user_links_fk\",\"columns\":[\"listing_id\"]},{\"name\":\"listings_user_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"listings_user_links_fk\",\"columns\":[\"listing_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"},{\"name\":\"listings_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"listing_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"listings_localizations_links\",\"indexes\":[{\"name\":\"listings_localizations_links_fk\",\"columns\":[\"listing_id\"]},{\"name\":\"listings_localizations_links_inv_fk\",\"columns\":[\"inv_listing_id\"]}],\"foreignKeys\":[{\"name\":\"listings_localizations_links_fk\",\"columns\":[\"listing_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"},{\"name\":\"listings_localizations_links_inv_fk\",\"columns\":[\"inv_listing_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"listings\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"listing_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_listing_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"types_localizations_links\",\"indexes\":[{\"name\":\"types_localizations_links_fk\",\"columns\":[\"type_id\"]},{\"name\":\"types_localizations_links_inv_fk\",\"columns\":[\"inv_type_id\"]}],\"foreignKeys\":[{\"name\":\"types_localizations_links_fk\",\"columns\":[\"type_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"types\",\"onDelete\":\"CASCADE\"},{\"name\":\"types_localizations_links_inv_fk\",\"columns\":[\"inv_type_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"types\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"type_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_type_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2022-10-26 15:13:26', 'b26e5958e15a02fc9219967c58e2607f');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suggested_categories`
--

CREATE TABLE `suggested_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `svg` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggested_categories`
--

INSERT INTO `suggested_categories` (`id`, `name`, `svg`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Something WONG', NULL, '2022-10-22 12:39:20.294000', '2022-10-22 12:39:20.850000', '2022-10-22 12:39:20.849000', 1, 1),
(2, 'Αθλητισμός & Ψυχαγωγία', NULL, '2022-10-22 12:39:29.820000', '2022-10-22 12:39:30.434000', '2022-10-22 12:39:30.433000', 1, 1),
(3, 'Εμπορικά Καταστήματα', NULL, '2022-10-22 12:39:34.754000', '2022-10-22 12:39:35.183000', '2022-10-22 12:39:35.181000', 1, 1),
(4, 'Events', NULL, '2022-10-22 12:39:37.964000', '2022-10-22 12:39:38.356000', '2022-10-22 12:39:38.355000', 1, 1),
(5, 'Υγεία - Ομορφία', NULL, '2022-10-22 12:39:41.431000', '2022-10-22 12:39:41.695000', '2022-10-22 12:39:41.694000', 1, 1),
(6, 'Φαγητό & Γλυκό', NULL, '2022-10-22 12:39:45.337000', '2022-10-22 12:39:45.660000', '2022-10-22 12:39:45.659000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `svg` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `svg`) VALUES
(1, 'Cafe - Bar', '2022-10-22 12:39:10.614000', '2022-10-26 15:31:01.911000', '2022-10-22 12:39:11.032000', 1, 1, 'en', NULL),
(2, 'Restaurant', '2022-10-22 12:39:13.855000', '2022-10-24 18:23:07.385000', '2022-10-22 12:39:14.253000', 1, 1, 'en', NULL),
(3, 'Club', '2022-10-26 15:26:45.773000', '2022-10-26 15:31:05.823000', '2022-10-26 15:26:46.594000', 1, 1, 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types_localizations_links`
--

CREATE TABLE `types_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Media', 1, '/1', '2022-10-22 12:43:38.951000', '2022-10-22 12:43:38.951000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2022-10-22 12:11:58.177000', '2022-10-22 12:11:58.177000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2022-10-22 12:11:58.177000', '2022-10-22 12:11:58.177000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-10-22 12:11:58.185000', '2022-10-22 12:11:58.185000', NULL, NULL),
(22, 'plugin::users-permissions.user.find', '2022-10-22 14:57:39.531000', '2022-10-22 14:57:39.531000', NULL, NULL),
(23, 'plugin::users-permissions.user.findOne', '2022-10-22 14:57:39.531000', '2022-10-22 14:57:39.531000', NULL, NULL),
(24, 'plugin::users-permissions.user.updateMe', '2022-10-22 14:57:39.531000', '2022-10-22 14:57:39.531000', NULL, NULL),
(27, 'plugin::users-permissions.user.find', '2022-10-22 14:58:44.816000', '2022-10-22 14:58:44.816000', NULL, NULL),
(28, 'plugin::users-permissions.user.findOne', '2022-10-22 14:58:44.816000', '2022-10-22 14:58:44.816000', NULL, NULL),
(29, 'plugin::users-permissions.role.findOne', '2022-10-22 14:58:44.816000', '2022-10-22 14:58:44.816000', NULL, NULL),
(30, 'plugin::users-permissions.role.find', '2022-10-22 14:58:44.816000', '2022-10-22 14:58:44.816000', NULL, NULL),
(31, 'api::listing.listing.create', '2022-10-22 14:59:37.959000', '2022-10-22 14:59:37.959000', NULL, NULL),
(32, 'api::listing.listing.update', '2022-10-22 14:59:37.959000', '2022-10-22 14:59:37.959000', NULL, NULL),
(33, 'api::listing.listing.find', '2022-10-22 15:27:39.246000', '2022-10-22 15:27:39.246000', NULL, NULL),
(34, 'api::listing.listing.findOne', '2022-10-22 15:27:39.246000', '2022-10-22 15:27:39.246000', NULL, NULL),
(35, 'api::amenity.amenity.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(36, 'api::amenity.amenity.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(37, 'api::article.article.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(38, 'api::article.article.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(39, 'api::category.category.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(40, 'api::category.category.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(41, 'api::comment.comment.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(42, 'api::comment.comment.update', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(43, 'api::listing.listing.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(44, 'api::listing.listing.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(45, 'api::suggested-category.suggested-category.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(46, 'api::suggested-category.suggested-category.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(47, 'api::type.type.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(48, 'plugin::upload.content-api.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(49, 'api::type.type.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(50, 'plugin::upload.content-api.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(51, 'plugin::upload.content-api.upload', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(52, 'plugin::users-permissions.user.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(53, 'plugin::users-permissions.user.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(54, 'plugin::users-permissions.user.me', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(55, 'plugin::users-permissions.user.updateMe', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(56, 'plugin::users-permissions.role.findOne', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(57, 'plugin::users-permissions.role.find', '2022-10-23 10:41:33.856000', '2022-10-23 10:41:33.856000', NULL, NULL),
(58, 'plugin::users-permissions.role.findOne', '2022-10-23 10:41:48.388000', '2022-10-23 10:41:48.388000', NULL, NULL),
(59, 'plugin::users-permissions.role.find', '2022-10-23 10:41:48.388000', '2022-10-23 10:41:48.388000', NULL, NULL),
(67, 'api::amenity.amenity.find', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(68, 'api::amenity.amenity.findOne', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(69, 'api::article.article.find', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(70, 'api::comment.comment.find', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(71, 'api::article.article.findOne', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(72, 'api::category.category.findOne', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(73, 'api::suggested-category.suggested-category.findOne', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(74, 'api::type.type.findOne', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(75, 'api::comment.comment.create', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(76, 'api::type.type.find', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(77, 'api::comment.comment.findOne', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(78, 'api::category.category.find', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(79, 'api::suggested-category.suggested-category.find', '2022-11-01 16:13:28.396000', '2022-11-01 16:13:28.396000', NULL, NULL),
(81, 'plugin::users-permissions.auth.forgotPassword', '2022-11-01 16:54:27.822000', '2022-11-01 16:54:27.822000', NULL, NULL),
(82, 'api::comment.comment.find', '2022-11-01 16:55:13.711000', '2022-11-01 16:55:13.711000', NULL, NULL),
(95, 'api::listing.listing.create', '2022-11-01 18:07:22.759000', '2022-11-01 18:07:22.759000', NULL, NULL),
(96, 'api::listing.listing.delete', '2022-11-01 18:07:22.759000', '2022-11-01 18:07:22.759000', NULL, NULL),
(97, 'api::listing.listing.delete', '2022-11-01 18:54:04.789000', '2022-11-01 18:54:04.789000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 9, 2),
(7, 7, 2),
(8, 6, 2),
(9, 8, 2),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(27, 27, 2),
(28, 28, 2),
(29, 30, 2),
(30, 29, 2),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 36, 3),
(36, 35, 3),
(37, 37, 3),
(38, 38, 3),
(39, 41, 3),
(40, 44, 3),
(41, 49, 3),
(42, 46, 3),
(43, 39, 3),
(44, 45, 3),
(45, 47, 3),
(46, 43, 3),
(47, 42, 3),
(48, 40, 3),
(49, 48, 3),
(50, 50, 3),
(51, 51, 3),
(52, 52, 3),
(53, 53, 3),
(54, 54, 3),
(55, 55, 3),
(56, 57, 3),
(57, 56, 3),
(58, 58, 1),
(59, 59, 1),
(67, 67, 1),
(68, 68, 1),
(69, 69, 1),
(70, 70, 1),
(71, 72, 1),
(72, 75, 1),
(73, 73, 1),
(74, 76, 1),
(75, 77, 1),
(76, 74, 1),
(77, 79, 1),
(78, 78, 1),
(79, 71, 1),
(81, 81, 1),
(82, 82, 3),
(95, 95, 3),
(96, 96, 3),
(97, 97, 1);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'authenticated user', 'authenticated', '2022-10-22 12:11:58.169000', '2022-11-01 18:54:04.786000', NULL, NULL),
(2, 'Public', 'unauthenticated user', 'public', '2022-10-22 12:11:58.171000', '2022-11-01 18:07:52.987000', NULL, NULL),
(3, 'Administrator', 'This role belongs to the Administrators of the End User Buzzy Fester', 'administrator', '2022-10-23 10:40:23.514000', '2022-11-01 18:07:22.755000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `first_name`, `last_name`, `telephone`, `phone`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'tasosmeidanis', 'tasosmeidanis12@gmail.com', 'local', '$2a$10$1X3ODu7VfF1RpEED1bg3GOEN.I4GmAKBljGfVK0Bi4hzAsoNTYNJi', NULL, NULL, 1, 0, 'Tasos', 'Meidanis', '', '+30 6982939992', '2022-10-22 12:17:17.926000', '2022-10-23 11:06:17.916000', 1, 1),
(2, 'tasos', 'tasso@gm.g', 'local', '$2a$10$CPbKM6Q8uPopHaTLDcM5c.7VMbNrhD3YAcY..qIclg6gUROWcr8O.', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2022-10-22 18:44:50.638000', '2022-10-22 18:44:50.638000', NULL, NULL),
(4, 'admin', 'admin@admin.admin', 'local', '$2a$10$XuZYovPBENlKYusEXbVzGu53OipiaYWYir5.bXGUDdv1bj.ugvIwm', NULL, NULL, 1, 0, 'admin', 'admin', NULL, NULL, '2022-10-22 18:55:45.116000', '2022-10-22 18:55:45.116000', NULL, NULL),
(5, 'tasosmeidanis2', 'tasosmeidanis123@gmail.com', 'local', '$2a$10$.sXPJ4GbPL12Vejy.TSSOOxPIl0hEhBHH6dUfevk60Sp6XKiVwPgS', NULL, NULL, 1, 0, 'Tasos', 'Meidanis', NULL, NULL, '2022-10-23 10:39:09.779000', '2022-10-23 10:39:09.779000', NULL, NULL),
(6, 'testaccount', 'tasosmeidanis1234@gmail.com', 'local', '$2a$10$wQ3YOFQr.8to9KC9nfoUG.TIF3vYJBX5/wo6gboG6KnMWkHH9wU/y', NULL, NULL, 1, 0, 'Tasos', 'Meid', NULL, NULL, '2022-10-26 14:44:30.474000', '2022-10-26 14:44:30.474000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`) VALUES
(2, 2, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 3),
(7, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `amenities_slug_unique` (`slug`),
  ADD KEY `amenities_created_by_id_fk` (`created_by_id`),
  ADD KEY `amenities_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `amenities_localizations_links`
--
ALTER TABLE `amenities_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenities_localizations_links_fk` (`amenity_id`),
  ADD KEY `amenities_localizations_links_inv_fk` (`inv_amenity_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_created_by_id_fk` (`created_by_id`),
  ADD KEY `articles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `articles_categories_links`
--
ALTER TABLE `articles_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categories_links_fk` (`article_id`),
  ADD KEY `articles_categories_links_inv_fk` (`category_id`);

--
-- Indexes for table `articles_localizations_links`
--
ALTER TABLE `articles_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_localizations_links_fk` (`article_id`),
  ADD KEY `articles_localizations_links_inv_fk` (`inv_article_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories_localizations_links`
--
ALTER TABLE `categories_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_localizations_links_fk` (`category_id`),
  ADD KEY `categories_localizations_links_inv_fk` (`inv_category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_created_by_id_fk` (`created_by_id`),
  ADD KEY `comments_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `comments_listing_links`
--
ALTER TABLE `comments_listing_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_listing_links_fk` (`comment_id`),
  ADD KEY `comments_listing_links_inv_fk` (`listing_id`);

--
-- Indexes for table `comments_users_permissions_user_links`
--
ALTER TABLE `comments_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_users_permissions_user_links_fk` (`comment_id`),
  ADD KEY `comments_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `components_location_geos`
--
ALTER TABLE `components_location_geos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_openhours_open_hours`
--
ALTER TABLE `components_openhours_open_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `listings_slug_unique` (`slug`),
  ADD KEY `listings_created_by_id_fk` (`created_by_id`),
  ADD KEY `listings_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `listings_amenities_links`
--
ALTER TABLE `listings_amenities_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_amenities_links_fk` (`listing_id`),
  ADD KEY `listings_amenities_links_inv_fk` (`amenity_id`);

--
-- Indexes for table `listings_components`
--
ALTER TABLE `listings_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_field_index` (`field`),
  ADD KEY `listings_component_type_index` (`component_type`),
  ADD KEY `listings_entity_fk` (`entity_id`);

--
-- Indexes for table `listings_localizations_links`
--
ALTER TABLE `listings_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_localizations_links_fk` (`listing_id`),
  ADD KEY `listings_localizations_links_inv_fk` (`inv_listing_id`);

--
-- Indexes for table `listings_type_links`
--
ALTER TABLE `listings_type_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_type_links_fk` (`listing_id`),
  ADD KEY `listings_type_links_inv_fk` (`type_id`);

--
-- Indexes for table `listings_user_links`
--
ALTER TABLE `listings_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_links_fk` (`listing_id`),
  ADD KEY `listings_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggested_categories`
--
ALTER TABLE `suggested_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suggested_categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `suggested_categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `types_created_by_id_fk` (`created_by_id`),
  ADD KEY `types_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `types_localizations_links`
--
ALTER TABLE `types_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `types_localizations_links_fk` (`type_id`),
  ADD KEY `types_localizations_links_inv_fk` (`inv_type_id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `amenities_localizations_links`
--
ALTER TABLE `amenities_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles_categories_links`
--
ALTER TABLE `articles_categories_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles_localizations_links`
--
ALTER TABLE `articles_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories_localizations_links`
--
ALTER TABLE `categories_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments_listing_links`
--
ALTER TABLE `comments_listing_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments_users_permissions_user_links`
--
ALTER TABLE `comments_users_permissions_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_location_geos`
--
ALTER TABLE `components_location_geos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `components_openhours_open_hours`
--
ALTER TABLE `components_openhours_open_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `listings_amenities_links`
--
ALTER TABLE `listings_amenities_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `listings_components`
--
ALTER TABLE `listings_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `listings_localizations_links`
--
ALTER TABLE `listings_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings_type_links`
--
ALTER TABLE `listings_type_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `listings_user_links`
--
ALTER TABLE `listings_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggested_categories`
--
ALTER TABLE `suggested_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types_localizations_links`
--
ALTER TABLE `types_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `amenities`
--
ALTER TABLE `amenities`
  ADD CONSTRAINT `amenities_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `amenities_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `amenities_localizations_links`
--
ALTER TABLE `amenities_localizations_links`
  ADD CONSTRAINT `amenities_localizations_links_fk` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `amenities_localizations_links_inv_fk` FOREIGN KEY (`inv_amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `articles_categories_links`
--
ALTER TABLE `articles_categories_links`
  ADD CONSTRAINT `articles_categories_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_localizations_links`
--
ALTER TABLE `articles_localizations_links`
  ADD CONSTRAINT `articles_localizations_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_localizations_links_inv_fk` FOREIGN KEY (`inv_article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories_localizations_links`
--
ALTER TABLE `categories_localizations_links`
  ADD CONSTRAINT `categories_localizations_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_localizations_links_inv_fk` FOREIGN KEY (`inv_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comments_listing_links`
--
ALTER TABLE `comments_listing_links`
  ADD CONSTRAINT `comments_listing_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_listing_links_inv_fk` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_users_permissions_user_links`
--
ALTER TABLE `comments_users_permissions_user_links`
  ADD CONSTRAINT `comments_users_permissions_user_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `listings_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `listings_amenities_links`
--
ALTER TABLE `listings_amenities_links`
  ADD CONSTRAINT `listings_amenities_links_fk` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `listings_amenities_links_inv_fk` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `listings_components`
--
ALTER TABLE `listings_components`
  ADD CONSTRAINT `listings_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `listings_localizations_links`
--
ALTER TABLE `listings_localizations_links`
  ADD CONSTRAINT `listings_localizations_links_fk` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `listings_localizations_links_inv_fk` FOREIGN KEY (`inv_listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `listings_type_links`
--
ALTER TABLE `listings_type_links`
  ADD CONSTRAINT `listings_type_links_fk` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `listings_type_links_inv_fk` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `listings_user_links`
--
ALTER TABLE `listings_user_links`
  ADD CONSTRAINT `listings_user_links_fk` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `listings_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suggested_categories`
--
ALTER TABLE `suggested_categories`
  ADD CONSTRAINT `suggested_categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `suggested_categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `types_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `types_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `types_localizations_links`
--
ALTER TABLE `types_localizations_links`
  ADD CONSTRAINT `types_localizations_links_fk` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `types_localizations_links_inv_fk` FOREIGN KEY (`inv_type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
