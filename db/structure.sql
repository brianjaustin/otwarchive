/*M!999999\- enable the sandbox mode */ 

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `abuse_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `abuse_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `url` varchar(2080) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `comment_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `summary` varchar(255) DEFAULT NULL,
  `summary_sanitizer_version` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `_fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blob_id` bigint(20) NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `_fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `summary_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `banner_type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_blacklisted_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_blacklisted_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_blacklisted_emails_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_post_taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_post_taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_post_tag_id` int(11) DEFAULT NULL,
  `admin_post_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_post_taggings_on_admin_post_id` (`admin_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `translated_post_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `comment_permissions` tinyint(4) NOT NULL DEFAULT 0,
  `moderated_commenting_enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_admin_posts_on_post_id` (`translated_post_id`),
  KEY `index_admin_posts_on_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_creation_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `invite_from_queue_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `invite_from_queue_number` bigint(20) DEFAULT NULL,
  `invite_from_queue_frequency` mediumint(9) DEFAULT NULL,
  `days_to_purge_unactivated` mediumint(9) DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invite_from_queue_at` datetime DEFAULT '2009-11-07 21:27:21',
  `suspend_filter_counts` tinyint(1) DEFAULT 0,
  `suspend_filter_counts_at` datetime DEFAULT NULL,
  `enable_test_caching` tinyint(1) DEFAULT 0,
  `cache_expiration` bigint(20) DEFAULT 10,
  `tag_wrangling_off` tinyint(1) NOT NULL DEFAULT 0,
  `default_skin_id` int(11) DEFAULT NULL,
  `request_invite_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `creation_requires_invite` tinyint(1) NOT NULL DEFAULT 0,
  `downloads_enabled` tinyint(1) DEFAULT 1,
  `hide_spam` tinyint(1) NOT NULL DEFAULT 0,
  `disable_support_form` tinyint(1) NOT NULL DEFAULT 0,
  `disabled_support_form_text` text DEFAULT NULL,
  `disabled_support_form_text_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `guest_comments_off` tinyint(1) NOT NULL DEFAULT 0,
  `account_age_threshold_for_comment_spam_check` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_admin_settings_on_last_updated_by` (`last_updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `roles` text DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_login` (`login`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_api_keys_on_name` (`name`),
  UNIQUE KEY `index_api_keys_on_access_token` (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `archive_faq_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_faq_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archive_faq_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_archive_faq_translations_on_archive_faq_id` (`archive_faq_id`),
  KEY `index_archive_faq_translations_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `archive_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT 1,
  `slug` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_archive_faqs_on_slug` (`slug`),
  KEY `index_archive_faqs_on_position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditable_id` int(11) DEFAULT NULL,
  `auditable_type` varchar(255) DEFAULT NULL,
  `associated_id` int(11) DEFAULT NULL,
  `associated_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `audited_changes` text DEFAULT NULL,
  `version` int(11) DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `remote_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `request_uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auditable_index` (`auditable_id`,`auditable_type`),
  KEY `associated_index` (`associated_id`,`associated_type`),
  KEY `user_index` (`user_id`,`user_type`),
  KEY `index_audits_on_created_at` (`created_at`),
  KEY `index_audits_on_request_uuid` (`request_uuid`),
  KEY `index_audits_on_remote_address` (`remote_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocker_id` bigint(20) DEFAULT NULL,
  `blocked_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_blocks_on_blocker_id_and_blocked_id` (`blocker_id`,`blocked_id`),
  KEY `index_blocks_on_blocker_id` (`blocker_id`),
  KEY `index_blocks_on_blocked_id` (`blocked_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `bookmarkable_type` varchar(15) NOT NULL,
  `bookmarkable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bookmarker_notes` text DEFAULT NULL,
  `private` tinyint(1) DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `hidden_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `pseud_id` int(11) NOT NULL,
  `rec` tinyint(1) NOT NULL DEFAULT 0,
  `delta` tinyint(1) DEFAULT 1,
  `bookmarker_notes_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_bookmarks_user` (`user_id`),
  KEY `index_bookmarks_on_pseud_id` (`pseud_id`),
  KEY `index_bookmarkable_pseud` (`bookmarkable_id`,`bookmarkable_type`,`pseud_id`),
  KEY `index_bookmarks_on_private_and_hidden_by_admin_and_created_at` (`private`,`hidden_by_admin`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `challenge_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `creation_id` int(11) DEFAULT NULL,
  `creation_type` varchar(255) DEFAULT NULL,
  `offer_signup_id` int(11) DEFAULT NULL,
  `request_signup_id` int(11) DEFAULT NULL,
  `pinch_hitter_id` int(11) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `fulfilled_at` datetime DEFAULT NULL,
  `defaulted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pinch_request_signup_id` int(11) DEFAULT NULL,
  `covered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_on_creation_id` (`creation_id`),
  KEY `assignments_on_creation_type` (`creation_type`),
  KEY `assignments_on_offer_signup_id` (`offer_signup_id`),
  KEY `assignments_on_offer_sent_at` (`sent_at`),
  KEY `assignments_on_pinch_hitter_id` (`pinch_hitter_id`),
  KEY `assignments_on_defaulted_at` (`defaulted_at`),
  KEY `index_challenge_assignments_on_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `challenge_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge_claims` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `creation_id` int(11) DEFAULT NULL,
  `creation_type` varchar(255) DEFAULT NULL,
  `request_signup_id` int(11) DEFAULT NULL,
  `request_prompt_id` int(11) DEFAULT NULL,
  `claiming_user_id` int(11) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `fulfilled_at` datetime DEFAULT NULL,
  `defaulted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creations` (`creation_id`,`creation_type`),
  KEY `index_challenge_claims_on_claiming_user_id` (`claiming_user_id`),
  KEY `index_challenge_claims_on_request_signup_id` (`request_signup_id`),
  KEY `index_challenge_claims_on_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `challenge_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge_signups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `pseud_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `assigned_as_request` tinyint(1) DEFAULT 0,
  `assigned_as_offer` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `signups_on_pseud_id` (`pseud_id`),
  KEY `index_challenge_signups_on_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT 1,
  `work_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `word_count` int(11) DEFAULT NULL,
  `hidden_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `published_at` date DEFAULT NULL,
  `endnotes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `notes_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `summary_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `endnotes_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `works_chapter_index` (`work_id`),
  KEY `index_chapters_on_work_id` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `collection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT 'Work',
  `user_approval_status` tinyint(4) NOT NULL DEFAULT 0,
  `collection_approval_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `unrevealed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `by collection and item` (`collection_id`,`item_id`,`item_type`),
  KEY `index_collection_items_approval_status` (`collection_id`,`user_approval_status`,`collection_approval_status`),
  KEY `collection_items_unrevealed` (`unrevealed`),
  KEY `collection_items_anonymous` (`anonymous`),
  KEY `collection_items_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `collection_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `pseud_id` int(11) DEFAULT NULL,
  `participant_role` varchar(255) NOT NULL DEFAULT 'None',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `by collection and pseud` (`collection_id`,`pseud_id`),
  KEY `participants_by_collection_and_role` (`collection_id`,`participant_role`),
  KEY `participants_pseud_id` (`pseud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `collection_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `moderated` tinyint(1) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `unrevealed` tinyint(1) NOT NULL DEFAULT 0,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `gift_exchange` tinyint(1) NOT NULL DEFAULT 0,
  `show_random` tinyint(1) NOT NULL DEFAULT 0,
  `prompt_meme` tinyint(1) NOT NULL DEFAULT 0,
  `email_notify` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_collection_preferences_on_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `collection_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `intro` mediumtext DEFAULT NULL,
  `faq` mediumtext DEFAULT NULL,
  `rules` mediumtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gift_notification` text DEFAULT NULL,
  `intro_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `faq_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `rules_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `assignment_notification` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_collection_profiles_on_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `header_image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `challenge_id` int(11) DEFAULT NULL,
  `challenge_type` varchar(255) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `icon_alt_text` varchar(255) DEFAULT '',
  `icon_comment_text` varchar(255) DEFAULT '',
  `multifandom` tinyint(1) DEFAULT NULL,
  `open_doors` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_collections_on_name` (`name`),
  KEY `index_collections_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseud_id` int(11) DEFAULT NULL,
  `comment_content` text NOT NULL,
  `depth` int(11) DEFAULT NULL,
  `threaded_left` int(11) DEFAULT NULL,
  `threaded_right` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `thread` int(11) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `hidden_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `edited_at` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `comment_content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `unreviewed` tinyint(1) NOT NULL DEFAULT 0,
  `iced` tinyint(1) NOT NULL DEFAULT 0,
  `spam` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_comments_commentable` (`commentable_id`,`commentable_type`),
  KEY `index_comments_on_pseud_id` (`pseud_id`),
  KEY `index_comments_parent` (`parent_id`,`parent_type`),
  KEY `comments_by_thread` (`thread`),
  KEY `index_comments_on_ip_address` (`ip_address`),
  KEY `index_comments_on_email` (`email`),
  KEY `index_comments_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `common_taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_tag_id` int(11) NOT NULL,
  `filterable_id` int(11) NOT NULL,
  `filterable_type` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_common_tags` (`common_tag_id`,`filterable_type`,`filterable_id`),
  KEY `index_common_taggings_on_filterable_id` (`filterable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `creatorships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatorships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_id` int(11) DEFAULT NULL,
  `creation_type` varchar(100) DEFAULT NULL,
  `pseud_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `creation_id_creation_type_pseud_id` (`creation_id`,`creation_type`,`pseud_id`),
  KEY `index_creatorships_pseud` (`pseud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `external_author_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_author_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_author_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_external_author_names_on_external_author_id` (`external_author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `external_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `is_claimed` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `do_not_email` tinyint(1) NOT NULL DEFAULT 0,
  `do_not_import` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_external_authors_on_user_id` (`user_id`),
  KEY `index_external_authors_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `external_creatorships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_creatorships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_id` int(11) DEFAULT NULL,
  `creation_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archivist_id` int(11) DEFAULT NULL,
  `external_author_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_external_creatorships_on_creation_id_and_creation_type` (`creation_id`,`creation_type`),
  KEY `index_external_creatorships_on_external_author_name_id` (`external_author_name_id`),
  KEY `index_external_creatorships_on_archivist_id` (`archivist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `external_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `hidden_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `summary_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `fannish_next_of_kins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fannish_next_of_kins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `kin_id` int(11) DEFAULT NULL,
  `kin_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_fannish_next_of_kins_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `favorite_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_favorite_tags_on_user_id_and_tag_id` (`user_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `comment_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `summary_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rollout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `filter_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` bigint(20) NOT NULL,
  `public_works_count` bigint(20) DEFAULT 0,
  `unhidden_works_count` bigint(20) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_filter_counts_on_filter_id` (`filter_id`),
  KEY `index_unhidden_works_count` (`unhidden_works_count`),
  KEY `index_public_works_count` (`public_works_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `filter_taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` bigint(20) NOT NULL,
  `filterable_id` bigint(20) NOT NULL,
  `filterable_type` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `inherited` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_filter_taggings_on_filter_and_filterable` (`filter_id`,`filterable_type`,`filterable_id`),
  KEY `index_filter_taggings_filterable` (`filterable_id`,`filterable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `gift_exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_restriction_id` int(11) DEFAULT NULL,
  `offer_restriction_id` int(11) DEFAULT NULL,
  `requests_num_required` int(11) NOT NULL DEFAULT 1,
  `offers_num_required` int(11) NOT NULL DEFAULT 1,
  `requests_num_allowed` int(11) NOT NULL DEFAULT 1,
  `offers_num_allowed` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `signup_instructions_general` text DEFAULT NULL,
  `signup_instructions_requests` text DEFAULT NULL,
  `signup_instructions_offers` text DEFAULT NULL,
  `signup_open` tinyint(1) NOT NULL DEFAULT 0,
  `signups_open_at` datetime DEFAULT NULL,
  `signups_close_at` datetime DEFAULT NULL,
  `assignments_due_at` datetime DEFAULT NULL,
  `works_reveal_at` datetime DEFAULT NULL,
  `authors_reveal_at` datetime DEFAULT NULL,
  `request_url_label` varchar(255) DEFAULT NULL,
  `request_description_label` varchar(255) DEFAULT NULL,
  `offer_url_label` varchar(255) DEFAULT NULL,
  `offer_description_label` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `potential_match_settings_id` int(11) DEFAULT NULL,
  `assignments_sent_at` datetime DEFAULT NULL,
  `signup_instructions_general_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `signup_instructions_requests_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `signup_instructions_offers_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `requests_summary_visible` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pseud_id` int(11) DEFAULT NULL,
  `rejected` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_gifts_on_recipient_name` (`recipient_name`),
  KEY `index_gifts_on_work_id` (`work_id`),
  KEY `index_gifts_on_pseud_id` (`pseud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `inbox_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbox_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `feedback_comment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `replied_to` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_inbox_comments_on_read_and_user_id` (`read`,`user_id`),
  KEY `index_inbox_comments_on_feedback_comment_id` (`feedback_comment_id`),
  KEY `index_inbox_comments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `innodb_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `innodb_monitor` (
  `a` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `invitee_email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `invitee_id` int(11) DEFAULT NULL,
  `invitee_type` varchar(255) DEFAULT NULL,
  `creator_type` varchar(255) DEFAULT NULL,
  `redeemed_at` datetime DEFAULT NULL,
  `from_queue` tinyint(1) NOT NULL DEFAULT 0,
  `external_author_id` int(11) DEFAULT NULL,
  `resent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invitations_on_invitee_id_and_invitee_type` (`invitee_id`,`invitee_type`),
  KEY `index_invitations_on_external_author_id` (`external_author_id`),
  KEY `index_invitations_on_creator_id_and_creator_type` (`creator_id`,`creator_type`),
  KEY `index_invitations_on_token` (`token`),
  KEY `index_invitations_on_invitee_email` (`invitee_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `invite_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `invite_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `simplified_email` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_invite_requests_on_simplified_email` (`simplified_email`),
  KEY `index_invite_requests_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `known_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `known_issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `kudos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kudos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_kudos_on_commentable_and_user` (`commentable_id`,`commentable_type`,`user_id`),
  UNIQUE KEY `index_kudos_on_commentable_and_ip_address` (`commentable_id`,`commentable_type`,`ip_address`),
  KEY `index_kudos_on_ip_address` (`ip_address`),
  KEY `index_kudos_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `support_available` tinyint(1) NOT NULL DEFAULT 0,
  `abuse_support_available` tinyint(1) NOT NULL DEFAULT 0,
  `sortable_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_languages_on_short` (`short`),
  UNIQUE KEY `index_languages_on_name` (`name`),
  KEY `index_languages_on_sortable_name` (`sortable_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `last_wrangling_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `last_wrangling_activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_last_wrangling_activities_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` varchar(255) DEFAULT NULL,
  `short` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `interface_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `email_enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_locales_on_iso` (`iso`),
  KEY `index_locales_on_short` (`short`),
  KEY `index_locales_on_language_id` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `action` tinyint(4) DEFAULT NULL,
  `note` text NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `fnok_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_log_items_on_user_id` (`user_id`),
  KEY `index_log_items_on_admin_id` (`admin_id`),
  KEY `index_log_items_on_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `meta_taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_tag_id` bigint(20) NOT NULL,
  `sub_tag_id` bigint(20) NOT NULL,
  `direct` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_meta_taggings_on_meta_tag_id_and_sub_tag_id` (`meta_tag_id`,`sub_tag_id`),
  KEY `index_meta_taggings_on_sub_tag_id` (`sub_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `moderated_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderated_works` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_id` bigint(20) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_moderated_works_on_work_id` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `mutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mutes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `muter_id` bigint(20) DEFAULT NULL,
  `muted_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_mutes_on_muter_id_and_muted_id` (`muter_id`,`muted_id`),
  KEY `index_mutes_on_muter_id` (`muter_id`),
  KEY `index_mutes_on_muted_id` (`muted_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `owned_set_taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_set_taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owned_tag_set_id` int(11) DEFAULT NULL,
  `set_taggable_id` int(11) DEFAULT NULL,
  `set_taggable_type` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_owned_set_taggings_on_set_taggable_and_tag_set` (`set_taggable_id`,`set_taggable_type`,`owned_tag_set_id`),
  KEY `index_owned_set_taggings_on_owned_tag_set_id` (`owned_tag_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `owned_tag_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_tag_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_set_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `nominated` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `description_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `fandom_nomination_limit` int(11) NOT NULL DEFAULT 0,
  `character_nomination_limit` int(11) NOT NULL DEFAULT 0,
  `relationship_nomination_limit` int(11) NOT NULL DEFAULT 0,
  `freeform_nomination_limit` int(11) NOT NULL DEFAULT 0,
  `usable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `potential_match_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `potential_match_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_required_prompts` int(11) NOT NULL DEFAULT 1,
  `num_required_fandoms` int(11) NOT NULL DEFAULT 0,
  `num_required_characters` int(11) NOT NULL DEFAULT 0,
  `num_required_relationships` int(11) NOT NULL DEFAULT 0,
  `num_required_freeforms` int(11) NOT NULL DEFAULT 0,
  `num_required_categories` int(11) NOT NULL DEFAULT 0,
  `num_required_ratings` int(11) NOT NULL DEFAULT 0,
  `num_required_archive_warnings` int(11) NOT NULL DEFAULT 0,
  `include_optional_fandoms` tinyint(1) NOT NULL DEFAULT 0,
  `include_optional_characters` tinyint(1) NOT NULL DEFAULT 0,
  `include_optional_relationships` tinyint(1) NOT NULL DEFAULT 0,
  `include_optional_freeforms` tinyint(1) NOT NULL DEFAULT 0,
  `include_optional_categories` tinyint(1) NOT NULL DEFAULT 0,
  `include_optional_ratings` tinyint(1) NOT NULL DEFAULT 0,
  `include_optional_archive_warnings` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `potential_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `potential_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `offer_signup_id` int(11) DEFAULT NULL,
  `request_signup_id` int(11) DEFAULT NULL,
  `num_prompts_matched` int(11) DEFAULT NULL,
  `assigned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `max_tags_matched` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_potential_matches_on_collection_id` (`collection_id`),
  KEY `index_potential_matches_on_offer_signup_id` (`offer_signup_id`),
  KEY `index_potential_matches_on_request_signup_id` (`request_signup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `history_enabled` tinyint(1) DEFAULT 1,
  `email_visible` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date_of_birth_visible` tinyint(1) DEFAULT 0,
  `comment_emails_off` tinyint(1) NOT NULL DEFAULT 0,
  `adult` tinyint(1) DEFAULT 0,
  `hide_warnings` tinyint(1) NOT NULL DEFAULT 0,
  `comment_inbox_off` tinyint(1) DEFAULT 0,
  `comment_copy_to_self_off` tinyint(1) NOT NULL DEFAULT 1,
  `work_title_format` varchar(255) DEFAULT 'TITLE - AUTHOR - FANDOM',
  `hide_freeform` tinyint(1) NOT NULL DEFAULT 0,
  `first_login` tinyint(1) DEFAULT 1,
  `collection_emails_off` tinyint(1) NOT NULL DEFAULT 0,
  `collection_inbox_off` tinyint(1) NOT NULL DEFAULT 0,
  `recipient_emails_off` tinyint(1) NOT NULL DEFAULT 0,
  `view_full_works` tinyint(1) NOT NULL DEFAULT 0,
  `time_zone` varchar(255) DEFAULT NULL,
  `disable_work_skins` tinyint(1) NOT NULL DEFAULT 0,
  `skin_id` int(11) DEFAULT NULL,
  `minimize_search_engines` tinyint(1) NOT NULL DEFAULT 0,
  `kudos_emails_off` tinyint(1) NOT NULL DEFAULT 0,
  `disable_share_links` tinyint(1) NOT NULL DEFAULT 0,
  `banner_seen` tinyint(1) NOT NULL DEFAULT 0,
  `preferred_locale` int(11) NOT NULL DEFAULT 1,
  `allow_cocreator` tinyint(1) DEFAULT 0,
  `allow_gifts` tinyint(1) NOT NULL DEFAULT 0,
  `allow_collection_invitation` tinyint(1) NOT NULL DEFAULT 0,
  `guest_replies_off` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_preferences_on_user_id` (`user_id`),
  KEY `index_preferences_on_skin_id` (`skin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `about_me_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_profiles_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `prompt_memes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prompt_memes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_restriction_id` int(11) DEFAULT NULL,
  `requests_num_required` int(11) NOT NULL DEFAULT 1,
  `requests_num_allowed` int(11) NOT NULL DEFAULT 5,
  `signup_open` tinyint(1) NOT NULL DEFAULT 1,
  `signups_open_at` datetime DEFAULT NULL,
  `signups_close_at` datetime DEFAULT NULL,
  `assignments_due_at` datetime DEFAULT NULL,
  `works_reveal_at` datetime DEFAULT NULL,
  `authors_reveal_at` datetime DEFAULT NULL,
  `signup_instructions_general` text DEFAULT NULL,
  `signup_instructions_requests` text DEFAULT NULL,
  `request_url_label` varchar(255) DEFAULT NULL,
  `request_description_label` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `signup_instructions_general_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `signup_instructions_requests_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `prompt_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prompt_restrictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_set_id` int(11) DEFAULT NULL,
  `optional_tags_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `description_allowed` tinyint(1) NOT NULL DEFAULT 1,
  `url_required` tinyint(1) NOT NULL DEFAULT 0,
  `fandom_num_required` int(11) NOT NULL DEFAULT 0,
  `category_num_required` int(11) NOT NULL DEFAULT 0,
  `rating_num_required` int(11) NOT NULL DEFAULT 0,
  `character_num_required` int(11) NOT NULL DEFAULT 0,
  `relationship_num_required` int(11) NOT NULL DEFAULT 0,
  `freeform_num_required` int(11) NOT NULL DEFAULT 0,
  `archive_warning_num_required` int(11) NOT NULL DEFAULT 0,
  `fandom_num_allowed` int(11) NOT NULL DEFAULT 1,
  `category_num_allowed` int(11) NOT NULL DEFAULT 0,
  `rating_num_allowed` int(11) NOT NULL DEFAULT 0,
  `character_num_allowed` int(11) NOT NULL DEFAULT 1,
  `relationship_num_allowed` int(11) NOT NULL DEFAULT 1,
  `freeform_num_allowed` int(11) NOT NULL DEFAULT 0,
  `archive_warning_num_allowed` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description_required` tinyint(1) NOT NULL DEFAULT 0,
  `url_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_fandom` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_character` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_rating` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_relationship` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_category` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_archive_warning` tinyint(1) NOT NULL DEFAULT 0,
  `allow_any_freeform` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_fandom` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_character` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_rating` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_relationship` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_category` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_archive_warning` tinyint(1) NOT NULL DEFAULT 0,
  `require_unique_freeform` tinyint(1) NOT NULL DEFAULT 0,
  `character_restrict_to_fandom` tinyint(1) NOT NULL DEFAULT 0,
  `relationship_restrict_to_fandom` tinyint(1) NOT NULL DEFAULT 0,
  `character_restrict_to_tag_set` tinyint(1) NOT NULL DEFAULT 0,
  `relationship_restrict_to_tag_set` tinyint(1) NOT NULL DEFAULT 0,
  `title_required` tinyint(1) NOT NULL DEFAULT 0,
  `title_allowed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `prompts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prompts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `challenge_signup_id` int(11) DEFAULT NULL,
  `pseud_id` int(11) DEFAULT NULL,
  `tag_set_id` int(11) DEFAULT NULL,
  `optional_tag_set_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `any_fandom` tinyint(1) NOT NULL DEFAULT 0,
  `any_character` tinyint(1) NOT NULL DEFAULT 0,
  `any_rating` tinyint(1) NOT NULL DEFAULT 0,
  `any_relationship` tinyint(1) NOT NULL DEFAULT 0,
  `any_category` tinyint(1) NOT NULL DEFAULT 0,
  `any_archive_warning` tinyint(1) NOT NULL DEFAULT 0,
  `any_freeform` tinyint(1) NOT NULL DEFAULT 0,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_prompts_on_tag_set_id` (`tag_set_id`),
  KEY `index_prompts_on_type` (`type`),
  KEY `index_prompts_on_collection_id` (`collection_id`),
  KEY `index_prompts_on_optional_tag_set_id` (`optional_tag_set_id`),
  KEY `index_prompts_on_challenge_signup_id` (`challenge_signup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `pseuds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pseuds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `icon_alt_text` varchar(255) DEFAULT '',
  `delta` tinyint(1) DEFAULT 1,
  `description_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `icon_comment_text` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_pseuds_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_psueds_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `question_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `screencast_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `is_translated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_question_translations_on_question_id` (`question_id`),
  KEY `index_question_translations_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archive_faq_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `anchor` varchar(255) DEFAULT NULL,
  `screencast` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `index_questions_on_archive_faq_id_and_position` (`archive_faq_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `readings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `major_version_read` int(11) DEFAULT NULL,
  `minor_version_read` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_viewed` datetime DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `toread` tinyint(1) NOT NULL DEFAULT 0,
  `toskip` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_readings_on_work_id` (`work_id`),
  KEY `index_readings_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `related_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `reciprocal` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `translation` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_related_works_on_parent_id_and_parent_type` (`parent_id`,`parent_type`),
  KEY `index_related_works_on_work_id` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `authorizable_type` varchar(40) DEFAULT NULL,
  `authorizable_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_authorizable_id_and_authorizable_type` (`authorizable_id`,`authorizable_type`),
  KEY `index_roles_on_authorizable_type` (`authorizable_type`),
  KEY `index_roles_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`),
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `serial_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `series_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_serial_works_on_work_id` (`work_id`),
  KEY `index_serial_works_on_series_id` (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `series_notes` text DEFAULT NULL,
  `hidden_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `restricted` tinyint(1) NOT NULL DEFAULT 1,
  `complete` tinyint(1) NOT NULL DEFAULT 0,
  `summary_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `series_notes_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `set_taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `set_taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `tag_set_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_set_taggings_on_tag_id` (`tag_id`),
  KEY `index_set_taggings_on_tag_set_id` (`tag_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `skin_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skin_parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_skin_id` int(11) DEFAULT NULL,
  `parent_skin_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `css` longtext DEFAULT NULL,
  `public` tinyint(1) DEFAULT 0,
  `official` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `icon_alt_text` varchar(255) DEFAULT '',
  `margin` int(11) DEFAULT NULL,
  `paragraph_gap` int(11) DEFAULT NULL,
  `font` varchar(255) DEFAULT NULL,
  `base_em` int(11) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `foreground_color` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rejected` tinyint(1) NOT NULL DEFAULT 0,
  `admin_note` varchar(255) DEFAULT NULL,
  `description_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `paragraph_margin` float DEFAULT NULL,
  `headercolor` varchar(255) DEFAULT NULL,
  `accent_color` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `ie_condition` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `do_not_upgrade` tinyint(1) NOT NULL DEFAULT 0,
  `cached` tinyint(1) NOT NULL DEFAULT 0,
  `unusable` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `in_chooser` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_skins_on_title` (`title`),
  KEY `index_skins_on_type` (`type`),
  KEY `index_skins_on_public_and_official` (`public`,`official`),
  KEY `index_skins_on_author_id` (`author_id`),
  KEY `index_skins_on_in_chooser` (`in_chooser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `stat_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stat_counters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `download_count` int(11) NOT NULL DEFAULT 0,
  `comments_count` int(11) NOT NULL DEFAULT 0,
  `kudos_count` int(11) NOT NULL DEFAULT 0,
  `bookmarks_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_hit_counters_on_work_id` (`work_id`),
  KEY `index_hit_counters_on_hit_count` (`hit_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `subscribable` (`subscribable_id`,`subscribable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tag_nominations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_nominations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `tag_set_nomination_id` int(11) DEFAULT NULL,
  `fandom_nomination_id` int(11) DEFAULT NULL,
  `tagname` varchar(255) DEFAULT NULL,
  `parent_tagname` varchar(255) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `rejected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `canonical` tinyint(1) NOT NULL DEFAULT 0,
  `exists` tinyint(1) NOT NULL DEFAULT 0,
  `parented` tinyint(1) NOT NULL DEFAULT 0,
  `synonym` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tag_nominations_on_tagname` (`tagname`),
  KEY `index_tag_nominations_on_type_and_tag_set_nomination_id` (`type`,`tag_set_nomination_id`),
  KEY `index_tag_nominations_on_type_and_fandom_nomination_id` (`type`,`fandom_nomination_id`),
  KEY `index_tag_nominations_on_type_and_synonym` (`type`,`synonym`),
  KEY `index_tag_nominations_on_type_and_tagname` (`type`,`tagname`),
  KEY `index_tag_nominations_on_tag_set_nomination_id_and_type` (`tag_set_nomination_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tag_set_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_set_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owned_tag_set_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `parent_tag_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tag_set_associations_on_tag_set_and_parent_and_tag` (`owned_tag_set_id`,`parent_tag_id`,`tag_id`),
  KEY `index_tag_set_associations_on_tag_id` (`tag_id`),
  KEY `index_tag_set_associations_on_parent_tag_id` (`parent_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tag_set_nominations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_set_nominations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseud_id` int(11) DEFAULT NULL,
  `owned_tag_set_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tag_set_nominations_on_owned_tag_set_id` (`owned_tag_set_id`),
  KEY `index_tag_set_nominations_on_pseud_id_and_owned_tag_set_id` (`pseud_id`,`owned_tag_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tag_set_ownerships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_set_ownerships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseud_id` int(11) DEFAULT NULL,
  `owned_tag_set_id` int(11) DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tag_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagger_id` int(11) DEFAULT NULL,
  `taggable_id` bigint(20) NOT NULL,
  `taggable_type` varchar(100) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tagger_type` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_taggings_polymorphic` (`tagger_id`,`tagger_type`,`taggable_id`,`taggable_type`),
  KEY `index_taggings_taggable` (`taggable_id`,`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT '',
  `canonical` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `taggings_count_cache` int(11) DEFAULT 0,
  `adult` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `merger_id` int(11) DEFAULT NULL,
  `delta` tinyint(1) DEFAULT 0,
  `last_wrangler_id` int(11) DEFAULT NULL,
  `last_wrangler_type` varchar(255) DEFAULT NULL,
  `unwrangleable` tinyint(1) NOT NULL DEFAULT 0,
  `sortable_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`),
  KEY `index_tags_on_merger_id` (`merger_id`),
  KEY `index_tags_on_id_and_type` (`id`,`type`),
  KEY `index_tags_on_canonical` (`canonical`),
  KEY `tag_created_at_index` (`created_at`),
  KEY `index_tags_on_type` (`type`),
  KEY `index_tags_on_sortable_name` (`sortable_name`),
  KEY `index_tags_on_taggings_count_cache` (`taggings_count_cache`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `user_invite_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_invite_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `granted` tinyint(1) NOT NULL DEFAULT 0,
  `handled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_invite_requests_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `invitation_id` int(11) DEFAULT NULL,
  `suspended_until` datetime DEFAULT NULL,
  `out_of_invites` tinyint(1) NOT NULL DEFAULT 1,
  `failed_attempts` int(11) DEFAULT 0,
  `accepted_tos_version` int(11) DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT 0,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `renamed_at` datetime DEFAULT NULL,
  `resets_requested` int(11) NOT NULL DEFAULT 0,
  `admin_renamed_at` datetime(6) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_unlock_token` (`unlock_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_email` (`email`),
  KEY `index_users_on_resets_requested` (`resets_requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `work_original_creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_original_creators` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_work_original_creators_on_work_id_and_user_id` (`work_id`,`user_id`),
  KEY `index_work_original_creators_on_work_id` (`work_id`),
  KEY `index_work_original_creators_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expected_number_of_chapters` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `major_version` int(11) DEFAULT 1,
  `minor_version` int(11) DEFAULT 0,
  `posted` tinyint(1) NOT NULL DEFAULT 0,
  `language_id` int(11) DEFAULT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `word_count` int(11) DEFAULT NULL,
  `hidden_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `delta` tinyint(1) DEFAULT 0,
  `revised_at` datetime DEFAULT NULL,
  `title_to_sort_on` varchar(255) DEFAULT NULL,
  `backdate` tinyint(1) NOT NULL DEFAULT 0,
  `endnotes` text DEFAULT NULL,
  `imported_from_url` varchar(255) DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT 0,
  `summary_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `notes_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `endnotes_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  `work_skin_id` int(11) DEFAULT NULL,
  `in_anon_collection` tinyint(1) NOT NULL DEFAULT 0,
  `in_unrevealed_collection` tinyint(1) NOT NULL DEFAULT 0,
  `ip_address` varchar(255) DEFAULT NULL,
  `spam` tinyint(1) NOT NULL DEFAULT 0,
  `spam_checked_at` datetime DEFAULT NULL,
  `moderated_commenting_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `comment_permissions` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_works_on_language_id` (`language_id`),
  KEY `index_works_on_imported_from_url` (`imported_from_url`),
  KEY `index_works_on_revised_at` (`revised_at`),
  KEY `index_works_on_delta` (`delta`),
  KEY `visible_works` (`restricted`,`posted`,`hidden_by_admin`),
  KEY `complete_works` (`complete`,`posted`,`hidden_by_admin`),
  KEY `index_works_on_ip_address` (`ip_address`),
  KEY `index_works_on_spam` (`spam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `wrangling_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wrangling_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fandom_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wrangling_assignments_by_fandom_id` (`fandom_id`),
  KEY `wrangling_assignments_by_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `wrangling_guidelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wrangling_guidelines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `content_sanitizer_version` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `schema_migrations` (version) VALUES
('20250704060231'),
('20250703063739'),
('20250628175658'),
('20250530172134'),
('20250515095633'),
('20250421192808'),
('20250407174814'),
('20250312233933'),
('20250303154718'),
('20250129101817'),
('20250129101816'),
('20250129101815'),
('20241230205138'),
('20241227165942'),
('20241221141135'),
('20240416174046'),
('20240415202120'),
('20240404183910'),
('20240323013245'),
('20240303042804'),
('20231027172035'),
('20230920094945'),
('20230903180114'),
('20230819074500'),
('20230811004337'),
('20230717161221'),
('20230610162442'),
('20230430160300'),
('20230429120200'),
('20230418074141'),
('20230418071728'),
('20230408145819'),
('20230113225128'),
('20230113225105'),
('20230106203903'),
('20221218033319'),
('20221205223816'),
('20220918015954'),
('20220911173601'),
('20220821213412'),
('20220622075958'),
('20220519071139'),
('20220212222625'),
('20211230202951'),
('20211205115025'),
('20211204001151'),
('20210902040827'),
('20210831214137'),
('20210626010047'),
('20210625232846'),
('20210603151906'),
('20201214013251'),
('20201210140123'),
('20200829050124'),
('20200814233538'),
('20200707213354'),
('20200613211440'),
('20200504132624'),
('20200423205608'),
('20200415010506'),
('20200412142208'),
('20200406190444'),
('20200406185632'),
('20200325021219'),
('20200221045607'),
('20200210013551'),
('20200115232918'),
('20190611212339'),
('20190423215601'),
('20190421213603'),
('20190405191806'),
('20190323185300'),
('20190214054439'),
('20190213231821'),
('20190213230717'),
('20190207034230'),
('20181224173813'),
('20181222042042'),
('20181222022628'),
('20181201022717'),
('20181113063726'),
('20181017032400'),
('20180917212655'),
('20180909203857'),
('20180822202259'),
('20180811160316'),
('20180731034724'),
('20180712000145'),
('20180519055830'),
('20180428201347'),
('20180108220405'),
('20171114212142'),
('20171031204025'),
('20171030220348'),
('20171030201300'),
('20171006090901'),
('20170919143944'),
('20170918172719'),
('20170615090455'),
('20170414154143'),
('20170331170222'),
('20170322092920'),
('20170321202522'),
('20160918223157'),
('20160916172116'),
('20160724234958'),
('20160706031054'),
('20160416163754'),
('20160331005706'),
('20151130183602'),
('20151129234505'),
('20151018165632'),
('20150901132832'),
('20150901024743'),
('20150725141326'),
('20150217034225'),
('20150111203000'),
('20150106211421'),
('20141127004302'),
('20141004123421'),
('20141003205439'),
('20141003204623'),
('20140924023950'),
('20140922025054'),
('20140922024405'),
('20140808220904'),
('20140406043239'),
('20140327111111'),
('20140326130206'),
('20140208200234'),
('20130707160814'),
('20130707160714'),
('20130327164311'),
('20130113003307'),
('20121220012746'),
('20121205215503'),
('20121129192353'),
('20121102002223'),
('20121023221449'),
('20120921094037'),
('20120913222728'),
('20120901113344'),
('20120825165632'),
('20120809164434'),
('20120809161528'),
('20120501210459'),
('20120415134615'),
('20120226024139'),
('20120206034312'),
('20120131225520'),
('20111206225341'),
('20111123011929'),
('20111122225341'),
('20111122225340'),
('20111027173425'),
('20111013010307'),
('20111007235357'),
('20111006032145'),
('20110908191743'),
('20110905184626'),
('20110829125505'),
('20110828172403'),
('20110827185228'),
('20110827153658'),
('20110823015903'),
('20110812012725'),
('20110810150044'),
('20110810012317'),
('20110801134913'),
('20110713013317'),
('20110712140002'),
('20110712003637'),
('20110710033732'),
('20110621015359'),
('20110619091342'),
('20110619091214'),
('20110601200556'),
('20110526203419'),
('20110515182045'),
('20110513145847'),
('20110401201033'),
('20110401185831'),
('20110312174241'),
('20110304042756'),
('20110223031701'),
('20110222093602'),
('20110214171104'),
('20110212162042'),
('20110130093604'),
('20110130093602'),
('20110130093601'),
('20110130093600'),
('20101231174606'),
('20101231171104'),
('20101219191929'),
('20101216165336'),
('20101205015909'),
('20101204062558'),
('20101204061318'),
('20101204042756'),
('20101130074147'),
('20101128051309'),
('20101109204730'),
('20101108003021'),
('20101107212421'),
('20101107005107'),
('20101103185307'),
('20101025022733'),
('20101024232837'),
('20101022160603'),
('20101022002353'),
('20101016131743'),
('20101015053927'),
('20100929044155'),
('20100907015632'),
('20100901165448'),
('20100901154501'),
('20100821165448'),
('20100812175429'),
('20100804185744'),
('20100728220657'),
('20100727212342'),
('20100620185742'),
('20100618021343'),
('20100530161827'),
('20100530152111'),
('20100506231821'),
('20100506203017'),
('20100502024059'),
('20100420211328'),
('20100419131629'),
('20100416145044'),
('20100415231821'),
('20100414231821'),
('20100413231821'),
('20100407222411'),
('20100405191217'),
('20100404223432'),
('20100403191349'),
('20100402163915'),
('20100328215724'),
('20100326171229'),
('20100326170924'),
('20100326170652'),
('20100326170256'),
('20100320165910'),
('20100314044409'),
('20100314035644'),
('20100314021317'),
('20100313165910'),
('20100312165910'),
('20100307211947'),
('20100304193643'),
('20100301211829'),
('20100227013502'),
('20100225063636'),
('20100223212822'),
('20100223205231'),
('20100223204450'),
('20100222074558'),
('20100222011208'),
('20100220062829'),
('20100220031906'),
('20100220022635'),
('20100210214240'),
('20100210180708'),
('20100202154255'),
('20100202154135'),
('20100123004135'),
('20100112034428'),
('20100108002148'),
('20100105043033'),
('20100104232756'),
('20100104232731'),
('20100104144922'),
('20100104041510'),
('20091228042140'),
('20091227192528'),
('20091223180731'),
('20091223003205'),
('20091223002020'),
('20091221145401'),
('20091221011225'),
('20091220182557'),
('20091219192317'),
('20091217162252'),
('20091217005945'),
('20091217004235'),
('20091216150855'),
('20091216001101'),
('20091213035516'),
('20091213013846'),
('20091212051923'),
('20091212035917'),
('20091209215213'),
('20091209202619'),
('20091208200602'),
('20091207234702'),
('20091206180907'),
('20091206180109'),
('20091206172751'),
('20091206150153'),
('20091206140850'),
('20091205204625'),
('20091122210634'),
('20091121200119'),
('20091107214504'),
('20091029224425'),
('20091021225848'),
('20091019013949'),
('20091018174444'),
('20091018161438'),
('20091018155535'),
('20090930033753'),
('20090921210056'),
('20090919161520'),
('20090919125723'),
('20090918212755'),
('20090918112658'),
('20090917004451'),
('20090916140506'),
('20090913234257'),
('20090913221007'),
('20090907021029'),
('20090902191851'),
('20090816092952'),
('20090816092821'),
('20090723205349'),
('20090706214616'),
('20090613092005'),
('20090610010041'),
('20090604221238'),
('20090524201025'),
('20090524195217'),
('20090504020354'),
('20090420032457'),
('20090420003418'),
('20090419184639'),
('20090419175827'),
('20090331205830'),
('20090331012516'),
('20090329002541'),
('20090328235607'),
('20090322182529'),
('20090318004340'),
('20090315182538'),
('20090313212917'),
('20090307152243'),
('20090218223404'),
('20090214045954'),
('20090127045219'),
('20090127012544'),
('20081122025525'),
('20081115041645'),
('20081114164535'),
('20081114043420'),
('20081109004140'),
('20081102050355'),
('20081026180141'),
('20081014183856'),
('20081012185902'),
('20081002011130'),
('20081002011129'),
('20081001160257'),
('20081001035116'),
('20080930163408'),
('20080929233315'),
('20080927191115'),
('20080927172113'),
('20080927172047'),
('20080922060611'),
('20080922015228'),
('20080920052318'),
('20080920020544'),
('20080916213733'),
('20080914202646'),
('20080912233749'),
('20080906193922'),
('20080904135616'),
('20080901172442'),
('20080805021608'),
('20080803125332'),
('20080803124959'),
('20080803045759'),
('20080727030151'),
('20080726215505'),
('1');
