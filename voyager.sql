-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 02:38 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ahmed Tawfek', 'admin@admin.com', 'admins/November2019/ZUW4rrYvHOB3rmA0Omf9.jpg', NULL, '$2y$10$EHGhfYH2Q2yY2IW6j2zl0emo/Ap7CLcgBKPnb0gw7ILBhcGxy7EYS', 'PoJYDRGgbc81zG0vYESXHn55RUxIRmChJyhRfDVFMJvX1V0Dxe5PDYsNWHvv', '{\"locale\":\"ar\"}', '2019-11-10 07:05:44', '2019-11-20 12:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-11-10 09:05:44', '2019-11-10 09:05:44'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-11-10 09:05:44', '2019-11-10 09:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 1, 'email_verified_at', 'timestamp', NULL, 0, 1, 1, 1, 1, 1, '{}', 6),
(57, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 9, 'role_id', 'text', 'Role Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(59, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 9, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(61, 9, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 9),
(62, 9, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 9, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(64, 9, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(65, 9, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 11),
(66, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(67, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(68, 9, 'admin_belongsto_role_relationship', 'relationship', 'roles', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(69, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 10, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 4),
(72, 10, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(73, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(74, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(75, 10, 'maintitle', 'text', 'MainTitle', 0, 1, 1, 1, 1, 1, '{}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-11-10 09:05:36', '2019-11-10 09:55:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-11-10 09:05:36', '2019-11-10 09:05:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-11-10 09:05:36', '2019-11-10 09:05:36'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-11-10 09:05:43', '2019-11-10 09:05:43'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-11-10 09:05:44', '2019-11-10 09:05:44'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(9, 'admins', 'admins', 'Admin', 'Admins', 'voyager-person', 'App\\Admin', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-11 05:35:32', '2019-11-11 06:36:14'),
(10, 'slides', 'slides', 'Slide', 'Slides', 'voyager-code', 'App\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-11 07:14:20', '2019-11-14 07:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-11-10 09:05:37', '2019-11-10 09:05:37'),
(2, 'Site', '2019-11-18 07:39:13', '2019-11-18 07:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-dashboard', '#000000', NULL, 1, '2019-11-10 09:05:37', '2019-11-10 09:19:52', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', '#000000', NULL, 5, '2019-11-10 09:05:37', '2019-11-14 06:38:29', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', '#000000', 16, 2, '2019-11-10 09:05:37', '2019-11-11 06:34:16', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', '#000000', NULL, 4, '2019-11-10 09:05:37', '2019-11-14 06:38:29', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2019-11-10 09:05:37', '2019-11-14 06:38:29', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', '#000000', 5, 1, '2019-11-10 09:05:37', '2019-11-10 09:39:35', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', '#000000', 5, 2, '2019-11-10 09:05:37', '2019-11-10 09:39:54', 'voyager.database.index', 'null'),
(8, 1, 'Compass', '', '_self', 'voyager-compass', '#000000', 5, 3, '2019-11-10 09:05:37', '2019-11-10 09:40:33', 'voyager.compass.index', 'null'),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', '#000000', 5, 4, '2019-11-10 09:05:37', '2019-11-10 09:40:51', 'voyager.bread.index', 'null'),
(10, 1, 'Settings', '', '_self', 'voyager-settings', '#000000', 17, 1, '2019-11-10 09:05:37', '2019-11-11 06:45:19', 'voyager.settings.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2019-11-10 09:05:43', '2019-11-14 06:38:29', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', '#000000', NULL, 7, '2019-11-10 09:05:44', '2019-11-14 06:38:29', 'voyager.posts.index', 'null'),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', '#000000', NULL, 8, '2019-11-10 09:05:46', '2019-11-14 06:38:29', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', '#000000', 5, 5, '2019-11-10 09:05:48', '2019-11-10 09:41:04', 'voyager.hooks', 'null'),
(15, 1, 'Admins', '', '_self', 'voyager-person', '#000000', 16, 1, '2019-11-11 05:35:32', '2019-11-11 06:34:30', 'voyager.admins.index', 'null'),
(16, 1, 'All Users', '', '_self', 'voyager-people', '#000000', NULL, 3, '2019-11-11 06:33:43', '2019-11-14 06:38:29', NULL, ''),
(17, 1, 'Site Settings', '', '_self', 'voyager-settings', '#000000', NULL, 2, '2019-11-11 06:43:15', '2019-11-11 06:44:48', NULL, ''),
(18, 1, 'Slides', '', '_self', 'voyager-code', '#000000', 17, 2, '2019-11-11 07:14:20', '2019-11-14 06:39:57', 'voyager.slides.index', 'null'),
(19, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2019-11-18 07:40:28', '2019-11-21 09:45:23', NULL, ''),
(20, 2, 'About Us', '/about', '_self', NULL, '#000000', NULL, 5, '2019-11-18 07:41:13', '2019-11-21 10:25:18', NULL, ''),
(21, 2, 'Products', '/products', '_self', NULL, '#000000', NULL, 2, '2019-11-21 08:48:29', '2019-11-21 10:25:13', NULL, ''),
(22, 2, 'Portfolio', 'portfolio', '_self', NULL, '#000000', NULL, 3, '2019-11-21 08:51:00', '2019-11-21 10:25:13', NULL, ''),
(23, 2, 'Contact Us', '/contactus', '_self', NULL, '#000000', NULL, 6, '2019-11-21 08:51:52', '2019-11-21 10:25:18', NULL, ''),
(24, 2, 'Certificate', '/certificate', '_self', NULL, '#000000', NULL, 4, '2019-11-21 09:49:41', '2019-11-21 10:25:18', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-11-10 09:05:46', '2019-11-10 09:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-11-10 09:05:37', '2019-11-10 09:05:37'),
(2, 'browse_bread', NULL, '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(3, 'browse_database', NULL, '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(4, 'browse_media', NULL, '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(5, 'browse_compass', NULL, '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(6, 'browse_menus', 'menus', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(7, 'read_menus', 'menus', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(8, 'edit_menus', 'menus', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(9, 'add_menus', 'menus', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(10, 'delete_menus', 'menus', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(11, 'browse_roles', 'roles', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(12, 'read_roles', 'roles', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(13, 'edit_roles', 'roles', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(14, 'add_roles', 'roles', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(15, 'delete_roles', 'roles', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(16, 'browse_users', 'users', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(17, 'read_users', 'users', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(18, 'edit_users', 'users', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(19, 'add_users', 'users', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(20, 'delete_users', 'users', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(21, 'browse_settings', 'settings', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(22, 'read_settings', 'settings', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(23, 'edit_settings', 'settings', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(24, 'add_settings', 'settings', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(25, 'delete_settings', 'settings', '2019-11-10 09:05:38', '2019-11-10 09:05:38'),
(26, 'browse_categories', 'categories', '2019-11-10 09:05:43', '2019-11-10 09:05:43'),
(27, 'read_categories', 'categories', '2019-11-10 09:05:43', '2019-11-10 09:05:43'),
(28, 'edit_categories', 'categories', '2019-11-10 09:05:43', '2019-11-10 09:05:43'),
(29, 'add_categories', 'categories', '2019-11-10 09:05:43', '2019-11-10 09:05:43'),
(30, 'delete_categories', 'categories', '2019-11-10 09:05:43', '2019-11-10 09:05:43'),
(31, 'browse_posts', 'posts', '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(32, 'read_posts', 'posts', '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(33, 'edit_posts', 'posts', '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(34, 'add_posts', 'posts', '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(35, 'delete_posts', 'posts', '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(36, 'browse_pages', 'pages', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(37, 'read_pages', 'pages', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(38, 'edit_pages', 'pages', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(39, 'add_pages', 'pages', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(40, 'delete_pages', 'pages', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(41, 'browse_hooks', NULL, '2019-11-10 09:05:48', '2019-11-10 09:05:48'),
(42, 'browse_admins', 'admins', '2019-11-11 05:35:32', '2019-11-11 05:35:32'),
(43, 'read_admins', 'admins', '2019-11-11 05:35:32', '2019-11-11 05:35:32'),
(44, 'edit_admins', 'admins', '2019-11-11 05:35:32', '2019-11-11 05:35:32'),
(45, 'add_admins', 'admins', '2019-11-11 05:35:32', '2019-11-11 05:35:32'),
(46, 'delete_admins', 'admins', '2019-11-11 05:35:32', '2019-11-11 05:35:32'),
(47, 'browse_slides', 'slides', '2019-11-11 07:14:20', '2019-11-11 07:14:20'),
(48, 'read_slides', 'slides', '2019-11-11 07:14:20', '2019-11-11 07:14:20'),
(49, 'edit_slides', 'slides', '2019-11-11 07:14:20', '2019-11-11 07:14:20'),
(50, 'add_slides', 'slides', '2019-11-11 07:14:20', '2019-11-11 07:14:20'),
(51, 'delete_slides', 'slides', '2019-11-11 07:14:20', '2019-11-11 07:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', '', 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-10 09:05:45', '2019-11-10 10:18:00'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-10 09:05:45', '2019-11-10 09:05:45'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-10 09:05:45', '2019-11-10 09:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-11-10 09:05:37', '2019-11-10 09:05:37'),
(2, 'user', 'Normal User', '2019-11-10 09:05:37', '2019-11-10 09:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/November2019/iElwqtolgXNzcFYymfcc.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Main Site', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Main Site.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/November2019/YBHDFEtqbybPVkPt5jjO.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/November2019/V5e0MHWKzUheqJQBkYLj.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '34843910000-5bmljtoi8na5ke95jgsk96bcmk8f8ks4.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(12, 'general.address_ar', 'Address Arabic', 'القاهرة - مدينة نصر - الحي الثامن', NULL, 'text', 7, 'General'),
(13, 'general.address_en', 'Address English', 'Cairo -Nasr City - Al Hayy Ath Thamin', NULL, 'text', 8, 'General'),
(14, 'general.phone', 'phone', '+20 112 6697 538', NULL, 'text', 9, 'General'),
(15, 'general.facebook', 'FaceBook', NULL, NULL, 'text', 10, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `body`, `img`, `created_at`, `updated_at`, `maintitle`) VALUES
(3, 'THE BEST DESIGN', '<div class=\"wpb_text_column wpb_content_element  lead\" style=\"box-sizing: border-box; margin-bottom: 35px; font-size: 1.25rem; font-weight: 300; line-height: 1.8rem; color: #777777; font-family: \'Open Sans\';\">\n<div class=\"wpb_wrapper\" style=\"box-sizing: border-box; margin-bottom: 0px;\">\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 1.8rem; letter-spacing: 0px; text-align: center;\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 1.8rem; letter-spacing: 0px; text-align: center;\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 1.8rem; letter-spacing: 0px; text-align: center;\"><span style=\"box-sizing: border-box;\">Trusted by over 17,000 satisfied users, Porto is a huge success</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin-bottom: 0px;\">in the of one of the world&rsquo;s largest MarketPlace.</span></p>\n<p><span style=\"box-sizing: border-box; margin-bottom: 0px;\">&nbsp;</span></p>\n</div>\n</div>', 'slides/November2019/iA0yCeQ9hOgDWw9Lnqou.jpg', '2019-11-14 08:37:00', '2019-11-18 05:57:28', 'WE WORK HARD AND PORTO HAS');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-11-10 09:05:46', '2019-11-10 09:05:46'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-11-10 09:05:47', '2019-11-10 09:05:47'),
(31, 'menu_items', 'title', 1, 'ar', 'لوحة التحكم', '2019-11-10 09:19:52', '2019-11-10 09:19:52'),
(32, 'menu_items', 'title', 4, 'ar', 'الوظيفة', '2019-11-10 09:22:16', '2019-11-10 09:22:16'),
(33, 'menu_items', 'title', 3, 'ar', 'المستخدمين', '2019-11-10 09:22:43', '2019-11-10 09:22:43'),
(34, 'menu_items', 'title', 2, 'ar', 'الوسائط', '2019-11-10 09:23:10', '2019-11-10 09:23:10'),
(35, 'menu_items', 'title', 12, 'ar', 'المقالات', '2019-11-10 09:38:18', '2019-11-10 09:38:18'),
(36, 'menu_items', 'title', 13, 'ar', 'الصفحات', '2019-11-10 09:38:35', '2019-11-10 09:38:35'),
(37, 'menu_items', 'title', 11, 'ar', 'المجموعات', '2019-11-10 09:38:54', '2019-11-10 09:38:54'),
(38, 'menu_items', 'title', 5, 'ar', 'الأدوات', '2019-11-10 09:39:10', '2019-11-10 09:39:10'),
(39, 'menu_items', 'title', 6, 'ar', 'بناء القائمة', '2019-11-10 09:39:35', '2019-11-10 09:39:35'),
(40, 'menu_items', 'title', 7, 'ar', 'الداتا بيز', '2019-11-10 09:39:54', '2019-11-10 09:39:54'),
(41, 'menu_items', 'title', 8, 'ar', 'البوصلة', '2019-11-10 09:40:17', '2019-11-10 09:40:33'),
(42, 'menu_items', 'title', 9, 'ar', 'البناء', '2019-11-10 09:40:51', '2019-11-10 09:40:51'),
(43, 'menu_items', 'title', 14, 'ar', 'المرساه', '2019-11-10 09:41:04', '2019-11-10 09:41:04'),
(44, 'menu_items', 'title', 10, 'ar', 'الاعدادات', '2019-11-10 09:41:19', '2019-11-10 09:41:19'),
(55, 'data_rows', 'display_name', 1, 'ar', 'ID', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(56, 'data_rows', 'display_name', 21, 'ar', 'Role', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(57, 'data_rows', 'display_name', 2, 'ar', 'Name', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(58, 'data_rows', 'display_name', 3, 'ar', 'Email', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(59, 'data_rows', 'display_name', 8, 'ar', 'Avatar', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(60, 'data_rows', 'display_name', 4, 'ar', 'Password', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(61, 'data_rows', 'display_name', 5, 'ar', 'Remember Token', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(62, 'data_rows', 'display_name', 11, 'ar', 'Settings', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(63, 'data_rows', 'display_name', 6, 'ar', 'Created At', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(64, 'data_rows', 'display_name', 7, 'ar', 'Updated At', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(65, 'data_rows', 'display_name', 9, 'ar', 'Role', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(66, 'data_rows', 'display_name', 10, 'ar', 'Roles', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(67, 'data_types', 'display_name_singular', 1, 'ar', 'User', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(68, 'data_types', 'display_name_plural', 1, 'ar', 'Users', '2019-11-10 09:55:39', '2019-11-10 09:55:39'),
(69, 'posts', 'title', 1, 'ar', 'اي حاجه', '2019-11-10 10:18:00', '2019-11-10 10:18:00'),
(70, 'posts', 'excerpt', 1, 'ar', 'This is the excerpt for the Lorem Ipsum Post', '2019-11-10 10:18:01', '2019-11-10 10:18:01'),
(71, 'posts', 'body', 1, 'ar', '<p>This is the body of the lorem ipsum post</p>', '2019-11-10 10:18:01', '2019-11-10 10:18:01'),
(72, 'posts', 'slug', 1, 'ar', 'ay-hajh', '2019-11-10 10:18:01', '2019-11-10 10:18:01'),
(73, 'posts', 'meta_description', 1, 'ar', 'This is the meta description', '2019-11-10 10:18:01', '2019-11-10 10:18:01'),
(74, 'posts', 'meta_keywords', 1, 'ar', 'keyword1, keyword2, keyword3', '2019-11-10 10:18:01', '2019-11-10 10:18:01'),
(75, 'data_rows', 'display_name', 57, 'ar', 'Id', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(76, 'data_rows', 'display_name', 58, 'ar', 'Role Id', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(77, 'data_rows', 'display_name', 59, 'ar', 'Name', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(78, 'data_rows', 'display_name', 60, 'ar', 'Email', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(79, 'data_rows', 'display_name', 61, 'ar', 'Avatar', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(80, 'data_rows', 'display_name', 62, 'ar', 'Email Verified At', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(81, 'data_rows', 'display_name', 63, 'ar', 'Password', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(82, 'data_rows', 'display_name', 64, 'ar', 'Remember Token', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(83, 'data_rows', 'display_name', 65, 'ar', 'Settings', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(84, 'data_rows', 'display_name', 66, 'ar', 'Created At', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(85, 'data_rows', 'display_name', 67, 'ar', 'Updated At', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(86, 'data_rows', 'display_name', 68, 'ar', 'roles', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(87, 'data_types', 'display_name_singular', 9, 'ar', 'Admin', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(88, 'data_types', 'display_name_plural', 9, 'ar', 'Admins', '2019-11-11 05:39:26', '2019-11-11 05:39:26'),
(89, 'menu_items', 'title', 16, 'ar', 'الاعضاء', '2019-11-11 06:33:43', '2019-11-11 06:33:43'),
(90, 'menu_items', 'title', 15, 'ar', 'المسؤلين', '2019-11-11 06:34:30', '2019-11-11 06:34:30'),
(91, 'menu_items', 'title', 17, 'ar', 'اعدادات الموقع', '2019-11-11 06:43:15', '2019-11-11 06:43:15'),
(94, 'data_rows', 'display_name', 69, 'ar', 'Id', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(95, 'data_rows', 'display_name', 70, 'ar', 'Title', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(96, 'data_rows', 'display_name', 71, 'ar', 'Body', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(97, 'data_rows', 'display_name', 72, 'ar', 'Img', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(98, 'data_rows', 'display_name', 73, 'ar', 'Created At', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(99, 'data_rows', 'display_name', 74, 'ar', 'Updated At', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(100, 'data_types', 'display_name_singular', 10, 'ar', 'Slide', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(101, 'data_types', 'display_name_plural', 10, 'ar', 'Slides', '2019-11-11 08:06:38', '2019-11-11 08:06:38'),
(102, 'menu_items', 'title', 18, 'ar', 'الشرائح', '2019-11-11 09:28:44', '2019-11-11 09:28:44'),
(103, 'categories', 'slug', 1, 'ar', 'category-1', '2019-11-11 11:19:03', '2019-11-11 11:19:03'),
(104, 'categories', 'name', 1, 'ar', 'Category 1', '2019-11-11 11:19:03', '2019-11-11 11:19:03'),
(108, 'data_rows', 'display_name', 75, 'ar', 'MainTitle', '2019-11-14 07:18:11', '2019-11-14 07:18:11'),
(112, 'slides', 'maintitle', 3, 'ar', 'نحن نعمل بجد', '2019-11-14 08:37:36', '2019-11-17 17:51:45'),
(113, 'slides', 'title', 3, 'ar', 'افضل اختيار', '2019-11-14 08:37:36', '2019-11-17 17:51:45'),
(114, 'slides', 'body', 3, 'ar', '<p style=\"text-align: center;\">&nbsp;</p>\n<p style=\"text-align: center;\">&nbsp;</p>\n<p style=\"text-align: center;\">&nbsp; &nbsp;1700 لقد تم اختيارنا من ضمن</p>', '2019-11-14 08:37:37', '2019-11-17 17:53:17'),
(115, 'menu_items', 'title', 19, 'ar', 'الصفحة الرئيسية', '2019-11-18 07:40:28', '2019-11-18 07:40:28'),
(116, 'menu_items', 'title', 20, 'ar', 'عن الشركة', '2019-11-18 07:41:13', '2019-11-18 07:41:13'),
(117, 'menu_items', 'title', 21, 'ar', 'المنتجات', '2019-11-21 08:48:29', '2019-11-21 08:48:29'),
(118, 'menu_items', 'title', 22, 'ar', 'سابقة الاعمال', '2019-11-21 08:51:00', '2019-11-21 08:51:00'),
(119, 'menu_items', 'title', 23, 'ar', 'اتصل بنا', '2019-11-21 08:51:52', '2019-11-21 08:51:52'),
(120, 'menu_items', 'title', 24, 'ar', 'الشهادات', '2019-11-21 09:49:41', '2019-11-21 09:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ahmed Tawfek', 'admin@admin.com', 'users\\November2019\\A8AQ9Od6qSC5rOt7H1je.png', NULL, '$2y$10$ZYDpScL/UdgQUA7uOp68y.jKnCFmuNwgPQ7/JcNIuPWI3PPt8nCde', '0uyVpJNROTjyNEc95stvZFM7ZjDZ2GcKxsYSlHHfhz3XEvY3wn39nSnr8m1g', '{\"locale\":\"ar\"}', '2019-11-10 09:05:44', '2019-11-10 10:48:05'),
(2, 2, 'User', 'user@user.com', 'users/default.png', NULL, '$2y$10$SJNT2j4h/TR70g4p82Rwu.yvjt/OQ6YoydBisquJeiIVJvS6gHYS.', 'IVhSkwrVZGQVr77LwRkNN2QDjQ3dqpT4CeJArERANxJ6IypDox5ZZMfx2O9B', '{\"locale\":\"ar\"}', '2019-11-10 11:02:27', '2019-11-10 11:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
