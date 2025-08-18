-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 01:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proz`
--

-- --------------------------------------------------------

--
-- Table structure for table `proz_commentmeta`
--

CREATE TABLE `proz_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proz_comments`
--

CREATE TABLE `proz_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proz_db7_forms`
--

CREATE TABLE `proz_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proz_links`
--

CREATE TABLE `proz_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proz_options`
--

CREATE TABLE `proz_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_options`
--

INSERT INTO `proz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1755448036;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755449836;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755485837;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755485934;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755485941;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755518238;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1755529134;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755532636;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1756004395;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1756004568;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1756014701;a:1:{s:26:\"wpcode_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/proz', 'on'),
(3, 'home', 'http://localhost/proz', 'on'),
(4, 'blogname', 'PROZ', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'admin@proz.com.my', 'on'),
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
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:136:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:14:\"news-events/?$\";s:31:\"index.php?post_type=news-events\";s:31:\"news-events/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=news-events&paged=$matches[1]\";s:34:\"wpcode/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"wpcode/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"wpcode/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"wpcode/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"wpcode/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"wpcode/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"wpcode/([^/]+)/embed/?$\";s:39:\"index.php?wpcode=$matches[1]&embed=true\";s:27:\"wpcode/([^/]+)/trackback/?$\";s:33:\"index.php?wpcode=$matches[1]&tb=1\";s:35:\"wpcode/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?wpcode=$matches[1]&paged=$matches[2]\";s:42:\"wpcode/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?wpcode=$matches[1]&cpage=$matches[2]\";s:31:\"wpcode/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?wpcode=$matches[1]&page=$matches[2]\";s:23:\"wpcode/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"wpcode/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"wpcode/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"wpcode/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"wpcode/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"wpcode/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:52:\"wpcode_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?wpcode_type=$matches[1]&feed=$matches[2]\";s:47:\"wpcode_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?wpcode_type=$matches[1]&feed=$matches[2]\";s:28:\"wpcode_type/([^/]+)/embed/?$\";s:44:\"index.php?wpcode_type=$matches[1]&embed=true\";s:40:\"wpcode_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?wpcode_type=$matches[1]&paged=$matches[2]\";s:22:\"wpcode_type/([^/]+)/?$\";s:33:\"index.php?wpcode_type=$matches[1]\";s:56:\"wpcode_location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?wpcode_location=$matches[1]&feed=$matches[2]\";s:51:\"wpcode_location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?wpcode_location=$matches[1]&feed=$matches[2]\";s:32:\"wpcode_location/([^/]+)/embed/?$\";s:48:\"index.php?wpcode_location=$matches[1]&embed=true\";s:44:\"wpcode_location/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?wpcode_location=$matches[1]&paged=$matches[2]\";s:26:\"wpcode_location/([^/]+)/?$\";s:37:\"index.php?wpcode_location=$matches[1]\";s:52:\"wpcode_tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?wpcode_tags=$matches[1]&feed=$matches[2]\";s:47:\"wpcode_tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?wpcode_tags=$matches[1]&feed=$matches[2]\";s:28:\"wpcode_tags/([^/]+)/embed/?$\";s:44:\"index.php?wpcode_tags=$matches[1]&embed=true\";s:40:\"wpcode_tags/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?wpcode_tags=$matches[1]&paged=$matches[2]\";s:22:\"wpcode_tags/([^/]+)/?$\";s:33:\"index.php?wpcode_tags=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"news-events/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"news-events/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"news-events/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"news-events/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"news-events/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"news-events/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"news-events/(.+?)/embed/?$\";s:44:\"index.php?news-events=$matches[1]&embed=true\";s:30:\"news-events/(.+?)/trackback/?$\";s:38:\"index.php?news-events=$matches[1]&tb=1\";s:38:\"news-events/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?news-events=$matches[1]&paged=$matches[2]\";s:45:\"news-events/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?news-events=$matches[1]&cpage=$matches[2]\";s:34:\"news-events/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?news-events=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:7:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:3;s:73:\"country-phone-field-contact-form-7/country-phone-field-contact-form-7.php\";i:4;s:35:\"insert-headers-and-footers/ihaf.php\";i:5;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:6;s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '8', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'proz', 'on'),
(42, 'stylesheet', 'proz', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
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
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1769741836', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'proz_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpcode_edit_snippets\";b:1;s:24:\"wpcode_activate_snippets\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.1\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(127, 'recovery_keys', 'a:0:{}', 'off'),
(128, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1754190420;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(130, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(159, 'finished_updating_comment_type', '1', 'auto'),
(160, 'WPLANG', '', 'auto'),
(161, 'new_admin_email', 'admin@proz.com.my', 'auto'),
(166, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(167, 'recently_activated', 'a:0:{}', 'off'),
(177, 'wpcode_usage_tracking_config', 'a:6:{s:3:\"day\";i:0;s:4:\"hour\";i:5;s:6:\"minute\";i:51;s:6:\"second\";i:41;s:6:\"offset\";i:21101;s:8:\"initsend\";i:1754805101;}', 'off'),
(178, 'ihaf_activated', 'a:2:{s:6:\"wpcode\";i:1754190142;s:7:\"version\";s:5:\"2.3.0\";}', 'auto');
INSERT INTO `proz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(180, 'wpcode_snippets', 'a:1:{s:10:\"everywhere\";a:2:{i:0;a:14:{s:2:\"id\";i:8;s:5:\"title\";s:27:\"Completely Disable Comments\";s:4:\"code\";s:1239:\"add_action(\'admin_init\', function () {\r\n    // Redirect any user trying to access comments page\r\n    global $pagenow;\r\n    \r\n    if ($pagenow === \'edit-comments.php\') {\r\n        wp_safe_redirect(admin_url());\r\n        exit;\r\n    }\r\n\r\n    // Remove comments metabox from dashboard\r\n    remove_meta_box(\'dashboard_recent_comments\', \'dashboard\', \'normal\');\r\n\r\n    // Disable support for comments and trackbacks in post types\r\n    foreach (get_post_types() as $post_type) {\r\n        if (post_type_supports($post_type, \'comments\')) {\r\n            remove_post_type_support($post_type, \'comments\');\r\n            remove_post_type_support($post_type, \'trackbacks\');\r\n        }\r\n    }\r\n});\r\n\r\n// Close comments on the front-end\r\nadd_filter(\'comments_open\', \'__return_false\', 20, 2);\r\nadd_filter(\'pings_open\', \'__return_false\', 20, 2);\r\n\r\n// Hide existing comments\r\nadd_filter(\'comments_array\', \'__return_empty_array\', 10, 2);\r\n\r\n// Remove comments page in menu\r\nadd_action(\'admin_menu\', function () {\r\n    remove_menu_page(\'edit-comments.php\');\r\n});\r\n\r\n// Remove comments links from admin bar\r\nadd_action(\'init\', function () {\r\n    if (is_admin_bar_showing()) {\r\n        remove_action(\'admin_bar_menu\', \'wp_admin_bar_comments_menu\', 60);\r\n    }\r\n});\";s:9:\"code_type\";s:3:\"php\";s:8:\"location\";s:10:\"everywhere\";s:11:\"auto_insert\";i:1;s:13:\"insert_number\";i:1;s:9:\"use_rules\";b:0;s:5:\"rules\";a:0:{}s:8:\"priority\";i:10;s:14:\"location_extra\";s:0:\"\";s:20:\"shortcode_attributes\";a:0:{}s:13:\"compiled_code\";s:0:\"\";s:8:\"modified\";s:19:\"2025-08-03 11:04:23\";}i:1;a:14:{s:2:\"id\";i:10;s:5:\"title\";s:22:\"Allow SVG Files Upload\";s:4:\"code\";s:1769:\"/**\r\n * Allow SVG uploads for administrator users.\r\n *\r\n * @param array $upload_mimes Allowed mime types.\r\n *\r\n * @return mixed\r\n */\r\nadd_filter(\r\n	\'upload_mimes\',\r\n	function ( $upload_mimes ) {\r\n		// By default, only administrator users are allowed to add SVGs.\r\n		// To enable more user types edit or comment the lines below but beware of\r\n		// the security risks if you allow any user to upload SVG files.\r\n		if ( ! current_user_can( \'administrator\' ) ) {\r\n			return $upload_mimes;\r\n		}\r\n\r\n		$upload_mimes[\'svg\']  = \'image/svg+xml\';\r\n		$upload_mimes[\'svgz\'] = \'image/svg+xml\';\r\n\r\n		return $upload_mimes;\r\n	}\r\n);\r\n\r\n/**\r\n * Add SVG files mime check.\r\n *\r\n * @param array        $wp_check_filetype_and_ext Values for the extension, mime type, and corrected filename.\r\n * @param string       $file Full path to the file.\r\n * @param string       $filename The name of the file (may differ from $file due to $file being in a tmp directory).\r\n * @param string[]     $mimes Array of mime types keyed by their file extension regex.\r\n * @param string|false $real_mime The actual mime type or false if the type cannot be determined.\r\n */\r\nadd_filter(\r\n	\'wp_check_filetype_and_ext\',\r\n	function ( $wp_check_filetype_and_ext, $file, $filename, $mimes, $real_mime ) {\r\n\r\n		if ( ! $wp_check_filetype_and_ext[\'type\'] ) {\r\n\r\n			$check_filetype  = wp_check_filetype( $filename, $mimes );\r\n			$ext             = $check_filetype[\'ext\'];\r\n			$type            = $check_filetype[\'type\'];\r\n			$proper_filename = $filename;\r\n\r\n			if ( $type && 0 === strpos( $type, \'image/\' ) && \'svg\' !== $ext ) {\r\n				$ext  = false;\r\n				$type = false;\r\n			}\r\n\r\n			$wp_check_filetype_and_ext = compact( \'ext\', \'type\', \'proper_filename\' );\r\n		}\r\n\r\n		return $wp_check_filetype_and_ext;\r\n\r\n	},\r\n	10,\r\n	5\r\n);\r\n\";s:9:\"code_type\";s:3:\"php\";s:8:\"location\";s:10:\"everywhere\";s:11:\"auto_insert\";i:1;s:13:\"insert_number\";i:1;s:9:\"use_rules\";b:0;s:5:\"rules\";a:0:{}s:8:\"priority\";i:10;s:14:\"location_extra\";s:0:\"\";s:20:\"shortcode_attributes\";a:0:{}s:13:\"compiled_code\";s:0:\"\";s:8:\"modified\";s:19:\"2025-08-03 11:04:17\";}}}', 'auto'),
(182, 'wpcode_admin_notices', 'a:2:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1754190142;s:9:\"dismissed\";b:0;}s:15:\"suggest_plugins\";a:2:{s:4:\"time\";i:1754190142;s:9:\"dismissed\";b:0;}}', 'auto'),
(184, 'acf_first_activated_version', '6.3.12', 'on'),
(185, 'acf_site_health', '{\"version\":\"6.4.3\",\"plugin_type\":\"PRO\",\"update_source\":\"ACF Direct\",\"activated\":true,\"activated_url\":\"http:\\/\\/localhost\\/proz\",\"license_type\":\"Developer\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.8.2\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"PROZ\",\"version\":\"1.0.0\",\"theme_uri\":\"http:\\/\\/underscores.me\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.4.3\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"6.1.1\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"contact-form-cfdb7\\/contact-form-cfdb-7.php\":{\"name\":\"Contact Form CFDB7\",\"version\":\"1.3.2\",\"plugin_uri\":\"https:\\/\\/ciphercoin.com\\/\"},\"country-phone-field-contact-form-7\\/country-phone-field-contact-form-7.php\":{\"name\":\"Country & Phone Field Contact Form 7\",\"version\":\"2.6.1\",\"plugin_uri\":\"\"},\"wpcf7-recaptcha\\/wpcf7-recaptcha.php\":{\"name\":\"ReCaptcha v2 for Contact Form 7\",\"version\":\"1.4.9\",\"plugin_uri\":\"\"},\"simple-custom-post-order\\/simple-custom-post-order.php\":{\"name\":\"Simple Custom Post Order\",\"version\":\"2.5.11\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins-wp\\/simple-custom-post-order\\/\"},\"insert-headers-and-footers\\/ihaf.php\":{\"name\":\"WPCode Lite\",\"version\":\"2.3.0\",\"plugin_uri\":\"https:\\/\\/www.wpcode.com\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"post_type==news-events\"],\"field_groups_with_single_block_rule\":\"0\",\"field_groups_with_multiple_block_rules\":\"0\",\"field_groups_with_blocks_and_other_rules\":\"0\",\"number_of_fields_by_type\":{\"gallery\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"6\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated_pro\":1754190168,\"event_first_created_post_type\":1755343194,\"event_first_created_field_group\":1755343233,\"last_updated\":1755406969}', 'off'),
(187, 'acf_version', '6.4.3', 'auto'),
(195, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRRNE9EWTNmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9TMHdNUzB3TkNBd05EbzFNVG95Tmc9PSI7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3QvcHJveiI7fQ==', 'off'),
(196, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:0;s:6:\"expiry\";i:0;s:4:\"name\";s:9:\"Developer\";s:8:\"lifetime\";b:1;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:0:\"\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1755493369;s:16:\"legacy_multisite\";b:1;}', 'on'),
(202, 'wpcode_settings', 'a:11:{s:21:\"facebook_pixel_events\";a:5:{s:9:\"page_view\";i:1;s:11:\"add_to_cart\";i:1;s:12:\"view_content\";i:1;s:14:\"begin_checkout\";i:1;s:8:\"purchase\";i:1;}s:19:\"google_pixel_events\";a:6:{s:9:\"page_view\";i:1;s:11:\"add_to_cart\";i:1;s:9:\"view_item\";i:1;s:14:\"begin_checkout\";i:1;s:8:\"purchase\";i:1;s:10:\"conversion\";i:1;}s:22:\"pinterest_pixel_events\";a:4:{s:17:\"pagevisit_product\";i:1;s:14:\"begin_checkout\";i:1;s:11:\"add_to_cart\";i:1;s:8:\"purchase\";i:1;}s:19:\"tiktok_pixel_events\";a:4:{s:12:\"view_content\";i:1;s:11:\"add_to_cart\";i:1;s:14:\"begin_checkout\";i:1;s:8:\"purchase\";i:1;}s:20:\"headers_footers_mode\";b:0;s:18:\"editor_height_auto\";b:1;s:13:\"editor_height\";i:300;s:14:\"usage_tracking\";b:0;s:14:\"admin_bar_info\";b:1;s:9:\"dark_mode\";b:0;s:14:\"uninstall_data\";b:0;}', 'auto'),
(203, 'wpcode_notifications', 'a:4:{s:6:\"update\";i:1754190213;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'off'),
(207, 'wpcode_snippets_errors', 'a:0:{}', 'auto'),
(210, 'db_upgraded', '', 'on'),
(212, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1755517140;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:0:{}}', 'off'),
(213, 'can_compress_scripts', '1', 'on'),
(219, 'current_theme', 'PROZ', 'auto'),
(220, 'theme_mods_proz', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(221, 'theme_switched', '', 'auto'),
(240, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1755425247', 'off'),
(241, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(244, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":3}', 'on'),
(249, '_site_transient_timeout_browser_7ddeda88d0c599cc494da0dece6554d5', '1755427414', 'off'),
(250, '_site_transient_browser_7ddeda88d0c599cc494da0dece6554d5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"138.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(263, 'category_children', 'a:0:{}', 'auto'),
(271, 'scporder_install', '1', 'auto'),
(272, 'scporder_options', 'a:3:{s:7:\"objects\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:4:\"tags\";a:4:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:13:\"link_category\";i:3;s:19:\"wp_pattern_category\";}s:18:\"show_advanced_view\";s:0:\"\";}', 'auto'),
(282, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"6.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1754823594;s:7:\"version\";s:5:\"6.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:23:\"recaptcha_v2_v3_warning\";b:0;}', 'auto'),
(283, 'cfdb7_view_install_date', '2025-08-10 10:59:54', 'on'),
(294, '_transient_timeout_acf_plugin_updates', '1755515876', 'off'),
(295, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.5.0.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.8.2\";s:7:\"package\";s:374:\"https://connect.advancedcustomfields.com/v2/plugins/download?p=pro&s=plugin&version=6.5.0.1&token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU1UUTRPRFkzZkhSNWNHVTlaR1YyWld4dmNHVnlmR1JoZEdVOU1qQXhPUzB3TVMwd05DQXdORG8xTVRveU5nPT0iLCJ3cF91cmwiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Byb3oiLCJ3cF92ZXJzaW9uIjoiNi44LjIiLCJ3cF9tdWx0aXNpdGUiOjAsInBocF92ZXJzaW9uIjoiOC4yLjEyIiwiYmxvY2tfY291bnQiOjB9\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250812\";s:13:\"license_valid\";b:1;}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.4.3\";}}', 'off'),
(302, '_site_transient_timeout_browser_8f694609bddc4903b8e8fee50d783cc1', '1755947923', 'off'),
(303, '_site_transient_browser_8f694609bddc4903b8e8fee50d783cc1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"139.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(331, '_site_transient_timeout_theme_roots', '1755408766', 'off'),
(332, '_site_transient_theme_roots', 'a:2:{s:4:\"proz\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'off'),
(333, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1755406967;s:7:\"checked\";a:2:{s:4:\"proz\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(334, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1755406968;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.5.0.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.8.2\";s:7:\"package\";s:374:\"https://connect.advancedcustomfields.com/v2/plugins/download?p=pro&s=plugin&version=6.5.0.1&token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU1UUTRPRFkzZkhSNWNHVTlaR1YyWld4dmNHVnlmR1JoZEdVOU1qQXhPUzB3TVMwd05DQXdORG8xTVRveU5nPT0iLCJ3cF91cmwiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Byb3oiLCJ3cF92ZXJzaW9uIjoiNi44LjIiLCJ3cF9tdWx0aXNpdGUiOjAsInBocF92ZXJzaW9uIjoiOC4yLjEyIiwiYmxvY2tfY291bnQiOjB9\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250812\";s:13:\"license_valid\";b:1;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:73:\"country-phone-field-contact-form-7/country-phone-field-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/country-phone-field-contact-form-7\";s:4:\"slug\";s:34:\"country-phone-field-contact-form-7\";s:6:\"plugin\";s:73:\"country-phone-field-contact-form-7/country-phone-field-contact-form-7.php\";s:11:\"new_version\";s:5:\"2.6.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/country-phone-field-contact-form-7/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/country-phone-field-contact-form-7.2.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/country-phone-field-contact-form-7/assets/icon-256x256.png?rev=2064274\";s:2:\"1x\";s:87:\"https://ps.w.org/country-phone-field-contact-form-7/assets/icon-128x128.png?rev=2064274\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wpcf7-recaptcha\";s:4:\"slug\";s:15:\"wpcf7-recaptcha\";s:6:\"plugin\";s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";s:11:\"new_version\";s:5:\"1.4.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wpcf7-recaptcha/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wpcf7-recaptcha.1.4.9.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/wpcf7-recaptcha/assets/icon.svg?rev=2003053\";s:3:\"svg\";s:60:\"https://ps.w.org/wpcf7-recaptcha/assets/icon.svg?rev=2003053\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-1544x500.png?rev=2003053\";s:2:\"1x\";s:70:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-772x250.png?rev=2003053\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-1544x500-rtl.png?rev=2003053\";s:2:\"1x\";s:74:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-772x250-rtl.png?rev=2003053\";}s:8:\"requires\";s:3:\"4.9\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:6:\"2.5.11\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=2969435\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=2969435\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=2969435\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:35:\"insert-headers-and-footers/ihaf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/insert-headers-and-footers\";s:4:\"slug\";s:26:\"insert-headers-and-footers\";s:6:\"plugin\";s:35:\"insert-headers-and-footers/ihaf.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/insert-headers-and-footers/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/insert-headers-and-footers.2.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-256x256.png?rev=2758516\";s:2:\"1x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-128x128.png?rev=2758516\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/insert-headers-and-footers/assets/banner-1544x500.png?rev=2758516\";s:2:\"1x\";s:81:\"https://ps.w.org/insert-headers-and-footers/assets/banner-772x250.png?rev=2758516\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.4.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.1.1\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:5:\"1.3.2\";s:73:\"country-phone-field-contact-form-7/country-phone-field-contact-form-7.php\";s:5:\"2.6.1\";s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";s:5:\"1.4.9\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:6:\"2.5.11\";s:35:\"insert-headers-and-footers/ihaf.php\";s:5:\"2.3.0\";}}', 'off'),
(335, '_transient_timeout_acf_pro_validating_license', '1755407868', 'off'),
(336, '_transient_acf_pro_validating_license', '1', 'off'),
(337, '_site_transient_timeout_wp_theme_files_patterns-3cb8207af0bfc215ee9d301041242515', '1755518929', 'off'),
(338, '_site_transient_wp_theme_files_patterns-3cb8207af0bfc215ee9d301041242515', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(339, '_transient_doing_cron', '1755517130.8379700183868408203125', 'on'),
(340, 'auto_updater.lock', '1755517144', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `proz_postmeta`
--

CREATE TABLE `proz_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_postmeta`
--

INSERT INTO `proz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-home.php'),
(2, 3, '_wp_page_template', 'page-plain.php'),
(9, 7, '_wpcode_auto_insert', '1'),
(10, 7, '_wpcode_auto_insert_number', '1'),
(11, 8, '_wpcode_auto_insert', '1'),
(12, 8, '_wpcode_library_id', '12'),
(15, 10, '_wpcode_auto_insert', '1'),
(16, 10, '_wpcode_auto_insert_number', '1'),
(17, 10, '_wpcode_conditional_logic_enabled', ''),
(18, 10, '_wpcode_conditional_logic', 'a:0:{}'),
(19, 10, '_wpcode_priority', '10'),
(20, 10, '_wpcode_library_id', '54'),
(21, 10, '_wpcode_library_version', '1.0.0'),
(22, 10, '_wpcode_note', 'Add support for SVG files to be uploaded in WordPress media.'),
(23, 10, '_wpcode_location_extra', ''),
(24, 10, '_wpcode_shortcode_attributes', 'a:0:{}'),
(25, 10, '_edit_lock', '1754190258:1'),
(26, 8, '_wpcode_shortcode_attributes', 'a:0:{}'),
(29, 2, '_edit_last', '1'),
(30, 2, '_edit_lock', '1754822710:1'),
(31, 14, '_edit_lock', '1754823110:1'),
(32, 14, '_wp_page_template', 'page-about-us.php'),
(33, 14, '_edit_last', '1'),
(34, 16, '_edit_lock', '1754823129:1'),
(35, 16, '_wp_page_template', 'page-retail.php'),
(36, 16, '_edit_last', '1'),
(37, 18, '_edit_lock', '1754823148:1'),
(38, 18, '_wp_page_template', 'page-sirim-cert.php'),
(39, 18, '_edit_last', '1'),
(40, 20, '_edit_lock', '1754823165:1'),
(41, 20, '_wp_page_template', 'page-contact-us.php'),
(42, 20, '_edit_last', '1'),
(43, 3, '_edit_last', '1'),
(44, 3, '_edit_lock', '1754823310:1'),
(45, 23, '_edit_lock', '1754823302:1'),
(46, 23, '_wp_page_template', 'page-plain.php'),
(47, 23, '_edit_last', '1'),
(48, 25, '_form', '<div class=\"form-row row-fields\">\n    <div class=\"wp-form\">[text* subject class:input-control placeholder \"Your reason for contatcting us\"]</div>\n    <div class=\"wp-form\">[text* fullname class:input-control placeholder \"Name\"]</div>\n    <div class=\"wp-form\">[email* email class:input-control placeholder \"Email\"]</div>\n    <div class=\"wp-form\">[phonetext* phone class:input-control placeholder numberonly \"Mobile\"]</div>\n    <div class=\"wp-form\">[select* location class:input-control first_as_label \"--Please Select a Location--\"]</div>\n    <div class=\"wp-form\">[textarea* message class:input-control placeholder] Your Message [/textarea*]</div>\n</div>\n<div class=\"form-row row-submission\">\n    <div class=\"wp-form\">[acceptance acceptance class:input-control]By submitting this form, I agree with the processing of my personal data in order to respond to my message and, if applicable, to receive the selected communication options, in accordance with our <a href=\"/terms-conditions\">Terms and Conditions</a> and our <a href=\"/privacy-policy\">Privacy Policy</a>. <span class=\"required\">*</span>[/acceptance]</div>\n    <div class=\"wp-form\"><button type=\"submit\" class=\"btn btn-sub\">Send</button></div>\n</div>'),
(49, 25, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"New Enquiry - \"[subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <admin@proz.com.my>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:212:\"From: [fullname] [email]\nMobile: [phone]\nSubject: [subject]\nLocation: [location]\n\nMessage Body:\n[message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(50, 25, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <admin@proz.com.my>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(51, 25, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(52, 25, '_additional_settings', ''),
(53, 25, '_locale', 'en_US'),
(54, 25, '_hash', 'af7cf16d0e44c1e84b2a71b490f97f4f33935439cb8f928f3b306d8fafa217a3'),
(58, 26, '_edit_last', '1'),
(59, 26, '_edit_lock', '1755343053:1'),
(60, 27, '_edit_last', '1'),
(61, 27, '_edit_lock', '1755344831:1'),
(62, 29, '_edit_lock', '1755345013:1'),
(63, 29, '_edit_last', '1'),
(64, 29, 'gallery', ''),
(65, 29, '_gallery', 'field_68a0696a6d3b3');

-- --------------------------------------------------------

--
-- Table structure for table `proz_posts`
--

CREATE TABLE `proz_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_posts`
--

INSERT INTO `proz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2025-08-03 02:57:17', '2025-08-03 02:57:17', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/proz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-08-10 18:45:10', '2025-08-10 10:45:10', '', 0, 'http://localhost/proz/?page_id=2', 1, 'page', '', 0),
(3, 1, '2025-08-03 02:57:17', '2025-08-03 02:57:17', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/proz.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2025-08-10 18:55:10', '2025-08-10 10:55:10', '', 0, 'http://localhost/proz/?page_id=3', 7, 'page', '', 0),
(4, 0, '2025-08-03 02:57:23', '2025-08-03 02:57:23', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-08-03 02:57:23', '2025-08-03 02:57:23', '', 0, 'http://localhost/proz/2025/08/03/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2025-08-03 11:02:22', '0000-00-00 00:00:00', 'Thank you for reading this post, don\'t forget to subscribe!', 'Display a message after the 1st paragraph of posts', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-08-03 11:02:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/proz/?post_type=wpcode&p=7', 0, 'wpcode', '', 0),
(8, 1, '2025-08-03 11:04:23', '2025-08-03 03:04:23', 'add_action(\'admin_init\', function () {\r\n    // Redirect any user trying to access comments page\r\n    global $pagenow;\r\n    \r\n    if ($pagenow === \'edit-comments.php\') {\r\n        wp_safe_redirect(admin_url());\r\n        exit;\r\n    }\r\n\r\n    // Remove comments metabox from dashboard\r\n    remove_meta_box(\'dashboard_recent_comments\', \'dashboard\', \'normal\');\r\n\r\n    // Disable support for comments and trackbacks in post types\r\n    foreach (get_post_types() as $post_type) {\r\n        if (post_type_supports($post_type, \'comments\')) {\r\n            remove_post_type_support($post_type, \'comments\');\r\n            remove_post_type_support($post_type, \'trackbacks\');\r\n        }\r\n    }\r\n});\r\n\r\n// Close comments on the front-end\r\nadd_filter(\'comments_open\', \'__return_false\', 20, 2);\r\nadd_filter(\'pings_open\', \'__return_false\', 20, 2);\r\n\r\n// Hide existing comments\r\nadd_filter(\'comments_array\', \'__return_empty_array\', 10, 2);\r\n\r\n// Remove comments page in menu\r\nadd_action(\'admin_menu\', function () {\r\n    remove_menu_page(\'edit-comments.php\');\r\n});\r\n\r\n// Remove comments links from admin bar\r\nadd_action(\'init\', function () {\r\n    if (is_admin_bar_showing()) {\r\n        remove_action(\'admin_bar_menu\', \'wp_admin_bar_comments_menu\', 60);\r\n    }\r\n});', 'Completely Disable Comments', '', 'publish', 'closed', 'closed', '', 'completely-disable-comments', '', '', '2025-08-03 11:04:23', '2025-08-03 03:04:23', '', 0, 'http://localhost/proz/?post_type=wpcode&#038;p=8', 0, 'wpcode', '', 0),
(10, 1, '2025-08-03 11:04:17', '2025-08-03 03:04:17', '/**\r\n * Allow SVG uploads for administrator users.\r\n *\r\n * @param array $upload_mimes Allowed mime types.\r\n *\r\n * @return mixed\r\n */\r\nadd_filter(\r\n	\'upload_mimes\',\r\n	function ( $upload_mimes ) {\r\n		// By default, only administrator users are allowed to add SVGs.\r\n		// To enable more user types edit or comment the lines below but beware of\r\n		// the security risks if you allow any user to upload SVG files.\r\n		if ( ! current_user_can( \'administrator\' ) ) {\r\n			return $upload_mimes;\r\n		}\r\n\r\n		$upload_mimes[\'svg\']  = \'image/svg+xml\';\r\n		$upload_mimes[\'svgz\'] = \'image/svg+xml\';\r\n\r\n		return $upload_mimes;\r\n	}\r\n);\r\n\r\n/**\r\n * Add SVG files mime check.\r\n *\r\n * @param array        $wp_check_filetype_and_ext Values for the extension, mime type, and corrected filename.\r\n * @param string       $file Full path to the file.\r\n * @param string       $filename The name of the file (may differ from $file due to $file being in a tmp directory).\r\n * @param string[]     $mimes Array of mime types keyed by their file extension regex.\r\n * @param string|false $real_mime The actual mime type or false if the type cannot be determined.\r\n */\r\nadd_filter(\r\n	\'wp_check_filetype_and_ext\',\r\n	function ( $wp_check_filetype_and_ext, $file, $filename, $mimes, $real_mime ) {\r\n\r\n		if ( ! $wp_check_filetype_and_ext[\'type\'] ) {\r\n\r\n			$check_filetype  = wp_check_filetype( $filename, $mimes );\r\n			$ext             = $check_filetype[\'ext\'];\r\n			$type            = $check_filetype[\'type\'];\r\n			$proper_filename = $filename;\r\n\r\n			if ( $type && 0 === strpos( $type, \'image/\' ) && \'svg\' !== $ext ) {\r\n				$ext  = false;\r\n				$type = false;\r\n			}\r\n\r\n			$wp_check_filetype_and_ext = compact( \'ext\', \'type\', \'proper_filename\' );\r\n		}\r\n\r\n		return $wp_check_filetype_and_ext;\r\n\r\n	},\r\n	10,\r\n	5\r\n);\r\n', 'Allow SVG Files Upload', '', 'publish', 'closed', 'closed', '', 'allow-svg-files-upload', '', '', '2025-08-03 11:04:17', '2025-08-03 03:04:17', '', 0, 'http://localhost/proz/?post_type=wpcode&#038;p=10', 0, 'wpcode', '', 0),
(12, 1, '2025-08-10 18:43:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-08-10 18:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/proz/?p=12', 0, 'post', '', 0),
(13, 1, '2025-08-10 18:45:10', '2025-08-10 10:45:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/proz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-08-10 18:45:10', '2025-08-10 10:45:10', '', 2, 'http://localhost/proz/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-08-10 18:51:49', '2025-08-10 10:51:49', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2025-08-10 18:51:50', '2025-08-10 10:51:50', '', 0, 'http://localhost/proz/?page_id=14', 2, 'page', '', 0),
(15, 1, '2025-08-10 18:51:49', '2025-08-10 10:51:49', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2025-08-10 18:51:49', '2025-08-10 10:51:49', '', 14, 'http://localhost/proz/?p=15', 0, 'revision', '', 0),
(16, 1, '2025-08-10 18:52:06', '2025-08-10 10:52:06', '', 'Retail', '', 'publish', 'closed', 'closed', '', 'retail', '', '', '2025-08-10 18:52:07', '2025-08-10 10:52:07', '', 0, 'http://localhost/proz/?page_id=16', 3, 'page', '', 0),
(17, 1, '2025-08-10 18:52:06', '2025-08-10 10:52:06', '', 'Retail', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2025-08-10 18:52:06', '2025-08-10 10:52:06', '', 16, 'http://localhost/proz/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-08-10 18:52:27', '2025-08-10 10:52:27', '', 'Sirim Certs', '', 'publish', 'closed', 'closed', '', 'sirim-certs', '', '', '2025-08-10 18:52:27', '2025-08-10 10:52:27', '', 0, 'http://localhost/proz/?page_id=18', 4, 'page', '', 0),
(19, 1, '2025-08-10 18:52:27', '2025-08-10 10:52:27', '', 'Sirim Certs', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-08-10 18:52:27', '2025-08-10 10:52:27', '', 18, 'http://localhost/proz/?p=19', 0, 'revision', '', 0),
(20, 1, '2025-08-10 18:52:41', '2025-08-10 10:52:41', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2025-08-10 18:52:42', '2025-08-10 10:52:42', '', 0, 'http://localhost/proz/?page_id=20', 5, 'page', '', 0),
(21, 1, '2025-08-10 18:52:41', '2025-08-10 10:52:41', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2025-08-10 18:52:41', '2025-08-10 10:52:41', '', 20, 'http://localhost/proz/?p=21', 0, 'revision', '', 0),
(22, 1, '2025-08-10 18:54:09', '2025-08-10 10:54:09', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/proz.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-08-10 18:54:09', '2025-08-10 10:54:09', '', 3, 'http://localhost/proz/?p=22', 0, 'revision', '', 0),
(23, 1, '2025-08-10 18:54:23', '2025-08-10 10:54:23', '', 'Terms &amp; Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2025-08-10 18:54:23', '2025-08-10 10:54:23', '', 0, 'http://localhost/proz/?page_id=23', 7, 'page', '', 0),
(24, 1, '2025-08-10 18:54:23', '2025-08-10 10:54:23', '', 'Terms &amp; Conditions', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-08-10 18:54:23', '2025-08-10 10:54:23', '', 23, 'http://localhost/proz/?p=24', 0, 'revision', '', 0),
(25, 1, '2025-08-10 18:59:53', '2025-08-10 10:59:53', '<div class=\"form-row row-fields\">\r\n    <div class=\"wp-form\">[text* subject class:input-control placeholder \"Your reason for contatcting us\"]</div>\r\n    <div class=\"wp-form\">[text* fullname class:input-control placeholder \"Name\"]</div>\r\n    <div class=\"wp-form\">[email* email class:input-control placeholder \"Email\"]</div>\r\n    <div class=\"wp-form\">[phonetext* phone class:input-control placeholder numberonly \"Mobile\"]</div>\r\n    <div class=\"wp-form\">[select* location class:input-control first_as_label \"--Please Select a Location--\"]</div>\r\n    <div class=\"wp-form\">[textarea* message class:input-control placeholder] Your Message [/textarea*]</div>\r\n</div>\r\n<div class=\"form-row row-submission\">\r\n    <div class=\"wp-form\">[acceptance acceptance class:input-control]By submitting this form, I agree with the processing of my personal data in order to respond to my message and, if applicable, to receive the selected communication options, in accordance with our <a href=\"/terms-conditions\">Terms and Conditions</a> and our <a href=\"/privacy-policy\">Privacy Policy</a>. <span class=\"required\">*</span>[/acceptance]</div>\r\n    <div class=\"wp-form\"><button type=\"submit\" class=\"btn btn-sub\">Send</button></div>\r\n</div>\n1\nNew Enquiry - \"[subject]\"\n[_site_title] <admin@proz.com.my>\n[_site_admin_email]\nFrom: [fullname] [email]\r\nMobile: [phone]\r\nSubject: [subject]\r\nLocation: [location]\r\n\r\nMessage Body:\r\n[message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [email]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <admin@proz.com.my>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n1\n1\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Send Us a Message', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2025-08-10 19:20:01', '2025-08-10 11:20:01', '', 0, 'http://localhost/proz/?post_type=wpcf7_contact_form&#038;p=25', 0, 'wpcf7_contact_form', '', 0),
(26, 1, '2025-08-16 19:19:54', '2025-08-16 11:19:54', 'a:35:{s:9:\"post_type\";s:11:\"news-events\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:13:\"News & Events\";s:13:\"singular_name\";s:12:\"News & Event\";s:9:\"menu_name\";s:11:\"News Events\";s:9:\"all_items\";s:15:\"All News Events\";s:9:\"edit_item\";s:17:\"Edit News & Event\";s:9:\"view_item\";s:17:\"View News & Event\";s:10:\"view_items\";s:16:\"View News Events\";s:12:\"add_new_item\";s:20:\"Add New News & Event\";s:7:\"add_new\";s:20:\"Add New News & Event\";s:8:\"new_item\";s:16:\"New News & Event\";s:17:\"parent_item_colon\";s:20:\"Parent News & Event:\";s:12:\"search_items\";s:18:\"Search News Events\";s:9:\"not_found\";s:20:\"No news events found\";s:18:\"not_found_in_trash\";s:29:\"No news events found in Trash\";s:8:\"archives\";s:21:\"News & Event Archives\";s:10:\"attributes\";s:23:\"News & Event Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:24:\"Insert into news & event\";s:21:\"uploaded_to_this_item\";s:29:\"Uploaded to this news & event\";s:17:\"filter_items_list\";s:23:\"Filter news events list\";s:14:\"filter_by_date\";s:26:\"Filter news events by date\";s:21:\"items_list_navigation\";s:27:\"News Events list navigation\";s:10:\"items_list\";s:16:\"News Events list\";s:14:\"item_published\";s:23:\"News & Event published.\";s:24:\"item_published_privately\";s:33:\"News & Event published privately.\";s:22:\"item_reverted_to_draft\";s:31:\"News & Event reverted to draft.\";s:14:\"item_scheduled\";s:23:\"News & Event scheduled.\";s:12:\"item_updated\";s:21:\"News & Event updated.\";s:9:\"item_link\";s:17:\"News & Event Link\";s:21:\"item_link_description\";s:25:\"A link to a news & event.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:19:\"dashicons-analytics\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:1;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'News & Events', 'news-events', 'publish', 'closed', 'closed', '', 'post_type_68a0692d11b4c', '', '', '2025-08-16 19:19:54', '2025-08-16 11:19:54', '', 0, 'http://localhost/proz/?post_type=acf-post-type&#038;p=26', 0, 'acf-post-type', '', 0),
(27, 1, '2025-08-16 19:20:33', '2025-08-16 11:20:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"news-events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'News & Events', 'news-events', 'publish', 'closed', 'closed', '', 'group_68a06969aad4e', '', '', '2025-08-16 19:20:33', '2025-08-16 11:20:33', '', 0, 'http://localhost/proz/?post_type=acf-field-group&#038;p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2025-08-16 19:20:33', '2025-08-16 11:20:33', 'a:19:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:12:\"preview_size\";s:6:\"medium\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_68a0696a6d3b3', '', '', '2025-08-16 19:20:33', '2025-08-16 11:20:33', '', 27, 'http://localhost/proz/?post_type=acf-field&p=28', 0, 'acf-field', '', 0),
(29, 1, '2023-10-16 17:00:00', '2023-10-16 09:00:00', '', 'MBAM ONEBUILDEXHIBITION 2023', '', 'publish', 'closed', 'closed', '', 'mbam-onebuildexhibition-2023', '', '', '2025-08-16 19:50:12', '2025-08-16 11:50:12', '', 0, 'http://localhost/proz/?post_type=news-events&#038;p=29', 0, 'news-events', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proz_termmeta`
--

CREATE TABLE `proz_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proz_terms`
--

CREATE TABLE `proz_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  `term_order` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_terms`
--

INSERT INTO `proz_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 1),
(2, 'text', 'text', 0, 0),
(3, 'after_paragraph', 'after_paragraph', 0, 0),
(4, 'sample', 'sample', 0, 0),
(5, 'message', 'message', 0, 0),
(6, 'php', 'php', 0, 0),
(7, 'everywhere', 'everywhere', 0, 0),
(8, 'disable', 'disable', 0, 0),
(9, 'comments', 'comments', 0, 0),
(10, 'media', 'media', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proz_term_relationships`
--

CREATE TABLE `proz_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_term_relationships`
--

INSERT INTO `proz_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(7, 3, 0),
(7, 4, 0),
(7, 5, 0),
(8, 4, 0),
(8, 6, 0),
(8, 7, 0),
(8, 8, 0),
(8, 9, 0),
(10, 6, 0),
(10, 7, 0),
(10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proz_term_taxonomy`
--

CREATE TABLE `proz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_term_taxonomy`
--

INSERT INTO `proz_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wpcode_type', '', 0, 1),
(3, 3, 'wpcode_location', '', 0, 1),
(4, 4, 'wpcode_tags', '', 0, 2),
(5, 5, 'wpcode_tags', '', 0, 1),
(6, 6, 'wpcode_type', '', 0, 2),
(7, 7, 'wpcode_location', '', 0, 2),
(8, 8, 'wpcode_tags', '', 0, 1),
(9, 9, 'wpcode_tags', '', 0, 1),
(10, 10, 'wpcode_tags', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proz_usermeta`
--

CREATE TABLE `proz_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_usermeta`
--

INSERT INTO `proz_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'master-admin'),
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
(12, 1, 'proz_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'proz_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a5efc496641ec93510376cc85350a6fc09fcaacffc490d56a01b14f56d466b0b\";a:4:{s:10:\"expiration\";i:1755399533;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36\";s:5:\"login\";i:1754189933;}}'),
(17, 1, 'proz_dashboard_quick_press_last_post_id', '12'),
(18, 1, 'managetoplevel_page_wpcodecolumnshidden', 'a:3:{i:0;s:4:\"note\";i:1;s:9:\"shortcode\";i:2;s:7:\"updated\";}'),
(19, 1, 'wpcode_default_code_type', 'php'),
(20, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(21, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(22, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `proz_users`
--

CREATE TABLE `proz_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `proz_users`
--

INSERT INTO `proz_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'master-admin', '$wp$2y$10$bhOKuIlGQQmfP4WN9e5ciO.FmztsDludUQXMKfd2JodDT3YjXVqq.', 'master-admin', 'admin@proz.com.my', 'http://localhost/proz', '2025-08-03 02:57:17', '', 0, 'master-admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `proz_commentmeta`
--
ALTER TABLE `proz_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `proz_comments`
--
ALTER TABLE `proz_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `proz_db7_forms`
--
ALTER TABLE `proz_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `proz_links`
--
ALTER TABLE `proz_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `proz_options`
--
ALTER TABLE `proz_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `proz_postmeta`
--
ALTER TABLE `proz_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `proz_posts`
--
ALTER TABLE `proz_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `proz_termmeta`
--
ALTER TABLE `proz_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `proz_terms`
--
ALTER TABLE `proz_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `proz_term_relationships`
--
ALTER TABLE `proz_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `proz_term_taxonomy`
--
ALTER TABLE `proz_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `proz_usermeta`
--
ALTER TABLE `proz_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `proz_users`
--
ALTER TABLE `proz_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proz_commentmeta`
--
ALTER TABLE `proz_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proz_comments`
--
ALTER TABLE `proz_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proz_db7_forms`
--
ALTER TABLE `proz_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proz_links`
--
ALTER TABLE `proz_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proz_options`
--
ALTER TABLE `proz_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `proz_postmeta`
--
ALTER TABLE `proz_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `proz_posts`
--
ALTER TABLE `proz_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `proz_termmeta`
--
ALTER TABLE `proz_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proz_terms`
--
ALTER TABLE `proz_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `proz_term_taxonomy`
--
ALTER TABLE `proz_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `proz_usermeta`
--
ALTER TABLE `proz_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `proz_users`
--
ALTER TABLE `proz_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
