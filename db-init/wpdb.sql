-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jun 18, 2025 at 02:20 PM
-- Server version: 9.3.0
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1750256411;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750258211;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750258217;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1750294241;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750297811;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750337417;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750337441;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750337453;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750426720;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1750510217;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost:8000', 'on'),
(3, 'home', 'http://localhost:8000', 'on'),
(4, 'blogname', 'Lorem ipsum', 'on'),
(5, 'blogdescription', 'Donec quis nibh sit amet lorem viverra aliquam.', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'contacto@example.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'j F, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:18:\"mailhog-config.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '-5', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'fundadores', 'on'),
(42, 'stylesheet', 'fundadores', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:27:\"wp-optimize/wp-optimize.php\";a:2:{i:0;s:13:\"WPO_Uninstall\";i:1;s:7:\"actions\";}}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '8', 'on'),
(83, 'page_on_front', '6', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '21', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1762347011', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'es_CO', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:15:{i:2;a:1:{s:7:\"content\";s:86:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lorem ipsum</h2>\n<!-- /wp:heading -->\";}i:3;a:1:{s:7:\"content\";s:99:\"<!-- wp:paragraph -->\n<p>Donec quis nibh sit amet lorem viverra aliquam.</p>\n<!-- /wp:paragraph -->\";}i:4;a:1:{s:7:\"content\";s:390:\"<!-- wp:paragraph -->\n<p>Mauris sed dolor ut ante molestie vestibulum. Pellentesque gravida felis sed libero mattis, in tincidunt ligula scelerisque. Praesent nec orci rhoncus, commodo lectus in, porta justo. Integer sed risus sit amet dolor facilisis aliquam. Fusce semper, dui ac varius consequat, diam nisl laoreet nunc, eget maximus metus erat pulvinar massa.</p>\n<!-- /wp:paragraph -->\";}i:5;a:1:{s:7:\"content\";s:779:\"<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":51,\"mediaLink\":\"http://localhost:8000/?attachment_id=51\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p>Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Nunc velit nunc, aliquam nec tincidunt vel, rutrum sed arcu. Praesent blandit nisl ut erat lacinia, ac posuere mi laoreet.</p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost:8000/wp-content/uploads/2025/05/servicios-1.jpg\" alt=\"\" class=\"wp-image-51 size-full\"/></figure></div>\n<!-- /wp:media-text -->\";}i:6;a:1:{s:7:\"content\";s:98:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Publicaciones recientes</h2>\n<!-- /wp:heading -->\";}i:7;a:1:{s:7:\"content\";s:137:\"<!-- wp:paragraph -->\n<p>Maecenas suscipit et massa non tincidunt. Aenean a est posuere dolor bibendum rutrum.</p>\n<!-- /wp:paragraph -->\";}i:8;a:1:{s:7:\"content\";s:478:\"<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Encuéntranos</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Dirección:</strong> Phasellus finibus vitae lectus ultricies congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Horario de atención:</strong> Maecenas facilisis faucibus eros, ut porta tellus aliquam at.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\";}i:9;a:1:{s:7:\"content\";s:312:\"<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:html -->\n<iframe src=\"https://www.openstreetmap.org/export/embed.html?bbox=-74.7063446044922%2C4.463480803338036%2C-73.94004821777345%2C4.841259591716138&amp;layer=mapnik\"></iframe>\n<!-- /wp:html --></div>\n<!-- /wp:group -->\";}i:10;a:1:{s:7:\"content\";s:87:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contáctanos</h2>\n<!-- /wp:heading -->\";}i:11;a:1:{s:7:\"content\";s:220:\"<!-- wp:paragraph -->\n<p>In scelerisque lacus nec diam tristique imperdiet. Nam faucibus orci non ante mollis, in dapibus velit egestas. Sed mollis condimentum dui, a iaculis dui vestibulum eu.</p>\n<!-- /wp:paragraph -->\";}i:12;a:1:{s:7:\"content\";s:96:\"<!-- wp:paragraph -->\n<p><strong>Teléfono:</strong> +01 123 456 7890</p>\n<!-- /wp:paragraph -->\";}i:13;a:1:{s:7:\"content\";s:110:\"<!-- wp:paragraph -->\n<p><strong>Correo electrónico:</strong> contacto@example.com</p>\n<!-- /wp:paragraph -->\";}i:14;a:1:{s:7:\"content\";s:549:\"<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lorem ipsum</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>NIT:</strong> 01234567890</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Representante legal:</strong> Praesent Ut Ex Urna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc dictum, dui sit amet tristique pharetra, dolor arcu viverra arcu, ac pulvinar quam justo quis magna.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\";}i:15;a:1:{s:7:\"content\";s:417:\"<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:image {\"lightbox\":{\"enabled\":false},\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image size-full\"><a href=\"https://google.com\"><img src=\"http://localhost:8000/wp-content/uploads/2025/05/pie-de-pagina-1.png\" alt=\"\" class=\"wp-image-58\"/></a></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"header\";a:2:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";}s:5:\"about\";a:1:{i:0;s:7:\"block-4\";}s:8:\"services\";a:1:{i:0;s:7:\"block-5\";}s:15:\"articles-header\";a:2:{i:0;s:7:\"block-6\";i:1;s:7:\"block-7\";}s:8:\"location\";a:2:{i:0;s:7:\"block-8\";i:1;s:7:\"block-9\";}s:7:\"contact\";a:4:{i:0;s:8:\"block-10\";i:1;s:8:\"block-11\";i:2;s:8:\"block-12\";i:3;s:8:\"block-13\";}s:6:\"footer\";a:2:{i:0;s:8:\"block-14\";i:1;s:8:\"block-15\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(139, 'can_compress_scripts', '0', 'on'),
(150, 'theme_mods_twentytwentyfive', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1746795068;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(151, 'current_theme', 'Fundadores', 'auto'),
(152, 'theme_mods_fundadores', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:22;s:12:\"header_image\";s:61:\"http://localhost:8000/wp-content/uploads/2025/05/cabecera.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:49;s:3:\"url\";s:61:\"http://localhost:8000/wp-content/uploads/2025/05/cabecera.jpg\";s:13:\"thumbnail_url\";s:61:\"http://localhost:8000/wp-content/uploads/2025/05/cabecera.jpg\";s:6:\"height\";i:1280;s:5:\"width\";i:1920;}s:15:\"auth_header_img\";s:75:\"http://localhost:8000/wp-content/uploads/2025/05/cabecera-autenticacion.png\";}', 'on'),
(153, 'theme_switched', '', 'auto'),
(170, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'auto'),
(171, 'site_logo', '22', 'auto'),
(172, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(173, 'recently_activated', 'a:1:{s:27:\"wp-optimize/wp-optimize.php\";i:1746938848;}', 'off'),
(178, 'category_children', 'a:0:{}', 'auto'),
(179, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(184, 'new_admin_email', 'contacto@example.com', 'auto'),
(185, '_recaptcha_site_key', '', 'auto'),
(186, '_recaptcha_secret_key', '', 'auto'),
(187, '_default_thumbnail_id', '54', 'auto'),
(188, '_contact_email', 'contacto@example.com', 'auto'),
(246, 'updraft_lock_load-url-task', '0', 'no'),
(247, 'updraft_lock_wpo_page_cache_preloader_creating_tasks', '0', 'no'),
(248, 'updraft_lock_wpo_minify_preloader_creating_tasks', '0', 'no'),
(478, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"65b5ac77ef13011531e1f80712d3fa17\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(479, 'nonce_key', 'J6R,0^`VZH(rx7X9%nxc>= ]#UW1u1ewv }K>l0?:iStxBT^lF$Ui8t)-Q/~I{C3', 'off'),
(480, 'nonce_salt', ':h6=:W*5xUM>{=17Z>]xlQ56U9Iw?.{{:Z=?`82X~1A(*4d2ScVW Q}-kPc#U;e3', 'off'),
(481, 'recovery_keys', 'a:0:{}', 'off'),
(483, 'finished_updating_comment_type', '1', 'auto'),
(486, '_site_transient_timeout_theme_roots', '1750255810', 'off'),
(487, '_site_transient_theme_roots', 'a:4:{s:10:\"fundadores\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(492, '_site_transient_timeout_php_check_5597bcc1d9eaf1647efae49ec9332e7c', '1750858815', 'off'),
(493, '_site_transient_php_check_5597bcc1d9eaf1647efae49ec9332e7c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(496, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'on'),
(500, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1750254685;s:15:\"version_checked\";s:5:\"6.8.1\";s:12:\"translations\";a:0:{}}', 'off'),
(501, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1750254686;s:7:\"checked\";a:4:{s:10:\"fundadores\";s:5:\"1.1.1\";s:16:\"twentytwentyfive\";s:3:\"1.2\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.2.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(502, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1750254686;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"5.3.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:18:\"mailhog-config.php\";s:3:\"1.0\";}}', 'off'),
(503, '_site_transient_timeout_wp_theme_files_patterns-2d6c8bac63a1dc60cdd5e56e8c9aa1cd', '1750258114', 'off'),
(504, '_site_transient_wp_theme_files_patterns-2d6c8bac63a1dc60cdd5e56e8c9aa1cd', 'a:2:{s:7:\"version\";s:5:\"1.1.1\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(6, 6, '_edit_lock', '1746797803:1'),
(7, 8, '_edit_lock', '1746797686:1'),
(8, 10, '_edit_lock', '1746802591:1'),
(9, 12, '_edit_lock', '1746798634:1'),
(10, 15, '_menu_item_type', 'post_type'),
(11, 15, '_menu_item_menu_item_parent', '0'),
(12, 15, '_menu_item_object_id', '6'),
(13, 15, '_menu_item_object', 'page'),
(14, 15, '_menu_item_target', ''),
(15, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 15, '_menu_item_xfn', ''),
(17, 15, '_menu_item_url', ''),
(18, 16, '_menu_item_type', 'post_type'),
(19, 16, '_menu_item_menu_item_parent', '0'),
(20, 16, '_menu_item_object_id', '8'),
(21, 16, '_menu_item_object', 'page'),
(22, 16, '_menu_item_target', ''),
(23, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 16, '_menu_item_xfn', ''),
(25, 16, '_menu_item_url', ''),
(26, 17, '_menu_item_type', 'post_type'),
(27, 17, '_menu_item_menu_item_parent', '0'),
(28, 17, '_menu_item_object_id', '12'),
(29, 17, '_menu_item_object', 'page'),
(30, 17, '_menu_item_target', ''),
(31, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 17, '_menu_item_xfn', ''),
(33, 17, '_menu_item_url', ''),
(34, 18, '_menu_item_type', 'post_type'),
(35, 18, '_menu_item_menu_item_parent', '0'),
(36, 18, '_menu_item_object_id', '10'),
(37, 18, '_menu_item_object', 'page'),
(38, 18, '_menu_item_target', ''),
(39, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 18, '_menu_item_xfn', ''),
(41, 18, '_menu_item_url', ''),
(45, 20, '_wp_attached_file', '2025/05/logotipo-1.png'),
(46, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2025/05/logotipo-1.png\";s:8:\"filesize\";i:70882;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"logotipo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6575;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"logotipo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3062;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 21, '_wp_attached_file', '2025/05/cropped-logotipo-1.png'),
(48, 21, '_wp_attachment_context', 'site-icon'),
(49, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2025/05/cropped-logotipo-1.png\";s:8:\"filesize\";i:10665;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"cropped-logotipo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6592;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"cropped-logotipo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3077;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:30:\"cropped-logotipo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5796;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:30:\"cropped-logotipo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3931;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:30:\"cropped-logotipo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3649;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:28:\"cropped-logotipo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1269;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 22, '_wp_attached_file', '2025/05/logotipo-2.png'),
(51, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2025/05/logotipo-2.png\";s:8:\"filesize\";i:74681;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"logotipo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6163;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"logotipo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2847;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 23, '_wp_attached_file', '2025/05/acerca-de-1.jpg'),
(55, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:23:\"2025/05/acerca-de-1.jpg\";s:8:\"filesize\";i:138176;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"acerca-de-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19863;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"acerca-de-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9141;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 25, '_wp_attached_file', '2025/05/acerca-de-2.jpg'),
(58, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:23:\"2025/05/acerca-de-2.jpg\";s:8:\"filesize\";i:83673;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"acerca-de-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13806;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"acerca-de-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6929;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 26, '_wp_attached_file', '2025/05/acerca-de-3.jpg'),
(60, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:23:\"2025/05/acerca-de-3.jpg\";s:8:\"filesize\";i:60737;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"acerca-de-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10874;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"acerca-de-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5941;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 31, '_edit_lock', '1746800317:1'),
(67, 32, '_wp_attached_file', '2025/05/publicacion-1.jpg'),
(68, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:691;s:4:\"file\";s:25:\"2025/05/publicacion-1.jpg\";s:8:\"filesize\";i:534126;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"publicacion-1-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27399;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"publicacion-1-1024x553.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127334;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"publicacion-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19456;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"publicacion-1-768x415.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84561;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(71, 31, '_thumbnail_id', '32'),
(72, 34, '_edit_lock', '1746800387:1'),
(73, 35, '_wp_attached_file', '2025/05/publicacion-2.jpg'),
(74, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2025/05/publicacion-2.jpg\";s:8:\"filesize\";i:344158;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"publicacion-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14787;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"publicacion-2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116703;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"publicacion-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6395;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"publicacion-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69833;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 34, '_thumbnail_id', '35'),
(78, 37, '_edit_lock', '1746800461:1'),
(79, 38, '_wp_attached_file', '2025/05/publicacion-3.jpg'),
(80, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2025/05/publicacion-3.jpg\";s:8:\"filesize\";i:207224;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"publicacion-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12969;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"publicacion-3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83733;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"publicacion-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6073;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"publicacion-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53256;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 37, '_thumbnail_id', '38'),
(84, 40, '_edit_lock', '1746800531:1'),
(85, 41, '_wp_attached_file', '2025/05/publicacion-4.jpg'),
(86, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2025/05/publicacion-4.jpg\";s:8:\"filesize\";i:187039;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"publicacion-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11344;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"publicacion-4-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74039;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"publicacion-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5427;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"publicacion-4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47355;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 40, '_thumbnail_id', '41'),
(90, 43, '_edit_lock', '1746800611:1'),
(91, 44, '_wp_attached_file', '2025/05/publicacion-5.jpg'),
(92, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2025/05/publicacion-5.jpg\";s:8:\"filesize\";i:129132;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"publicacion-5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6724;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"publicacion-5-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47979;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"publicacion-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3244;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"publicacion-5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29447;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 43, '_thumbnail_id', '44'),
(96, 46, '_edit_lock', '1746800685:1'),
(97, 47, '_wp_attached_file', '2025/05/publicacion-6.jpg'),
(98, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:854;s:4:\"file\";s:25:\"2025/05/publicacion-6.jpg\";s:8:\"filesize\";i:217001;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"publicacion-6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11634;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"publicacion-6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78283;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"publicacion-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5090;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"publicacion-6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48575;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 46, '_thumbnail_id', '47'),
(102, 49, '_wp_attached_file', '2025/05/cabecera.jpg'),
(103, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:20:\"2025/05/cabecera.jpg\";s:8:\"filesize\";i:352350;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"cabecera-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11655;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"cabecera-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66895;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"cabecera-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5158;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"cabecera-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43195;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"cabecera-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125906;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 49, '_wp_attachment_custom_header_last_used_fundadores', '1746801310'),
(105, 49, '_wp_attachment_is_custom_header', 'fundadores'),
(108, 51, '_wp_attached_file', '2025/05/servicios-1.jpg'),
(109, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:23:\"2025/05/servicios-1.jpg\";s:8:\"filesize\";i:110587;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"servicios-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18555;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"servicios-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7408;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 54, '_wp_attached_file', '2025/05/miniatura.jpg'),
(111, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:847;s:4:\"file\";s:21:\"2025/05/miniatura.jpg\";s:8:\"filesize\";i:182280;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"miniatura-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11267;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"miniatura-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73140;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"miniatura-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5206;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"miniatura-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46996;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 58, '_wp_attached_file', '2025/05/pie-de-pagina-1.png'),
(119, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:27:\"2025/05/pie-de-pagina-1.png\";s:8:\"filesize\";i:3149;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"pie-de-pagina-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1010;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 21, '_oembed_0f240e8d2c45a33bedc8c9655a8ec92b', '{{unknown}}'),
(123, 61, '_wp_attached_file', '2025/05/cabecera-autenticacion.png'),
(124, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2025/05/cabecera-autenticacion.png\";s:8:\"filesize\";i:70882;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"cabecera-autenticacion-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6575;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"cabecera-autenticacion-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3062;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2025-05-09 07:50:13', '2025-05-09 12:50:13', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Nuestra dirección de sitio web es: http://localhost:8000.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se puede proporcionar una cadena anónima creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil será visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si deja un comentario en nuestro sitio, puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Estos es para tu comodidad y no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán un año de duración.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si visitas nuestra página de Acceso, se instalará una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando inicies sesión, se instalarán varias cookies para guardar tu información de acceso y opciones de visualización de pantalla. Las cookies de acceso permanecerán por dos días y las cookies de opciones de pantalla se guardarán por un año. Si seleccionas «Recuérdarme» en tu inicio de sesión, estas se guardarán por dos semanas. Si cierra la sesión de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para los usuarios que se registren en nuestro sitio web (si los hay), se almacenarán todos sus datos de información personal que proporcionen. Cualquier usuario puede ver, editar o eliminar su información personal cuando lo desee (a excepción del nombre de usuario que no se puede editar). Los administradores de sitios web, también pueden ver y editar dicha información. </p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar la exportación de un archivo con tus datos personales recopilados, incluyendo cualquier otro dato que nos haya proporcionado. También puede solicitar la eliminación de cualquier dato personal que guardemos sobre ti. Esto no incluye los datos que estamos obligados a consevar para fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Puede que los comentarios de los visitantes sean validados por un servicio automatico de detección de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'política-privacidad', '', '', '2025-05-09 07:50:13', '2025-05-09 12:50:13', '', 0, 'http://localhost:8000/?page_id=3', 0, 'page', '', 0),
(6, 1, '2025-05-09 08:36:45', '2025-05-09 13:36:45', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2025-05-09 08:36:45', '2025-05-09 13:36:45', '', 0, 'http://localhost:8000/?page_id=6', 0, 'page', '', 0),
(8, 1, '2025-05-09 08:37:09', '2025-05-09 13:37:09', '', 'Publicaciones', '', 'publish', 'closed', 'closed', '', 'publicaciones', '', '', '2025-05-09 08:37:09', '2025-05-09 13:37:09', '', 0, 'http://localhost:8000/?page_id=8', 0, 'page', '', 0),
(10, 1, '2025-05-09 08:37:59', '2025-05-09 13:37:59', '<!-- wp:paragraph -->\n<p>Ut nisl lectus, molestie in accumsan in, venenatis ut magna. Quisque aliquet justo et ante consequat, at vehicula felis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Dirección:</strong> Phasellus finibus vitae lectus ultricies congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Teléfono:</strong> +01 123 456 7890</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Correo electrónico:</strong> contacto@example.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Horario de atención:</strong> Maecenas facilisis faucibus eros, ut porta tellus aliquam at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contactar', '', 'publish', 'closed', 'closed', '', 'contactar', '', '', '2025-05-09 09:56:00', '2025-05-09 14:56:00', '', 0, 'http://localhost:8000/?page_id=10', 0, 'page', '', 0),
(12, 1, '2025-05-09 08:38:24', '2025-05-09 13:38:24', '<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":23,\"mediaLink\":\"http://localhost:8000/?attachment_id=23\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p>Mauris sed dolor ut ante molestie vestibulum. Pellentesque gravida felis sed libero mattis, in tincidunt ligula scelerisque. Praesent nec orci rhoncus, commodo lectus in, porta justo. Integer sed risus sit amet dolor facilisis aliquam.</p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost:8000/wp-content/uploads/2025/05/acerca-de-1.jpg\" alt=\"\" class=\"wp-image-23 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":25,\"mediaLink\":\"http://localhost:8000/?attachment_id=25\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost:8000/wp-content/uploads/2025/05/acerca-de-2.jpg\" alt=\"\" class=\"wp-image-25 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p>Fusce semper, dui ac varius consequat, diam nisl laoreet nunc, eget maximus metus erat pulvinar massa. Ut efficitur a massa ac sollicitudin. Praesent ut ex urna. Proin gravida nisi vitae justo hendrerit lacinia.</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":26,\"mediaLink\":\"http://localhost:8000/?attachment_id=26\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p>Nunc dictum, dui sit amet tristique pharetra, dolor arcu viverra arcu, ac pulvinar quam justo quis magna. Duis sagittis nunc justo, id pellentesque nunc cursus vel.</p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost:8000/wp-content/uploads/2025/05/acerca-de-3.jpg\" alt=\"\" class=\"wp-image-26 size-full\"/></figure></div>\n<!-- /wp:media-text -->', 'Acerca de', '', 'publish', 'closed', 'closed', '', 'acerca-de', '', '', '2025-05-09 08:50:00', '2025-05-09 13:50:00', '', 0, 'http://localhost:8000/?page_id=12', 0, 'page', '', 0),
(15, 1, '2025-05-09 08:40:11', '2025-05-09 13:40:11', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2025-05-09 08:40:11', '2025-05-09 13:40:11', '', 0, 'http://localhost:8000/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2025-05-09 08:40:11', '2025-05-09 13:40:11', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2025-05-09 08:40:11', '2025-05-09 13:40:11', '', 0, 'http://localhost:8000/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2025-05-09 08:40:11', '2025-05-09 13:40:11', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2025-05-09 08:40:11', '2025-05-09 13:40:11', '', 0, 'http://localhost:8000/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2025-05-09 08:40:11', '2025-05-09 13:40:11', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2025-05-09 08:40:11', '2025-05-09 13:40:11', '', 0, 'http://localhost:8000/?p=18', 4, 'nav_menu_item', '', 0),
(20, 1, '2025-05-09 08:44:31', '2025-05-09 13:44:31', '', '', '', 'inherit', 'open', 'closed', '', 'logotipo-1', '', '', '2025-05-09 08:44:36', '2025-05-09 13:44:36', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/logotipo-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2025-05-09 08:44:36', '2025-05-09 13:44:36', 'http://localhost:8000/wp-content/uploads/2025/05/cropped-logotipo-1.png', 'cropped-logotipo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logotipo-1-png', '', '', '2025-05-09 08:44:36', '2025-05-09 13:44:36', '', 20, 'http://localhost:8000/wp-content/uploads/2025/05/cropped-logotipo-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2025-05-09 08:45:48', '2025-05-09 13:45:48', '', '', '', 'inherit', 'open', 'closed', '', 'logotipo-2', '', '', '2025-05-09 08:45:54', '2025-05-09 13:45:54', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/logotipo-2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2025-05-09 08:48:26', '2025-05-09 13:48:26', '', 'acerca-de-1', '', 'inherit', 'open', 'closed', '', 'acerca-de-1', '', '', '2025-05-09 08:48:26', '2025-05-09 13:48:26', '', 12, 'http://localhost:8000/wp-content/uploads/2025/05/acerca-de-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2025-05-09 08:48:55', '2025-05-09 13:48:55', '', 'acerca-de-2', '', 'inherit', 'open', 'closed', '', 'acerca-de-2', '', '', '2025-05-09 08:48:55', '2025-05-09 13:48:55', '', 12, 'http://localhost:8000/wp-content/uploads/2025/05/acerca-de-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2025-05-09 08:49:34', '2025-05-09 13:49:34', '', 'acerca-de-3', '', 'inherit', 'open', 'closed', '', 'acerca-de-3', '', '', '2025-05-09 08:49:34', '2025-05-09 13:49:34', '', 12, 'http://localhost:8000/wp-content/uploads/2025/05/acerca-de-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2025-05-09 09:18:28', '2025-05-09 14:18:28', '<!-- wp:paragraph -->\n<p>Nullam enim quam, maximus vitae arcu sit amet, egestas placerat justo. Donec ligula justo, rutrum non auctor vel, porttitor vitae elit. Nam id risus sagittis, iaculis enim vitae, tempus justo. Integer ut sapien sed libero iaculis scelerisque. Vestibulum sed consequat arcu, in imperdiet nisi. Integer auctor nunc vitae dui mollis imperdiet. Cras sollicitudin sapien at mi bibendum dapibus. Phasellus magna eros, cursus sit amet tortor ut, varius euismod nisl. Pellentesque a egestas metus, quis aliquam lacus. Sed cursus mi ut consequat euismod. Vivamus dapibus nulla vitae lacus lacinia aliquet. Etiam bibendum egestas leo ac sollicitudin. Fusce venenatis arcu sit amet nulla tempus, ac tempus mauris porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent sed dolor sagittis, lobortis nibh vitae, vestibulum nulla. Nullam in dui interdum augue iaculis rutrum. Mauris et diam ac lectus ullamcorper finibus. Aenean eu metus sed enim fermentum pellentesque. Maecenas suscipit et massa non tincidunt. Aenean a est posuere dolor bibendum rutrum. In scelerisque lacus nec diam tristique imperdiet. Nam faucibus orci non ante mollis, in dapibus velit egestas. Sed mollis condimentum dui, a iaculis dui vestibulum eu. Aenean sit amet facilisis augue. Vestibulum feugiat eros at ipsum vulputate rhoncus. Sed maximus, elit ut suscipit ultricies, lorem ex vehicula erat, ac placerat magna nisi et leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent luctus imperdiet aliquam. Nunc egestas, leo id dictum ultrices, velit velit lacinia enim, non volutpat magna leo sed dolor. Duis at nibh justo. Etiam id urna egestas nisl ullamcorper efficitur. Proin vestibulum lobortis tincidunt. Quisque condimentum nisi et venenatis accumsan. Nunc vestibulum nisl interdum dolor maximus gravida. Nullam vitae odio id lectus mattis sagittis eget a est. Quisque pharetra neque ut ullamcorper elementum. Nulla congue neque at hendrerit ornare.</p>\n<!-- /wp:paragraph -->', 'Sed fermentum', '', 'publish', 'open', 'open', '', 'sed-fermentum', '', '', '2025-05-09 09:18:28', '2025-05-09 14:18:28', '', 0, 'http://localhost:8000/?p=31', 0, 'post', '', 0),
(32, 1, '2025-05-09 09:17:45', '2025-05-09 14:17:45', '', '', '', 'inherit', 'open', 'closed', '', 'publicacion-1', '', '', '2025-05-09 09:17:50', '2025-05-09 14:17:50', '', 31, 'http://localhost:8000/wp-content/uploads/2025/05/publicacion-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2025-05-09 09:19:41', '2025-05-09 14:19:41', '<!-- wp:paragraph -->\n<p>Proin gravida nisi vitae justo hendrerit lacinia. Nunc dictum, dui sit amet tristique pharetra, dolor arcu viverra arcu, ac pulvinar quam justo quis magna. Duis sagittis nunc justo, id pellentesque nunc cursus vel. Integer eget ullamcorper augue. Ut vulputate facilisis metus. Fusce non accumsan metus, at eleifend orci. Vivamus venenatis purus ac nulla hendrerit tempus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse auctor dolor quam, at lobortis nibh dapibus nec. Nunc eget lacus in elit consequat sagittis vel venenatis nunc. Sed quis diam cursus, scelerisque quam et, porta augue. Aliquam erat volutpat. Nullam sit amet vehicula tortor. Proin lectus metus, fermentum sed libero at, tempus viverra libero. Maecenas rhoncus egestas tincidunt. Integer suscipit semper est, ac ullamcorper odio venenatis sed. Vivamus accumsan posuere posuere.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi luctus mollis varius. Suspendisse eu finibus elit. Aenean non leo arcu. Aliquam erat volutpat. Morbi ante justo, placerat non ligula in, pharetra lacinia massa. Ut nisl lectus, molestie in accumsan in, venenatis ut magna. Quisque aliquet justo et ante consequat, at vehicula felis eleifend. Nunc vehicula ut purus sed facilisis. Phasellus finibus vitae lectus ultricies congue. Maecenas facilisis faucibus eros, ut porta tellus aliquam at. Proin facilisis auctor quam. Integer quis sem vel ligula ultricies iaculis et vitae libero. Etiam efficitur mattis quam in luctus. Proin ultrices leo et justo euismod hendrerit. In hac habitasse platea dictumst.</p>\n<!-- /wp:paragraph -->', 'Praesent ut ex urna', '', 'publish', 'open', 'open', '', 'praesent-ut-ex-urna', '', '', '2025-05-09 09:19:41', '2025-05-09 14:19:41', '', 0, 'http://localhost:8000/?p=34', 0, 'post', '', 0),
(35, 1, '2025-05-09 09:19:13', '2025-05-09 14:19:13', '', '', '', 'inherit', 'open', 'closed', '', 'publicacion-2', '', '', '2025-05-09 09:19:19', '2025-05-09 14:19:19', '', 34, 'http://localhost:8000/wp-content/uploads/2025/05/publicacion-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2025-05-09 09:20:53', '2025-05-09 14:20:53', '<!-- wp:paragraph -->\n<p>Nunc egestas, leo id dictum ultrices, velit velit lacinia enim, non volutpat magna leo sed dolor. Duis at nibh justo. Etiam id urna egestas nisl ullamcorper efficitur. Proin vestibulum lobortis tincidunt. Quisque condimentum nisi et venenatis accumsan. Nunc vestibulum nisl interdum dolor maximus gravida. Nullam vitae odio id lectus mattis sagittis eget a est. Quisque pharetra neque ut ullamcorper elementum. Nulla congue neque at hendrerit ornare.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac mauris risus. Etiam ex nulla, semper ac nisl consequat, interdum pretium libero. Pellentesque non elit ultricies massa finibus semper tristique quis ante. Praesent porta eleifend urna non condimentum. In ut finibus diam. Sed diam sapien, vehicula sed fermentum id, tempus id diam. Nullam non odio augue. Suspendisse lacinia sagittis vestibulum. Integer vitae diam fermentum, porttitor elit sed, dignissim nisl. Quisque consectetur mi vitae nulla cursus volutpat. Integer mattis purus sem, tristique tempus arcu sodales quis. Nulla consequat nunc turpis, a commodo nisl mollis sed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam vestibulum sapien ut lorem blandit, eget blandit arcu pretium. Sed volutpat gravida ullamcorper. Aliquam eu sapien nec velit placerat blandit. Aliquam tincidunt gravida tortor at vestibulum. In hac habitasse platea dictumst. Integer pharetra magna nec faucibus porttitor. Praesent tristique dolor libero, quis consequat dui gravida vel. Suspendisse sed ultricies eros. Duis commodo at sapien ac molestie. Phasellus commodo sem sit amet porta aliquet. Donec convallis iaculis ultricies. Maecenas iaculis nulla vel porttitor facilisis. Vivamus vestibulum justo sit amet magna porttitor tincidunt.</p>\n<!-- /wp:paragraph -->', 'Praesent luctus imperdiet', '', 'publish', 'open', 'open', '', 'praesent-luctus-imperdiet', '', '', '2025-05-09 09:20:53', '2025-05-09 14:20:53', '', 0, 'http://localhost:8000/?p=37', 0, 'post', '', 0),
(38, 1, '2025-05-09 09:20:35', '2025-05-09 14:20:35', '', '', '', 'inherit', 'open', 'closed', '', 'publicacion-3', '', '', '2025-05-09 09:20:38', '2025-05-09 14:20:38', '', 37, 'http://localhost:8000/wp-content/uploads/2025/05/publicacion-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2025-05-09 09:22:02', '2025-05-09 14:22:02', '<!-- wp:paragraph -->\n<p>Vivamus faucibus eros fringilla sem feugiat, faucibus iaculis lorem lobortis. Sed quis molestie ipsum. Mauris eget magna feugiat, gravida neque a, tincidunt tellus. Proin tellus nulla, elementum in vehicula id, facilisis sit amet felis. Integer dignissim nunc velit, eu vestibulum massa euismod vel. Proin id volutpat massa. Ut consectetur at lacus quis porta. Nulla interdum turpis dui, in vestibulum risus suscipit vitae. Proin ultricies, libero quis fermentum lacinia, quam tellus elementum leo, vitae consequat odio augue ac dui. Nullam euismod elementum dui, quis elementum purus faucibus vitae. Aenean ultrices ac urna vel congue. Sed eget luctus dui.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi a justo sed urna tincidunt ultricies quis a massa. Phasellus a suscipit mauris. Quisque ut iaculis leo, vitae consectetur elit. Mauris ante magna, laoreet ac nulla vel, venenatis congue orci. Proin convallis libero eros, vitae venenatis felis pretium in. Sed eu laoreet erat. Pellentesque at dui dictum, facilisis purus at, accumsan libero. Morbi tincidunt rhoncus tellus, ut bibendum sapien vulputate eu. Nulla tincidunt mattis viverra. Nulla aliquam volutpat rhoncus. Donec ligula dolor, ornare in lobortis non, bibendum non augue. Morbi scelerisque turpis nec sapien tincidunt porta. Ut quis molestie sem, sed tempor nisi. Nam posuere urna eget odio tempor varius. Praesent a elit id ante auctor malesuada non a elit. Nam neque augue, tempus sed vestibulum vitae, euismod et diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus a bibendum ipsum. Etiam at nisl eros. Quisque blandit efficitur erat sit amet consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse facilisis feugiat velit, non pharetra purus laoreet non. Proin eu vehicula ligula, at faucibus orci. Proin dapibus tincidunt ornare. Donec volutpat enim eget nisl condimentum aliquet. Ut nec quam aliquam, dapibus diam non, aliquet orci. Pellentesque ut egestas magna. Morbi a ullamcorper urna. Sed sagittis tincidunt ex, ut elementum dolor tristique vel. Fusce pulvinar, arcu a rutrum imperdiet, lectus tortor volutpat sapien, interdum vestibulum ligula tortor laoreet elit. In pretium nibh in ex tempus faucibus. Morbi id dolor hendrerit, interdum enim et, lobortis arcu.</p>\n<!-- /wp:paragraph -->', 'Nunc venenatis in sapien', '', 'publish', 'open', 'open', '', 'nunc-venenatis-in-sapien', '', '', '2025-05-09 09:22:02', '2025-05-09 14:22:02', '', 0, 'http://localhost:8000/?p=40', 0, 'post', '', 0),
(41, 1, '2025-05-09 09:21:46', '2025-05-09 14:21:46', '', '', '', 'inherit', 'open', 'closed', '', 'publicacion-4', '', '', '2025-05-09 09:21:50', '2025-05-09 14:21:50', '', 40, 'http://localhost:8000/wp-content/uploads/2025/05/publicacion-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2025-05-09 09:23:18', '2025-05-09 14:23:18', '<!-- wp:paragraph -->\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse facilisis feugiat velit, non pharetra purus laoreet non. Proin eu vehicula ligula, at faucibus orci. Proin dapibus tincidunt ornare. Donec volutpat enim eget nisl condimentum aliquet. Ut nec quam aliquam, dapibus diam non, aliquet orci. Pellentesque ut egestas magna. Morbi a ullamcorper urna. Sed sagittis tincidunt ex, ut elementum dolor tristique vel. Fusce pulvinar, arcu a rutrum imperdiet, lectus tortor volutpat sapien, interdum vestibulum ligula tortor laoreet elit. In pretium nibh in ex tempus faucibus. Morbi id dolor hendrerit, interdum enim et, lobortis arcu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas aliquet neque enim, sed tempus ex fringilla et. Sed facilisis velit et risus aliquam commodo. Proin eros augue, condimentum ut dignissim nec, pellentesque quis dui. In vitae ante porta, laoreet risus a, viverra ipsum. Curabitur pharetra nisi feugiat, tempus velit id, tempor lectus. Integer sed nibh dui. Sed suscipit magna dictum massa fringilla, sed dapibus est finibus. Nullam faucibus dictum quam congue sollicitudin. Sed tincidunt suscipit blandit. Praesent dolor lacus, egestas at justo vel, porta luctus quam. Sed sed sapien a diam tincidunt malesuada. Proin sapien ante, volutpat sollicitudin porttitor eget, pellentesque ac massa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce nec libero non nulla pulvinar volutpat eu vel neque. Nunc a placerat leo, id rhoncus nibh. Pellentesque vulputate lacus eu erat cursus, eu maximus libero facilisis. Nullam dignissim turpis et leo varius aliquam. Mauris elementum massa lorem. Vestibulum ut luctus ipsum. Nullam nec metus ante. In a lorem ut lectus semper ultrices.</p>\n<!-- /wp:paragraph -->', 'Quisque blandit efficitur', '', 'publish', 'open', 'open', '', 'quisque-blandit-efficitur', '', '', '2025-05-09 09:23:18', '2025-05-09 14:23:18', '', 0, 'http://localhost:8000/?p=43', 0, 'post', '', 0),
(44, 1, '2025-05-09 09:23:03', '2025-05-09 14:23:03', '', '', '', 'inherit', 'open', 'closed', '', 'publicacion-5', '', '', '2025-05-09 09:23:07', '2025-05-09 14:23:07', '', 43, 'http://localhost:8000/wp-content/uploads/2025/05/publicacion-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2025-05-09 09:24:50', '2025-05-09 14:24:50', '<!-- wp:paragraph -->\n<p>Proin tellus nulla, elementum in vehicula id, facilisis sit amet felis. Integer dignissim nunc velit, eu vestibulum massa euismod vel. Proin id volutpat massa. Ut consectetur at lacus quis porta. Nulla interdum turpis dui, in vestibulum risus suscipit vitae. Proin ultricies, libero quis fermentum lacinia, quam tellus elementum leo, vitae consequat odio augue ac dui. Nullam euismod elementum dui, quis elementum purus faucibus vitae. Aenean ultrices ac urna vel congue. Sed eget luctus dui.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi a justo sed urna tincidunt ultricies quis a massa. Phasellus a suscipit mauris. Quisque ut iaculis leo, vitae consectetur elit. Mauris ante magna, laoreet ac nulla vel, venenatis congue orci. Proin convallis libero eros, vitae venenatis felis pretium in. Sed eu laoreet erat. Pellentesque at dui dictum, facilisis purus at, accumsan libero. Morbi tincidunt rhoncus tellus, ut bibendum sapien vulputate eu. Nulla tincidunt mattis viverra. Nulla aliquam volutpat rhoncus. Donec ligula dolor, ornare in lobortis non, bibendum non augue. Morbi scelerisque turpis nec sapien tincidunt porta. Ut quis molestie sem, sed tempor nisi. Nam posuere urna eget odio tempor varius. Praesent a elit id ante auctor malesuada non a elit. Nam neque augue, tempus sed vestibulum vitae, euismod et diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus a bibendum ipsum. Etiam at nisl eros. Quisque blandit efficitur erat sit amet consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse facilisis feugiat velit, non pharetra purus laoreet non. Proin eu vehicula ligula, at faucibus orci. Proin dapibus tincidunt ornare. Donec volutpat enim eget nisl condimentum aliquet. Ut nec quam aliquam, dapibus diam non, aliquet orci. Pellentesque ut egestas magna. Morbi a ullamcorper urna. Sed sagittis tincidunt ex, ut elementum dolor tristique vel. Fusce pulvinar, arcu a rutrum imperdiet, lectus tortor volutpat sapien, interdum vestibulum ligula tortor laoreet elit. In pretium nibh in ex tempus faucibus. Morbi id dolor hendrerit, interdum enim et, lobortis arcu.</p>\n<!-- /wp:paragraph -->', 'Aenean id velit', '', 'publish', 'open', 'open', '', 'aenean-id-velit', '', '', '2025-05-09 09:24:50', '2025-05-09 14:24:50', '', 0, 'http://localhost:8000/?p=46', 0, 'post', '', 0),
(47, 1, '2025-05-09 09:24:27', '2025-05-09 14:24:27', '', '', '', 'inherit', 'open', 'closed', '', 'publicacion-6', '', '', '2025-05-09 09:24:30', '2025-05-09 14:24:30', '', 46, 'http://localhost:8000/wp-content/uploads/2025/05/publicacion-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2025-05-09 09:34:57', '2025-05-09 14:34:57', '', '', '', 'inherit', 'open', 'closed', '', 'cabecera', '', '', '2025-05-09 09:35:05', '2025-05-09 14:35:05', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/cabecera.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2025-05-09 09:36:41', '2025-05-09 14:36:41', '', 'servicios-1', '', 'inherit', 'open', 'closed', '', 'servicios-1', '', '', '2025-05-09 09:36:41', '2025-05-09 14:36:41', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/servicios-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2025-05-09 09:56:51', '2025-05-09 14:56:51', '', '', '', 'inherit', 'open', 'closed', '', 'miniatura', '', '', '2025-05-09 09:57:02', '2025-05-09 14:57:02', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/miniatura.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2025-05-09 10:10:02', '2025-05-09 15:10:02', '', '', '', 'inherit', 'open', 'closed', '', 'pie-de-pagina-1', '', '', '2025-05-09 10:11:22', '2025-05-09 15:11:22', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/pie-de-pagina-1.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2025-05-10 12:11:40', '2025-05-10 17:11:40', '', '', '', 'inherit', 'open', 'closed', '', 'cabecera-autenticacion', '', '', '2025-05-10 12:11:44', '2025-05-10 17:11:44', '', 0, 'http://localhost:8000/wp-content/uploads/2025/05/cabecera-autenticacion.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú principal', 'menu-principal', 0),
(3, 'Institucional', 'institucional', 0),
(4, 'Familia', 'familia', 0),
(5, 'Infancia', 'infancia', 0),
(6, 'Maternidad', 'maternidad', 0),
(7, 'Paternidad', 'paternidad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(31, 3, 0),
(31, 4, 0),
(34, 3, 0),
(34, 5, 0),
(37, 3, 0),
(37, 6, 0),
(40, 3, 0),
(40, 7, 0),
(43, 3, 0),
(43, 6, 0),
(46, 3, 0),
(46, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 6),
(4, 4, 'post_tag', '', 0, 2),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 2),
(7, 7, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1746795047'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '64'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.18.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$RR.tnV1rsaV8cXwKxeGypOIbo9fBQXKACIa/XBX1fi9y1B/HV4o9O', 'admin', 'contacto@example.com', 'http://localhost:8000', '2025-05-09 12:50:13', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
