-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3311
-- Generation Time: Mar 18, 2019 at 06:29 PM
-- Server version: 5.7.24-26-log
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--
DROP DATABASE IF EXISTS `db`;
CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db`;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_actiondom`
--

DROP TABLE IF EXISTS `sneg_prfx_access_actiondom`;
CREATE TABLE `sneg_prfx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_actions`
--

DROP TABLE IF EXISTS `sneg_prfx_access_actions`;
CREATE TABLE `sneg_prfx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_category`
--

DROP TABLE IF EXISTS `sneg_prfx_access_category`;
CREATE TABLE `sneg_prfx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_context`
--

DROP TABLE IF EXISTS `sneg_prfx_access_context`;
CREATE TABLE `sneg_prfx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_context`
--

INSERT INTO `sneg_prfx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(4, 'web', 'modUserGroup', 2, 9999, 13),
(5, 'mgr', 'modUserGroup', 2, 9999, 13);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_elements`
--

DROP TABLE IF EXISTS `sneg_prfx_access_elements`;
CREATE TABLE `sneg_prfx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_media_source`
--

DROP TABLE IF EXISTS `sneg_prfx_access_media_source`;
CREATE TABLE `sneg_prfx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_media_source`
--

INSERT INTO `sneg_prfx_access_media_source` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(15, '1', 'modUserGroup', 1, 0, 8, ''),
(20, '3', 'modUserGroup', 2, 9999, 8, 'mgr'),
(21, '3', 'modUserGroup', 1, 0, 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_menus`
--

DROP TABLE IF EXISTS `sneg_prfx_access_menus`;
CREATE TABLE `sneg_prfx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_namespace`
--

DROP TABLE IF EXISTS `sneg_prfx_access_namespace`;
CREATE TABLE `sneg_prfx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_permissions`
--

DROP TABLE IF EXISTS `sneg_prfx_access_permissions`;
CREATE TABLE `sneg_prfx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_permissions`
--

INSERT INTO `sneg_prfx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_user', 'perm.menu_user_desc', 1),
(78, 1, 'menus', 'perm.menus_desc', 1),
(79, 1, 'messages', 'perm.messages_desc', 1),
(80, 1, 'namespaces', 'perm.namespaces_desc', 1),
(81, 1, 'new_category', 'perm.new_category_desc', 1),
(82, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(83, 1, 'new_context', 'perm.new_context_desc', 1),
(84, 1, 'new_document', 'perm.new_document_desc', 1),
(85, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(86, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(87, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(88, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(89, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(90, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(91, 1, 'new_role', 'perm.new_role_desc', 1),
(92, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(93, 1, 'new_template', 'perm.new_template_desc', 1),
(94, 1, 'new_tv', 'perm.new_tv_desc', 1),
(95, 1, 'new_user', 'perm.new_user_desc', 1),
(96, 1, 'packages', 'perm.packages_desc', 1),
(97, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(98, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(99, 1, 'policy_new', 'perm.policy_new_desc', 1),
(100, 1, 'policy_save', 'perm.policy_save_desc', 1),
(101, 1, 'policy_view', 'perm.policy_view_desc', 1),
(102, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(103, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(104, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(105, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(106, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(107, 1, 'property_sets', 'perm.property_sets_desc', 1),
(108, 1, 'providers', 'perm.providers_desc', 1),
(109, 1, 'publish_document', 'perm.publish_document_desc', 1),
(110, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(111, 1, 'remove', 'perm.remove_desc', 1),
(112, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(113, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(114, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(115, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(116, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(117, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(118, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(119, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(120, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(121, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(122, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(123, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(124, 1, 'save', 'perm.save_desc', 1),
(125, 1, 'save_category', 'perm.save_category_desc', 1),
(126, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(127, 1, 'save_context', 'perm.save_context_desc', 1),
(128, 1, 'save_document', 'perm.save_document_desc', 1),
(129, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(130, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(131, 1, 'save_role', 'perm.save_role_desc', 1),
(132, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(133, 1, 'save_template', 'perm.save_template_desc', 1),
(134, 1, 'save_tv', 'perm.save_tv_desc', 1),
(135, 1, 'save_user', 'perm.save_user_desc', 1),
(136, 1, 'search', 'perm.search_desc', 1),
(137, 1, 'settings', 'perm.settings_desc', 1),
(138, 1, 'events', 'perm.events_desc', 1),
(139, 1, 'source_save', 'perm.source_save_desc', 1),
(140, 1, 'source_delete', 'perm.source_delete_desc', 1),
(141, 1, 'source_edit', 'perm.source_edit_desc', 1),
(142, 1, 'source_view', 'perm.source_view_desc', 1),
(143, 1, 'sources', 'perm.sources_desc', 1),
(144, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(145, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(146, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(147, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(148, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(149, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(150, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(151, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(152, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(153, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(154, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(155, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(156, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(157, 1, 'view', 'perm.view_desc', 1),
(158, 1, 'view_category', 'perm.view_category_desc', 1),
(159, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(160, 1, 'view_context', 'perm.view_context_desc', 1),
(161, 1, 'view_document', 'perm.view_document_desc', 1),
(162, 1, 'view_element', 'perm.view_element_desc', 1),
(163, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(164, 1, 'view_offline', 'perm.view_offline_desc', 1),
(165, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(166, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(167, 1, 'view_role', 'perm.view_role_desc', 1),
(168, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(169, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(170, 1, 'view_template', 'perm.view_template_desc', 1),
(171, 1, 'view_tv', 'perm.view_tv_desc', 1),
(172, 1, 'view_user', 'perm.view_user_desc', 1),
(173, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(174, 1, 'workspaces', 'perm.workspaces_desc', 1),
(175, 2, 'add_children', 'perm.add_children_desc', 1),
(176, 2, 'copy', 'perm.copy_desc', 1),
(177, 2, 'create', 'perm.create_desc', 1),
(178, 2, 'delete', 'perm.delete_desc', 1),
(179, 2, 'list', 'perm.list_desc', 1),
(180, 2, 'load', 'perm.load_desc', 1),
(181, 2, 'move', 'perm.move_desc', 1),
(182, 2, 'publish', 'perm.publish_desc', 1),
(183, 2, 'remove', 'perm.remove_desc', 1),
(184, 2, 'save', 'perm.save_desc', 1),
(185, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(186, 2, 'undelete', 'perm.undelete_desc', 1),
(187, 2, 'unpublish', 'perm.unpublish_desc', 1),
(188, 2, 'view', 'perm.view_desc', 1),
(189, 3, 'load', 'perm.load_desc', 1),
(190, 3, 'list', 'perm.list_desc', 1),
(191, 3, 'view', 'perm.view_desc', 1),
(192, 3, 'save', 'perm.save_desc', 1),
(193, 3, 'remove', 'perm.remove_desc', 1),
(194, 4, 'add_children', 'perm.add_children_desc', 1),
(195, 4, 'create', 'perm.create_desc', 1),
(196, 4, 'copy', 'perm.copy_desc', 1),
(197, 4, 'delete', 'perm.delete_desc', 1),
(198, 4, 'list', 'perm.list_desc', 1),
(199, 4, 'load', 'perm.load_desc', 1),
(200, 4, 'remove', 'perm.remove_desc', 1),
(201, 4, 'save', 'perm.save_desc', 1),
(202, 4, 'view', 'perm.view_desc', 1),
(203, 5, 'create', 'perm.create_desc', 1),
(204, 5, 'copy', 'perm.copy_desc', 1),
(205, 5, 'list', 'perm.list_desc', 1),
(206, 5, 'load', 'perm.load_desc', 1),
(207, 5, 'remove', 'perm.remove_desc', 1),
(208, 5, 'save', 'perm.save_desc', 1),
(209, 5, 'view', 'perm.view_desc', 1),
(210, 6, 'load', 'perm.load_desc', 1),
(211, 6, 'list', 'perm.list_desc', 1),
(212, 6, 'view', 'perm.view_desc', 1),
(213, 6, 'save', 'perm.save_desc', 1),
(214, 6, 'remove', 'perm.remove_desc', 1),
(215, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(216, 6, 'copy', 'perm.copy_desc', 1),
(217, 7, 'list', 'perm.list_desc', 1),
(218, 7, 'load', 'perm.load_desc', 1),
(219, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_policies`
--

DROP TABLE IF EXISTS `sneg_prfx_access_policies`;
CREATE TABLE `sneg_prfx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_policies`
--

INSERT INTO `sneg_prfx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 1, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions'),
(13, 'Менеджер', '', 0, 1, '', '{\"about\":false,\"access_permissions\":false,\"actions\":false,\"change_password\":true,\"change_profile\":true,\"charsets\":false,\"class_map\":true,\"components\":false,\"content_types\":false,\"countries\":true,\"create\":false,\"credits\":false,\"customize_forms\":false,\"dashboards\":false,\"database\":false,\"database_truncate\":false,\"delete_category\":false,\"delete_chunk\":false,\"delete_context\":false,\"delete_document\":true,\"delete_eventlog\":false,\"delete_plugin\":false,\"delete_propertyset\":false,\"delete_role\":false,\"delete_snippet\":false,\"delete_template\":false,\"delete_tv\":false,\"delete_user\":false,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":false,\"directory_update\":true,\"edit_category\":false,\"edit_chunk\":false,\"edit_context\":false,\"edit_document\":true,\"edit_locked\":false,\"edit_plugin\":false,\"edit_propertyset\":false,\"edit_role\":false,\"edit_snippet\":false,\"edit_template\":false,\"edit_tv\":false,\"edit_user\":false,\"element_tree\":false,\"empty_cache\":true,\"error_log_erase\":false,\"error_log_view\":true,\"events\":false,\"export_static\":false,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":false,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":false,\"languages\":false,\"lexicons\":false,\"list\":true,\"load\":true,\"logout\":true,\"logs\":false,\"menus\":false,\"menu_reports\":true,\"menu_security\":false,\"menu_site\":true,\"menu_support\":true,\"menu_system\":false,\"menu_tools\":true,\"menu_user\":true,\"messages\":false,\"namespaces\":false,\"new_category\":false,\"new_chunk\":false,\"new_context\":false,\"new_document\":true,\"new_document_in_root\":false,\"new_plugin\":false,\"new_propertyset\":false,\"new_role\":false,\"new_snippet\":false,\"new_static_resource\":false,\"new_symlink\":false,\"new_template\":false,\"new_tv\":false,\"new_user\":false,\"new_weblink\":false,\"packages\":true,\"policy_delete\":false,\"policy_edit\":false,\"policy_new\":false,\"policy_save\":false,\"policy_template_delete\":false,\"policy_template_edit\":false,\"policy_template_new\":false,\"policy_template_save\":false,\"policy_template_view\":false,\"policy_view\":false,\"property_sets\":false,\"providers\":false,\"publish_document\":false,\"purge_deleted\":false,\"remove\":false,\"remove_locks\":false,\"resourcegroup_delete\":false,\"resourcegroup_edit\":false,\"resourcegroup_new\":false,\"resourcegroup_resource_edit\":false,\"resourcegroup_resource_list\":false,\"resourcegroup_save\":false,\"resourcegroup_view\":false,\"resource_duplicate\":true,\"resource_quick_create\":false,\"resource_quick_update\":false,\"resource_tree\":true,\"save\":false,\"save_category\":false,\"save_chunk\":false,\"save_context\":false,\"save_document\":true,\"save_plugin\":false,\"save_propertyset\":false,\"save_role\":false,\"save_snippet\":false,\"save_template\":false,\"save_tv\":false,\"save_user\":false,\"search\":true,\"settings\":false,\"sources\":false,\"source_delete\":false,\"source_edit\":false,\"source_save\":false,\"source_view\":true,\"steal_locks\":false,\"tree_show_element_ids\":false,\"tree_show_resource_ids\":true,\"undelete_document\":false,\"unlock_element_properties\":false,\"unpublish_document\":false,\"usergroup_delete\":false,\"usergroup_edit\":false,\"usergroup_new\":false,\"usergroup_save\":false,\"usergroup_user_edit\":false,\"usergroup_user_list\":false,\"usergroup_view\":false,\"view\":true,\"view_category\":false,\"view_chunk\":false,\"view_context\":false,\"view_document\":true,\"view_element\":false,\"view_eventlog\":false,\"view_offline\":false,\"view_plugin\":false,\"view_propertyset\":false,\"view_role\":false,\"view_snippet\":false,\"view_sysinfo\":false,\"view_template\":true,\"view_tv\":false,\"view_unpublished\":false,\"view_user\":false,\"workspaces\":false}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_policy_templates`
--

DROP TABLE IF EXISTS `sneg_prfx_access_policy_templates`;
CREATE TABLE `sneg_prfx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_policy_templates`
--

INSERT INTO `sneg_prfx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_policy_template_groups`
--

DROP TABLE IF EXISTS `sneg_prfx_access_policy_template_groups`;
CREATE TABLE `sneg_prfx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_policy_template_groups`
--

INSERT INTO `sneg_prfx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_resources`
--

DROP TABLE IF EXISTS `sneg_prfx_access_resources`;
CREATE TABLE `sneg_prfx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_resource_groups`
--

DROP TABLE IF EXISTS `sneg_prfx_access_resource_groups`;
CREATE TABLE `sneg_prfx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_access_resource_groups`
--

INSERT INTO `sneg_prfx_access_resource_groups` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '1', 'modUserGroup', 1, 9999, 1, 'web'),
(2, '1', 'modUserGroup', 1, 9999, 1, 'mgr');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_access_templatevars`
--

DROP TABLE IF EXISTS `sneg_prfx_access_templatevars`;
CREATE TABLE `sneg_prfx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_actiondom`
--

DROP TABLE IF EXISTS `sneg_prfx_actiondom`;
CREATE TABLE `sneg_prfx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_actions`
--

DROP TABLE IF EXISTS `sneg_prfx_actions`;
CREATE TABLE `sneg_prfx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_actions`
--

INSERT INTO `sneg_prfx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'migx', 'index', 0, 'example:default', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_actions_fields`
--

DROP TABLE IF EXISTS `sneg_prfx_actions_fields`;
CREATE TABLE `sneg_prfx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_actions_fields`
--

INSERT INTO `sneg_prfx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(77, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(78, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(79, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(80, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(81, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(82, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(83, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(84, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(85, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(86, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(87, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(88, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(89, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(90, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(91, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(92, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(93, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(94, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(95, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(96, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(97, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(98, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(99, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(100, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(101, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(102, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(103, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(104, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(105, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(106, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(107, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(108, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(109, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(110, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(111, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(112, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(113, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(114, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(115, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(116, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(117, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(118, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(119, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(120, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(121, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(122, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(123, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(124, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(125, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(126, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(127, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(128, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(129, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(130, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(131, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(132, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(133, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(134, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(135, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(136, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(137, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(138, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(139, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(140, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(141, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(142, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(143, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(144, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(145, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(146, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(147, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(148, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(149, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(150, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(151, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(152, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_active_users`
--

DROP TABLE IF EXISTS `sneg_prfx_active_users`;
CREATE TABLE `sneg_prfx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_categories`
--

DROP TABLE IF EXISTS `sneg_prfx_categories`;
CREATE TABLE `sneg_prfx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_categories`
--

INSERT INTO `sneg_prfx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'TinyMCE Rich Text Editor', 0),
(2, 0, 'SEO', 1),
(3, 0, 'Контакты', 0),
(5, 3, 'Первый номер телефона', 1),
(6, 3, 'Второй номер телефона', 2),
(7, 3, 'E-mail', 3),
(8, 3, 'Ссылки на соцсети', 4),
(9, 0, 'MIGX', 0),
(10, 0, 'Слайдер на главной странице', 0),
(11, 0, 'Типы фотосъемки', 0),
(12, 0, 'Подарочный сертификат', 0),
(13, 0, 'Фотокурс', 0),
(14, 0, 'Портфолио', 0),
(15, 0, 'Обратная связь', 0),
(16, 0, 'Настройки почты для отправки писем с сайта', 0),
(17, 0, 'Модальные окна', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_categories_closure`
--

DROP TABLE IF EXISTS `sneg_prfx_categories_closure`;
CREATE TABLE `sneg_prfx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_categories_closure`
--

INSERT INTO `sneg_prfx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 5, 0),
(0, 6, 0),
(0, 7, 0),
(0, 8, 0),
(0, 9, 0),
(0, 10, 0),
(0, 11, 0),
(0, 12, 0),
(0, 13, 0),
(0, 14, 0),
(0, 15, 0),
(0, 16, 0),
(0, 17, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(3, 5, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_class_map`
--

DROP TABLE IF EXISTS `sneg_prfx_class_map`;
CREATE TABLE `sneg_prfx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_class_map`
--

INSERT INTO `sneg_prfx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_content_type`
--

DROP TABLE IF EXISTS `sneg_prfx_content_type`;
CREATE TABLE `sneg_prfx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_content_type`
--

INSERT INTO `sneg_prfx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_context`
--

DROP TABLE IF EXISTS `sneg_prfx_context`;
CREATE TABLE `sneg_prfx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_context`
--

INSERT INTO `sneg_prfx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Сайт', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_context_resource`
--

DROP TABLE IF EXISTS `sneg_prfx_context_resource`;
CREATE TABLE `sneg_prfx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_context_setting`
--

DROP TABLE IF EXISTS `sneg_prfx_context_setting`;
CREATE TABLE `sneg_prfx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_context_setting`
--

INSERT INTO `sneg_prfx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'default_media_source', '3', 'textfield', 'core', '', '2018-05-20 07:46:47'),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL),
('web', 'default_media_source', '3', 'textfield', 'core', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_dashboard`
--

DROP TABLE IF EXISTS `sneg_prfx_dashboard`;
CREATE TABLE `sneg_prfx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_dashboard`
--

INSERT INTO `sneg_prfx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_dashboard_widget`
--

DROP TABLE IF EXISTS `sneg_prfx_dashboard_widget`;
CREATE TABLE `sneg_prfx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_dashboard_widget`
--

INSERT INTO `sneg_prfx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_dashboard_widget_placement`
--

DROP TABLE IF EXISTS `sneg_prfx_dashboard_widget_placement`;
CREATE TABLE `sneg_prfx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_dashboard_widget_placement`
--

INSERT INTO `sneg_prfx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_documentgroup_names`
--

DROP TABLE IF EXISTS `sneg_prfx_documentgroup_names`;
CREATE TABLE `sneg_prfx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_documentgroup_names`
--

INSERT INTO `sneg_prfx_documentgroup_names` (`id`, `name`, `private_memgroup`, `private_webgroup`) VALUES
(1, 'Администратор', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_document_groups`
--

DROP TABLE IF EXISTS `sneg_prfx_document_groups`;
CREATE TABLE `sneg_prfx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_element_property_sets`
--

DROP TABLE IF EXISTS `sneg_prfx_element_property_sets`;
CREATE TABLE `sneg_prfx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_extension_packages`
--

DROP TABLE IF EXISTS `sneg_prfx_extension_packages`;
CREATE TABLE `sneg_prfx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_fc_profiles`
--

DROP TABLE IF EXISTS `sneg_prfx_fc_profiles`;
CREATE TABLE `sneg_prfx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_fc_profiles_usergroups`
--

DROP TABLE IF EXISTS `sneg_prfx_fc_profiles_usergroups`;
CREATE TABLE `sneg_prfx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_fc_sets`
--

DROP TABLE IF EXISTS `sneg_prfx_fc_sets`;
CREATE TABLE `sneg_prfx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_lexicon_entries`
--

DROP TABLE IF EXISTS `sneg_prfx_lexicon_entries`;
CREATE TABLE `sneg_prfx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_manager_log`
--

DROP TABLE IF EXISTS `sneg_prfx_manager_log`;
CREATE TABLE `sneg_prfx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_manager_log`
--

INSERT INTO `sneg_prfx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2018-05-18 23:04:08', 'tv_update', 'modTemplateVar', '23'),
(2, 1, '2018-05-18 23:04:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(3, 1, '2018-05-18 23:10:11', 'tv_update', 'modTemplateVar', '23'),
(4, 1, '2018-05-18 23:10:12', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(5, 1, '2018-05-18 23:10:42', 'snippet_update', 'modSnippet', '27'),
(6, 1, '2018-05-18 23:10:42', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(7, 1, '2018-05-18 23:29:28', 'snippet_update', 'modSnippet', '27'),
(8, 1, '2018-05-18 23:29:28', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(9, 1, '2018-05-18 23:36:23', 'snippet_update', 'modSnippet', '27'),
(10, 1, '2018-05-18 23:36:23', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(11, 1, '2018-05-18 23:37:03', 'snippet_update', 'modSnippet', '27'),
(12, 1, '2018-05-18 23:37:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(13, 1, '2018-05-18 23:42:32', 'snippet_update', 'modSnippet', '27'),
(14, 1, '2018-05-18 23:42:32', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(15, 1, '2018-05-18 23:43:22', 'snippet_update', 'modSnippet', '27'),
(16, 1, '2018-05-18 23:43:22', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(17, 1, '2018-05-18 23:45:08', 'snippet_update', 'modSnippet', '27'),
(18, 1, '2018-05-18 23:45:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(19, 1, '2018-05-19 07:37:25', 'snippet_update', 'modSnippet', '27'),
(20, 1, '2018-05-19 07:37:25', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(21, 1, '2018-05-19 07:38:16', 'snippet_update', 'modSnippet', '27'),
(22, 1, '2018-05-19 07:38:16', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(23, 1, '2018-05-19 07:38:51', 'snippet_update', 'modSnippet', '27'),
(24, 1, '2018-05-19 07:38:51', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(25, 1, '2018-05-19 07:41:00', 'snippet_update', 'modSnippet', '27'),
(26, 1, '2018-05-19 07:41:01', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(27, 1, '2018-05-19 07:43:36', 'tv_update', 'modTemplateVar', '23'),
(28, 1, '2018-05-19 07:43:36', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(29, 1, '2018-05-19 07:43:45', 'snippet_update', 'modSnippet', '27'),
(30, 1, '2018-05-19 07:43:45', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(31, 1, '2018-05-19 07:44:33', 'snippet_update', 'modSnippet', '27'),
(32, 1, '2018-05-19 07:44:33', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(33, 1, '2018-05-19 08:06:04', 'snippet_update', 'modSnippet', '27'),
(34, 1, '2018-05-19 08:06:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(35, 1, '2018-05-19 08:07:12', 'snippet_update', 'modSnippet', '27'),
(36, 1, '2018-05-19 08:07:12', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 27 Default'),
(37, 1, '2018-05-19 08:33:51', 'directory_create', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio'),
(38, 1, '2018-05-19 08:34:26', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(39, 1, '2018-05-19 08:35:35', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/свадьбы 1.jpg'),
(40, 1, '2018-05-19 08:54:08', 'plugin_create', 'modPlugin', '6'),
(41, 1, '2018-05-19 08:55:03', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(42, 1, '2018-05-19 09:01:09', 'plugin_update', 'modPlugin', '6'),
(43, 1, '2018-05-19 09:01:10', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 6 Default'),
(44, 1, '2018-05-19 09:02:29', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(45, 1, '2018-05-19 09:02:37', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/2018.jpg'),
(46, 1, '2018-05-19 09:06:59', 'plugin_update', 'modPlugin', '6'),
(47, 1, '2018-05-19 09:06:59', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 6 Default'),
(48, 1, '2018-05-19 09:07:58', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(49, 1, '2018-05-19 09:09:13', 'plugin_update', 'modPlugin', '6'),
(50, 1, '2018-05-19 09:09:13', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 6 Default'),
(51, 1, '2018-05-19 09:09:25', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(52, 1, '2018-05-19 09:09:38', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/2018_05_19_T0.28105000_1526710078.jpg'),
(53, 1, '2018-05-19 09:09:43', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/2018_05_19_T030722200_1526710165.jpg'),
(54, 1, '2018-05-19 09:11:22', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/'),
(55, 1, '2018-05-19 09:11:22', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/'),
(56, 1, '2018-05-19 09:11:22', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/'),
(57, 1, '2018-05-19 09:11:22', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/'),
(58, 1, '2018-05-19 09:11:22', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/'),
(59, 1, '2018-05-19 09:11:22', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/'),
(60, 1, '2018-05-19 09:12:00', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/2018_05_19_T030853600_1526710282.jpg'),
(61, 1, '2018-05-19 09:12:08', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/2018_05_19_T037279900_1526710282.jpg'),
(62, 1, '2018-05-19 09:12:14', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/2018_05_19_T044250700_1526710282.jpg'),
(63, 1, '2018-05-19 09:12:19', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/2018_05_19_T050881200_1526710282.jpg'),
(64, 1, '2018-05-19 09:12:23', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/2018_05_19_T058254600_1526710282.jpg'),
(65, 1, '2018-05-19 09:12:26', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/2018_05_19_T067358200_1526710282.jpg'),
(66, 1, '2018-05-19 09:12:44', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(67, 1, '2018-05-19 09:12:44', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(68, 1, '2018-05-19 09:12:44', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(69, 1, '2018-05-19 09:12:44', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(70, 1, '2018-05-19 09:12:45', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(71, 1, '2018-05-19 09:12:45', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(72, 1, '2018-05-19 09:16:12', 'resource_update', 'modResource', '2'),
(73, 1, '2018-05-19 09:17:08', 'tv_update', 'modTemplateVar', '23'),
(74, 1, '2018-05-19 09:17:09', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(75, 1, '2018-05-19 09:37:41', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(76, 1, '2018-05-19 09:37:41', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(77, 1, '2018-05-19 09:37:41', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(78, 1, '2018-05-19 09:37:41', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(79, 1, '2018-05-19 09:37:41', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(80, 1, '2018-05-19 09:37:41', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/portfolio/'),
(81, 1, '2018-05-19 09:46:59', 'resource_update', 'modResource', '2'),
(82, 1, '2018-05-19 09:55:42', 'chunk_create', 'modChunk', '16'),
(83, 1, '2018-05-19 09:58:12', 'chunk_update', 'modChunk', '15'),
(84, 1, '2018-05-19 09:58:12', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(85, 1, '2018-05-19 10:00:31', 'chunk_update', 'modChunk', '16'),
(86, 1, '2018-05-19 10:00:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 16 Default'),
(87, 1, '2018-05-19 10:02:23', 'chunk_update', 'modChunk', '16'),
(88, 1, '2018-05-19 10:02:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 16 Default'),
(89, 1, '2018-05-19 10:02:45', 'chunk_update', 'modChunk', '16'),
(90, 1, '2018-05-19 10:02:45', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 16 Default'),
(91, 1, '2018-05-19 10:10:30', 'chunk_update', 'modChunk', '5'),
(92, 1, '2018-05-19 10:10:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(93, 1, '2018-05-19 12:41:00', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(94, 1, '2018-05-19 12:42:30', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(95, 1, '2018-05-19 12:43:47', 'chunk_update', 'modChunk', '2'),
(96, 1, '2018-05-19 12:43:47', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(97, 1, '2018-05-19 12:44:47', 'chunk_update', 'modChunk', '14'),
(98, 1, '2018-05-19 12:44:48', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(99, 1, '2018-05-19 14:13:51', 'chunk_update', 'modChunk', '5'),
(100, 1, '2018-05-19 14:13:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(101, 1, '2018-05-19 14:51:49', 'snippet_update', 'modSnippet', '22'),
(102, 1, '2018-05-19 14:51:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(103, 1, '2018-05-19 14:52:21', 'snippet_update', 'modSnippet', '22'),
(104, 1, '2018-05-19 14:52:21', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(105, 1, '2018-05-19 14:52:40', 'snippet_update', 'modSnippet', '22'),
(106, 1, '2018-05-19 14:52:40', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(107, 1, '2018-05-19 14:55:09', 'chunk_update', 'modChunk', '15'),
(108, 1, '2018-05-19 14:55:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(109, 1, '2018-05-19 15:10:53', 'snippet_update', 'modSnippet', '22'),
(110, 1, '2018-05-19 15:10:53', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(111, 1, '2018-05-19 15:14:12', 'chunk_create', 'modChunk', '17'),
(112, 1, '2018-05-19 15:14:36', 'chunk_duplicate', 'modChunk', '18'),
(113, 1, '2018-05-19 15:15:59', 'chunk_update', 'modChunk', '18'),
(114, 1, '2018-05-19 15:16:00', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 18 Default'),
(115, 1, '2018-05-19 15:21:12', 'snippet_update', 'modSnippet', '22'),
(116, 1, '2018-05-19 15:21:13', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(117, 1, '2018-05-19 15:23:48', 'chunk_update', 'modChunk', '15'),
(118, 1, '2018-05-19 15:25:14', 'snippet_update', 'modSnippet', '22'),
(119, 1, '2018-05-19 15:25:14', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(120, 1, '2018-05-19 15:26:19', 'snippet_update', 'modSnippet', '22'),
(121, 1, '2018-05-19 15:26:19', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(122, 1, '2018-05-19 15:26:43', 'chunk_update', 'modChunk', '15'),
(123, 1, '2018-05-19 15:27:05', 'snippet_update', 'modSnippet', '22'),
(124, 1, '2018-05-19 15:27:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(125, 1, '2018-05-19 15:27:41', 'snippet_update', 'modSnippet', '22'),
(126, 1, '2018-05-19 15:27:41', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(127, 1, '2018-05-19 15:27:59', 'snippet_update', 'modSnippet', '22'),
(128, 1, '2018-05-19 15:27:59', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(129, 1, '2018-05-19 15:41:37', 'directory_create', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work'),
(130, 1, '2018-05-19 15:57:58', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(131, 1, '2018-05-19 16:10:26', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(132, 1, '2018-05-19 16:13:35', 'chunk_update', 'modChunk', '17'),
(133, 1, '2018-05-19 16:13:35', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 17 Default'),
(134, 1, '2018-05-19 16:33:35', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(135, 1, '2018-05-19 16:35:52', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(136, 1, '2018-05-19 16:37:49', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(137, 1, '2018-05-19 16:40:26', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(138, 1, '2018-05-19 16:52:45', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(139, 1, '2018-05-19 16:54:21', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(140, 1, '2018-05-19 16:57:54', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(141, 1, '2018-05-19 17:06:02', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(142, 1, '2018-05-19 17:12:28', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(143, 1, '2018-05-19 17:14:40', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(144, 1, '2018-05-19 17:17:24', 'chunk_update', 'modChunk', '15'),
(145, 1, '2018-05-19 17:17:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(146, 1, '2018-05-19 17:19:22', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(147, 1, '2018-05-19 17:41:08', 'snippet_update', 'modSnippet', '22'),
(148, 1, '2018-05-19 17:41:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(149, 1, '2018-05-19 17:41:32', 'chunk_update', 'modChunk', '15'),
(150, 1, '2018-05-19 17:41:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(151, 1, '2018-05-19 17:41:39', 'chunk_update', 'modChunk', '15'),
(152, 1, '2018-05-19 17:41:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(153, 1, '2018-05-19 17:42:05', 'chunk_update', 'modChunk', '15'),
(154, 1, '2018-05-19 17:42:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(155, 1, '2018-05-19 17:54:36', 'snippet_update', 'modSnippet', '22'),
(156, 1, '2018-05-19 17:54:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(157, 1, '2018-05-19 18:07:07', 'snippet_update', 'modSnippet', '22'),
(158, 1, '2018-05-19 18:07:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(159, 1, '2018-05-19 18:10:29', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(160, 1, '2018-05-19 18:12:35', 'chunk_update', 'modChunk', '18'),
(161, 1, '2018-05-19 18:16:10', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(162, 1, '2018-05-19 18:18:11', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(163, 1, '2018-05-19 18:22:37', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(164, 1, '2018-05-19 18:24:23', 'chunk_update', 'modChunk', '18'),
(165, 1, '2018-05-19 18:25:39', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(166, 1, '2018-05-19 18:31:12', 'snippet_update', 'modSnippet', '22'),
(167, 1, '2018-05-19 18:31:12', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(168, 1, '2018-05-19 18:33:17', 'resource_update', 'modResource', '2'),
(169, 1, '2018-05-19 18:50:24', 'chunk_update', 'modChunk', '15'),
(170, 1, '2018-05-19 18:50:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(171, 1, '2018-05-19 19:00:01', 'chunk_update', 'modChunk', '15'),
(172, 1, '2018-05-19 19:00:01', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(173, 1, '2018-05-19 19:03:58', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(174, 1, '2018-05-19 19:13:45', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(175, 1, '2018-05-19 19:14:30', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(176, 1, '2018-05-19 19:21:59', 'snippet_update', 'modSnippet', '22'),
(177, 1, '2018-05-19 19:21:59', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(178, 1, '2018-05-19 19:27:29', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(179, 1, '2018-05-19 19:30:10', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(180, 1, '2018-05-19 19:33:27', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(181, 1, '2018-05-19 19:39:58', 'chunk_update', 'modChunk', '15'),
(182, 1, '2018-05-19 19:39:59', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(183, 1, '2018-05-19 19:46:42', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(184, 1, '2018-05-19 19:50:20', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(185, 1, '2018-05-19 19:54:36', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(186, 1, '2018-05-19 20:06:54', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(187, 1, '2018-05-19 20:18:53', 'snippet_update', 'modSnippet', '22'),
(188, 1, '2018-05-19 20:18:53', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(189, 1, '2018-05-19 20:20:07', 'snippet_update', 'modSnippet', '22'),
(190, 1, '2018-05-19 20:20:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(191, 1, '2018-05-19 20:24:44', 'snippet_update', 'modSnippet', '22'),
(192, 1, '2018-05-19 20:24:44', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(193, 1, '2018-05-19 20:26:42', 'snippet_update', 'modSnippet', '22'),
(194, 1, '2018-05-19 20:26:42', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(195, 1, '2018-05-19 20:27:47', 'snippet_update', 'modSnippet', '22'),
(196, 1, '2018-05-19 20:27:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(197, 1, '2018-05-19 20:29:06', 'snippet_update', 'modSnippet', '22'),
(198, 1, '2018-05-19 20:29:06', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(199, 1, '2018-05-19 21:14:34', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(200, 1, '2018-05-19 21:17:25', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(201, 1, '2018-05-19 21:18:43', 'chunk_update', 'modChunk', '15'),
(202, 1, '2018-05-19 21:18:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(203, 1, '2018-05-19 21:21:59', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(204, 1, '2018-05-19 21:27:34', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(205, 1, '2018-05-19 21:28:40', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/getparsejson.php'),
(206, 1, '2018-05-19 21:31:32', 'chunk_update', 'modChunk', '15'),
(207, 1, '2018-05-19 21:31:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(208, 1, '2018-05-19 21:57:54', 'snippet_update', 'modSnippet', '22'),
(209, 1, '2018-05-19 21:57:54', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(210, 1, '2018-05-19 21:58:44', 'snippet_update', 'modSnippet', '22'),
(211, 1, '2018-05-19 21:58:44', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(212, 1, '2018-05-19 21:59:03', 'snippet_update', 'modSnippet', '22'),
(213, 1, '2018-05-19 21:59:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(214, 1, '2018-05-19 21:59:53', 'snippet_update', 'modSnippet', '22'),
(215, 1, '2018-05-19 21:59:53', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(216, 1, '2018-05-19 22:00:09', 'snippet_update', 'modSnippet', '22'),
(217, 1, '2018-05-19 22:00:10', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(218, 1, '2018-05-19 22:02:10', 'snippet_update', 'modSnippet', '22'),
(219, 1, '2018-05-19 22:02:10', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(220, 1, '2018-05-19 22:03:08', 'snippet_update', 'modSnippet', '22'),
(221, 1, '2018-05-19 22:03:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(222, 1, '2018-05-19 22:37:50', 'snippet_update', 'modSnippet', '22'),
(223, 1, '2018-05-19 22:37:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(224, 1, '2018-05-19 22:38:18', 'snippet_update', 'modSnippet', '22'),
(225, 1, '2018-05-19 22:38:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(226, 1, '2018-05-19 22:39:17', 'snippet_update', 'modSnippet', '22'),
(227, 1, '2018-05-19 22:39:17', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(228, 1, '2018-05-19 22:40:18', 'snippet_update', 'modSnippet', '22'),
(229, 1, '2018-05-19 22:40:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(230, 1, '2018-05-19 22:41:13', 'snippet_update', 'modSnippet', '22'),
(231, 1, '2018-05-19 22:41:13', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(232, 1, '2018-05-19 22:42:16', 'chunk_update', 'modChunk', '15'),
(233, 1, '2018-05-19 22:42:16', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(234, 1, '2018-05-19 22:43:39', 'snippet_update', 'modSnippet', '22'),
(235, 1, '2018-05-19 22:43:40', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(236, 1, '2018-05-19 22:45:03', 'snippet_update', 'modSnippet', '22'),
(237, 1, '2018-05-19 22:45:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(238, 1, '2018-05-19 23:31:09', 'chunk_update', 'modChunk', '15'),
(239, 1, '2018-05-19 23:31:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(240, 1, '2018-05-19 23:32:29', 'chunk_update', 'modChunk', '15'),
(241, 1, '2018-05-19 23:32:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(242, 1, '2018-05-19 23:44:50', 'chunk_update', 'modChunk', '15'),
(243, 1, '2018-05-19 23:44:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(244, 1, '2018-05-19 23:48:32', 'chunk_create', 'modChunk', '19'),
(245, 1, '2018-05-19 23:52:41', 'chunk_update', 'modChunk', '19'),
(246, 1, '2018-05-20 05:04:31', 'chunk_update', 'modChunk', '15'),
(247, 1, '2018-05-20 05:04:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(248, 1, '2018-05-20 05:05:37', 'snippet_duplicate', 'modSnippet', '28'),
(249, 1, '2018-05-20 05:15:01', 'snippet_update', 'modSnippet', '28'),
(250, 1, '2018-05-20 05:15:01', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(251, 1, '2018-05-20 05:18:07', 'snippet_update', 'modSnippet', '28'),
(252, 1, '2018-05-20 05:18:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(253, 1, '2018-05-20 05:18:53', 'snippet_update', 'modSnippet', '28'),
(254, 1, '2018-05-20 05:18:53', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(255, 1, '2018-05-20 05:20:00', 'snippet_update', 'modSnippet', '28'),
(256, 1, '2018-05-20 05:20:00', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(257, 1, '2018-05-20 05:21:31', 'snippet_update', 'modSnippet', '28'),
(258, 1, '2018-05-20 05:21:32', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(259, 1, '2018-05-20 05:22:57', 'snippet_update', 'modSnippet', '28'),
(260, 1, '2018-05-20 05:22:57', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(261, 1, '2018-05-20 05:23:37', 'chunk_update', 'modChunk', '19'),
(262, 1, '2018-05-20 05:26:24', 'chunk_update', 'modChunk', '19'),
(263, 1, '2018-05-20 05:26:32', 'snippet_update', 'modSnippet', '28'),
(264, 1, '2018-05-20 05:26:32', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(265, 1, '2018-05-20 05:28:36', 'snippet_update', 'modSnippet', '28'),
(266, 1, '2018-05-20 05:28:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(267, 1, '2018-05-20 05:32:25', 'snippet_update', 'modSnippet', '28'),
(268, 1, '2018-05-20 05:32:25', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(269, 1, '2018-05-20 05:39:12', 'snippet_update', 'modSnippet', '28'),
(270, 1, '2018-05-20 05:39:12', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(271, 1, '2018-05-20 05:39:58', 'snippet_update', 'modSnippet', '28'),
(272, 1, '2018-05-20 05:39:58', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(273, 1, '2018-05-20 05:58:08', 'plugin_create', 'modPlugin', '7'),
(274, 1, '2018-05-20 05:58:43', 'plugin_update', 'modPlugin', '7'),
(275, 1, '2018-05-20 05:58:43', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(276, 1, '2018-05-20 05:59:25', 'plugin_update', 'modPlugin', '7'),
(277, 1, '2018-05-20 05:59:25', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(278, 1, '2018-05-20 06:01:20', 'plugin_update', 'modPlugin', '7'),
(279, 1, '2018-05-20 06:01:20', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(280, 1, '2018-05-20 06:02:08', 'plugin_update', 'modPlugin', '7'),
(281, 1, '2018-05-20 06:02:08', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(282, 1, '2018-05-20 06:02:44', 'plugin_update', 'modPlugin', '7'),
(283, 1, '2018-05-20 06:02:44', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(284, 1, '2018-05-20 06:03:22', 'plugin_update', 'modPlugin', '7'),
(285, 1, '2018-05-20 06:03:22', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(286, 1, '2018-05-20 06:03:34', 'plugin_update', 'modPlugin', '7'),
(287, 1, '2018-05-20 06:03:35', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(288, 1, '2018-05-20 06:05:09', 'plugin_update', 'modPlugin', '7'),
(289, 1, '2018-05-20 06:05:09', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(290, 1, '2018-05-20 06:06:02', 'plugin_update', 'modPlugin', '7'),
(291, 1, '2018-05-20 06:06:02', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(292, 1, '2018-05-20 06:07:44', 'plugin_update', 'modPlugin', '7'),
(293, 1, '2018-05-20 06:07:44', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(294, 1, '2018-05-20 06:08:19', 'plugin_update', 'modPlugin', '7'),
(295, 1, '2018-05-20 06:08:20', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(296, 1, '2018-05-20 06:11:14', 'plugin_update', 'modPlugin', '7'),
(297, 1, '2018-05-20 06:11:14', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(298, 1, '2018-05-20 06:12:07', 'plugin_update', 'modPlugin', '7'),
(299, 1, '2018-05-20 06:12:08', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(300, 1, '2018-05-20 06:12:32', 'plugin_update', 'modPlugin', '7'),
(301, 1, '2018-05-20 06:12:32', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(302, 1, '2018-05-20 06:14:58', 'plugin_update', 'modPlugin', '7'),
(303, 1, '2018-05-20 06:14:58', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(304, 1, '2018-05-20 06:15:15', 'plugin_update', 'modPlugin', '7'),
(305, 1, '2018-05-20 06:15:15', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(306, 1, '2018-05-20 06:15:28', 'plugin_update', 'modPlugin', '7'),
(307, 1, '2018-05-20 06:15:28', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 7 Default'),
(308, 1, '2018-05-20 06:16:34', 'snippet_update', 'modSnippet', '28'),
(309, 1, '2018-05-20 06:18:22', 'chunk_duplicate', 'modChunk', '20'),
(310, 1, '2018-05-20 06:25:33', 'chunk_update', 'modChunk', '15'),
(311, 1, '2018-05-20 06:25:33', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(312, 1, '2018-05-20 06:26:36', 'chunk_update', 'modChunk', '20'),
(313, 1, '2018-05-20 06:26:55', 'snippet_duplicate', 'modSnippet', '29'),
(314, 1, '2018-05-20 06:27:58', 'snippet_update', 'modSnippet', '29'),
(315, 1, '2018-05-20 06:27:58', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 29 Default'),
(316, 1, '2018-05-20 06:38:51', 'tv_create', 'modTemplateVar', '24'),
(317, 1, '2018-05-20 06:39:43', 'tv_update', 'modTemplateVar', '24'),
(318, 1, '2018-05-20 06:39:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(319, 1, '2018-05-20 06:39:47', 'tv_update', 'modTemplateVar', '24'),
(320, 1, '2018-05-20 06:39:47', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(321, 1, '2018-05-20 06:43:59', 'tv_update', 'modTemplateVar', '24'),
(322, 1, '2018-05-20 06:44:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(323, 1, '2018-05-20 06:45:47', 'tv_update', 'modTemplateVar', '24'),
(324, 1, '2018-05-20 06:45:47', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(325, 1, '2018-05-20 06:50:23', 'tv_update', 'modTemplateVar', '24'),
(326, 1, '2018-05-20 06:50:24', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(327, 1, '2018-05-20 06:50:44', 'tv_update', 'modTemplateVar', '24'),
(328, 1, '2018-05-20 06:50:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(329, 1, '2018-05-20 06:51:31', 'tv_update', 'modTemplateVar', '24'),
(330, 1, '2018-05-20 06:51:31', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(331, 1, '2018-05-20 06:52:23', 'tv_update', 'modTemplateVar', '14'),
(332, 1, '2018-05-20 06:52:23', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 14 Default'),
(333, 1, '2018-05-20 06:55:38', 'chunk_update', 'modChunk', '6'),
(334, 1, '2018-05-20 06:55:38', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(335, 1, '2018-05-20 06:59:04', 'snippet_update', 'modSnippet', '23'),
(336, 1, '2018-05-20 06:59:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(337, 1, '2018-05-20 06:59:56', 'chunk_update', 'modChunk', '6'),
(338, 1, '2018-05-20 06:59:57', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(339, 1, '2018-05-20 07:00:35', 'snippet_update', 'modSnippet', '23'),
(340, 1, '2018-05-20 07:00:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(341, 1, '2018-05-20 07:02:22', 'snippet_update', 'modSnippet', '23'),
(342, 1, '2018-05-20 07:02:22', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(343, 1, '2018-05-20 07:05:18', 'snippet_update', 'modSnippet', '23'),
(344, 1, '2018-05-20 07:05:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(345, 1, '2018-05-20 07:06:04', 'snippet_update', 'modSnippet', '23'),
(346, 1, '2018-05-20 07:06:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(347, 1, '2018-05-20 07:06:22', 'resource_update', 'modResource', '5'),
(348, 1, '2018-05-20 07:06:35', 'resource_update', 'modResource', '6'),
(349, 1, '2018-05-20 07:06:50', 'resource_update', 'modResource', '7'),
(350, 1, '2018-05-20 07:07:03', 'resource_update', 'modResource', '8'),
(351, 1, '2018-05-20 07:09:28', 'tv_update', 'modTemplateVar', '24'),
(352, 1, '2018-05-20 07:09:28', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(353, 1, '2018-05-20 07:09:41', 'tv_update', 'modTemplateVar', '17'),
(354, 1, '2018-05-20 07:09:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 17 Default'),
(355, 1, '2018-05-20 07:20:31', 'source_create', 'sources.modMediaSource', '2'),
(356, 1, '2018-05-20 07:21:40', 'source_update', 'sources.modMediaSource', '2'),
(357, 1, '2018-05-20 07:25:35', 'policy_duplicate', 'modAccessPolicy', '13'),
(358, 1, '2018-05-20 07:29:33', 'policy_update', 'modAccessPolicy', '13'),
(359, 1, '2018-05-20 07:31:06', 'user_group_create', 'modUserGroup', '2'),
(360, 1, '2018-05-20 07:32:14', 'access_context_update', 'modAccessContext', '4'),
(361, 1, '2018-05-20 07:32:24', 'access_context_update', 'modAccessContext', '5'),
(362, 1, '2018-05-20 07:35:47', 'user_create', 'modUser', '2'),
(363, 1, '2018-05-20 07:40:10', 'source_delete', 'sources.modMediaSource', '2'),
(364, 1, '2018-05-20 07:40:25', 'source_duplicate', 'sources.modMediaSource', '3'),
(365, 1, '2018-05-20 07:41:20', 'source_update', 'sources.modMediaSource', '3'),
(366, 1, '2018-05-20 07:42:17', 'source_create', 'sources.modAccessMediaSource', '1'),
(367, 1, '2018-05-20 07:42:30', 'clear_cache', '', 'mgr'),
(368, 1, '2018-05-20 07:44:22', 'source_update', 'sources.modMediaSource', '1'),
(369, 1, '2018-05-20 07:45:14', 'source_update', 'sources.modMediaSource', '3'),
(370, 1, '2018-05-20 07:46:46', 'resource_group_create', 'modResourceGroup', '1'),
(371, 1, '2018-05-20 07:48:40', 'clear_cache', '', 'mgr'),
(372, 1, '2018-05-20 07:53:25', 'policy_update', 'modAccessPolicy', '13'),
(373, 1, '2018-05-20 07:53:39', 'policy_update', 'modAccessPolicy', '13'),
(374, 1, '2018-05-20 07:53:55', 'clear_cache', '', 'mgr'),
(375, 2, '2018-05-20 07:54:31', 'login', 'modContext', 'mgr'),
(376, 1, '2018-05-20 07:59:27', 'setting_update', 'modSystemSetting', 'tvs_below_content'),
(377, 1, '2018-05-20 08:00:33', 'setting_update', 'modSystemSetting', 'tvs_below_content'),
(378, 1, '2018-05-20 08:03:35', 'setting_update', 'modSystemSetting', 'feed_modx_news_enabled'),
(379, 1, '2018-05-20 08:04:22', 'setting_update', 'modSystemSetting', 'feed_modx_security_enabled'),
(380, 1, '2018-05-20 08:12:38', 'policy_update', 'modAccessPolicy', '13'),
(381, 1, '2018-05-20 08:15:28', 'access_update', 'modAccessContext', '5'),
(382, 1, '2018-05-20 08:15:43', 'clear_cache', '', 'mgr'),
(383, 1, '2018-05-20 08:19:22', 'access_update', 'modAccessContext', '5'),
(384, 1, '2018-05-20 08:19:46', 'context_update', 'modContext', 'mgr'),
(385, 1, '2018-05-20 08:20:33', 'access_update', 'modAccessContext', '4'),
(386, 1, '2018-05-20 08:21:00', 'clear_cache', '', 'mgr'),
(387, 1, '2018-05-20 08:21:57', 'access_update', 'modAccessContext', '4'),
(388, 1, '2018-05-20 08:22:06', 'access_update', 'modAccessContext', '4'),
(389, 1, '2018-05-20 08:24:52', 'policy_update', 'modAccessPolicy', '13'),
(390, 1, '2018-05-20 08:28:23', 'policy_duplicate', 'modAccessPolicy', '14'),
(391, 1, '2018-05-20 08:28:55', 'policy_update', 'modAccessPolicy', '14'),
(392, 1, '2018-05-20 08:31:54', 'access_context_update', 'modAccessContext', '5'),
(393, 1, '2018-05-20 08:32:06', 'clear_cache', '', 'mgr'),
(394, 1, '2018-05-20 08:33:21', 'access_context_update', 'modAccessContext', '4'),
(395, 1, '2018-05-20 08:33:37', 'clear_cache', '', 'mgr'),
(396, 1, '2018-05-20 08:34:57', 'access_context_update', 'modAccessContext', '4'),
(397, 1, '2018-05-20 08:35:10', 'access_context_update', 'modAccessContext', '5'),
(398, 1, '2018-05-20 08:35:13', 'user_group_update', 'modUserGroup', '2'),
(399, 1, '2018-05-20 08:35:29', 'source_update', 'sources.modAccessMediaSource', '3'),
(400, 1, '2018-05-20 08:35:42', 'source_update', 'sources.modAccessMediaSource', '3'),
(401, 1, '2018-05-20 08:36:15', 'source_update', 'sources.modAccessMediaSource', '3'),
(402, 1, '2018-05-20 08:36:18', 'user_group_update', 'modUserGroup', '2'),
(403, 1, '2018-05-20 08:36:50', 'clear_cache', '', 'mgr'),
(404, 1, '2018-05-20 08:38:31', 'source_update', 'sources.modAccessMediaSource', '3'),
(405, 1, '2018-05-20 08:38:52', 'user_group_update', 'modUserGroup', '2'),
(406, 1, '2018-05-20 08:40:02', 'policy_delete', 'modAccessPolicy', '14'),
(407, 1, '2018-05-20 08:40:38', 'clear_cache', '', 'mgr'),
(408, 1, '2018-05-20 08:42:03', 'source_update', 'sources.modMediaSource', '3'),
(409, 1, '2018-05-20 08:42:47', 'source_update', 'sources.modMediaSource', '3'),
(410, 1, '2018-05-20 08:44:32', 'source_update', 'sources.modMediaSource', '3'),
(411, 1, '2018-05-20 08:48:08', 'source_update', 'sources.modAccessMediaSource', '9'),
(412, 1, '2018-05-20 08:48:30', 'clear_cache', '', 'mgr'),
(413, 1, '2018-05-20 08:50:39', 'source_update', 'sources.modAccessMediaSource', '9'),
(414, 1, '2018-05-20 08:51:18', 'source_update', 'sources.modAccessMediaSource', '9'),
(415, 1, '2018-05-20 08:53:53', 'source_update', 'sources.modMediaSource', '3'),
(416, 1, '2018-05-20 08:56:30', 'tv_update', 'modTemplateVar', '23'),
(417, 1, '2018-05-20 08:56:30', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(418, 1, '2018-05-20 08:58:38', 'tv_update', 'modTemplateVar', '23'),
(419, 1, '2018-05-20 08:58:38', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(420, 1, '2018-05-20 08:58:47', 'clear_cache', '', 'mgr'),
(421, 1, '2018-05-20 08:59:23', 'tv_update', 'modTemplateVar', '23'),
(422, 1, '2018-05-20 08:59:23', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(423, 1, '2018-05-20 09:01:24', 'source_update', 'sources.modMediaSource', '1'),
(424, 1, '2018-05-20 09:02:40', 'source_update', 'sources.modMediaSource', '1'),
(425, 1, '2018-05-20 09:03:49', 'source_create', 'sources.modAccessMediaSource', '16'),
(426, 1, '2018-05-20 09:05:25', 'access_source_delete', 'sources.modAccessMediaSource', '16'),
(427, 1, '2018-05-20 09:05:35', 'source_update', 'sources.modAccessMediaSource', '11'),
(428, 1, '2018-05-20 09:15:12', 'access_context_update', 'modAccessContext', '4'),
(429, 1, '2018-05-20 09:15:59', 'access_context_update', 'modAccessContext', '4'),
(430, 1, '2018-05-20 09:16:02', 'user_group_update', 'modUserGroup', '2'),
(431, 1, '2018-05-20 09:22:44', 'policy_update', 'modAccessPolicy', '13'),
(432, 1, '2018-05-20 09:24:28', 'access_context_update', 'modAccessContext', '4'),
(433, 1, '2018-05-20 09:24:54', 'access_context_update', 'modAccessContext', '5'),
(434, 1, '2018-05-20 09:25:03', 'user_group_update', 'modUserGroup', '2'),
(435, 1, '2018-05-20 09:27:23', 'clear_cache', '', 'mgr'),
(436, 1, '2018-05-20 09:30:09', 'source_update', 'sources.modMediaSource', '3'),
(437, 1, '2018-05-20 09:31:17', 'source_update', 'sources.modAccessMediaSource', '11'),
(438, 1, '2018-05-20 09:31:19', 'user_group_update', 'modUserGroup', '2'),
(439, 1, '2018-05-20 09:31:36', 'clear_cache', '', 'mgr'),
(440, 1, '2018-05-20 09:33:45', 'clear_cache', '', 'mgr'),
(441, 1, '2018-05-20 09:33:51', 'clear_cache', '', 'mgr'),
(442, 2, '2018-05-20 09:34:40', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/'),
(443, 2, '2018-05-20 09:34:56', 'file_remove', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/2018_05_20_T016094500_1526798080.jpg'),
(444, 1, '2018-05-20 09:36:44', 'tv_update', 'modTemplateVar', '23'),
(445, 1, '2018-05-20 09:36:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(446, 1, '2018-05-20 09:38:33', 'tv_update', 'modTemplateVar', '23'),
(447, 1, '2018-05-20 09:38:33', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(448, 1, '2018-05-20 09:43:32', 'setting_update', 'modSystemSetting', 'default_media_source'),
(449, 1, '2018-05-20 09:43:39', 'clear_cache', '', 'mgr'),
(450, 1, '2018-05-20 09:44:32', 'setting_update', 'modSystemSetting', 'default_media_source'),
(451, 1, '2018-05-20 09:45:45', 'setting_create', 'modContextSetting', 'default_media_source'),
(452, 1, '2018-05-20 09:45:51', 'context_update', 'modContext', 'mgr'),
(453, 1, '2018-05-20 09:46:03', 'clear_cache', '', 'mgr'),
(454, 2, '2018-05-20 09:47:27', 'resource_update', 'modResource', '1'),
(455, 2, '2018-05-20 09:50:52', 'resource_update', 'modResource', '2'),
(456, 2, '2018-05-20 09:51:52', 'resource_update', 'modResource', '5'),
(457, 2, '2018-05-20 09:56:09', 'resource_update', 'modResource', '6'),
(458, 2, '2018-05-20 09:56:37', 'resource_update', 'modResource', '7'),
(459, 2, '2018-05-20 09:57:03', 'resource_update', 'modResource', '8'),
(460, 1, '2018-05-20 09:58:17', 'clear_cache', '', 'mgr'),
(461, 1, '2018-05-20 09:59:44', 'tv_update', 'modTemplateVar', '23'),
(462, 1, '2018-05-20 09:59:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(463, 1, '2018-05-20 09:59:50', 'tv_update', 'modTemplateVar', '23'),
(464, 1, '2018-05-20 09:59:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(465, 1, '2018-05-20 10:00:33', 'tv_update', 'modTemplateVar', '13'),
(466, 1, '2018-05-20 10:00:33', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 13 Default'),
(467, 1, '2018-05-20 10:01:05', 'tv_update', 'modTemplateVar', '13'),
(468, 1, '2018-05-20 10:01:05', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 13 Default'),
(469, 1, '2018-05-20 10:01:32', 'tv_update', 'modTemplateVar', '19'),
(470, 1, '2018-05-20 10:01:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 19 Default'),
(471, 1, '2018-05-20 10:01:49', 'tv_update', 'modTemplateVar', '19'),
(472, 1, '2018-05-20 10:01:49', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 19 Default'),
(473, 1, '2018-05-20 10:02:12', 'tv_update', 'modTemplateVar', '23'),
(474, 1, '2018-05-20 10:02:12', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(475, 1, '2018-05-20 10:02:43', 'tv_update', 'modTemplateVar', '12'),
(476, 1, '2018-05-20 10:02:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 12 Default'),
(477, 1, '2018-05-20 10:03:09', 'tv_update', 'modTemplateVar', '17'),
(478, 1, '2018-05-20 10:03:09', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 17 Default'),
(479, 1, '2018-05-20 10:03:29', 'tv_update', 'modTemplateVar', '20'),
(480, 1, '2018-05-20 10:03:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 20 Default'),
(481, 1, '2018-05-20 10:05:06', 'clear_cache', '', 'mgr'),
(482, 2, '2018-05-20 10:05:55', 'resource_update', 'modResource', '11'),
(483, 1, '2018-05-20 10:06:58', 'template_update', 'modTemplate', '5'),
(484, 1, '2018-05-20 10:06:58', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(485, 2, '2018-05-20 10:07:36', 'resource_update', 'modResource', '10'),
(486, 2, '2018-05-20 10:07:39', 'resource_update', 'modResource', '10'),
(487, 2, '2018-05-20 10:08:15', 'resource_update', 'modResource', '5'),
(488, 2, '2018-05-20 10:08:29', 'resource_update', 'modResource', '6'),
(489, 2, '2018-05-20 10:08:43', 'resource_update', 'modResource', '7'),
(490, 2, '2018-05-20 10:08:58', 'resource_update', 'modResource', '8'),
(491, 1, '2018-05-20 10:14:41', 'chunk_create', 'modChunk', '21'),
(492, 1, '2018-05-20 10:16:36', 'directory_create', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/user_logo'),
(493, 1, '2018-05-20 10:17:51', 'file_upload', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/content/user_logo/'),
(494, 1, '2018-05-20 10:17:57', 'save_profile', 'modUser', '1'),
(495, 1, '2018-05-20 10:18:01', 'save_profile', 'modUser', '1'),
(496, 2, '2018-05-20 10:18:41', 'save_profile', 'modUser', '2'),
(497, 2, '2018-05-20 10:18:48', 'save_profile', 'modUser', '2'),
(498, 1, '2018-05-20 10:21:36', 'snippet_update', 'modSnippet', '1'),
(499, 1, '2018-05-20 10:21:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 1 Default'),
(500, 1, '2018-05-20 10:23:20', 'tv_duplicate', 'modTemplateVar', '25'),
(501, 1, '2018-05-20 10:24:11', 'tv_update', 'modTemplateVar', '25'),
(502, 1, '2018-05-20 10:24:12', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 25 Default'),
(503, 1, '2018-05-20 10:26:04', 'chunk_update', 'modChunk', '3'),
(504, 1, '2018-05-20 10:26:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(505, 1, '2018-05-20 10:27:32', 'tv_update', 'modTemplateVar', '25'),
(506, 1, '2018-05-20 10:27:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 25 Default'),
(507, 1, '2018-05-20 10:28:27', 'tv_update', 'modTemplateVar', '25'),
(508, 1, '2018-05-20 10:28:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 25 Default'),
(509, 1, '2018-05-20 10:30:43', 'chunk_update', 'modChunk', '21'),
(510, 1, '2018-05-20 10:30:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 21 Default'),
(511, 2, '2018-05-20 10:30:53', 'resource_update', 'modResource', '3'),
(512, 2, '2018-05-20 10:32:18', 'resource_update', 'modResource', '3'),
(513, 1, '2018-05-20 10:35:54', 'source_update', 'sources.modMediaSource', '3'),
(514, 1, '2018-05-20 10:36:02', 'clear_cache', '', 'mgr'),
(515, 2, '2018-05-20 10:36:40', 'resource_update', 'modResource', '5'),
(516, 2, '2018-05-20 10:36:42', 'resource_update', 'modResource', '5'),
(517, 1, '2018-05-20 10:38:29', 'source_update', 'sources.modMediaSource', '3'),
(518, 1, '2018-05-20 10:40:01', 'setting_update', 'modContextSetting', 'default_media_source'),
(519, 1, '2018-05-20 10:40:16', 'clear_cache', '', 'mgr'),
(520, 2, '2018-05-20 10:40:37', 'resource_update', 'modResource', '5'),
(521, 1, '2018-05-20 10:45:09', 'tv_update', 'modTemplateVar', '23'),
(522, 1, '2018-05-20 10:45:09', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(523, 1, '2018-05-20 10:46:14', 'tv_update', 'modTemplateVar', '23'),
(524, 1, '2018-05-20 10:46:14', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(525, 1, '2018-05-20 10:46:48', 'setting_update', 'modContextSetting', 'default_media_source'),
(526, 1, '2018-05-20 10:46:49', 'setting_update', 'modContextSetting', 'allow_tags_in_post'),
(527, 1, '2018-05-20 10:46:49', 'context_update', 'modContext', 'mgr'),
(528, 1, '2018-05-20 10:47:42', 'setting_create', 'modContextSetting', 'default_media_source'),
(529, 1, '2018-05-20 10:51:48', 'tv_update', 'modTemplateVar', '23'),
(530, 1, '2018-05-20 10:51:48', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(531, 1, '2018-05-20 10:52:28', 'tv_update', 'modTemplateVar', '23'),
(532, 1, '2018-05-20 10:52:28', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(533, 1, '2018-05-20 10:55:48', 'snippet_update', 'modSnippet', '22'),
(534, 1, '2018-05-20 10:55:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(535, 1, '2018-05-20 11:01:29', 'snippet_update', 'modSnippet', '22'),
(536, 1, '2018-05-20 11:01:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(537, 1, '2018-05-20 11:06:02', 'snippet_update', 'modSnippet', '23'),
(538, 1, '2018-05-20 11:06:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(539, 1, '2018-05-20 11:19:28', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(540, 1, '2018-05-20 11:19:51', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(541, 1, '2018-05-20 11:20:39', 'chunk_update', 'modChunk', '2'),
(542, 1, '2018-05-20 11:20:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(543, 1, '2018-05-20 11:21:13', 'chunk_update', 'modChunk', '14'),
(544, 1, '2018-05-20 11:21:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(545, 1, '2018-05-20 22:19:01', 'login', 'modContext', 'mgr'),
(546, 1, '2018-05-20 23:26:21', 'category_create', 'modCategory', '15'),
(547, 1, '2018-05-20 23:27:09', 'chunk_create', 'modChunk', '22'),
(548, 1, '2018-05-20 23:27:38', 'template_update', 'modTemplate', '2');
INSERT INTO `sneg_prfx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(549, 1, '2018-05-20 23:56:01', 'snippet_update', 'modSnippet', '22'),
(550, 1, '2018-05-20 23:56:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(551, 1, '2018-05-20 23:56:26', 'snippet_update', 'modSnippet', '22'),
(552, 1, '2018-05-20 23:56:26', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(553, 1, '2018-05-20 23:56:37', 'snippet_update', 'modSnippet', '22'),
(554, 1, '2018-05-20 23:56:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(555, 1, '2018-05-20 23:56:50', 'snippet_update', 'modSnippet', '22'),
(556, 1, '2018-05-20 23:56:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(557, 1, '2018-05-20 23:58:24', 'snippet_update', 'modSnippet', '22'),
(558, 1, '2018-05-20 23:58:24', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(559, 1, '2018-05-20 23:58:49', 'snippet_update', 'modSnippet', '22'),
(560, 1, '2018-05-20 23:58:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(561, 1, '2018-05-21 00:06:38', 'snippet_update', 'modSnippet', '22'),
(562, 1, '2018-05-21 00:06:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(563, 1, '2018-05-21 05:00:25', 'chunk_update', 'modChunk', '22'),
(564, 1, '2018-05-21 05:31:09', 'chunk_update', 'modChunk', '22'),
(565, 1, '2018-05-21 05:31:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 22 Default'),
(566, 1, '2018-05-21 05:31:41', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(567, 1, '2018-05-21 05:33:31', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(568, 1, '2018-05-21 05:42:35', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(569, 1, '2018-05-21 05:45:19', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(570, 1, '2018-05-21 05:48:18', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(571, 1, '2018-05-21 05:55:34', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(572, 1, '2018-05-21 06:07:21', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(573, 1, '2018-05-21 06:12:14', 'snippet_create', 'modSnippet', '30'),
(574, 1, '2018-05-21 06:13:13', 'snippet_update', 'modSnippet', '30'),
(575, 1, '2018-05-21 06:13:13', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(576, 1, '2018-05-21 06:26:08', 'snippet_update', 'modSnippet', '30'),
(577, 1, '2018-05-21 06:26:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(578, 2, '2018-05-21 06:41:58', 'login', 'modContext', 'mgr'),
(579, 1, '2018-05-21 06:43:53', 'policy_update', 'modAccessPolicy', '13'),
(580, 1, '2018-05-21 13:33:26', 'login', 'modContext', 'mgr'),
(581, 1, '2018-05-21 13:53:52', 'login', 'modContext', 'mgr'),
(582, 1, '2018-05-21 13:57:30', 'category_create', 'modCategory', '16'),
(583, 1, '2018-05-21 14:30:47', 'tv_create', 'modTemplateVar', '26'),
(584, 1, '2018-05-21 14:32:22', 'tv_duplicate', 'modTemplateVar', '27'),
(585, 1, '2018-05-21 14:34:13', 'tv_duplicate', 'modTemplateVar', '28'),
(586, 1, '2018-05-21 14:35:27', 'tv_update', 'modTemplateVar', '27'),
(587, 1, '2018-05-21 14:35:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 27 Default'),
(588, 1, '2018-05-21 14:35:42', 'tv_update', 'modTemplateVar', '28'),
(589, 1, '2018-05-21 14:35:42', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 28 Default'),
(590, 1, '2018-05-21 14:36:09', 'tv_update', 'modTemplateVar', '26'),
(591, 1, '2018-05-21 14:36:09', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 26 Default'),
(592, 1, '2018-05-21 14:37:09', 'tv_duplicate', 'modTemplateVar', '29'),
(593, 1, '2018-05-21 15:07:25', 'tv_update', 'modTemplateVar', '29'),
(594, 1, '2018-05-21 15:07:25', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 29 Default'),
(595, 1, '2018-05-21 15:07:54', 'tv_update', 'modTemplateVar', '29'),
(596, 1, '2018-05-21 15:07:54', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 29 Default'),
(597, 1, '2018-05-21 15:10:18', 'tv_duplicate', 'modTemplateVar', '30'),
(598, 1, '2018-05-21 15:13:07', 'tv_update', 'modTemplateVar', '30'),
(599, 1, '2018-05-21 15:13:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 30 Default'),
(600, 1, '2018-05-21 15:13:19', 'tv_update', 'modTemplateVar', '30'),
(601, 1, '2018-05-21 15:13:19', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 30 Default'),
(602, 1, '2018-05-21 15:14:29', 'tv_update', 'modTemplateVar', '29'),
(603, 1, '2018-05-21 15:14:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 29 Default'),
(604, 1, '2018-05-21 15:14:39', 'tv_update', 'modTemplateVar', '29'),
(605, 1, '2018-05-21 15:14:39', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 29 Default'),
(606, 1, '2018-05-21 15:16:06', 'resource_update', 'modResource', '3'),
(607, 1, '2018-05-21 15:33:27', 'snippet_update', 'modSnippet', '30'),
(608, 1, '2018-05-21 15:33:28', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(609, 1, '2018-05-21 15:47:50', 'snippet_update', 'modSnippet', '30'),
(610, 1, '2018-05-21 15:47:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(611, 1, '2018-05-21 15:49:17', 'snippet_update', 'modSnippet', '30'),
(612, 1, '2018-05-21 15:49:34', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(613, 1, '2018-05-21 16:10:41', 'chunk_create', 'modChunk', '23'),
(614, 1, '2018-05-21 16:27:49', 'chunk_update', 'modChunk', '23'),
(615, 1, '2018-05-21 16:27:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(616, 1, '2018-05-21 16:28:29', 'chunk_update', 'modChunk', '23'),
(617, 1, '2018-05-21 16:28:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(618, 1, '2018-05-21 16:31:49', 'snippet_update', 'modSnippet', '30'),
(619, 1, '2018-05-21 16:31:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(620, 1, '2018-05-21 16:37:45', 'snippet_update', 'modSnippet', '30'),
(621, 1, '2018-05-21 16:37:46', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(622, 1, '2018-05-21 16:38:29', 'snippet_update', 'modSnippet', '30'),
(623, 1, '2018-05-21 16:38:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(624, 1, '2018-05-21 16:40:34', 'tv_duplicate', 'modTemplateVar', '31'),
(625, 1, '2018-05-21 16:41:05', 'tv_update', 'modTemplateVar', '31'),
(626, 1, '2018-05-21 16:41:05', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 31 Default'),
(627, 1, '2018-05-21 16:43:49', 'resource_update', 'modResource', '3'),
(628, 1, '2018-05-21 16:48:05', 'snippet_update', 'modSnippet', '30'),
(629, 1, '2018-05-21 16:48:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(630, 1, '2018-05-21 16:49:39', 'snippet_update', 'modSnippet', '30'),
(631, 1, '2018-05-21 16:49:40', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(632, 1, '2018-05-21 16:54:08', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(633, 1, '2018-05-21 17:03:40', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(634, 1, '2018-05-21 17:04:49', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(635, 1, '2018-05-21 17:06:19', 'snippet_update', 'modSnippet', '30'),
(636, 1, '2018-05-21 17:06:19', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(637, 1, '2018-05-21 17:06:29', 'snippet_update', 'modSnippet', '30'),
(638, 1, '2018-05-21 17:06:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(639, 1, '2018-05-21 17:07:02', 'snippet_update', 'modSnippet', '30'),
(640, 1, '2018-05-21 17:07:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(641, 1, '2018-05-21 17:07:08', 'snippet_update', 'modSnippet', '30'),
(642, 1, '2018-05-21 17:07:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(643, 1, '2018-05-21 17:09:29', 'snippet_update', 'modSnippet', '30'),
(644, 1, '2018-05-21 17:09:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(645, 1, '2018-05-21 17:10:02', 'snippet_update', 'modSnippet', '30'),
(646, 1, '2018-05-21 17:10:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(647, 1, '2018-05-21 17:10:34', 'snippet_update', 'modSnippet', '30'),
(648, 1, '2018-05-21 17:10:34', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(649, 1, '2018-05-21 17:11:05', 'snippet_update', 'modSnippet', '30'),
(650, 1, '2018-05-21 17:11:06', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(651, 1, '2018-05-21 17:11:30', 'snippet_update', 'modSnippet', '30'),
(652, 1, '2018-05-21 17:11:30', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(653, 1, '2018-05-21 17:12:03', 'snippet_update', 'modSnippet', '30'),
(654, 1, '2018-05-21 17:12:03', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(655, 1, '2018-05-21 17:12:47', 'snippet_update', 'modSnippet', '30'),
(656, 1, '2018-05-21 17:12:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(657, 1, '2018-05-21 17:26:31', 'snippet_update', 'modSnippet', '30'),
(658, 1, '2018-05-21 17:26:31', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(659, 1, '2018-05-21 17:26:45', 'snippet_update', 'modSnippet', '30'),
(660, 1, '2018-05-21 17:26:45', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(661, 1, '2018-05-21 17:27:23', 'snippet_update', 'modSnippet', '30'),
(662, 1, '2018-05-21 17:27:23', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(663, 1, '2018-05-21 17:28:18', 'snippet_update', 'modSnippet', '30'),
(664, 1, '2018-05-21 17:28:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(665, 1, '2018-05-21 22:11:35', 'login', 'modContext', 'mgr'),
(666, 1, '2018-05-21 22:17:17', 'resource_update', 'modResource', '3'),
(667, 1, '2018-05-21 22:23:32', 'snippet_update', 'modSnippet', '30'),
(668, 1, '2018-05-21 22:23:32', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(669, 1, '2018-05-21 22:25:14', 'snippet_update', 'modSnippet', '30'),
(670, 1, '2018-05-21 22:25:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(671, 1, '2018-05-21 22:26:02', 'snippet_update', 'modSnippet', '30'),
(672, 1, '2018-05-21 22:26:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(673, 1, '2018-05-22 07:18:58', 'snippet_update', 'modSnippet', '30'),
(674, 1, '2018-05-22 07:18:58', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(675, 1, '2018-05-22 07:19:52', 'snippet_update', 'modSnippet', '30'),
(676, 1, '2018-05-22 07:19:53', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(677, 1, '2018-05-22 07:24:47', 'snippet_update', 'modSnippet', '30'),
(678, 1, '2018-05-22 07:24:48', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(679, 1, '2018-05-22 07:25:36', 'snippet_update', 'modSnippet', '30'),
(680, 1, '2018-05-22 07:25:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(681, 1, '2018-05-22 07:26:44', 'snippet_update', 'modSnippet', '30'),
(682, 1, '2018-05-22 07:26:45', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(683, 1, '2018-05-22 07:39:38', 'login', 'modContext', 'mgr'),
(684, 1, '2018-05-22 07:44:58', 'snippet_update', 'modSnippet', '30'),
(685, 1, '2018-05-22 07:44:58', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(686, 1, '2018-05-22 07:45:28', 'resource_update', 'modResource', '3'),
(687, 1, '2018-05-22 07:54:10', 'resource_update', 'modResource', '3'),
(688, 1, '2018-05-22 07:56:12', 'snippet_update', 'modSnippet', '30'),
(689, 1, '2018-05-22 07:56:12', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(690, 1, '2018-05-22 07:57:03', 'snippet_update', 'modSnippet', '30'),
(691, 1, '2018-05-22 07:57:03', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(692, 1, '2018-05-22 08:01:06', 'snippet_update', 'modSnippet', '30'),
(693, 1, '2018-05-22 08:01:06', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(694, 1, '2018-05-22 08:03:24', 'resource_update', 'modResource', '3'),
(695, 1, '2018-05-22 08:04:18', 'snippet_update', 'modSnippet', '30'),
(696, 1, '2018-05-22 08:04:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(697, 1, '2018-05-22 08:07:40', 'snippet_update', 'modSnippet', '30'),
(698, 1, '2018-05-22 08:07:40', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(699, 1, '2018-05-22 08:09:10', 'snippet_update', 'modSnippet', '30'),
(700, 1, '2018-05-22 08:09:11', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(701, 1, '2018-05-22 08:10:17', 'resource_update', 'modResource', '3'),
(702, 1, '2018-05-22 08:13:04', 'snippet_update', 'modSnippet', '30'),
(703, 1, '2018-05-22 08:13:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(704, 1, '2018-05-22 08:14:13', 'snippet_update', 'modSnippet', '30'),
(705, 1, '2018-05-22 08:14:13', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(706, 1, '2018-05-22 08:15:56', 'chunk_update', 'modChunk', '23'),
(707, 1, '2018-05-22 08:15:56', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(708, 1, '2018-05-22 08:16:17', 'chunk_update', 'modChunk', '23'),
(709, 1, '2018-05-22 08:16:17', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(710, 1, '2018-05-22 08:18:15', 'chunk_update', 'modChunk', '23'),
(711, 1, '2018-05-22 08:18:15', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(712, 1, '2018-05-22 08:28:52', 'snippet_update', 'modSnippet', '30'),
(713, 1, '2018-05-22 08:28:52', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(714, 1, '2018-05-22 08:29:24', 'snippet_update', 'modSnippet', '30'),
(715, 1, '2018-05-22 08:29:24', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(716, 1, '2018-05-22 08:30:14', 'snippet_update', 'modSnippet', '30'),
(717, 1, '2018-05-22 08:30:15', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(718, 1, '2018-05-22 08:32:02', 'snippet_update', 'modSnippet', '30'),
(719, 1, '2018-05-22 08:32:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(720, 1, '2018-05-22 08:32:27', 'snippet_update', 'modSnippet', '30'),
(721, 1, '2018-05-22 08:32:27', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(722, 1, '2018-05-22 08:32:44', 'snippet_update', 'modSnippet', '30'),
(723, 1, '2018-05-22 08:32:44', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(724, 1, '2018-05-22 08:39:19', 'resource_update', 'modResource', '3'),
(725, 1, '2018-05-22 08:39:43', 'snippet_update', 'modSnippet', '30'),
(726, 1, '2018-05-22 08:39:43', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(727, 1, '2018-05-22 08:48:42', 'resource_update', 'modResource', '3'),
(728, 1, '2018-05-22 08:51:01', 'snippet_update', 'modSnippet', '30'),
(729, 1, '2018-05-22 08:51:01', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(730, 1, '2018-05-22 08:51:26', 'snippet_update', 'modSnippet', '30'),
(731, 1, '2018-05-22 08:51:26', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(732, 1, '2018-05-22 16:05:36', 'login', 'modContext', 'mgr'),
(733, 1, '2018-05-24 10:30:34', 'chunk_update', 'modChunk', '8'),
(734, 1, '2018-05-24 10:30:34', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(735, 1, '2018-05-24 10:32:37', 'chunk_update', 'modChunk', '8'),
(736, 1, '2018-05-24 10:32:37', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(737, 1, '2018-05-24 10:33:25', 'chunk_update', 'modChunk', '8'),
(738, 1, '2018-05-24 10:33:25', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(739, 1, '2018-05-24 10:36:57', 'tv_update', 'modTemplateVar', '17'),
(740, 1, '2018-05-24 10:36:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 17 Default'),
(741, 1, '2018-05-24 10:38:30', 'resource_update', 'modResource', '5'),
(742, 1, '2018-05-24 10:39:04', 'resource_update', 'modResource', '5'),
(743, 1, '2018-05-24 10:39:47', 'resource_update', 'modResource', '5'),
(744, 1, '2018-05-24 10:40:51', 'chunk_update', 'modChunk', '8'),
(745, 1, '2018-05-24 10:40:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(746, 1, '2018-05-24 18:23:23', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(747, 1, '2018-05-24 18:26:56', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(748, 1, '2018-05-24 18:29:38', 'chunk_update', 'modChunk', '2'),
(749, 1, '2018-05-24 18:29:38', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(750, 1, '2018-05-24 18:30:43', 'chunk_update', 'modChunk', '14'),
(751, 1, '2018-05-24 18:30:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(752, 1, '2018-05-24 18:34:52', 'category_create', 'modCategory', '17'),
(753, 1, '2018-05-24 18:35:43', 'chunk_create', 'modChunk', '24'),
(754, 1, '2018-05-24 18:36:34', 'template_update', 'modTemplate', '1'),
(755, 1, '2018-05-24 18:36:34', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(756, 1, '2018-05-24 18:36:49', 'template_update', 'modTemplate', '2'),
(757, 1, '2018-05-24 18:36:49', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(758, 1, '2018-05-24 18:41:39', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css.map'),
(759, 1, '2018-05-24 18:42:36', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css.map'),
(760, 1, '2018-05-24 18:43:20', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js.map'),
(761, 1, '2018-05-24 18:43:47', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/manifest.2ae2e69a05c33dfc65f8.js'),
(762, 1, '2018-05-24 18:44:07', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/manifest.2ae2e69a05c33dfc65f8.js.map'),
(763, 1, '2018-05-24 18:59:24', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(764, 1, '2018-05-24 19:01:00', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(765, 1, '2018-05-24 19:03:05', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(766, 1, '2018-05-24 19:15:45', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(767, 1, '2018-05-24 19:18:14', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.a69a94b3e577e37e3d1d.js'),
(768, 1, '2018-05-24 19:35:04', 'chunk_update', 'modChunk', '3'),
(769, 1, '2018-05-24 19:35:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(770, 1, '2018-05-24 19:35:10', 'clear_cache', '', 'mgr'),
(771, 1, '2018-05-24 19:42:47', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(772, 1, '2018-05-24 19:52:55', 'chunk_duplicate', 'modChunk', '25'),
(773, 1, '2018-05-24 19:53:27', 'template_update', 'modTemplate', '1'),
(774, 1, '2018-05-24 19:53:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(775, 1, '2018-05-24 19:55:21', 'chunk_update', 'modChunk', '25'),
(776, 1, '2018-05-24 19:55:21', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 25 Default'),
(777, 1, '2018-05-24 20:01:50', 'chunk_update', 'modChunk', '25'),
(778, 1, '2018-05-24 20:01:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 25 Default'),
(779, 1, '2018-05-24 20:24:37', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(780, 1, '2018-05-24 20:26:29', 'chunk_update', 'modChunk', '25'),
(781, 1, '2018-05-24 20:26:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 25 Default'),
(782, 1, '2018-05-24 20:30:43', 'chunk_update', 'modChunk', '8'),
(783, 1, '2018-05-24 20:30:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(784, 1, '2018-05-24 20:32:32', 'snippet_update', 'modSnippet', '23'),
(785, 1, '2018-05-24 20:32:32', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(786, 1, '2018-05-24 20:33:38', 'chunk_update', 'modChunk', '8'),
(787, 1, '2018-05-24 20:33:38', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(788, 1, '2018-05-24 20:39:08', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(789, 1, '2018-05-24 20:42:49', 'snippet_update', 'modSnippet', '30'),
(790, 1, '2018-05-24 20:42:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(791, 1, '2018-05-24 20:43:45', 'chunk_duplicate', 'modChunk', '26'),
(792, 1, '2018-05-24 20:45:13', 'chunk_update', 'modChunk', '26'),
(793, 1, '2018-05-24 20:45:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 26 Default'),
(794, 1, '2018-05-24 20:52:15', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(795, 1, '2018-05-24 21:02:20', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(796, 1, '2018-05-24 21:19:33', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(797, 1, '2018-05-24 21:20:14', 'chunk_update', 'modChunk', '25'),
(798, 1, '2018-05-24 21:20:14', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 25 Default'),
(799, 1, '2018-05-24 21:24:21', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(800, 1, '2018-05-24 21:24:48', 'chunk_update', 'modChunk', '25'),
(801, 1, '2018-05-24 21:24:48', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 25 Default'),
(802, 1, '2018-05-24 21:29:16', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(803, 1, '2018-05-24 22:39:46', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(804, 1, '2018-05-24 22:40:56', 'chunk_update', 'modChunk', '25'),
(805, 1, '2018-05-24 22:40:56', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 25 Default'),
(806, 1, '2018-05-24 22:59:07', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(807, 1, '2018-05-24 23:19:37', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(808, 1, '2018-05-25 07:59:10', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(809, 1, '2018-05-25 08:00:38', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(810, 1, '2018-05-25 08:44:13', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(811, 1, '2018-05-25 08:59:11', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(812, 1, '2018-05-25 09:02:29', 'snippet_update', 'modSnippet', '30'),
(813, 1, '2018-05-25 09:02:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(814, 1, '2018-05-25 09:03:14', 'chunk_duplicate', 'modChunk', '27'),
(815, 1, '2018-05-25 09:05:32', 'chunk_update', 'modChunk', '27'),
(816, 1, '2018-05-25 09:05:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 27 Default'),
(817, 1, '2018-05-25 09:08:54', 'chunk_update', 'modChunk', '11'),
(818, 1, '2018-05-25 09:08:54', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(819, 1, '2018-05-25 09:10:54', 'chunk_duplicate', 'modChunk', '28'),
(820, 1, '2018-05-25 09:11:16', 'template_update', 'modTemplate', '1'),
(821, 1, '2018-05-25 09:11:16', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(822, 1, '2018-05-25 09:14:24', 'chunk_update', 'modChunk', '28'),
(823, 1, '2018-05-25 09:14:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 28 Default'),
(824, 1, '2018-05-25 09:41:10', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(825, 1, '2018-05-25 09:59:26', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(826, 1, '2018-05-25 10:00:23', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/assets/components/work/order.php'),
(827, 1, '2018-05-25 10:01:15', 'chunk_duplicate', 'modChunk', '29'),
(828, 1, '2018-05-25 10:03:12', 'chunk_update', 'modChunk', '29'),
(829, 1, '2018-05-25 10:03:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 29 Default'),
(830, 1, '2018-05-25 10:04:40', 'chunk_duplicate', 'modChunk', '30'),
(831, 1, '2018-05-25 10:05:09', 'chunk_update', 'modChunk', '30'),
(832, 1, '2018-05-25 10:05:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 30 Default'),
(833, 1, '2018-05-25 10:07:01', 'snippet_update', 'modSnippet', '30'),
(834, 1, '2018-05-25 10:07:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 30 Default'),
(835, 1, '2018-05-25 10:08:29', 'chunk_update', 'modChunk', '13'),
(836, 1, '2018-05-25 10:08:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(837, 1, '2018-05-25 10:11:05', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(838, 1, '2018-05-25 10:11:14', 'clear_cache', '', 'mgr'),
(839, 1, '2018-05-25 10:14:35', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(840, 1, '2018-05-25 10:17:15', 'chunk_update', 'modChunk', '29'),
(841, 1, '2018-05-25 10:17:45', 'snippet_update', 'modSnippet', '30'),
(842, 1, '2018-05-25 10:20:36', 'template_update', 'modTemplate', '1'),
(843, 1, '2018-05-25 10:26:09', 'chunk_update', 'modChunk', '22'),
(844, 1, '2018-05-25 10:27:09', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(845, 1, '2018-05-25 10:39:53', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(846, 1, '2018-05-25 10:43:57', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(847, 1, '2018-05-25 10:45:01', 'clear_cache', '', 'mgr'),
(848, 1, '2018-05-25 10:47:59', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/js/app.d21e89deff302411762d.js'),
(849, 1, '2018-05-25 10:54:05', 'file_update', '', '/home/logococg/domains/logo-5.com/public_html/sneg-photo/static/css/app.cadf2d06450931b1c5784a8555d50b42.css'),
(850, 1, '2018-05-25 11:06:58', 'chunk_update', 'modChunk', '2'),
(851, 1, '2018-05-25 11:06:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(852, 1, '2018-05-25 11:09:46', 'chunk_update', 'modChunk', '14'),
(853, 1, '2018-05-25 11:09:46', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(854, 1, '2018-05-25 11:10:19', 'chunk_update', 'modChunk', '2'),
(855, 1, '2018-05-25 11:10:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(856, 1, '2018-05-25 11:38:41', 'change_profile_password', 'modUser', '1'),
(857, 2, '2018-05-25 11:39:42', 'login', 'modContext', 'mgr'),
(858, 1, '2018-05-27 21:28:35', 'login', 'modContext', 'mgr'),
(859, 1, '2018-05-27 21:29:10', 'chunk_update', 'modChunk', '28'),
(860, 1, '2018-05-27 21:29:10', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 28 Default'),
(861, 1, '2018-05-27 21:29:51', 'chunk_update', 'modChunk', '29'),
(862, 1, '2018-05-27 21:29:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 29 Default'),
(863, 2, '2018-06-02 13:52:07', 'login', 'modContext', 'mgr'),
(864, 2, '2018-06-02 14:04:07', 'resource_update', 'modResource', '1'),
(865, 2, '2018-06-02 14:06:34', 'resource_update', 'modResource', '5'),
(866, 2, '2018-06-02 14:07:01', 'resource_update', 'modResource', '5'),
(867, 2, '2018-06-02 14:07:29', 'clear_cache', '', 'mgr'),
(868, 2, '2018-06-02 14:07:46', 'resource_update', 'modResource', '5'),
(869, 2, '2018-06-02 14:07:52', 'resource_update', 'modResource', '5'),
(870, 2, '2018-06-02 14:15:01', 'resource_update', 'modResource', '11'),
(871, 2, '2018-06-02 14:15:57', 'resource_update', 'modResource', '11'),
(872, 2, '2018-06-02 14:16:32', 'clear_cache', '', 'mgr'),
(873, 1, '2018-06-02 14:35:02', 'login', 'modContext', 'mgr'),
(874, 1, '2018-06-02 14:59:14', 'tv_update', 'modTemplateVar', '23'),
(875, 1, '2018-06-02 14:59:14', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(876, 1, '2018-06-02 15:01:35', 'tv_update', 'modTemplateVar', '23'),
(877, 1, '2018-06-02 15:01:35', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(878, 1, '2018-06-02 15:02:33', 'chunk_update', 'modChunk', '16'),
(879, 1, '2018-06-02 15:02:33', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 16 Default'),
(880, 1, '2018-06-02 15:09:04', 'chunk_update', 'modChunk', '16'),
(881, 1, '2018-06-02 15:09:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 16 Default'),
(882, 1, '2018-06-02 15:09:48', 'resource_update', 'modResource', '2'),
(883, 1, '2018-06-02 16:12:02', 'login', 'modContext', 'mgr'),
(884, 1, '2018-06-02 16:24:16', 'login', 'modContext', 'mgr'),
(885, 1, '2018-06-02 16:30:52', 'login', 'modContext', 'mgr'),
(886, 1, '2018-06-02 16:38:37', 'setting_update', 'modSystemSetting', 'server_protocol'),
(887, 1, '2018-06-02 16:38:43', 'clear_cache', '', 'mgr'),
(888, 1, '2018-06-02 16:52:57', 'resource_update', 'modResource', '1'),
(889, 1, '2018-06-02 16:53:14', 'resource_update', 'modResource', '5'),
(890, 1, '2018-06-02 16:53:41', 'resource_update', 'modResource', '5'),
(891, 1, '2018-06-02 16:53:53', 'resource_update', 'modResource', '6'),
(892, 1, '2018-06-02 16:54:01', 'resource_update', 'modResource', '7'),
(893, 1, '2018-06-02 16:54:09', 'resource_update', 'modResource', '8'),
(894, 1, '2018-06-02 17:07:41', 'resource_update', 'modResource', '3'),
(895, 1, '2018-06-02 17:08:34', 'resource_update', 'modResource', '3'),
(896, 1, '2018-06-02 17:09:58', 'resource_update', 'modResource', '3'),
(897, 1, '2018-06-02 17:32:46', 'setting_update', 'modSystemSetting', 'tinymcerte.plugins'),
(898, 1, '2018-06-02 17:33:28', 'setting_update', 'modSystemSetting', 'tinymcerte.toolbar1'),
(899, 1, '2018-06-02 17:33:41', 'clear_cache', '', 'mgr'),
(900, 1, '2018-06-02 17:34:07', 'resource_update', 'modResource', '11'),
(901, 1, '2018-06-02 17:40:06', 'chunk_create', 'modChunk', '31'),
(902, 1, '2018-06-02 17:52:17', 'snippet_create', 'modSnippet', '31'),
(903, 1, '2018-06-02 17:56:19', 'snippet_update', 'modSnippet', '31'),
(904, 1, '2018-06-02 17:56:19', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(905, 1, '2018-06-02 18:10:49', 'snippet_update', 'modSnippet', '31'),
(906, 1, '2018-06-02 18:10:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(907, 1, '2018-06-02 18:12:59', 'chunk_update', 'modChunk', '1'),
(908, 1, '2018-06-02 18:13:00', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(909, 1, '2018-06-02 18:13:27', 'clear_cache', '', 'mgr'),
(910, 1, '2018-06-02 18:14:01', 'snippet_update', 'modSnippet', '31'),
(911, 1, '2018-06-02 18:14:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(912, 1, '2018-06-02 18:14:18', 'snippet_update', 'modSnippet', '31'),
(913, 1, '2018-06-02 18:14:19', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(914, 1, '2018-06-02 18:14:51', 'snippet_update', 'modSnippet', '31'),
(915, 1, '2018-06-02 18:14:52', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(916, 1, '2018-06-02 18:15:05', 'snippet_update', 'modSnippet', '31'),
(917, 1, '2018-06-02 18:15:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(918, 1, '2018-06-02 18:15:31', 'chunk_update', 'modChunk', '1'),
(919, 1, '2018-06-02 18:15:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(920, 1, '2018-06-02 18:16:36', 'snippet_update', 'modSnippet', '31'),
(921, 1, '2018-06-02 18:16:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(922, 1, '2018-06-02 18:17:20', 'resource_update', 'modResource', '5'),
(923, 1, '2018-06-02 18:18:25', 'resource_update', 'modResource', '5'),
(924, 1, '2018-06-02 18:20:08', 'snippet_update', 'modSnippet', '31'),
(925, 1, '2018-06-02 18:20:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 31 Default'),
(926, 1, '2018-06-02 18:20:24', 'resource_update', 'modResource', '5'),
(927, 1, '2018-06-02 18:20:39', 'resource_update', 'modResource', '6'),
(928, 1, '2018-06-02 18:20:50', 'resource_update', 'modResource', '7'),
(929, 1, '2018-06-02 18:21:04', 'resource_update', 'modResource', '8'),
(930, 1, '2018-06-02 18:22:08', 'resource_update', 'modResource', '11'),
(931, 1, '2018-06-02 18:24:03', 'chunk_duplicate', 'modChunk', '32'),
(932, 1, '2018-06-02 18:24:22', 'chunk_delete', 'modChunk', '32'),
(933, 1, '2018-06-02 18:25:21', 'snippet_duplicate', 'modSnippet', '32'),
(934, 1, '2018-06-02 18:27:25', 'snippet_update', 'modSnippet', '32'),
(935, 1, '2018-06-02 18:27:25', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 32 Default'),
(936, 1, '2018-06-02 18:28:24', 'chunk_update', 'modChunk', '1'),
(937, 1, '2018-06-02 18:28:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(938, 1, '2018-06-02 18:28:50', 'chunk_update', 'modChunk', '1'),
(939, 1, '2018-06-02 18:28:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(940, 1, '2018-06-02 18:29:17', 'snippet_update', 'modSnippet', '32'),
(941, 1, '2018-06-02 18:29:17', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 32 Default'),
(942, 1, '2018-06-02 18:29:52', 'chunk_update', 'modChunk', '1'),
(943, 1, '2018-06-02 18:29:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(944, 1, '2018-06-02 18:30:07', 'snippet_update', 'modSnippet', '32'),
(945, 1, '2018-06-02 18:30:08', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 32 Default'),
(946, 1, '2018-06-02 18:30:52', 'resource_update', 'modResource', '10'),
(947, 1, '2018-06-02 18:32:42', 'chunk_update', 'modChunk', '13'),
(948, 1, '2018-06-02 18:32:42', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(949, 1, '2018-06-02 18:33:02', 'chunk_update', 'modChunk', '13'),
(950, 1, '2018-06-02 18:33:03', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(951, 1, '2018-06-02 18:33:20', 'chunk_update', 'modChunk', '13'),
(952, 1, '2018-06-02 18:33:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(953, 1, '2018-06-02 18:34:52', 'tv_create', 'modTemplateVar', '32'),
(954, 1, '2018-06-02 18:35:04', 'tv_update', 'modTemplateVar', '32'),
(955, 1, '2018-06-02 18:35:04', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 32 Default'),
(956, 1, '2018-06-02 18:35:13', 'tv_update', 'modTemplateVar', '32'),
(957, 1, '2018-06-02 18:35:13', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 32 Default'),
(958, 1, '2018-06-02 18:35:41', 'tv_update', 'modTemplateVar', '19'),
(959, 1, '2018-06-02 18:35:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 19 Default'),
(960, 1, '2018-06-02 18:35:47', 'tv_update', 'modTemplateVar', '18'),
(961, 1, '2018-06-02 18:35:47', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 18 Default'),
(962, 1, '2018-06-02 18:35:57', 'tv_update', 'modTemplateVar', '21'),
(963, 1, '2018-06-02 18:35:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 21 Default'),
(964, 1, '2018-06-02 18:36:07', 'tv_update', 'modTemplateVar', '20'),
(965, 1, '2018-06-02 18:36:07', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 20 Default'),
(966, 1, '2018-06-02 18:36:50', 'chunk_update', 'modChunk', '13'),
(967, 1, '2018-06-02 18:36:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(968, 1, '2018-06-02 18:37:31', 'chunk_update', 'modChunk', '11'),
(969, 1, '2018-06-02 18:37:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(970, 1, '2018-06-02 18:38:48', 'tv_update', 'modTemplateVar', '32'),
(971, 1, '2018-06-02 18:39:23', 'tv_update', 'modTemplateVar', '32'),
(972, 1, '2018-06-02 18:39:23', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 32 Default'),
(973, 1, '2018-06-02 18:39:53', 'tv_duplicate', 'modTemplateVar', '33'),
(974, 1, '2018-06-02 18:40:17', 'tv_update', 'modTemplateVar', '33'),
(975, 1, '2018-06-02 18:40:17', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 33 Default'),
(976, 1, '2018-06-02 18:40:33', 'tv_update', 'modTemplateVar', '32'),
(977, 1, '2018-06-02 18:40:33', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 32 Default'),
(978, 1, '2018-06-02 18:41:06', 'chunk_update', 'modChunk', '11'),
(979, 1, '2018-06-02 18:41:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(980, 1, '2018-06-02 18:41:21', 'chunk_update', 'modChunk', '13'),
(981, 1, '2018-06-02 18:41:21', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(982, 1, '2018-06-02 18:41:40', 'resource_update', 'modResource', '10'),
(983, 1, '2018-06-02 18:42:19', 'resource_update', 'modResource', '11'),
(984, 1, '2018-06-02 18:43:14', 'chunk_update', 'modChunk', '11'),
(985, 1, '2018-06-02 18:43:14', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(986, 1, '2018-06-02 18:43:31', 'chunk_update', 'modChunk', '13'),
(987, 1, '2018-06-02 18:43:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(988, 1, '2018-06-02 18:44:27', 'snippet_update', 'modSnippet', '26'),
(989, 1, '2018-06-02 18:44:28', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 26 Default'),
(990, 1, '2018-06-02 18:45:16', 'snippet_update', 'modSnippet', '25'),
(991, 1, '2018-06-02 18:45:17', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 25 Default'),
(992, 1, '2018-06-02 18:49:28', 'tv_create', 'modTemplateVar', '34'),
(993, 1, '2018-06-02 18:49:49', 'resource_update', 'modResource', '11'),
(994, 1, '2018-06-02 18:55:19', 'chunk_update', 'modChunk', '29'),
(995, 1, '2018-06-02 18:55:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 29 Default'),
(996, 1, '2018-06-02 18:56:33', 'snippet_duplicate', 'modSnippet', '33'),
(997, 1, '2018-06-02 18:59:35', 'snippet_update', 'modSnippet', '33'),
(998, 1, '2018-06-02 18:59:35', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 33 Default'),
(999, 1, '2018-06-02 19:04:13', 'tv_duplicate', 'modTemplateVar', '35'),
(1000, 1, '2018-06-02 19:04:28', 'tv_update', 'modTemplateVar', '35'),
(1001, 1, '2018-06-02 19:04:28', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 35 Default'),
(1002, 1, '2018-06-02 19:06:13', 'snippet_update', 'modSnippet', '30'),
(1003, 1, '2018-06-02 19:06:44', 'resource_update', 'modResource', '11'),
(1004, 1, '2018-06-02 19:07:12', 'resource_update', 'modResource', '3'),
(1005, 1, '2018-06-02 19:07:49', 'resource_update', 'modResource', '3'),
(1006, 1, '2018-06-02 19:08:23', 'login', 'modContext', 'mgr'),
(1007, 2, '2018-06-02 19:09:00', 'login', 'modContext', 'mgr'),
(1008, 1, '2018-06-02 19:09:55', 'login', 'modContext', 'mgr'),
(1009, 1, '2018-06-02 19:10:13', 'file_rename', '', '/home/snegphot/sneg-photo.com/www/core/docs/changelog.txt'),
(1010, 1, '2018-06-02 19:11:14', 'login', 'modContext', 'mgr'),
(1011, 1, '2018-06-02 19:11:22', 'clear_cache', '', 'mgr'),
(1012, 1, '2018-06-04 08:53:03', 'login', 'modContext', 'mgr'),
(1013, 1, '2018-06-04 08:53:52', 'chunk_update', 'modChunk', '2'),
(1014, 1, '2018-06-04 08:53:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(1015, 1, '2018-06-04 08:54:05', 'chunk_update', 'modChunk', '14'),
(1016, 1, '2018-06-04 08:54:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(1017, 1, '2018-06-04 08:54:11', 'clear_cache', '', 'mgr'),
(1018, 2, '2018-06-14 12:57:05', 'login', 'modContext', 'mgr'),
(1019, 2, '2018-06-14 13:11:02', 'resource_update', 'modResource', '5'),
(1020, 2, '2018-06-14 13:12:29', 'resource_update', 'modResource', '5'),
(1021, 2, '2018-06-14 13:15:26', 'resource_update', 'modResource', '5'),
(1022, 2, '2018-06-14 13:30:30', 'resource_update', 'modResource', '5'),
(1023, 2, '2018-06-14 13:30:49', 'resource_update', 'modResource', '5'),
(1024, 2, '2018-06-14 13:34:42', 'resource_update', 'modResource', '5'),
(1025, 2, '2018-06-14 13:41:29', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/type_photography/'),
(1026, 2, '2018-06-14 13:41:38', 'resource_update', 'modResource', '5'),
(1027, 2, '2018-06-14 13:47:30', 'resource_update', 'modResource', '1'),
(1028, 2, '2018-06-21 08:38:15', 'login', 'modContext', 'mgr'),
(1029, 2, '2018-06-21 08:51:19', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/'),
(1030, 2, '2018-06-21 08:51:36', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/'),
(1031, 2, '2018-06-21 08:51:39', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/'),
(1032, 2, '2018-06-21 08:51:56', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/2018_06_21_T094629200_1529560279.jpg'),
(1033, 2, '2018-06-21 09:17:45', 'resource_update', 'modResource', '6'),
(1034, 2, '2018-06-21 09:26:08', 'resource_update', 'modResource', '6'),
(1035, 2, '2018-06-21 09:37:17', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/type_photography/'),
(1036, 2, '2018-06-21 09:40:13', 'resource_update', 'modResource', '7'),
(1037, 2, '2018-06-21 09:43:19', 'resource_update', 'modResource', '7'),
(1038, 2, '2018-06-21 09:43:47', 'resource_update', 'modResource', '6'),
(1039, 2, '2018-06-21 09:44:15', 'resource_update', 'modResource', '6'),
(1040, 2, '2018-06-21 10:08:59', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/'),
(1041, 2, '2018-06-21 10:09:33', 'resource_update', 'modResource', '8'),
(1042, 2, '2018-06-21 10:16:29', 'resource_update', 'modResource', '8'),
(1043, 2, '2018-06-21 10:25:01', 'resource_update', 'modResource', '8'),
(1044, 2, '2018-06-21 10:27:04', 'resource_update', 'modResource', '8'),
(1045, 2, '2018-06-21 10:27:51', 'resource_update', 'modResource', '7'),
(1046, 2, '2018-06-21 10:30:25', 'resource_update', 'modResource', '6'),
(1047, 2, '2018-06-21 10:30:39', 'resource_update', 'modResource', '7'),
(1048, 2, '2018-06-21 10:34:54', 'resource_update', 'modResource', '8'),
(1049, 2, '2018-06-21 10:43:42', 'resource_update', 'modResource', '8'),
(1050, 2, '2018-06-21 10:43:49', 'resource_update', 'modResource', '8'),
(1051, 2, '2018-06-21 10:56:43', 'resource_update', 'modResource', '8'),
(1052, 2, '2018-06-21 10:57:36', 'resource_update', 'modResource', '8'),
(1053, 2, '2018-06-21 10:57:41', 'resource_update', 'modResource', '8'),
(1054, 2, '2018-06-21 10:58:11', 'resource_update', 'modResource', '7'),
(1055, 2, '2018-06-21 10:59:52', 'resource_update', 'modResource', '3'),
(1056, 2, '2018-06-21 11:14:15', 'resource_update', 'modResource', '10'),
(1057, 2, '2018-06-21 11:29:13', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/type_photography/'),
(1058, 2, '2018-06-21 11:29:20', 'resource_update', 'modResource', '11'),
(1059, 2, '2018-06-21 11:29:47', 'resource_update', 'modResource', '11'),
(1060, 2, '2018-06-21 11:34:09', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/'),
(1061, 2, '2018-06-21 11:34:29', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/2018_06_21_T083334900_1529570049.jpg'),
(1062, 2, '2018-06-21 11:34:56', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/main_slider/'),
(1063, 2, '2018-06-21 11:35:37', 'resource_update', 'modResource', '1'),
(1064, 2, '2018-06-21 11:39:51', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/main_slider/'),
(1065, 2, '2018-06-21 11:40:05', 'resource_update', 'modResource', '1'),
(1066, 2, '2018-06-21 11:40:13', 'resource_update', 'modResource', '1'),
(1067, 2, '2018-06-21 11:43:38', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/main_slider/'),
(1068, 2, '2018-06-21 11:43:42', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/main_slider/'),
(1069, 2, '2018-06-21 11:43:49', 'resource_update', 'modResource', '1'),
(1070, 2, '2018-06-21 12:07:45', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1071, 2, '2018-06-21 12:07:45', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1072, 2, '2018-06-21 12:07:45', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1073, 2, '2018-06-21 12:07:45', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1074, 2, '2018-06-21 12:07:46', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1075, 2, '2018-06-21 12:08:19', 'resource_update', 'modResource', '2'),
(1076, 2, '2018-06-21 12:09:40', 'resource_update', 'modResource', '2'),
(1077, 2, '2018-06-21 12:11:37', 'resource_update', 'modResource', '2'),
(1078, 2, '2018-06-21 14:01:59', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1079, 2, '2018-06-21 14:02:00', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1080, 2, '2018-06-21 14:02:00', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1081, 2, '2018-06-21 14:02:00', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1082, 2, '2018-06-21 14:02:01', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1083, 2, '2018-06-21 14:02:01', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1084, 2, '2018-06-21 14:03:31', 'resource_update', 'modResource', '2'),
(1085, 2, '2018-06-21 14:06:10', 'resource_update', 'modResource', '2'),
(1086, 2, '2018-06-21 14:17:03', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T005577600_1526710365.jpg'),
(1087, 2, '2018-06-21 14:17:06', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T012249600_1526710365.jpg'),
(1088, 2, '2018-06-21 14:17:10', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T060987700_1526711861.jpg'),
(1089, 2, '2018-06-21 14:17:12', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T067485400_1526711861.jpg'),
(1090, 2, '2018-06-21 14:17:15', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T073840200_1526711861.jpg'),
(1091, 2, '2018-06-21 14:17:17', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T076279200_1526710364.jpg'),
(1092, 2, '2018-06-21 14:17:19', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T081239500_1526711861.jpg'),
(1093, 2, '2018-06-21 14:17:22', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T083108000_1526710364.jpg'),
(1094, 2, '2018-06-21 14:17:25', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T089782100_1526711861.jpg'),
(1095, 2, '2018-06-21 14:17:27', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T089822200_1526710364.jpg'),
(1096, 2, '2018-06-21 14:17:30', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T097665500_1526711861.jpg'),
(1097, 2, '2018-06-21 14:17:32', 'file_remove', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/2018_05_19_T097748700_1526710364.jpg'),
(1098, 2, '2018-06-21 14:17:53', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1099, 2, '2018-06-21 14:17:53', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1100, 2, '2018-06-21 14:17:54', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1101, 2, '2018-06-21 14:17:54', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/');
INSERT INTO `sneg_prfx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1102, 2, '2018-06-21 14:18:53', 'resource_update', 'modResource', '2'),
(1103, 2, '2018-06-21 14:20:00', 'resource_update', 'modResource', '2'),
(1104, 2, '2018-06-21 14:23:48', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1105, 2, '2018-06-21 14:23:48', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1106, 2, '2018-06-21 14:24:15', 'resource_update', 'modResource', '2'),
(1107, 2, '2018-06-21 14:26:13', 'resource_update', 'modResource', '2'),
(1108, 2, '2018-06-21 15:09:57', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1109, 2, '2018-06-21 15:09:57', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1110, 2, '2018-06-21 15:09:59', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1111, 2, '2018-06-21 15:10:00', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1112, 2, '2018-06-21 15:10:00', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1113, 2, '2018-06-21 15:10:01', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1114, 2, '2018-06-21 15:10:01', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1115, 2, '2018-06-21 15:10:01', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1116, 2, '2018-06-21 15:10:02', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1117, 2, '2018-06-21 15:10:03', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1118, 2, '2018-06-21 15:10:03', 'file_upload', '', '/home/snegphot/sneg-photo.com/www/content/portfolio/'),
(1119, 2, '2018-06-21 15:11:32', 'resource_update', 'modResource', '2'),
(1120, 2, '2018-06-21 15:14:13', 'resource_update', 'modResource', '2'),
(1121, 1, '2018-06-21 15:14:16', 'login', 'modContext', 'mgr'),
(1122, 1, '2018-06-21 15:16:37', 'clear_cache', '', 'mgr'),
(1123, 2, '2018-06-21 15:19:25', 'resource_update', 'modResource', '2'),
(1124, 1, '2018-06-21 15:23:38', 'snippet_update', 'modSnippet', '28'),
(1125, 1, '2018-06-21 15:23:39', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(1126, 1, '2018-06-21 15:23:48', 'clear_cache', '', 'mgr'),
(1127, 2, '2018-06-21 22:39:23', 'login', 'modContext', 'mgr'),
(1128, 2, '2018-06-21 22:39:44', 'resource_update', 'modResource', '2'),
(1129, 2, '2018-06-21 22:40:47', 'resource_update', 'modResource', '2'),
(1130, 2, '2018-06-21 22:41:05', 'resource_update', 'modResource', '1'),
(1131, 2, '2018-06-21 22:41:59', 'resource_update', 'modResource', '1'),
(1132, 1, '2018-06-21 22:56:40', 'login', 'modContext', 'mgr'),
(1133, 1, '2018-06-21 22:58:05', 'snippet_update', 'modSnippet', '28'),
(1134, 1, '2018-06-21 22:58:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 28 Default'),
(1135, 1, '2018-06-21 22:58:27', 'snippet_update', 'modSnippet', '29'),
(1136, 1, '2018-06-21 22:58:27', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 29 Default'),
(1137, 1, '2018-06-21 22:58:44', 'clear_cache', '', 'mgr'),
(1138, 1, '2018-06-21 23:03:18', 'clear_cache', '', 'mgr'),
(1139, 1, '2018-06-21 23:03:57', 'login', 'modContext', 'mgr'),
(1140, 1, '2018-06-21 23:05:25', 'snippet_update', 'modSnippet', '22'),
(1141, 1, '2018-06-21 23:05:25', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1142, 1, '2018-06-21 23:05:33', 'clear_cache', '', 'mgr'),
(1143, 1, '2018-06-21 23:15:53', 'chunk_update', 'modChunk', '8'),
(1144, 1, '2018-06-21 23:15:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(1145, 1, '2018-06-21 23:16:39', 'clear_cache', '', 'mgr'),
(1146, 1, '2018-06-21 23:18:29', 'resource_update', 'modResource', '5'),
(1147, 1, '2018-06-21 23:23:37', 'chunk_update', 'modChunk', '8'),
(1148, 1, '2018-06-21 23:23:37', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(1149, 1, '2018-06-21 23:23:43', 'clear_cache', '', 'mgr'),
(1150, 1, '2018-06-21 23:24:34', 'resource_update', 'modResource', '5'),
(1151, 1, '2018-06-21 23:54:08', 'directory_remove', '', '/home/snegphot/sneg-photo.com/www/core/cache/action_map/'),
(1152, 1, '2018-06-22 00:02:15', 'snippet_update', 'modSnippet', '22'),
(1153, 1, '2018-06-22 00:02:15', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1154, 1, '2018-06-22 00:03:07', 'snippet_update', 'modSnippet', '22'),
(1155, 1, '2018-06-22 00:03:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1156, 1, '2018-06-22 00:06:55', 'snippet_update', 'modSnippet', '22'),
(1157, 1, '2018-06-22 00:06:55', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1158, 1, '2018-06-22 00:11:30', 'snippet_update', 'modSnippet', '22'),
(1159, 1, '2018-06-22 00:11:30', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1160, 1, '2018-06-22 00:12:22', 'snippet_update', 'modSnippet', '22'),
(1161, 1, '2018-06-22 00:12:23', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1162, 1, '2018-06-22 00:18:26', 'snippet_update', 'modSnippet', '22'),
(1163, 1, '2018-06-22 00:18:27', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1164, 1, '2018-06-22 07:13:22', 'snippet_update', 'modSnippet', '22'),
(1165, 1, '2018-06-22 07:13:22', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1166, 1, '2018-06-22 07:15:48', 'snippet_update', 'modSnippet', '22'),
(1167, 1, '2018-06-22 07:15:49', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1168, 1, '2018-06-22 07:28:33', 'snippet_update', 'modSnippet', '22'),
(1169, 1, '2018-06-22 07:28:33', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1170, 1, '2018-06-22 07:30:48', 'snippet_update', 'modSnippet', '22'),
(1171, 1, '2018-06-22 07:30:48', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1172, 1, '2018-06-22 07:31:37', 'snippet_update', 'modSnippet', '22'),
(1173, 1, '2018-06-22 07:31:37', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1174, 1, '2018-06-22 07:33:38', 'snippet_update', 'modSnippet', '22'),
(1175, 1, '2018-06-22 07:33:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1176, 1, '2018-06-22 07:34:47', 'snippet_update', 'modSnippet', '22'),
(1177, 1, '2018-06-22 07:34:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1178, 1, '2018-06-22 07:35:21', 'snippet_update', 'modSnippet', '22'),
(1179, 1, '2018-06-22 07:35:22', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1180, 1, '2018-06-22 07:36:44', 'snippet_update', 'modSnippet', '22'),
(1181, 1, '2018-06-22 07:36:44', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1182, 1, '2018-06-22 07:37:29', 'snippet_update', 'modSnippet', '22'),
(1183, 1, '2018-06-22 07:37:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1184, 1, '2018-06-22 07:38:31', 'snippet_update', 'modSnippet', '22'),
(1185, 1, '2018-06-22 07:38:31', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(1186, 1, '2018-06-22 07:53:01', 'snippet_duplicate', 'modSnippet', '34'),
(1187, 1, '2018-06-22 07:57:54', 'snippet_update', 'modSnippet', '34'),
(1188, 1, '2018-06-22 07:58:25', 'chunk_update', 'modChunk', '15'),
(1189, 1, '2018-06-22 07:58:25', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(1190, 1, '2018-06-22 07:59:36', 'snippet_update', 'modSnippet', '34'),
(1191, 1, '2018-06-22 07:59:43', 'chunk_update', 'modChunk', '15'),
(1192, 1, '2018-06-22 07:59:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(1193, 1, '2018-06-22 08:00:20', 'chunk_update', 'modChunk', '15'),
(1194, 1, '2018-06-22 08:00:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(1195, 1, '2018-06-22 08:00:55', 'snippet_update', 'modSnippet', '34'),
(1196, 1, '2019-03-17 21:06:59', 'login', 'modContext', 'mgr'),
(1197, 1, '2019-03-17 21:07:50', 'change_profile_password', 'modUser', '1'),
(1198, 1, '2019-03-17 21:08:02', 'login', 'modContext', 'mgr'),
(1199, 2, '2019-03-17 21:08:54', 'login', 'modContext', 'mgr'),
(1200, 2, '2019-03-17 21:10:09', 'change_profile_password', 'modUser', '2'),
(1201, 2, '2019-03-18 08:55:42', 'resource_update', 'modResource', '1'),
(1202, 2, '2019-03-18 08:56:11', 'resource_update', 'modResource', '2'),
(1203, 2, '2019-03-18 08:57:09', 'resource_update', 'modResource', '5'),
(1204, 2, '2019-03-18 08:57:33', 'resource_update', 'modResource', '6'),
(1205, 2, '2019-03-18 08:57:41', 'resource_update', 'modResource', '5'),
(1206, 2, '2019-03-18 08:57:54', 'resource_update', 'modResource', '7'),
(1207, 2, '2019-03-18 08:58:03', 'resource_update', 'modResource', '8'),
(1208, 2, '2019-03-18 09:00:14', 'resource_update', 'modResource', '3'),
(1209, 2, '2019-03-18 09:24:28', 'resource_update', 'modResource', '3'),
(1210, 2, '2019-03-18 09:35:46', 'resource_update', 'modResource', '5'),
(1211, 2, '2019-03-18 09:39:18', 'resource_update', 'modResource', '5'),
(1212, 2, '2019-03-18 09:39:47', 'resource_update', 'modResource', '5'),
(1213, 2, '2019-03-18 09:42:58', 'resource_update', 'modResource', '5'),
(1214, 2, '2019-03-18 10:35:30', 'resource_update', 'modResource', '6'),
(1215, 2, '2019-03-18 10:41:18', 'resource_update', 'modResource', '7'),
(1216, 2, '2019-03-18 10:58:30', 'resource_update', 'modResource', '8'),
(1217, 2, '2019-03-18 10:58:37', 'resource_update', 'modResource', '8'),
(1218, 2, '2019-03-18 10:59:38', 'resource_update', 'modResource', '11'),
(1219, 2, '2019-03-18 10:59:51', 'resource_update', 'modResource', '10'),
(1220, 2, '2019-03-18 11:38:29', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1221, 2, '2019-03-18 11:38:30', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1222, 2, '2019-03-18 11:38:30', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1223, 2, '2019-03-18 11:38:30', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1224, 2, '2019-03-18 11:38:33', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1225, 2, '2019-03-18 11:38:33', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1226, 2, '2019-03-18 11:38:34', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1227, 2, '2019-03-18 11:38:35', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1228, 2, '2019-03-18 11:38:35', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1229, 2, '2019-03-18 11:44:00', 'resource_update', 'modResource', '2'),
(1230, 2, '2019-03-18 11:44:20', 'resource_update', 'modResource', '2'),
(1231, 2, '2019-03-18 12:47:20', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T006338500_1552905510.jpg'),
(1232, 2, '2019-03-18 12:47:24', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T027911100_1552905514.jpg'),
(1233, 2, '2019-03-18 12:47:27', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T042594000_1552905510.jpg'),
(1234, 2, '2019-03-18 12:47:29', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T055568100_1552905513.jpg'),
(1235, 2, '2019-03-18 12:47:31', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T058743700_1552905515.jpg'),
(1236, 2, '2019-03-18 12:47:34', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T089836400_1552905513.jpg'),
(1237, 2, '2019-03-18 12:47:37', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T086919000_1552905509.jpg'),
(1238, 2, '2019-03-18 12:47:39', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T071363500_1552905510.jpg'),
(1239, 2, '2019-03-18 12:47:53', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1240, 2, '2019-03-18 12:47:53', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1241, 2, '2019-03-18 12:47:54', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1242, 2, '2019-03-18 12:47:54', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1243, 2, '2019-03-18 12:47:54', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1244, 2, '2019-03-18 12:47:54', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1245, 2, '2019-03-18 12:47:54', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1246, 2, '2019-03-18 12:47:54', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1247, 2, '2019-03-18 12:47:55', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1248, 2, '2019-03-18 12:50:33', 'resource_update', 'modResource', '2'),
(1249, 2, '2019-03-18 12:50:45', 'resource_update', 'modResource', '2'),
(1250, 2, '2019-03-18 13:20:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1251, 2, '2019-03-18 13:20:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1252, 2, '2019-03-18 13:20:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1253, 2, '2019-03-18 13:20:41', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1254, 2, '2019-03-18 13:20:41', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1255, 2, '2019-03-18 13:20:41', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1256, 2, '2019-03-18 13:20:41', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1257, 2, '2019-03-18 13:20:42', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1258, 2, '2019-03-18 13:20:42', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1259, 2, '2019-03-18 13:21:30', 'file_remove', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/2019_03_18_T019866000_1552911640.jpg'),
(1260, 2, '2019-03-18 13:22:58', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1261, 2, '2019-03-18 13:25:19', 'resource_update', 'modResource', '2'),
(1262, 2, '2019-03-18 13:57:01', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1263, 2, '2019-03-18 13:57:01', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1264, 2, '2019-03-18 13:57:01', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1265, 2, '2019-03-18 13:57:01', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1266, 2, '2019-03-18 13:57:02', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1267, 2, '2019-03-18 13:57:02', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1268, 2, '2019-03-18 13:57:02', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1269, 2, '2019-03-18 13:57:02', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1270, 2, '2019-03-18 13:57:02', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1271, 2, '2019-03-18 13:59:16', 'resource_update', 'modResource', '2'),
(1272, 2, '2019-03-18 14:34:39', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1273, 2, '2019-03-18 14:34:39', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1274, 2, '2019-03-18 14:34:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1275, 2, '2019-03-18 14:34:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1276, 2, '2019-03-18 14:34:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1277, 2, '2019-03-18 14:34:40', 'file_upload', '', '/nfsmnt/hosting2_2/8/0/80fda169-f486-48f7-880e-3ed815969ee5/webprogrammer.page/sub/sneg-photo/content/portfolio/'),
(1278, 2, '2019-03-18 14:37:21', 'resource_update', 'modResource', '2'),
(1279, 2, '2019-03-18 14:38:23', 'resource_update', 'modResource', '2'),
(1280, 1, '2019-03-18 14:46:21', 'login', 'modContext', 'mgr'),
(1281, 1, '2019-03-18 14:51:44', 'resource_update', 'modResource', '1'),
(1282, 1, '2019-03-18 14:52:37', 'resource_update', 'modResource', '1'),
(1283, 1, '2019-03-18 15:37:07', 'login', 'modContext', 'mgr'),
(1284, 1, '2019-03-18 15:37:54', 'snippet_duplicate', 'modSnippet', '35'),
(1285, 1, '2019-03-18 15:43:49', 'snippet_update', 'modSnippet', '35'),
(1286, 1, '2019-03-18 15:43:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default'),
(1287, 1, '2019-03-18 15:46:54', 'template_update', 'modTemplate', '1'),
(1288, 1, '2019-03-18 15:46:54', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(1289, 1, '2019-03-18 15:48:22', 'snippet_update', 'modSnippet', '35'),
(1290, 1, '2019-03-18 15:52:52', 'snippet_update', 'modSnippet', '35'),
(1291, 1, '2019-03-18 15:52:52', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default'),
(1292, 1, '2019-03-18 15:53:09', 'snippet_update', 'modSnippet', '35'),
(1293, 1, '2019-03-18 15:53:09', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default'),
(1294, 1, '2019-03-18 15:53:11', 'snippet_update', 'modSnippet', '35'),
(1295, 1, '2019-03-18 15:53:11', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default'),
(1296, 1, '2019-03-18 15:54:02', 'snippet_update', 'modSnippet', '35'),
(1297, 1, '2019-03-18 15:54:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default'),
(1298, 1, '2019-03-18 15:54:21', 'snippet_update', 'modSnippet', '35'),
(1299, 1, '2019-03-18 15:54:21', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default'),
(1300, 1, '2019-03-18 15:54:22', 'snippet_update', 'modSnippet', '35'),
(1301, 1, '2019-03-18 15:54:22', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 35 Default');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_media_sources`
--

DROP TABLE IF EXISTS `sneg_prfx_media_sources`;
CREATE TABLE `sneg_prfx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_media_sources`
--

INSERT INTO `sneg_prfx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(3, 'Content', '', 'sources.modFileMediaSource', 'a:2:{s:8:\"basePath\";a:6:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"content/\";s:7:\"lexicon\";s:11:\"core:source\";}s:7:\"baseUrl\";a:6:{s:4:\"name\";s:7:\"baseUrl\";s:4:\"desc\";s:22:\"prop_file.baseUrl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"content/\";s:7:\"lexicon\";s:11:\"core:source\";}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_media_sources_contexts`
--

DROP TABLE IF EXISTS `sneg_prfx_media_sources_contexts`;
CREATE TABLE `sneg_prfx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_media_sources_elements`
--

DROP TABLE IF EXISTS `sneg_prfx_media_sources_elements`;
CREATE TABLE `sneg_prfx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_media_sources_elements`
--

INSERT INTO `sneg_prfx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'modTemplateVar', 1, 'web'),
(1, 'modTemplateVar', 2, 'web'),
(1, 'modTemplateVar', 3, 'web'),
(1, 'modTemplateVar', 4, 'web'),
(1, 'modTemplateVar', 5, 'web'),
(1, 'modTemplateVar', 6, 'web'),
(1, 'modTemplateVar', 7, 'web'),
(1, 'modTemplateVar', 8, 'web'),
(1, 'modTemplateVar', 9, 'web'),
(1, 'modTemplateVar', 10, 'web'),
(1, 'modTemplateVar', 11, 'web'),
(1, 'modTemplateVar', 14, 'web'),
(1, 'modTemplateVar', 15, 'web'),
(1, 'modTemplateVar', 16, 'web'),
(1, 'modTemplateVar', 18, 'web'),
(1, 'modTemplateVar', 21, 'web'),
(1, 'modTemplateVar', 22, 'web'),
(1, 'modTemplateVar', 24, 'web'),
(1, 'modTemplateVar', 25, 'web'),
(3, 'modTemplateVar', 12, 'web'),
(3, 'modTemplateVar', 13, 'web'),
(3, 'modTemplateVar', 17, 'web'),
(3, 'modTemplateVar', 19, 'web'),
(3, 'modTemplateVar', 20, 'web'),
(3, 'modTemplateVar', 23, 'web'),
(3, 'modTemplateVar', 26, 'web'),
(3, 'modTemplateVar', 27, 'web'),
(3, 'modTemplateVar', 28, 'web'),
(3, 'modTemplateVar', 29, 'web'),
(3, 'modTemplateVar', 30, 'web'),
(3, 'modTemplateVar', 31, 'web'),
(3, 'modTemplateVar', 32, 'web'),
(3, 'modTemplateVar', 33, 'web'),
(3, 'modTemplateVar', 34, 'web'),
(3, 'modTemplateVar', 35, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_membergroup_names`
--

DROP TABLE IF EXISTS `sneg_prfx_membergroup_names`;
CREATE TABLE `sneg_prfx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_membergroup_names`
--

INSERT INTO `sneg_prfx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1),
(2, 'Контент менеджеры', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_member_groups`
--

DROP TABLE IF EXISTS `sneg_prfx_member_groups`;
CREATE TABLE `sneg_prfx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_member_groups`
--

INSERT INTO `sneg_prfx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0),
(2, 2, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_menus`
--

DROP TABLE IF EXISTS `sneg_prfx_menus`;
CREATE TABLE `sneg_prfx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_menus`
--

INSERT INTO `sneg_prfx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('migx', 'components', 'index', '', '', 0, '&configs=packagemanager||migxconfigs||setup', '', '', 'migx'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_migx_configs`
--

DROP TABLE IF EXISTS `sneg_prfx_migx_configs`;
CREATE TABLE `sneg_prfx_migx_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_migx_config_elements`
--

DROP TABLE IF EXISTS `sneg_prfx_migx_config_elements`;
CREATE TABLE `sneg_prfx_migx_config_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `element_id` int(10) NOT NULL DEFAULT '0',
  `rank` int(10) NOT NULL DEFAULT '0',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_migx_elements`
--

DROP TABLE IF EXISTS `sneg_prfx_migx_elements`;
CREATE TABLE `sneg_prfx_migx_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_migx_formtabs`
--

DROP TABLE IF EXISTS `sneg_prfx_migx_formtabs`;
CREATE TABLE `sneg_prfx_migx_formtabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int(10) NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `extended` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_migx_formtab_fields`
--

DROP TABLE IF EXISTS `sneg_prfx_migx_formtab_fields`;
CREATE TABLE `sneg_prfx_migx_formtab_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `formtab_id` int(10) NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int(10) NOT NULL DEFAULT '0',
  `description_is_code` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_namespaces`
--

DROP TABLE IF EXISTS `sneg_prfx_namespaces`;
CREATE TABLE `sneg_prfx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_namespaces`
--

INSERT INTO `sneg_prfx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('migx', '{core_path}components/migx/', '{assets_path}components/migx/'),
('simpleacecodeeditor', '{core_path}components/simpleacecodeeditor/', ''),
('tinymcerte', '{core_path}components/tinymcerte/', '{assets_path}components/tinymcerte/');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_property_set`
--

DROP TABLE IF EXISTS `sneg_prfx_property_set`;
CREATE TABLE `sneg_prfx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_register_messages`
--

DROP TABLE IF EXISTS `sneg_prfx_register_messages`;
CREATE TABLE `sneg_prfx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_register_messages`
--

INSERT INTO `sneg_prfx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(3, 'bca3fef3e73590708111dd365808a07e', '2019-03-17 21:01:35', '2019-03-17 21:01:35', NULL, 0, 1552939295, 'if (time() > 1552939295) return null;\nreturn \'a7cb4b2b14ec421e0e679e9d016ea30f\';\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_register_queues`
--

DROP TABLE IF EXISTS `sneg_prfx_register_queues`;
CREATE TABLE `sneg_prfx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_register_queues`
--

INSERT INTO `sneg_prfx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}'),
(3, 'user', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_register_topics`
--

DROP TABLE IF EXISTS `sneg_prfx_register_topics`;
CREATE TABLE `sneg_prfx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_register_topics`
--

INSERT INTO `sneg_prfx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2018-05-16 21:37:33', NULL, NULL),
(2, 2, '/resourcereload/', '2018-05-16 21:38:18', NULL, NULL),
(3, 3, '/pwd/reset/', '2019-03-17 21:01:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_session`
--

DROP TABLE IF EXISTS `sneg_prfx_session`;
CREATE TABLE `sneg_prfx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_session`
--

INSERT INTO `sneg_prfx_session` (`id`, `access`, `data`) VALUES
('0b3f8ba0c509cee277642755a604d9df', 1529054782, 'modx.user.contextTokens|a:0:{}'),
('0c533f9011c02b8e6d4b095c5a370b4f', 1529169270, 'modx.user.contextTokens|a:0:{}'),
('148cd46791bb8eb16148e79ba9c43483', 1529055411, 'modx.user.contextTokens|a:0:{}'),
('161d944f82269ec91655961c1fc90d62', 1552918515, 'modx.user.contextTokens|a:0:{}'),
('1e98dc9d408b72f1118cf41bd9882bcd', 1529640885, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('23084d4da3ac7da0cf2ff336f726e782', 1529471334, 'modx.user.contextTokens|a:0:{}'),
('257c065fce6faa833e3fd0a26459820a', 1529312698, 'modx.user.contextTokens|a:0:{}'),
('26462986bf094724c6c866f9e2bee867', 1552903316, 'modx.user.contextTokens|a:0:{}'),
('2eccc9aed835aa8f94ea378a88788b30', 1529295950, 'modx.user.contextTokens|a:0:{}'),
('2f861f7dc5ecabb6a40eadc82530fd75', 1529610050, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.mgr.user.token|s:52:\"modx5b129bf6cbb759.53402522_25b2bfeeb26a1a9.87725198\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.user.2.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.2.attributes|a:2:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:3;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:3;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}}newResourceTokens|a:3:{i:0;s:23:\"5b2bfeeb5d02a0.90087417\";i:1;s:23:\"5b2bfeef0e1606.89976928\";i:2;s:23:\"5b2bff42eb5f04.96611316\";}'),
('32615eecbae5a924f3e1c5eb912e960d', 1529245330, 'modx.user.contextTokens|a:0:{}'),
('37902c9ee21b2ad8abdd1845e22d4859', 1529629332, 'modx.user.contextTokens|a:0:{}'),
('45eef944a16aa4da28d90371e2beaa15', 1529259150, 'modx.user.contextTokens|a:0:{}'),
('47828e9299043d00a99ee6aa2a5265ac', 1529063486, 'modx.user.contextTokens|a:0:{}'),
('4d880ffc1f30a17cc4b68e5269b40cd0', 1529428482, 'modx.user.contextTokens|a:0:{}'),
('50703d7638520e621ab0c4a0f5a6c050', 1529040535, 'modx.user.contextTokens|a:0:{}'),
('52b54582ff0fd0a934ba52222016bdfe', 1529580417, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('535b76ec2eae587180cc552f3d7ca843', 1552923786, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('54fdbfd9f57abfc367f46630dc8d9d11', 1529405337, 'modx.user.contextTokens|a:0:{}'),
('59df4ebf4d14dd7b235cfbd6d4a9ce44', 1529588607, 'modx.user.contextTokens|a:0:{}'),
('5a7d14a0c7c76ab11a61371ea8e2aca0', 1529431565, 'modx.user.contextTokens|a:0:{}'),
('5bddc44b11623df255671ce857698eca', 1552760182, 'modx.user.contextTokens|a:0:{}'),
('5cadbae0f852dddc414405b6a5671030', 1552920943, ''),
('611044836111e4f8a253f316410e2020', 1529641469, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('69a57aff5d1fdc406bf86bc509f0ffc5', 1552903614, 'modx.user.contextTokens|a:0:{}'),
('75e0a83cf8a8765b9996affeefb6ad26', 1529336778, 'modx.user.contextTokens|a:0:{}'),
('769ba4ca11588f97183322fce48c9267', 1552903583, 'modx.user.contextTokens|a:0:{}'),
('807b1c524c55397e58b9ce09571731e1', 1552903614, 'modx.user.contextTokens|a:0:{}'),
('839702aae9b1827a4888c2e5e5c63143', 1552762151, 'modx.user.contextTokens|a:0:{}'),
('8b630cd5a358f36123fe5f1ea70a30ca', 1529040535, 'modx.user.contextTokens|a:0:{}'),
('94388974151ab50690f27353aa7edd71', 1529642679, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx5b129bf6cbb759.53402522_15b2c04adaac1f8.85746192\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:8:{i:0;s:23:\"5b2c056180ef30.52208004\";i:1;s:23:\"5b2c0565545932.94050067\";i:2;s:23:\"5b2c0568c9a059.95697523\";i:3;s:23:\"5b2c07d9ebc5a6.71298042\";i:4;s:23:\"5b2c0964318928.09033492\";i:5;s:23:\"5b2c0a9626fda6.61991173\";i:6;s:23:\"5b2c798d355872.29655515\";i:7;s:23:\"5b2c7eb7c79cd5.10551841\";}'),
('953a3024ffe39662031f47396827695b', 1552920942, ''),
('9ec0c04e02555bce1eb73bda5aa4726b', 1552919827, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:2:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx5b129bf6cbb759.53402522_15c8fad13839e21.25335558\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('a2cdbc2edaaa8c850351759d575b887d', 1529322552, 'modx.user.contextTokens|a:0:{}'),
('a480345b3610b7b40bb3f3d11dc683c9', 1529436680, 'modx.user.contextTokens|a:0:{}'),
('a7eb6da6da2871969747df39eba867cf', 1529457854, 'modx.user.contextTokens|a:0:{}'),
('b100d609f3295f4ab73f0336847dfe3a', 1529592159, 'modx.user.contextTokens|a:0:{}'),
('b465ca8ed4050f8ff43719c4483f6022', 1529577263, 'modx.user.contextTokens|a:0:{}'),
('b5ca8a14caaf2fd48c1197e4ffdee651', 1529579764, 'modx.user.contextTokens|a:0:{}'),
('c21904a93c12c8b02799dc20c037999a', 1552759513, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('c2a054feeccbfa0deffbaf5a247fbdd6', 1552920964, 'modx.user.contextTokens|a:0:{}'),
('c399bdcba47c6b568c8d9d94f3f69656', 1529419748, 'modx.user.contextTokens|a:0:{}'),
('c8544c657d3a0c9c6c4ec0308b1b6804', 1552903584, 'modx.user.contextTokens|a:0:{}'),
('cad344a8901f406c7404a35926cddaf4', 1529405337, 'modx.user.contextTokens|a:0:{}'),
('cb56b9f3fd076ef1cbe8c8330d189614', 1529428471, 'modx.user.contextTokens|a:0:{}'),
('cbd93383e5b8d691e7d819f63b8dc671', 1529153949, 'modx.user.contextTokens|a:0:{}'),
('dc5700150225f90e2e6ceaf3fc006569', 1552903322, 'modx.user.contextTokens|a:0:{}'),
('dcbf1d8d3fdfbe30d6dc027c5f805cb1', 1529114251, 'modx.user.contextTokens|a:0:{}'),
('dcfd884cf56d787013882215c57941d0', 1529259183, 'modx.user.contextTokens|a:0:{}'),
('de1b8aeb5efc86fe0b53ab42eb15db56', 1529577263, 'modx.user.contextTokens|a:0:{}'),
('e7a7fab4653e5091c6cdea1c84548460', 1529612218, 'modx.user.contextTokens|a:0:{}'),
('e8bbfdba7e23a6067284fb83c9261554', 1552920965, 'modx.user.contextTokens|a:0:{}'),
('eb77795cc01a0aa152e1b51cfb056972', 1529618505, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('ec5bfda25d999c6343eccfe342c12447', 1529477738, 'modx.user.contextTokens|a:0:{}'),
('ee1e7c0bb2a52b8d01f1870f726109e2', 1529589878, 'modx.user.contextTokens|a:0:{}'),
('ee336916ced667636b32f0c20e968226', 1529599087, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.mgr.user.token|s:52:\"modx5b129bf6cbb759.53402522_25b2b39c719e846.63274828\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.user.2.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.2.attributes|a:2:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:3;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:174:{s:5:\"about\";b:0;s:18:\"access_permissions\";b:0;s:7:\"actions\";b:0;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:0;s:9:\"class_map\";b:1;s:10:\"components\";b:0;s:13:\"content_types\";b:0;s:9:\"countries\";b:1;s:6:\"create\";b:0;s:7:\"credits\";b:0;s:15:\"customize_forms\";b:0;s:10:\"dashboards\";b:0;s:8:\"database\";b:0;s:17:\"database_truncate\";b:0;s:15:\"delete_category\";b:0;s:12:\"delete_chunk\";b:0;s:14:\"delete_context\";b:0;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:0;s:13:\"delete_plugin\";b:0;s:18:\"delete_propertyset\";b:0;s:11:\"delete_role\";b:0;s:14:\"delete_snippet\";b:0;s:15:\"delete_template\";b:0;s:9:\"delete_tv\";b:0;s:11:\"delete_user\";b:0;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:0;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:0;s:10:\"edit_chunk\";b:0;s:12:\"edit_context\";b:0;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:0;s:11:\"edit_plugin\";b:0;s:16:\"edit_propertyset\";b:0;s:9:\"edit_role\";b:0;s:12:\"edit_snippet\";b:0;s:13:\"edit_template\";b:0;s:7:\"edit_tv\";b:0;s:9:\"edit_user\";b:0;s:12:\"element_tree\";b:0;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:0;s:14:\"error_log_view\";b:1;s:6:\"events\";b:0;s:13:\"export_static\";b:0;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_unpack\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:0;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:0;s:9:\"languages\";b:0;s:8:\"lexicons\";b:0;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:0;s:5:\"menus\";b:0;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:0;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:0;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:0;s:10:\"namespaces\";b:0;s:12:\"new_category\";b:0;s:9:\"new_chunk\";b:0;s:11:\"new_context\";b:0;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:0;s:10:\"new_plugin\";b:0;s:15:\"new_propertyset\";b:0;s:8:\"new_role\";b:0;s:11:\"new_snippet\";b:0;s:19:\"new_static_resource\";b:0;s:11:\"new_symlink\";b:0;s:12:\"new_template\";b:0;s:6:\"new_tv\";b:0;s:8:\"new_user\";b:0;s:11:\"new_weblink\";b:0;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:0;s:11:\"policy_edit\";b:0;s:10:\"policy_new\";b:0;s:11:\"policy_save\";b:0;s:22:\"policy_template_delete\";b:0;s:20:\"policy_template_edit\";b:0;s:19:\"policy_template_new\";b:0;s:20:\"policy_template_save\";b:0;s:20:\"policy_template_view\";b:0;s:11:\"policy_view\";b:0;s:13:\"property_sets\";b:0;s:9:\"providers\";b:0;s:16:\"publish_document\";b:0;s:13:\"purge_deleted\";b:0;s:6:\"remove\";b:0;s:12:\"remove_locks\";b:0;s:20:\"resourcegroup_delete\";b:0;s:18:\"resourcegroup_edit\";b:0;s:17:\"resourcegroup_new\";b:0;s:27:\"resourcegroup_resource_edit\";b:0;s:27:\"resourcegroup_resource_list\";b:0;s:18:\"resourcegroup_save\";b:0;s:18:\"resourcegroup_view\";b:0;s:18:\"resource_duplicate\";b:1;s:21:\"resource_quick_create\";b:0;s:21:\"resource_quick_update\";b:0;s:13:\"resource_tree\";b:1;s:4:\"save\";b:0;s:13:\"save_category\";b:0;s:10:\"save_chunk\";b:0;s:12:\"save_context\";b:0;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:0;s:16:\"save_propertyset\";b:0;s:9:\"save_role\";b:0;s:12:\"save_snippet\";b:0;s:13:\"save_template\";b:0;s:7:\"save_tv\";b:0;s:9:\"save_user\";b:0;s:6:\"search\";b:1;s:8:\"settings\";b:0;s:7:\"sources\";b:0;s:13:\"source_delete\";b:0;s:11:\"source_edit\";b:0;s:11:\"source_save\";b:0;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:0;s:21:\"tree_show_element_ids\";b:0;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:0;s:25:\"unlock_element_properties\";b:0;s:18:\"unpublish_document\";b:0;s:16:\"usergroup_delete\";b:0;s:14:\"usergroup_edit\";b:0;s:13:\"usergroup_new\";b:0;s:14:\"usergroup_save\";b:0;s:19:\"usergroup_user_edit\";b:0;s:19:\"usergroup_user_list\";b:0;s:14:\"usergroup_view\";b:0;s:4:\"view\";b:1;s:13:\"view_category\";b:0;s:10:\"view_chunk\";b:0;s:12:\"view_context\";b:0;s:13:\"view_document\";b:1;s:12:\"view_element\";b:0;s:13:\"view_eventlog\";b:0;s:12:\"view_offline\";b:0;s:11:\"view_plugin\";b:0;s:16:\"view_propertyset\";b:0;s:9:\"view_role\";b:0;s:12:\"view_snippet\";b:0;s:12:\"view_sysinfo\";b:0;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:0;s:16:\"view_unpublished\";b:0;s:9:\"view_user\";b:0;s:10:\"workspaces\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:1:{i:3;a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"2\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:7:{s:6:\"create\";b:1;s:4:\"copy\";b:1;s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"save\";b:1;s:6:\"remove\";b:1;s:4:\"view\";b:1;}}}}s:18:\"modAccessNamespace\";a:0:{}}}newResourceTokens|a:35:{i:0;s:23:\"5b2b39f4676c75.99397227\";i:1;s:23:\"5b2b3a01436377.87905129\";i:2;s:23:\"5b2b3a54c0fbf6.80554389\";i:3;s:23:\"5b2b3a6e333b27.30131081\";i:4;s:23:\"5b2b3a8b416480.99502591\";i:5;s:23:\"5b2b433ce2e985.87362738\";i:6;s:23:\"5b2b4343f1bab1.05069508\";i:7;s:23:\"5b2b45038954e0.02479213\";i:8;s:23:\"5b2b4909af83c5.12200158\";i:9;s:23:\"5b2b4969415af6.74071693\";i:10;s:23:\"5b2b535134e6b7.81806365\";i:11;s:23:\"5b2b537c4ca001.55568106\";i:12;s:23:\"5b2b53fb0835e3.79399668\";i:13;s:23:\"5b2b5413910550.31145956\";i:14;s:23:\"5b2b5423b96965.20028023\";i:15;s:23:\"5b2b5a3e4cc8f6.95443514\";i:16;s:23:\"5b2b5a5b355741.08538114\";i:17;s:23:\"5b2b5a82413fb0.44923035\";i:18;s:23:\"5b2b5a82b02fc1.50588651\";i:19;s:23:\"5b2b5aafab2308.46410963\";i:20;s:23:\"5b2b5afba57e93.06435563\";i:21;s:23:\"5b2b5e5ac47073.26667496\";i:22;s:23:\"5b2b6228e542b5.93268320\";i:23;s:23:\"5b2b66705e5b81.81259554\";i:24;s:23:\"5b2b7350ad0168.51875146\";i:25;s:23:\"5b2b73c2cc3f32.52594206\";i:26;s:23:\"5b2b8563aeb502.98050211\";i:27;s:23:\"5b2b8565877890.94678455\";i:28;s:23:\"5b2b8567a05e54.14019110\";i:29;s:23:\"5b2b856d5f3742.69618627\";i:30;s:23:\"5b2b85703150b4.33650010\";i:31;s:23:\"5b2b89172c8ff0.09233705\";i:32;s:23:\"5b2b891acb7b08.53059304\";i:33;s:23:\"5b2b8b1c9b58d9.40549717\";i:34;s:23:\"5b2bd46f362039.22770452\";}'),
('ee9706ea299f549c094f53cbfcc85508', 1529588646, 'modx.user.contextTokens|a:0:{}'),
('ef0c8fd899119b4296933317cd2f6e2d', 1529583889, 'modx.user.contextTokens|a:0:{}'),
('f6edbd7da9404685ed3b6449345631e4', 1529169269, 'modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_content`
--

DROP TABLE IF EXISTS `sneg_prfx_site_content`;
CREATE TABLE `sneg_prfx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_content`
--

INSERT INTO `sneg_prfx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная страница', '', '', 'index', '', 1, 0, 0, 0, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 1, 0, 1, 1, 1, 1526494251, 1, 1552917157, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'index.html', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Портфолио', '', '', 'portfolio', '', 1, 0, 0, 0, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 2, 1, 1, 1, 1, 1526495910, 2, 1552916303, 0, 0, 0, 1526495880, 1, '', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'portfolio', 1, 0, 1, NULL),
(3, 'document', 'text/plain', 'Общие настройки сайта', '', '', 'общие-настройки-сайта', '', 1, 0, 0, 0, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 0, 3, 4, 0, 1, 1, 1526504635, 2, 1552897467, 0, 0, 0, 1526504640, 1, '', 0, 0, 0, 0, 1, 'modStaticResource', 'web', 3, 'общие-настройки-сайта.txt', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'Типы фотосъемок', '', '', 'категории-работ', '', 1, 0, 0, 0, 1, '', '', 1, 0, 2, 1, 1, 1, 1526515232, 1, 1526579525, 0, 0, 0, 1526515232, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'категории-работ/', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Свадьбы', '', '', 'wedding', '', 1, 0, 0, 4, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 4, 2, 1, 1, 1, 1526515389, 2, 1552898578, 0, 0, 0, 1526515380, 1, 'СВАДЬБЫ', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'wedding.html', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'Love story', '', '', 'love-story', '', 1, 0, 0, 4, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 4, 3, 1, 1, 1, 1526532992, 2, 1552901730, 0, 0, 0, 1526515380, 1, 'LOVE STORY', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'love-story.html', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'Cемейные', '', '', 'family', '', 1, 0, 0, 4, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 4, 4, 1, 1, 1, 1526533493, 2, 1552902078, 0, 0, 0, 1526515380, 1, 'СЕМЕЙНЫЕ', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'family.html', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'Другое', '', '', 'other', '', 1, 0, 0, 4, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 4, 5, 1, 1, 1, 1526535010, 2, 1552903117, 0, 0, 0, 1526515380, 1, 'ДРУГОЕ', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'other.html', 0, 0, 1, NULL),
(10, 'document', 'text/html', 'Подарочный сертификат', '', '', 'giftcard', '', 1, 0, 0, 0, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 5, 3, 1, 1, 1, 1526581042, 2, 1552903191, 0, 0, 0, 1526582100, 1, 'В ПОДАРОК', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'giftcard.html', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Фотокниги', '', '', 'photocourse', '', 1, 0, 0, 0, 0, '', 'Для редактирования настроек сайта, перейдите в раздел \"Дополнительные поля\"', 1, 6, 3, 1, 1, 1, 1526612933, 2, 1552903178, 0, 0, 0, 1526582100, 1, 'ФОТОКНИГИ', 0, 0, 0, 0, 0, 'modStaticResource', 'web', 1, 'photocourse.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `sneg_prfx_site_htmlsnippets`;
CREATE TABLE `sneg_prfx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_htmlsnippets`
--

INSERT INTO `sneg_prfx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'header', 'Тег header', 0, 0, 0, '<header class=\"container-fluid fixed-top\">\n  <div class=\"container-center-xl\">\n    <nav class=\"navbar navbar-toggleable navbar-short navbar-expand-xl\">       \n      <button class=\"navbar-toggler navbar-toggler-left\" ENGINE=\"button\" data-toggle=\"collapse\" data-target=\"#navbarHeaderMenu\" aria-controls=\"navbarHeaderMenu\" aria-expanded=\"true\" aria-label=\"Toggle navigation\">\n        <div class=\"hamburger\"><span></span><span></span><span></span><span></span></div>\n      </button>\n      <div class=\"menu-logo\">\n        <div class=\"nav-brand\">\n          <div class=\"navbar-caption-wrap\"><a class=\"navbar-caption\" href=\"[[++site_url]]\"><img class=\"logo\" src=\"[[++site_url]]static/img/logo.png\" alt=\"СНЕГ photography логотип\"></a></div>\n        </div>\n      </div>\n      <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarHeaderPhone\" aria-controls=\"navbarHeaderPhone\" aria-expanded=\"true\" aria-label=\"Toggle navigation\">\n        <div class=\"phone\"><i class=\"fas fa-phone fa-fw text-body\"></i></div>\n      </button>\n      <div class=\"clearfix\"></div>\n      <div class=\"navbar-collapse collapse\" id=\"navbarHeaderMenu\">\n        <div class=\"d-flex\">\n          <ul class=\"navbar-nav nav-dropdown mx-auto justify-content-center\">\n             [[!headerMenu? &parent=`4` &tpl=`headerMenuElement`]]\n             [[!headerMenuElement? &id=`10` &tpl=`headerMenuElement`]]\n             [[!headerMenuElement? &id=`11` &tpl=`headerMenuElement`]]\n          </ul>\n        </div>\n      </div>\n      <div class=\"navbar-collapse collapse\" id=\"navbarHeaderPhone\">\n        <div class=\"d-flex\">\n          <ul class=\"navbar-nav nav-dropdown mx-auto justify-content-center\">\n            <li class=\"nav-item\"><a class=\"nav-link\" href=\"tel:[[getSiteSettings? &case=`phoneFirstCall`]]\">[[getSiteSettings? &case=`phoneFirstText`]]</a></li>\n            <li class=\"nav-item\"><a class=\"nav-link\" href=\"tel:[[getSiteSettings? &case=`phoneSecondCall`]]\">[[getSiteSettings? &case=`phoneSecondText`]]</a></li>\n          </ul>\n        </div>\n      </div>\n    </nav>\n  </div>\n</header>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'headHome', '', 0, 0, 0, '<head>\n    <title>[[*title]]</title>\n    <meta charset=\"UTF-8\">\n    <base href=\"[[++site_url]]\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n    <meta name=\"robots\" content=\"[[*metaRobots]]\">\n    <meta name=\"description\" content=\"[[*metaDescription]]\">\n    <meta name=\"keywords\" content=\"[[*metaKeywords]]\"><!--[if IE]>\n    <link rel=\"icon\" href=\"[[++site_url]]static/img/favicon/favicon.ico\"><![endif]-->\n    <link rel=\"icon\" href=\"[[++site_url]]static/img/favicon/favicon-16x16.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"57x57\" href=\"[[++site_url]]static/img/favicon/apple-icon-57x57.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"60x60\" href=\"[[++site_url]]static/img/favicon/apple-icon-60x60.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"[[++site_url]]static/img/favicon/apple-icon-72x72.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"[[++site_url]]static/img/favicon/apple-icon-76x76.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"[[++site_url]]static/img/favicon/apple-icon-114x114.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"120x120\" href=\"[[++site_url]]static/img/favicon/apple-icon-120x120.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"144x144\" href=\"[[++site_url]]static/img/favicon/apple-icon-144x144.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"152x152\" href=\"[[++site_url]]static/img/favicon/apple-icon-152x152.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"[[++site_url]]static/img/favicon/apple-icon-180x180.png\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/favicon-32x32.png\" sizes=\"32x32\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/android-chrome-192x192.png\" sizes=\"192x192\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/favicon-96x96.png\" sizes=\"96x96\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/favicon-16x16.png\" sizes=\"16x16\">\n    <link rel=\"manifest\" href=\"[[++site_url]]static/img/favicon/manifest.json\">\n    <meta name=\"msapplication-TileColor\" content=\"#ffffff\">\n    <meta name=\"msapplication-TileImage\" content=\"[[++site_url]]static/img/favicon/ms-icon-144x144.png\">\n    <meta name=\"theme-color\" content=\"#ffffff\">\n  <style>\n    @-ms-viewport{width:device-width}html{box-sizing:border-box;-ms-overflow-style:scrollbar}*,::after,::before{box-sizing:inherit}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.no-gutters{margin-right:0;margin-left:0}.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col-12,.col-md-4,.col-xl-1,.col-xl-11{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col-12{flex:0 0 100%;max-width:100%}@media (min-width:768px){.col-md-4{flex:0 0 33.33333%;max-width:33.33333%}}@media (min-width:1200px){.col-xl-1{flex:0 0 8.33333%;max-width:8.33333%}.col-xl-11{flex:0 0 91.66667%;max-width:91.66667%}}.d-none{display:none!important}.d-flex{display:flex!important}@media (min-width:1200px){.d-xl-flex{display:flex!important}}.justify-content-center{justify-content:center!important}*,::after,::before{box-sizing:border-box}html{line-height:1.15;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;-ms-overflow-style:scrollbar}@-ms-viewport{width:device-width}header,nav,section{display:block}body{margin:0;font-size:1rem;font-weight:400;line-height:1.5;color:#000;text-align:left;background-color:#fff}h2,h3{margin-top:0;margin-bottom:.5rem}ul{margin-top:0;margin-bottom:1rem}a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}img{vertical-align:middle;border-style:none}button{border-radius:0}button{margin:0;font-size:inherit;line-height:inherit}button{overflow:visible}button{text-transform:none}button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,button::-moz-focus-inner{padding:0;border-style:none}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}.nav-link{display:block;padding:.5rem 1rem}.navbar{position:relative;display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;padding:.5rem 1rem}.navbar-nav{display:flex;flex-direction:column;padding-left:0;margin-bottom:0;list-style:none}.navbar-nav .nav-link{padding-right:0;padding-left:0}.navbar-collapse{flex-basis:100%;flex-grow:1;align-items:center}.navbar-toggler{padding:.25rem .75rem;font-size:1.25rem;line-height:1;background-color:transparent;border:1px solid transparent;border-radius:.25rem}@media (min-width:1200px){.navbar-expand-xl{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-xl .navbar-nav{flex-direction:row}.navbar-expand-xl .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-xl .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand-xl .navbar-toggler{display:none}}.collapse:not(.show){display:none}.img-fluid{max-width:100%;height:auto}.text-body{color:#000!important}.position-relative{position:relative!important}.fixed-top{position:fixed;top:0;right:0;left:0;z-index:1030}.mx-auto{margin-right:auto!important}.mx-auto{margin-left:auto!important}.owl-carousel{display:none;width:100%;position:relative;z-index:1}*{padding:0;margin:0}body{opacity:0}html{overflow-y:scroll!important}body{padding-top:3.75em}.border-width-1{-webkit-box-shadow:inset 0 0 0 2px #d2d2d2;-moz-box-shadow:inset 0 0 0 2px #d2d2d2;box-shadow:inset 0 0 0 2px #d2d2d2}.border-width-5{-webkit-box-shadow:inset 0 0 0 5px #d2d2d2;-moz-box-shadow:inset 0 0 0 5px #d2d2d2;box-shadow:inset 0 0 0 5px #d2d2d2}.container-center-xl{margin-right:auto;margin-left:auto;max-width:1170px}.media-container-row{display:-ms-flexbox;display:-webkit-flex;display:flex;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-content:center;-ms-flex-line-pack:center;align-content:center;-webkit-align-items:start;-ms-flex-align:start;align-items:flex-start}.row-eq-height{-webkit-align-items:baseline;-ms-flex-align:baseline;align-items:baseline}.padding-top-25px{padding-top:1.5625rem}.position-relative{position:relative}.remove-col-paddings{padding-left:0!important;padding-right:0!important}.btn-flat-black-transparent-hover-black,.btn-flat-white{border-width:2px;outline:0;padding:.75rem 2.75rem;font-size:1rem;display:flex;-webkit-flex-wrap:nowrap;-ms-flex-wrap:nowrap;flex-wrap:nowrap;text-align:center;text-decoration:none;line-height:1;border-radius:0;-webkit-border-radius:0;-moz-border-radius:0;-ms-border-radius:0;-o-border-radius:0;border-style:solid}.btn-short{padding:.75rem 1.76rem!important}.btn-flat-white{border-color:#000;color:#000;background-color:#fff}.btn-flat-black-transparent-hover-black{border-color:#fff;color:#fff;background-color:rgba(0,0,0,.4)}header{background-color:#fff;overflow:hidden;border-bottom:2px solid #000}header .navbar.navbar-short{min-height:60px}header .navbar.navbar-toggleable{flex-direction:column;-webkit-flex-direction:column;-moz-flex-direction:column;-ms-flex-direction:column}header .navbar button.navbar-toggler-left{position:absolute;left:calc(15px + .4375rem);width:26px;height:21px;top:1.125rem;padding:.25rem .75rem}header .navbar button.navbar-toggler-right{position:absolute;right:calc(15px + .4375rem);width:32px;height:26px;top:.875rem;padding:0}header .navbar button.navbar-toggler{-webkit-align-self:flex-start;-ms-flex-item-align:start;align-self:flex-start;font-size:1.25rem;line-height:1;background:0 0;border:1px solid transparent;-webkit-border-radius:0;border-radius:0}header .navbar button.navbar-toggler .hamburger span{position:absolute;left:0;width:25px;height:2px;border-right:5px;background-color:#000}header .navbar button.navbar-toggler .hamburger span:nth-child(1){top:0}header .navbar button.navbar-toggler .hamburger span:nth-child(2){top:8px}header .navbar button.navbar-toggler .hamburger span:nth-child(3){top:8px}header .navbar button.navbar-toggler .hamburger span:nth-child(4){top:16px}header .navbar button.navbar-toggler .phone{font-size:1.5625rem}header .navbar .navbar-collapse{position:relative;background-color:#fff;width:100%;flex-basis:auto!important}header .navbar .navbar-collapse ul.nav-dropdown{margin-top:2rem;margin-bottom:2rem}header .navbar .navbar-collapse ul.nav-dropdown li{font-size:1.5rem;text-decoration:none;outline:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link{color:#000;text-decoration:none;outline:0;position:relative;display:inline-block;padding:.01rem;margin:.5rem 1rem}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:first-child:before{content:\'\';position:absolute;top:0;left:0;width:.5rem;height:.5rem;background:0 0;border-top:2px solid #000;border-left:2px solid #000;opacity:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:first-child:after{content:\'\';position:absolute;top:0;right:0;width:.5rem;height:.5rem;background:0 0;border-top:2px solid #000;border-right:2px solid #000;opacity:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:last-child:before{content:\'\';position:absolute;bottom:0;left:0;width:.5rem;height:.5rem;background:0 0;border-bottom:2px solid #000;border-left:2px solid #000;opacity:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:last-child:after{content:\'\';position:absolute;bottom:0;right:0;width:.5rem;height:.5rem;background:0 0;border-bottom:2px solid #000;border-right:2px solid #000;opacity:0}section.photo-service{padding-left:0!important;padding-right:0!important;margin-top:50px}section.photo-service .section-title{align-items:baseline!important}section.photo-service h2{font-size:1.5rem;line-height:1;margin:0;color:#282828}section.photo-service span.subtitle{font-size:1rem;line-height:1;color:#a8a8a8}section.photo-service .btn-over-image{position:absolute;bottom:20px;left:50%;transform:translate(-50%,0);-ms-transform:translate(-50%,0)}section.photo-service .price-slider{width:100%!important}section.photo-service .carousel-item{padding:25px 30px}section.photo-service .carousel-item .inner{display:table;height:100%}section.photo-service .carousel-item h3{font-size:1.5rem;line-height:1;margin:0;display:inline-block;color:#282828}section.photo-service .carousel-item span.subtitle{font-size:1.125rem;line-height:1;color:#a8a8a8;margin-left:.5rem}section.photo-service .carousel-item .text-content{margin-top:20px}section.photo-service .carousel-item .button-buy{display:table-row!important;vertical-align:bottom;height:0}section.photo-service .carousel-item .button-buy .col-12{padding-top:25px}section.photo-service .carousel-item .price{-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;align-items:center;justify-content:center;-webkit-flex-wrap:nowrap;-ms-flex-wrap:nowrap;flex-wrap:nowrap;-webkit-justify-content:start;-ms-flex-pack:start;justify-content:flex-start;-webkit-align-content:start;-ms-flex-line-pack:start;align-content:flex-start;margin-left:15px}section.photo-service .carousel-item .price .price-one{font-weight:500;font-size:1.25rem}section.photo-service .carousel-item .price-sale{-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;margin-left:15px}section.photo-service .carousel-item .price-sale .price-old{display:block;text-decoration:line-through;font-size:.875rem;color:#7c7c7c}section.photo-service .carousel-item .price-sale .price-new{display:block;font-weight:500;font-size:1.25rem}section.top-slider{padding-left:0!important;padding-right:0!important}section.top-slider .margin-top-from-image{margin-top:0}section.top-slider .carousel-top{margin-top:15px}section.top-slider h2{font-size:1.5rem;line-height:1;margin:0;color:#282828}section.top-slider .section-title{margin-top:35px}section.top-slider img{display:none;width:100%}section.top-slider .carousel-control-padding{padding-left:45px;padding-right:45px}@media (min-width:768px){.media-container-row{-webkit-flex-wrap:nowrap;-ms-flex-wrap:nowrap;flex-wrap:nowrap;-webkit-justify-content:start;-ms-flex-pack:start;justify-content:flex-start;-webkit-align-content:start;-ms-flex-line-pack:start;align-content:flex-start;align-items:stretch}.remove-col-md-paddings{padding-left:0!important;padding-right:0!important}section.top-slider .section-title{display:none}section.top-slider .carousel-top{margin-top:auto}section.top-slider .margin-top-from-image{margin-top:.875rem}section.top-slider .carousel-control-padding{padding-left:0;padding-right:0;margin-top:15px}section.top-slider img{display:block}section.photo-service h2{font-size:1.875rem;display:inline-block}section.photo-service span.subtitle{font-size:1.125rem;margin-left:.5rem}section.photo-service .price-slider.owl-carousel{display:flex!important}section.photo-service .carousel-item{display:inline-block!important;padding:25px 10px;flex:0 0 calc(33.33333% - 20px)!important;max-width:calc(33.33333% - 20px)!important}section.photo-service .carousel-item.active{margin-left:30px;margin-right:30px}section.photo-service .carousel-item h3{font-size:1.5rem;display:block}section.photo-service .carousel-item span.subtitle{font-size:1.125rem;margin-left:0}section.photo-service .carousel-item .price .price-one{font-size:1rem}section.photo-service .carousel-item .price-sale .price-new{font-size:1rem}}@media (min-width:992px){section.photo-service h2{font-size:3rem}section.photo-service span.subtitle{font-size:1.5rem}section.photo-service .carousel-item{padding:25px 15px}section.photo-service .price-new,section.photo-service .price-one{font-size:1.25rem!important}}@media (min-width:1200px){body{padding-top:4.75em}header{border-bottom:none}header .navbar{border-bottom:2px solid #000;padding-left:0!important;padding-right:0!important}header .navbar.navbar-toggleable{flex-direction:row;-webkit-flex-direction:row;-moz-flex-direction:row;-ms-flex-direction:row}header .navbar #navbarHeaderMenu{-webkit-box-pack:flex-end!important;-ms-flex-pack:flex-end!important;justify-content:flex-end!important}header .navbar #navbarHeaderMenu .nav-link{padding:.01rem!important;margin:.5rem .8rem!important}header .navbar #navbarHeaderPhone{flex-direction:column!important;-webkit-flex-direction:column!important;-moz-flex-direction:column!important;-ms-flex-direction:column!important}header .navbar #navbarHeaderPhone .navbar-nav{flex-direction:column!important;-webkit-flex-direction:column!important;-moz-flex-direction:column!important;-ms-flex-direction:column!important}header .navbar #navbarHeaderPhone .navbar-nav .nav-link{font-size:.875rem;font-weight:500;line-height:1;margin-right:0!important;padding-right:0!important}header .navbar .navbar-collapse{position:relative;margin-top:0;width:auto;top:auto;box-shadow:none;align-items:flex-end!important}header .navbar .navbar-collapse ul.nav-dropdown{margin-top:auto;margin-bottom:auto}header .navbar .navbar-collapse ul.nav-dropdown li{font-size:1rem}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link{margin-left:.3rem;margin-right:.3rem;color:#000}section.photo-service .baseline{border-bottom:2px solid #a8a8a8}section.photo-service h2{font-size:3.4375rem}section.photo-service .carousel-item{padding:25px 20px}section.photo-service .carousel-item h3{display:inline-block}section.photo-service .carousel-item span.subtitle{margin-left:.5rem}section.photo-service .carousel-item .price-sale{-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;align-items:baseline;margin-top:.4rem}section.photo-service .carousel-item .price-sale .price-new{margin-left:.5rem}}\n  </style>\n  <link href=\"[[++site_url]]static/css/app.cadf2d06450931b1c5784a8555d50b42.css\" rel=\"preload\" as=\"style\" onload=\"this.onload=null;this.rel=\'stylesheet\'\">\n  <noscript><link href=\"[[++site_url]]static/css/app.cadf2d06450931b1c5784a8555d50b42.css\" rel=\"stylesheet\"></noscript>\n  <noscript>\n    <style>body {opacity:1}</style>\n  </noscript>\n  <script>!function(n){\"use strict\";n.loadCSS||(n.loadCSS=function(){});var o=loadCSS.relpreload={};if(o.support=function(){var e;try{e=n.document.createElement(\"link\").relList.supports(\"preload\")}catch(t){e=!1}return function(){return e}}(),o.bindMediaToggle=function(t){var e=t.media||\"all\";function a(){t.media=e}t.addEventListener?t.addEventListener(\"load\",a):t.attachEvent&&t.attachEvent(\"onload\",a),setTimeout(function(){t.rel=\"stylesheet\",t.media=\"only x\"}),setTimeout(a,3e3)},o.poly=function(){if(!o.support())for(var t=n.document.getElementsByTagName(\"link\"),e=0;e<t.length;e++){var a=t[e];\"preload\"!==a.rel||\"style\"!==a.getAttribute(\"as\")||a.getAttribute(\"data-loadcss\")||(a.setAttribute(\"data-loadcss\",!0),o.bindMediaToggle(a))}},!o.support()){o.poly();var t=n.setInterval(o.poly,500);n.addEventListener?n.addEventListener(\"load\",function(){o.poly(),n.clearInterval(t)}):n.attachEvent&&n.attachEvent(\"onload\",function(){o.poly(),n.clearInterval(t)})}\"undefined\"!=typeof exports?exports.loadCSS=loadCSS:n.loadCSS=loadCSS}(\"undefined\"!=typeof global?global:this);</script>\n</head>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'footer', '', 0, 0, 0, '<footer class=\"container-fluid\">\n  <div class=\"container-center-xl\">\n    <div class=\"media-container-row text-center\">\n      <div class=\"col-12 col-sm-12 col-md-4 padding-left-md-0\">\n        <div class=\"media-wrap text-body\">\n          <div class=\"font-size-14px text-md-left\">[[getSiteSettings? &case=`phoneSecondText`]], [[getSiteSettings? &case=`namePhoneSecond`]]<br>[[getSiteSettings? &case=`phoneFirstText`]], [[getSiteSettings? &case=`namePhoneFirst`]]<br><br>[[getSiteSettings? &case=`email`]]</div>\n        </div>\n      </div>\n      <div class=\"col-12 col-sm-12 col-md-4\">\n        <div class=\"media-wrap text-body\"><a class=\"font-size-32px left-social-icon\" href=\"[[getSiteSettings? &case=`instagram`]]\"><i class=\"fab fa-instagram fa-fw text-body\"></i></a><a class=\"font-size-32px right-social-icon\" href=\"[[getSiteSettings? &case=`behance`]]\"><i class=\"fab fa-behance fa-fw text-body\"></i></a>\n          <div class=\"font-size-14px margin-top-14px\">With <span class=\"emoji\">&#x2764;</span> СНЕГ photography</div>\n        </div>\n      </div>\n    </div>\n  </div>\n</footer>\n<div class=\"clearfix\"></div>\n<div class=\"to-top\"><i class=\"fas fa-chevron-up fa-lg\"></i></div>\n<script>\n  WebFontConfig = {\n      google: { families: [ \'Fira+Sans:400,500\'] }\n      };\n      (function() {\n      var wf = document.createElement(\'script\');\n      wf.src = (\'https:\' == document.location.protocol ? \'https\' : \'http\') +\n          \'://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js\';\n      wf.type = \'text/javascript\';\n      wf.async = \'true\';\n      var s = document.getElementsByTagName(\'script\')[0];\n      s.parentNode.insertBefore(wf, s);\n  })();\n      \n</script>\n<script type=\"text/javascript\" src=\"[[++site_url]]static/js/manifest.2ae2e69a05c33dfc65f8.js\"></script><script type=\"text/javascript\" src=\"[[++site_url]]static/js/vendor.083da6d471cd8db7a22a.js\"></script><script type=\"text/javascript\" src=\"[[++site_url]]static/js/app.d21e89deff302411762d.js\"></script>\n[[$google]]', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'mainSlider', '', 0, 10, 0, '<section class=\"container-fluid top-slider\">\n  <div class=\"media-container-row row-eq-height section-title\">\n    <div class=\"col-12 remove-col-md-paddings\">\n      <h2>НАШИ ПРЕИМУЩЕСТВА</h2>\n    </div>\n  </div>\n  <div class=\"media-container-row\">\n    <div class=\"col-12 remove-col-md-paddings\">               \n      <div class=\"carousel-top slide owl-carousel\" id=\"topCarouselSlider\">\n        [[parseJSON? &input=`[[*mainSlider]]` &tpl=`mainSliderItem`]]\n      </div>\n    </div>\n  </div>\n</section>', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'mainSliderItem', '', 0, 10, 0, '<div class=\"carousel-item item\">\n    <img class=\"img-fluid\" src=\"[[+image]]\">\n    <div class=\"container-center-xl carousel-control-padding\">[[+description]]</div>\n</div>', 0, 'a:0:{}', 0, ''),
(6, 1, 0, 'typePhotographyItem', '', 0, 11, 0, '<a class=\"anchor\" id=\"[[+anchor]]\"></a>\n<section class=\"container-fluid photo-service\">\n  <div class=\"container-center-xl\">\n    <div class=\"media-container-row row-eq-height section-title\">\n      <div class=\"d-none remove-col-md-paddings baseline d-xl-flex col-xl-1\"></div>\n      <div class=\"col-12 col-xl-11\">\n        <h2>[[+titleTypePhotography]]</h2><span class=\"subtitle\">[[+subtitleTypePhotography]]</span>\n      </div>\n    </div>\n    <div class=\"media-container-row padding-top-25px\">\n      <div class=\"col-12 remove-col-paddings position-relative\"><img class=\"img-fluid\" src=\"[[+imageTopTypePhotography]]\"><a class=\"btn-flat-black-transparent-hover-black btn-over-image\" href=\"[[+urlTypePhotography]]\">БОЛЬШЕ РАБОТ</a></div>\n    </div>\n    <div class=\"media-container-row padding-top-25px\">\n      <div class=\"carousel slide price-slider owl-carousel\" id=\"weddingsCarousel\">\n          [[+package]]\n      </div>\n    </div>\n  </div>\n</section>', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'typePhotography', '', 0, 11, 0, '[[getTypePhotography? &tpl=`typePhotographyItem` &tplPackage=`typePhotographyItemPackage`]]', 0, 'a:0:{}', 0, ''),
(8, 1, 0, 'typePhotographyItemPackage', '', 0, 11, 0, '  <div class=\"inner\">\n    <h3>[[+name]]</h3><span class=\"subtitle\">ПАКЕТ</span>\n    <div class=\"clearfix\"></div>\n    <div class=\"battery-row\">[[+image:notequalto=`content/`:then=`<img src=\"[[+image]]\">`]]</div>\n    <div class=\"clearfix\"></div>\n    <div class=\"text-content\">[[+description]]</div>\n    <div class=\"clearfix\"></div>\n    <div class=\"media-container-row no-gutters button-buy row-eq-height\">\n      <div class=\"col-12 d-flex\">\n        <button class=\"btn-flat-white btn-short mx-left\" onclick=\"orderPackage(\'[[+titleTypePhotography]]\',\'[[+name_for_modal]]\', \'[[+price_sale:is=``:then=`[[+price]]`:else=`[[+price_sale]]`]]\')\">ЗАКАЗАТЬ</button>\n        [[+price_sale:is=``:then=`<div class=\"d-flex price\"><div class=\"price-one\">[[+price]]</div></div>`:else=`<div class=\"d-flex price-sale\"><div class=\"price-old\">[[+price]]</div><div class=\"price-new\">[[+price_sale]]</div>\n</div>`]]\n      </div>\n    </div>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(10, 1, 0, 'giftcard', '', 0, 12, 0, ' [[getGiftCard? &tpl=`giftcardItem`]]', 0, 'a:0:{}', 0, ''),
(11, 1, 0, 'giftcardItem', '', 0, 12, 0, '<a class=\"anchor\" id=\"giftcard\"></a>\n<section class=\"container-fluid certificate\">\n  <div class=\"container-center-xl\">\n    <div class=\"media-container-row row-eq-height section-title\">\n      <div class=\"col-12 remove-col-md-paddings\">\n        <h2 class=\"text-xl-center\">[[+titleBlockGiftCard]]</h2>\n      </div>\n    </div>\n    <div class=\"media-container-row align-content-stretch\">\n      <div class=\"col-12 col-md-5 col-xl-6 order-md-1 image-col\">\n        <div class=\"h-100\"><img class=\"img-fluid\" src=\"[[+giftcardImage]]\" alt=\"Подарочный сертификат\"></div>\n      </div>\n      <div class=\"col-12 col-md-7 col-xl-6 order-md-2 text-col remove-sm-right-padding\">\n        <div class=\"text-outer h-100\">\n          <div class=\"text-inner\">\n            <div class=\"text-content font-size-14px\">\n              [[+giftcardText]]\n            </div>\n            <div class=\"d-flex button-buy\">\n              <button class=\"btn-flat-white mx-auto\" onclick=\"orderCertificate();\">КУПИТЬ</button>\n            </div>\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>\n</section>', 0, 'a:0:{}', 0, ''),
(12, 1, 0, 'photocourse', '', 0, 13, 0, ' [[getPhotocourse? &tpl=`photocourseItem`]]', 0, 'a:0:{}', 0, ''),
(13, 1, 0, 'photocourseItem', '', 0, 13, 0, '<a class=\"anchor\" id=\"photocourse\"></a>    \n<section class=\"container-fluid photo-course\" id=\"photocourse\">\n      <div class=\"container-center-xl\">\n        <div class=\"media-container-row row-eq-height section-title\">\n          <div class=\"col-12 remove-col-md-paddings\">\n            <h2 class=\"text-xl-center\">[[+titleBlockPhotocourse]]</h2>\n          </div>\n        </div>\n        <div class=\"media-container-row align-content-stretch\">\n          <div class=\"col-12 col-md-5 col-xl-6 order-md-2 image-col\">\n            <div class=\"h-100\"><img class=\"img-fluid\" src=\"[[+photocourseImage]]\" alt=\"Фотокурс\"></div>\n          </div>\n          <div class=\"col-12 col-md-7 col-xl-6 order-md-1 text-col remove-sm-left-padding\">\n            <div class=\"text-outer h-100\">\n              <div class=\"text-inner\">\n                <div class=\"text-content font-size-14px\">\n                  [[+photocourseText]]\n                </div>\n                <div class=\"d-flex button-buy\">\n                  <button class=\"btn-flat-white mx-auto\" onclick=\"orderPhotocourse();\">КУПИТЬ</button>\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n      </div>\n    </section>', 0, 'a:0:{}', 0, ''),
(14, 1, 0, 'headPortfolio', '', 0, 0, 0, '<head>\n    <title>[[*title]]</title>\n    <meta charset=\"UTF-8\">\n    <base href=\"[[++site_url]]\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n    <meta name=\"robots\" content=\"[[*metaRobots]]\">\n    <meta name=\"description\" content=\"[[*metaDescription]]\">\n    <meta name=\"keywords\" content=\"[[*metaKeywords]]\"><!--[if IE]>\n    <link rel=\"icon\" href=\"[[++site_url]]static/img/favicon/favicon.ico\"><![endif]-->\n    <link rel=\"icon\" href=\"[[++site_url]]static/img/favicon/favicon-16x16.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"57x57\" href=\"[[++site_url]]static/img/favicon/apple-icon-57x57.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"60x60\" href=\"[[++site_url]]static/img/favicon/apple-icon-60x60.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"[[++site_url]]static/img/favicon/apple-icon-72x72.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"[[++site_url]]static/img/favicon/apple-icon-76x76.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"[[++site_url]]static/img/favicon/apple-icon-114x114.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"120x120\" href=\"[[++site_url]]static/img/favicon/apple-icon-120x120.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"144x144\" href=\"[[++site_url]]static/img/favicon/apple-icon-144x144.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"152x152\" href=\"[[++site_url]]static/img/favicon/apple-icon-152x152.png\">\n    <link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"[[++site_url]]static/img/favicon/apple-icon-180x180.png\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/favicon-32x32.png\" sizes=\"32x32\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/android-chrome-192x192.png\" sizes=\"192x192\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/favicon-96x96.png\" sizes=\"96x96\">\n    <link rel=\"icon\" type=\"image/png\" href=\"[[++site_url]]static/img/favicon/favicon-16x16.png\" sizes=\"16x16\">\n    <link rel=\"manifest\" href=\"[[++site_url]]static/img/favicon/manifest.json\">\n    <meta name=\"msapplication-TileColor\" content=\"#ffffff\">\n    <meta name=\"msapplication-TileImage\" content=\"[[++site_url]]static/img/favicon/ms-icon-144x144.png\">\n    <meta name=\"theme-color\" content=\"#ffffff\">\n  <style>\n    @-ms-viewport{width:device-width}html{box-sizing:border-box;-ms-overflow-style:scrollbar}*,::after,::before{box-sizing:inherit}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.col-12,.col-lg-4,.col-md-4,.col-md-6,.col-sm-12,.col-xl-4,.col-xl-6{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col-12{flex:0 0 100%;max-width:100%}@media (min-width:576px){.col-sm-12{flex:0 0 100%;max-width:100%}}@media (min-width:768px){.col-md-4{flex:0 0 33.33333%;max-width:33.33333%}.col-md-6{flex:0 0 50%;max-width:50%}}@media (min-width:992px){.col-lg-4{flex:0 0 33.33333%;max-width:33.33333%}}@media (min-width:1200px){.col-xl-4{flex:0 0 33.33333%;max-width:33.33333%}.col-xl-6{flex:0 0 50%;max-width:50%}}.d-flex{display:flex!important}.justify-content-center{justify-content:center!important}*,::after,::before{box-sizing:border-box}html{line-height:1.15;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;-ms-overflow-style:scrollbar}@-ms-viewport{width:device-width}header,nav,section{display:block}body{margin:0;font-size:1rem;font-weight:400;line-height:1.5;color:#000;text-align:left;background-color:#fff}h1{margin-top:0;margin-bottom:.5rem}ol,ul{margin-top:0;margin-bottom:1rem}a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}img{vertical-align:middle;border-style:none}button{border-radius:0}button,select{margin:0;font-size:inherit;line-height:inherit}button{overflow:visible}button,select{text-transform:none}button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,button::-moz-focus-inner{padding:0;border-style:none}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}.nav-link{display:block;padding:.5rem 1rem}.navbar{position:relative;display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;padding:.5rem 1rem}.navbar-nav{display:flex;flex-direction:column;padding-left:0;margin-bottom:0;list-style:none}.navbar-nav .nav-link{padding-right:0;padding-left:0}.navbar-collapse{flex-basis:100%;flex-grow:1;align-items:center}.navbar-toggler{padding:.25rem .75rem;font-size:1.25rem;line-height:1;background-color:transparent;border:1px solid transparent;border-radius:.25rem}@media (min-width:1200px){.navbar-expand-xl{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-xl .navbar-nav{flex-direction:row}.navbar-expand-xl .navbar-nav .nav-link{padding-right:.5rem;padding-left:.5rem}.navbar-expand-xl .navbar-collapse{display:flex!important;flex-basis:auto}.navbar-expand-xl .navbar-toggler{display:none}}.collapse:not(.show){display:none}.img-fluid{max-width:100%;height:auto}.text-center{text-align:center!important}@media (min-width:1200px){.text-xl-left{text-align:left!important}}.text-body{color:#000!important}.fixed-top{position:fixed;top:0;right:0;left:0;z-index:1030}.mx-auto{margin-right:auto!important}.mx-auto{margin-left:auto!important}*{padding:0;margin:0}ol{list-style:inside decimal}body{opacity:0}html{overflow-y:scroll!important}body{padding-top:3.75em}.container-center-xl{margin-right:auto;margin-left:auto;max-width:1170px}.media-container-row{display:-ms-flexbox;display:-webkit-flex;display:flex;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-content:center;-ms-flex-line-pack:center;align-content:center;-webkit-align-items:start;-ms-flex-align:start;align-items:flex-start}header{background-color:#fff;overflow:hidden;border-bottom:2px solid #000}header .navbar.navbar-short{min-height:60px}header .navbar.navbar-toggleable{flex-direction:column;-webkit-flex-direction:column;-moz-flex-direction:column;-ms-flex-direction:column}header .navbar button.navbar-toggler-left{position:absolute;left:calc(15px + .4375rem);width:26px;height:21px;top:1.125rem;padding:.25rem .75rem}header .navbar button.navbar-toggler-right{position:absolute;right:calc(15px + .4375rem);width:32px;height:26px;top:.875rem;padding:0}header .navbar button.navbar-toggler{-webkit-align-self:flex-start;-ms-flex-item-align:start;align-self:flex-start;font-size:1.25rem;line-height:1;background:0 0;border:1px solid transparent;-webkit-border-radius:0;border-radius:0}header .navbar button.navbar-toggler .hamburger span{position:absolute;left:0;width:25px;height:2px;border-right:5px;background-color:#000}header .navbar button.navbar-toggler .hamburger span:nth-child(1){top:0}header .navbar button.navbar-toggler .hamburger span:nth-child(2){top:8px}header .navbar button.navbar-toggler .hamburger span:nth-child(3){top:8px}header .navbar button.navbar-toggler .hamburger span:nth-child(4){top:16px}header .navbar button.navbar-toggler .phone{font-size:1.5625rem}header .navbar .navbar-collapse{position:relative;background-color:#fff;width:100%;flex-basis:auto!important}header .navbar .navbar-collapse ul.nav-dropdown{margin-top:2rem;margin-bottom:2rem}header .navbar .navbar-collapse ul.nav-dropdown li{font-size:1.5rem;text-decoration:none;outline:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link{color:#000;text-decoration:none;outline:0;position:relative;display:inline-block;padding:.01rem;margin:.5rem 1rem}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:first-child:before{content:\'\';position:absolute;top:0;left:0;width:.5rem;height:.5rem;background:0 0;border-top:2px solid #000;border-left:2px solid #000;opacity:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:first-child:after{content:\'\';position:absolute;top:0;right:0;width:.5rem;height:.5rem;background:0 0;border-top:2px solid #000;border-right:2px solid #000;opacity:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:last-child:before{content:\'\';position:absolute;bottom:0;left:0;width:.5rem;height:.5rem;background:0 0;border-bottom:2px solid #000;border-left:2px solid #000;opacity:0}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link span:last-child:after{content:\'\';position:absolute;bottom:0;right:0;width:.5rem;height:.5rem;background:0 0;border-bottom:2px solid #000;border-right:2px solid #000;opacity:0}section.page-header{padding-left:0!important;padding-right:0!important;margin-top:2em}section.page-header ol.breadcrumb{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;list-style:none;font-size:.75rem;margin:0;padding:0}section.page-header ol.breadcrumb li.breadcrumb-item{color:#a8a8a8;text-decoration:none}section.page-header ol.breadcrumb li.breadcrumb-item a{color:#000;text-decoration:underline}section.page-header ol.breadcrumb li.breadcrumb-item+li.breadcrumb-item::before{display:inline-block;padding-right:.5rem;padding-left:.5rem;content:\"\\2014\";color:#000}section.page-header h1{font-size:3.1875rem;color:#282828}section.portfolio{padding-left:0!important;padding-right:0!important}section.portfolio .portfolio-filter-select-md-lg-xl{display:none}section.portfolio .portfolio-filter-select-md-lg-xl nav.navbar{margin-top:.375rem;padding:0}section.portfolio .portfolio-filter-select-md-lg-xl nav.navbar .d-flex ul.navbar-nav{flex-direction:row}section.portfolio .portfolio-filter-select-md-lg-xl nav.navbar .d-flex ul.navbar-nav li.nav-item .btn-portfolio-filter{border:none;outline:0;padding:.3rem .8rem;background-color:#fff;font-size:1rem;color:#000;display:flex;text-align:center;text-decoration:none;line-height:1;border-radius:1rem;-webkit-border-radius:1rem;-moz-border-radius:1rem;-ms-border-radius:1rem;-o-border-radius:1rem}section.portfolio .portfolio-photos{margin-top:2.1875rem}section.portfolio .portfolio-photos.media-container-row{flex-wrap:wrap!important}section.portfolio .portfolio-photos.media-container-row:after,section.portfolio .portfolio-photos.media-container-row:before{content:\" \";display:table}section.portfolio .portfolio-photos.media-container-row .photo-wrap{padding:0 8px 16px 8px;background-position:50%;background-size:cover;text-align:center}section.portfolio .portfolio-photos.media-container-row .photo-wrap a img{border:none;height:auto;max-width:100%;max-height:100%}@media (min-width:768px){.media-container-row{-webkit-flex-wrap:nowrap;-ms-flex-wrap:nowrap;flex-wrap:nowrap;-webkit-justify-content:start;-ms-flex-pack:start;justify-content:flex-start;-webkit-align-content:start;-ms-flex-line-pack:start;align-content:flex-start;align-items:stretch}section.page-header .header-padding{padding-left:8.3333%}section.page-header h1{line-height:3.1875rem}section.portfolio .portfolio-filter-select-xs-sm{display:none!important}section.portfolio .portfolio-filter-select-md-lg-xl{display:block}}@media (min-width:992px){section.page-header .header-padding{padding-left:15px}}@media (min-width:1200px){body{padding-top:4.75em}.padding-left-0px-xl{padding-left:0!important}header{border-bottom:none}header .navbar{border-bottom:2px solid #000;padding-left:0!important;padding-right:0!important}header .navbar.navbar-toggleable{flex-direction:row;-webkit-flex-direction:row;-moz-flex-direction:row;-ms-flex-direction:row}header .navbar #navbarHeaderMenu{-webkit-box-pack:flex-end!important;-ms-flex-pack:flex-end!important;justify-content:flex-end!important}header .navbar #navbarHeaderMenu .nav-link{padding:.01rem!important;margin:.5rem .8rem!important}header .navbar #navbarHeaderPhone{flex-direction:column!important;-webkit-flex-direction:column!important;-moz-flex-direction:column!important;-ms-flex-direction:column!important}header .navbar #navbarHeaderPhone .navbar-nav{flex-direction:column!important;-webkit-flex-direction:column!important;-moz-flex-direction:column!important;-ms-flex-direction:column!important}header .navbar #navbarHeaderPhone .navbar-nav .nav-link{font-size:.875rem;font-weight:500;line-height:1;margin-right:0!important;padding-right:0!important}header .navbar .navbar-collapse{position:relative;margin-top:0;width:auto;top:auto;box-shadow:none;align-items:flex-end!important}header .navbar .navbar-collapse ul.nav-dropdown{margin-top:auto;margin-bottom:auto}header .navbar .navbar-collapse ul.nav-dropdown li{font-size:1rem}header .navbar .navbar-collapse ul.nav-dropdown li a.nav-link{margin-left:.3rem;margin-right:.3rem;color:#000}.portfolio-filter-select-md-lg-xl nav.navbar .d-flex ul.navbar-nav li.nav-item .btn-portfolio-filter{padding:.5rem 1rem!important;font-size:1.125rem!important}}\n  </style>\n  <link href=\"[[++site_url]]static/css/app.cadf2d06450931b1c5784a8555d50b42.css\" rel=\"preload\" as=\"style\" onload=\"this.onload=null;this.rel=\'stylesheet\'\">\n  <noscript><link href=\"[[++site_url]]static/css/app.cadf2d06450931b1c5784a8555d50b42.css\" rel=\"stylesheet\"></noscript>\n  <noscript>\n    <style>body {opacity:1}</style>\n  </noscript>\n  <script>!function(n){\"use strict\";n.loadCSS||(n.loadCSS=function(){});var o=loadCSS.relpreload={};if(o.support=function(){var e;try{e=n.document.createElement(\"link\").relList.supports(\"preload\")}catch(t){e=!1}return function(){return e}}(),o.bindMediaToggle=function(t){var e=t.media||\"all\";function a(){t.media=e}t.addEventListener?t.addEventListener(\"load\",a):t.attachEvent&&t.attachEvent(\"onload\",a),setTimeout(function(){t.rel=\"stylesheet\",t.media=\"only x\"}),setTimeout(a,3e3)},o.poly=function(){if(!o.support())for(var t=n.document.getElementsByTagName(\"link\"),e=0;e<t.length;e++){var a=t[e];\"preload\"!==a.rel||\"style\"!==a.getAttribute(\"as\")||a.getAttribute(\"data-loadcss\")||(a.setAttribute(\"data-loadcss\",!0),o.bindMediaToggle(a))}},!o.support()){o.poly();var t=n.setInterval(o.poly,500);n.addEventListener?n.addEventListener(\"load\",function(){o.poly(),n.clearInterval(t)}):n.attachEvent&&n.attachEvent(\"onload\",function(){o.poly(),n.clearInterval(t)})}\"undefined\"!=typeof exports?exports.loadCSS=loadCSS:n.loadCSS=loadCSS}(\"undefined\"!=typeof global?global:this);</script>\n</head>', 0, 'a:0:{}', 0, ''),
(15, 1, 0, 'portfolio', '', 0, 14, 0, '<section class=\"container-fluid portfolio\">\n  <div class=\"media-container-row\">\n    <div class=\"col-12\">\n      <div class=\"portfolio-filter-select-xs-sm\">\n        <select id=\"portfolio-filter-select\">\n          <!--<option value=\"all\">Все работы</option>\n          <option value=\"wedding\">Свадьбы</option>\n          <option value=\"love-story\">Love story</option>\n          <option value=\"family\">Семейные</option>\n          <option value=\"other\">Другое</option>-->\n          [[!parseCategorySelectorSelectJSON? &input=`[[*categorySelector]]` &tpl=`categorySelectorItemSelect`]]\n        </select>\n      </div>\n      <input id=\"filter-hidden\" name=\"filter-hidden\" type=\"hidden\" value=\"[[!setFilterHidden]]\">\n      <div class=\"portfolio-filter-select-md-lg-xl\">\n        <nav class=\"navbar\">\n          <div class=\"d-flex mx-auto\">\n            <ul class=\"navbar-nav\">\n              [[!parseCategorySelectorButtonJSON? &input=`[[*categorySelector]]` &tpl=`categorySelectorItemButton`]]\n            </ul>\n          </div>\n        </nav>\n      </div>\n    </div>\n  </div>\n  <div class=\"portfolio-photos media-container-row\" id=\"gallery_all\">\n    [[!parseJSON? &input=`[[*portfolioGallery]]` &tpl=`portfolioItem` &tplWithoutShowmore=`portfolioGalleryBottomWithoutShowMoreButton` &tplWithShowmore=`portfolioGalleryBottomWithShowMoreButton` &show_more=1 &limit=6 &first_load_page=1]]  \n</section>', 0, 'a:0:{}', 0, ''),
(16, 1, 0, 'portfolioItem', '', 0, 14, 0, '<div class=\"col-12 col-sm-12 col-md-6 col-lg-4 photo-wrap [[+category]]\">\n    <a href=\"[[+image]]\" data-fancybox=\"portfolio\">\n        <img class=\"img-fluid\" alt=\"[[+alt]]\" src=\"[[+image]]\">\n        <div class=\"overlay\">\n            <div class=\"element\">\n                <i class=\"fas fa-search fa-2x\"></i>\n            </div>\n        </div>\n    </a>\n</div>', 0, 'a:0:{}', 0, ''),
(17, 1, 0, 'portfolioGalleryBottomWithShowMoreButton', '', 0, 14, 0, '</div>\n<div class=\"portfolio-showmone media-container-row\">\n    <div class=\"col-12 d-flex\">\n      <button class=\"btn-flat-white mx-auto\" id=\"show_more_gallery\">ПОКАЗАТЬ ЕЩЕ</button>\n    </div>\n</div>', 0, 'a:0:{}', 0, ''),
(18, 1, 0, 'portfolioGalleryBottomWithoutShowMoreButton', '', 0, 14, 0, '</div>\n<div class=\"portfolio-showmone media-container-row\">\n    <div class=\"col-12 d-flex\">\n<button class=\"btn-flat-white mx-auto\" id=\"show_more_gallery\" style=\"visibility: hidden\">ПОКАЗАТЬ ЕЩЕ</button>\n    </div>\n</div>', 0, 'a:0:{}', 0, ''),
(19, 0, 0, 'categorySelectorItemButton', '', 0, 14, 0, '<li class=\"nav-item\">\n     <button class=\"btn-portfolio-filter [[+active]]\" value=\"[[+value]]\">[[+name]]</button>\n</li>', 0, NULL, 0, ''),
(20, 0, 0, 'categorySelectorItemSelect', '', 0, 14, 0, '<option value=\"[[+value]]\" [[+active]]>[[+name]]</option>', 0, NULL, 0, ''),
(21, 3, 0, 'google', '', 0, 0, 0, '\n    [[getSiteSettings? &case=`google`]]\n', 0, 'a:0:{}', 0, ''),
(22, 3, 0, 'orderPortfolio', '', 0, 15, 0, '<section class=\"container-fluid order\">\n  <div class=\"media-container-row\">\n    <div class=\"col-12 d-flex\">\n      <div class=\"order-form mx-auto\">\n        <h2 class=\"mx-auto text-center\">ЗАКАЗАТЬ ФОТОСЪЕМКУ</h2>\n        <form id=\"orderPortfolio\" method=\"post\">\n          <div class=\"fields\">\n            <div class=\"field\">\n              <label for=\"order-name\">Имя:</label>\n              <input type=\"text\" id=\"order-name\" placeholder=\"Имя\">\n            </div>\n            <div class=\"field\">\n              <label for=\"order-phone\">Телефон:</label>\n              <input type=\"text\" id=\"order-phone\" placeholder=\"Телефон\" class=\"mask-phone-lost\">\n            </div>\n          </div>\n          <button class=\"btn-flat-black-transparent mx-auto\" type=\"submit\" value=\"Submit\" form=\"orderPortfolio\">ОТПРАВИТЬ</button>\n        </form>\n      </div>\n    </div>\n  </div>\n</section>', 0, 'a:0:{}', 0, ''),
(23, 3, 0, 'orderportfolioEmailTemplate', '', 0, 16, 0, '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <style type=\"text/css\">\n        * { margin: 0; padding: 0; font-size: 100%; font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif; line-height: 1.65; }\n        \n        img { max-width: 100%; margin: 0 auto; display: block; }\n        \n        body, .body-wrap { width: 100% !important; height: 100%; background: white; }\n        \n        a { color: #71bc37; text-decoration: none; }\n        \n        a:hover { text-decoration: underline; }\n        \n        .text-center { text-align: center; }\n        \n        .text-right { text-align: right; }\n        \n        .text-left { text-align: left; }\n        \n        .button { display: inline-block; color: white; background: #71bc37; border: solid #71bc37; border-width: 10px 20px 8px; font-weight: bold; border-radius: 4px; }\n        \n        .button:hover { text-decoration: none; }\n        \n        h1, h2, h3, h4, h5, h6 { margin-bottom: 20px; line-height: 1.25; }\n        \n        h1 { font-size: 32px; }\n        \n        h2 { font-size: 28px; }\n        \n        h3 { font-size: 24px; }\n        \n        h4 { font-size: 20px; }\n        \n        h5 { font-size: 16px; }\n        \n        p, ul, ol { font-size: 16px; font-weight: normal; margin-bottom: 20px; }\n        \n        .container { display: block !important; clear: both !important; margin: 0 auto !important; max-width: 580px !important; }\n        \n        .container table { width: 100% !important; border-collapse: collapse; }\n        \n        .container .masthead { padding: 80px 0; background: #282828; color: white; }\n        \n        .container .masthead h1 { margin: 0 auto !important; max-width: 90%; text-transform: uppercase; }\n        \n        .container .content { background: white; padding: 30px 35px; }\n        \n        .container .content.footer { background: none; }\n        \n        .container .content.footer p { margin-bottom: 0; color: #888; text-align: center; font-size: 14px; }\n        \n        .container .content.footer a { color: #888; text-decoration: none; font-weight: bold; }\n        \n        .container .content.footer a:hover { text-decoration: underline; }\n\n    </style>\n</head>\n<body>\n<table class=\"body-wrap\">\n    <tr>\n        <td class=\"container\">\n            <table>\n                <tr>\n                    <td align=\"center\" class=\"masthead\">\n                        <h1>Новый заказ</h1>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"content\">\n                        <p>Имя клиента: [[+name]]<br/>\n                        Телефон клиента: [[+phone]]</p>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n</body>\n</html>', 0, 'a:0:{}', 0, '');
INSERT INTO `sneg_prfx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(24, 3, 0, 'modalResult', '', 0, 17, 0, '<div class=\"modal result-message\" id=\"hidden-result-message\">\n  <div class=\"inner-vertical\">\n    <div class=\"inner-gorizontal d-table-cell\">\n      <h4>ВАША ЗАЯВКА ПРИНЯТА</h4><span>Мы с Вами свяжемся в ближайшее время.</span>\n    </div>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(25, 3, 0, 'modalPackage', '', 0, 17, 0, '<div class=\"modal result-message\" id=\"hidden-order-package\">\n  <div class=\"inner-vertical w-100\">\n    <div class=\"media-container-row inner-gorizontal w-100\">\n      <div class=\"col-12 d-flex mx-auto justify-content-center\">\n        <div class=\"d-inline-block text-left\">\n          <h4 class=\"header d-block\">ЗАКАЗАТЬ ФОТОСЪЕМКУ</h4><span class=\"one-message d-block\"></span>\n        </div>\n      </div>\n    </div>\n    <form id=\"orderIndexPackage\" method=\"post\">\n      <input type=\"hidden\" id=\"order-package-type\" value=\"\">\n      <input type=\"hidden\" id=\"order-package-package\" value=\"\">\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">                   \n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-package-name\">Имя:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-8 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input type=\"text\" id=\"order-package-name\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">\n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-package-name\">Телефон:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input class=\"mask-phone\" type=\"text\" id=\"order-package-phone\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl buttons\">\n        <div class=\"col-9 offset-3 col-sm-8 offset-sm-4 col-md-8 offset-md-4 col-lg-3 offset-lg-5 col-xl-3 offset-xl-5 d-flex justify-content-center\">\n          <div class=\"d-block text-left button-wrap justify-content-center\">\n            <button class=\"btn-flat-white\" type=\"submit\" value=\"Submit\"  form=\"orderIndexPackage\">ОТПРАВИТЬ</button>\n          </div>\n        </div>\n      </div>\n    </form>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(26, 3, 0, 'orderindexpackageEmailTemplate', '', 0, 16, 0, '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <style type=\"text/css\">\n        * { margin: 0; padding: 0; font-size: 100%; font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif; line-height: 1.65; }\n        \n        img { max-width: 100%; margin: 0 auto; display: block; }\n        \n        body, .body-wrap { width: 100% !important; height: 100%; background: white; }\n        \n        a { color: #71bc37; text-decoration: none; }\n        \n        a:hover { text-decoration: underline; }\n        \n        .text-center { text-align: center; }\n        \n        .text-right { text-align: right; }\n        \n        .text-left { text-align: left; }\n        \n        .button { display: inline-block; color: white; background: #71bc37; border: solid #71bc37; border-width: 10px 20px 8px; font-weight: bold; border-radius: 4px; }\n        \n        .button:hover { text-decoration: none; }\n        \n        h1, h2, h3, h4, h5, h6 { margin-bottom: 20px; line-height: 1.25; }\n        \n        h1 { font-size: 32px; }\n        \n        h2 { font-size: 28px; }\n        \n        h3 { font-size: 24px; }\n        \n        h4 { font-size: 20px; }\n        \n        h5 { font-size: 16px; }\n        \n        p, ul, ol { font-size: 16px; font-weight: normal; margin-bottom: 20px; }\n        \n        .container { display: block !important; clear: both !important; margin: 0 auto !important; max-width: 580px !important; }\n        \n        .container table { width: 100% !important; border-collapse: collapse; }\n        \n        .container .masthead { padding: 80px 0; background: #282828; color: white; }\n        \n        .container .masthead h1 { margin: 0 auto !important; max-width: 90%; text-transform: uppercase; }\n        \n        .container .content { background: white; padding: 30px 35px; }\n        \n        .container .content.footer { background: none; }\n        \n        .container .content.footer p { margin-bottom: 0; color: #888; text-align: center; font-size: 14px; }\n        \n        .container .content.footer a { color: #888; text-decoration: none; font-weight: bold; }\n        \n        .container .content.footer a:hover { text-decoration: underline; }\n\n    </style>\n</head>\n<body>\n<table class=\"body-wrap\">\n    <tr>\n        <td class=\"container\">\n            <table>\n                <tr>\n                    <td align=\"center\" class=\"masthead\">\n                        <h1>Новый заказ</h1>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"content\">\n                        <p>Имя клиента: [[+name]]<br/>\n                        Телефон клиента: [[+phone]]<br/>\n                        Тип фотосъемки: [[+type]]<br/>\n                        Пакет услуг: [[+package]]</p>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(27, 3, 0, 'orderindexcertificateEmailTemplate', '', 0, 16, 0, '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <style type=\"text/css\">\n        * { margin: 0; padding: 0; font-size: 100%; font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif; line-height: 1.65; }\n        \n        img { max-width: 100%; margin: 0 auto; display: block; }\n        \n        body, .body-wrap { width: 100% !important; height: 100%; background: white; }\n        \n        a { color: #71bc37; text-decoration: none; }\n        \n        a:hover { text-decoration: underline; }\n        \n        .text-center { text-align: center; }\n        \n        .text-right { text-align: right; }\n        \n        .text-left { text-align: left; }\n        \n        .button { display: inline-block; color: white; background: #71bc37; border: solid #71bc37; border-width: 10px 20px 8px; font-weight: bold; border-radius: 4px; }\n        \n        .button:hover { text-decoration: none; }\n        \n        h1, h2, h3, h4, h5, h6 { margin-bottom: 20px; line-height: 1.25; }\n        \n        h1 { font-size: 32px; }\n        \n        h2 { font-size: 28px; }\n        \n        h3 { font-size: 24px; }\n        \n        h4 { font-size: 20px; }\n        \n        h5 { font-size: 16px; }\n        \n        p, ul, ol { font-size: 16px; font-weight: normal; margin-bottom: 20px; }\n        \n        .container { display: block !important; clear: both !important; margin: 0 auto !important; max-width: 580px !important; }\n        \n        .container table { width: 100% !important; border-collapse: collapse; }\n        \n        .container .masthead { padding: 80px 0; background: #282828; color: white; }\n        \n        .container .masthead h1 { margin: 0 auto !important; max-width: 90%; text-transform: uppercase; }\n        \n        .container .content { background: white; padding: 30px 35px; }\n        \n        .container .content.footer { background: none; }\n        \n        .container .content.footer p { margin-bottom: 0; color: #888; text-align: center; font-size: 14px; }\n        \n        .container .content.footer a { color: #888; text-decoration: none; font-weight: bold; }\n        \n        .container .content.footer a:hover { text-decoration: underline; }\n\n    </style>\n</head>\n<body>\n<table class=\"body-wrap\">\n    <tr>\n        <td class=\"container\">\n            <table>\n                <tr>\n                    <td align=\"center\" class=\"masthead\">\n                        <h1>Новый заказ</h1>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"content\">\n                        <p>Имя заказчика: [[+name]]<br/>\n                        Телефон заказчика: [[+phone]]<br/>\n                        Имя получателя: [[+name-who]]<br/>\n                        Телефон получателя: [[+phone-who]]<br/>\n                        Описание съемки: [[+text]]</p>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(28, 3, 0, 'modalCertificate', '', 0, 17, 0, '<div class=\"modal result-message\" id=\"hidden-certificate\">\n  <div class=\"inner-vertical w-100\">\n    <div class=\"media-container-row inner-gorizontal w-100\">\n      <div class=\"col-12 d-flex mx-auto justify-content-center\">\n        <div class=\"d-inline-block text-left\">\n          <h4 class=\"header d-block\">КУПИТЬ ПОДАРОЧНЫЙ СЕРТИФИКАТ</h4>\n        </div>\n      </div>\n    </div>\n    <form id=\"orderIndexCertificate\" method=\"post\">\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl\">\n        <div class=\"col-9 offset-3 col-sm-8 offset-sm-4 col-md-8 offset-md-4 col-lg-3 offset-lg-5 col-xl-3 offset-xl-5 d-flex justify-content-center\">\n          <div class=\"d-block text-left button-wrap justify-content-center bold\"><span>Ваши данные:</span></div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">                   \n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-сertificate-name\">Имя:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-8 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input type=\"text\" id=\"order-сertificate-name\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">\n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-сertificate-name\">Телефон:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input class=\"mask-phone\" type=\"text\" id=\"order-сertificate-phone\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl\">\n        <div class=\"col-9 offset-3 col-sm-8 offset-sm-4 col-md-8 offset-md-4 col-lg-3 offset-lg-5 col-xl-3 offset-xl-5 d-flex justify-content-center\">\n          <div class=\"d-block text-left button-wrap justify-content-center bold\"><span>Кому дарите?</span></div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">                   \n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-сertificate-name-who\">Имя:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-8 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input type=\"text\" id=\"order-сertificate-name-who\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">\n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-сertificate-phone-who\">Телефон:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input class=\"mask-phone\" type=\"text\" id=\"order-сertificate-phone-who\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">\n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-сertificate-name-who\">Какую съемку хотите подарить?</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <textarea id=\"order-сertificate-text\">               </textarea>\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl buttons\">\n        <div class=\"col-9 offset-3 col-sm-8 offset-sm-4 col-md-8 offset-md-4 col-lg-3 offset-lg-5 col-xl-3 offset-xl-5 d-flex justify-content-center\">\n          <div class=\"d-block text-left button-wrap justify-content-center\">\n            <button class=\"btn-flat-white\" type=\"submit\" value=\"Submit\"  form=\"orderIndexCertificate\">ОТПРАВИТЬ</button>\n          </div>\n        </div>\n      </div>\n    </form>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(29, 3, 0, 'modalPhotocourse', '', 0, 17, 0, '<div class=\"modal result-message\" id=\"hidden-photocourse\">\n  <div class=\"inner-vertical w-100\">\n    <div class=\"media-container-row inner-gorizontal w-100\">\n      <div class=\"col-12 d-flex mx-auto justify-content-center\">\n        <div class=\"d-inline-block text-left\">\n          <h4 class=\"header d-block\">[[!getmodalHeaderPhotocourse]]</h4>\n        </div>\n      </div>\n    </div>\n    <form id=\"orderIndexPhotocourse\" method=\"post\">\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">                   \n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-photocourse-name\">Имя:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-8 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input type=\"text\" id=\"order-photocourse-name\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl inputs\">\n        <div class=\"col-3 col-sm-4 col-md-4 col-lg-5 col-xl-5 d-flex justify-content-end padding-right-0\">\n          <div class=\"d-inline-block text-right\">\n            <label class=\"text-right\" for=\"order-photocourse-name\">Телефон:</label>\n          </div>\n        </div>\n        <div class=\"col-9 col-sm-8 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-start\">\n          <div class=\"d-inline-block\">\n            <input class=\"mask-phone\" type=\"text\" id=\"order-photocourse-phone\">\n          </div>\n        </div>\n      </div>\n      <div class=\"media-container-row inner-gorizontal w-100 container-center-xl buttons\">\n        <div class=\"col-9 offset-3 col-sm-8 offset-sm-4 col-md-8 offset-md-4 col-lg-3 offset-lg-5 col-xl-3 offset-xl-5 d-flex justify-content-center\">\n          <div class=\"d-block text-left button-wrap justify-content-center\">\n            <button class=\"btn-flat-white\" type=\"submit\" value=\"Submit\"  form=\"orderIndexPhotocourse\">ОТПРАВИТЬ</button>\n          </div>\n        </div>\n      </div>\n    </form>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(30, 3, 0, 'orderindexphotocourseEmailTemplate', '', 0, 16, 0, '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <style type=\"text/css\">\n        * { margin: 0; padding: 0; font-size: 100%; font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif; line-height: 1.65; }\n        \n        img { max-width: 100%; margin: 0 auto; display: block; }\n        \n        body, .body-wrap { width: 100% !important; height: 100%; background: white; }\n        \n        a { color: #71bc37; text-decoration: none; }\n        \n        a:hover { text-decoration: underline; }\n        \n        .text-center { text-align: center; }\n        \n        .text-right { text-align: right; }\n        \n        .text-left { text-align: left; }\n        \n        .button { display: inline-block; color: white; background: #71bc37; border: solid #71bc37; border-width: 10px 20px 8px; font-weight: bold; border-radius: 4px; }\n        \n        .button:hover { text-decoration: none; }\n        \n        h1, h2, h3, h4, h5, h6 { margin-bottom: 20px; line-height: 1.25; }\n        \n        h1 { font-size: 32px; }\n        \n        h2 { font-size: 28px; }\n        \n        h3 { font-size: 24px; }\n        \n        h4 { font-size: 20px; }\n        \n        h5 { font-size: 16px; }\n        \n        p, ul, ol { font-size: 16px; font-weight: normal; margin-bottom: 20px; }\n        \n        .container { display: block !important; clear: both !important; margin: 0 auto !important; max-width: 580px !important; }\n        \n        .container table { width: 100% !important; border-collapse: collapse; }\n        \n        .container .masthead { padding: 80px 0; background: #282828; color: white; }\n        \n        .container .masthead h1 { margin: 0 auto !important; max-width: 90%; text-transform: uppercase; }\n        \n        .container .content { background: white; padding: 30px 35px; }\n        \n        .container .content.footer { background: none; }\n        \n        .container .content.footer p { margin-bottom: 0; color: #888; text-align: center; font-size: 14px; }\n        \n        .container .content.footer a { color: #888; text-decoration: none; font-weight: bold; }\n        \n        .container .content.footer a:hover { text-decoration: underline; }\n\n    </style>\n</head>\n<body>\n<table class=\"body-wrap\">\n    <tr>\n        <td class=\"container\">\n            <table>\n                <tr>\n                    <td align=\"center\" class=\"masthead\">\n                        <h1>Новый заказ</h1>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"content\">\n                        <p>Имя клиента: [[+name]]<br/>\n                        Телефон клиента: [[+phone]]</p>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(31, 3, 0, 'headerMenuElement', '', 0, 0, 0, '<li class=\"nav-item\"><a class=\"nav-link\" href=\"[[++site_url]]#[[+anchor]]\">[[+text]]<span></span><span></span></a></li>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_plugins`
--

DROP TABLE IF EXISTS `sneg_prfx_site_plugins`;
CREATE TABLE `sneg_prfx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_plugins`
--

INSERT INTO `sneg_prfx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'TinyMCERTE', '', 0, 1, 0, '/**\n * TinyMCE Rich Tech Editor\n *\n */\n$corePath = $modx->getOption(\'tinymcerte.core_path\', null, $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/tinymcerte/\');\n/** @var TinyMCERTE $tinymcerte */\n$tinymcerte = $modx->getService(\n    \'tinymcerte\',\n    \'TinyMCERTE\',\n    $corePath . \'model/tinymcerte/\',\n    array(\n        \'core_path\' => $corePath\n    )\n);\n\n$className = \'TinyMCERTE\' . $modx->event->name;\n$modx->loadClass(\'TinyMCERTEPlugin\', $tinymcerte->getOption(\'modelPath\') . \'tinymcerte/events/\', true, true);\n$modx->loadClass($className, $tinymcerte->getOption(\'modelPath\') . \'tinymcerte/events/\', true, true);\nif (class_exists($className)) {\n    /** @var TinyMCERTEPlugin $handler */\n    $handler = new $className($modx, $scriptProperties);\n    $handler->run();\n}\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(2, 0, 0, 'SimpleAceCodeEditor', 'Ace Code Editor *simple* integration - 1.4.4-pl', 0, 0, 0, '/**\r\n * Simple Ace Source Editor Plugin\r\n * https://github.com/Indigo744/Modx-Revo-Simple-Ace-Code-Editor\r\n *\r\n * Create plugin and paste this code or install it from Package Manager\r\n * Set which_element_editor system option to SimpleAceCodeEditor\r\n *\r\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\r\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\r\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\r\n * and OnPluginSave to force cache refresh\r\n * \r\n * Properties:\r\n *\r\n *     AcePath: URL or path to ACE javascript file\r\n *              default: https://cdnjs.cloudflare.com/ajax/libs/ace/1.3.3/ace.js\r\n *\r\n *     Theme: editor theme name (you can test them all here: https://ace.c9.io/build/kitchen-sink.html)\r\n *            default: monokai\r\n *\r\n *     ReplaceCTRLDKbdShortcut: Replace the CTRL-D (or CMD-D) keyboard shortcut to perform a more sensible action\r\n *                              duplicate the current line or selection (instead of deleting, which is the default behavior)\r\n *                              default: true\r\n *\r\n *     Autocompletion: Enable Auto-completion: none, basic (show on CTRL-Space) or live (show on typing)\r\n *                     Note that \"ext-language_tools.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-language_tools.js)\r\n *                     default: basic\r\n *\r\n *     SettingsMenu: Add a settings menu accessible with CTR-Q (or CMD-Q)\r\n *                   Note that \"ext-settings_menu.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-settings_menu.js)\r\n *                   default: false\r\n *\r\n *     Spellcheck: Enable spell-check\r\n *                 Note that \"ext-spellcheck.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-spellcheck.js)\r\n *                 default: false\r\n *\r\n *     EmmetPath: URL or path to Emmet js file\r\n *                For more information, see https://github.com/cloud9ide/emmet-core\r\n *                default: https://cloud9ide.github.io/emmet-core/emmet.js\r\n *\r\n *     Emmet: Enable Emmet\r\n *            Note that Emmet JS file must be loaded first (see EmmetPath, it must be correctly set)\r\n *            Note that \"ext-emmet.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-emmet.js)\r\n *            It is recommended to disable ReplaceCTRLDKbdShortcut property when using Emmet (as it replace an Emmet shortcut CTRL-D)\r\n *            default: false\r\n *\r\n *     AcePrintMarginColumn: Print margin column position\r\n *                           Set the character position of the print margin (for instance useful if you like to code with 80 chars wide max)\r\n *                           Set to 0 to disable it completely\r\n *                           default: 0 (disabled)\r\n *\r\n *     ChunkDetectMIMEShebang: Enable \'shebang-style\' MIME detection for chunks (in description or in the first line of chunk content)\r\n *                             This is particularly useful if your chunk contains directly JS, or SASS, or anything different than HTML...\r\n *                             Supported MIME values are text/x-smarty, text/html, application/xhtml+xml, text/css, text/x-scss, \r\n *                                                       text/x-sass, text/x-less, image/svg+xml, application/xml, text/xml, text/javascript, \r\n *                                                       application/javascript, application/json, text/x-php, application/x-php, text/x-sql, \r\n *                                                       text/x-markdown, text/plain, text/x-twig\r\n *                             default: true\r\n * \r\n *\r\n * If you want to edit a property, create your own property set first.\r\n *\r\n *\r\n * Based on Ace Source Editor Plugin by Danil Kostin\r\n *\r\n * @package SimpleAceCodeEditor\r\n *\r\n * @var array $scriptProperties\r\n * @var Ace $ace\r\n */\r\n\r\n/** Package information (set at build) **/\r\n$pluginName = \'SimpleAceCodeEditor\';\r\n$pluginVersion = \'1.4.4-pl\';\r\n\r\n/** Force mgr refresh on plugin save **/\r\nif ($modx->event->name == \'OnPluginSave\') {\r\n    if ($plugin->get(\'name\') === $pluginName) {\r\n        $modx->cacheManager->refresh(array(\r\n            \'context_settings\' => array(\'contexts\' => array(\'mgr\'))\r\n        ));\r\n    }\r\n    return;\r\n}\r\n\r\n/** Register RTE **/\r\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\r\n    $modx->event->output($pluginName);\r\n    return;\r\n}\r\n\r\n/** Check if RTE (element) setting is set to this **/\r\nif ($modx->getOption(\'which_element_editor\', null) !== $pluginName) {\r\n    return;\r\n}\r\n\r\n/** Get properties **/\r\n$AcePath = $modx->getoption(\'AcePath\', $scriptProperties, $modx->getOption($pluginName . \'.AcePath\', null, \"https://cdnjs.cloudflare.com/ajax/libs/ace/1.3.3/ace.js\"));\r\n$EmmetPath = $modx->getoption(\'EmmetPath\', $scriptProperties, $modx->getOption($pluginName . \'.EmmetPath\', null, \"https://cloud9ide.github.io/emmet-core/emmet.js\"));\r\n$AceTheme = $modx->getoption(\'Theme\', $scriptProperties, $modx->getOption($pluginName . \'.Theme\', null, \'monokai\'));\r\n$AceReplaceCTRLDKbdShortcut = $modx->getoption(\'ReplaceCTRLDKbdShortcut\', $scriptProperties, $modx->getOption($pluginName . \'.ReplaceCTRDKbdShortcut\', null, true));\r\n$AceAutocompletion = $modx->getoption(\'Autocompletion\', $scriptProperties, $modx->getOption($pluginName . \'.Autocompletion\', null, \'basic\'));\r\n$AceSettingsMenu = $modx->getoption(\'SettingsMenu\', $scriptProperties, $modx->getOption($pluginName . \'.SettingsMenu\', null, false));\r\n$AceSpellcheck = $modx->getoption(\'Spellcheck\', $scriptProperties, $modx->getOption($pluginName . \'.Spellcheck\', null, false));\r\n$AceEmmet = $modx->getoption(\'Emmet\', $scriptProperties, $modx->getOption($pluginName . \'.Emmet\', null, false));\r\n$AcePrintMarginColumn = $modx->getoption(\'AcePrintMarginColumn\', $scriptProperties, $modx->getOption($pluginName . \'.AcePrintMarginColumn\', null, 0));\r\n$AceChunkDetectMIMEShebang = $modx->getoption(\'ChunkDetectMIMEShebang\', $scriptProperties, $modx->getOption($pluginName . \'.ChunkDetectMIMEShebang\', null, true));\r\n\r\n/** Inits script options **/\r\n$AceAssetsUrl = $modx->getOption(\'assets_url\') . \'components/\' . strtolower($pluginName);\r\n$AceBasePath = dirname($AcePath);\r\n$scriptPaths = array($AcePath);\r\n$editorOptions = array();\r\n$rendererOptions = array(\r\n    \'theme\' => \"ace/theme/$AceTheme\",\r\n    \'showPrintMargin\' => $AcePrintMarginColumn > 0 ? true : false,\r\n    \'printMarginColumn\' => $AcePrintMarginColumn > 0 ? $AcePrintMarginColumn : 80,\r\n);\r\n$editorAdditionalScript = \"\\n\";\r\n\r\n/** Handle proper CTRL-D **/\r\nif ($AceReplaceCTRLDKbdShortcut == true) {\r\n    $editorAdditionalScript .= <<<JSSCRIPT\r\n        editor.commands.removeCommand(\'del\');\r\n        editor.commands.addCommand({\r\n            name: \"del\",\r\n            bindKey: {win: \"Delete\",  mac: \"Delete|Shift-Delete\"},\r\n            exec: function(editor) { editor.remove(\"right\"); },\r\n            multiSelectAction: \"forEach\",\r\n            scrollIntoView: \"cursor\"\r\n        });\r\n        editor.commands.addCommand({\r\n            name: \"Duplicate Selection\",\r\n            bindKey: {win: \"Ctrl-D\", mac: \"Command-D\"},\r\n            exec: function(editor) { editor.duplicateSelection(); },\r\n            scrollIntoView: \"cursor\",\r\n            multiSelectAction: \"forEach\"\r\n        });\r\nJSSCRIPT;\r\n}\r\n\r\n/** Handle autocompletion extension **/\r\nif ($AceAutocompletion === \'live\' || $AceAutocompletion === \'basic\') {\r\n    $editorOptions[\'enableBasicAutocompletion\'] = true;\r\n    $editorOptions[\'enableLiveAutocompletion\'] = $AceAutocompletion === \'live\';\r\n    array_push($scriptPaths, \"$AceBasePath/ext-language_tools.js\");\r\n}\r\n\r\n/** Handle settings_menu extension **/\r\nif ($AceSettingsMenu == true) {\r\n    $editorAdditionalScript .= <<<JSSCRIPT\r\n        var RequiresettingsMenu = ace.require(\'ace/ext/settings_menu\');\r\n        if (RequiresettingsMenu) {\r\n            // Init with current editor\r\n            RequiresettingsMenu.init(editor);\r\n            // Set CTRL-Q shortcut\r\n        	editor.commands.addCommands([{\r\n        		name: \"showSettingsMenu\",\r\n        		bindKey: {win: \"Ctrl-q\", mac: \"Ctrl-q\"},\r\n        		exec: function(editor) {\r\n        			editor.showSettingsMenu();\r\n        		},\r\n        		readOnly: true\r\n        	}]);\r\n        }\r\nJSSCRIPT;\r\n    array_push($scriptPaths, \"$AceBasePath/ext-settings_menu.js\");\r\n} \r\n\r\n/** Handle Spellcheck extension **/\r\nif ($AceSpellcheck == true) {\r\n    $editorOptions[\'spellcheck\'] = true;\r\n    array_push($scriptPaths, \"$AceBasePath/ext-spellcheck.js\");\r\n} \r\n\r\n/** Handle Emmet extension **/\r\nif ($AceEmmet == true) {\r\n    $editorOptions[\'enableEmmet\'] = true;\r\n    array_push($scriptPaths, $EmmetPath);\r\n    array_push($scriptPaths, \"$AceBasePath/ext-emmet.js\");\r\n}\r\n\r\n/** Corresponding arrays **/\r\n$mimeTypeToMode = array(\r\n    \'text/x-smarty\'                     => \'smarty\',\r\n    \'text/html\'                         => \'html\',\r\n    \'application/xhtml+xml\'             => \'html\',\r\n    \'text/css\'                          => \'css\',\r\n    \'text/x-scss\'                       => \'scss\',\r\n    \'text/x-sass\'                       => \'scss\',\r\n    \'text/x-less\'                       => \'less\',\r\n    \'image/svg+xml\'                     => \'svg\',\r\n    \'application/xml\'                   => \'xml\',\r\n    \'text/xml\'                          => \'xml\',\r\n    \'text/javascript\'                   => \'javascript\',\r\n    \'application/javascript\'            => \'javascript\',\r\n    \'application/json\'                  => \'json\',\r\n    \'text/x-php\'                        => \'php\',\r\n    \'application/x-php\'                 => \'php\',\r\n    \'text/x-sql\'                        => \'sql\',\r\n    \'application/sql\'                   => \'sql\',\r\n    \'text/x-markdown\'                   => \'markdown\',\r\n    \'text/markdown\'                     => \'markdown\',\r\n    \'text/plain\'                        => \'text\',\r\n    \'text/x-twig\'                       => \'twig\',\r\n    \'application/x-extension-htaccess\'  => \'apache_conf\',\r\n    \'application/vnd.coffeescript\'      => \'coffee\',\r\n    \'application/x-typescript\'          => \'typescript\',\r\n    \'text/x-ini\'                        => \'ini\',\r\n    \'text/x-ejs\'                        => \'ejs\',\r\n    \'application/x-perl\'                => \'perl\',\r\n);\r\n\r\n$extensionMap = array(\r\n    \'tpl\'       => \'text/html\',\r\n    \'htm\'       => \'text/html\',\r\n    \'html\'      => \'text/html\',\r\n    \'css\'       => \'text/css\',\r\n    \'scss\'      => \'text/x-scss\',\r\n    \'sass\'      => \'text/x-sass\',\r\n    \'less\'      => \'text/x-less\',\r\n    \'svg\'       => \'image/svg+xml\',\r\n    \'xml\'       => \'application/xml\',\r\n    \'xsl\'       => \'application/xml\',\r\n    \'js\'        => \'application/javascript\',\r\n    \'json\'      => \'application/json\',\r\n    \'php\'       => \'application/x-php\',\r\n    \'sql\'       => \'text/x-sql\',\r\n    \'txt\'       => \'text/plain\',\r\n    \'htaccess\'  => \'application/x-extension-htaccess\',\r\n    \'coffee\'    => \'application/vnd.coffeescript\',\r\n    \'litcoffee\' => \'application/vnd.coffeescript\',\r\n    \'ts\'        => \'application/x-typescript\',\r\n    \'ini\'       => \'text/x-ini\',\r\n    \'ejs\'       => \'text/x-ejs\',\r\n    \'md\'        => \'text/markdown\',\r\n    \'sql\'       => \'application/x-perl\',\r\n);\r\n\r\n\r\n/** Adapt field/mime depending on event type **/\r\n$mimeENGINE= false;\r\n$field = false;\r\n$mixedMode = true;\r\nswitch ($modx->event->name) {\r\n    case \'OnSnipFormPrerender\':\r\n        // Snippets are PHP\r\n        $field = \'modx-snippet-snippet\';\r\n        $mimeType = \'application/x-php\';\r\n        $mixedMode = false;\r\n        break;\r\n    case \'OnTempFormPrerender\':\r\n        // Templates are HTML\r\n        $field = \'modx-template-content\';\r\n        $mimeType = \'text/html\';\r\n        $mixedMode = true;\r\n        break;\r\n    case \'OnChunkFormPrerender\':\r\n        // Chunks are HTML\r\n        // unless it is static then we look at the file extension\r\n        // unless it a proper mime type is set in description or first line of chunk!\r\n        $field = \'modx-chunk-snippet\';\r\n        $mixedMode = true;\r\n        \r\n        if ($modx->controller->chunk) {\r\n            /** Try to detect shebang **/\r\n            if ($AceChunkDetectMIMEShebang) {\r\n                // Retrieve description\r\n                $chunkDescription = $modx->controller->chunk->get(\'description\');\r\n                // Retrieve first line of chunk content\r\n                $chunkContentFirstLine = strtok($modx->controller->chunk->getContent(), \"\\n\");\r\n                // Loop through known mime\r\n                foreach($mimeTypeToMode as $currMimeType => $mode) {\r\n                    if (strpos($chunkDescription, $currMimeType) !== FALSE || \r\n                        strpos($chunkContentFirstLine, $currMimeType) !== FALSE) \r\n                    {\r\n                        $mimeType = $currMimeType;\r\n                        break;\r\n                    }\r\n                }\r\n            }\r\n            \r\n            /** For static file, try to detect through file extension **/\r\n            if (!$mimeType && $modx->controller->chunk->isStatic()) {\r\n                $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\r\n                $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\r\n            }\r\n        }\r\n        \r\n        /* Default to HTML */\r\n        if (!$mimeType) {\r\n            $mimeType = \'text/html\';\r\n        }\r\n        \r\n        break;\r\n    case \'OnPluginFormPrerender\':\r\n        // Plugins are PHP\r\n        $field = \'modx-plugin-plugincode\';\r\n        $mimeType = \'application/x-php\';\r\n        $mixedMode = false;\r\n        break;\r\n    case \'OnFileCreateFormPrerender\':\r\n        // On file creation, use plain text\r\n        $field = \'modx-file-content\';\r\n        $mimeType = \'text/plain\';\r\n        $mixedMode = true;\r\n        break;\r\n    case \'OnFileEditFormPrerender\':\r\n        // For file editing, we look at the file extension\r\n        $field = \'modx-file-content\';\r\n        // Identify mime type according to extension\r\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\r\n        $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\r\n        $mixedMode = true;\r\n        break;\r\n    case \'OnDocFormPrerender\':\r\n        // For document, we look at the content type\r\n        // But we wont show anything if another RTE is set (e.g. CKEditor or TinyMCE)\r\n        if (!$modx->controller->resourceArray) {\r\n            return;\r\n        }\r\n        if ($modx->getOption(\'use_editor\')) {\r\n            $richText = $modx->controller->resourceArray[\'richtext\'];\r\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\r\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\r\n                return;\r\n            }\r\n        }\r\n        $field = \'ta\';\r\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\r\n        $mixedMode = true;\r\n        break;\r\n    default:\r\n        return;\r\n}\r\n\r\n/** If field found, include the javascript code to load Ace **/\r\nif ($field) {\r\n    // Get corresponding Ace mode according to mime type\r\n    $mode = isset($mimeTypeToMode[$mimeType]) ? $mimeTypeToMode[$mimeType] : \'text\';\r\n    \r\n    // Handle mixed mode\r\n    if ($mixedMode == true) {\r\n        // Mixed mode, set needed files and functions \r\n        \r\n        array_push($scriptPaths, \"$AceAssetsUrl/modx_highlight_rules.js\");\r\n        \r\n        $setModeScript = <<<JSSCRIPT\r\n            /** \r\n             * Function to create a mixed mode with MODX tags\r\n             * Based on the work of danyaPostfactum, see link below\r\n             * https://github.com/danyaPostfactum/modx-ace/blob/master/assets/components/ace/modx.texteditor.js\r\n             */\r\n            var createModxMixedMode = function(Mode) {\r\n                var oop = ace.require(\"ace/lib/oop\");\r\n                \r\n                /* Create the new mixed mode */\r\n                var ModxMixedMode = function() {\r\n                    Mode.call(this);\r\n                    \r\n                    // Save the parent rules to be able to call them later\r\n                    var parentHighlightRules = this.HighlightRules;\r\n                    \r\n                    /* Create the new mixed rules */\r\n                    var mixedHighlightRules = function() {\r\n                        // Set parent rules\r\n                        parentHighlightRules.call(this);\r\n                        \r\n                        // Set modx rules (function available in file modx_highlight_rules.js already loaded)\r\n                        modxCustomHighlightRules.call(this);\r\n                        \r\n                        // Normalized!\r\n                        this.normalizeRules();\r\n                    }\r\n                    \r\n                    // Inherit prototype from parent rules\r\n                    oop.inherits(mixedHighlightRules, parentHighlightRules);\r\n                    \r\n                    // Set mixed highlight rules\r\n                    this.HighlightRules = mixedHighlightRules;\r\n                }\r\n                \r\n                // Inherit prototype from parent Mode\r\n                oop.inherits(ModxMixedMode, Mode);\r\n                \r\n                // Handle the case were a worker is defined in parent mode\r\n                if (Mode.prototype.createWorker) {\r\n                    ModxMixedMode.prototype.createWorker = function(session) {\r\n                        // Call parent without \'this\'\r\n                        var worker = Mode.prototype.createWorker(session);\r\n                        if (worker) {\r\n                            // Replace onError function to handle modx tag\r\n                            worker.on(\"error\", function(e) {\r\n                                var annotations = [];\r\n                                var idx_max = e.data.length;\r\n                                // Loop through errors, and silence errors when a modx tag [[ exists\r\n                                for(var i = 0 ; i < idx_max ; i++) {\r\n                                    // Get line\r\n                                    var line = session.getLine(e.data[i].row);\r\n                                    if (line.indexOf(\'[[\') === -1) {\r\n                                        // No modx tag, add to annotations\r\n                                        annotations.push(e.data[i]);\r\n                                    }\r\n                                }\r\n                                session.setAnnotations(annotations);\r\n                            });\r\n                        }\r\n                        return worker;\r\n                    };\r\n                }\r\n                \r\n                // We\'re done. Return the new mixed mode\r\n                return new ModxMixedMode();\r\n            };\r\n            \r\n            /** \r\n             * Function to set a mixed mode\r\n             */\r\n            var setMixedMode = function(editor, mode) {\r\n                var config = ace.require(\'ace/config\');\r\n                config.loadModule([\"mode\", \'ace/mode/\' + mode], function(module) {\r\n                    var mode = createModxMixedMode(module.Mode);\r\n                    editor.session.setMode(mode);\r\n                }.bind(this));\r\n            }\r\n                \r\n            setMixedMode(editor, \"{$mode}\");\r\nJSSCRIPT;\r\n\r\n    } else {\r\n        // No mixed mode, simply set mode\r\n        $setModeScript = \"editor.session.setMode(\'ace/mode/{$mode}\');\";\r\n    }\r\n    \r\n    // Convert options to JSON object\r\n    $editorOptions = json_encode($editorOptions, JSON_FORCE_OBJECT);\r\n    $rendererOptions = json_encode($rendererOptions, JSON_FORCE_OBJECT);\r\n    \r\n    // Generate cache busting query string\r\n    // Based on current plugin version + hash of all properties\r\n    $propertiesHash = md5(\"$AcePath $EmmetPath $AceTheme $AceReplaceCTRLDKbdShortcut $AceAutocompletion $AceSettingsMenu $AceSpellcheck $AceEmmet $AceChunkDetectMIMEShebang\");\r\n    $CacheBustingQSValue = \"?v=$pluginVersion-$propertiesHash\";\r\n\r\n    // Generate final script!\r\n    $script = \"\";\r\n    foreach($scriptPaths as $scriptPath) {\r\n        // Include file\r\n        $script .= \"<script src=\'$scriptPath$CacheBustingQSValue\' type=\'text/javascript\' charset=\'utf-8\'></script>\\n\";\r\n    }\r\n    \r\n    // The script...\r\n    $script .= <<<JSSCRIPT\r\n<script type=\"text/javascript\">\r\n    (function() {\r\n        \"use strict\";\r\n    \r\n        // Max number of tries\r\n        var MAX_TRIES = 10;\r\n        \r\n        // Time in ms to wait between each tries\r\n        var WAIT_BETWEEN_TRIES_MS = 100;\r\n        \r\n        // Hold the current try number\r\n        var currentTry = 0;\r\n        \r\n        // Will hold the textarea DOM element\r\n        var textarea;\r\n        \r\n        // Useful dom lib\r\n        var dom = ace.require(\"ace/lib/dom\");\r\n        \r\n        /** \r\n         * Function Init ACE editor\r\n         * Uses textarea variable\r\n         */\r\n        var initAceCodeEditor = function() {\r\n            // Set parent element to relative position\r\n            // Hence the Ace Editor div absolute positionning will be relative to it\r\n            textarea.parentNode.style.position = \'relative\';\r\n            \r\n            // Create div element for Ace\r\n            var aceEditorDiv = document.createElement(\"div\");\r\n            setEditorSize(aceEditorDiv);\r\n            \r\n            // Append to DOM before the textarea\r\n            textarea.parentNode.insertBefore(aceEditorDiv, textarea);\r\n            \r\n            // Hide textarea\r\n            textarea.style.visibility = \'hidden\';\r\n            \r\n            // Create Ace editor !\r\n            var editor = ace.edit(aceEditorDiv);\r\n            \r\n            // Additional scripts\r\n            {$editorAdditionalScript}\r\n            \r\n            // Fullscreen toggle support\r\n            editor.commands.addCommand({\r\n                name: \"Toggle Fullscreen\",\r\n                bindKey: \"F11\",\r\n                exec: function(editor) {\r\n                    // Toggle class\r\n                    dom.toggleCssClass(editor.container, \"fullScreen\");\r\n                    // Get current situation\r\n                    var isFullScreen = dom.hasCssClass(editor.container, \"fullScreen\");\r\n                    // Set size and resize as needed\r\n                    setEditorSize(editor.container, isFullScreen);\r\n                    editor.resize();\r\n                    // Handle searchbox position as needed\r\n                    handleSearchBoxPosition(editor, isFullScreen);\r\n                }\r\n            });\r\n            \r\n            // Search while fullscreen support\r\n            editor.commands.addCommand({\r\n                name: \'CustomFind\',\r\n                bindKey: {win: \'Ctrl-F\', mac: \'Command-F\'},\r\n                exec: function(editor) { handleSearchBox(editor); }\r\n            });\r\n            \r\n            // Replace while fullscreen support\r\n            editor.commands.addCommand({\r\n                name: \'CustomReplace\',\r\n                bindKey: {win: \'Ctrl-H\', mac: \'Command-Option-F\'},\r\n                exec: function(editor) { handleSearchBox(editor, true); }\r\n            });\r\n            \r\n            // Additionnal Replace command\r\n            editor.commands.addCommand({\r\n                name: \'additionnalReplace\',\r\n                bindKey: {win: \'Ctrl-R\', mac: \'Command-R\'},\r\n                exec: function(editor) { handleSearchBox(editor, true); }\r\n            });\r\n        \r\n            // Ace Editor settings\r\n            editor.setOptions({$editorOptions});\r\n            editor.renderer.setOptions({$rendererOptions});\r\n            \r\n            {$setModeScript}\r\n            \r\n            editor.getSession().setValue(textarea.value);\r\n            \r\n            // Keep Ace and textarea synchronized\r\n            editor.on(\"change\", function() {\r\n                textarea.value = editor.getSession().getValue();\r\n            });\r\n            \r\n        }\r\n        \r\n        /** \r\n         * Function search for the textarea\r\n         * Recursive function\r\n         * If textarea is not found, wait a bit and search again\r\n         */\r\n        var tryToGetTextArea = function() {\r\n            // Try to find the textarea\r\n            textarea = document.getElementById(\"{$field}\");\r\n            \r\n            if (textarea) {\r\n                // Element found, init!\r\n                initAceCodeEditor(textarea);\r\n            } else {\r\n                // Damn, not found. Wait a bit and try again\r\n                setTimeout(function() {\r\n                    currentTry++;\r\n                    if (currentTry <= MAX_TRIES) {\r\n                        tryToGetTextArea();\r\n                    }\r\n                }, WAIT_BETWEEN_TRIES_MS);\r\n            }\r\n        }\r\n        \r\n        /** \r\n         * Function to set editor size between fullscreen or not\r\n         */\r\n        var setEditorSize = function(editorContainer, isFullScreen) {\r\n            if (isFullScreen) {\r\n                editorContainer.style.position = \'fixed\';\r\n                editorContainer.style.top = \'55px\';\r\n                editorContainer.style.bottom = \'0\';\r\n                editorContainer.style.left = \'0\';\r\n                editorContainer.style.right = \'0\';\r\n                editorContainer.style[\'z-index\'] = \'10\'; // Top right menu has z-index of 11\r\n                \r\n                editorContainer.style.width = null;\r\n                editorContainer.style.height = null;\r\n            } else {\r\n                editorContainer.style.position = \'absolute\';\r\n                editorContainer.style.width = \'100%\';\r\n                editorContainer.style.height = \'100%\';\r\n                \r\n                editorContainer.style.top = null;\r\n                editorContainer.style.bottom = null;\r\n                editorContainer.style.left = null;\r\n                editorContainer.style.right = null;\r\n                editorContainer.style[\'z-index\'] = null;\r\n            }\r\n        }\r\n        \r\n        /** \r\n         * Function to handle searchbox (show/hide)\r\n         */\r\n        var handleSearchBox = function(editor, isReplace) {\r\n            // Load extension\r\n            ace.config.loadModule(\"ace/ext/searchbox\", function(e) {\r\n                // Launch searchbox\r\n                e.Search(editor, isReplace);\r\n                // Handle searchbox position\r\n                handleSearchBoxPosition(editor, dom.hasCssClass(editor.container, \"fullScreen\"));\r\n            });\r\n        }\r\n        \r\n        /** \r\n         * Function to handle searchbox position depending on fullscreen or not\r\n         */\r\n        var handleSearchBoxPosition = function(editor, isFullScreen) {\r\n            if (!editor.searchBox) return;\r\n            \r\n            if (isFullScreen) {\r\n                // If fullscreen, put searchbox on bottom\r\n                editor.searchBox.element.style.top = \'auto\';\r\n                editor.searchBox.element.style.bottom = \'0\';\r\n            } else {\r\n                // If not, unset any specific style value previously set\r\n                editor.searchBox.element.style.top = null;\r\n                editor.searchBox.element.style.bottom = null;\r\n            }\r\n        }\r\n        \r\n        // Start searching!\r\n        tryToGetTextArea();\r\n    })();\r\n</script>\r\nJSSCRIPT;\r\n\r\n    $modx->controller->addHtml($script);\r\n}', 0, 'a:10:{s:7:\"AcePath\";a:7:{s:4:\"name\";s:7:\"AcePath\";s:4:\"desc\";s:51:\"URL or path to ACE javascript file (and extensions)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:55:\"https://cdnjs.cloudflare.com/ajax/libs/ace/1.3.3/ace.js\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"Theme\";a:7:{s:4:\"name\";s:5:\"Theme\";s:4:\"desc\";s:89:\"editor theme name (you can test them all here: https://ace.c9.io/build/kitchen-sink.html)\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:37:{i:0;a:2:{s:4:\"text\";s:21:\"Chrome (bright theme)\";s:5:\"value\";s:6:\"chrome\";}i:1;a:2:{s:4:\"text\";s:21:\"Clouds (bright theme)\";s:5:\"value\";s:6:\"clouds\";}i:2;a:2:{s:4:\"text\";s:29:\"Crimson Editor (bright theme)\";s:5:\"value\";s:14:\"crimson_editor\";}i:3;a:2:{s:4:\"text\";s:19:\"Dawn (bright theme)\";s:5:\"value\";s:4:\"dawn\";}i:4;a:2:{s:4:\"text\";s:26:\"Dreamweaver (bright theme)\";s:5:\"value\";s:11:\"dreamweaver\";}i:5;a:2:{s:4:\"text\";s:22:\"Eclipse (bright theme)\";s:5:\"value\";s:7:\"eclipse\";}i:6;a:2:{s:4:\"text\";s:21:\"GitHub (bright theme)\";s:5:\"value\";s:6:\"github\";}i:7;a:2:{s:4:\"text\";s:23:\"IPlastic (bright theme)\";s:5:\"value\";s:8:\"iplastic\";}i:8;a:2:{s:4:\"text\";s:30:\"Solarized Light (bright theme)\";s:5:\"value\";s:15:\"solarized_light\";}i:9;a:2:{s:4:\"text\";s:23:\"TextMate (bright theme)\";s:5:\"value\";s:8:\"textmate\";}i:10;a:2:{s:4:\"text\";s:23:\"Tomorrow (bright theme)\";s:5:\"value\";s:8:\"tomorrow\";}i:11;a:2:{s:4:\"text\";s:20:\"XCode (bright theme)\";s:5:\"value\";s:5:\"xcode\";}i:12;a:2:{s:4:\"text\";s:21:\"Kuroir (bright theme)\";s:5:\"value\";s:6:\"kuroir\";}i:13;a:2:{s:4:\"text\";s:26:\"KatzenMilch (bright theme)\";s:5:\"value\";s:11:\"katzenmilch\";}i:14;a:2:{s:4:\"text\";s:25:\"SQL Server (bright theme)\";s:5:\"value\";s:9:\"sqlserver\";}i:15;a:2:{s:4:\"text\";s:21:\"Ambiance (dark theme)\";s:5:\"value\";s:8:\"ambiance\";}i:16;a:2:{s:4:\"text\";s:18:\"Chaos (dark theme)\";s:5:\"value\";s:5:\"chaos\";}i:17;a:2:{s:4:\"text\";s:28:\"Clouds Midnight (dark theme)\";s:5:\"value\";s:15:\"clouds_midnight\";}i:18;a:2:{s:4:\"text\";s:20:\"Dracula (dark theme)\";s:5:\"value\";s:7:\"dracula\";}i:19;a:2:{s:4:\"text\";s:19:\"Cobalt (dark theme)\";s:5:\"value\";s:6:\"cobalt\";}i:20;a:2:{s:4:\"text\";s:20:\"Gruvbox (dark theme)\";s:5:\"value\";s:7:\"gruvbox\";}i:21;a:2:{s:4:\"text\";s:27:\"Green on Black (dark theme)\";s:5:\"value\";s:3:\"gob\";}i:22;a:2:{s:4:\"text\";s:25:\"idle Fingers (dark theme)\";s:5:\"value\";s:12:\"idle_fingers\";}i:23;a:2:{s:4:\"text\";s:20:\"krTheme (dark theme)\";s:5:\"value\";s:8:\"kr_theme\";}i:24;a:2:{s:4:\"text\";s:22:\"Merbivore (dark theme)\";s:5:\"value\";s:9:\"merbivore\";}i:25;a:2:{s:4:\"text\";s:27:\"Merbivore Soft (dark theme)\";s:5:\"value\";s:14:\"merbivore_soft\";}i:26;a:2:{s:4:\"text\";s:28:\"Mono Industrial (dark theme)\";s:5:\"value\";s:15:\"mono_industrial\";}i:27;a:2:{s:4:\"text\";s:20:\"Monokai (dark theme)\";s:5:\"value\";s:7:\"monokai\";}i:28;a:2:{s:4:\"text\";s:27:\"Pastel on dark (dark theme)\";s:5:\"value\";s:14:\"pastel_on_dark\";}i:29;a:2:{s:4:\"text\";s:27:\"Solarized Dark (dark theme)\";s:5:\"value\";s:14:\"solarized_dark\";}i:30;a:2:{s:4:\"text\";s:21:\"Terminal (dark theme)\";s:5:\"value\";s:8:\"terminal\";}i:31;a:2:{s:4:\"text\";s:27:\"Tomorrow Night (dark theme)\";s:5:\"value\";s:14:\"tomorrow_night\";}i:32;a:2:{s:4:\"text\";s:32:\"Tomorrow Night Blue (dark theme)\";s:5:\"value\";s:19:\"tomorrow_night_blue\";}i:33;a:2:{s:4:\"text\";s:34:\"Tomorrow Night Bright (dark theme)\";s:5:\"value\";s:21:\"tomorrow_night_bright\";}i:34;a:2:{s:4:\"text\";s:31:\"Tomorrow Night 80s (dark theme)\";s:5:\"value\";s:23:\"tomorrow_night_eighties\";}i:35;a:2:{s:4:\"text\";s:21:\"Twilight (dark theme)\";s:5:\"value\";s:8:\"twilight\";}i:36;a:2:{s:4:\"text\";s:24:\"Vibrant Ink (dark theme)\";s:5:\"value\";s:11:\"vibrant_ink\";}}s:5:\"value\";s:7:\"monokai\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"ReplaceCTRLDKbdShortcut\";a:7:{s:4:\"name\";s:23:\"ReplaceCTRLDKbdShortcut\";s:4:\"desc\";s:175:\"Replace the CTRL-D (or CMD-D) keyboard shortcut to perform a more sensible action: duplicate the current line or selection (instead of deleting, which is the default behavior)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"Autocompletion\";a:7:{s:4:\"name\";s:14:\"Autocompletion\";s:4:\"desc\";s:207:\"Enable Autocompletion: none, basic (show on CTRL-Space) or live (show on typing) - Note that \"ext-language_tools.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-language_tools.js)\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:4:\"none\";}i:1;a:2:{s:4:\"text\";s:26:\"Basic (show on CTRL-SPACE)\";s:5:\"value\";s:5:\"basic\";}i:2;a:2:{s:4:\"text\";s:21:\"Live (show on typing)\";s:5:\"value\";s:4:\"live\";}}s:5:\"value\";s:5:\"basic\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"SettingsMenu\";a:7:{s:4:\"name\";s:12:\"SettingsMenu\";s:4:\"desc\";s:177:\"Add a settings menu accessible with CTR-Q (or CMD-Q) - Note that \"ext-settings_menu.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-settings_menu.js)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"Spellcheck\";a:7:{s:4:\"name\";s:10:\"Spellcheck\";s:4:\"desc\";s:136:\"Enable spellcheck - Note that \"ext-spellcheck.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-spellcheck.js)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"EmmetPath\";a:7:{s:4:\"name\";s:9:\"EmmetPath\";s:4:\"desc\";s:82:\"URL or path to Emmet javascript file (see https://github.com/cloud9ide/emmet-core)\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:47:\"https://cloud9ide.github.io/emmet-core/emmet.js\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"Emmet\";a:7:{s:4:\"name\";s:5:\"Emmet\";s:4:\"desc\";s:121:\"Enable emmet - Note that \"ext-emmet.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-emmet.js)\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:20:\"AcePrintMarginColumn\";a:7:{s:4:\"name\";s:20:\"AcePrintMarginColumn\";s:4:\"desc\";s:164:\"Print margin column position - Set the character position of the print margin (for instance useful if you like to code with 80 chars wide max) - Set to 0 to disable\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"ChunkDetectMIMEShebang\";a:7:{s:4:\"name\";s:22:\"ChunkDetectMIMEShebang\";s:4:\"desc\";s:142:\"Enable \'shebang-style\' MIME detection for chunks (in description or in the first line of chunk content) - See README for supported MIME values\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}}', 0, '', 0, ''),
(3, 0, 0, 'MIGX', '', 0, 9, 0, '$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name) {\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/input/\');\n        break;\n    case \'OnTVInputPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\n        break;\n\n        case \'OnDocFormPrerender\':\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\n        break; \n \n    /*          \n    case \'OnTVOutputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/output/\');\n        break;\n    case \'OnTVOutputRenderPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/properties/\');\n        break;\n    \n    case \'OnDocFormPrerender\':\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \n        $modx->regClientStartupHTMLBlock(\'<script type=\"text/javascript\">\n        Ext.onReady(function() {\n            \n        });\n        </script>\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\n        break;\n     */\n}\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(4, 0, 0, 'MIGXquip', '', 0, 9, 0, '$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name)\n{\n\n    case \'OnDocFormPrerender\':\n\n        \n        require_once $quipCorePath . \'model/quip/quip.class.php\';\n        $modx->quip = new Quip($modx);\n\n        $modx->lexicon->load(\'quip:default\');\n        $quipconfig = $modx->toJson($modx->quip->config);\n        \n        $js = \"\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\n        console.log(Quip);\";\n\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\n        $modx->controller->addHtml(\'<script type=\"text/javascript\">\' . $js . \'</script>\');\n        break;\n\n}\nreturn;', 0, 'a:0:{}', 1, '', 0, ''),
(5, 0, 0, 'migxResizeOnUpload', '', 0, 9, 0, '/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{\"alias\":\"origin\",\"w\":\"500\",\"h\":\"500\",\"far\":1},{\"alias\":\"thumb\",\"w\":\"150\",\"h\":\"150\",\"far\":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}', 0, 'a:0:{}', 0, '', 0, ''),
(6, 1, 0, 'RenameImage', '', 0, 0, 0, 'switch ($modx->event->name) {\n    case \'OnFileManagerUpload\':\n        //$generator = $modx->newObject(\'modResource\');\n        $bases = $source->getBases($directory);\n        $fullPath = $bases[\'pathAbsolute\'].ltrim($directory,\'/\');\n        $directory = $source->fileHandler->make($fullPath);\n        foreach ($files as $file) {\n            $ext = @pathinfo($file[\'name\'],PATHINFO_EXTENSION);\n            //rename($directory->getPath().$file[\'name\'], $directory->getPath() .\n            //str_replace($ext, \'.\'.$ext, $generator->cleanAlias($file[\'name\']))\n            //);\n            rename($directory->getPath().$file[\'name\'], $directory->getPath() . date(\"Y\").\'_\'.date(\"m\").\'_\'.date(\"d\").\'_T\'.str_replace(\'.\', \'\',str_replace(\' \', \'_\', microtime())).\'.\'.trim($ext,\'.\'));\n        }\n        break;\n    default: break;\n}\nreturn true;', 0, 'a:0:{}', 0, '', 0, ''),
(7, 1, 0, 'filter', '', 0, 0, 0, 'if ($modx->event->name != \'OnPageNotFound\') {return false;}\n$alias = $modx->context->getOption(\'request_param_alias\', \'q\');\nif (!isset($_REQUEST[$alias])) {return false;}\n\n$request = $_REQUEST[$alias];\n$tmp = explode(\'/\', $request);\n// Ссылка подходит под заданный формат: brands/brandname\nif ($tmp[0] == \'portfolio\' && count($tmp) >= 2) {\n	// Определяем id раздела /brands/.\n	// Конечно, можно его и руками прописать - но так гибче\n	if (!$section = $modx->findResource($tmp[0])) {\n		// Если вдруг раздел куда-то делся - выходим.\n		return false;\n	}\n	\n	// Теперь очищаем имя бренда от возможного расширения\n	$name = str_replace(\'.html\', \'\', $tmp[1]);\n	// Если очищенное имя не равно запрошенному - то можно отредиректить юзера\n	// Также возможен вариант с косой на конце имени бренда - его тоже учитываем\n	// SEOшники должны оценить =)\n	if ($tmp[1] != $name || (isset($tmp[2]) && $tmp[2] == \'\')) {\n		$modx->sendRedirect($tmp[0] . \'/\' . $name);\n	}\n	// Люди с неправильной ссылкой ушли на правильную и дошли до этого момента со второго раза\n	// Дальше проверяем наличие запрошенного бренда\n	////if ($brand = $modx->getObject(\'msVendor\', array(\'name\' => $name))) {\n		// Круто, такой бренд есть, получаем его id\n		////$id = $brand->get(\'id\');\n		\n		// Осталось выставить нужные переменные в запрос, как будто юзер их сам указал\n		// Так как это mFilter2 - выставляем выбранный бренд\n		////$_GET[\'ms|vendor\'] = $_REQUEST[\'ms|vendor\'] = $id;\n		$_GET[\'f\'] = $_REQUEST[\'f\'] = $name;\n		// А теперь подсовывем юзеру страницу брендов, а дальше сниппет на ней сам разберётся\n		$modx->sendForward($section);\n	////}\n}\n// Иначе ничего не делаем и юзер получает 404 или его перехватывает другой плагин.', 0, 'a:0:{}', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_plugin_events`
--

DROP TABLE IF EXISTS `sneg_prfx_site_plugin_events`;
CREATE TABLE `sneg_prfx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_plugin_events`
--

INSERT INTO `sneg_prfx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnRichTextBrowserInit', 0, 0),
(1, 'OnRichTextEditorInit', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(2, 'OnChunkFormPrerender', 0, 0),
(2, 'OnDocFormPrerender', 0, 0),
(2, 'OnFileCreateFormPrerender', 0, 0),
(2, 'OnFileEditFormPrerender', 0, 0),
(2, 'OnManagerPageBeforeRender', 0, 0),
(2, 'OnPluginFormPrerender', 0, 0),
(2, 'OnPluginSave', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(2, 'OnSnipFormPrerender', 0, 0),
(2, 'OnTempFormPrerender', 0, 0),
(3, 'OnDocFormPrerender', 0, 0),
(3, 'OnTVInputPropertiesList', 0, 0),
(3, 'OnTVInputRenderList', 1, 0),
(4, 'OnDocFormPrerender', 0, 0),
(5, 'OnFileManagerUpload', 0, 0),
(6, 'OnFileManagerUpload', 0, 0),
(7, 'OnPageNotFound', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_snippets`
--

DROP TABLE IF EXISTS `sneg_prfx_site_snippets`;
CREATE TABLE `sneg_prfx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_snippets`
--

INSERT INTO `sneg_prfx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'getSiteSettings', '', 0, 0, 0, '$resource = $modx->getObject(\'modResource\',3);\n    $output=\'\';\n    switch($case) {\n        case \'phoneFirstText\': {\n            $output=trim($resource->getTVValue(\'phoneFirst\'));\n            break;\n        }\n        case \'phoneFirstCall\': {\n            $output=\'+38\'.preg_replace(\'/[^0-9]/s\', \'\', trim($resource->getTVValue(\'phoneFirst\')));\n            break;\n        }\n         case \'phoneSecondText\': {\n            $output=trim($resource->getTVValue(\'phoneSecond\'));\n            break;\n        }\n        case \'phoneSecondCall\': {\n            $output=\'+38\'.preg_replace(\'/[^0-9]/s\', \'\', trim($resource->getTVValue(\'phoneSecond\')));\n            break;\n        }\n        case \'namePhoneFirst\': {\n            $output=trim($resource->getTVValue(\'namePhoneFirst\'));\n            break;\n        }\n        case \'namePhoneSecond\': {\n            $output=trim($resource->getTVValue(\'namePhoneSecond\'));\n            break;\n        }\n        case \'email\': {\n            $output=trim($resource->getTVValue(\'email\'));\n            break;\n        }\n        case \'behance\': {\n            $output=trim($resource->getTVValue(\'behance\'));\n            break;\n        }\n         case \'instagram\': {\n            $output=trim($resource->getTVValue(\'instagram\'));\n            break;\n        }\n         case \'google\': {\n            $output=trim($resource->getTVValue(\'google\'));\n            break;\n        }\n    }\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(2, 0, 0, 'getImageList', '', 0, 9, 0, '/**\n * getImageList\n *\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\n *\n * getImageList is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getImageList\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.4\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2009-2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src=\"[[+imageURL]]\"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\n//split json into parts\n$splits = $modx->fromJson($modx->getOption(\'splits\', $scriptProperties, 0));\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\n\n$modx->setPlaceholder(\'docid\', $docid);\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\n        if (!empty($migx->config[\'configs\'])) {\n            $migx->loadConfigs();\n            // get tabs from file or migx-config-table\n            $formtabs = $migx->getTabs();\n        }\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        if (!empty($properties[\'basePath\'])) {\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\n            } else {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\n            }\n        }\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\n            $jsonVarKey = $properties[\'jsonvarkey\'];\n            $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n        }\n\n        if (empty($outputvalue)) {\n            $outputvalue = $tv->renderOutput($docid);\n            if (empty($outputvalue) && !empty($inheritFrom)) {\n                foreach ($inheritFrom as $from) {\n                    if ($from == \'parents\') {\n                        if (!empty($inherit_children_tvname)){\n                            //try to get items from optional MIGX-TV for children\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \n                            }\n                        }\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\n                    } else {\n                        $outputvalue = $tv->renderOutput($from);\n                    }\n                    if (!empty($outputvalue)) {\n                        break;\n                    }\n                }\n            }\n        }\n\n\n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\n            $migx->source->initialize();\n        }\n\n    }\n\n\n}\n\nif (empty($outputvalue)) {\n    $modx->setPlaceholder($totalVar, 0);\n    return \'\';\n}\n\n//echo $outputvalue.\'<br/><br/>\';\n\n$items = $modx->fromJSON($outputvalue);\n\n// where filter\nif (is_array($where) && count($where) > 0) {\n    $items = $migx->filterItems($where, $items);\n}\n$modx->setPlaceholder($totalVar, count($items));\n\nif (!empty($reverse)) {\n    $items = array_reverse($items);\n}\n\n// sort items\nif (is_array($sort) && count($sort) > 0) {\n    $items = $migx->sortDbResult($items, $sort);\n}\n\n$summaries = array();\n$output = \'\';\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\n$count = count($items);\n\nif ($count > 0) {\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\n    //preselect important items\n    $preitems = array();\n    if ($randomize && $preselectLimit > 0) {\n        for ($i = 0; $i < $preselectLimit; $i++) {\n            $preitems[] = $items[$i];\n            unset($items[$i]);\n        }\n        $limit = $limit - count($preitems);\n    }\n\n    //shuffle items\n    if ($randomize) {\n        shuffle($items);\n    }\n\n    //limit items\n    $count = count($items);\n    $tempitems = array();\n\n    for ($i = 0; $i < $limit; $i++) {\n        if ($i >= $count) {\n            break;\n        }\n        $tempitems[] = $items[$i];\n    }\n    $items = $tempitems;\n\n    //add preselected items and schuffle again\n    if ($randomize && $preselectLimit > 0) {\n        $items = array_merge($preitems, $items);\n        shuffle($items);\n    }\n\n    $properties = array();\n    foreach ($scriptProperties as $property => $value) {\n        $properties[\'property.\' . $property] = $value;\n    }\n\n    $idx = 0;\n    $output = array();\n    $template = array();\n    $count = count($items);\n\n    foreach ($items as $key => $item) {\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\n        $fields = array();\n        foreach ($item as $field => $value) {\n            if (is_array($value)) {\n                if (is_array($value[0])) {\n                    //nested array - convert to json\n                    $value = $modx->toJson($value);\n                } else {\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\n                }\n            }\n\n\n            $inputTVkey = $formname . $field;\n\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\n\n                } else {\n                    $tv = $modx->newObject(\'modTemplateVar\');\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\n                }\n                $inputTV = $inputTvs[$inputTVkey];\n\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n                //don\'t manipulate any urls here\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n                $tv->set(\'default_text\', $value);\n                $value = $tv->renderOutput($docid);\n                //set option back\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n                //now manipulate urls\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                    $mTypes = explode(\',\', $mTypes);\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                        //$value = $mediasource->prepareOutputUrl($value);\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                    }\n                }\n\n            }\n            $fields[$field] = $value;\n\n        }\n\n        if (!empty($addfields)) {\n            foreach ($addfields as $addfield) {\n                $addfield = explode(\':\', $addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\n                $fields[$addname] = $adddefault;\n            }\n        }\n\n        if (!empty($sumFields)) {\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\n            foreach ($sumFields as $sumField) {\n                if (isset($fields[$sumField])) {\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\n                }\n            }\n        }\n\n\n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[\'_alt\'] = $idx % 2;\n            $idx++;\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\n            $fields[\'idx\'] = $idx;\n            $rowtpl = \'\';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == \"@FIELD:\") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = \'tpl_\' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = \'tpl_n\' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            if ($count == 1 && isset($tpl_oneresult)) {\n                $rowtpl = $tpl_oneresult;\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[\'_tpl\'] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(\'modChunk\');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                } else {\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                }\n            }\n        }\n\n\n    }\n}\n\nif (count($summaries) > 0) {\n    $modx->toPlaceholders($summaries);\n}\n\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\n\nif ($count > 0 && $splits > 0) {\n    $size = ceil($count / $splits);\n    $chunks = array_chunk($output, $size);\n    $output = array();\n    foreach ($chunks as $chunk) {\n        $o = implode($outputSeparator, $chunk);\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\n    }\n    $outputSeparator = $splitSeparator;\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[\'output\'] = $o;\n        $o = $chunk->process($properties);\n    }\n}\n\nif (empty($o) && !empty($emptyTpl)) {\n    $template = $migx->getTemplate($emptyTpl);\n    if ($template[$emptyTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$emptyTpl]);\n        $o = $chunk->process($properties);\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(3, 0, 0, 'migxGetRelations', '', 0, 9, 0, '$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\n\n$packageName = \'resourcerelations\';\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = \'rrResourceRelation\';\n$output = \'\';\n\nforeach ($parentIDs as $id) {\n    if (!empty($id)) {\n        $output = \'\';\n                \n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\n        $c->select($modx->getSelectColumns($classname, $classname));\n\n        if (!empty($sourceWhere)) {\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\n            if (is_array($sourceWhere_ar)) {\n                $where = array();\n                foreach ($sourceWhere_ar as $key => $value) {\n                    $where[\'Source.\' . $key] = $value;\n                }\n                $joinclass = \'modResource\';\n                $joinalias = \'Source\';\n                $selectfields = \'id\';\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\n                $c->leftjoin($joinclass, $joinalias);\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\n                $c->where($where);\n            }\n        }\n\n        //$c->prepare(); echo $c->toSql();\n        if ($c->prepare() && $c->stmt->execute()) {\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\n        }\n        \n        foreach ($collection as $row) {\n            $ids[] = $row[\'source_id\'];\n        }\n        $output = implode($outputSeparator, $ids);\n    }\n    if (!empty($output)){\n        break;\n    }\n}\n\n\nif (!empty($element)) {\n    if (empty($output) && $ignoreRelationIfEmpty) {\n        return $modx->runSnippet($element, $scriptProperties);\n    } else {\n        $scriptProperties[\'resources\'] = $output;\n        $scriptProperties[\'parents\'] = \'9999999\';\n        return $modx->runSnippet($element, $scriptProperties);\n    }\n\n\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, '', '', 0, ''),
(4, 0, 0, 'migx', '', 0, 9, 0, '$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\n$configs = !empty($configs) ? explode(\',\',$configs):array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\nif (!empty($tvname))\n{\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\n    {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\n        if (!empty($cfgs)){\n            $cfgs = explode(\',\',$cfgs);\n            $configs = array_merge($configs,$cfgs);\n           \n        }\n        \n    }\n}\n\n\n\n//$migx->config[\'configs\'] = implode(\',\',$configs);\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\n\n\n\n// get tabs from file or migx-config-table\n$formtabs = $migx->getTabs();\nif (empty($formtabs))\n{\n    //try to get formtabs and its fields from properties\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n}\n\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\n{\n    $jsonVarKey = $properties[\'jsonvarkey\'];\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n/*\n*   get inputTvs \n*/\n$inputTvs = array();\nif (is_array($formtabs))\n{\n\n    //multiple different Forms\n    // Note: use same field-names and inputTVs in all forms\n    $inputTvs = $migx->extractInputTvs($formtabs);\n}\n\nif ($tv)\n{\n    $migx->source = $tv->getSource($migx->working_context, false);\n}\n\n//$task = $modx->migx->getTask();\n$filename = \'getlist.php\';\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\n$filenames = array();\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\n{\n    include ($processor_file);\n    //todo: add getlist-processor for default-MIGX-TV\n}\n\n$items = isset($rows) && is_array($rows) ? $rows : array();\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\n\n$properties = array();\nforeach ($scriptProperties as $property => $value)\n{\n    $properties[\'property.\' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\nforeach ($items as $key => $item)\n{\n\n    $fields = array();\n    foreach ($item as $field => $value)\n    {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field]))\n        {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\n            {\n\n            } else\n            {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\n            {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\n                {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n    if ($toJsonPlaceholder)\n    {\n        $output[] = $fields;\n    } else\n    {\n        $fields[\'_alt\'] = $idx % 2;\n        $idx++;\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\n        $fields[\'idx\'] = $idx;\n        $rowtpl = $tpl;\n        //get changing tpls from field\n        if (substr($tpl, 0, 7) == \"@FIELD:\")\n        {\n            $tplField = substr($tpl, 7);\n            $rowtpl = $fields[$tplField];\n        }\n\n        if (!isset($template[$rowtpl]))\n        {\n            if (substr($rowtpl, 0, 6) == \"@FILE:\")\n            {\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n            } elseif (substr($rowtpl, 0, 6) == \"@CODE:\")\n            {\n                $template[$rowtpl] = substr($tpl, 6);\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\n            {\n                $template[$rowtpl] = $chunk->getContent();\n            } else\n            {\n                $template[$rowtpl] = false;\n            }\n        }\n\n        $fields = array_merge($fields, $properties);\n\n        if ($template[$rowtpl])\n        {\n            $chunk = $modx->newObject(\'modChunk\');\n            $chunk->setCacheable(false);\n            $chunk->setContent($template[$rowtpl]);\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\n            {\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n            } else\n            {\n                $output[] = $chunk->process($fields);\n            }\n        } else\n        {\n            if (!empty($placeholdersKeyField))\n            {\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            } else\n            {\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            }\n        }\n    }\n\n\n}\n\n\nif ($toJsonPlaceholder)\n{\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders))\n{\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\nif (is_array($output))\n{\n    $o = implode($outputSeparator, $output);\n} else\n{\n    $o = $output;\n}\n\nif (!empty($toPlaceholder))\n{\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, '', '', 0, ''),
(5, 0, 0, 'migxLoopCollection', '', 0, 9, 0, '/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\n*/\n\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;', 0, '', '', 0, ''),
(6, 0, 0, 'migxResourceMediaPath', '', 0, 9, 0, '/**\n * @name migxResourceMediaPath\n * @description Dynamically calculates the upload path for a given resource\n * \n * This Snippet is meant to dynamically calculate your baseBath attribute\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\n * images to a folder dedicated to a given resource.  E.g. page 123 would \n * have its own images that page 456 could not reference.\n *\n * USAGE:\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\n *\n * PARAMETERS\n * &pathTpl string formatting string specifying the file path. \n *		Relative to MODX base_path\n *		Available placeholders: {id}, {pagetitle}, {parent}\n * &docid (optional) integer page id\n * &createFolder (optional) boolean whether or not to create\n */\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n\n$path = \'\';\n$createpath = false;\n\nif (empty($pathTpl)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: pathTpl not specified.\');\n    return;\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'docid\');\n}\nif (empty($docid)) {\n\n    //on frontend\n    if (is_object($modx->resource)) {\n        $docid = $modx->resource->get(\'id\');\n    }\n    //on backend\n    else {\n        $createpath = $createfolder;\n        // We do this to read the &id param from an Ajax request\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\n\n        if (isset($parsedQuery[\'amp;id\'])) {\n            $docid = (int)$parsedQuery[\'amp;id\'];\n        } elseif (isset($parsedQuery[\'id\'])) {\n            $docid = (int)$parsedQuery[\'id\'];\n        }\n    }\n}\n\nif (empty($docid)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: docid could not be determined.\');\n    return;\n}\n\nif ($resource = $modx->getObject(\'modResource\', $docid)) {\n    $path = $pathTpl;\n    $ultimateParent = \'\';\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\n        $ctx = $resource->get(\'context_key\');\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\n        if (count($parentids) > 1) {\n            $parentids = array_reverse($parentids);\n            $parentids[] = $docid;\n            $ultimateParent = $parentids[1];\n        } else {\n            $ultimateParent = $docid;\n            $parentids = array();\n            $parentids[] = $docid;\n        }\n    }\n\n    if (strstr($path, \'{breadcrumb}\')) {\n        $breadcrumbpath = \'\';\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\n            $breadcrumbpath .= $parentids[$i] . \'/\';\n        }\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\n    }\n    \n    if (!empty($tvname)){\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \n    }\n    $path = str_replace(\'{id}\', $docid, $path);\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\n    if ($template = $resource->getOne(\'Template\')) {\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\n    }\n    if ($user = $modx->user) {\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\n    }\n\n    $fullpath = $modx->getOption(\'base_path\') . $path;\n\n    if ($createpath && !file_exists($fullpath)) {\n\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        } else {\n            chmod($fullpath, $permissions);\n        }\n    }\n\n    return $path;\n} else {\n    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\n    return;\n}', 0, 'a:0:{}', '', 0, ''),
(7, 0, 0, 'migxImageUpload', '', 0, 9, 0, 'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';', 0, '', '', 0, ''),
(8, 0, 0, 'migxChunklistToJson', '', 0, 9, 0, '$category = $modx->getOption(\'category\', $scriptProperties, \'\');\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\n\n$classname = \'modChunk\';\n$rows = array();\n$output = \'\';\n\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, \'\', array(\'id\', \'name\')));\n$c->sortby(\'name\');\n\nif (!empty($category)) {\n    $c->where(array(\'category\' => $category));\n}\n//$c->prepare();echo $c->toSql();\nif ($collection = $modx->getCollection($classname, $c)) {\n    $i = 0;\n\n    switch ($format) {\n        case \'json\':\n            foreach ($collection as $object) {\n                $row[\'MIGX_id\'] = (string )$i;\n                $row[\'name\'] = $object->get(\'name\');\n                $row[\'selected\'] = \'0\';\n                $rows[] = $row;\n                $i++;\n            }\n            $output = $modx->toJson($rows);\n            break;\n        \n        case \'optionlist\':\n            foreach ($collection as $object) {\n                $rows[] = $object->get(\'name\');\n                $i++;\n            }\n            $output = implode(\'||\',$rows);      \n        break;\n            \n    }\n\n\n}\n\nreturn $output;', 0, '', '', 0, ''),
(9, 0, 0, 'migxSwitchDetailChunk', '', 0, 9, 0, '//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\n\n\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\n\nif (!empty($properties[\'migx_id\'])){\n    $output = $modx->getChunk($detailChunk,$properties);\n}\nelse{\n    $output = $modx->getChunk($listingChunk);\n}\n\nreturn $output;', 0, '', '', 0, ''),
(10, 0, 0, 'getSwitchColumnCol', '', 0, 9, 0, '$scriptProperties = $_REQUEST;\n$col = \'\';\n// special actions, for example the showSelector - action\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\n\nif (!empty($tempParams)) {\n    $tempParams = $modx->fromJson($tempParams);\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\n}\n\nreturn $col;', 0, '', '', 0, '');
INSERT INTO `sneg_prfx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(11, 0, 0, 'getDayliMIGXrecord', '', 0, 9, 0, '/**\n * getDayliMIGXrecord\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getDayliMIGXrecord\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2012\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src=\"[[+image]]\"/>` &randomize=`1`]]*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = $modx->resource->get(\'context_key\');\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $properties[\'configs\'];\n        $migx->loadConfigs();\n        // get tabs from file or migx-config-table\n        $formtabs = $migx->getTabs();\n        if (empty($formtabs)) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        //$tv->setCacheable(false);\n        //$outputvalue = $tv->renderOutput($docid);\n        \n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\n            \'tmplvarid\' => $tv->get(\'id\'),\n            \'contentid\' => $docid,\n            ));\n\n\n        $outputvalue = $tvresource->get(\'value\');\n        \n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n\n        if (empty($outputvalue)) {\n            return \'\';\n        }\n\n        $items = $modx->fromJSON($outputvalue);\n\n\n        //is there an active item for the current date?\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\n        $activewhere = array();\n        $activewhere[\'activedate\'] = $activedate;\n        $activewhere[\'activated\'] = \'1\';\n        $activeitems = $migx->filterItems($activewhere, $items);\n\n        if (count($activeitems) == 0) {\n\n            $activeitems = array();\n            // where filter\n            if (is_array($where) && count($where) > 0) {\n                $items = $migx->filterItems($where, $items);\n            }\n\n            $tempitems = array();\n            $count = count($items);\n            $emptycount = 0;\n            $latestdate = $activedate;\n            $nextdate = strtotime($latestdate);\n            foreach ($items as $item) {\n                //empty all dates and active-states which are older than today\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\n                    $item[\'activated\'] = \'0\';\n                    $item[\'activedate\'] = \'\';\n                }\n                if (empty($item[\'activedate\'])) {\n                    $emptycount++;\n                }\n                if ($item[\'activedate\'] > $latestdate) {\n                    $latestdate = $item[\'activedate\'];\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\n                }\n                if ($item[\'activedate\'] == $activedate) {\n                    $item[\'activated\'] = \'1\';\n                    $activeitems[] = $item;\n                }\n                $tempitems[] = $item;\n            }\n\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\n\n            $items = $tempitems;\n\n\n            //are there more than half of all items with empty activedates\n\n            if ($emptycount >= $count / 2) {\n\n                // sort items\n                if (is_array($sort) && count($sort) > 0) {\n                    $items = $migx->sortDbResult($items, $sort);\n                }\n                if (count($items) > 0) {\n                    //shuffle items\n                    if ($randomize) {\n                        shuffle($items);\n                    }\n                }\n\n                $tempitems = array();\n                foreach ($items as $item) {\n                    if (empty($item[\'activedate\'])) {\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\n                        $nextdate = $nextdate + (24 * 60 * 60);\n                        if ($item[\'activedate\'] == $activedate) {\n                            $item[\'activated\'] = \'1\';\n                            $activeitems[] = $item;\n                        }\n                    }\n\n                    $tempitems[] = $item;\n                }\n\n                $items = $tempitems;\n            }\n\n            //$resource = $modx->getObject(\'modResource\', $docid);\n            //echo $modx->toJson($items);\n            $sort = \'[{\"sortby\":\"activedate\"}]\';\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\n\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\n\n            $tv->setValue($docid, $modx->toJson($items));\n            $tv->save();\n\n        }\n    }\n\n}\n\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[\'property.\' . $property] = $value;\n}\n\n$output = \'\';\n\nforeach ($activeitems as $key => $item) {\n\n    $fields = array();\n    foreach ($item as $field => $value) {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field])) {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\n\n            } else {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n\n    $rowtpl = $tpl;\n    //get changing tpls from field\n    if (substr($tpl, 0, 7) == \"@FIELD:\") {\n        $tplField = substr($tpl, 7);\n        $rowtpl = $fields[$tplField];\n    }\n\n    if (!isset($template[$rowtpl])) {\n        if (substr($rowtpl, 0, 6) == \"@FILE:\") {\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n        } elseif (substr($rowtpl, 0, 6) == \"@CODE:\") {\n            $template[$rowtpl] = substr($tpl, 6);\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\n            $template[$rowtpl] = $chunk->getContent();\n        } else {\n            $template[$rowtpl] = false;\n        }\n    }\n\n    $fields = array_merge($fields, $properties);\n\n    if ($template[$rowtpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$rowtpl]);\n        $output .= $chunk->process($fields);\n\n    } else {\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n\n    }\n\n\n}\n\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, '', '', 0, ''),
(12, 0, 0, 'filterbytag', '', 0, 9, 0, 'if (!is_array($subject)) {\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\n}\n\nreturn (in_array($operand,$subject));', 0, '', '', 0, ''),
(13, 0, 0, 'migxObjectMediaPath', '', 0, 9, 0, '$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\n$path = \'\';\n$createpath = false;\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\n    // placeholder was set by some script on frontend for example\n    $objectid = $modx->getPlaceholder(\'objectid\');\n}\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\n    $objectid = $_REQUEST[\'object_id\'];\n}\n\n\n\nif (empty($objectid)) {\n\n    //set Session - var in fields.php - processor\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\n        $createpath = !empty($createfolder);\n    }\n\n}\n\n\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\n\n$fullpath = $modx->getOption(\'base_path\') . $path;\n\nif ($createpath && !file_exists($fullpath)) {\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        }\n        else{\n            chmod($fullpath, $permissions); \n        }\n}\n\nreturn $path;', 0, '', '', 0, ''),
(14, 0, 0, 'exportMIGX2db', '', 0, 9, 0, '/**\n * exportMIGX2db\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n * \n * Sponsored by Simon Wurster <info@wurster-medien.de>\n *\n * exportMIGX2db is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * exportMIGX2db\n *\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*\n[[!exportMIGX2db? \n&tvname=`references` \n&resources=`25` \n&packageName=`projekte`\n&classname=`Projekt` \n&migx_id_field=`migx_id` \n&renamed_fields=`{\"Firmen-URL\":\"Firmen_url\",\"Projekt-URL\":\"Projekt_URL\",\"main-image\":\"main_image\"}`\n]]\n*/\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\n$resources = explode(\',\', $resources);\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\n    \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$added = 0;\n$modified = 0;\n\nforeach ($resources as $docid) {\n    \n    $outputvalue = \'\';\n    if (count($resources)==1){\n        $outputvalue = $value;    \n    }\n    \n    if (!empty($tvname)) {\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        }\n    }\n\n    if (!empty($outputvalue)) {\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\n\n        $items = $modx->fromJSON($outputvalue);\n        $pos = 1;\n        $searchfields = array();\n        if (is_array($items)) {\n            foreach ($items as $fields) {\n                $search = array();\n                if (!empty($migx_id_field)) {\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\n                }\n                if (!empty($resource_id_field)) {\n                    $search[$resource_id_field] = $docid;\n                }\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\n                    $mode = \'mod\';\n                } else {\n                    $object = $modx->newObject($classname);\n                    $object->fromArray($search);\n                    $mode = \'add\';\n                }\n                foreach ($fields as $field => $value) {\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\n                    $object->set($fieldname, $value);\n                }\n                if (!empty($pos_field)) {\n                    $object->set($pos_field,$pos) ;\n                }                \n                if ($object->save()) {\n                    if ($mode == \'add\') {\n                        $added++;\n                    } else {\n                        $modified++;\n                    }\n                }\n                $pos++;\n            }\n            \n        }\n    }\n}\n\n\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';', 0, '', '', 0, ''),
(15, 0, 0, 'preparedatewhere', '', 0, 9, 0, '$name = $modx->getOption(\'name\', $scriptProperties, \'\');\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\n\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\n    switch ($dir) {\n        case \'=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );\n            break;\n        case \'>=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\n            );\n            break;\n        case \'<=\':\n            $where = array(\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );            \n            break;\n\n    }\n\n    return $modx->toJson($where);\n}', 0, '', '', 0, ''),
(16, 0, 0, 'migxJsonToPlaceholders', '', 0, 9, 0, '$value = $modx->getOption(\'value\',$scriptProperties,\'\');\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\n\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\n\n$values = $modx->fromJson($value);\nif (is_array($values)){\n    foreach ($values as $key => $value){\n        $value = $value == null ? \'\' : $value;\n        $modx->setPlaceholder($prefix . $key, $value);\n    }\n}', 0, '', '', 0, ''),
(17, 0, 0, 'migxGetCollectionTree', '', 0, 9, 0, '/**\n * migxGetCollectionTree\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n *\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * migxGetCollectionTree\n *\n *          display nested items from different objects. The tree-schema is defined by a json-property. \n *\n * @version 1.0.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\n$treeSchema = $modx->fromJson($treeSchema);\n\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\n\n/*\nExamples:\n\nGet Resource-Tree, 4 levels deep\n\n[[!migxGetCollectionTree?\n&current=`57`\n&currentClassname=`modResource`\n&treeSchema=`\n{\n\"classname\": \"modResource\",\n\"debug\": \"1\",\n\"tpl\": \"mgctResourceTree\",\n\"wrapperTpl\": \"@CODE:<ul>[[+output]]</ul>\",\n\"selectfields\": \"id,pagetitle\",\n\"where\": {\n\"parent\": \"0\",\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n}\n}]\n}]\n}]\n}\n`]]\n\nthe chunk mgctResourceTree:\n<li class=\"[[+_activelabel]] [[+_currentlabel]]\" ><a href=\"[[~[[+id]]]]\">[[+pagetitle]]([[+id]])</a></li>\n[[+innercounts.children:gt=`0`:then=`\n<ul>[[+innerrows.children]]</ul>\n`:else=``]]\n\nget all Templates and its Resources:\n\n[[!migxGetCollectionTree?\n&treeSchema=`\n{\n\"classname\": \"modTemplate\",\n\"debug\": \"1\",\n\"tpl\": \"@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>\",\n\"selectfields\": \"id,templatename\",\n\"_branches\": [{\n\"alias\": \"resource\",\n\"classname\": \"modResource\",\n\"local\": \"template\",\n\"foreign\": \"id\",\n\"tpl\": \"@CODE:<li>[[+pagetitle]]([[+id]])</li>\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,template\"\n}]\n}\n`]]\n*/\n\nif (!class_exists(\'MigxGetCollectionTree\')) {\n    class MigxGetCollectionTree\n    {\n        function __construct(modX & $modx, array $config = array())\n        {\n            $this->modx = &$modx;\n            $this->config = $config;\n        }\n\n        function getBranch($branch, $foreigns = array(), $level = 1)\n        {\n\n            $rows = array();\n\n            if (count($foreigns) > 0) {\n                $modx = &$this->modx;\n\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $where = $modx->getOption(\'where\', $branch, array());\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\n                $where[] = array($local . \':IN\' => $foreigns);\n\n                $branch[\'where\'] = $modx->toJson($where);\n\n                $level++;\n                /*\n                if ($levelFromCurrent > 0){\n                $levelFromCurrent++;    \n                }\n                */\n\n                $rows = $this->getRows($branch, $level);\n            }\n\n            return $rows;\n        }\n\n        function getRows($scriptProperties, $level)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n\n            $current = $modx->getOption(\'current\', $this->config, \'\');\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\n\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\n            $rows = $migx->getCollection($c);\n\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\n\n            $collectedSubrows = array();\n            foreach ($branches as $branch) {\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\n                $foreigns = array();\n                foreach ($rows as $row) {\n                    $foreigns[] = $row[$foreign];\n                }\n\n                $subrows = $this->getBranch($branch, $foreigns, $level);\n                foreach ($subrows as $subrow) {\n\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\n                    /*\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\n                    $output = \'\';\n                    } else {\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    }\n                    */\n                    if ($subrow[\'_active\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $activesubrow[$subrow[$local]] = true;\n                    }\n                    if ($subrow[\'_current\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $currentsubrow[$subrow[$local]] = true;\n                    }\n\n\n                }\n                //insert subrows\n                $temprows = $rows;\n                $rows = array();\n                foreach ($temprows as $row) {\n                    if (isset($collectedSubrows[$row[$foreign]])) {\n                        $row[\'_active\'] = \'0\';\n                        $row[\'_currentparent\'] = \'0\';\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\n                            $row[\'_active\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\n                            $row[\'_currentparent\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n\n                        //render innerrows\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\n                        //$output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\n                        $row[\'_scriptProperties\'][$alias] = $branch;\n                        /*\n                        switch ($return) {\n                        case \'parsed\':\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\n                        //if there are any placeholders left with the same alias from subbranch, remove them\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\n                        break;\n                        case \'json\':\n                        case \'arrayprint\':\n                        $output = $collectedSubrows[$row[$foreign]];\n                        break;\n                        }\n                        */\n                        $output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innerrows.\' . $alias] = $output;\n\n                    }\n                    $rows[] = $row;\n                }\n\n            }\n\n            $temprows = $rows;\n            $rows = array();\n            foreach ($temprows as $row) {\n                //add additional placeholders\n                $row[\'_level\'] = $level;\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\n                    $row[\'_current\'] = \'1\';\n                    $row[\'_currentlabel\'] = $currentlabel;\n                    $row[\'_active\'] = \'1\';\n                } else {\n                    $row[\'_current\'] = \'0\';\n                    $row[\'_currentlabel\'] = \'\';\n                }\n                if ($row[\'_active\'] == \'1\') {\n                    $row[\'_activelabel\'] = $activelabel;\n                } else {\n                    $row[\'_activelabel\'] = \'\';\n                }\n                $rows[] = $row;\n            }\n\n            return $rows;\n        }\n\n        function renderRow($row, $levelFromCurrent = 0)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\n            $current = $modx->getOption(\'_current\', $row, \'0\');\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\n            foreach ($branchProperties as $alias => $properties) {\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\n                if ($return == \'parsed\') {\n                    $subrows = $migx->renderOutput($subrows, $properties);\n                }\n                $row[\'innerrows.\' . $alias] = $subrows;\n            }\n\n            return $row;\n        }\n\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\n        {\n\n            $modx = &$this->modx;\n            $temprows = $rows;\n            $rows = array();\n            if ($levelFromCurrent > 0) {\n                $levelFromCurrent++;\n            }\n            foreach ($temprows as $row) {\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\n                $row = $this->renderRow($row, $levelFromCurrent);\n                $rows[] = $row;\n            }\n            return $rows;\n        }\n    }\n}\n\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\n\nif (is_array($treeSchema)) {\n    $scriptProperties = $treeSchema;\n\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\n    if (!($migx instanceof Migx))\n        return \'\';\n\n    $defaultcontext = \'web\';\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n    $instance->migx = &$migx;\n\n    $level = 1;\n    $scriptProperties[\'alias\'] = \'row\';\n    $rows = $instance->getRows($scriptProperties, $level);\n    $row = array();\n    $row[\'innercounts.row\'] = count($rows);\n    $row[\'innerrows.row\'] = $rows;\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\n\n    $rows = $instance->renderRow($row);\n\n    $output = \'\';\n    switch ($return) {\n        case \'parsed\':\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\n            break;\n        case \'json\':\n            $output = $modx->toJson($rows);\n            break;\n        case \'arrayprint\':\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\n            break;\n    }\n\n    return $output;\n\n}', 0, '', '', 0, ''),
(18, 0, 0, 'migxIsNewObject', '', 0, 9, 0, 'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\n    return 1;\n}', 0, '', '', 0, ''),
(19, 0, 0, 'migx_example_validate', '', 0, 9, 0, '$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$validation_ENGINE= $modx->getOption(\'validation_type\', $scriptProperties, \'\');\n$result = \'\';\nswitch ($validation_type) {\n    case \'gt25\':\n        if ((int) $value > 25) {\n        } else {\n            $error_message = $validation_type; // may be custom validation message\n            $error[\'caption\'] = $form_field;\n            $error[\'validation_type\'] = $error_message;\n            $result[\'error\'] = $error;\n            $result = $modx->toJson($result);\n        }\n        break;\n}\nreturn $result;', 0, '', '', 0, ''),
(20, 0, 0, 'migxHookAftercollectmigxitems', '', 0, 9, 0, '$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\n\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\n$newrows = array();\n\n\nif (is_array($rows)) {\n    $max_id = 0;\n    $dbfields = array();\n    $existing_dbfields = array();\n    foreach ($rows as $key => $row) {\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\n            $max_id = $row[\'MIGX_id\'];\n        }\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\n            \n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\n\n        } else {\n            $newrows[] = $row;\n        }\n\n    }\n\n    foreach ($dbfields as $dbfield) {\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\n            $max_id++;\n            $newrow = array();\n            $newrow[\'MIGX_id\'] = $max_id;\n\n            switch ($configs) {\n                case \'migxformtabfields\':\n                    $newrow[\'field\'] = $dbfield;\n                    $newrow[\'caption\'] = $dbfield;\n                    break;\n                case \'migxcolumns\':\n                    $newrow[\'dataIndex\'] = $dbfield;\n                    $newrow[\'header\'] = $dbfield;\n                    break;                    \n            }\n\n\n            $newrows[] = $newrow;\n        }\n    }\n\n\n}\n\n\nreturn json_encode($newrows);', 0, '', '', 0, ''),
(21, 0, 0, 'migxAutoPublish', '', 0, 9, 0, '$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\n\nswitch ($mode) {\n    case \'datetime\' :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n    case \'unixtime\' :\n        $timeNow = time();\n        break;\n    default :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n}\n\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\n\nforeach ($classnames as $classname) {\n    if (!empty($classname)) {\n        $tblResource = $modx->getTableName($classname);\n        if (!$result = $modx->exec(\"UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\n        }\n        if (!$result = $modx->exec(\"UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\n        }\n    }\n\n}\n$modx->cacheManager->refresh();', 0, '', '', 0, ''),
(22, 1, 0, 'parseJSON', '', 0, 0, 0, '$input = $modx->fromJSON($input);\n$output = array();\nif (!$input || empty($tpl)) return false;\nif (!isset($limit) || !$limit || empty($limit)) $limit=count($input);\nif (!isset($offset) || !$offset || empty($offset)) $offset=0;\nif (!isset($show_more) || !$show_more || empty($show_more)) $show_more=0;\nif (!isset($first_load_page) || !$first_load_page || empty($first_load_page)) $first_load_page=0;\nif (!isset($filter) || !$filter || empty($filter)) $filter=\'all\';\n//echo $_GET[\'f\'];\nif(isset($_GET[\'f\']) && !empty($_GET[\'f\'])) { \n    $f = preg_replace(\'/[^a-z]-/\', \'\', trim($_GET[\'f\']));\n    if ($f == trim($_GET[\'f\'])) {\n        $filter=$f;\n    }\n    unset($_GET[\'f\']);\n}\n\n$i_limit=0;\n$i_copy=0;\n$test_for=false;\n$i_offset=0;\nif($filter!=\'all\') {\n    $cnt_offset=0;\n    for($i=0;$i<count($input);$i++) {\n        if(trim($input[$i][\'category\'])==trim($filter)) {\n            $cnt_offset=$cnt_offset+1;\n            $i_offset=$i;\n        }\n        if($cnt_offset==$offset) {\n            $offset=$i+1;\n           break;\n        }\n    }\n}\n//if($filter!=\'all\') {\n//    $offset=$i_offset+1;\n//}\nfor($i=$offset;$i<count($input);$i++) {\n  if($filter==\'all\') {\n      $test_for=true;\n      $i_copy=$i;\n      $input[$i][\'image\']=\'content/\'.$input[$i][\'image\'];\n      $output[] = $modx->getChunk($tpl, $input[$i]);\n      $i_limit=$i_limit+1;\n      if($i_limit==$limit) break;\n  } else {\n      if(trim($input[$i][\'category\'])==trim($filter)) {\n          $test_for=true;\n          $i_copy=$i;\n          $input[$i][\'image\']=\'content/\'.$input[$i][\'image\'];\n          $output[] = $modx->getChunk($tpl, $input[$i]);\n          $i_limit=$i_limit+1;\n          if($i_limit==$limit) break;\n      }\n  }\n}\nif(!$test_for)return \"\";\nif ($show_more==0) {\n    return implode(\"\\n\", $output);\n} else {\n    $additional_chunk=\'\';\n    if($first_load_page==1) {\n        if($filter==\'all\') {\n            if(($i_copy+1)==count($input)) {\n                $additional_chunk=$modx->getChunk($tplWithoutShowmore);\n            } else {\n                $additional_chunk=$modx->getChunk($tplWithShowmore);\n            }\n            return implode(\"\\n\", $output).\"\\n\".$additional_chunk;\n        } else {\n           $flag=0;\n            for($i=$i_copy+1;$i<count($input);$i++) {\n                if(trim($input[$i][\'category\'])==trim($filter)) {\n                    $flag=1;\n                    break;\n                }\n            }\n            if($flag==0)  {\n                $additional_chunk=$modx->getChunk($tplWithoutShowmore);\n            } else {\n                $additional_chunk=$modx->getChunk($tplWithShowmore);\n            }\n            return implode(\"\\n\", $output).\"\\n\".$additional_chunk;\n        }\n    } else {\n         if(($i_copy+1)==count($input)) $test_for=false;\n        if($filter!=\'all\') {\n            $flag=0;\n            for($i=$i_copy+1;$i<count($input);$i++) {\n                if(trim($input[$i][\'category\'])==trim($filter)) {\n                    $flag=1;\n                    break;\n                }\n            }\n            if($flag==0) $test_for=false;\n        }\n        \n        if($test_for) return implode(\"\\n\", $output).\'|||||\'.\'1\'; else return implode(\"\\n\", $output).\'|||||\'.\'0\';\n    }\n    \n}', 0, 'a:0:{}', '', 0, ''),
(23, 1, 0, 'getTypePhotography', '', 0, 0, 0, '$ids = $modx->getChildIds(4,1,array(\'context\' => \'web\'));\n$docs = $modx->getCollection(\'modResource\', array(\n    \'id:IN\' => $ids,\n    \'published\'=>\'1\',\n    \'deleted\'=>\'0\'\n));\n$output = array();\nif (empty($tpl)) return false;\nif (empty($tplPackage)) return false;\nforeach($docs as $doc) {\n    $inner = $modx->fromJSON($doc->getTVValue(\'package\'));\n    if (!$inner)\n        $output[] = $modx->getChunk($tpl, array(\'titleTypePhotography\'=>$doc->getTVValue(\'titleTypePhotography\'), \'subtitleTypePhotography\'=>$doc->getTVValue(\'subtitleTypePhotography\'), \'imageTopTypePhotography\'=>$doc->getTVValue(\'imageTopTypePhotography\'), \'urlTypePhotography\'=>trim($doc->getTVValue(\'urlTypePhotography\'), \'/\').\'/\'.trim($doc->getTVValue(\'categorySelectorForTypePhotography\')), \'package\'=>\'\', \'anchor\'=>$doc->get(\'alias\')));\n    else {\n         $output_inner = array();\n         $cnt=0;\n        foreach ($inner as $row) {\n          $cnt++;\n          $row[\'image\']=\'content/\'.$row[\'image\'];\n          $row[\'titleTypePhotography\'] = $doc->getTVValue(\'titleTypePhotography\');\n          if($cnt==2)\n            $output_inner[] = \'<div class=\"item carousel-item col-12 col-md-4 border-width-5 active\">\'.$modx->getChunk($tplPackage, $row);\n          else\n            $output_inner[] = \'<div class=\"item carousel-item col-12 col-md-4 border-width-1\">\'.$modx->getChunk($tplPackage, $row);\n        }\n        $output[] = $modx->getChunk($tpl, array(\'titleTypePhotography\'=>$doc->getTVValue(\'titleTypePhotography\'), \'subtitleTypePhotography\'=>$doc->getTVValue(\'subtitleTypePhotography\'), \'imageTopTypePhotography\'=>$doc->getTVValue(\'imageTopTypePhotography\'), \'urlTypePhotography\'=>trim($doc->getTVValue(\'urlTypePhotography\'), \'/\').\'/\'.trim($doc->getTVValue(\'categorySelectorForTypePhotography\')), \'package\'=>implode(\'\',$output_inner), \'anchor\'=>$doc->get(\'alias\')));\n    }\n     \n}\nreturn implode(\"\\n\", $output);', 0, 'a:0:{}', '', 0, ''),
(25, 1, 0, 'getGiftcard', '', 0, 0, 0, '$resource = $modx->getObject(\'modResource\',10);\n//echo $resource->getTVValue(\'giftcardText\');\n//echo $resource->getTVValue(\'giftcardImage\');\nreturn $modx->getChunk($tpl, array(\'giftcardText\'=>$resource->getTVValue(\'giftcardText\'), \'giftcardImage\'=>$resource->getTVValue(\'giftcardImage\'), \'titleBlockGiftCard\'=>$resource->getTVValue(\'titleBlockGiftCard\')));', 0, 'a:0:{}', '', 0, ''),
(26, 1, 0, 'getPhotocourse', '', 0, 0, 0, '$resource = $modx->getObject(\'modResource\',11);\n//echo $resource->getTVValue(\'giftcardText\');\n//echo $resource->getTVValue(\'giftcardImage\');\nreturn $modx->getChunk($tpl, array(\'photocourseText\'=>$resource->getTVValue(\'photocourseText\'), \'photocourseImage\'=>$resource->getTVValue(\'photocourseImage\'), \'titleBlockPhotocourse\'=>$resource->getTVValue(\'titleBlockPhotocourse\')));', 0, 'a:0:{}', '', 0, ''),
(27, 1, 0, 'getCategorySelector', '', 0, 14, 0, '$page = $modx->getObject(\'modResource\', $id);\n$tv=$modx->fromJSON($page->getTVValue(\'categorySelector\'));\n$output=\'\';\nforeach ($tv as $row) {\n  $output .= $row[\'name\'].\'==\'.$row[\'value\'].\'||\';\n}\nreturn trim($output,\'||\');', 0, 'a:0:{}', '', 0, ''),
(28, 1, 0, 'parseCategorySelectorButtonJSON', '', 0, 14, 0, '$input = $modx->fromJSON($input);\n$output = array();\nif (!$input || empty($tpl)) return false;\n$filter=\'all\';\nif(isset($_GET[\'f\']) && !empty($_GET[\'f\'])) { \n    $f = preg_replace(\'/[^a-z-]/\', \'\', trim($_GET[\'f\']));\n    if ($f == trim($_GET[\'f\'])) {\n        $filter=$f;\n    }\n}\n\nfor($i=0;$i<count($input);$i++) {\n    if(trim($input[$i][\'value\'])==trim($filter)) {\n        $input[$i][\'active\'] = \' active\';\n    } else {\n        $input[$i][\'active\'] = \'\';\n    }\n    $input[$i][\'name\']=mb_strtoupper ($input[$i][\'name\'], \'UTF-8\');\n    $output[] = $modx->getChunk($tpl, $input[$i]);\n}\n$all[\'name\'] = \'ВСЕ РАБОТЫ\';\n$all[\'value\'] = \'all\';\nif($filter==\'all\') $all[\'active\'] = \' active\'; else $all[\'active\'] = \'\';\n $output[] = $modx->getChunk($tpl, $all);\nreturn implode(\"\\n\", $output);', 0, 'a:0:{}', '', 0, ''),
(29, 1, 0, 'parseCategorySelectorSelectJSON', '', 0, 14, 0, '$input = $modx->fromJSON($input);\n$output = array();\nif (!$input || empty($tpl)) return false;\n$filter=\'all\';\nif(isset($_GET[\'f\']) && !empty($_GET[\'f\'])) { \n    $f = preg_replace(\'/[^a-z-]/\', \'\', trim($_GET[\'f\']));\n    if ($f == trim($_GET[\'f\'])) {\n        $filter=$f;\n    }\n}\n\nfor($i=0;$i<count($input);$i++) {\n    if(trim($input[$i][\'value\'])==trim($filter)) {\n        $input[$i][\'active\'] = \' selected\';\n    } else {\n        $input[$i][\'active\'] = \'\';\n    }\n    $input[$i][\'name\']=$input[$i][\'name\'];\n    $output[] = $modx->getChunk($tpl, $input[$i]);\n}\n$all[\'name\'] = \'Все работы\';\n$all[\'value\'] = \'all\';\nif($filter==\'all\') $all[\'active\'] = \' selected\'; else $all[\'active\'] = \'\';\n $output[] = $modx->getChunk($tpl, $all);\nreturn implode(\"\\n\", $output);', 0, 'a:0:{}', '', 0, '');
INSERT INTO `sneg_prfx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(30, 3, 0, 'order', '', 0, 0, 0, 'if (!$input || empty($input)) return false;\nif (!$formType || trim($formType)==\'\') return false;\n//------\n$resource = $modx->getObject(\'modResource\',3);\n$emailUser=trim($resource->getTVValue(\'emailUser\'));\n$emailPassword=trim($resource->getTVValue(\'emailPassword\'));\n$emailSMTP=trim($resource->getTVValue(\'emailSMTP\'));\n$emailPort=(int)$resource->getTVValue(\'emailPort\');\n$emailSMTPSecure=$resource->getTVValue(\'emailSMTPSecure\');\n$emailTo=$resource->getTVValue(\'emailTo\');\n//------\nswitch ($formType) {\n    case(\'orderportfolio\'): {\n        $modx->getService(\'mail\', \'mail.modPHPMailer\');\n        $modx->mail->set(modMail::MAIL_ENGINE, \'smtp\');\n        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);\n        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);\n        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);\n        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);\n        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);\n        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->set(modMail::MAIL_FROM,$emailUser);\n        $modx->mail->set(modMail::MAIL_FROM_NAME,\'Sneg заказ\');\n        $modx->mail->set(modMail::MAIL_SUBJECT,\'Новый заказ со страницы портфолио\');\n        $message = str_replace(\'[[+phone]]\', $input[\'phone\'], str_replace(\'[[+name]]\', $input[\'name\'], $modx->getChunk(\'orderportfolioEmailTemplate\')));\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->setHTML(true);\n        $modx->mail->address(\'to\',$emailTo);\n        if (!$modx->mail->send()) {\n            $modx->log(modX::LOG_LEVEL_ERROR,\'An error occurred while trying to send the email: \'.$modx->mail->mailer->ErrorInfo);\n            $modx->mail->reset();\n            return false;\n        } else {\n            $modx->mail->reset();\n            return true;\n        }\n        break;\n    }\n    case(\'orderindexpackage\'): {\n        $modx->getService(\'mail\', \'mail.modPHPMailer\');\n        $modx->mail->set(modMail::MAIL_ENGINE, \'smtp\');\n        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);\n        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);\n        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);\n        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);\n        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);\n        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->set(modMail::MAIL_FROM,$emailUser);\n        $modx->mail->set(modMail::MAIL_FROM_NAME,\'Sneg заказ\');\n        $modx->mail->set(modMail::MAIL_SUBJECT,\'Новый заказ пакета услуг фотосъемки\');\n        $message = str_replace(\'[[+type]]\', $input[\'type\'], str_replace(\'[[+package]]\', $input[\'package\'], str_replace(\'[[+phone]]\', $input[\'phone\'], str_replace(\'[[+name]]\', $input[\'name\'], $modx->getChunk(\'orderindexpackageEmailTemplate\')))));\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->setHTML(true);\n        $modx->mail->address(\'to\',$emailTo);\n        if (!$modx->mail->send()) {\n            $modx->log(modX::LOG_LEVEL_ERROR,\'An error occurred while trying to send the email: \'.$modx->mail->mailer->ErrorInfo);\n            $modx->mail->reset();\n            return false;\n        } else {\n            $modx->mail->reset();\n            return true;\n        }\n        break;\n    }\n    case(\'orderindexcertificate\'): {\n        $modx->getService(\'mail\', \'mail.modPHPMailer\');\n        $modx->mail->set(modMail::MAIL_ENGINE, \'smtp\');\n        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);\n        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);\n        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);\n        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);\n        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);\n        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->set(modMail::MAIL_FROM,$emailUser);\n        $modx->mail->set(modMail::MAIL_FROM_NAME,\'Sneg заказ\');\n        $modx->mail->set(modMail::MAIL_SUBJECT,\'Новый заказ подарочного сертификата\');\n        $message = str_replace(\'[[+text]]\', $input[\'text\'], str_replace(\'[[+name-who]]\', $input[\'name-who\'], str_replace(\'[[+phone-who]]\', $input[\'phone-who\'], str_replace(\'[[+phone]]\', $input[\'phone\'], str_replace(\'[[+name]]\', $input[\'name\'], $modx->getChunk(\'orderindexcertificateEmailTemplate\'))))));\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->setHTML(true);\n        $modx->mail->address(\'to\',$emailTo);\n        if (!$modx->mail->send()) {\n            $modx->log(modX::LOG_LEVEL_ERROR,\'An error occurred while trying to send the email: \'.$modx->mail->mailer->ErrorInfo);\n            $modx->mail->reset();\n            return false;\n        } else {\n            $modx->mail->reset();\n            return true;\n        }\n        break;\n    }\n    case(\'orderindexphotocourse\'): {\n        $modx->getService(\'mail\', \'mail.modPHPMailer\');\n        $modx->mail->set(modMail::MAIL_ENGINE, \'smtp\');\n        $modx->mail->set(modMail::MAIL_SMTP_AUTH,true);\n        $modx->mail->set(modMail::MAIL_SMTP_USER,$emailUser);\n        $modx->mail->set(modMail::MAIL_SMTP_PASS,$emailPassword);\n        $modx->mail->set(modMail::MAIL_SMTP_HOSTS,$emailSMTP);\n        $modx->mail->set(modMail::MAIL_SMTP_PORT,$emailPort);\n        $modx->mail->set(modMail::MAIL_SMTP_PREFIX,$emailSMTPSecure);\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->set(modMail::MAIL_FROM,$emailUser);\n        $modx->mail->set(modMail::MAIL_FROM_NAME,\'Sneg заказ\');\n        $rs = $modx->getObject(\'modResource\', 11);\n        $modx->mail->set(modMail::MAIL_SUBJECT,$rs->getTVValue(\'subjectMailPhotocourse\'));\n        $message = str_replace(\'[[+phone]]\', $input[\'phone\'], str_replace(\'[[+name]]\', $input[\'name\'], $modx->getChunk(\'orderindexphotocourseEmailTemplate\')));\n        $modx->mail->set(modMail::MAIL_BODY,$message);\n        $modx->mail->setHTML(true);\n        $modx->mail->address(\'to\',$emailTo);\n        if (!$modx->mail->send()) {\n            $modx->log(modX::LOG_LEVEL_ERROR,\'An error occurred while trying to send the email: \'.$modx->mail->mailer->ErrorInfo);\n            $modx->mail->reset();\n            return false;\n        } else {\n            $modx->mail->reset();\n            return true;\n        }\n        break;\n    }\n}', 0, 'a:0:{}', '', 0, ''),
(31, 3, 0, 'headerMenu', '', 0, 0, 0, 'if (!isset($parent) || !$parent || empty($parent)) return false;\nif (empty($tpl)) return false;\n$child_ids = $modx->getChildIds($parent,1);\n$output=\'\';\nforeach ($child_ids as $child_id){\n   $resource = $modx->getObject(\'modResource\', $child_id);\n   $output.= $modx->getChunk($tpl, array(\'text\'=>$resource->get(\'menutitle\'), \'anchor\'=>$resource->getTVValue(\'categorySelectorForTypePhotography\')));\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(32, 3, 0, 'headerMenuElement', '', 0, 0, 0, 'if (!isset($id) || !$id || empty($id)) return false;\nif (empty($tpl)) return false;\n$resource = $modx->getObject(\'modResource\', $id);\nreturn $modx->getChunk($tpl, array(\'text\'=>$resource->get(\'menutitle\'), \'anchor\'=>$resource->get(\'alias\')));', 0, 'a:0:{}', '', 0, ''),
(33, 3, 0, 'getmodalHeaderPhotocourse', '', 0, 0, 0, '$resource = $modx->getObject(\'modResource\', 11);\nreturn $resource->getTVValue(\'headerModalPhotocourse\');', 0, 'a:0:{}', '', 0, ''),
(34, 1, 0, 'setFilterHidden', '', 0, 14, 0, '$output=\'all\';\nif(isset($_GET[\'f\']) && !empty($_GET[\'f\'])) { \n    $f = preg_replace(\'/[^a-z-]/\', \'\', trim($_GET[\'f\']));\n    if ($f == trim($_GET[\'f\'])) {\n        $output=$f;\n    }\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(35, 1, 0, 'searchBotDisable', '', 0, 0, 0, 'if (isset($_SERVER[\'HTTP_USER_AGENT\']) && preg_match(\'/bot|crawl|slurp|spider|libwww|Wget|LWP|damnBot|BBBike|java|spider|crawl|google|bing|yandex|msnbot/i\', $_SERVER[\'HTTP_USER_AGENT\'])) {\n header(\"HTTP/1.1 403 Forbidden\");exit;\n}', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_templates`
--

DROP TABLE IF EXISTS `sneg_prfx_site_templates`;
CREATE TABLE `sneg_prfx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_templates`
--

INSERT INTO `sneg_prfx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Шаблон главной страницы', '', 0, 0, '', 0, '<!DOCTYPE html>\n<html lang=\"ru\">\n    [[!searchBotDisable]]\n    [[$headHome]]\n    [[$header]]\n    [[$mainSlider]]\n    [[$typePhotography]]\n    [[$giftcard]]\n    [[$photocourse]]\n    [[$footer]]\n    [[$modalResult]]\n    [[$modalPackage]]\n    [[$modalCertificate]]\n    [[$modalPhotocourse]]\n</html>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'Шаблон портфолио', '', 0, 0, '', 0, '<!DOCTYPE html>\n<html lang=\"ru\">\n    [[$headPortfolio]]\n    [[$header]]\n    <section class=\"container-fluid page-header\">\n      <div class=\"container-center-xl\">\n        <div class=\"media-container-row\">\n          <div class=\"col-12 col-md-4 col-xl-6 padding-left-0px-xl\">\n            <div class=\"media-wrap text-body\">\n              <ol class=\"breadcrumb\">\n                <li class=\"breadcrumb-item\"><a href=\"[[+site_url]]\">Главная</a></li>\n                <li class=\"breadcrumb-item\">Портфолио</li>\n              </ol>\n            </div>\n          </div>\n          <div class=\"col-12 col-md-6 col-xl-4 header-padding\">\n            <div class=\"media-wrap text-body\">\n              <h1 class=\"text-center text-xl-left\">ПОРТФОЛИО</h1>\n            </div>\n          </div>\n        </div>\n      </div>\n    </section>\n    [[$portfolio]]\n    [[$orderPortfolio]]\n    [[$footer]]\n    [[$modalResult]]\n</html>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'Шаблон общих настроек сайта', '', 0, 0, '', 0, '', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'Шаблон типов фотосъемки', '', 0, 0, '', 0, '', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'Шаблон подарочный сертификат', '', 0, 0, '', 0, '', 0, 'a:0:{}', 0, ''),
(6, 1, 0, 'Шаблон фотокурс', '', 0, 0, '', 0, '', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_tmplvars`
--

DROP TABLE IF EXISTS `sneg_prfx_site_tmplvars`;
CREATE TABLE `sneg_prfx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_tmplvars`
--

INSERT INTO `sneg_prfx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'option', 'metaRobots', 'Настройка видимости для поисковых систем', '', 0, 2, 0, 'index, follow||noindex, follow||index, nofollow||noindex, nofollow', 4, 'string', 'index, follow', 'a:0:{}', 'a:2:{s:10:\"allowBlank\";s:5:\"false\";s:7:\"columns\";s:1:\"1\";}', 'a:1:{s:6:\"format\";s:10:\"Lower Case\";}', 0, ''),
(2, 1, 0, 'text', 'metaDescription', 'Мета-тег Description', '', 0, 2, 0, '', 2, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(3, 1, 0, 'text', 'metaKeywords', 'Мета-тег Keywords', '', 0, 2, 0, '', 3, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(4, 1, 0, 'text', 'title', 'Тег Title', '', 0, 2, 0, '', 1, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(5, 1, 0, 'text', 'phoneFirst', 'Телефон', '', 0, 5, 0, '', 2, 'string', '000 000 00 00', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(6, 1, 0, 'text', 'phoneSecond', 'Телефон', '', 0, 6, 0, '', 2, 'string', '000 000 00 00', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(7, 1, 0, 'text', 'namePhoneFirst', 'Имя', '', 0, 5, 0, '', 1, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(8, 1, 0, 'text', 'namePhoneSecond', 'Имя', '', 0, 6, 0, '', 1, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(9, 1, 0, 'email', 'email', 'E-mail', '', 0, 7, 0, '', 0, 'string', '', 'a:0:{}', 'a:3:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"maxLength\";s:0:\"\";s:9:\"minLength\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(10, 1, 0, 'text', 'behance', 'Ссылка на профиль Behance.net', '', 0, 8, 0, '', 0, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(11, 1, 0, 'text', 'instagram', 'Ссылка на профиль Instagram.com', '', 0, 8, 0, '', 0, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(12, 3, 0, 'migx', 'mainSlider', 'Слайдер вверху главной страницы', '', 0, 10, 0, '', 1, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:0:\"\";s:8:\"formtabs\";s:207:\"[{\"caption\":\"Слайд\", \"fields\": [     \n    {\"field\":\"image\",\"caption\":\"Изображение\",\"inputTVtype\":\"image\"},\n    {\"field\":\"description\",\"caption\":\"Описание\",\"inputTVtype\":\"text\"}\n  ]\n}]\";s:7:\"columns\";s:200:\"[{\n  \"header\": \"Описание\", \"sortable\": \"false\", \"dataIndex\": \"description\"\n},{\n  \"header\": \"Изображение\", \"sortable\": \"false\", \"dataIndex\": \"image\",\"renderer\": \"this.renderImage\"\n}]\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(13, 3, 0, 'image', 'imageTopTypePhotography', 'Изображение под названием раздела (верх раздела)', '', 0, 11, 0, '', 3, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(14, 1, 0, 'text', 'urlTypePhotography', 'Ссылка на раздел портфолио', '', 0, 11, 0, '', 4, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(15, 1, 0, 'text', 'titleTypePhotography', 'Заглавие раздела (крупным шрифтом)', '', 0, 11, 0, '', 2, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(16, 1, 0, 'text', 'subtitleTypePhotography', 'Заглавие раздела (меньшим шрифтом)', '', 0, 11, 0, '', 2, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(17, 3, 0, 'migx', 'package', 'Пакеты услуг', '', 0, 11, 0, '', 6, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:0:\"\";s:8:\"formtabs\";s:575:\"[{\"caption\":\"Пакет\", \"fields\": [     \n    {\"field\":\"name\",\"caption\":\"Название пакета\",\"inputTVtype\":\"text\"},\n    {\"field\":\"name_for_modal\",\"caption\":\"Название пакета для формы заказа\",\"inputTVtype\":\"text\"},\n{\"field\":\"image\",\"caption\":\"Иконка пакета\",\"inputTVtype\":\"image\"},\n    {\"field\":\"description\",\"caption\":\"Описание\",\"inputTVtype\":\"richtext\"},\n    {\"field\":\"price\",\"caption\":\"Цена\",\"inputTVtype\":\"text\"},\n    {\"field\":\"price_sale\",\"caption\":\"Акционная цена\",\"inputTVtype\":\"text\"}\n  ]\n}]\";s:7:\"columns\";s:590:\"[{\n  \"header\": \"Название пакета\", \"sortable\": \"false\", \"dataIndex\": \"name\"\n},\n{\n  \"header\": \"Название пакета для формы заказа\", \"sortable\": \"false\", \"dataIndex\": \"name_for_modal\"\n},\n{\n  \"header\": \"Иконка пакета\", \"sortable\": \"false\", \"dataIndex\": \"image\",\"renderer\": \"this.renderImage\"\n},\n{\n \"header\": \"Описание\", \"sortable\": \"false\", \"dataIndex\": \"description\"\n},\n{\n \"header\": \"Цена\", \"sortable\": \"false\", \"dataIndex\": \"price\"\n},\n{\n \"header\": \"Акционная цена\", \"sortable\": \"false\", \"dataIndex\": \"price_sale\"\n}]\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(18, 1, 0, 'richtext', 'giftcardText', 'Текстовый блок', '', 0, 12, 0, '', 2, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(19, 3, 0, 'image', 'giftcardImage', 'Блок изображения', '', 0, 12, 0, '', 3, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(20, 3, 0, 'image', 'photocourseImage', 'Блок изображения', '', 0, 13, 0, '', 3, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(21, 1, 0, 'richtext', 'photocourseText', 'Текстовый блок', '', 0, 13, 0, '', 2, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(22, 1, 0, 'migx', 'categorySelector', 'Категории фотографий', '', 0, 14, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:0:\"\";s:8:\"formtabs\";s:303:\"[{\"caption\":\"Категория фотографий\", \"fields\": [     \n    {\"field\":\"name\",\"caption\":\"Название\",\"inputTVtype\":\"text\"},\n    {\"field\":\"value\",\"caption\":\"Значение для фильтра (только латинские буквы и дефис)\",\"inputTVtype\":\"text\"}\n  ]\n}]\";s:7:\"columns\";s:178:\"[{\n  \"header\": \"Название\", \"sortable\": \"false\", \"dataIndex\": \"name\"\n},{\n  \"header\": \"Значение для фильтра\", \"sortable\": \"false\", \"dataIndex\": \"value\"\n}]\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(23, 3, 0, 'migx', 'portfolioGallery', 'Галерея портфолио', '', 0, 14, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:0:\"\";s:8:\"formtabs\";s:427:\"[{\"caption\":\"Фотографии\", \"fields\": [     \n    {\"field\":\"image\",\"caption\":\"Фотография\",\"inputTVtype\":\"image\"},\n    {\"field\":\"category\",\"caption\":\"Категория\",\"inputTVtype\":\"listbox\",\"inputOptionValues\":\"@EVAL return $modx->runSnippet(\'getCategorySelector\', array(\'id\' => $modx->resource->get(\'id\')));\"},\n{\"field\":\"alt\",\"caption\":\"Описание изображения\",\"inputTVtype\":\"text\"}\n  ]\n}]\";s:7:\"columns\";s:294:\"[{\n  \"header\": \"Фотография\", \"sortable\": \"false\", \"dataIndex\": \"image\",\"renderer\": \"this.renderImage\"\n},\n{\n  \"header\": \"Тег для фильтра\", \"sortable\": \"false\", \"dataIndex\": \"category\"\n},\n{\n  \"header\": \"Описание фото\", \"sortable\": \"false\", \"dataIndex\": \"alt\"\n}]\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(24, 1, 0, 'listbox', 'categorySelectorForTypePhotography', 'Тип фотосессии', '', 0, 11, 0, '@EVAL return $modx->runSnippet(\'getCategorySelector\', array(\'id\' => 2));', 5, 'default', '', 'a:0:{}', 'a:7:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"listWidth\";s:0:\"\";s:5:\"title\";s:19:\"Не выбрано\";s:9:\"typeAhead\";s:5:\"false\";s:14:\"typeAheadDelay\";s:3:\"250\";s:14:\"forceSelection\";s:5:\"false\";s:13:\"listEmptyText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(25, 1, 0, 'textarea', 'google', 'Код Google Analytics', '', 0, 2, 0, '', 9, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(26, 3, 0, 'text', 'emailUser', 'E-mail', '', 0, 16, 0, '', 1, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(27, 3, 0, 'text', 'emailPassword', 'Пароль', '', 0, 16, 0, '', 2, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(28, 3, 0, 'text', 'emailSMTP', 'SMTP-сервер', '', 0, 16, 0, '', 3, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(29, 3, 0, 'number', 'emailPort', 'SMTP-порт', '', 0, 16, 0, '', 4, 'string', '', 'a:0:{}', 'a:7:{s:10:\"allowBlank\";s:5:\"false\";s:13:\"allowDecimals\";s:6:\"Нет\";s:13:\"allowNegative\";s:6:\"Нет\";s:16:\"decimalPrecision\";s:1:\"0\";s:16:\"decimalSeparator\";s:1:\".\";s:8:\"maxValue\";s:5:\"65535\";s:8:\"minValue\";s:1:\"1\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(30, 3, 0, 'listbox', 'emailSMTPSecure', 'Тип шифрования', '', 0, 16, 0, 'SSL==ssl||TLS==tls', 5, 'default', '', 'a:0:{}', 'a:7:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"listWidth\";s:0:\"\";s:5:\"title\";s:16:\"Выберите\";s:9:\"typeAhead\";s:4:\"true\";s:14:\"typeAheadDelay\";s:3:\"250\";s:14:\"forceSelection\";s:4:\"true\";s:13:\"listEmptyText\";s:54:\"Проверьте правильность ввода\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(31, 3, 0, 'text', 'emailTo', 'E-mail получателя письма', '', 0, 16, 0, '', 6, 'string', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:1:{s:6:\"format\";s:0:\"\";}', 0, ''),
(32, 3, 0, 'text', 'titleBlockGiftCard', 'Название', '', 0, 12, 0, '', 1, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(33, 3, 0, 'text', 'titleBlockPhotocourse', 'Название', '', 0, 13, 0, '', 1, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(34, 3, 0, 'text', 'headerModalPhotocourse', 'Заголовок диалогового окна заказа', '', 0, 13, 0, '', 5, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(35, 3, 0, 'text', 'subjectMailPhotocourse', 'Тема письма с заказом услуги', '', 0, 13, 0, '', 10, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `sneg_prfx_site_tmplvar_access`;
CREATE TABLE `sneg_prfx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `sneg_prfx_site_tmplvar_contentvalues`;
CREATE TABLE `sneg_prfx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_tmplvar_contentvalues`
--

INSERT INTO `sneg_prfx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 4, 1, 'Демо-сайт фотостудии'),
(2, 2, 1, 'Демо-сайт фотостудии'),
(3, 3, 1, 'Демо-сайт фотостудии'),
(4, 4, 2, 'Демо-сайт фотостудии'),
(5, 2, 2, 'Демо-сайт фотостудии'),
(6, 3, 2, 'Демо-сайт фотостудии'),
(7, 5, 3, '(067) 000 00 00'),
(8, 6, 3, '(066) 000 00 00'),
(9, 7, 3, 'Александр'),
(10, 8, 3, 'Владимир'),
(11, 9, 3, 'email@domain.tld'),
(12, 10, 3, 'https://www.behance.net/'),
(13, 11, 3, 'https://www.instagram.com/'),
(14, 12, 1, '[{\"MIGX_id\":\"1\",\"image\":\"main_slider/2018_06_21_T080838100_1529570096.jpg\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et massa libero. In hac habitasse platea dictumst. Integer volutpat lacinia purus, bibendum tincidunt dolor vehicula ac.\"},{\"MIGX_id\":\"2\",\"image\":\"main_slider/2018_06_21_T045618500_1529570391.jpg\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et massa libero. In hac habitasse platea dictumst. Integer volutpat lacinia purus, bibendum tincidunt dolor vehicula ac.\"},{\"MIGX_id\":\"3\",\"image\":\"main_slider/2018_06_21_T037279700_1529570618.jpg\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et massa libero. In hac habitasse platea dictumst. Integer volutpat lacinia purus, bibendum tincidunt dolor vehicula ac.\"}]'),
(15, 15, 5, 'СВАДЬБЫ'),
(16, 16, 5, 'ФОТОСЪЕМКА, ФОТОАЛЬБОМЫ'),
(18, 14, 5, 'https://sneg-photo.webprogrammer.page/portfolio'),
(19, 15, 6, 'LOVE STORY'),
(20, 16, 6, 'Фотосъемка, фотокниги'),
(22, 14, 6, 'https://sneg-photo.webprogrammer.page/portfolio'),
(23, 15, 7, 'СЕМЕЙНЫЕ'),
(24, 16, 7, 'ФОТОСЪЕМКА, ФОТОКНИГИ'),
(26, 14, 7, 'https://sneg-photo.webprogrammer.page/portfolio'),
(27, 15, 8, 'ДРУГИЕ ВИДЫ СЬЕМОК'),
(28, 16, 8, 'РЕПОРТАЖНАЯ, ПОРТРЕТНАЯ, КОММЕРЧЕСКАЯ, ПРЕДМЕТНАЯ'),
(30, 14, 8, 'https://sneg-photo.webprogrammer.page/portfolio'),
(31, 17, 5, '[{\"MIGX_id\":\"4\",\"name\":\"МИНИМАЛЬНЫЙ\",\"name_for_modal\":\"СВАДЬБА - минимальный пакет\",\"image\":\"type_photography/min_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; 4&nbsp;часа&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 200&nbsp;фотографий в цветокоррекции</p>\\n<p>&nbsp; ❆&nbsp; 15 фото в ретуши&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 10 распечатнных фотографий</p>\\n<p>&nbsp; ❆&nbsp; Фото на диске</p>\\n<p>&nbsp; ❆&nbsp; Фотографии отдаются клиенту&nbsp; в течении 1 месяца</p>\",\"price\":\"2500 грн\",\"price_sale\":\"2000 грн\"},{\"MIGX_id\":\"3\",\"name\":\"ОПТИМАЛЬНЫЙ\",\"name_for_modal\":\"СВАДЬБА - оптимальный пакет\",\"image\":\"type_photography/middle_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; до&nbsp;9 часов&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф и его помощник</p>\\n<p>&nbsp; ❆&nbsp; 600 фотографий в цветокоррекции</p>\\n<p>&nbsp; ❆&nbsp; 30 фото в детальной ретуши&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 40 распечатнных фотографий</p>\\n<p>&nbsp; ❆&nbsp; Фото на диске</p>\\n<p>&nbsp; ❆&nbsp; Стандартная фотокнига</p>\\n<p>&nbsp; ❆&nbsp; Скидка 50% на&nbsp;следующую фотосессию</p>\\n<p>&nbsp; ❆&nbsp; Фотографии отдаются клиенту&nbsp;в течении 1 месяца</p>\",\"price\":\"8000 грн\",\"price_sale\":\"7000 грн\"},{\"MIGX_id\":\"1\",\"name\":\"МАКСИМАЛЬНЫЙ\",\"name_for_modal\":\"СВАДЬБА - максимальный пакет\",\"image\":\"type_photography/max_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; до 15 часов&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 2&nbsp;фотографа</p>\\n<p>&nbsp; ❆&nbsp; 1000&nbsp;фотографий в цветокоррекции</p>\\n<p>&nbsp; ❆&nbsp; 70 фото в детальной ретуши&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 50 распечатнных фотографий</p>\\n<p>&nbsp; ❆&nbsp; Фото на диске</p>\\n<p>&nbsp; ❆&nbsp; Фотокнига премиум-класса</p>\\n<p>&nbsp; ❆&nbsp; Фотографии отдаются клиенту в течении 1 месяца</p>\",\"price\":\"15000 грн\",\"price_sale\":\"13000 грн\"}]'),
(32, 17, 6, '[{\"MIGX_id\":\"3\",\"name\":\"ЛОКАЦИЯ\",\"name_for_modal\":\"\",\"image\":\"type_photography/min_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; 1 час&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф</p>\\n<p>&nbsp; ❆&nbsp; фотосъемка на одной локации&nbsp;&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 200 фотографий в цветокоррекции&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 10 фото в детальной ретуши</p>\\n<p>&nbsp; ❆&nbsp; 10 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 20 дней</p>\",\"price\":\"800 грн\",\"price_sale\":\"700 грн\"},{\"MIGX_id\":\"2\",\"name\":\"СТУДИЯ\",\"name_for_modal\":\"\",\"image\":\"type_photography/middle_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; 1 час в студии</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 200 фотографий в цветокоррекции</p>\\n<p>&nbsp; ❆&nbsp; 10 фото в детальной ретуши</p>\\n<p>&nbsp; ❆&nbsp; 15 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 20 дней</p>\\n<p>&nbsp; ❆&nbsp; консультациии по подбору локации и одежды&nbsp;</p>\",\"price\":\"1200 грн\",\"price_sale\":\"1000 грн\"},{\"MIGX_id\":\"1\",\"name\":\"ДЕНЬ С ПАРОЙ\",\"name_for_modal\":\"\",\"image\":\"type_photography/max_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; до 4 часов&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 500 фотографий в цветокоррекции&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 25 фото в детальной ретуши</p>\\n<p>&nbsp; ❆&nbsp; 20 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; стандартная фотокнига&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 1 месяца</p>\\n<p>&nbsp; ❆&nbsp; консультации&nbsp;по подбору локации и одежды</p>\",\"price\":\"3000 грн\",\"price_sale\":\"2500 грн\"}]'),
(33, 17, 7, '[{\"MIGX_id\":\"3\",\"name\":\"ЛОКАЦИЯ\",\"name_for_modal\":\"\",\"image\":\"type_photography/min_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; 1 час&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф</p>\\n<p>&nbsp; ❆&nbsp; фотосъемка на одной локации&nbsp;&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 200 фотографий в цветокоррекции&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 10 фото в детальной ретуши</p>\\n<p>&nbsp; ❆&nbsp; 10 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 20 дней</p>\",\"price\":\"800 грн\",\"price_sale\":\"700 грн\"},{\"MIGX_id\":\"2\",\"name\":\"СТУДИЯ\",\"name_for_modal\":\"\",\"image\":\"type_photography/middle_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; 1 час в студии</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 200 фотографий в цветокоррекции</p>\\n<p>&nbsp; ❆&nbsp; 10 фото в детальной ретуши</p>\\n<p>&nbsp; ❆&nbsp; 15 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 20 дней</p>\\n<p>&nbsp; ❆&nbsp; консультациии по подбору локации и одежды</p>\",\"price\":\"1200 грн\",\"price_sale\":\"1000 грн\"},{\"MIGX_id\":\"1\",\"name\":\"ДЕНЬ С СЕМЬЕЙ \",\"name_for_modal\":\"\",\"image\":\"type_photography/max_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp; до 4 часов&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 500 фотографий в цветокоррекции&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 25 фото в детальной ретуши</p>\\n<p>&nbsp; ❆&nbsp; 20 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; стандартная фотокнига&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 1 месяца</p>\\n<p>&nbsp; ❆&nbsp; консультации&nbsp;по подбору локации и одежды</p>\",\"price\":\"3000 грн\",\"price_sale\":\"2500 грн\"}]'),
(34, 17, 8, '[{\"MIGX_id\":\"3\",\"name\":\"РЕПОРТАЖ\",\"name_for_modal\":\"\",\"image\":\"type_photography/min_battery.png\",\"description\":\"<p>&nbsp;&nbsp;❆&nbsp; Детские дни рождения, крестины</p>\\n<p>&nbsp; ❆&nbsp; 1 час&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 100&nbsp;фотографий в цветокоррекции&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 10&nbsp;напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp;&nbsp;фотографии отдаются клиенту в течении 20 дней</p>\",\"price\":\"800 грн\",\"price_sale\":\"700 грн\"},{\"MIGX_id\":\"2\",\"name\":\"ВЫПИСКА ИЗ РОДДОМА \",\"name_for_modal\":\"\",\"image\":\"type_photography/middle_battery.png\",\"description\":\"<p>&nbsp; ❆&nbsp;&nbsp;До 2 чсов</p>\\n<p>&nbsp; ❆&nbsp; 1 фотограф&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 50&nbsp;фотографий в цветокоррекции&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; 20 напечатанных фотографий</p>\\n<p>&nbsp; ❆&nbsp; диск с фотографиями</p>\\n<p>&nbsp; ❆&nbsp; фотографии отдаются клиенту в течении 20 дней</p>\\n<p>&nbsp;</p>\",\"price\":\"1500 грн\",\"price_sale\":\"1200 грн\"},{\"MIGX_id\":\"4\",\"name\":\"ВЫПУСКНОЙ\",\"name_for_modal\":\"\",\"image\":\"type_photography/middle_battery.png\",\"description\":\"<p>&nbsp;</p>\\n<p>&nbsp; ❆&nbsp; сьёмка выпускных&nbsp;из детских садов, школ и высших учебных заведений</p>\\n<p>&nbsp; ❆&nbsp; 1 или 2 фотографа</p>\\n<p>&nbsp; ❆&nbsp;&nbsp;выпускной альбом</p>\\n<p>&nbsp; ❆&nbsp; детали и стоимость обсуждаются индивидуально</p>\",\"price\":\"от 500 грн\",\"price_sale\":\"\"}]'),
(35, 18, 10, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et massa libero. In hac habitasse platea dictumst. Integer volutpat lacinia purus, bibendum tincidunt dolor vehicula ac. Donec interdum dui id consectetur viverra. Pellentesque eu dictum neque. Suspendisse ac sagittis neque. Sed eleifend nisl nec congue porttitor. Pellentesque nec mi condimentum, congue dui sed, condimentum purus. Nulla consectetur ipsum ut justo fringilla dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet luctus libero, eget finibus est.</p>'),
(36, 19, 10, 'giftcard/certificate.jpg'),
(37, 18, 11, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />1. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />2. Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est <br />3. Laborum.voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.<br />4. Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(38, 19, 11, 'content/giftcard/certificate.jpg'),
(39, 20, 11, 'type_photography/2018_06_21_T039692300_1529569753.jpg'),
(40, 21, 11, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et massa libero. In hac habitasse platea dictumst. Integer volutpat lacinia purus, bibendum tincidunt dolor vehicula ac. Donec interdum dui id consectetur viverra. Pellentesque eu dictum neque. Suspendisse ac sagittis neque. Sed eleifend nisl nec congue porttitor. Pellentesque nec mi condimentum, congue dui sed, condimentum purus. Nulla consectetur ipsum ut justo fringilla dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet luctus libero, eget finibus est.</p>'),
(41, 22, 2, '[{\"MIGX_id\":\"1\",\"name\":\"Свадьбы\",\"value\":\"wedding\"},{\"MIGX_id\":\"2\",\"name\":\"Love story\",\"value\":\"love-story\"},{\"MIGX_id\":\"3\",\"name\":\"Семейные\",\"value\":\"family\"},{\"MIGX_id\":\"4\",\"name\":\"Другое\",\"value\":\"other\"}]'),
(43, 23, 2, '[{\"MIGX_id\":\"44\",\"image\":\"portfolio/2019_03_18_T069559500_1552909673.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"45\",\"image\":\"portfolio/2019_03_18_T087977700_1552909673.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"46\",\"image\":\"portfolio/2019_03_18_T009703600_1552909674.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"47\",\"image\":\"portfolio/2019_03_18_T026803900_1552909674.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"48\",\"image\":\"portfolio/2019_03_18_T076739600_1552909674.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"49\",\"image\":\"portfolio/2019_03_18_T042581300_1552909674.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"50\",\"image\":\"portfolio/2019_03_18_T059504100_1552909674.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"51\",\"image\":\"portfolio/2019_03_18_T094086700_1552909674.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"52\",\"image\":\"portfolio/2019_03_18_T018180200_1552909675.jpg\",\"category\":\"love-story\",\"alt\":\"\"},{\"MIGX_id\":\"53\",\"image\":\"portfolio/2019_03_18_T003082700_1552911778.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"54\",\"image\":\"portfolio/2019_03_18_T005014500_1552911642.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"55\",\"image\":\"portfolio/2019_03_18_T024679400_1552911642.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"56\",\"image\":\"portfolio/2019_03_18_T026662300_1552911641.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"57\",\"image\":\"portfolio/2019_03_18_T043882800_1552911641.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"58\",\"image\":\"portfolio/2019_03_18_T047444100_1552911640.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"59\",\"image\":\"portfolio/2019_03_18_T067959800_1552911641.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"60\",\"image\":\"portfolio/2019_03_18_T079321400_1552911640.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"61\",\"image\":\"portfolio/2019_03_18_T086687300_1552911641.jpg\",\"category\":\"wedding\",\"alt\":\"\"},{\"MIGX_id\":\"62\",\"image\":\"portfolio/2019_03_18_T006081600_1552913821.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"63\",\"image\":\"portfolio/2019_03_18_T016633000_1552913822.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"64\",\"image\":\"portfolio/2019_03_18_T028827100_1552913822.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"65\",\"image\":\"portfolio/2019_03_18_T030181400_1552913821.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"66\",\"image\":\"portfolio/2019_03_18_T047345200_1552913822.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"67\",\"image\":\"portfolio/2019_03_18_T065991200_1552913821.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"68\",\"image\":\"portfolio/2019_03_18_T073643400_1552913822.JPG\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"69\",\"image\":\"portfolio/2019_03_18_T087783200_1552913821.jpg\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"70\",\"image\":\"portfolio/2019_03_18_T094270400_1552913822.JPG\",\"category\":\"family\",\"alt\":\"\"},{\"MIGX_id\":\"71\",\"image\":\"portfolio/2019_03_18_T002510600_1552916080.jpg\",\"category\":\"other\",\"alt\":\"\"},{\"MIGX_id\":\"72\",\"image\":\"portfolio/2019_03_18_T029064500_1552916080.jpg\",\"category\":\"other\",\"alt\":\"\"},{\"MIGX_id\":\"73\",\"image\":\"portfolio/2019_03_18_T053700000_1552916080.JPG\",\"category\":\"other\",\"alt\":\"\"},{\"MIGX_id\":\"74\",\"image\":\"portfolio/2019_03_18_T056823500_1552916079.jpg\",\"category\":\"other\",\"alt\":\"\"},{\"MIGX_id\":\"75\",\"image\":\"portfolio/2019_03_18_T074347900_1552916080.JPG\",\"category\":\"other\",\"alt\":\"\"},{\"MIGX_id\":\"76\",\"image\":\"portfolio/2019_03_18_T082908700_1552916079.jpg\",\"category\":\"other\",\"alt\":\"\"}]'),
(44, 24, 5, 'wedding'),
(45, 24, 6, 'love-story'),
(46, 24, 7, 'family'),
(47, 24, 8, 'other'),
(48, 13, 5, 'type_photography/2018_06_14_T004704400_1528972889.jpg'),
(49, 13, 6, '2018_06_21_T084783900_1529560296.jpg'),
(50, 13, 7, 'type_photography/2018_06_21_T053034200_1529563037.jpg'),
(51, 13, 8, '2018_06_21_T027617100_1529564939.jpg'),
(53, 26, 3, 'sneg-photo@webprogrammer.page'),
(54, 27, 3, 'vup2DuI8BeP2'),
(55, 28, 3, 'smtp.websupport.sk'),
(56, 29, 3, '465'),
(57, 30, 3, 'ssl'),
(58, 31, 3, 'alex.e.mail.9999@gmail.com'),
(59, 32, 10, 'ПОДАРОЧНЫЙ СЕРТИФИКАТ'),
(60, 33, 11, 'ФОТОКНИГИ'),
(61, 34, 11, 'ЗАКАЗАТЬ ФОТОКНИГУ'),
(62, 35, 11, 'Новый заказ фотокниги'),
(63, 1, 1, 'noindex, nofollow'),
(64, 1, 2, 'noindex, nofollow');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `sneg_prfx_site_tmplvar_templates`;
CREATE TABLE `sneg_prfx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_site_tmplvar_templates`
--

INSERT INTO `sneg_prfx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 1, 0),
(2, 2, 0),
(3, 1, 0),
(3, 2, 0),
(4, 1, 0),
(4, 2, 0),
(5, 3, 2),
(6, 3, 2),
(7, 3, 1),
(8, 3, 1),
(9, 3, 0),
(10, 3, 1),
(11, 3, 2),
(12, 1, 0),
(13, 4, 0),
(14, 4, 0),
(15, 4, 0),
(16, 4, 0),
(17, 4, 0),
(18, 5, 0),
(19, 5, 0),
(20, 6, 0),
(21, 6, 0),
(23, 2, 0),
(24, 4, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 5, 0),
(33, 6, 0),
(34, 6, 0),
(35, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_system_eventnames`
--

DROP TABLE IF EXISTS `sneg_prfx_system_eventnames`;
CREATE TABLE `sneg_prfx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_system_eventnames`
--

INSERT INTO `sneg_prfx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_system_settings`
--

DROP TABLE IF EXISTS `sneg_prfx_system_settings`;
CREATE TABLE `sneg_prfx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_system_settings`
--

INSERT INTO `sneg_prfx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_policies_version', '1.0', 'textfield', 'core', 'system', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2018-05-16 18:10:51'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', '2018-05-20 06:44:32'),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'loc@loclahost.tld', 'textfield', 'core', 'authentication', '2018-05-16 18:10:51'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '0', 'combo-boolean', 'core', 'system', '2018-05-20 05:03:35'),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '0', 'combo-boolean', 'core', 'system', '2018-05-20 05:04:22'),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2018-05-17 03:57:28'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2018-05-17 03:57:42'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2018-05-16 18:10:51'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2018-05-16 18:10:51'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '8', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'https', 'textfield', 'core', 'system', '2018-06-02 13:38:37'),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.6.3-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('tinymcerte.alignment_format', '[{\"title\": \"Left\", \"icon\": \"alignleft\", \"format\": \"alignleft\"},{\"title\": \"Center\", \"icon\": \"aligncenter\", \"format\": \"aligncenter\"},{\"title\": \"Right\", \"icon\": \"alignright\", \"format\": \"alignright\"},{\"title\": \"Justify\", \"icon\": \"alignjustify\", \"format\": \"alignjustify\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.blocks_format', '[{\"title\": \"Paragraph\", \"format\": \"p\"},{\"title\": \"Blockquote\", \"format\": \"blockquote\"},{\"title\": \"Div\", \"format\": \"div\"},{\"title\": \"Pre\", \"format\": \"pre\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.browser_spellcheck', '', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.content_css', '', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.external_config', '', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.headers_format', '[{\"title\": \"Header 1\", \"format\": \"h1\"},{\"title\": \"Header 2\", \"format\": \"h2\"},{\"title\": \"Header 3\", \"format\": \"h3\"},{\"title\": \"Header 4\", \"format\": \"h4\"},{\"title\": \"Header 5\", \"format\": \"h5\"},{\"title\": \"Header 6\", \"format\": \"h6\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.image_advtab', '1', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.image_class_list', '', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.inline_format', '[{\"title\": \"Bold\", \"icon\": \"bold\", \"format\": \"bold\"},{\"title\": \"Italic\", \"icon\": \"italic\", \"format\": \"italic\"},{\"title\": \"Underline\", \"icon\": \"underline\", \"format\": \"underline\"},{\"title\": \"Strikethrough\", \"icon\": \"strikethrough\", \"format\": \"strikethrough\"},{\"title\": \"Superscript\", \"icon\": \"superscript\", \"format\": \"superscript\"},{\"title\": \"Subscript\", \"icon\": \"subscript\", \"format\": \"subscript\"},{\"title\": \"Code\", \"icon\": \"code\", \"format\": \"code\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.links_across_contexts', '1', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.link_class_list', '', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.menubar', 'file edit insert view format table tools', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.object_resizing', '1', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.paste_as_text', '', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.plugins', 'advlist autolink lists modximage charmap print preview anchor visualblocks searchreplace code fullscreen insertdatetime media table contextmenu paste modxlink textcolor', 'textfield', 'tinymcerte', 'default', '2018-06-02 14:32:46'),
('tinymcerte.relative_urls', '1', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.remove_script_host', '1', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.skin', 'modx', 'textfield', 'tinymcerte', 'default', NULL),
('tinymcerte.statusbar', '1', 'combo-boolean', 'tinymcerte', 'default', NULL),
('tinymcerte.style_formats', '[{\"title\": \"Headers\", \"items\": \"headers_format\"},{\"title\": \"Inline\", \"items\": \"inline_format\"},{\"title\": \"Blocks\", \"items\": \"blocks_format\"},{\"title\": \"Alignment\", \"items\": \"alignment_format\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.style_formats_merge', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.toolbar1', 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | forecolor backcolor', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', '2018-06-02 14:33:28'),
('tinymcerte.toolbar2', '', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.toolbar3', '', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.valid_elements', '', 'textfield', 'tinymcerte', 'default', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', '2018-05-20 05:00:33'),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot,scss,less,css.map', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '67108864', 'textfield', 'core', 'file', '2018-05-16 18:10:51'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2018-05-16 18:10:51'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2018-05-16 18:11:30'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.26.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', 'TinyMCE RTE', 'modx-combo-rte', 'core', 'editor', '2018-05-16 18:55:22'),
('which_element_editor', 'SimpleAceCodeEditor', 'modx-combo-rte', 'core', 'editor', '2018-05-16 18:57:25'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_transport_packages`
--

DROP TABLE IF EXISTS `sneg_prfx_transport_packages`;
CREATE TABLE `sneg_prfx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_transport_packages`
--

INSERT INTO `sneg_prfx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('migx-2.12.0-pl', '2018-05-17 02:12:11', '2018-05-16 23:13:12', '2018-05-17 02:13:12', 0, 1, 1, 0, 'migx-2.12.0-pl.transport.zip', NULL, 'a:10:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:1392:\"--------------------\nMIGX\n--------------------\nVersion: 2.1.0\nAuthor: Bruno Perner <b.perner@gmx.de>\n--------------------\n\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\n* Each item can have multiple fields. For each field you can use another tv-input-type.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Bruno17/multiItemsGridTV/issues\n\nInstallation:\n\ninstall by package-management.\nCreate a new menu:\nSystem -> Actions \n\nActions-tree:\nmigx -> right-click -> create Acton here\ncontroller: index\nnamespace: migx\nlanguage-topics: migx:default,file\n\nmenu-tree:\nComponents -> right-click -> place action here\nlexicon-key: migx\naction: migx - index\nparameters: &configs=migxconfigs||packagemanager||setup\n\nclear cache\ngo to components -> migx -> setup-tab -> setup\n\nIf you are upgrading from MIGX - versions before 2.0\ngo to tab upgrade. click upgrade.\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\nThe getImageList-snippet needs this field to work correctly.\n\n\nAllways after upgrading MIGX of any Version:\ngo to components -> migx -> setup-tab -> setup\n\nthis will upgrade the migx-configs-table and add new fields, if necessary.\n\n\n\";s:9:\"changelog\";s:10646:\"Changelog for MIGX.\n\nMIGX 2.12.0\n==============\nselect db-fields from defined class and its joins for formtabs and columns\nadd categories and a category-filter to MIGX Configs\nmultiple grouping-levels for &groupingField\nhooksnippet getformnames\nadd snippet migxAutoPublish for publishing by Cronjobs\nadd beforesave - hook to update-processor\nallow string in where-property\nadd a default schema-template, used at create package\nand some bugfixes\n\nMIGX 2.11.0\n==============\ngroupingfield, preparesnippet, _total, _count, improve @CODE\nhooksnippet beforecreateform\n\nMIGX 2.10.0\n==============\nhooksnippet getcustomconfigs for importcsvmigx\nsupport layout-rows/columns in formtabs\ncontextmenu \'flat formtabs\'\nmultiupload to db, resizeOnUpload - plugin\n[packagemanager] Add Extension Package - feature\nrespect joinalias in export.php and handlepositionselector.php\npossible to use TV-value in migxresourcemediapath - snippet\n[getImageList] inherit_children_tvname\nMIGXdb add item before/after\n\nMIGX 2.9.7\n==============\nadd emtpyTpl\nfix some MIGX-grid width - issues\nimport csv to MIGX\n\nMIGX 2.9.6\n==============\nhooksnippet getcustomconfigs for export-processor\nfix missing formtabs after saving\n\nMIGX 2.9.5\n==============\ncolumn-actionbuttons also for MIGX\nexport/import MIGX-items from/into MIGX-TV\nget tinymcewrapper working\nmore config-options for combo-filter\nFix and simplify Redactor implementation to use MODx.loadRTE()\n\nMIGX 2.9.4\n==============\n[migxResourcemediapath] add context_key as path option\nbutton for \'alter fields from schema\'\nfix MIGX-grid width\ncustom grid for MIGX-TV\nrespect context-default-media-source - setting\n\nMIGX 2.9.3\n==============\nbasic support for new TinyMCE RTE\nfix assetsUrl/connectorUrl - settings\nMIGX-TV MODX multifile-uploader/autocreate items  \nMIGX-TV configurable contextmenues\n\nMIGX 2.9.2\n==============\nsome smaller fixes\n\nMIGX 2.9.1\n==============\nadd hook-snippet setting\nsome handleRelated - update - functions\ndestroy updatewindow on close\n\nMIGX 2.9\n==============\n[migxLoopCollection] allow use of foreign database\nSottwell\'s improvements on migxresourcemediapath\nnew snippet: migxGetCollectionTree\naccess to foreign database from default processors\nimprovements on multiple formtabs\nmake inline-editing for MIGX - grid possible\noption to add MIGX-items directly without modal\nlistbox-cell-editor\nmovetotop,movetobottom - buttons for MIGX-grid\ncell-editing for MIgXdb - grids\noption to add MIGXdb-items directly without modal\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\nsome migxredactor - fixes \n\nMIGX 2.8.1\n==============\nlets disable the \'Add Item\' - button\nnew configs gridperpage and sortconfig\nwrapperTpl for getImageList and migxLoopCollection\n\nMIGX 2.8.0\n==============\nresolve tables on install\nrender cross, also when empty string\nreusable activaterelations - processors\n[migxLoopCollection] tpl_nN\n[#154] clean TV-value, if no MIGX-items \nadditional db-storage of formtabs and fields\nget menue working in MODX 2.3\nimprove description_is_code \n\n\nMIGX 2.6.8\n==============\nsome other small fixes\nrestrictive condition by processed MIGX-tags for formfields\nFilter-Button for Reset all filters to default-value\nextend date-filter\nmake cmp main caption translatable \nMigx::prepareJoins - optional rightjoin \n\nMIGX 2.6.7\n==============\nadd date - filter \nadd handlepositionselector - processor \nadd snippet exportmigx2db\n\nMIGX 2.6.6\n==============\nfixes only\n\nMIGX 2.6.5\n==============\nfixes only\n\nMIGX 2.6.4\n==============\n[redactor-field] get and use file-properties from a redactor-inputTV\nadd renderImageFromHtml - renderer\n\nMIGX 2.6.3\n==============\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\n\nMIGX 2.6.2\n==============\nfix issue with imported configs-field, if not an array \n\nMIGX 2.6.1\n==============\nMake Formfields translatable\n\nMIGX 2.6\n==============\n[getImageList] output inner arrays as json-string\nadded polish translation\n[getImageList] splits, build summaries\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \n\n\nMIGX 2.5.11\n==============\nadd simple MIGXdb - validation (only required for now)\nsome fixes\n\n\nMIGX 2.5.9\n==============\nlet us create new indexes, with altered field-def from schema \noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\n\n\nMIGX 2.5.8\n\n==============\nAdded \'showScreenshot\' (big image in popup) \nAdded template-field for direct template-input for renderChunk\nAdded position - selector for new MIGX - items\nFix for not removed rte-editors when using formswitcher\nsend current store-params to iframe-window\n\n\nMIGX 2.5.6\n\n==============\n\nAdd support for the modmore.com Redactor editor \nsome work on multiuploader for MIGXdb\nmore eNotice - fixes\n\n\nMIGX 2.5.2\n\n==============\nread input-options into MIGX-TV\nrespect filter in default - export.php\nfix for empty value in TV - configs not loading renderers etc.\nfix changed processaction-param after export2csv \nstopEvent() by onClick - event\n\nMIGX 2.5.1\n\n==============\nfix bug with renderChunk - renderer\n\nMIGX 2.5\n\n==============\nget different rtes working - support for tinymce, ckeditor \nsome settings for MIGXfe\ncs - lexicons, \nsome eNotice - fixes\nfix with to big integers on TV-id (set phptype to string)\nlimit MIGX-record-count\n\n\nMIGX 2.4.2\n\n==============\ncolumnButtons for the migx - grid \nlittle form-layout-mods\nadded the option to have the first formtab outside the other tabs above of them.\n\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\n\nmigxupdate for MIGXfe\ndefault-values for MIGXdb-filters\nupdate co_id in iframe-window\nadd a searchbox to MIGX-Configurator\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\n\n\nMIGX 2.4.1\n\n==============\nsome new snippets:\ngetDayliMIGXrecord\nmigxgetrelations\n\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\nhide tabs in form, when only one tab\nadded selectposition - renderer\n\n\nMIGX 2.4.0\n\n==============\nnew renderer - switchStatusOptions\nnew renderer - renderChunk\ngetImageList - added \'contains\' and \'snippet\' - where-filters\nadd duplicate-contextmenue to MIGXdb \nnew property for getImageList: &reverse\ngive TVs in each CMP-tab a unique id\nrefresh grid after closing iframe-window\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\nexport jsonarray-fields as separate fields in csv-export\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\nAdded TV - description - field to configuration\n\n\nMIGX 2.3.1\n\n==============\nsome eNotice - error - fixes\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\n\nMIGX 2.3.0\n\n==============\nadd multifile - uploader, upload to MIGX - mediasource\nadd load from mediasource - button to MIGX\nadd migxResourcePath - snippet\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\n\n\nMIGX 2.2.3\n\n==============\nconfirmation before overriding schema-files\nsome additions for childresources-management by MIGXdb\nswitch between multiple forms - configurations\nadd renderDate - renderer , thanks to Jako\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\nadd parent-property for dynamic filter-comboboxes\nadd getliste-where for default getlist-processor\nexport formtabs as clean json in editraw-mode\n\n\nMIGX 2.2.2\n\n==============\nadd migxLoopCollection-snippet\nmove prepareJoins into a migx-method\nconfirmation before remove db-record, getcombo did not use idfield \nallow empty prefix \nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\nfix Call-time pass-by-reference errors\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \nfix prefix not sended to writeSchema\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\n\n\nMIGX 2.2.0\n\n==============\n\nexport/import configuration-objects as json to/from files in custom-package-directories \nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \ngrid-smarty-template now can be also in custom-package-directories\nreworked handling of joined objects in default update-php \nadd connected_object_id baseparam to migx-grid\nadded snippet migxLoopCollection\n\n\nMIGX 2.1.1\n\n==============\n\n  fix for migx-snippet not working with multiple calls on one page\n  resource_id as script-property for getlist-processor when used with migx-snippet\n\nMIGX 2.1.0\n\n==============\n\n  add &sort to the getImageList - snippet\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\n  more MIGXdb - configurations\n\n\nMIGX 2.0.1\n\n==============\n\n  more E_NOTICE - Error - fixes\n  Fix Missing Add - Item - Replacement - String \n\nMIGX 2.0.0\n\n==============\n\n- pl\n\n  fix for Revo 2.2.2\n  fix some E_NOTICE - errors\n\n- new in beta5\n\n  Configure multiple CMP - tabs\n  packagemanager ported to extjs - tab\n  added MIGX-setup/upgrade - tab\n  added configurable text and combo - filterboxes\n\n- new in beta3\n\n  This is a preview-version of MIGXdb\n  MIGXdb can now also be used as configurable CMP\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\n  Package-manager, create and edit schemas and package-tables\n\n- new:\n  better compatibility with revo 2.2\n  working with mediasources\n  introduced MIGXdb\n\n\nMIGX 1.2.0\n==============\n- new:\n  merge scriptProperties to Placeholders \n  basic compatibility for modx 2.2 \n  autoinc-field: MIGX_id\n  autoResourceFolders - functionality, autoCreate directory for each resource\n  \n  \n- fixed:\n  url-TV support\n  context-based base_path issues\n  remove remaining []\n  remove Tiny-instances when switching form\n  enter on textarea closes window\n  fireResourceFormChange for drag,remove,duplicate \n\nMIGX 1.1.0\n==============\n- new:\n  &docidVarKey\n  &processTVs\n  \n- fixed:\n  context-filepath-issue\n\nMIGX 1.0.0\n==============\n- Initial release.\";s:13:\"setup-options\";s:32:\"migx-2.12.0-pl/setup-options.php\";s:9:\"signature\";s:14:\"migx-2.12.0-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:42:\"/workspace/package/install/migx-2.12.0-pl/\";s:14:\"menu_placement\";s:10:\"components\";s:14:\"package_action\";i:0;}', 'MIGX', 'a:38:{s:2:\"id\";s:24:\"5a7b25e9bc8dd3a7748b4567\";s:7:\"package\";s:24:\"4db018def24554690c000005\";s:12:\"display_name\";s:14:\"migx-2.12.0-pl\";s:4:\"name\";s:4:\"MIGX\";s:7:\"version\";s:6:\"2.12.0\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"12\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:7:\"Bruno17\";s:11:\"description\";s:676:\"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here:&nbsp;<a href=\"http://rtfm.modx.com/display/addon/MIGX\" style=\"color: rgb(15, 112, 150); \" title=\"\" target=\"\">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>\";s:12:\"instructions\";s:5876:\"<p></p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">Installation:Install via Package Management.</p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">For MIGX and MIGXdb - Configuration - Management:</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \">Create a new menu:System -&gt; Actions Actions-tree:migx -&gt; right-click -&gt; create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -&gt; right-click -&gt; place action herelexicon-key: migxaction: migx - indexparameters: &amp;configs=migxconfigs||packagemanager||setupclear cachego to components -&gt; migx -&gt; setup-tab -&gt; setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note:</b>&nbsp;Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p>\";s:9:\"changelog\";s:13083:\"<p>Changelog for MIGX.</p><p>MIGX 2.12.0</p><p>==============</p><p><ul><li>select db-fields from defined class and its joins for formtabs and columns</li><li>add categories and a category-filter to MIGX Configs</li><li>multiple grouping-levels for &amp;groupingField</li><li>hooksnippet getformnames</li><li>add snippet migxAutoPublish for publishing by Cronjobs</li><li>add beforesave - hook to update-processor</li><li>allow string in where-property</li><li>add a default schema-template, used at create package</li><li>and some bugfixes</li></ul></p><p>MIGX 2.11.0</p><p>==============</p><p></p><ul><li>groupingfield, preparesnippet, _total, _count, improve @CODE</li><li>hooksnippet beforecreateform</li></ul><p></p><p></p><p>MIGX 2.10.0</p><p>==============</p><p></p><ul><li>hooksnippet getcustomconfigs for importcsvmigx</li><li>support layout-rows/columns in formtabs</li><li>contextmenu \'flat formtabs\'</li><li>multiupload to db, resizeOnUpload - plugin</li><li>&#91;packagemanager&#93; Add Extension Package - feature</li><li>respect joinalias in export.php and handlepositionselector.php</li><li>possible to use TV-value in migxresourcemediapath - snippet</li><li>&#91;getImageList&#93; inherit_children_tvname</li><li>MIGXdb add item before/after</li></ul><p></p><p></p><p>MIGX 2.9.7</p><p>==============</p><p></p><ul><li>add emtpyTpl</li><li>fix some MIGX-grid width - issues</li><li>import csv to MIGX</li></ul><p></p><p></p><p>MIGX 2.9.6</p><p>==============</p><p></p><ul><li>hooksnippet getcustomconfigs for export-processor</li><li>fix missing formtabs after saving</li></ul><p></p><p>MIGX 2.9.5==============</p><ul><li>fix Form tabs data being wiped after saving</li></ul><p>MIGX 2.9.5==============</p><ul><li>column-actionbuttons also for MIGX</li><li>export/import MIGX-items from/into MIGX-TV</li><li>get tinymcewrapper working</li><li>more config-options for combo-filter</li><li>Fix and simplify Redactor implementation to use MODx.loadRTE()</li></ul><p>MIGX 2.9.4==============</p><ul><li>&#91;migxResourcemediapath&#93; add context_key as path option</li><li>button for \'alter fields from schema\'</li><li>fix MIGX-grid width</li><li>custom grid for MIGX-TV</li><li>respect context-default-media-source - setting</li></ul><p></p><p>MIGX 2.9.3==============</p><ul><li>basic support for new TinyMCE RTE</li><li>fix assetsUrl/connectorUrl - settings</li><li>MIGX-TV MODX multifile-uploader/autocreate items&nbsp; </li><li>MIGX-TV configurable contextmenues</li></ul><p>MIGX 2.9.2==============</p><ul><li>some smaller fixes</li></ul><p>MIGX 2.9.1==============</p><ul><li>add hook-snippet setting</li><li>some handleRelated - update - functions</li><li>destroy updatewindow on close</li></ul><p></p><p>MIGX 2.9.0==============</p><ul><li>&#91;migxLoopCollection&#93; allow use of foreign database</li><li>Sottwell\'s improvements on migxresourcemediapath</li><li>new snippet: migxGetCollectionTree</li><li>access to foreign database from default processors</li><li>improvements on multiple formtabs</li><li>make inline-editing for MIGX - grid possible</li><li>option to add MIGX-items directly without modal</li><li>listbox-cell-editor</li><li>movetotop,movetobottom - buttons for MIGX-grid</li><li>cell-editing for MIgXdb - grids</li><li>option to add MIGXdb-items directly without modal</li><li>&#91;getImageList&#93; &amp;inheritFrom - inherit MIGX-items from parents or other resources</li><li>some migxredactor - fixes </li></ul><p></p><p>MIGX 2.8.1==============</p><ul><li>lets disable the \'Add Item\' - button</li><li>new configs gridperpage and sortconfig</li><li>wrapperTpl for getImageList and migxLoopCollection</li></ul><p>MIGX 2.8.0==============</p><ul><li>resolve tables on install</li><li>render cross, also when empty string</li><li>reusable activaterelations - processors</li><li>&#91;migxLoopCollection&#93; tpl_nN</li><li>&#91;#154&#93; clean TV-value, if no MIGX-items </li><li>additional db-storage of formtabs and fields</li><li>get menue working in MODX 2.3</li><li>improve description_is_code </li></ul><p></p><p>MIGX 2.6.8==============</p><ul><li>some other small fixes</li><li>restrictive condition by processed MIGX-tags for formfields</li><li>Filter-Button for Reset all filters to default-value</li><li>extend date-filter</li><li>make cmp main caption translatable </li><li>Migx::prepareJoins - optional rightjoin </li></ul><p></p><p>MIGX 2.6.7==============</p><ul><li>add date - filter </li><li>add handlepositionselector - processor </li><li>add snippet exportmigx2db</li></ul><p>MIGX 2.6.6==============</p><ul><li>fixes only</li></ul><p></p><p>MIGX 2.6.5==============</p><ul><li>fix bug with migxResourceMediaPath</li></ul><p>MIGX 2.6.5==============</p><ul><li>fix not working richtext-editors in MIGXdb</li><li>add emptyThrash - process to MIGXdb</li></ul><p>MIGX 2.6.4==============</p><ul><li>&#91;redactor-field&#93; get and use file-properties from a redactor-inputTV</li><li>add renderImageFromHtml - renderer</li></ul><p>MIGX 2.6.3==============</p><ul><li>configurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP</li></ul><p></p><p>MIGX 2.6.2</p><p>==============</p><ul><li>fix issue with imported configs-field, if not an array\n      </li></ul><p></p><p>MIGX 2.6.1</p><p>==============</p><ul><li>Make Formfields translatable</li></ul><p></p><p>MIGX 2.6</p><p>==============</p><ul><li>&#91;getImageList&#93; output inner arrays as json-string</li><li>added polish translation</li><li>&#91;getImageList&#93; splits, build summaries</li><li>&nbsp;make grid-columns translatable, let user add custom-lexicons from custom php-config-files </li></ul><p>MIGX 2.5.11</p><p>==============</p><ul><li>add simple MIGXdb - validation (only required for now)</li><li>some fixes</li></ul><p></p><p>MIGX 2.5.9</p><p>==============</p><ul><li>let us create new indexes, with altered field-def from schema </li><li>optimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240</li></ul><p></p><p>MIGX 2.5.8</p><p>==============</p><ul><li>Added \'showScreenshot\' (big image in popup) </li><li>Added template-field for direct template-input for renderChunk</li><li>Added position - selector for new MIGX - items</li><li>Fix for not removed rte-editors when using formswitcher</li><li>send current store-params to iframe-window</li></ul><p></p><p>MIGX 2.5.6</p><p>==============</p><ul><li>Add support for the modmore.com Redactor editor\n</li><li>some work on multiuploader for MIGXdb</li><li>more eNotice - fixes</li></ul><p></p><p>MIGX 2.5.2</p><p>==============</p><ul><li>read input-options into MIGX-TV</li><li>respect filter in default - export.php</li><li>fix for empty value in TV - configs not loading renderers etc.</li><li>fix changed processaction-param after export2csv </li><li>stopEvent() by onClick - event</li></ul><p></p><p>MIGX 2.5.1</p><p>==============</p><ul><li>fix bug with renderChunk - renderer</li></ul><p></p><p>MIGX 2.5</p><p>==============</p><ul><li>get different rtes working - support for tinymce, ckeditor </li><li>some settings for MIGXfe</li><li>cs - lexicons, </li><li>some eNotice - fixes</li><li>fix with to big integers on TV-id (set phptype to string)</li><li>limit MIGX-record-count</li></ul><p></p><p>MIGX 2.4.2</p><p>==============</p><ul><li>columnButtons for the migx - grid </li><li>little form-layout-mods</li><li>added the option to have the first formtab outside the other tabs above of them.</li><li>added the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - </li><li>snippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.</li><li>migxupdate for MIGXfe</li><li>default-values for MIGXdb-filters</li><li>update co_id in iframe-window</li><li>add a searchbox to MIGX-Configurator</li><li>read configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs</li></ul><p>MIGX 2.4.1</p><p>==============</p><p>some new snippets:</p><ul><li>getDayliMIGXrecord</li><li>migxgetrelations</li></ul><p></p><ul><li>added beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree</li><li>add window-title configuration, make window-caption dynamic (its possible to use placeholders now)</li><li>hide tabs in form, when only one tab</li><li>added selectposition - renderer</li></ul><p>MIGX 2.4.0</p><p>==============</p><ul><li>new renderer - switchStatusOptions</li><li>new renderer - renderChunk</li><li>getImageList - added \'contains\' and \'snippet\' - where-filters</li><li>add duplicate-contextmenue to MIGXdb </li><li>new property for getImageList: &amp;reverse</li><li>give TVs in each CMP-tab a unique id</li><li>refresh grid after closing iframe-window</li><li>added tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList</li><li>export jsonarray-fields as separate fields in csv-export</li><li>alias, breadcrumb and ultimateparent for migxREsourceMediaPath</li><li>Added TV - description - field to configuration</li></ul><p></p><p>MIGX 2.3.1</p><p>==============</p><ul><li>some eNotice - error - fixes</li><li>add type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41</li></ul><p></p><p>MIGX 2.3.0</p><p>==============</p><ul><li>add multifile - uploader, upload to MIGX - mediasource</li><li>add load from mediasource - button to MIGX</li><li>add migxResourcePath - snippet</li><li>add iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.</li></ul><p></p><p>MIGX 2.2.3</p><p>==============</p><ul><li>confirmation before overriding schema-files</li><li>some additions for childresources-management by MIGXdb</li><li>switch between multiple forms - configurations</li><li>add renderDate - renderer , thanks to Jako</li><li>additional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.</li><li>add parent-property for dynamic filter-comboboxes</li><li>add getliste-where for default getlist-processor</li><li>export formtabs as clean json in editraw-mode</li></ul><p></p><p>MIGX 2.2.2</p><p>==============</p><ul><li>add migxLoopCollection-snippet</li><li>move prepareJoins into a migx-method</li><li>confirmation before remove db-record, getcombo did not use idfield </li><li>allow empty prefix </li><li>add possibility to use tables without \'deleted\' - field and default-getlist-processor</li><li>fix Call-time pass-by-reference errors</li><li>get tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs </li><li>fix prefix not sended to writeSchema</li><li>grid add cls \'main-wrapper\' to give it a bit padding, thanks to jako</li></ul><p></p><p>MIGX 2.2.0</p><p>==============</p><ul><li>export/import configuration-objects as json to/from files in custom-package-directories </li><li>new configs: getlist - defaultsort, joins, gridload_mode (by button, auto) </li><li>grid-smarty-template now can be also in custom-package-directories</li><li>reworked handling of joined objects in default update-php </li><li>add connected_object_id baseparam to migx-grid</li><li>added snippet migxLoopCollection</li></ul><p></p><p>MIGX 2.1.1</p>\n<p>==============</p>\n<ul><li>fix for migx-snippet not working with multiple calls on one page\n      </li><li>resource_id as script-property for getlist-processor when used with migx-snippet</li></ul>\n\n      <p>MIGX 2.1.0</p><p>==============</p><ul><li>&nbsp; add &amp;sort to the getImageList - snippet</li><li>&nbsp; add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager</li><li>&nbsp; make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages</li><li>&nbsp; more MIGXdb - configurations</li></ul><p>MIGX 2.0.1</p><p>==============</p><ul><li>more E_NOTICE - Error - fixes</li><li>Fix Missing Add - Item - Replacement - String </li></ul><p></p><p>MIGX 2.0.0</p><p>==============</p><p>- pl</p><ul><li>&nbsp; fix for Revo 2.2.2</li><li>&nbsp; fix some E_NOTICE - errors</li></ul><p></p><p>- new in beta5</p><ul><li>&nbsp; Configure multiple CMP - tabs</li><li>&nbsp; packagemanager ported to extjs - tab</li><li>&nbsp; added MIGX-setup/upgrade - tab</li><li>&nbsp; added configurable text and combo - filterboxes</li></ul><p></p><p>- new in beta3</p><ul><li>&nbsp; This is a preview-version of MIGXdb</li><li>&nbsp; MIGXdb can now also be used as configurable CMP</li><li>&nbsp; MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP</li><li>&nbsp; Package-manager, create and edit schemas and package-tables</li></ul><p></p><p>- new:</p><ul><li>&nbsp; better compatibility with revo 2.2</li></ul><ul><li>&nbsp; working with mediasources</li></ul><ul><li>&nbsp; starting with MIGXdb (very dev)</li></ul>\";s:9:\"createdon\";s:24:\"2018-02-07T16:14:33+0000\";s:9:\"createdby\";s:7:\"Bruno17\";s:8:\"editedon\";s:24:\"2018-05-16T22:23:11+0000\";s:10:\"releasedon\";s:24:\"2018-02-08T13:05:06+0000\";s:9:\"downloads\";s:6:\"140032\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a7b25e9bc8dd3a7748b4568\";s:9:\"signature\";s:14:\"migx-2.12.0-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:70:\"http://modx.s3.amazonaws.com/extras/4db018def24554690c000005/migx1.JPG\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5a7b25e9bc8dd3a7748b4568\";s:7:\"version\";s:24:\"5a7b25e9bc8dd3a7748b4567\";s:8:\"filename\";s:28:\"migx-2.12.0-pl.transport.zip\";s:9:\"downloads\";s:5:\"10893\";s:6:\"lastip\";s:10:\"5.9.10.197\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a7b25e9bc8dd3a7748b4568\";}s:17:\"package-signature\";s:14:\"migx-2.12.0-pl\";s:10:\"categories\";s:15:\"content,gallery\";s:4:\"tags\";s:46:\"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb\";}', 2, 12, 0, 'pl', 0);
INSERT INTO `sneg_prfx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('simpleacecodeeditor-1.4.4-pl', '2018-05-16 21:56:49', '2018-05-16 18:57:25', '2018-05-16 21:57:25', 0, 1, 1, 0, 'simpleacecodeeditor-1.4.4-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:35823:\"                    GNU GENERAL PUBLIC LICENSE\r\n                       Version 3, 29 June 2007\r\n\r\n Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>\r\n Everyone is permitted to copy and distribute verbatim copies\r\n of this license document, but changing it is not allowed.\r\n\r\n                            Preamble\r\n\r\n  The GNU General Public License is a free, copyleft license for\r\nsoftware and other kinds of works.\r\n\r\n  The licenses for most software and other practical works are designed\r\nto take away your freedom to share and change the works.  By contrast,\r\nthe GNU General Public License is intended to guarantee your freedom to\r\nshare and change all versions of a program--to make sure it remains free\r\nsoftware for all its users.  We, the Free Software Foundation, use the\r\nGNU General Public License for most of our software; it applies also to\r\nany other work released this way by its authors.  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthem if you wish), that you receive source code or can get it if you\r\nwant it, that you can change the software or use pieces of it in new\r\nfree programs, and that you know you can do these things.\r\n\r\n  To protect your rights, we need to prevent others from denying you\r\nthese rights or asking you to surrender the rights.  Therefore, you have\r\ncertain responsibilities if you distribute copies of the software, or if\r\nyou modify it: responsibilities to respect the freedom of others.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must pass on to the recipients the same\r\nfreedoms that you received.  You must make sure that they, too, receive\r\nor can get the source code.  And you must show them these terms so they\r\nknow their rights.\r\n\r\n  Developers that use the GNU GPL protect your rights with two steps:\r\n(1) assert copyright on the software, and (2) offer you this License\r\ngiving you legal permission to copy, distribute and/or modify it.\r\n\r\n  For the developers\' and authors\' protection, the GPL clearly explains\r\nthat there is no warranty for this free software.  For both users\' and\r\nauthors\' sake, the GPL requires that modified versions be marked as\r\nchanged, so that their problems will not be attributed erroneously to\r\nauthors of previous versions.\r\n\r\n  Some devices are designed to deny users access to install or run\r\nmodified versions of the software inside them, although the manufacturer\r\ncan do so.  This is fundamentally incompatible with the aim of\r\nprotecting users\' freedom to change the software.  The systematic\r\npattern of such abuse occurs in the area of products for individuals to\r\nuse, which is precisely where it is most unacceptable.  Therefore, we\r\nhave designed this version of the GPL to prohibit the practice for those\r\nproducts.  If such problems arise substantially in other domains, we\r\nstand ready to extend this provision to those domains in future versions\r\nof the GPL, as needed to protect the freedom of users.\r\n\r\n  Finally, every program is threatened constantly by software patents.\r\nStates should not allow patents to restrict development and use of\r\nsoftware on general-purpose computers, but in those that do, we wish to\r\navoid the special danger that patents applied to a free program could\r\nmake it effectively proprietary.  To prevent this, the GPL assures that\r\npatents cannot be used to render the program non-free.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n                       TERMS AND CONDITIONS\r\n\r\n  0. Definitions.\r\n\r\n  \"This License\" refers to version 3 of the GNU General Public License.\r\n\r\n  \"Copyright\" also means copyright-like laws that apply to other kinds of\r\nworks, such as semiconductor masks.\r\n\r\n  \"The Program\" refers to any copyrightable work licensed under this\r\nLicense.  Each licensee is addressed as \"you\".  \"Licensees\" and\r\n\"recipients\" may be individuals or organizations.\r\n\r\n  To \"modify\" a work means to copy from or adapt all or part of the work\r\nin a fashion requiring copyright permission, other than the making of an\r\nexact copy.  The resulting work is called a \"modified version\" of the\r\nearlier work or a work \"based on\" the earlier work.\r\n\r\n  A \"covered work\" means either the unmodified Program or a work based\r\non the Program.\r\n\r\n  To \"propagate\" a work means to do anything with it that, without\r\npermission, would make you directly or secondarily liable for\r\ninfringement under applicable copyright law, except executing it on a\r\ncomputer or modifying a private copy.  Propagation includes copying,\r\ndistribution (with or without modification), making available to the\r\npublic, and in some countries other activities as well.\r\n\r\n  To \"convey\" a work means any kind of propagation that enables other\r\nparties to make or receive copies.  Mere interaction with a user through\r\na computer network, with no transfer of a copy, is not conveying.\r\n\r\n  An interactive user interface displays \"Appropriate Legal Notices\"\r\nto the extent that it includes a convenient and prominently visible\r\nfeature that (1) displays an appropriate copyright notice, and (2)\r\ntells the user that there is no warranty for the work (except to the\r\nextent that warranties are provided), that licensees may convey the\r\nwork under this License, and how to view a copy of this License.  If\r\nthe interface presents a list of user commands or options, such as a\r\nmenu, a prominent item in the list meets this criterion.\r\n\r\n  1. Source Code.\r\n\r\n  The \"source code\" for a work means the preferred form of the work\r\nfor making modifications to it.  \"Object code\" means any non-source\r\nform of a work.\r\n\r\n  A \"Standard Interface\" means an interface that either is an official\r\nstandard defined by a recognized standards body, or, in the case of\r\ninterfaces specified for a particular programming language, one that\r\nis widely used among developers working in that language.\r\n\r\n  The \"System Libraries\" of an executable work include anything, other\r\nthan the work as a whole, that (a) is included in the normal form of\r\npackaging a Major Component, but which is not part of that Major\r\nComponent, and (b) serves only to enable use of the work with that\r\nMajor Component, or to implement a Standard Interface for which an\r\nimplementation is available to the public in source code form.  A\r\n\"Major Component\", in this context, means a major essential component\r\n(kernel, window system, and so on) of the specific operating system\r\n(if any) on which the executable work runs, or a compiler used to\r\nproduce the work, or an object code interpreter used to run it.\r\n\r\n  The \"Corresponding Source\" for a work in object code form means all\r\nthe source code needed to generate, install, and (for an executable\r\nwork) run the object code and to modify the work, including scripts to\r\ncontrol those activities.  However, it does not include the work\'s\r\nSystem Libraries, or general-purpose tools or generally available free\r\nprograms which are used unmodified in performing those activities but\r\nwhich are not part of the work.  For example, Corresponding Source\r\nincludes interface definition files associated with source files for\r\nthe work, and the source code for shared libraries and dynamically\r\nlinked subprograms that the work is specifically designed to require,\r\nsuch as by intimate data communication or control flow between those\r\nsubprograms and other parts of the work.\r\n\r\n  The Corresponding Source need not include anything that users\r\ncan regenerate automatically from other parts of the Corresponding\r\nSource.\r\n\r\n  The Corresponding Source for a work in source code form is that\r\nsame work.\r\n\r\n  2. Basic Permissions.\r\n\r\n  All rights granted under this License are granted for the term of\r\ncopyright on the Program, and are irrevocable provided the stated\r\nconditions are met.  This License explicitly affirms your unlimited\r\npermission to run the unmodified Program.  The output from running a\r\ncovered work is covered by this License only if the output, given its\r\ncontent, constitutes a covered work.  This License acknowledges your\r\nrights of fair use or other equivalent, as provided by copyright law.\r\n\r\n  You may make, run and propagate covered works that you do not\r\nconvey, without conditions so long as your license otherwise remains\r\nin force.  You may convey covered works to others for the sole purpose\r\nof having them make modifications exclusively for you, or provide you\r\nwith facilities for running those works, provided that you comply with\r\nthe terms of this License in conveying all material for which you do\r\nnot control copyright.  Those thus making or running the covered works\r\nfor you must do so exclusively on your behalf, under your direction\r\nand control, on terms that prohibit them from making any copies of\r\nyour copyrighted material outside their relationship with you.\r\n\r\n  Conveying under any other circumstances is permitted solely under\r\nthe conditions stated below.  Sublicensing is not allowed; section 10\r\nmakes it unnecessary.\r\n\r\n  3. Protecting Users\' Legal Rights From Anti-Circumvention Law.\r\n\r\n  No covered work shall be deemed part of an effective technological\r\nmeasure under any applicable law fulfilling obligations under article\r\n11 of the WIPO copyright treaty adopted on 20 December 1996, or\r\nsimilar laws prohibiting or restricting circumvention of such\r\nmeasures.\r\n\r\n  When you convey a covered work, you waive any legal power to forbid\r\ncircumvention of technological measures to the extent such circumvention\r\nis effected by exercising rights under this License with respect to\r\nthe covered work, and you disclaim any intention to limit operation or\r\nmodification of the work as a means of enforcing, against the work\'s\r\nusers, your or third parties\' legal rights to forbid circumvention of\r\ntechnological measures.\r\n\r\n  4. Conveying Verbatim Copies.\r\n\r\n  You may convey verbatim copies of the Program\'s source code as you\r\nreceive it, in any medium, provided that you conspicuously and\r\nappropriately publish on each copy an appropriate copyright notice;\r\nkeep intact all notices stating that this License and any\r\nnon-permissive terms added in accord with section 7 apply to the code;\r\nkeep intact all notices of the absence of any warranty; and give all\r\nrecipients a copy of this License along with the Program.\r\n\r\n  You may charge any price or no price for each copy that you convey,\r\nand you may offer support or warranty protection for a fee.\r\n\r\n  5. Conveying Modified Source Versions.\r\n\r\n  You may convey a work based on the Program, or the modifications to\r\nproduce it from the Program, in the form of source code under the\r\nterms of section 4, provided that you also meet all of these conditions:\r\n\r\n    a) The work must carry prominent notices stating that you modified\r\n    it, and giving a relevant date.\r\n\r\n    b) The work must carry prominent notices stating that it is\r\n    released under this License and any conditions added under section\r\n    7.  This requirement modifies the requirement in section 4 to\r\n    \"keep intact all notices\".\r\n\r\n    c) You must license the entire work, as a whole, under this\r\n    License to anyone who comes into possession of a copy.  This\r\n    License will therefore apply, along with any applicable section 7\r\n    additional terms, to the whole of the work, and all its parts,\r\n    regardless of how they are packaged.  This License gives no\r\n    permission to license the work in any other way, but it does not\r\n    invalidate such permission if you have separately received it.\r\n\r\n    d) If the work has interactive user interfaces, each must display\r\n    Appropriate Legal Notices; however, if the Program has interactive\r\n    interfaces that do not display Appropriate Legal Notices, your\r\n    work need not make them do so.\r\n\r\n  A compilation of a covered work with other separate and independent\r\nworks, which are not by their nature extensions of the covered work,\r\nand which are not combined with it such as to form a larger program,\r\nin or on a volume of a storage or distribution medium, is called an\r\n\"aggregate\" if the compilation and its resulting copyright are not\r\nused to limit the access or legal rights of the compilation\'s users\r\nbeyond what the individual works permit.  Inclusion of a covered work\r\nin an aggregate does not cause this License to apply to the other\r\nparts of the aggregate.\r\n\r\n  6. Conveying Non-Source Forms.\r\n\r\n  You may convey a covered work in object code form under the terms\r\nof sections 4 and 5, provided that you also convey the\r\nmachine-readable Corresponding Source under the terms of this License,\r\nin one of these ways:\r\n\r\n    a) Convey the object code in, or embodied in, a physical product\r\n    (including a physical distribution medium), accompanied by the\r\n    Corresponding Source fixed on a durable physical medium\r\n    customarily used for software interchange.\r\n\r\n    b) Convey the object code in, or embodied in, a physical product\r\n    (including a physical distribution medium), accompanied by a\r\n    written offer, valid for at least three years and valid for as\r\n    long as you offer spare parts or customer support for that product\r\n    model, to give anyone who possesses the object code either (1) a\r\n    copy of the Corresponding Source for all the software in the\r\n    product that is covered by this License, on a durable physical\r\n    medium customarily used for software interchange, for a price no\r\n    more than your reasonable cost of physically performing this\r\n    conveying of source, or (2) access to copy the\r\n    Corresponding Source from a network server at no charge.\r\n\r\n    c) Convey individual copies of the object code with a copy of the\r\n    written offer to provide the Corresponding Source.  This\r\n    alternative is allowed only occasionally and noncommercially, and\r\n    only if you received the object code with such an offer, in accord\r\n    with subsection 6b.\r\n\r\n    d) Convey the object code by offering access from a designated\r\n    place (gratis or for a charge), and offer equivalent access to the\r\n    Corresponding Source in the same way through the same place at no\r\n    further charge.  You need not require recipients to copy the\r\n    Corresponding Source along with the object code.  If the place to\r\n    copy the object code is a network server, the Corresponding Source\r\n    may be on a different server (operated by you or a third party)\r\n    that supports equivalent copying facilities, provided you maintain\r\n    clear directions next to the object code saying where to find the\r\n    Corresponding Source.  Regardless of what server hosts the\r\n    Corresponding Source, you remain obligated to ensure that it is\r\n    available for as long as needed to satisfy these requirements.\r\n\r\n    e) Convey the object code using peer-to-peer transmission, provided\r\n    you inform other peers where the object code and Corresponding\r\n    Source of the work are being offered to the general public at no\r\n    charge under subsection 6d.\r\n\r\n  A separable portion of the object code, whose source code is excluded\r\nfrom the Corresponding Source as a System Library, need not be\r\nincluded in conveying the object code work.\r\n\r\n  A \"User Product\" is either (1) a \"consumer product\", which means any\r\ntangible personal property which is normally used for personal, family,\r\nor household purposes, or (2) anything designed or sold for incorporation\r\ninto a dwelling.  In determining whether a product is a consumer product,\r\ndoubtful cases shall be resolved in favor of coverage.  For a particular\r\nproduct received by a particular user, \"normally used\" refers to a\r\ntypical or common use of that class of product, regardless of the status\r\nof the particular user or of the way in which the particular user\r\nactually uses, or expects or is expected to use, the product.  A product\r\nis a consumer product regardless of whether the product has substantial\r\ncommercial, industrial or non-consumer uses, unless such uses represent\r\nthe only significant mode of use of the product.\r\n\r\n  \"Installation Information\" for a User Product means any methods,\r\nprocedures, authorization keys, or other information required to install\r\nand execute modified versions of a covered work in that User Product from\r\na modified version of its Corresponding Source.  The information must\r\nsuffice to ensure that the continued functioning of the modified object\r\ncode is in no case prevented or interfered with solely because\r\nmodification has been made.\r\n\r\n  If you convey an object code work under this section in, or with, or\r\nspecifically for use in, a User Product, and the conveying occurs as\r\npart of a transaction in which the right of possession and use of the\r\nUser Product is transferred to the recipient in perpetuity or for a\r\nfixed term (regardless of how the transaction is characterized), the\r\nCorresponding Source conveyed under this section must be accompanied\r\nby the Installation Information.  But this requirement does not apply\r\nif neither you nor any third party retains the ability to install\r\nmodified object code on the User Product (for example, the work has\r\nbeen installed in ROM).\r\n\r\n  The requirement to provide Installation Information does not include a\r\nrequirement to continue to provide support service, warranty, or updates\r\nfor a work that has been modified or installed by the recipient, or for\r\nthe User Product in which it has been modified or installed.  Access to a\r\nnetwork may be denied when the modification itself materially and\r\nadversely affects the operation of the network or violates the rules and\r\nprotocols for communication across the network.\r\n\r\n  Corresponding Source conveyed, and Installation Information provided,\r\nin accord with this section must be in a format that is publicly\r\ndocumented (and with an implementation available to the public in\r\nsource code form), and must require no special password or key for\r\nunpacking, reading or copying.\r\n\r\n  7. Additional Terms.\r\n\r\n  \"Additional permissions\" are terms that supplement the terms of this\r\nLicense by making exceptions from one or more of its conditions.\r\nAdditional permissions that are applicable to the entire Program shall\r\nbe treated as though they were included in this License, to the extent\r\nthat they are valid under applicable law.  If additional permissions\r\napply only to part of the Program, that part may be used separately\r\nunder those permissions, but the entire Program remains governed by\r\nthis License without regard to the additional permissions.\r\n\r\n  When you convey a copy of a covered work, you may at your option\r\nremove any additional permissions from that copy, or from any part of\r\nit.  (Additional permissions may be written to require their own\r\nremoval in certain cases when you modify the work.)  You may place\r\nadditional permissions on material, added by you to a covered work,\r\nfor which you have or can give appropriate copyright permission.\r\n\r\n  Notwithstanding any other provision of this License, for material you\r\nadd to a covered work, you may (if authorized by the copyright holders of\r\nthat material) supplement the terms of this License with terms:\r\n\r\n    a) Disclaiming warranty or limiting liability differently from the\r\n    terms of sections 15 and 16 of this License; or\r\n\r\n    b) Requiring preservation of specified reasonable legal notices or\r\n    author attributions in that material or in the Appropriate Legal\r\n    Notices displayed by works containing it; or\r\n\r\n    c) Prohibiting misrepresentation of the origin of that material, or\r\n    requiring that modified versions of such material be marked in\r\n    reasonable ways as different from the original version; or\r\n\r\n    d) Limiting the use for publicity purposes of names of licensors or\r\n    authors of the material; or\r\n\r\n    e) Declining to grant rights under trademark law for use of some\r\n    trade names, trademarks, or service marks; or\r\n\r\n    f) Requiring indemnification of licensors and authors of that\r\n    material by anyone who conveys the material (or modified versions of\r\n    it) with contractual assumptions of liability to the recipient, for\r\n    any liability that these contractual assumptions directly impose on\r\n    those licensors and authors.\r\n\r\n  All other non-permissive additional terms are considered \"further\r\nrestrictions\" within the meaning of section 10.  If the Program as you\r\nreceived it, or any part of it, contains a notice stating that it is\r\ngoverned by this License along with a term that is a further\r\nrestriction, you may remove that term.  If a license document contains\r\na further restriction but permits relicensing or conveying under this\r\nLicense, you may add to a covered work material governed by the terms\r\nof that license document, provided that the further restriction does\r\nnot survive such relicensing or conveying.\r\n\r\n  If you add terms to a covered work in accord with this section, you\r\nmust place, in the relevant source files, a statement of the\r\nadditional terms that apply to those files, or a notice indicating\r\nwhere to find the applicable terms.\r\n\r\n  Additional terms, permissive or non-permissive, may be stated in the\r\nform of a separately written license, or stated as exceptions;\r\nthe above requirements apply either way.\r\n\r\n  8. Termination.\r\n\r\n  You may not propagate or modify a covered work except as expressly\r\nprovided under this License.  Any attempt otherwise to propagate or\r\nmodify it is void, and will automatically terminate your rights under\r\nthis License (including any patent licenses granted under the third\r\nparagraph of section 11).\r\n\r\n  However, if you cease all violation of this License, then your\r\nlicense from a particular copyright holder is reinstated (a)\r\nprovisionally, unless and until the copyright holder explicitly and\r\nfinally terminates your license, and (b) permanently, if the copyright\r\nholder fails to notify you of the violation by some reasonable means\r\nprior to 60 days after the cessation.\r\n\r\n  Moreover, your license from a particular copyright holder is\r\nreinstated permanently if the copyright holder notifies you of the\r\nviolation by some reasonable means, this is the first time you have\r\nreceived notice of violation of this License (for any work) from that\r\ncopyright holder, and you cure the violation prior to 30 days after\r\nyour receipt of the notice.\r\n\r\n  Termination of your rights under this section does not terminate the\r\nlicenses of parties who have received copies or rights from you under\r\nthis License.  If your rights have been terminated and not permanently\r\nreinstated, you do not qualify to receive new licenses for the same\r\nmaterial under section 10.\r\n\r\n  9. Acceptance Not Required for Having Copies.\r\n\r\n  You are not required to accept this License in order to receive or\r\nrun a copy of the Program.  Ancillary propagation of a covered work\r\noccurring solely as a consequence of using peer-to-peer transmission\r\nto receive a copy likewise does not require acceptance.  However,\r\nnothing other than this License grants you permission to propagate or\r\nmodify any covered work.  These actions infringe copyright if you do\r\nnot accept this License.  Therefore, by modifying or propagating a\r\ncovered work, you indicate your acceptance of this License to do so.\r\n\r\n  10. Automatic Licensing of Downstream Recipients.\r\n\r\n  Each time you convey a covered work, the recipient automatically\r\nreceives a license from the original licensors, to run, modify and\r\npropagate that work, subject to this License.  You are not responsible\r\nfor enforcing compliance by third parties with this License.\r\n\r\n  An \"entity transaction\" is a transaction transferring control of an\r\norganization, or substantially all assets of one, or subdividing an\r\norganization, or merging organizations.  If propagation of a covered\r\nwork results from an entity transaction, each party to that\r\ntransaction who receives a copy of the work also receives whatever\r\nlicenses to the work the party\'s predecessor in interest had or could\r\ngive under the previous paragraph, plus a right to possession of the\r\nCorresponding Source of the work from the predecessor in interest, if\r\nthe predecessor has it or can get it with reasonable efforts.\r\n\r\n  You may not impose any further restrictions on the exercise of the\r\nrights granted or affirmed under this License.  For example, you may\r\nnot impose a license fee, royalty, or other charge for exercise of\r\nrights granted under this License, and you may not initiate litigation\r\n(including a cross-claim or counterclaim in a lawsuit) alleging that\r\nany patent claim is infringed by making, using, selling, offering for\r\nsale, or importing the Program or any portion of it.\r\n\r\n  11. Patents.\r\n\r\n  A \"contributor\" is a copyright holder who authorizes use under this\r\nLicense of the Program or a work on which the Program is based.  The\r\nwork thus licensed is called the contributor\'s \"contributor version\".\r\n\r\n  A contributor\'s \"essential patent claims\" are all patent claims\r\nowned or controlled by the contributor, whether already acquired or\r\nhereafter acquired, that would be infringed by some manner, permitted\r\nby this License, of making, using, or selling its contributor version,\r\nbut do not include claims that would be infringed only as a\r\nconsequence of further modification of the contributor version.  For\r\npurposes of this definition, \"control\" includes the right to grant\r\npatent sublicenses in a manner consistent with the requirements of\r\nthis License.\r\n\r\n  Each contributor grants you a non-exclusive, worldwide, royalty-free\r\npatent license under the contributor\'s essential patent claims, to\r\nmake, use, sell, offer for sale, import and otherwise run, modify and\r\npropagate the contents of its contributor version.\r\n\r\n  In the following three paragraphs, a \"patent license\" is any express\r\nagreement or commitment, however denominated, not to enforce a patent\r\n(such as an express permission to practice a patent or covenant not to\r\nsue for patent infringement).  To \"grant\" such a patent license to a\r\nparty means to make such an agreement or commitment not to enforce a\r\npatent against the party.\r\n\r\n  If you convey a covered work, knowingly relying on a patent license,\r\nand the Corresponding Source of the work is not available for anyone\r\nto copy, free of charge and under the terms of this License, through a\r\npublicly available network server or other readily accessible means,\r\nthen you must either (1) cause the Corresponding Source to be so\r\navailable, or (2) arrange to deprive yourself of the benefit of the\r\npatent license for this particular work, or (3) arrange, in a manner\r\nconsistent with the requirements of this License, to extend the patent\r\nlicense to downstream recipients.  \"Knowingly relying\" means you have\r\nactual knowledge that, but for the patent license, your conveying the\r\ncovered work in a country, or your recipient\'s use of the covered work\r\nin a country, would infringe one or more identifiable patents in that\r\ncountry that you have reason to believe are valid.\r\n\r\n  If, pursuant to or in connection with a single transaction or\r\narrangement, you convey, or propagate by procuring conveyance of, a\r\ncovered work, and grant a patent license to some of the parties\r\nreceiving the covered work authorizing them to use, propagate, modify\r\nor convey a specific copy of the covered work, then the patent license\r\nyou grant is automatically extended to all recipients of the covered\r\nwork and works based on it.\r\n\r\n  A patent license is \"discriminatory\" if it does not include within\r\nthe scope of its coverage, prohibits the exercise of, or is\r\nconditioned on the non-exercise of one or more of the rights that are\r\nspecifically granted under this License.  You may not convey a covered\r\nwork if you are a party to an arrangement with a third party that is\r\nin the business of distributing software, under which you make payment\r\nto the third party based on the extent of your activity of conveying\r\nthe work, and under which the third party grants, to any of the\r\nparties who would receive the covered work from you, a discriminatory\r\npatent license (a) in connection with copies of the covered work\r\nconveyed by you (or copies made from those copies), or (b) primarily\r\nfor and in connection with specific products or compilations that\r\ncontain the covered work, unless you entered into that arrangement,\r\nor that patent license was granted, prior to 28 March 2007.\r\n\r\n  Nothing in this License shall be construed as excluding or limiting\r\nany implied license or other defenses to infringement that may\r\notherwise be available to you under applicable patent law.\r\n\r\n  12. No Surrender of Others\' Freedom.\r\n\r\n  If conditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot convey a\r\ncovered work so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you may\r\nnot convey it at all.  For example, if you agree to terms that obligate you\r\nto collect a royalty for further conveying from those to whom you convey\r\nthe Program, the only way you could satisfy both those terms and this\r\nLicense would be to refrain entirely from conveying the Program.\r\n\r\n  13. Use with the GNU Affero General Public License.\r\n\r\n  Notwithstanding any other provision of this License, you have\r\npermission to link or combine any covered work with a work licensed\r\nunder version 3 of the GNU Affero General Public License into a single\r\ncombined work, and to convey the resulting work.  The terms of this\r\nLicense will continue to apply to the part which is the covered work,\r\nbut the special requirements of the GNU Affero General Public License,\r\nsection 13, concerning interaction through a network will apply to the\r\ncombination as such.\r\n\r\n  14. Revised Versions of this License.\r\n\r\n  The Free Software Foundation may publish revised and/or new versions of\r\nthe GNU General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\n  Each version is given a distinguishing version number.  If the\r\nProgram specifies that a certain numbered version of the GNU General\r\nPublic License \"or any later version\" applies to it, you have the\r\noption of following the terms and conditions either of that numbered\r\nversion or of any later version published by the Free Software\r\nFoundation.  If the Program does not specify a version number of the\r\nGNU General Public License, you may choose any version ever published\r\nby the Free Software Foundation.\r\n\r\n  If the Program specifies that a proxy can decide which future\r\nversions of the GNU General Public License can be used, that proxy\'s\r\npublic statement of acceptance of a version permanently authorizes you\r\nto choose that version for the Program.\r\n\r\n  Later license versions may give you additional or different\r\npermissions.  However, no additional obligations are imposed on any\r\nauthor or copyright holder as a result of your choosing to follow a\r\nlater version.\r\n\r\n  15. Disclaimer of Warranty.\r\n\r\n  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY\r\nAPPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT\r\nHOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY\r\nOF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,\r\nTHE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR\r\nPURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM\r\nIS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF\r\nALL NECESSARY SERVICING, REPAIR OR CORRECTION.\r\n\r\n  16. Limitation of Liability.\r\n\r\n  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS\r\nTHE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY\r\nGENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE\r\nUSE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF\r\nDATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD\r\nPARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),\r\nEVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF\r\nSUCH DAMAGES.\r\n\r\n  17. Interpretation of Sections 15 and 16.\r\n\r\n  If the disclaimer of warranty and limitation of liability provided\r\nabove cannot be given local legal effect according to their terms,\r\nreviewing courts shall apply local law that most closely approximates\r\nan absolute waiver of all civil liability in connection with the\r\nProgram, unless a warranty or assumption of liability accompanies a\r\ncopy of the Program in return for a fee.\r\n\r\n                     END OF TERMS AND CONDITIONS\r\n\r\n            How to Apply These Terms to Your New Programs\r\n\r\n  If you develop a new program, and you want it to be of the greatest\r\npossible use to the public, the best way to achieve this is to make it\r\nfree software which everyone can redistribute and change under these terms.\r\n\r\n  To do so, attach the following notices to the program.  It is safest\r\nto attach them to the start of each source file to most effectively\r\nstate the exclusion of warranty; and each file should have at least\r\nthe \"copyright\" line and a pointer to where the full notice is found.\r\n\r\n    <one line to give the program\'s name and a brief idea of what it does.>\r\n    Copyright (C) <year>  <name of author>\r\n\r\n    This program is free software: you can redistribute it and/or modify\r\n    it under the terms of the GNU General Public License as published by\r\n    the Free Software Foundation, either version 3 of the License, or\r\n    (at your option) any later version.\r\n\r\n    This program is distributed in the hope that it will be useful,\r\n    but WITHOUT ANY WARRANTY; without even the implied warranty of\r\n    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\r\n    GNU General Public License for more details.\r\n\r\n    You should have received a copy of the GNU General Public License\r\n    along with this program.  If not, see <https://www.gnu.org/licenses/>.\r\n\r\nAlso add information on how to contact you by electronic and paper mail.\r\n\r\n  If the program does terminal interaction, make it output a short\r\nnotice like this when it starts in an interactive mode:\r\n\r\n    <program>  Copyright (C) <year>  <name of author>\r\n    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w\'.\r\n    This is free software, and you are welcome to redistribute it\r\n    under certain conditions; type `show c\' for details.\r\n\r\nThe hypothetical commands `show w\' and `show c\' should show the appropriate\r\nparts of the General Public License.  Of course, your program\'s commands\r\nmight be different; for a GUI interface, you would use an \"about box\".\r\n\r\n  You should also get your employer (if you work as a programmer) or school,\r\nif any, to sign a \"copyright disclaimer\" for the program, if necessary.\r\nFor more information on this, and how to apply and follow the GNU GPL, see\r\n<https://www.gnu.org/licenses/>.\r\n\r\n  The GNU General Public License does not permit incorporating your program\r\ninto proprietary programs.  If your program is a subroutine library, you\r\nmay consider it more useful to permit linking proprietary applications with\r\nthe library.  If this is what you want to do, use the GNU Lesser General\r\nPublic License instead of this License.  But first, please read\r\n<https://www.gnu.org/licenses/why-not-lgpl.html>.\r\n\";s:6:\"readme\";s:3727:\"--------------------\r\nExtra: Simple Ace Code Editor\r\n--------------------\r\nVersion: 1.4.4-pl\r\nCreated: 15 May. 2018\r\nSince: 17 Feb. 2018\r\nAuthor: Indigo744 <https://github.com/Indigo744>\r\nBased on the work of Danil Kostin <danya.postfactum@gmail.com> of Ace extra\r\nLicense: GNU GPLv3\r\n\r\nIntegrates Ace Code Editor into MODx Revolution in a simple way.\r\n\r\n\r\nFeatures:\r\n\r\n    Dead simple. Really.\r\n    Works out of the box with sensible default\r\n    CTRL-D to duplicate\r\n    Auto completion on CTRL-SPACE\r\n    MODX syntax highlighting\r\n    Emmet integration\r\n    Full-screen support (F11 while cursor in editor)\r\n    Set a specific MIME type for you chunks (like a shebang)\r\n\r\n    \r\nAvailable properties are:\r\n\r\n    AcePath: URL or path to ACE javascript file\r\n             default: https://cdnjs.cloudflare.com/ajax/libs/ace/1.3.3/ace.js\r\n\r\n    Theme: editor theme name (you can test them all here: https://ace.c9.io/build/kitchen-sink.html)\r\n           default: monokai\r\n\r\n    ReplaceCTRLDKbdShortcut: Replace the CTRL-D (or CMD-D) keyboard shortcut to perform a more sensible action\r\n                             duplicate the current line or selection (instead of deleting, which is the default behavior)\r\n                             default: true\r\n\r\n    Autocompletion: Enable Autocompletion: none, basic (show on CTRL-Space) or live (show on typing)\r\n                    Note that \"ext-language_tools.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-language_tools.js)\r\n                    default: basic\r\n\r\n    SettingsMenu: Add a settings menu accessible with CTR-Q (or CMD-Q)\r\n                  Note that \"ext-settings_menu.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-settings_menu.js)\r\n                  default: false\r\n\r\n    Spellcheck: Enable spellcheck\r\n                Note that \"ext-spellcheck.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-spellcheck.js)\r\n                default: false\r\n\r\n    EmmetPath: URL or path to Emmet js file\r\n               For more information, see https://github.com/cloud9ide/emmet-core\r\n               default: https://cloud9ide.github.io/emmet-core/emmet.js\r\n\r\n    Emmet: Enable emmet\r\n           Note that Emmet JS file must be loaded first (see EmmetPath, it must be correctly set)\r\n           Note that \"ext-emmet.js\" must be available alongside ace.js (will be retrieve from <AcePath>/ext-emmet.js)\r\n           It is recommended to disable ReplaceCTRLDKbdShortcut property when using Emmet (as it replace an Emmet shortcut CTRL-D)\r\n           default: false\r\n\r\n    AcePrintMarginColumn: Print margin column position\r\n                          Set the character position of the print margin (for instance useful if you like to code with 80 chars wide max)\r\n                          Set to 0 to disable it completely\r\n                          default: 0 (disabled)\r\n\r\n    ChunkDetectMIMEShebang: Enable \'shebang-style\' MIME detection for chunks (in description or in the first line of chunk content)\r\n                            This is particularly useful if your chunk contains directly JS, or SASS, or anything different than HTML...\r\n                            Supported MIME values are text/x-smarty, text/html, application/xhtml+xml, text/css, text/x-scss, \r\n                                                      text/x-sass, text/x-less, image/svg+xml, application/xml, text/xml, text/javascript, \r\n                                                      application/javascript, application/json, text/x-php, application/x-php, text/x-sql, \r\n                                                      text/x-markdown, text/plain, text/x-twig\r\n                            default: true\r\n\r\n\";s:9:\"changelog\";s:1570:\"\r\n15 May 2018 - Indigo74\r\nVersion 1.4.4\r\n * Fix search bug in Chrome\r\n \r\n09 May 2018 - Indigo74\r\nVersion 1.4.3\r\n * Fix search form not visible in fullscreen\r\n * Added AcePrintMarginColumn property to specify position (disabled by default)\r\n \r\n09 May 2018 - Indigo74\r\nVersion 1.4.2\r\n * Added Modx cache refresh when installing/upgrading and saving plugin\r\n * Upgrading will no longer replace property sets defined for events\r\n \r\n08 May 2018 - Indigo74\r\nVersion 1.4.1\r\n * Added cache busting for external JS files\r\n * Added fullscreen support (uses F11)\r\n \r\n08 May 2018 - Indigo74\r\nVersion 1.4.0\r\n * Added property EmmetPath\r\n * Fix: Emmet feature was missing the Emmet JS file\r\n * Improvements: MODX syntax highlighting \r\n \r\n07 May 2018 - Indigo74\r\nVersion 1.3.1\r\n * Fix: ChunkDetectMIMEShebang should always override the detected MIME\r\n * Added more MIME/extension detection\r\n \r\n04 May 2018 - Indigo74\r\nVersion 1.3.0\r\n * Added property ChunkDetectMIMEShebang (allows to set a MIME type in chunk description or first line)\r\n * Added MODX tag highlighting\r\n \r\n03 May 2018 - Indigo74\r\nVersion 1.2.0\r\n * Updated default CDNJS URL to ACE 1.3.3\r\n * Renamed property AceTheme to Theme (and propose a list of available theme)\r\n * Added properties: ReplaceCTRLDKbdShortcut, Autocompletion, SettingsMenu, Spellcheck, Emmet\r\n * Added text/x-sass MIME detection\r\n * Added .sass file detection\r\n\r\n03 May 2018 - Indigo74\r\nVersion 1.1.0\r\nMoved from PackMan to proper build script\r\n\r\n11 Apr. 2018 - Indigo74\r\nGitHub repo init\r\n\r\n18 Feb. 2018 - Indigo74\r\nVersion 1.0.0\r\nInitial version\r\n\";s:9:\"signature\";s:28:\"simpleacecodeeditor-1.4.4-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:56:\"/workspace/package/install/simpleacecodeeditor-1.4.4-pl/\";s:14:\"package_action\";i:0;}', 'Simple Ace Code Editor', 'a:38:{s:2:\"id\";s:24:\"5afaa391bc8dd3e9488b4567\";s:7:\"package\";s:24:\"5a88a9d2bc8dd3f4318b4567\";s:12:\"display_name\";s:28:\"simpleacecodeeditor-1.4.4-pl\";s:4:\"name\";s:22:\"Simple Ace Code Editor\";s:7:\"version\";s:5:\"1.4.4\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"4\";s:13:\"version_patch\";s:1:\"4\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"indigo74\";s:11:\"description\";s:83:\"<p><b>Version 1.4.4</b></p><ul><li>Fix search bug in Chrome</li></ul><p></p><p></p>\";s:12:\"instructions\";s:266:\"<p>Install via Package manager (or upload manually the transport package). </p><p>It should work out of the box. The plugin will attempt to set the system option <b>which_element_editor</b> SimpleAceCodeEditor.</p><p>Check the plugin properties for some options.</p>\";s:9:\"changelog\";s:1986:\"<p><b>15 May 2018 - Indigo74</b></p><p><b>Version 1.4.4</b></p><ul><li>Fix search bug in Chrome</li></ul><p><b>09 May 2018 - Indigo74</b></p><p><b>Version 1.4.3</b></p><ul><li>Fix search form not visible in fullscreen</li><li> Added AcePrintMarginColumn property to specify position (disabled by default)</li></ul><p><b>09 May 2018 - Indigo74</b></p><p><b></b><b>Version 1.4.2</b></p><ul><li> Added Modx cache refresh when installing/upgrading and saving plugin</li><li>Upgrading will no longer replace property sets defined for events</li></ul><p><b>08 May 2018 - Indigo74</b></p><p><b>Version 1.4.1</b></p><ul><li>Added cache busting for external JS files</li><li>Added fullscreen support (uses F11)</li></ul><p><b>08 May 2018 - Indigo74</b></p><p><b>Version 1.4.0</b></p><ul><li>Added property EmmetPath</li><li>Fix: Emmet feature was missing the Emmet JS file</li><li>Improvements: MODX syntax highlighting </li></ul><p><b>07 May 2018 - Indigo74</b></p><p><b>Version 1.3.1</b></p><ul><li>Fix: ChunkDetectMIMEShebang should always override the detected MIME</li><li>Added more MIME/extension detection</li></ul><p><b>04 May 2018 - Indigo74</b></p><p><b>Version 1.3.0</b></p><ul><li>Added property ChunkDetectMIMEShebang (allows to set a MIME type in chunk description or first line)</li><li>Added MODX tag highlighting</li></ul><p><b>03 May 2018 - Indigo74</b></p><p><b>Version 1.2.0</b></p><ul><li>Updated default CDNJS URL to ACE 1.3.3</li><li>Renamed property AceTheme to Theme (and propose a list of available theme)</li><li>Added properties: ReplaceCTRLDKbdShortcut, Autocompletion, SettingsMenu, Spellcheck, Emmet</li><li>Added text/x-sass MIME detection</li><li>Added .sass file detection</li></ul><p><b>03 May 2018 - Indigo74</b></p><p><b>Version 1.1.0</b></p><p><b></b>Moved from PackMan to proper build script</p><p><b>11 Apr. 2018 - Indigo74</b></p><p><b></b>GitHub repo init</p><p><b>18 Feb. 2018 - Indigo74</b></p><p><b>Version 1.0.0</b></p><p><b></b>Initial version</p>\";s:9:\"createdon\";s:24:\"2018-05-15T09:08:33+0000\";s:9:\"createdby\";s:8:\"indigo74\";s:8:\"editedon\";s:24:\"2018-05-16T18:08:45+0000\";s:10:\"releasedon\";s:24:\"2018-05-15T09:08:33+0000\";s:9:\"downloads\";s:3:\"176\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv3\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5afaa391bc8dd3e9488b4568\";s:9:\"signature\";s:28:\"simpleacecodeeditor-1.4.4-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:72:\"http://modx.s3.amazonaws.com/extras/5a88a9d2bc8dd3f4318b4567/Capture.PNG\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5afaa391bc8dd3e9488b4568\";s:7:\"version\";s:24:\"5afaa391bc8dd3e9488b4567\";s:8:\"filename\";s:42:\"simpleacecodeeditor-1.4.4-pl.transport.zip\";s:9:\"downloads\";s:2:\"13\";s:6:\"lastip\";s:10:\"153.92.0.2\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5afaa391bc8dd3e9488b4568\";}s:17:\"package-signature\";s:28:\"simpleacecodeeditor-1.4.4-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:61:\"code,highlighting,ace,editor,rich,text,syntax,sass,scss,emmet\";}', 1, 4, 4, 'pl', 0);
INSERT INTO `sneg_prfx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tinymcerte-1.2.1-pl', '2018-05-16 21:53:12', '2018-05-16 18:55:22', '2018-05-16 21:55:22', 0, 1, 1, 0, 'tinymcerte-1.2.1-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:193:\"---------------------------------------\nTinyMCE Rich Text Editor\n---------------------------------------\nVersion: 1.1.1\nAuthor: John Peca <john@modx.com>\n---------------------------------------\";s:9:\"changelog\";s:1289:\"Changelog for TinyMCE Rich Text Editor.\n\nTinyMCE Rich Text Editor 1.2.1\n==============\n- Escaped special HTML chars in the modxlink plugin\n- Fixing \'Media browser does not close when clicking on close\'\n- Added language strings for the system settings added in 1.2.0\n\nTinyMCE Rich Text Editor 1.2.0\n==============\n- Added `relative_urls` & `remove_script_host` settings\n- Plugin now makes use of `modManagerController::addJavascript` instead of `modX::regClientStartupScript`\n- Added system setting to define \'valid_elements\'\n- Added \'links_across_contexts\' setting to limit links to the current context resources\n- Added support for configured default Media Source in context settings\n- CMPs can now pass any TinyMCE configuration property using the `OnRichTextEditorInit` system event\n- Upgraded to TinyMCE 4.5.7\n\nTinyMCE Rich Text Editor 1.1.1\n==============\n- Allow base path parsing in the external_config system setting\n- Add tel: prefix\n- Add modximage - left/right image positioning\n- Sync tinymce and textarea\n- Add modx skin (Credits goes to fourroses666)\n- Add skin system setting\n\nTinyMCE Rich Text Editor 1.1.0\n==============\n- Add autocomplete search for links\n- Add external config\n- Support for link classes\n\nTinyMCE Rich Text Editor 1.0.0\n==============\n- Initial release.\n\";s:9:\"signature\";s:19:\"tinymcerte-1.2.1-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/tinymcerte-1.2.1-pl/\";s:14:\"package_action\";i:0;}', 'TinyMCE Rich Text Editor', 'a:38:{s:2:\"id\";s:24:\"5a354af4bc8dd360418b4567\";s:7:\"package\";s:24:\"54eb652ddc532f725a02bf64\";s:12:\"display_name\";s:19:\"tinymcerte-1.2.1-pl\";s:4:\"name\";s:24:\"TinyMCE Rich Text Editor\";s:7:\"version\";s:5:\"1.2.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"2\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:4:\"jako\";s:11:\"description\";s:370:\"<p>TinyMCE is a platform independent web based Javascript HTML WYSIWYG editor. It allows non-technical users to format content without knowing how to code. This release was done as a companion project for the&nbsp;<a href=\"https://a11y.modx.com/\" title=\"\" target=\"\">https://a11y.modx.com</a>&nbsp;to provide an accessible RTE. It is based on the TinyMCE 4 code base.</p>\";s:12:\"instructions\";s:53:\"<p>Download and install via MODX package manager.</p>\";s:9:\"changelog\";s:1479:\"<p><b>TinyMCE Rich Text Editor 1.2.1</b></p><ul><li>Escaped special HTML chars in the modxlink plugin</li><li>Fixing \'Media browser does not close when clicking on close\' in MODX Revolution 2.6.1+</li><li>Language strings for the system settings added in 1.2.0</li></ul><p></p><b>TinyMCE Rich Text Editor 1.2.0</b><ul><li>Added `relative_urls` &amp; `remove_script_host` settings</li><li>Plugin now makes use of `modManagerController::addJavascript` instead of `modX::regClientStartupScript`</li><li>Added system setting to define \'valid_elements\'</li><li>Added \'links_across_contexts\' setting to limit links to the current context resources</li><li>Added support for configured default Media Source in context settings</li><li>CMPs can now pass any TinyMCE configuration property using the `OnRichTextEditorInit` system event</li><li>Upgraded to TinyMCE 4.5.7</li></ul><p><b>TinyMCE Rich Text Editor 1.1.1</b><b></b></p><p></p><ul><li>Allow base path parsing in the external_config system setting</li><li>Add tel: prefix</li><li>Add modximage - left/right image positioning</li><li>Sync tinymce and textarea</li><li>Add modx skin (Credits goes to fourroses666)</li><li>Add skin system setting</li></ul><p></p><p></p><p><b>TinyMCE Rich Text Editor 1.1.0</b></p><p></p><ul><li>Add autocomplete search for links</li><li>Add external config</li><li>Support for link classes</li></ul><p></p><p><b>TinyMCE Rich Text Editor 1.0.0</b></p><p></p><ul><li>Initial release.</li></ul><p></p>\";s:9:\"createdon\";s:24:\"2017-12-16T16:33:56+0000\";s:9:\"createdby\";s:4:\"jako\";s:8:\"editedon\";s:24:\"2018-05-16T18:40:33+0000\";s:10:\"releasedon\";s:24:\"2017-12-16T16:33:56+0000\";s:9:\"downloads\";s:5:\"48146\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a354af5bc8dd360418b4568\";s:9:\"signature\";s:19:\"tinymcerte-1.2.1-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:75:\"http://modx.s3.amazonaws.com/extras/54eb652ddc532f725a02bf64/tinymcerte.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5a354af5bc8dd360418b4568\";s:7:\"version\";s:24:\"5a354af4bc8dd360418b4567\";s:8:\"filename\";s:33:\"tinymcerte-1.2.1-pl.transport.zip\";s:9:\"downloads\";s:4:\"9616\";s:6:\"lastip\";s:14:\"185.21.102.104\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a354af5bc8dd360418b4568\";}s:17:\"package-signature\";s:19:\"tinymcerte-1.2.1-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 2, 1, 'pl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_transport_providers`
--

DROP TABLE IF EXISTS `sneg_prfx_transport_providers`;
CREATE TABLE `sneg_prfx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_transport_providers`
--

INSERT INTO `sneg_prfx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2018-04-18 20:35:03', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_users`
--

DROP TABLE IF EXISTS `sneg_prfx_users`;
CREATE TABLE `sneg_prfx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_users`
--

INSERT INTO `sneg_prfx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'SnegAdmin', '89502c266aec18503ea89a2ce672e05e', 'ee229c3f53dc2e725989e3bea2025342', 'modUser', 1, NULL, NULL, 'hashing.modMD5', '18de7acfa078ec932d6d09f18cf0dbac', 1, 'a:2:{i:0;s:3:\"mgr\";i:1;s:3:\"web\";}', 1, 1526494251),
(2, 'SnegContentManager', 'd12be3a7d213db5c124d668479c99c58', '', 'modUser', 1, NULL, NULL, 'hashing.modMD5', 'ac3312c2156ef92e17ae2dbaed661b81', 2, 'a:0:{}', 0, 1526790947);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_user_attributes`
--

DROP TABLE IF EXISTS `sneg_prfx_user_attributes`;
CREATE TABLE `sneg_prfx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_user_attributes`
--

INSERT INTO `sneg_prfx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'local@localhost.tld', '', '', 0, 0, 0, 25, 1552916781, 1552919827, 0, '9ec0c04e02555bce1eb73bda5aa4726b', 0, 0, '', '', '', '', '', '', 'user_logo/2018_05_20_T042275000_1526800671.png', '', '', NULL),
(2, 2, 'SnegContentManager', 'local@localhost.tld', '', '', 0, 0, 0, 9, 1529609963, 1552853334, 0, '31cb874f142e17aeaccc59a3ff69c586', 0, 0, '', '', '', '', '', '', 'user_logo/2018_05_20_T042275000_1526800671.png', '', '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_user_group_roles`
--

DROP TABLE IF EXISTS `sneg_prfx_user_group_roles`;
CREATE TABLE `sneg_prfx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_user_group_roles`
--

INSERT INTO `sneg_prfx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_user_group_settings`
--

DROP TABLE IF EXISTS `sneg_prfx_user_group_settings`;
CREATE TABLE `sneg_prfx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_user_messages`
--

DROP TABLE IF EXISTS `sneg_prfx_user_messages`;
CREATE TABLE `sneg_prfx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_user_settings`
--

DROP TABLE IF EXISTS `sneg_prfx_user_settings`;
CREATE TABLE `sneg_prfx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sneg_prfx_workspaces`
--

DROP TABLE IF EXISTS `sneg_prfx_workspaces`;
CREATE TABLE `sneg_prfx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sneg_prfx_workspaces`
--

INSERT INTO `sneg_prfx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2018-05-16 21:10:49', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sneg_prfx_access_actiondom`
--
ALTER TABLE `sneg_prfx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `sneg_prfx_access_actions`
--
ALTER TABLE `sneg_prfx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `sneg_prfx_access_category`
--
ALTER TABLE `sneg_prfx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_access_context`
--
ALTER TABLE `sneg_prfx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `sneg_prfx_access_elements`
--
ALTER TABLE `sneg_prfx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_access_media_source`
--
ALTER TABLE `sneg_prfx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_access_menus`
--
ALTER TABLE `sneg_prfx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `sneg_prfx_access_namespace`
--
ALTER TABLE `sneg_prfx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_access_permissions`
--
ALTER TABLE `sneg_prfx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sneg_prfx_access_policies`
--
ALTER TABLE `sneg_prfx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `sneg_prfx_access_policy_templates`
--
ALTER TABLE `sneg_prfx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sneg_prfx_access_policy_template_groups`
--
ALTER TABLE `sneg_prfx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sneg_prfx_access_resources`
--
ALTER TABLE `sneg_prfx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_access_resource_groups`
--
ALTER TABLE `sneg_prfx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_access_templatevars`
--
ALTER TABLE `sneg_prfx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `sneg_prfx_actiondom`
--
ALTER TABLE `sneg_prfx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `sneg_prfx_actions`
--
ALTER TABLE `sneg_prfx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Indexes for table `sneg_prfx_actions_fields`
--
ALTER TABLE `sneg_prfx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indexes for table `sneg_prfx_active_users`
--
ALTER TABLE `sneg_prfx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indexes for table `sneg_prfx_categories`
--
ALTER TABLE `sneg_prfx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `sneg_prfx_categories_closure`
--
ALTER TABLE `sneg_prfx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indexes for table `sneg_prfx_class_map`
--
ALTER TABLE `sneg_prfx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Indexes for table `sneg_prfx_content_type`
--
ALTER TABLE `sneg_prfx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sneg_prfx_context`
--
ALTER TABLE `sneg_prfx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `sneg_prfx_context_resource`
--
ALTER TABLE `sneg_prfx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indexes for table `sneg_prfx_context_setting`
--
ALTER TABLE `sneg_prfx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indexes for table `sneg_prfx_dashboard`
--
ALTER TABLE `sneg_prfx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indexes for table `sneg_prfx_dashboard_widget`
--
ALTER TABLE `sneg_prfx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indexes for table `sneg_prfx_dashboard_widget_placement`
--
ALTER TABLE `sneg_prfx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `sneg_prfx_documentgroup_names`
--
ALTER TABLE `sneg_prfx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sneg_prfx_document_groups`
--
ALTER TABLE `sneg_prfx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indexes for table `sneg_prfx_element_property_sets`
--
ALTER TABLE `sneg_prfx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indexes for table `sneg_prfx_extension_packages`
--
ALTER TABLE `sneg_prfx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sneg_prfx_fc_profiles`
--
ALTER TABLE `sneg_prfx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `sneg_prfx_fc_profiles_usergroups`
--
ALTER TABLE `sneg_prfx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indexes for table `sneg_prfx_fc_sets`
--
ALTER TABLE `sneg_prfx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `sneg_prfx_lexicon_entries`
--
ALTER TABLE `sneg_prfx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `sneg_prfx_manager_log`
--
ALTER TABLE `sneg_prfx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indexes for table `sneg_prfx_media_sources`
--
ALTER TABLE `sneg_prfx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indexes for table `sneg_prfx_media_sources_contexts`
--
ALTER TABLE `sneg_prfx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indexes for table `sneg_prfx_media_sources_elements`
--
ALTER TABLE `sneg_prfx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indexes for table `sneg_prfx_membergroup_names`
--
ALTER TABLE `sneg_prfx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indexes for table `sneg_prfx_member_groups`
--
ALTER TABLE `sneg_prfx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `sneg_prfx_menus`
--
ALTER TABLE `sneg_prfx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indexes for table `sneg_prfx_migx_configs`
--
ALTER TABLE `sneg_prfx_migx_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `sneg_prfx_migx_config_elements`
--
ALTER TABLE `sneg_prfx_migx_config_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sneg_prfx_migx_elements`
--
ALTER TABLE `sneg_prfx_migx_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sneg_prfx_migx_formtabs`
--
ALTER TABLE `sneg_prfx_migx_formtabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Indexes for table `sneg_prfx_migx_formtab_fields`
--
ALTER TABLE `sneg_prfx_migx_formtab_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`),
  ADD KEY `formtab_id` (`formtab_id`),
  ADD KEY `field` (`field`),
  ADD KEY `pos` (`pos`);

--
-- Indexes for table `sneg_prfx_namespaces`
--
ALTER TABLE `sneg_prfx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sneg_prfx_property_set`
--
ALTER TABLE `sneg_prfx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `sneg_prfx_register_messages`
--
ALTER TABLE `sneg_prfx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `sneg_prfx_register_queues`
--
ALTER TABLE `sneg_prfx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sneg_prfx_register_topics`
--
ALTER TABLE `sneg_prfx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sneg_prfx_session`
--
ALTER TABLE `sneg_prfx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `sneg_prfx_site_content`
--
ALTER TABLE `sneg_prfx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `sneg_prfx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indexes for table `sneg_prfx_site_htmlsnippets`
--
ALTER TABLE `sneg_prfx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `sneg_prfx_site_plugins`
--
ALTER TABLE `sneg_prfx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `sneg_prfx_site_plugin_events`
--
ALTER TABLE `sneg_prfx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `sneg_prfx_site_snippets`
--
ALTER TABLE `sneg_prfx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `sneg_prfx_site_templates`
--
ALTER TABLE `sneg_prfx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `sneg_prfx_site_tmplvars`
--
ALTER TABLE `sneg_prfx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `sneg_prfx_site_tmplvar_access`
--
ALTER TABLE `sneg_prfx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indexes for table `sneg_prfx_site_tmplvar_contentvalues`
--
ALTER TABLE `sneg_prfx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `sneg_prfx_site_tmplvar_templates`
--
ALTER TABLE `sneg_prfx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indexes for table `sneg_prfx_system_eventnames`
--
ALTER TABLE `sneg_prfx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sneg_prfx_system_settings`
--
ALTER TABLE `sneg_prfx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `sneg_prfx_transport_packages`
--
ALTER TABLE `sneg_prfx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indexes for table `sneg_prfx_transport_providers`
--
ALTER TABLE `sneg_prfx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `sneg_prfx_users`
--
ALTER TABLE `sneg_prfx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indexes for table `sneg_prfx_user_attributes`
--
ALTER TABLE `sneg_prfx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indexes for table `sneg_prfx_user_group_roles`
--
ALTER TABLE `sneg_prfx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Indexes for table `sneg_prfx_user_group_settings`
--
ALTER TABLE `sneg_prfx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indexes for table `sneg_prfx_user_messages`
--
ALTER TABLE `sneg_prfx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sneg_prfx_user_settings`
--
ALTER TABLE `sneg_prfx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Indexes for table `sneg_prfx_workspaces`
--
ALTER TABLE `sneg_prfx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sneg_prfx_access_actiondom`
--
ALTER TABLE `sneg_prfx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_actions`
--
ALTER TABLE `sneg_prfx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_category`
--
ALTER TABLE `sneg_prfx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_context`
--
ALTER TABLE `sneg_prfx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_elements`
--
ALTER TABLE `sneg_prfx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_media_source`
--
ALTER TABLE `sneg_prfx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_menus`
--
ALTER TABLE `sneg_prfx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_namespace`
--
ALTER TABLE `sneg_prfx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_permissions`
--
ALTER TABLE `sneg_prfx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_policies`
--
ALTER TABLE `sneg_prfx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_policy_templates`
--
ALTER TABLE `sneg_prfx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_policy_template_groups`
--
ALTER TABLE `sneg_prfx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_resources`
--
ALTER TABLE `sneg_prfx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_resource_groups`
--
ALTER TABLE `sneg_prfx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sneg_prfx_access_templatevars`
--
ALTER TABLE `sneg_prfx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_actiondom`
--
ALTER TABLE `sneg_prfx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_actions`
--
ALTER TABLE `sneg_prfx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sneg_prfx_actions_fields`
--
ALTER TABLE `sneg_prfx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `sneg_prfx_categories`
--
ALTER TABLE `sneg_prfx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sneg_prfx_class_map`
--
ALTER TABLE `sneg_prfx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sneg_prfx_content_type`
--
ALTER TABLE `sneg_prfx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sneg_prfx_dashboard`
--
ALTER TABLE `sneg_prfx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sneg_prfx_dashboard_widget`
--
ALTER TABLE `sneg_prfx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sneg_prfx_documentgroup_names`
--
ALTER TABLE `sneg_prfx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sneg_prfx_document_groups`
--
ALTER TABLE `sneg_prfx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_extension_packages`
--
ALTER TABLE `sneg_prfx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_fc_profiles`
--
ALTER TABLE `sneg_prfx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_fc_sets`
--
ALTER TABLE `sneg_prfx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_lexicon_entries`
--
ALTER TABLE `sneg_prfx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_manager_log`
--
ALTER TABLE `sneg_prfx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1302;

--
-- AUTO_INCREMENT for table `sneg_prfx_media_sources`
--
ALTER TABLE `sneg_prfx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sneg_prfx_membergroup_names`
--
ALTER TABLE `sneg_prfx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sneg_prfx_member_groups`
--
ALTER TABLE `sneg_prfx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sneg_prfx_migx_configs`
--
ALTER TABLE `sneg_prfx_migx_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_migx_config_elements`
--
ALTER TABLE `sneg_prfx_migx_config_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_migx_elements`
--
ALTER TABLE `sneg_prfx_migx_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_migx_formtabs`
--
ALTER TABLE `sneg_prfx_migx_formtabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_migx_formtab_fields`
--
ALTER TABLE `sneg_prfx_migx_formtab_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_property_set`
--
ALTER TABLE `sneg_prfx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_register_queues`
--
ALTER TABLE `sneg_prfx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sneg_prfx_register_topics`
--
ALTER TABLE `sneg_prfx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_content`
--
ALTER TABLE `sneg_prfx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_htmlsnippets`
--
ALTER TABLE `sneg_prfx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_plugins`
--
ALTER TABLE `sneg_prfx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_snippets`
--
ALTER TABLE `sneg_prfx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_templates`
--
ALTER TABLE `sneg_prfx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_tmplvars`
--
ALTER TABLE `sneg_prfx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_tmplvar_access`
--
ALTER TABLE `sneg_prfx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_site_tmplvar_contentvalues`
--
ALTER TABLE `sneg_prfx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sneg_prfx_transport_providers`
--
ALTER TABLE `sneg_prfx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sneg_prfx_users`
--
ALTER TABLE `sneg_prfx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sneg_prfx_user_attributes`
--
ALTER TABLE `sneg_prfx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sneg_prfx_user_group_roles`
--
ALTER TABLE `sneg_prfx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sneg_prfx_user_messages`
--
ALTER TABLE `sneg_prfx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneg_prfx_workspaces`
--
ALTER TABLE `sneg_prfx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
