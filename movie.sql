/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : movie

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 02/04/2020 13:23:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add commuser', 7, 'add_commuser');
INSERT INTO `auth_permission` VALUES (26, 'Can change commuser', 7, 'change_commuser');
INSERT INTO `auth_permission` VALUES (27, 'Can delete commuser', 7, 'delete_commuser');
INSERT INTO `auth_permission` VALUES (28, 'Can view commuser', 7, 'view_commuser');
INSERT INTO `auth_permission` VALUES (29, 'Can add movie_info', 8, 'add_movie_info');
INSERT INTO `auth_permission` VALUES (30, 'Can change movie_info', 8, 'change_movie_info');
INSERT INTO `auth_permission` VALUES (31, 'Can delete movie_info', 8, 'delete_movie_info');
INSERT INTO `auth_permission` VALUES (32, 'Can view movie_info', 8, 'view_movie_info');
INSERT INTO `auth_permission` VALUES (33, 'Can add user_evaluation', 9, 'add_user_evaluation');
INSERT INTO `auth_permission` VALUES (34, 'Can change user_evaluation', 9, 'change_user_evaluation');
INSERT INTO `auth_permission` VALUES (35, 'Can delete user_evaluation', 9, 'delete_user_evaluation');
INSERT INTO `auth_permission` VALUES (36, 'Can view user_evaluation', 9, 'view_user_evaluation');
INSERT INTO `auth_permission` VALUES (37, 'Can add movie', 10, 'add_movie');
INSERT INTO `auth_permission` VALUES (38, 'Can change movie', 10, 'change_movie');
INSERT INTO `auth_permission` VALUES (39, 'Can delete movie', 10, 'delete_movie');
INSERT INTO `auth_permission` VALUES (40, 'Can view movie', 10, 'view_movie');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$120000$2B67WllRl4ZX$cKYxbfLoXsSiWCqKRCxmxSWp69y2XIoJ7iBVQTFdsBo=', '2020-01-09 08:29:00.337480', 1, 'PanLong', '', '', '2766918250@qq.com', 1, 1, '2020-01-04 08:39:00.000000');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$120000$QcmPHdxzEAeL$vFKCsXb1LpuItMdXsLBoJMZA+Jjt2dhG6+xbGSj7bEA=', '2020-01-04 09:20:39.465237', 0, 'PL', '', '', '2766918250@qq.com', 0, 1, '2020-01-04 09:20:39.266464');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$120000$zy2sYuOIFQn7$ewz+VgJKPIroprkAynHBIF2CL9P1PiTw+Lu8dvUFikc=', '2020-01-09 08:45:04.479774', 0, 'hyr', '', '', '1786742005@qq.com', 0, 1, '2020-01-07 02:55:15.897812');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$120000$w2kHN2mX30O5$cmSh/hQLx0zzCGT2mp3jy4RmtUaFpb1NrYcImlczFng=', '2020-01-07 08:02:25.377293', 0, '798', '', '', '1786742005@qq.com', 0, 1, '2020-01-07 08:02:25.189523');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$120000$90ZNITy3d5Bi$UgklO+59QaLBkuCs3TSaZTIGL55DWd/vQwXzOySp94c=', '2020-01-08 08:10:10.493508', 0, '胡', '', '', 'aaa@qq.com', 0, 1, '2020-01-08 08:10:10.303007');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$120000$PxNTJX8nyvFu$e8VbqgXsS7RUFCwIcPtC9Uz3nuSPBi3mveI8jXbZ0Gg=', '2020-01-08 08:48:49.236800', 0, 'gfdg', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:48:49.025967');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$120000$ZKw7IChpsVGa$rPBBx+o4sUYmDcLYd1kOE/5PmLHP6deC3DwA4yYC400=', '2020-01-08 08:49:07.949665', 0, 'sgsfdg', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:49:07.760226');
INSERT INTO `auth_user` VALUES (8, 'pbkdf2_sha256$120000$TpItsVZTvDti$rLKIypsO2QsB/BuJhGPk88MA0gktOJY3jyhhBqrpEio=', '2020-01-08 08:49:34.610437', 0, 'gdsfg', '', '', '1888@qq.com', 0, 1, '2020-01-08 08:49:34.418132');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$120000$eo1x8Nm2ZHVX$+6iB099q7IAETL4rNjclasvsPQ6C5r8xn390Hgy90y4=', '2020-01-08 08:50:19.541891', 0, 'gsrt', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:50:19.353332');
INSERT INTO `auth_user` VALUES (10, 'pbkdf2_sha256$120000$Tjz5dGjLMjP8$3Zwmho9DkH7yxYXk/kXLY+6yBEAM7PgTO6UeydEhkiE=', '2020-01-08 08:50:35.252479', 0, 'yuyu', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:50:35.063935');
INSERT INTO `auth_user` VALUES (11, 'pbkdf2_sha256$120000$YQ6hQ6hTlN8q$IYiSLYNUX0oxIW1C37qKaIjHKvutGjmI6gT7Erd9Xnk=', '2020-01-08 08:51:15.614263', 0, 'tyerty', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:51:15.425728');
INSERT INTO `auth_user` VALUES (12, 'pbkdf2_sha256$120000$trafk5UqNiNS$Chd15Oa55dsHyW3APCC5FCRO8NBpPseZB6SnPWQ9Xno=', '2020-01-08 09:07:02.729043', 0, '里', '', '', 'qqq@qq.com', 0, 1, '2020-01-08 09:07:02.523380');
INSERT INTO `auth_user` VALUES (13, 'pbkdf2_sha256$120000$FhybkSHHzF4z$hP7D5YaqFVEX22A0eb0pQiDw2dbDHjmgvz3Gi5nvk+Y=', '2020-01-09 00:44:14.981280', 0, 'TYU', '', '', 'AAA@qq.com', 0, 1, '2020-01-09 00:44:14.604266');
INSERT INTO `auth_user` VALUES (14, 'pbkdf2_sha256$120000$vv51stEAjD4t$Wpt6d1QVSZxeVIwg27iLr7Zg052jWSVJgxFMEn4lCSE=', '2020-01-09 00:50:58.972506', 0, 'gggg', '', '', 'aa@qq.com', 0, 1, '2020-01-09 00:50:58.788263');
INSERT INTO `auth_user` VALUES (15, 'pbkdf2_sha256$120000$fISCBMC2vtW7$6foTF+/3hU45NCqmuj0LEoPMIDIDSEB1+EP1PPPFKSI=', '2020-01-09 00:58:46.051800', 0, '653456456', '', '', '132132132@qq.com', 0, 1, '2020-01-09 00:58:45.857278');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-01-04 12:43:09.143156', '1', 'PanLong', 2, '[{\"changed\": {\"fields\": [\"last_login\"]}}, {\"added\": {\"name\": \"commuser\", \"object\": \"commuser object (2)\"}}]', 4, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myauth', 'commuser');
INSERT INTO `django_content_type` VALUES (10, 'myauth', 'movie');
INSERT INTO `django_content_type` VALUES (8, 'myauth', 'movie_info');
INSERT INTO `django_content_type` VALUES (9, 'myauth', 'user_evaluation');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-01-04 08:39:12.094242');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-01-04 08:39:12.582839');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-01-04 08:39:12.702618');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-01-04 08:39:12.714614');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-04 08:39:12.727648');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-01-04 08:39:12.794734');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-01-04 08:39:12.831089');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-01-04 08:39:12.872686');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-01-04 08:39:12.882710');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-01-04 08:39:12.919000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-01-04 08:39:12.923011');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-04 08:39:12.933037');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-01-04 08:39:12.975788');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-04 08:39:13.016897');
INSERT INTO `django_migrations` VALUES (15, 'myauth', '0001_initial', '2020-01-04 08:39:13.087098');
INSERT INTO `django_migrations` VALUES (16, 'sessions', '0001_initial', '2020-01-04 08:39:13.127476');
INSERT INTO `django_migrations` VALUES (17, 'myauth', '0002_movie_info', '2020-01-04 09:45:36.285987');
INSERT INTO `django_migrations` VALUES (18, 'myauth', '0003_auto_20200104_2041', '2020-01-04 12:41:16.561439');
INSERT INTO `django_migrations` VALUES (19, 'myauth', '0004_user_evaluation', '2020-01-05 09:46:46.708153');
INSERT INTO `django_migrations` VALUES (20, 'myauth', '0005_auto_20200105_2104', '2020-01-05 13:08:29.335073');
INSERT INTO `django_migrations` VALUES (21, 'myauth', '0006_movie', '2020-01-08 12:28:09.064949');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('70vtbnffraf8h69uflj1ypbzzia6f9rv', 'OTYwMjgyYmM2NDA0ZDVhYTEwMGMwYTdlN2Y4YzNmMTk4NDEwYTBlZTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMjJlOTkwNzRlMjJlYjAxMmQ5MDdlYjEyYzk4ZGYyNGEzZDRkYjY3In0=', '2020-01-23 08:45:04.483282');
INSERT INTO `django_session` VALUES ('b428j89r7zpexqv338e7xfhqrvs20ft8', 'YzViMDJlMDg5ZjE2ZTdhYjljMmMxNzg0ODc1MTQ5OTA2YWViYTM5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YjgxYjkwNDRjMTM3Y2NmOTgwZDU1YjljMjkxYWQzODhjOTI0ZmI1In0=', '2020-01-18 11:42:52.503601');

-- ----------------------------
-- Table structure for myauth_commuser
-- ----------------------------
DROP TABLE IF EXISTS `myauth_commuser`;
CREATE TABLE `myauth_commuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nikname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `myauth_commuser_user_id_9d6911ba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myauth_commuser
-- ----------------------------
INSERT INTO `myauth_commuser` VALUES (1, 'fdsf', '2020-01-01', 2);
INSERT INTO `myauth_commuser` VALUES (2, '12232', '2020-01-07', 1);
INSERT INTO `myauth_commuser` VALUES (3, '2312', '2020-01-01', 3);
INSERT INTO `myauth_commuser` VALUES (4, 'fasd', '2020-01-03', 4);
INSERT INTO `myauth_commuser` VALUES (5, 'aaa', '2015-02-04', 5);
INSERT INTO `myauth_commuser` VALUES (6, 'aaa', '2020-01-15', 6);
INSERT INTO `myauth_commuser` VALUES (7, 'terty', '2020-01-10', 7);
INSERT INTO `myauth_commuser` VALUES (8, 'rtery', '2020-01-11', 8);
INSERT INTO `myauth_commuser` VALUES (9, 'retrew', '2020-01-10', 9);
INSERT INTO `myauth_commuser` VALUES (10, 'sdgre', '2020-01-19', 10);
INSERT INTO `myauth_commuser` VALUES (11, 'wtertew', '2020-01-26', 11);
INSERT INTO `myauth_commuser` VALUES (12, 'rtery', '2020-01-08', 12);
INSERT INTO `myauth_commuser` VALUES (13, '个地方广泛的', '2020-01-08', 13);
INSERT INTO `myauth_commuser` VALUES (14, 'aaa', '2020-01-15', 14);
INSERT INTO `myauth_commuser` VALUES (15, 'ewrew', '2020-01-04', 15);

-- ----------------------------
-- Table structure for myauth_movie
-- ----------------------------
DROP TABLE IF EXISTS `myauth_movie`;
CREATE TABLE `myauth_movie`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `M_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titles` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `release_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `director` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `times` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tags` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gerne` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score_numbers` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comments_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `five_stars` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `four_stars` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `three_stars` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `two_stars` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `one_star` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jpg_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myauth_movie
-- ----------------------------
INSERT INTO `myauth_movie` VALUES (22, '3011091', '忠犬八公的故事', '2009', '拉斯·霍尔斯道姆', '93', '感人,温情,动物,真实事件改编,温暖,人性,美国,剧情', '剧情', '9.3', '891623', '183639', '72.4%', '22.9%', '4.3%', '0.3%', '0.1%', '美国', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg');
INSERT INTO `myauth_movie` VALUES (23, '1292720', '阿甘正传', '1994', '罗伯特·泽米吉斯', '142', '励志,经典,人生,美国,成长,信念,剧情,人性', '剧情,爱情', '9.5', '1349450', '207287', '76.3%', '20.7%', '2.8%', '0.2%', '0.1%', '美国', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg');
INSERT INTO `myauth_movie` VALUES (24, '1291560', '龙猫', '2018', '宫崎骏', '86', '日本,动漫,温情,童年,经典,治愈系,成长,童话', '动画,奇幻,冒险', '9.2', '809757', '140057', '64.6%', '29.3%', '5.8%', '0.3%', '0.1%', '日本', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg');
INSERT INTO `myauth_movie` VALUES (25, '3287562', '神偷奶爸', '2010', '皮埃尔·柯芬', '95', '动画,喜剧,美国,卑鄙的我,动画片,搞笑,美国电影,2010', '喜剧,动画,冒险', '8.6', '628012', '88588', '41.7%', '45.5%', '12.0%', '0.6%', '0.1%', '美国', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792776858.jpg');
INSERT INTO `myauth_movie` VALUES (26, '26311973', '唐人街探案', '2015', '陈思诚', '135', '喜剧,推理,悬疑,搞笑,犯罪,中国,大陆,2015', '喜剧,动作,悬疑', '7.6', '526929', '124201', '18.0%', '48.6%', '28.5%', '3.7%', '1.1%', '中国大陆', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2302930556.jpg');
INSERT INTO `myauth_movie` VALUES (27, '1307914', '无间道', '2002', '刘伟强', '101', '香港,警匪,经典,黑帮,犯罪,动作,剧情,人性', '剧情,悬疑,犯罪', '9.2', '786269', '106151', '65.2%', '29.7%', '4.9%', '0.2%', '0.1%', '中国香港', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564556863.jpg');
INSERT INTO `myauth_movie` VALUES (28, '1291549', '放牛班的春天', '2004', '克里斯托夫·巴拉蒂', '97', '音乐,成长,法国,教育,经典,温情,励志,剧情', '剧情,音乐', '9.3', '854582', '135426', '69.1%', '26.9%', '3.8%', '0.2%', '0.1%', '法国', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824951.jpg');
INSERT INTO `myauth_movie` VALUES (29, '25921812', '驴得水', '2016', '周申', '111', '黑色幽默,讽刺,人性,开心麻花,喜剧,中国大陆,内涵,2016', '剧情,喜剧', '8.3', '587622', '152268', '38.8%', '43.3%', '14.5%', '2.5%', '0.9%', '中国大陆', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2393044761.jpg');

-- ----------------------------
-- Table structure for myauth_movie_info
-- ----------------------------
DROP TABLE IF EXISTS `myauth_movie_info`;
CREATE TABLE `myauth_movie_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_poster` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `movie_director` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_Starring` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_point` double NULL DEFAULT NULL,
  `movie_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 955 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myauth_movie_info
-- ----------------------------
INSERT INTO `myauth_movie_info` VALUES (1, '海绵宝宝', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2282934200.jpg', NULL, '保罗·提比特', NULL, '喜剧,动画,冒险', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (2, '叶问4', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2577437186.webp', NULL, '周星驰', NULL, '动作/热门', 5.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (3, '复仇者联盟4', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2552058346.webp', NULL, '周星驰', NULL, '动作/热门', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (4, '双子杀手', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.webp', NULL, '周星驰', NULL, '动作/热门', 9.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (5, '红海行动', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2514119443.webp', NULL, '周星驰', NULL, '动作', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (6, '海王', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541280047.webp', NULL, '周星驰', NULL, '动作/热门', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (7, '邪不压正 ', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2526297221.webp', NULL, '周星驰', NULL, '动作', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (8, '速度与激情', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561542272.webp', NULL, '周星驰', NULL, '动作/热门', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (9, '功夫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.jpg', NULL, '周星驰', NULL, '喜剧,动作,犯罪,奇幻', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (10, '哈利', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910812549.jpg', NULL, '阿方索·卡隆', NULL, '剧情,奇幻,冒险', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (11, '大鱼', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p692813374.jpg', NULL, '蒂姆·波顿', NULL, '剧情,家庭,奇幻,冒险', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (12, '霸王别姬', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg', NULL, '陈凯歌', NULL, '剧情,爱情,同性', 9.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (13, '死亡诗社', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1650499822.jpg', NULL, '彼得·威尔', NULL, '剧情 热门', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (14, '放牛班的春天', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824951.jpg', NULL, '克里斯托夫·巴拉蒂', NULL, '剧情,音乐,热门', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (15, '天下无贼', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2191934463.jpg', NULL, '冯小刚', NULL, '剧情,动作,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (16, '指环王', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825503.jpg', NULL, '彼得·杰克逊', NULL, '剧情,动作,奇幻,冒险', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (17, '歌剧魅影', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825990.jpg', NULL, '乔·舒马赫', NULL, '剧情,爱情,惊悚,音乐', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (18, '乡愁', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2455329155.jpg', NULL, '安德烈·塔可夫斯基', NULL, '剧情,热门', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (19, '花样年华', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910828286.jpg', NULL, '王家卫', NULL, '剧情,爱情', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (20, '云上的日子', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2507020671.jpg', NULL, '米开朗基罗·安东尼奥尼', NULL, '剧情,爱情,情色', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (21, '龙猫', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg', NULL, '宫崎骏', NULL, '动画,奇幻,冒险', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (22, '千与千寻', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg', NULL, '宫崎骏', NULL, '剧情,动画,奇幻', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (23, '东京物语', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1925331564.jpg', NULL, '小津安二郎', NULL, '剧情,家庭,热门', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (24, '大都会', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910832560.jpg', NULL, '林太郎', NULL, '科幻,动画,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (25, '虫虫危机', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910833170.jpg', NULL, '约翰·拉塞特', NULL, '喜剧,动画,冒险,热门', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (26, '玩具总动员', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1283688673.jpg', NULL, '约翰·拉塞特', NULL, '喜剧,动画,奇幻,冒险', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (27, '超人总动员', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2167017148.jpg', NULL, '布拉德·伯德', NULL, '喜剧,动作,动画,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (28, '冰川时代', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910895719.jpg', NULL, '卡洛斯·沙尔丹哈', NULL, '喜剧,动画,冒险,热门', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (29, '怪兽电力公司', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2513247938.jpg', NULL, '彼特·道格特', NULL, '喜剧,动画,儿童,奇幻,冒险', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (30, '杀死比尔', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2454638445.jpg', NULL, '昆汀·塔伦蒂诺', NULL, '动作,惊悚,犯罪,热门', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (31, '怪物史瑞克', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910896706.jpg', NULL, '安德鲁·亚当森', NULL, '喜剧,动画,家庭,奇幻,冒险,热门', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (32, '天空之城', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1446261379.jpg', NULL, '宫崎骏', NULL, '动画,奇幻,冒险,热门', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (33, '风之谷', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1917567652.jpg', NULL, '宫崎骏', NULL, '动画,奇幻,冒险,热门', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (34, '海底总动员', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1755893801.jpg', NULL, '安德鲁·斯坦顿', NULL, '喜剧,动画,冒险', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (35, '埃及王子', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910899200.jpg', NULL, '布兰达∙查普曼', NULL, '剧情,动画,冒险', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (36, '饮食男女', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910899751.jpg', NULL, '李安', NULL, '剧情,家庭', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (37, '卢旺达饭店', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p470419493.jpg', NULL, '特瑞·乔治', NULL, '剧情,历史,战争', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (38, '翻译风波', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910900170.jpg', NULL, '西德尼·波拉克', NULL, '剧情,悬疑,惊悚', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (39, '黑鹰坠落', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910900710.jpg', NULL, '雷德利·斯科特', NULL, '动作,历史,战争', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (40, '天堂电影院', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2559577569.jpg', NULL, '朱塞佩·托纳多雷', NULL, '剧情,爱情', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (41, '灿烂人生', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1161132422.jpg', NULL, '马可·图利奥·吉奥达纳', NULL, '剧情,爱情,家庭', 9.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (42, '低俗小说', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910902213.jpg', NULL, '昆汀·塔伦蒂诺', NULL, '剧情,喜剧,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (43, '杯酒人生', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910902469.jpg', NULL, '亚历山大·佩恩', NULL, '剧情,喜剧,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (44, '迷失东京', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2559897495.jpg', NULL, '索菲亚·科波拉', NULL, '剧情,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (45, '红猪', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1637195728.jpg', NULL, '宫崎骏', NULL, '喜剧,动画,冒险', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (46, '教父', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p616779645.jpg', NULL, '弗朗西斯·福特·科波拉', NULL, '剧情,犯罪', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (47, '当哈利遇到莎莉', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2172960925.jpg', NULL, '罗伯·莱纳', NULL, '剧情,喜剧,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (48, '黑客帝国', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p451926968.jpg', NULL, '莉莉·沃卓斯基', NULL, '动作,科幻', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (49, '终结者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910909085.jpg', NULL, '詹姆斯·卡梅隆', NULL, '动作,科幻', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (50, '小武', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2274317161.jpg', NULL, '贾樟柯', NULL, '剧情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (51, '弗里达', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1323808729.jpg', NULL, '朱丽·泰莫', NULL, '剧情,爱情,传记', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (52, '英国病人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2408623752.jpg', NULL, '安东尼·明格拉', NULL, '剧情,爱情,战争', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (53, '戏梦巴黎', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1374017596.jpg', NULL, '贝纳尔多·贝托鲁奇', NULL, '剧情,爱情,情色', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (54, '鬼子来了', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2553104888.jpg', NULL, '姜文', NULL, '剧情,历史,战争', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (55, '布拉格之恋', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910915447.jpg', NULL, '菲利普·考夫曼', NULL, '剧情,爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (56, '情人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2553122878.jpg', NULL, '让-雅克·阿诺', NULL, '剧情,爱情,情色,传记', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (57, '本能', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910917679.jpg', NULL, '保罗·范霍文', NULL, '爱情,悬疑,惊悚,情色', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (58, '雨人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p942376281.jpg', NULL, '巴瑞·莱文森', NULL, '剧情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (59, '阳光灿烂的日子', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2564685215.jpg', NULL, '姜文', NULL, '剧情,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (60, '黄土地', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2457752524.jpg', NULL, '陈凯歌', NULL, '剧情,音乐', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (61, '不良教育', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910921856.jpg', NULL, '佩德罗·阿莫多瓦', NULL, '剧情,悬疑,惊悚,同性,犯罪', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (62, '罗生门', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2564689879.jpg', NULL, '黑泽明', NULL, '剧情,悬疑,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (63, '关于我母亲的一切', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2167231837.jpg', NULL, '佩德罗·阿莫多瓦', NULL, '剧情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (64, '狗脸的岁月', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2193057444.jpg', NULL, '拉斯·霍尔斯道姆', NULL, '剧情,喜剧', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (65, '爱在日落黄昏时', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2191788134.jpg', NULL, '理查德·林克莱特', NULL, '剧情,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (66, '末路狂花', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910924635.jpg', NULL, '雷德利·斯科特', NULL, '剧情,惊悚,犯罪', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (67, '重庆森林', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792381411.jpg', NULL, '王家卫', NULL, '剧情,爱情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (68, '搏击俱乐部', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910926158.jpg', NULL, '大卫·芬奇', NULL, '剧情,动作,悬疑,惊悚', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (69, '海上钢琴师', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574551676.jpg', NULL, '朱塞佩·托纳多雷', NULL, '剧情,音乐', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (70, '蓝白红三部曲之红', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173726043.jpg', NULL, '克日什托夫·基耶斯洛夫斯基', NULL, '剧情,爱情,悬疑', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (71, '蓝白红三部曲之蓝', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1978408096.jpg', NULL, '克日什托夫·基耶斯洛夫斯基', NULL, '剧情,爱情,音乐', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (72, '蓝白红三部曲之白', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1604838524.jpg', NULL, '克日什托夫·基耶斯洛夫斯基', NULL, '剧情,喜剧,爱情,悬疑', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (73, '洛基恐怖秀', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p470502950.jpg', NULL, '吉姆·沙曼', NULL, '喜剧,歌舞', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (74, '肖申克的救赎', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg', NULL, '弗兰克·德拉邦特', NULL, '剧情,犯罪', 9.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (75, '再见列宁', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p478546260.jpg', NULL, '沃尔夫冈·贝克', NULL, '剧情,喜剧', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (76, '蝴蝶', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2464686077.jpg', NULL, '费利普·弥勒', NULL, '剧情,喜剧,儿童', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (77, '米勒的十字路口', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2363356206.jpg', NULL, '伊桑·科恩', NULL, '剧情,惊悚,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (78, '美国丽人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1309847196.jpg', NULL, '萨姆·门德斯', NULL, '剧情,爱情,家庭', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (79, '美丽人生', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2578474613.jpg', NULL, '罗伯托·贝尼尼', NULL, '剧情,喜剧,爱情,战争', 9.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (80, '楚门的世界', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p479682972.jpg', NULL, '彼得·威尔', NULL, '剧情,科幻', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (81, '疤面煞星', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p649133947.jpg', NULL, '布莱恩·德·帕尔玛', NULL, '剧情,惊悚,犯罪', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (82, '冰血暴', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2178583078.jpg', NULL, '乔尔·科恩', NULL, '剧情,惊悚,犯罪', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (83, '铁皮鼓', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1792296798.jpg', NULL, '沃尔克·施隆多夫', NULL, '剧情,历史,战争', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (84, '上帝之城', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p455677490.jpg', NULL, '费尔南多·梅里尔斯', NULL, '剧情,犯罪', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (85, '天使之城', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p480503066.jpg', NULL, '布拉德·塞伯宁', NULL, '剧情,爱情,奇幻', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (86, '大话西游之大圣娶亲', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2455050536.jpg', NULL, '刘镇伟', NULL, '喜剧,爱情,奇幻,古装', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (87, '非常嫌疑犯', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2537319495.jpg', NULL, '布莱恩·辛格', NULL, '剧情,悬疑,惊悚,犯罪', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (88, '天使爱美丽', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2447590313.jpg', NULL, '让-皮埃尔·热内', NULL, '喜剧,爱情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (89, '爱情是狗娘', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p627345397.jpg', NULL, '亚利桑德罗·冈萨雷斯·伊纳里图', NULL, '剧情,惊悚', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (90, '穆赫兰道', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792248233.jpg', NULL, '大卫·林奇', NULL, '剧情,悬疑,惊悚', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (91, '关于莉莉周的一切', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p649141235.jpg', NULL, '岩井俊二', NULL, '剧情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (92, '情书', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p449897379.jpg', NULL, '岩井俊二', NULL, '剧情,爱情', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (93, '七宗罪', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p457631605.jpg', NULL, '大卫·芬奇', NULL, '剧情,悬疑,惊悚,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (94, '飞越疯人院', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792238287.jpg', NULL, '米洛斯·福尔曼', NULL, '剧情', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (95, '闪灵', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2461253191.jpg', NULL, '斯坦利·库布里克', NULL, '剧情,悬疑,恐怖', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (96, '太空漫游', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2560717825.jpg', NULL, '斯坦利·库布里克', NULL, '科幻,惊悚,冒险', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (97, '天生杀人狂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1640827366.jpg', NULL, '奥利佛·斯通', NULL, '剧情,动作,爱情,惊悚,犯罪', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (98, '刺杀肯尼迪', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p967284986.jpg', NULL, '奥利佛·斯通', NULL, '剧情,悬疑,惊悚,传记,历史', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (99, '发条橙', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p529908155.jpg', NULL, '斯坦利·库布里克', NULL, '剧情,科幻,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (100, '甘地传', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2193944770.jpg', NULL, '理查德·阿滕伯勒', NULL, '剧情,传记,历史', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (101, '现代启示录', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p734374571.jpg', NULL, '弗朗西斯·福特·科波拉', NULL, '剧情,战争', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (102, '美国往事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p477229647.jpg', NULL, '赛尔乔·莱昂内', NULL, '剧情,犯罪', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (103, '银河系漫游指南', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1985335323.jpg', NULL, '加斯·詹宁斯', NULL, '喜剧,科幻,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (104, '好家伙', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1403069323.jpg', NULL, '马丁·斯科塞斯', NULL, '剧情,传记,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (105, '骗中骗', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1227416748.jpg', NULL, '乔治·罗伊·希尔', NULL, '剧情,喜剧,犯罪', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (106, '梦之安魂曲', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2328516855.jpg', NULL, '达伦·阿伦诺夫斯基', NULL, '剧情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (107, '毕业生', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2517731298.jpg', NULL, '迈克·尼科尔斯', NULL, '剧情,喜剧,爱情', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (108, '幸福终点站', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p854755094.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,喜剧,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (109, '罗拉快跑', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2574867081.jpg', NULL, '汤姆·提克威', NULL, '动作,惊悚,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (110, '双面情人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1079337390.jpg', NULL, '彼得·休伊特', NULL, '剧情,喜剧,爱情', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (111, '成为约翰', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1087658057.jpg', NULL, '斯派克·琼斯', NULL, '剧情,喜剧,爱情,奇幻', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (112, '第', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2188222223.jpg', NULL, '斯派克·李', NULL, '剧情,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (113, '我的野蛮女友', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p489336497.jpg', NULL, '郭在容', NULL, '剧情,喜剧,爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (114, '新龙门客栈', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1421018669.jpg', NULL, '李惠民', NULL, '动作,爱情,武侠,古装', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (115, '公民凯恩', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1474928139.jpg', NULL, '奥逊·威尔斯', NULL, '剧情,悬疑', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (116, '心动', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p482119068.jpg', NULL, '张艾嘉', NULL, '爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (117, '东邪西毒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1982176012.jpg', NULL, '王家卫', NULL, '剧情,动作,爱情,武侠,古装', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (118, '牯岭街少年杀人事件', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p848381236.jpg', NULL, '杨德昌', NULL, '剧情,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (119, '恋恋风尘', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p743473590.jpg', NULL, '侯孝贤', NULL, '剧情,爱情', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (120, '无人知晓', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p661160053.jpg', NULL, '是枝裕和', NULL, '剧情', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (121, '祖与占', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p555160366.jpg', NULL, '弗朗索瓦·特吕弗', NULL, '剧情,爱情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (122, '蝴蝶效应', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209066019.jpg', NULL, '埃里克·布雷斯', NULL, '剧情,科幻,悬疑,惊悚', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (123, '洛城机密', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2268612099.jpg', NULL, '柯蒂斯·汉森', NULL, '剧情,悬疑,惊悚,犯罪', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (124, '几近成名', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p548058804.jpg', NULL, '卡梅伦·克罗', NULL, '剧情,音乐', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (125, '活着', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2513253791.jpg', NULL, '张艺谋', NULL, '剧情,家庭,历史', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (126, '剪刀手爱德华', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480956937.jpg', NULL, '蒂姆·波顿', NULL, '剧情,爱情,奇幻', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (127, '四月物语', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2107289058.jpg', NULL, '岩井俊二', NULL, '爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (128, '香港制造', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2149644720.jpg', NULL, '陈果', NULL, '剧情,喜剧,爱情,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (129, '真爱至上', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p475600770.jpg', NULL, '理查德·柯蒂斯', NULL, '剧情,喜剧,爱情', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (130, '西西里的美丽传说', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2441988159.jpg', NULL, '朱塞佩·托纳多雷', NULL, '剧情,情色,战争', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (131, '一一', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567845803.jpg', NULL, '杨德昌', NULL, '剧情,爱情,家庭', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (132, '一条叫旺达的鱼', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1259577248.jpg', NULL, '查尔斯·克莱顿', NULL, '喜剧,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (133, '大逃杀', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1071682909.jpg', NULL, '深作欣二', NULL, '剧情,科幻,惊悚', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (134, '暗花', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2159683290.jpg', NULL, '游达志', NULL, '悬疑,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (135, '龙卷风', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1111200030.jpg', NULL, '扬·德·邦特', NULL, '动作,冒险,灾难', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (136, '破浪', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p762255833.jpg', NULL, '拉斯·冯·提尔', NULL, '剧情,爱情', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (137, '巴里', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2363839125.jpg', NULL, '斯坦利·库布里克', NULL, '剧情,爱情,战争', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (138, '乌鸦', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1328970308.jpg', NULL, '亚历克斯·普罗亚斯', NULL, '动作,惊悚,犯罪,奇幻', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (139, '碟中谍', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1660124103.jpg', NULL, '布莱恩·德·帕尔玛', NULL, '动作,惊悚,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (140, '柏林苍穹下', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792520149.jpg', NULL, '维姆·文德斯', NULL, '剧情,爱情,奇幻', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (141, '码头风云', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1212684554.jpg', NULL, '伊利亚·卡赞', NULL, '剧情,爱情,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (142, '侏罗纪公园', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2076443176.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '科幻,惊悚,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (143, '猜火车', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p513567548.jpg', NULL, '丹尼·博伊尔', NULL, '剧情,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (144, '机器管家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2195410751.jpg', NULL, '克里斯·哥伦布', NULL, '剧情,喜剧,科幻', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (145, '华尔街', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2215746342.jpg', NULL, '奥利佛·斯通', NULL, '剧情,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (146, '光猪六壮士', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1495415694.jpg', NULL, '彼得·卡坦纽', NULL, '喜剧,音乐', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (147, '卡里加里博士的小屋', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2191024349.jpg', NULL, '罗伯特·维内', NULL, '悬疑,恐怖,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (148, '埃及艳后', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496023539.jpg', NULL, '约瑟夫·L·曼凯维奇', NULL, '剧情,传记,历史', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (149, '玩尽杀绝', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1266487848.jpg', NULL, '约翰·麦克诺顿', NULL, '悬疑,惊悚,犯罪', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (150, '真实的谎言', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2408831888.jpg', NULL, '詹姆斯·卡梅隆', NULL, '喜剧,动作,惊悚', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (151, '之黎明生机', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1727485080.jpg', NULL, '约翰·格兰', NULL, '动作,惊悚,冒险', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (152, '热情如火', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p860250155.jpg', NULL, '比利·怀德', NULL, '喜剧', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (153, '安娜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p452625577.jpg', NULL, '伯纳德·罗斯', NULL, '剧情,爱情', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (154, '边缘日记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p737108256.jpg', NULL, '斯科特·卡尔维特', NULL, '剧情,传记,犯罪,运动', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (155, '再见', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1095874762.jpg', NULL, '路易·马勒', NULL, '剧情,战争', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (156, '异形魔怪', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504182152.jpg', NULL, '罗恩·安德伍德', NULL, '喜剧,恐怖', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (157, '尖峰时刻', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220721953.jpg', NULL, '布莱特·拉特纳', NULL, '喜剧,动作,惊悚,犯罪', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (158, '绿野仙踪', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2192059845.jpg', NULL, '维克多·弗莱明', NULL, '歌舞,奇幻,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (159, '情定巴黎', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p475924995.jpg', NULL, '劳伦斯·卡斯丹', NULL, '喜剧,爱情', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (160, '冲锋队之怒火街头', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2230371203.jpg', NULL, '陈木胜', NULL, '动作,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (161, '之霹雳弹', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2306651129.jpg', NULL, '特伦斯·杨', NULL, '动作,惊悚,冒险', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (162, '伴你高飞', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1378705974.jpg', NULL, '卡罗尔·巴拉德', NULL, '剧情,家庭,冒险', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (163, '心灵捕手', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p480965695.jpg', NULL, '格斯·范·桑特', NULL, '剧情', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (164, '变脸', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173855883.jpg', NULL, '吴宇森', NULL, '动作,科幻,惊悚,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (165, '之黄金眼', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1720407604.jpg', NULL, '马丁·坎贝尔', NULL, '动作,惊悚,冒险', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (166, '春光乍泄', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p465939041.jpg', NULL, '王家卫', NULL, '剧情,爱情,同性', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (167, '深海狂鲨', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1261726436.jpg', NULL, '雷尼·哈林', NULL, '动作,科幻,惊悚,灾难', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (168, '欲望号快车', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2164274257.jpg', NULL, '大卫·柯南伯格', NULL, '剧情', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (169, '虎胆龙威', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1617429340.jpg', NULL, '约翰·麦克蒂尔南', NULL, '动作,惊悚,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (170, '东方快车谋杀案', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2248650355.jpg', NULL, '西德尼·吕美特', NULL, '剧情,悬疑,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (171, '大地雄心', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2175156032.jpg', NULL, '朗·霍华德', NULL, '剧情,爱情,西部,冒险', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (172, '黄飞鸿之三', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2047653768.jpg', NULL, '徐克', NULL, '剧情,动作,武侠,古装', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (173, '大河恋', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2503828232.jpg', NULL, '罗伯特·雷德福', NULL, '剧情,家庭', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (174, '大路', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1137202397.jpg', NULL, '费德里科·费里尼', NULL, '剧情', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (175, '阿甘正传', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg', NULL, '罗伯特·泽米吉斯', NULL, '剧情,爱情', 9.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (176, '泰坦尼克号', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg', NULL, '詹姆斯·卡梅隆', NULL, '剧情,爱情,灾难', 9.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (177, '勇闯夺命岛', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p636048104.jpg', NULL, '迈克尔·贝', NULL, '动作,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (178, '小公主', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2170114015.jpg', NULL, '沃尔特·朗', NULL, '剧情,喜剧,歌舞,家庭', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (179, '汉娜姐妹', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2181713471.jpg', NULL, '伍迪·艾伦', NULL, '剧情,喜剧,爱情', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (180, '小猪宝贝', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2503827571.jpg', NULL, '克里斯·努安', NULL, '喜剧,奇幻,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (181, '将军号', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2248676081.jpg', NULL, '巴斯特·基顿', NULL, '剧情,喜剧,动作,战争,冒险', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (182, '我知道你去年夏天干了什么', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178451760.jpg', NULL, 'Jim Gillespie', NULL, '悬疑,惊悚,恐怖', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (183, '细细的红线', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2511261922.jpg', NULL, '泰伦斯·马力克', NULL, '剧情,战争', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (184, '芬妮与亚历山大', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1172714598.jpg', NULL, '英格玛·伯格曼', NULL, '剧情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (185, '我自己的爱达荷', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p906164765.jpg', NULL, '格斯·范·桑特', NULL, '剧情,爱情,同性', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (186, '拯救大兵瑞恩', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1014542496.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,历史,战争', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (187, '危情十日', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1217959104.jpg', NULL, '罗伯·莱纳', NULL, '剧情,惊悚,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (188, '初吻', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p860227390.jpg', NULL, '克洛德·皮诺托', NULL, '喜剧,爱情', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (189, '快餐车', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1417360174.jpg', NULL, '洪金宝', NULL, '喜剧,动作', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (190, '伴我同行', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1979379460.jpg', NULL, '罗伯·莱纳', NULL, '剧情,儿童,冒险', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (191, '光辉岁月', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p858717623.jpg', NULL, '鲍兹·亚金', NULL, '剧情,传记,运动', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (192, '黑金', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2463618493.jpg', NULL, '麦当杰', NULL, '犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (193, '不羁夜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2188465923.jpg', NULL, '保罗·托马斯·安德森', NULL, '剧情,情色', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (194, '小鸡快跑', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2220719154.jpg', NULL, '彼得·洛伊德', NULL, '喜剧,动画,家庭', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (195, '神探飞机头', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2135598626.jpg', NULL, '史蒂夫·欧德科克', NULL, '喜剧,动作,悬疑,冒险', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (196, '婚姻生活', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2037298187.jpg', NULL, '英格玛·伯格曼', NULL, '剧情,爱情', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (197, '告别有情天', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1056237302.jpg', NULL, '詹姆斯·伊沃里', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (198, '独立日', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p453518655.jpg', NULL, '罗兰·艾默里奇', NULL, '动作,科幻,冒险,灾难', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (199, '海滩', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p461627296.jpg', NULL, '丹尼·博伊尔', NULL, '剧情,爱情,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (200, '曼哈顿谋杀疑案', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2083734431.jpg', NULL, '伍迪·艾伦', NULL, '喜剧,悬疑', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (201, '热泪伤痕', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2151462240.jpg', NULL, '泰勒·海克福德', NULL, '剧情,悬疑,惊悚', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (202, '永不妥协', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p643400568.jpg', NULL, '史蒂文·索德伯格', NULL, '剧情,爱情,传记', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (203, '野草莓', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p540202708.jpg', NULL, '英格玛·伯格曼', NULL, '剧情,爱情,家庭', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (204, '苏菲的抉择', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1217019930.jpg', NULL, '艾伦·J·帕库拉', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (205, '小鬼当家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1529668801.jpg', NULL, '克里斯·哥伦布', NULL, '喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (206, '赌王之王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p769894916.jpg', NULL, '约翰·达尔', NULL, '剧情,犯罪', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (207, '小倩', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2179017609.jpg', NULL, '陈伟文', NULL, '喜剧,爱情,动画,奇幻', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (208, '蚀', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2239013044.jpg', NULL, '米开朗基罗·安东尼奥尼', NULL, '剧情,爱情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (209, '天地大冲撞', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2172256449.jpg', NULL, '米密·莱德', NULL, '科幻,灾难', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (210, '惊声尖叫', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178430161.jpg', NULL, '韦斯·克雷文', NULL, '悬疑,恐怖,犯罪', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (211, '豹', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2195195471.jpg', NULL, '卢基诺·维斯康蒂', NULL, '剧情,爱情,历史,战争', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (212, '辣手神探', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2193604720.jpg', NULL, '吴宇森', NULL, '剧情,动作,惊悚,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (213, '宾虚', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2201168652.jpg', NULL, '威廉·惠勒', NULL, '剧情,动作,历史,战争,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (214, '愤怒的公牛', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2427118378.jpg', NULL, '马丁·斯科塞斯', NULL, '剧情,传记,运动', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (215, '处女泉', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2186774515.jpg', NULL, '英格玛·伯格曼', NULL, '剧情,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (216, '当男人爱上女人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p541145992.jpg', NULL, '路易斯·曼多基', NULL, '剧情,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (217, '生死时速', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2182085556.jpg', NULL, '扬·德·邦特', NULL, '动作,惊悚,犯罪,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (218, '入侵脑细胞', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1685867307.jpg', NULL, '塔西姆·辛', NULL, '科幻,惊悚,恐怖', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (219, '末代皇帝', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452089833.jpg', NULL, '贝纳尔多·贝托鲁奇', NULL, '剧情,传记,历史', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (220, '古墓丽影', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p743262532.jpg', NULL, '西蒙·韦斯特', NULL, '动作,冒险', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (221, '美梦成真', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1421685562.jpg', NULL, '文森特·沃德', NULL, '剧情,爱情,奇幻', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (222, '惊魂记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1021883305.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '悬疑,惊悚,恐怖', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (223, '十二怒汉', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173577632.jpg', NULL, '西德尼·吕美特', NULL, '剧情', 9.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (224, '亚利桑那之梦', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1398203397.jpg', NULL, '埃米尔·库斯图里卡', NULL, '剧情,喜剧,爱情,奇幻', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (225, '象人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1474924283.jpg', NULL, '大卫·林奇', NULL, '剧情,传记', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (226, '真心英雄', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2212470157.jpg', NULL, '杜琪峰', NULL, '剧情,动作,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (227, '人鬼情未了', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p544574893.jpg', NULL, '杰瑞·扎克', NULL, '剧情,爱情,奇幻', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (228, '为黛西小姐开车', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p861513408.jpg', NULL, '布鲁斯·贝尔斯福德', NULL, '剧情,喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (229, '长大', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1675497800.jpg', NULL, '潘妮·马歇尔', NULL, '喜剧,爱情,奇幻', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (230, '恶魔', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p773231320.jpg', NULL, '亨利-乔治·克鲁佐', NULL, '剧情,悬疑,惊悚,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (231, '佐罗的面具', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1401208353.jpg', NULL, '马丁·坎贝尔', NULL, '动作,爱情,西部,冒险', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (232, '天堂之日', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1612319404.jpg', NULL, '泰伦斯·马力克', NULL, '剧情,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (233, '第七封印', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2021642865.jpg', NULL, '英格玛·伯格曼', NULL, '剧情,奇幻', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (234, '黑猫白猫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2176669838.jpg', NULL, '埃米尔·库斯图里卡', NULL, '喜剧,爱情,音乐', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (235, '霹雳娇娃', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1664314074.jpg', NULL, '约瑟夫·麦克金提·尼彻', NULL, '动作,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (236, '古惑仔战无不胜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2554499338.jpg', NULL, '刘伟强', NULL, '剧情,动作', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (237, '寻子遇仙记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2506524685.jpg', NULL, '查理·卓别林', NULL, '剧情,喜剧,家庭', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (238, '抚养亚利桑纳', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2203813792.jpg', NULL, '伊桑·科恩', NULL, '喜剧,悬疑,犯罪,冒险', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (239, '椿三十郎', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2346574759.jpg', NULL, '黑泽明', NULL, '剧情,动作,惊悚', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (240, '阿郎的故事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p763776246.jpg', NULL, '杜琪峰', NULL, '剧情,家庭', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (241, '星际旅行', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p453475066.jpg', NULL, '尼古拉斯·迈耶', NULL, '动作,科幻,惊悚,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (242, '萤火虫之墓', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1157334208.jpg', NULL, '高畑勋', NULL, '剧情,动画,战争', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (243, '大红灯笼高高挂', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1254404823.jpg', NULL, '张艺谋', NULL, '剧情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (244, '档案', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2196902962.jpg', NULL, '罗伯·鲍曼', NULL, '科幻,悬疑,惊悚,恐怖,犯罪', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (245, '之女王密使', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1725535349.jpg', NULL, '彼特·R·亨特', NULL, '动作,爱情,惊悚,冒险', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (246, '两杆大烟枪', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792443418.jpg', NULL, '盖·里奇', NULL, '剧情,喜剧,犯罪', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (247, '食神', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2208185679.jpg', NULL, '李力持', NULL, '喜剧,动作', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (248, '菊次郎的夏天', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p751835224.jpg', NULL, '北野武', NULL, '剧情,喜剧', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (249, '热天午后', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2100141196.jpg', NULL, '西德尼·吕美特', NULL, '剧情,喜剧,犯罪', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (250, '就是凶手', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p935420710.jpg', NULL, '弗里茨·朗', NULL, '剧情,惊悚,犯罪,黑色电影', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (251, '马文的房间', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2158366606.jpg', NULL, '杰瑞·扎克斯', NULL, '剧情,家庭', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (252, '冬天的故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1665123572.jpg', NULL, '埃里克·侯麦', NULL, '剧情,爱情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (253, '西部往事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792368479.jpg', NULL, '赛尔乔·莱昂内', NULL, '剧情,犯罪,西部', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (254, '野战排', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1596877271.jpg', NULL, '奥利佛·斯通', NULL, '剧情,动作,战争', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (255, '莫扎特传', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p595764767.jpg', NULL, '米洛斯·福尔曼', NULL, '剧情,音乐,传记', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (256, '阮玲玉', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p768817927.jpg', NULL, '关锦鹏', NULL, '剧情,爱情,传记', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (257, '监狱风云', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2347371309.jpg', NULL, '林岭东', NULL, '剧情,动作,犯罪', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (258, '异种', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2357515285.jpg', NULL, '罗杰·唐纳森', NULL, '动作,科幻,恐怖', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (259, '之俄罗斯之恋', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2358002295.jpg', NULL, '特伦斯·杨', NULL, '动作,爱情,惊悚,冒险', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (260, '妖兽都市', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1798078783.jpg', NULL, '麦大杰', NULL, '动作,科幻', 6.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (261, '雨中曲', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1612355875.jpg', NULL, '斯坦利·多南', NULL, '喜剧,爱情,歌舞', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (262, '透明人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2445919835.jpg', NULL, '保罗·范霍文', NULL, '动作,科幻,惊悚', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (263, '黄飞鸿之二', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2382744627.jpg', NULL, '徐克', NULL, '剧情,动作,爱情,武侠,古装', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (264, '角斗士', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1601948450.jpg', NULL, '雷德利·斯科特', NULL, '剧情,动作,冒险', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (265, '第五元素', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2217639745.jpg', NULL, '吕克·贝松', NULL, '动作,科幻,冒险', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (266, '空军一号', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2143835662.jpg', NULL, '沃尔夫冈·彼德森', NULL, '剧情,动作,惊悚', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (267, '沉默的羔羊', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1593414327.jpg', NULL, '乔纳森·戴米', NULL, '剧情,惊悚,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (268, '电子情书', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p469986867.jpg', NULL, '诺拉·艾芙隆', NULL, '喜剧,爱情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (269, '不可饶恕', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1083392613.jpg', NULL, '克林特·伊斯特伍德', NULL, '剧情,西部', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (270, '离开拉斯维加斯', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p860190615.jpg', NULL, '迈克·菲吉斯', NULL, '剧情,爱情', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (271, '法国中尉的女人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1189962412.jpg', NULL, '卡雷尔·赖兹', NULL, '剧情,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (272, '之金枪人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1741216684.jpg', NULL, '盖伊·汉弥尔顿', NULL, '动作,惊悚,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (273, '算死草', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1622126778.jpg', NULL, '马伟豪', NULL, '剧情,喜剧', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (274, '春天的故事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1715325088.jpg', NULL, '埃里克·侯麦', NULL, '剧情,喜剧,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (275, '蝴蝶君', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p770583467.jpg', NULL, '大卫·柯南伯格', NULL, '剧情,爱情,同性', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (276, '呼啸山庄', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2185401138.jpg', NULL, '威廉·惠勒', NULL, '剧情,爱情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (277, '席德与南茜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1366545990.jpg', NULL, '亚力克斯·考克斯', NULL, '剧情,音乐,传记', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (278, '她比烟花寂寞', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2564835945.jpg', NULL, '安南德·图克尔', NULL, '剧情,音乐,传记', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (279, '亚当斯一家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1219939183.jpg', NULL, '巴里·索南菲尔德', NULL, '喜剧,家庭,奇幻', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (280, '忠奸人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1407543528.jpg', NULL, '迈克·内威尔', NULL, '剧情,惊悚,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (281, '甜蜜与卑微', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1261996807.jpg', NULL, '伍迪·艾伦', NULL, '喜剧,音乐', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (282, '生活多美好', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p771490367.jpg', NULL, '弗兰克·卡普拉', NULL, '剧情,爱情,奇幻', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (283, '十月的天空', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452602741.jpg', NULL, '乔·庄斯顿', NULL, '剧情,家庭,传记', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (284, '驱魔人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1495239725.jpg', NULL, '威廉·弗莱德金', NULL, '恐怖', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (285, '英雄本色', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2348693150.jpg', NULL, '徐克', NULL, '动作,战争', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (286, '捉鬼敢死队', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2250091060.jpg', NULL, '伊万·雷特曼', NULL, '喜剧,科幻,奇幻', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (287, '科学怪人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1413537601.jpg', NULL, '肯尼思·布拉纳', NULL, '剧情,爱情,科幻,恐怖', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (288, '异形', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2243611590.jpg', NULL, '詹姆斯·卡梅隆', NULL, '动作,科幻,恐怖', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (289, '壮志凌云', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1871745733.jpg', NULL, '托尼·斯科特', NULL, '剧情,动作,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (290, '完美风暴', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2164583922.jpg', NULL, '沃尔夫冈·彼德森', NULL, '剧情,灾难', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (291, '辣手摧花', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1762386614.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '剧情,悬疑,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (292, '钢琴课', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p764799071.jpg', NULL, '简·坎皮恩', NULL, '剧情,爱情,音乐', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (293, '蝴蝶梦', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p840829693.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '剧情,爱情,悬疑', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (294, '漂亮女人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2205839719.jpg', NULL, '盖瑞·马歇尔', NULL, '喜剧,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (295, '之金手指', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2263013025.jpg', NULL, '盖伊·汉弥尔顿', NULL, '动作,惊悚,冒险', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (296, '星球大战', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p732941361.jpg', NULL, '乔治·卢卡斯', NULL, '动作,科幻,冒险', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (297, '罗马假日', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2189265085.jpg', NULL, '威廉·惠勒', NULL, '剧情,喜剧,爱情', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (298, '生之欲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2079076441.jpg', NULL, '黑泽明', NULL, '剧情', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (299, '罗斯玛丽的婴儿', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2517730337.jpg', NULL, '罗曼·波兰斯基', NULL, '剧情,悬疑,恐怖', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (300, '偷龙转凤', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1077594334.jpg', NULL, '威廉·惠勒', NULL, '喜剧,爱情,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (301, '龙凤配', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1229587917.jpg', NULL, '比利·怀德', NULL, '剧情,喜剧,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (302, '阿黛尔', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1483320569.jpg', NULL, '弗朗索瓦·特吕弗', NULL, '剧情,传记,历史', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (303, '唐人街', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2290719289.jpg', NULL, '罗曼·波兰斯基', NULL, '剧情,悬疑,惊悚,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (304, '一个头两个大', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p853041170.jpg', NULL, '博比·法雷里', NULL, '喜剧,爱情', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (305, '城市之光', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2170238828.jpg', NULL, '查理·卓别林', NULL, '剧情,喜剧,爱情', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (306, '从海底出击', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2088879323.jpg', NULL, '沃尔夫冈·彼德森', NULL, '剧情,历史,战争,冒险', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (307, '尽善尽美', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p643387266.jpg', NULL, '詹姆斯·L·布鲁克斯', NULL, '剧情,喜剧,爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (308, '橡皮头', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1334208717.jpg', NULL, '大卫·林奇', NULL, '恐怖,奇幻', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (309, '看得见风景的房间', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2527171442.jpg', NULL, '詹姆斯·伊沃里', NULL, '剧情,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (310, '廊桥遗梦', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2190558219.jpg', NULL, '克林特·伊斯特伍德', NULL, '剧情,爱情', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (311, '爱国者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1374533146.jpg', NULL, '罗兰·艾默里奇', NULL, '剧情,动作,战争', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (312, '奇迹', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2204669705.jpg', NULL, '成龙', NULL, '剧情,喜剧,动作,犯罪', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (313, '为所应为', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2500861627.jpg', NULL, '斯派克·李', NULL, '喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (314, '魂断蓝桥', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2351134499.jpg', NULL, '茂文·勒鲁瓦', NULL, '剧情,爱情,战争', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (315, '爱德华大夫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1884306259.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '爱情,悬疑,黑色电影', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (316, '杀人三步曲', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p781912065.jpg', NULL, '罗伯特·罗德里格兹', NULL, '动作,惊悚,犯罪', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (317, '我的左脚', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2502636053.jpg', NULL, '吉姆·谢里丹', NULL, '剧情,传记', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (318, '黄飞鸿之四', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2047660078.jpg', NULL, '元彬', NULL, '动作,武侠,古装', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (319, '未来水世界', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2159099238.jpg', NULL, '凯文·雷诺兹', NULL, '动作,科幻,惊悚,冒险', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (320, '流星语', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p939431341.jpg', NULL, '张之亮', NULL, '剧情,喜剧', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (321, '绿光', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2178171016.jpg', NULL, '埃里克·侯麦', NULL, '剧情,爱情', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (322, '恐惧吞噬灵魂', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553755181.jpg', NULL, '赖纳·维尔纳·法斯宾德', NULL, '剧情,爱情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (323, '冒险王', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2352279200.jpg', NULL, '程小东', NULL, '动作', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (324, '师弟出马', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2179820635.jpg', NULL, '成龙', NULL, '喜剧,动作', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (325, '天鹅绒金矿', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p580624079.jpg', NULL, '托德·海因斯', NULL, '剧情,同性,音乐', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (326, '敲开天堂的门', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1609250116.jpg', NULL, '托马斯·雅恩', NULL, '剧情,喜剧,动作,犯罪', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (327, '秋天的故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2248726990.jpg', NULL, '埃里克·侯麦', NULL, '剧情,爱情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (328, '我为玛丽狂', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p854220163.jpg', NULL, '博比·法雷里', NULL, '喜剧,爱情', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (329, '大佬', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1543377075.jpg', NULL, '北野武', NULL, '剧情,惊悚,犯罪', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (330, '悲情城市', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2501579996.jpg', NULL, '侯孝贤', NULL, '剧情', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (331, '曼哈顿', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1672087220.jpg', NULL, '伍迪·艾伦', NULL, '剧情,喜剧,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (332, '捆着我', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1958677626.jpg', NULL, '佩德罗·阿莫多瓦', NULL, '剧情,喜剧,爱情,情色,犯罪', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (333, '第一滴血', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2485300934.jpg', NULL, '特德·科特切夫', NULL, '剧情,动作,惊悚,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (334, '最佳拍档', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2233293231.jpg', NULL, '林岭东', NULL, '喜剧,动作', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (335, '兵人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1659550631.jpg', NULL, '保罗·安德森', NULL, '剧情,动作,科幻', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (336, '摩登时代', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2263408369.jpg', NULL, '查理·卓别林', NULL, '剧情,喜剧,爱情', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (337, '七年之痒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p537551220.jpg', NULL, '比利·怀德', NULL, '喜剧,爱情', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (338, '之太空城', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1735176215.jpg', NULL, '刘易斯·吉尔伯特', NULL, '动作,科幻,惊悚,冒险', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (339, '音乐之声', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p453788577.jpg', NULL, '罗伯特·怀斯', NULL, '剧情,爱情,歌舞,传记', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (340, '笑傲江湖', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p838966341.jpg', NULL, '程小东', NULL, '剧情,爱情,武侠,古装', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (341, '伊万的童年', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2360167553.jpg', NULL, '安德烈·塔可夫斯基', NULL, '剧情,战争', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (342, '秋刀鱼之味', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1995499987.jpg', NULL, '小津安二郎', NULL, '剧情,家庭', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (343, '三轮车夫', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2171890911.jpg', NULL, '陈英雄', NULL, '剧情,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (344, '假面', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507966309.jpg', NULL, '英格玛·伯格曼', NULL, '剧情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (345, '爱丽丝梦游仙境', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2553240455.jpg', NULL, '诺曼·Z·麦克劳德', NULL, '剧情,奇幻,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (346, '仙履奇缘', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1833051594.jpg', NULL, '克莱德·杰洛尼米', NULL, '爱情,动画,歌舞,奇幻', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (347, '上帝也疯狂', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1306760079.jpg', NULL, '加美·尤伊斯', NULL, '喜剧', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (348, '紫色', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p880920404.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (349, '午夜凶铃', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p647988001.jpg', NULL, '中田秀夫', NULL, '恐怖', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (350, '蝙蝠侠与罗宾', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p852809903.jpg', NULL, '乔·舒马赫', NULL, '动作,科幻', 6, NULL);
INSERT INTO `myauth_movie_info` VALUES (351, '黄飞鸿', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2456289087.jpg', NULL, '徐克', NULL, '动作', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (352, '虎', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1560626387.jpg', NULL, '理查德·弗莱彻', NULL, '剧情,历史,战争', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (353, '白发魔女', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2332485913.jpg', NULL, '胡大为', NULL, '动作,爱情,奇幻', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (354, '五至七时的克莱奥', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173127960.jpg', NULL, '阿涅斯·瓦尔达', NULL, '剧情,喜剧,音乐', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (355, '爱情短片', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2189908788.jpg', NULL, '克日什托夫·基耶斯洛夫斯基', NULL, '剧情,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (356, '御法度', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1918779895.jpg', NULL, '大岛渚', NULL, '剧情,惊悚,同性,历史', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (357, '神秘拼图', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2219693232.jpg', NULL, '菲利普·诺伊斯', NULL, '剧情,悬疑,犯罪', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (358, '外星人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p984732992.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,科幻', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (359, '勇敢的心', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1374546770.jpg', NULL, '梅尔·吉布森', NULL, '剧情,动作,传记,历史,战争', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (360, '中华英雄', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2190247886.jpg', NULL, '刘伟强', NULL, '剧情,动作,冒险', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (361, '荆轲刺秦王', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2158810723.jpg', NULL, '陈凯歌', NULL, '剧情,历史,古装', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (362, '记三合会档案', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1946287538.jpg', NULL, '霍耀良', NULL, '动作,犯罪', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (363, '老师不是人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2209392026.jpg', NULL, '罗伯特·罗德里格兹', NULL, '科幻,悬疑,惊悚,恐怖', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (364, '爱情故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1399778881.jpg', NULL, '阿瑟·希勒', NULL, '剧情,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (365, '第九道门', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p581343062.jpg', NULL, '罗曼·波兰斯基', NULL, '剧情,悬疑,惊悚,恐怖,奇幻', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (366, '机器战警', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1445879319.jpg', NULL, '保罗·范霍文', NULL, '剧情,动作,科幻,惊悚,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (367, '蜘蛛巢城', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p647422117.jpg', NULL, '黑泽明', NULL, '剧情,惊悚,战争,奇幻', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (368, '拜见岳父大人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1435970119.jpg', NULL, '杰伊·罗奇', NULL, '喜剧,爱情', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (369, '花木兰', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1315561128.jpg', NULL, '巴里·库克', NULL, '剧情,动画,家庭,冒险', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (370, '色戒', 'https://img3.doubanio.com/view/subject/l/public/s4239543.jpg', NULL, '宾·纳伦', NULL, '剧情,爱情,情色', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (371, '魅力四射', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1452331723.jpg', NULL, '佩顿·里德', NULL, '喜剧,爱情,运动', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (372, '茶花女', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p964256918.jpg', NULL, '乔治·库克', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (373, '巨蟒与圣杯', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1316883036.jpg', NULL, '特瑞·吉列姆', NULL, '喜剧,奇幻,冒险', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (374, '星愿', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2554394952.jpg', NULL, '马楚成', NULL, '剧情,爱情,奇幻', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (375, '大白鲨', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2189845463.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,惊悚,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (376, '四个婚礼和一个葬礼', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2494257205.jpg', NULL, '迈克·内威尔', NULL, '剧情,喜剧,爱情', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (377, '桂河大桥', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2233749387.jpg', NULL, '大卫·里恩', NULL, '剧情,历史,战争', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (378, '一个都不能少', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p907410217.jpg', NULL, '张艺谋', NULL, '剧情,喜剧', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (379, '窈窕奶爸', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2177818413.jpg', NULL, '克里斯·哥伦布', NULL, '剧情,喜剧,家庭', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (380, '天才瑞普利', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1915065575.jpg', NULL, '安东尼·明格拉', NULL, '剧情,惊悚,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (381, '笑侠楚留香', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2299469557.jpg', NULL, '王晶', NULL, '喜剧,动作', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (382, '偷听女人心', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2184916871.jpg', NULL, '南希·迈耶斯', NULL, '喜剧,爱情,奇幻', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (383, '鼠胆龙威', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2241046568.jpg', NULL, '王晶', NULL, '喜剧,动作,犯罪', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (384, '西线无战事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209784767.jpg', NULL, '刘易斯·迈尔斯通', NULL, '剧情,动作,历史,战争', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (385, '辛德勒的名单', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,历史,战争', 9.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (386, '小鹿斑比', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2261878972.jpg', NULL, '戴维·汉德', NULL, '剧情,动画', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (387, '莉莉玛莲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2283748082.jpg', NULL, '赖纳·维尔纳·法斯宾德', NULL, '剧情,爱情,音乐,战争', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (388, '西区故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453746512.jpg', NULL, '杰罗姆·罗宾斯', NULL, '剧情,爱情,歌舞,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (389, '影子大亨', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2203787782.jpg', NULL, '伊桑·科恩', NULL, '剧情,喜剧,爱情,奇幻', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (390, '木乃伊', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1376881286.jpg', NULL, '斯蒂芬·索莫斯', NULL, '剧情,动作,奇幻,冒险', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (391, '精灵鼠小弟', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1377980123.jpg', NULL, '罗伯·明可夫', NULL, '喜剧,家庭,奇幻,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (392, '战警', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2446530060.jpg', NULL, '布莱恩·辛格', NULL, '动作,科幻', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (393, '美国派', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1446184593.jpg', NULL, '克里斯·韦兹', NULL, '喜剧,爱情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (394, '黑衣人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453515660.jpg', NULL, '巴里·索南菲尔德', NULL, '喜剧,动作,科幻', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (395, '洛奇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2053433277.jpg', NULL, '西尔维斯特·史泰龙', NULL, '剧情,运动', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (396, '冒牌老爸', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p995398305.jpg', NULL, '丹尼斯·杜根', NULL, '剧情,喜剧,家庭', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (397, '星月童话', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2157774740.jpg', NULL, '李仁港', NULL, '剧情,爱情,惊悚', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (398, '独领风骚', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1514976453.jpg', NULL, '艾米·海克林', NULL, '喜剧,爱情', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (399, '真实罗曼史', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2449120503.jpg', NULL, '托尼·斯科特', NULL, '爱情,惊悚,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (400, '甜姐儿', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1110264749.jpg', NULL, '斯坦利·多南', NULL, '喜剧,爱情,歌舞', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (401, '飞天巨桃历险记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2204038790.jpg', NULL, '亨利·塞利克', NULL, '动画,歌舞,家庭,奇幻,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (402, '星河战队', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2512733819.jpg', NULL, '保罗·范霍文', NULL, '动作,科幻,惊悚,冒险', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (403, '纵横四海', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2272146906.jpg', NULL, '吴宇森', NULL, '剧情,喜剧,动作,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (404, '第三人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2193745066.jpg', NULL, '卡罗尔·里德', NULL, '悬疑,惊悚,黑色电影', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (405, '性爱宝典', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2506003739.jpg', NULL, '伍迪·艾伦', NULL, '喜剧,情色', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (406, '罗密欧与朱丽叶', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2431798722.jpg', NULL, '佛朗哥·泽菲雷里', NULL, '剧情,爱情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (407, '捕鼠记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1198261784.jpg', NULL, '戈尔·维宾斯基', NULL, '喜剧,动作,家庭', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (408, '一个好人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2239595849.jpg', NULL, '洪金宝', NULL, '喜剧,动作,犯罪', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (409, '之金刚钻', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1726437573.jpg', NULL, '盖伊·汉弥尔顿', NULL, '动作,科幻,惊悚,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (410, '深闺疑云', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1071785832.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '剧情,悬疑,惊悚', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (411, '活死人黎明', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2187252960.jpg', NULL, '乔治·A·罗梅罗', NULL, '动作,恐怖', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (412, '永远的蝙蝠侠', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2410156576.jpg', NULL, '乔·舒马赫', NULL, '动作,科幻', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (413, '这个杀手不太冷', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg', NULL, '吕克·贝松', NULL, '剧情,动作,犯罪', 9.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (414, '超时空接触', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p453499268.jpg', NULL, '罗伯特·泽米吉斯', NULL, '剧情,科幻', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (415, '疯狂的麦克斯', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2192560698.jpg', NULL, '乔治·米勒', NULL, '动作,科幻,惊悚,冒险', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (416, '大丈夫日记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2258660233.jpg', NULL, '楚原', NULL, '喜剧,爱情', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (417, '火山高校', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p742533398.jpg', NULL, '金泰均', NULL, '动作,奇幻', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (418, '黑侠', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2398005006.jpg', NULL, '李仁港', NULL, '喜剧,动作,科幻,惊悚,犯罪,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (419, '老夫子', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2356564685.jpg', NULL, '邱礼涛', NULL, '喜剧,动作,动画', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (420, '那年夏天', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2153209777.jpg', NULL, '北野武', NULL, '爱情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (421, '女巫布莱尔', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1451524667.jpg', NULL, '丹尼尔·麦里克', NULL, '悬疑,恐怖', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (422, '燃情岁月', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1023654037.jpg', NULL, '爱德华·兹威克', NULL, '剧情,爱情,战争,西部', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (423, '全面回忆', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1651606648.jpg', NULL, '保罗·范霍文', NULL, '动作,科幻,惊悚,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (424, '西北偏北', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1769720671.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '动作,悬疑,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (425, '偷自行车的人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p759707912.jpg', NULL, '维托里奥·德西卡', NULL, '剧情,犯罪', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (426, '二见钟情', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p863459595.jpg', NULL, '乔·德特杜巴', NULL, '喜剧,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (427, '绝代双骄', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2513199034.jpg', NULL, '曾志伟', NULL, '喜剧,动作,武侠,古装', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (428, '仁心与冠冕', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1112153309.jpg', NULL, '罗伯特·哈默', NULL, '喜剧,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (429, '见鬼', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p919646397.jpg', NULL, '彭发', NULL, '剧情,惊悚,恐怖', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (430, '活火熔城', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2377347186.jpg', NULL, '米克·杰克逊', NULL, '剧情,动作,灾难', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (431, '断头谷', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2416606535.jpg', NULL, '蒂姆·波顿', NULL, '悬疑,恐怖,奇幻', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (432, '绝地战警', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p686546035.jpg', NULL, '迈克尔·贝', NULL, '喜剧,动作,犯罪', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (433, '百万美元酒店', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1369054338.jpg', NULL, '维姆·文德斯', NULL, '剧情,悬疑,惊悚', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (434, '控方证人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1505392928.jpg', NULL, '比利·怀德', NULL, '剧情,悬疑,犯罪', 9.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (435, '八毫米', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1088311945.jpg', NULL, '乔·舒马赫', NULL, '悬疑,惊悚,犯罪', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (436, '全职杀手', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2186805330.jpg', NULL, '杜琪峰', NULL, '剧情,惊悚,犯罪', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (437, '乱', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2324366931.jpg', NULL, '黑泽明', NULL, '剧情,动作,战争', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (438, '逃学威龙', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2563028145.jpg', NULL, '陈嘉上', NULL, '喜剧', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (439, '警察故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2233939993.jpg', NULL, '唐季礼', NULL, '喜剧,动作,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (440, '过年', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2206392237.jpg', NULL, '黄健中', NULL, '剧情,家庭', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (441, '伊丽莎白', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p880919713.jpg', NULL, '谢卡尔·卡普尔', NULL, '剧情,爱情,传记,历史', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (442, '南北少林', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2286331031.jpg', NULL, '刘家良', NULL, '剧情,动作,武侠,古装', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (443, '巴黎圣母院', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1942074866.jpg', NULL, '让·德拉努瓦', NULL, '剧情,历史', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (444, '天生爱情狂', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p861599299.jpg', NULL, '杰里米·莱文', NULL, '剧情,喜剧,爱情', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (445, '将军的女儿', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2197182226.jpg', NULL, '西蒙·韦斯特', NULL, '剧情,悬疑,惊悚,战争,犯罪', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (446, '没完没了', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2104173609.jpg', NULL, '冯小刚', NULL, '剧情,喜剧', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (447, '本命年', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2369582117.jpg', NULL, '谢飞', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (448, '跛豪', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1820465199.jpg', NULL, '潘文杰', NULL, '剧情,传记,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (449, '阴风阵阵', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220607722.jpg', NULL, '达里奥·阿基多', NULL, '恐怖', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (450, '滚滚红尘', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1425716957.jpg', NULL, '严浩', NULL, '爱情,战争', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (451, '爱在黎明破晓前', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2555762374.jpg', NULL, '理查德·林克莱特', NULL, '剧情,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (452, '爱情万岁', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2040684308.jpg', NULL, '蔡明亮', NULL, '剧情,同性', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (453, '王子复仇记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1217889861.jpg', NULL, '劳伦斯·奥利弗', NULL, '剧情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (454, '有话好好说', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553967182.jpg', NULL, '张艺谋', NULL, '剧情,喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (455, '阿呆与阿瓜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1690015840.jpg', NULL, '彼得·法雷里', NULL, '喜剧', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (456, '喋血双雄', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1820401687.jpg', NULL, '吴宇森', NULL, '剧情,动作,惊悚,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (457, '紫雨风暴', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2354863407.jpg', NULL, '陈德森', NULL, '动作', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (458, '神秘列车', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p459490157.jpg', NULL, '吉姆·贾木许', NULL, '剧情,喜剧,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (459, '幽灵船', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p509817155.jpg', NULL, '史蒂芬·贝克', NULL, '悬疑,惊悚,恐怖', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (460, '小飞侠', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1161429881.jpg', NULL, '克莱德·杰洛尼米', NULL, '动画,歌舞,奇幻,冒险', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (461, '女囚尼基塔', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2555194472.jpg', NULL, '吕克·贝松', NULL, '动作,惊悚,犯罪', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (462, '两个只能活一个', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2387721408.jpg', NULL, '游达志', NULL, '剧情,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (463, '倩女幽魂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2518212196.jpg', NULL, '程小东', NULL, '爱情,奇幻,武侠,古装', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (464, '小马王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2284067604.jpg', NULL, '凯利·阿斯博瑞', NULL, '爱情,动画,西部,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (465, '回到未来', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p475893249.jpg', NULL, '罗伯特·泽米吉斯', NULL, '喜剧,科幻,西部,冒险', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (466, '罗马', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2316008251.jpg', NULL, '罗伯托·罗西里尼', NULL, '剧情,战争', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (467, '小熊维尼历险记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1315728990.jpg', NULL, '约翰·朗斯伯里', NULL, '动画,歌舞,奇幻', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (468, '人猿星球', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p915141074.jpg', NULL, '富兰克林·沙夫纳', NULL, '科幻,悬疑,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (469, '地狱无门', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2290611545.jpg', NULL, '徐克', NULL, '喜剧,动作,惊悚,恐怖,奇幻,冒险,武侠', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (470, '变蝇人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1813903680.jpg', NULL, 'Chris Walas', NULL, '科幻,恐怖', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (471, '钢琴家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792376093.jpg', NULL, '罗曼·波兰斯基', NULL, '剧情,音乐,传记,历史,战争', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (472, '抢钱夫妻', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2027457540.jpg', NULL, '张之亮', NULL, '喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (473, '卡萨布兰卡', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2247003945.jpg', NULL, '迈克尔·柯蒂兹', NULL, '剧情,爱情,战争', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (474, '随心所欲', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2199277617.jpg', NULL, '让-吕克·戈达尔', NULL, '剧情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (475, '一树梨花压海棠', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2193339885.jpg', NULL, '阿德里安·莱恩', NULL, '剧情,爱情,情色', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (476, '诺斯费拉图', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p936070379.jpg', NULL, 'F·W·茂瑙', NULL, '恐怖,奇幻', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (477, '我的夜晚比你的白天更美', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553621753.jpg', NULL, '安德烈·祖拉斯基', NULL, '剧情,爱情', 6.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (478, '苹果酒屋法则', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p483594726.jpg', NULL, '拉斯·霍尔斯道姆', NULL, '剧情,爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (479, '赌霸', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2218987484.jpg', NULL, '元奎', NULL, '喜剧,动作,爱情', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (480, '青春年少', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1593683857.jpg', NULL, '韦斯·安德森', NULL, '剧情,喜剧', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (481, '大买卖', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494354430.jpg', NULL, '弗兰克·奥兹', NULL, '动作,惊悚,犯罪', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (482, '大富之家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p940232872.jpg', NULL, '高志森', NULL, '喜剧,家庭', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (483, '虎口脱险', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2399597512.jpg', NULL, '热拉尔·乌里', NULL, '喜剧,战争', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (484, '魔鬼司令', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2479172530.jpg', NULL, '马克·L·莱斯特', NULL, '喜剧,动作,惊悚,冒险', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (485, '最后的莫希干人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2152405391.jpg', NULL, '迈克尔·曼', NULL, '爱情,战争,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (486, '安妮', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p619900470.jpg', NULL, '伍迪·艾伦', NULL, '剧情,喜剧,爱情', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (487, '大鼻子情圣', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1016937211.jpg', NULL, '让-保罗·拉佩诺', NULL, '剧情,喜剧,爱情,历史', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (488, '闪亮的风采', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2406770137.jpg', NULL, '斯科特·希克斯', NULL, '剧情,音乐,传记', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (489, '因父之名', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p758788727.jpg', NULL, '吉姆·谢里丹', NULL, '剧情,传记', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (490, '冒牌天神', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2165714151.jpg', NULL, '汤姆·沙迪亚克', NULL, '喜剧,奇幻', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (491, '红玫瑰白玫瑰', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2197949156.jpg', NULL, '关锦鹏', NULL, '剧情,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (492, '侧耳倾听', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456692072.jpg', NULL, '近藤喜文', NULL, '剧情,爱情,动画', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (493, '天生一对', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1933809793.jpg', NULL, '南希·迈耶斯', NULL, '喜剧,爱情,家庭,儿童', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (494, '睡美人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1833029768.jpg', NULL, 'Clyde Geronimi', NULL, '爱情,动画,歌舞,家庭,奇幻', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (495, '恋恋三季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p505934165.jpg', NULL, '托尼·裴', NULL, '剧情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (496, '人人都说我爱你', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2228938927.jpg', NULL, '伍迪·艾伦', NULL, '喜剧,爱情,歌舞', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (497, '无懈可击', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p811670078.jpg', NULL, '马克·佩灵顿', NULL, '悬疑,惊悚', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (498, '同窗之爱', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p882211480.jpg', NULL, 'Marek Kanievska', NULL, '剧情,爱情,同性,传记', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (499, '致命', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2558364386.jpg', NULL, '詹姆斯·曼高德', NULL, '剧情,悬疑,惊悚', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (500, '杀手之王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1630163816.jpg', NULL, '董玮', NULL, '喜剧,动作', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (501, '着魔', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1985283899.jpg', NULL, '安德烈·祖拉斯基', NULL, '剧情,恐怖', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (502, '龙少爷', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2204681689.jpg', NULL, '成龙', NULL, '喜剧,动作,运动', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (503, '鹿鼎记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2166580970.jpg', NULL, '王晶', NULL, '喜剧,动作,武侠,古装', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (504, '亡命天涯', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p805294540.jpg', NULL, '安德鲁·戴维斯', NULL, '剧情,动作,悬疑,惊悚,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (505, '五亿探长雷洛传', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1273873245.jpg', NULL, '刘国昌', NULL, '剧情,动作,爱情,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (506, '笨贼妙探', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1898841633.jpg', NULL, '莱斯·梅菲尔德', NULL, '喜剧,动作,惊悚,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (507, '秋日奏鸣曲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2034707962.jpg', NULL, '英格玛·伯格曼', NULL, '剧情', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (508, '夏日么么茶', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p482172263.jpg', NULL, '马楚成', NULL, '喜剧,爱情', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (509, '迷魂记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1275162115.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '爱情,悬疑,惊悚', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (510, '水牛城', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453576673.jpg', NULL, '文森特·加洛', NULL, '剧情,喜剧,爱情,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (511, '谁陷害了兔子罗杰', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2199309048.jpg', NULL, '罗伯特·泽米吉斯', NULL, '喜剧,动画,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (512, '艳舞女郎', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2126139368.jpg', NULL, '保罗·范霍文', NULL, '剧情,情色', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (513, '幽灵公主', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1613191025.jpg', NULL, '宫崎骏', NULL, '动画,奇幻,冒险', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (514, '薰衣草', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p614733852.jpg', NULL, '叶锦鸿', NULL, '爱情,奇幻', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (515, '卓别林', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2236690438.jpg', NULL, '理查德·阿滕伯勒', NULL, '剧情,传记', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (516, '怪房客', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2318513541.jpg', NULL, '罗曼·波兰斯基', NULL, '剧情,悬疑,惊悚', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (517, '麻将', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2327303475.jpg', NULL, '杨德昌', NULL, '剧情,喜剧', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (518, '爱到尽头', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1246907100.jpg', NULL, '尼尔·乔丹', NULL, '剧情,爱情', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (519, '超完美谋杀案', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2578851631.jpg', NULL, '安德鲁·戴维斯', NULL, '惊悚,犯罪', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (520, '新天龙八部之天山童姥', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2168076509.jpg', NULL, '钱永强', NULL, '动作,武侠,古装', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (521, '九品芝麻官', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p648370300.jpg', NULL, '王晶', NULL, '喜剧,古装', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (522, '艾玛', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2527171213.jpg', NULL, 'Douglas McGrath', NULL, '喜剧,爱情', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (523, '变相怪杰', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2043441362.jpg', NULL, '查克·拉塞尔', NULL, '喜剧,奇幻', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (524, '露西亚的情人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2163031990.jpg', NULL, '胡里奥·密谭', NULL, '剧情,爱情,情色', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (525, '虎豹小霸王', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p449568577.jpg', NULL, '乔治·罗伊·希尔', NULL, '剧情,犯罪,西部,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (526, '午夜牛郎', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2261560304.jpg', NULL, '约翰·施莱辛格', NULL, '剧情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (527, '第六感', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2220184425.jpg', NULL, 'M·奈特·沙马兰', NULL, '剧情,悬疑,惊悚', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (528, '心火', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562936999.jpg', NULL, '威廉姆·尼克尔森', NULL, '剧情,爱情', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (529, '茜茜公主', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2539792218.jpg', NULL, '恩斯特·马里施卡', NULL, '剧情,爱情,历史', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (530, '逍遥骑士', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1379548347.jpg', NULL, '丹尼斯·霍珀', NULL, '剧情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (531, '致命罗密欧', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1669831164.jpg', NULL, 'Andrzej Bartkowiak', NULL, '剧情,动作,爱情,惊悚,犯罪', 6, NULL);
INSERT INTO `myauth_movie_info` VALUES (532, '野兽刑警', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2028302298.jpg', NULL, '陈嘉上', NULL, '剧情,动作,悬疑,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (533, '少数派报告', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1431356464.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '科幻,惊悚,犯罪', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (534, '天若有情', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2564014416.jpg', NULL, '陈木胜', NULL, '剧情,动作,爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (535, '火星人玩转地球', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1079311904.jpg', NULL, '蒂姆·波顿', NULL, '喜剧,动作,科幻,惊悚,奇幻', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (536, '少林小子', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2242874295.jpg', NULL, '张鑫炎', NULL, '喜剧,动作,武侠,古装', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (537, '幸福时光', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2183481605.jpg', NULL, '张艺谋', NULL, '剧情,喜剧', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (538, '少林足球', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1127695736.jpg', NULL, '周星驰', NULL, '喜剧,动作,运动', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (539, '方世玉', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2186152223.jpg', NULL, '元奎', NULL, '喜剧,动作,武侠,古装', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (540, '马语者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p949388374.jpg', NULL, '罗伯特·雷德福', NULL, '剧情,爱情,西部', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (541, '鬼铃', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1982914916.jpg', NULL, '安兵基', NULL, '剧情,科幻,悬疑,惊悚,恐怖', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (542, '同居蜜友', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p549923725.jpg', NULL, '马伟豪', NULL, '喜剧,爱情', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (543, '武状元苏乞儿', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2002731301.jpg', NULL, '陈嘉上', NULL, '喜剧,动作,武侠,古装', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (544, '上海正午', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p900363862.jpg', NULL, '汤姆·戴伊', NULL, '喜剧,动作,西部,冒险', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (545, '马耳他之鹰', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2202798912.jpg', NULL, '约翰·休斯顿', NULL, '悬疑,犯罪,黑色电影', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (546, '水浒传之英雄本色', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2167120607.jpg', NULL, '陈会毅', NULL, '剧情,动作,武侠,古装', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (547, '窈窕淑女', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p842376184.jpg', NULL, '乔治·库克', NULL, '剧情,爱情,歌舞', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (548, '蝙蝠侠', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1502634335.jpg', NULL, '蒂姆·波顿', NULL, '动作,科幻', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (549, '杀死一只知更鸟', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2164106144.jpg', NULL, '罗伯特·马利根', NULL, '剧情,悬疑,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (550, '美女与野兽', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2238467474.jpg', NULL, '加里·特洛斯达勒', NULL, '喜剧,爱情,动画,歌舞,奇幻', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (551, '诺丁山', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480943589.jpg', NULL, '罗杰·米歇尔', NULL, '喜剧,爱情', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (552, '黑洞表面', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1444134477.jpg', NULL, '保罗·安德森', NULL, '科幻,悬疑,恐怖', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (553, '加勒比海盗', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1596085504.jpg', NULL, '戈尔·维宾斯基', NULL, '动作,奇幻,冒险', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (554, '硅谷传奇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1949178259.jpg', NULL, '马丁·伯克', NULL, '剧情,传记', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (555, '堕落天使', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p449524516.jpg', NULL, '王家卫', NULL, '剧情,喜剧,爱情,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (556, '小亲亲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2283607482.jpg', NULL, '奚仲文', NULL, '喜剧,爱情', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (557, '山水有相逢', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1226998472.jpg', NULL, '马伟豪', NULL, '喜剧', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (558, '西雅图未眠夜', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p480953026.jpg', NULL, '诺拉·艾芙隆', NULL, '剧情,喜剧,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (559, '阴阳路', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2558716557.jpg', NULL, '邱礼涛', NULL, '喜剧,惊悚,恐怖', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (560, '像鸡毛一样飞', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2186476991.jpg', NULL, '孟京辉', NULL, '剧情', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (561, '倾城之恋', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2164764721.jpg', NULL, '许鞍华', NULL, '剧情,爱情,战争', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (562, '忠狗', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1686398356.jpg', NULL, '克莱德·杰洛尼米', NULL, '喜剧,动画,家庭,冒险', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (563, '红色恋人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p939585430.jpg', NULL, '叶大鹰', NULL, '剧情,爱情,战争', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (564, '北京乐与路', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p482459451.jpg', NULL, '张婉婷', NULL, '剧情,歌舞', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (565, '胜者为王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1355179246.jpg', NULL, '刘伟强', NULL, '惊悚,犯罪', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (566, '莉琪的异想世界', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2204980160.jpg', NULL, '吉姆·弗尔', NULL, '喜剧,爱情,音乐,家庭,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (567, '巴顿将军', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1029244884.jpg', NULL, '富兰克林·沙夫纳', NULL, '剧情,传记,战争', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (568, '芭啦芭啦樱之花', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2553650344.jpg', NULL, '马楚成', NULL, '剧情,喜剧,爱情,歌舞', 6.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (569, '奏鸣曲', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1899389314.jpg', NULL, '北野武', NULL, '喜剧,动作,犯罪', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (570, '斯巴达克斯', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2201837965.jpg', NULL, '斯坦利·库布里克', NULL, '剧情,动作,传记,历史,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (571, '解构爱情狂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2099964935.jpg', NULL, '伍迪·艾伦', NULL, '剧情,喜剧,爱情,奇幻', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (572, '猛鬼街', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p471154636.jpg', NULL, '韦斯·克雷文', NULL, '惊悚,恐怖', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (573, '第三类接触', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2214707465.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,科幻', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (574, '三十九级台阶', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2250578848.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '悬疑,惊悚,犯罪', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (575, '邮差', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2537507687.jpg', NULL, '迈克尔·莱德福', NULL, '剧情,喜剧,爱情,传记', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (576, '高度戒备', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1630105655.jpg', NULL, '林岭东', NULL, '剧情,动作', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (577, '火车怪客', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2155823844.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '惊悚,犯罪,黑色电影', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (578, '史崔特先生的故事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1634826666.jpg', NULL, '大卫·林奇', NULL, '剧情,传记,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (579, '小妇人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2445191695.jpg', NULL, '吉莉安·阿姆斯特朗', NULL, '剧情,爱情,家庭', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (580, '木乃伊归来', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p847064824.jpg', NULL, '斯蒂芬·索莫斯', NULL, '动作,奇幻,冒险', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (581, '八脚怪', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p918428544.jpg', NULL, '埃洛瑞·埃卡伊姆', NULL, '喜剧,恐怖', 6, NULL);
INSERT INTO `myauth_movie_info` VALUES (582, '望夫成龙', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2349243229.jpg', NULL, '梁家树', NULL, '喜剧,爱情', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (583, '最后一班地铁', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2198125083.jpg', NULL, '弗朗索瓦·特吕弗', NULL, '剧情,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (584, '闻香识女人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2550757929.jpg', NULL, '马丁·布莱斯特', NULL, '剧情', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (585, '鸟人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p852618632.jpg', NULL, '艾伦·帕克', NULL, '剧情,战争', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (586, '赌圣', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1148006580.jpg', NULL, '元奎', NULL, '喜剧,动作', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (587, '荒岛余生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2207673534.jpg', NULL, '罗伯特·泽米吉斯', NULL, '剧情,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (588, '阿玛柯德', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p771183436.jpg', NULL, '费德里科·费里尼', NULL, '剧情,喜剧', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (589, '恐龙', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2197696691.jpg', NULL, '埃里克·莱顿', NULL, '动画,冒险', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (590, '贴身情人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2514837471.jpg', NULL, '马克·劳伦斯', NULL, '喜剧,爱情', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (591, '日落大道', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1119483806.jpg', NULL, '比利·怀德', NULL, '剧情,黑色电影', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (592, '十二猴子', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p627041570.jpg', NULL, '特瑞·吉列姆', NULL, '科幻,悬疑,惊悚', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (593, '刘三姐', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2502176435.jpg', NULL, '苏里', NULL, '剧情,音乐,戏曲', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (594, '狗镇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p462102607.jpg', NULL, '拉斯·冯·提尔', NULL, '剧情,悬疑,惊悚', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (595, '新仙鹤神针', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2250831862.jpg', NULL, '陈木胜', NULL, '剧情,动作,武侠,古装', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (596, '淘金记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1581774481.jpg', NULL, '查理·卓别林', NULL, '喜剧,爱情,西部,冒险', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (597, '神偷次世代', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2165157268.jpg', NULL, '叶伟信', NULL, '动作', 5.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (598, '海滩的一天', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2491461655.jpg', NULL, '杨德昌', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (599, '黄河绝恋', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2364345603.jpg', NULL, '冯小宁', NULL, '剧情,战争', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (600, '暗战', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2001994907.jpg', NULL, '杜琪峰', NULL, '剧情,动作,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (601, '卡桑德拉大桥', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1971441788.jpg', NULL, '乔治 P·科斯马图斯', NULL, '剧情,动作,惊悚,灾难', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (602, '我心狂野', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1218720978.jpg', NULL, '大卫·林奇', NULL, '爱情,惊悚,犯罪', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (603, '铁血战士', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2101543383.jpg', NULL, '约翰·麦克蒂尔南', NULL, '动作,科幻,惊悚,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (604, '心动的感觉', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2377321054.jpg', NULL, '克洛德·皮诺托', NULL, '喜剧,爱情', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (605, '绝世宝贝', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p482187455.jpg', NULL, '梁柏坚', NULL, '喜剧', 5.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (606, '人生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2453108586.jpg', NULL, '吴天明', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (607, '香草的天空', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p541484436.jpg', NULL, '卡梅伦·克罗', NULL, '爱情,科幻,悬疑,惊悚', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (608, '倚天屠龙记之魔教教主', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1655212378.jpg', NULL, '王晶', NULL, '动作,奇幻,武侠,古装', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (609, '坏孩子的天空', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2460951078.jpg', NULL, '北野武', NULL, '剧情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (610, '一诺千金', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1651159323.jpg', NULL, '让-皮埃尔·达内', NULL, '剧情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (611, '后窗', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p998913501.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '悬疑,惊悚', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (612, '冬冬的假期', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2347250205.jpg', NULL, '侯孝贤', NULL, '剧情,儿童', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (613, '恐怖角', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1280557643.jpg', NULL, '马丁·斯科塞斯', NULL, '惊悚,犯罪', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (614, '鬼玩人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2177138783.jpg', NULL, '山姆·雷米', NULL, '喜剧,恐怖,奇幻', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (615, '计划续集', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2204526758.jpg', NULL, '成龙', NULL, '喜剧,动作,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (616, '黑玫瑰对黑玫瑰', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2419943950.jpg', NULL, '刘镇伟', NULL, '喜剧,动作,爱情,歌舞', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (617, '感官游戏', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1713355242.jpg', NULL, '大卫·柯南伯格', NULL, '科幻,惊悚,冒险', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (618, '毒品网络', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p817029842.jpg', NULL, '史蒂文·索德伯格', NULL, '剧情,惊悚,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (619, '郁金香芳芳', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p813148464.jpg', NULL, '热拉尔·克瓦兹克', NULL, '喜剧,爱情,冒险', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (620, '给爸爸的信', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2352180519.jpg', NULL, '元奎', NULL, '动作', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (621, '红色沙漠', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2248487533.jpg', NULL, '米开朗基罗·安东尼奥尼', NULL, '剧情', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (622, '胭脂扣', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2205476838.jpg', NULL, '关锦鹏', NULL, '剧情,爱情,奇幻', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (623, '夜访吸血鬼', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1353910572.jpg', NULL, '尼尔·乔丹', NULL, '剧情,惊悚,奇幻', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (624, '我左眼见到鬼', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2003160703.jpg', NULL, '杜琪峰', NULL, '喜剧,爱情,恐怖,家庭', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (625, '最后的武士', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1431406518.jpg', NULL, '爱德华·兹威克', NULL, '剧情,动作,历史,战争,冒险', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (626, '大话西游之月光宝盒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561721372.jpg', NULL, '刘镇伟', NULL, '喜剧,爱情,奇幻,古装', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (627, '风柜来的人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2197299205.jpg', NULL, '侯孝贤', NULL, '剧情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (628, '霹雳火', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1974113927.jpg', NULL, '陈嘉上', NULL, '动作', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (629, '死亡实验', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2212665365.jpg', NULL, '奥利弗·希施比格尔', NULL, '剧情,惊悚', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (630, '阿拉丁', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1833285442.jpg', NULL, '罗恩·克莱蒙兹', NULL, '喜剧,动画,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (631, '行运一条龙', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1148042187.jpg', NULL, '李力持', NULL, '剧情,喜剧,爱情', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (632, '深渊', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209378207.jpg', NULL, '詹姆斯·卡梅隆', NULL, '剧情,科幻,惊悚,冒险', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (633, '我盛大的希腊婚礼', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p850337474.jpg', NULL, '乔尔·兹维克', NULL, '喜剧,爱情', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (634, '绿洲', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2371311227.jpg', NULL, '李沧东', NULL, '剧情,爱情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (635, '月光光心慌慌', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2177127286.jpg', NULL, '约翰·卡朋特', NULL, '惊悚,恐怖', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (636, '落水狗', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1851340431.jpg', NULL, '昆汀·塔伦蒂诺', NULL, '惊悚,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (637, '半生缘', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1526661173.jpg', NULL, '许鞍华', NULL, '剧情,爱情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (638, '马戏团', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1959764913.jpg', NULL, '查理·卓别林', NULL, '喜剧,爱情', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (639, '宝莲灯', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2195312435.jpg', NULL, '常光希', NULL, '动画', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (640, '龙虎风云', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2166041332.jpg', NULL, '林岭东', NULL, '剧情,动作,惊悚,犯罪', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (641, '六天七夜', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1894343615.jpg', NULL, '伊万·雷特曼', NULL, '动作,爱情,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (642, '驱魔警察', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2162764447.jpg', NULL, '董玮', NULL, '喜剧,动作,奇幻', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (643, '整蛊专家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2222649480.jpg', NULL, '王晶', NULL, '喜剧,爱情', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (644, '第六感生死缘', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p511183278.jpg', NULL, '马丁·布莱斯特', NULL, '剧情,爱情,悬疑,奇幻', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (645, '赌城风云', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1236519296.jpg', NULL, '马丁·斯科塞斯', NULL, '剧情,传记,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (646, '大力士', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1833038181.jpg', NULL, '约翰·马斯克', NULL, '喜剧,爱情,动画,歌舞,奇幻,冒险', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (647, '玩偶', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1462821088.jpg', NULL, '北野武', NULL, '剧情,爱情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (648, '太阳帝国', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p506639780.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,动作,战争', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (649, '龙兄虎弟', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2346966817.jpg', NULL, '成龙', NULL, '喜剧,动作,冒险', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (650, '暗恋桃花源', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2194108903.jpg', NULL, '赖声川', NULL, '剧情,喜剧,爱情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (651, '逃学英雄传', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1610992498.jpg', NULL, '王晶', NULL, '喜剧', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (652, '亚当斯一家的价值观', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p652970475.jpg', NULL, '巴里·索南菲尔德', NULL, '喜剧,惊悚,家庭,奇幻', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (653, '喜福会', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1269318004.jpg', NULL, '王颖', NULL, '剧情,爱情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (654, '小鬼当街', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p652974784.jpg', NULL, '帕特里克·里德·约翰逊', NULL, '喜剧,冒险', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (655, '重案组', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2207572277.jpg', NULL, '成龙', NULL, '剧情,动作,犯罪', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (656, '惊声尖笑', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1231134565.jpg', NULL, '基伦·埃弗瑞·韦恩斯', NULL, '喜剧', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (657, '王尔德', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1527574198.jpg', NULL, '布莱恩·吉尔伯特', NULL, '剧情,同性,传记,历史', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (658, '德尔苏', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2206328338.jpg', NULL, '黑泽明', NULL, '剧情,冒险', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (659, '谋杀绿脚趾', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2225804430.jpg', NULL, '乔尔·科恩', NULL, '喜剧,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (660, '四百击', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2191743027.jpg', NULL, '弗朗索瓦·特吕弗', NULL, '剧情,犯罪', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (661, '家有喜事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p940263436.jpg', NULL, '高志森', NULL, '剧情,喜剧,爱情,家庭', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (662, '赌侠', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2358906814.jpg', NULL, '王晶', NULL, '喜剧', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (663, '小姐与流浪汉', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1833123892.jpg', NULL, '克莱德·杰洛尼米', NULL, '喜剧,爱情,动画,冒险', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (664, '鬼娃回魂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1302801606.jpg', NULL, '汤姆·霍兰德', NULL, '惊悚,恐怖', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (665, '尸家重地', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2332476790.jpg', NULL, '刘镇伟', NULL, '喜剧,恐怖', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (666, '千钧一发', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2195672555.jpg', NULL, '安德鲁·尼科尔', NULL, '剧情,科幻,惊悚', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (667, '森林泰山', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2254790965.jpg', NULL, '萨姆·韦斯曼', NULL, '喜剧,动作,爱情,家庭,冒险', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (668, '情迷六月花', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2262572848.jpg', NULL, '菲利普·考夫曼', NULL, '剧情,情色,传记', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (669, '古惑仔激情篇之洪兴大飞哥', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2515570681.jpg', NULL, '梁宏发', NULL, '剧情', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (670, '月亮上的男人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1950529895.jpg', NULL, '米洛斯·福尔曼', NULL, '剧情,喜剧,传记', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (671, '莎翁情史', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p827467635.jpg', NULL, '约翰·马登', NULL, '剧情,喜剧,爱情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (672, '安娜与国王', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2191675270.jpg', NULL, '安迪·坦纳特', NULL, '剧情,喜剧,爱情,历史', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (673, '六指琴魔', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2219052072.jpg', NULL, '吴勉勤', NULL, '动作,武侠,古装', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (674, '阳光下的罪恶', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173899581.jpg', NULL, '盖伊·汉弥尔顿', NULL, '悬疑,犯罪', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (675, '乱世佳人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1963126880.jpg', NULL, '维克多·弗莱明', NULL, '剧情,爱情,历史,战争', 9.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (676, '大开眼戒', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1708137969.jpg', NULL, '斯坦利·库布里克', NULL, '剧情,悬疑,惊悚,情色', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (677, '谍海计中计', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p854752982.jpg', NULL, '罗杰·唐纳森', NULL, '剧情,动作,惊悚', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (678, '杀人回忆', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480225538.jpg', NULL, '奉俊昊', NULL, '剧情,悬疑,惊悚,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (679, '死神来了', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1332799477.jpg', NULL, '黄毅瑜', NULL, '惊悚,恐怖', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (680, '我是谁', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1387036685.jpg', NULL, '陈木胜', NULL, '喜剧,动作,科幻,冒险', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (681, '烈火战车', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2354868018.jpg', NULL, '刘伟强', NULL, '动作,惊悚', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (682, '之八爪女', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1725339245.jpg', NULL, '约翰·格兰', NULL, '动作,惊悚,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (683, '熊的故事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2454268056.jpg', NULL, '让-雅克·阿诺', NULL, '剧情', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (684, '巴黎最后的探戈', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p449648766.jpg', NULL, '贝纳尔多·贝托鲁奇', NULL, '剧情,爱情,情色', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (685, '大块头有大智慧', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1179163130.jpg', NULL, '杜琪峰', NULL, '剧情,动作,惊悚', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (686, '绿里奇迹', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p767586451.jpg', NULL, '弗兰克·德拉邦特', NULL, '剧情,悬疑,犯罪,奇幻', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (687, '中华赌侠', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2263999777.jpg', NULL, '程小东', NULL, '喜剧,动作', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (688, '德州电锯杀人狂', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2187475358.jpg', NULL, '托比·霍珀', NULL, '悬疑,恐怖', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (689, '愈爱愈美丽', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2456957300.jpg', NULL, '希提·麦克唐纳', NULL, '剧情,喜剧,爱情,同性', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (690, '百变星君', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563027293.jpg', NULL, '叶伟民', NULL, '喜剧,科幻,奇幻', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (691, '男孩别哭', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1526525011.jpg', NULL, '金伯莉·皮尔斯', NULL, '剧情,爱情,同性,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (692, '童年往事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2259777287.jpg', NULL, '侯孝贤', NULL, '剧情,家庭,传记', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (693, '烈火情人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1326984387.jpg', NULL, '路易·马勒', NULL, '剧情,爱情,情色', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (694, '土拨鼠之日', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2493191199.jpg', NULL, '哈罗德·雷米斯', NULL, '剧情,喜剧,爱情,奇幻', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (695, '买凶拍人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1361412292.jpg', NULL, '彭浩翔', NULL, '喜剧,动作,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (696, '空中监狱', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p946632521.jpg', NULL, '西蒙·韦斯特', NULL, '动作,惊悚,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (697, '空中大灌篮', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p843918684.jpg', NULL, '乔·皮特卡', NULL, '喜剧,动画,运动', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (698, '没事偷着乐', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2520374588.jpg', NULL, '杨亚洲', NULL, '喜剧', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (699, '克莱默夫妇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1646672189.jpg', NULL, '罗伯特·本顿', NULL, '剧情,家庭', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (700, '飞龙猛将', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1994755138.jpg', NULL, '洪金宝', NULL, '喜剧,动作,爱情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (701, '枪火', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1538646661.jpg', NULL, '杜琪峰', NULL, '剧情,动作,犯罪', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (702, '人性污点', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p810181632.jpg', NULL, '罗伯特·本顿', NULL, '剧情,爱情,惊悚', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (703, '美人计', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1314023106.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '剧情,爱情,惊悚', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (704, '狂蟒之灾', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1261715918.jpg', NULL, '路易斯·罗沙', NULL, '动作,惊悚,冒险,灾难', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (705, '侠盗高飞', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2350173717.jpg', NULL, '林岭东', NULL, '剧情,动作,惊悚,犯罪', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (706, '瓶中信', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p926595392.jpg', NULL, '路易斯·曼多基', NULL, '剧情,爱情', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (707, '赌神', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1986001156.jpg', NULL, '王晶', NULL, '剧情,喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (708, '城南旧事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2178268394.jpg', NULL, '吴贻弓', NULL, '剧情', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (709, '魂断威尼斯', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2003693471.jpg', NULL, '卢基诺·维斯康蒂', NULL, '剧情,同性', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (710, '超人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p726824081.jpg', NULL, '理查德·唐纳', NULL, '动作,科幻,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (711, '冰风暴', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p791145802.jpg', NULL, '李安', NULL, '剧情,家庭', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (712, '沉默', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1886928672.jpg', NULL, '英格玛·伯格曼', NULL, '剧情', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (713, '独行杀手', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2276173501.jpg', NULL, '让-皮埃尔·梅尔维尔', NULL, '剧情,悬疑,惊悚,犯罪', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (714, '完美的世界', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792403691.jpg', NULL, '克林特·伊斯特伍德', NULL, '剧情,犯罪', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (715, '革命往事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2206010357.jpg', NULL, '赛尔乔·莱昂内', NULL, '战争,西部,冒险', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (716, '垂帘听政', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2206399076.jpg', NULL, '李翰祥', NULL, '剧情,历史,古装', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (717, '狼族盟约', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1623008321.jpg', NULL, '克里斯多夫·甘斯', NULL, '动作,悬疑,恐怖,历史', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (718, '真狗', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1686549296.jpg', NULL, '凯文·利玛', NULL, '喜剧,冒险', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (719, '卧虎藏龙', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1507810991.jpg', NULL, '李安', NULL, '剧情,爱情,武侠', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (720, '跳出我天地', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p531278288.jpg', NULL, '史蒂芬·戴德利', NULL, '剧情,歌舞,家庭,儿童', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (721, '偷拐抢骗', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p616753227.jpg', NULL, '盖·里奇', NULL, '喜剧,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (722, '擒凶记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1974127691.jpg', NULL, '阿尔弗雷德·希区柯克', NULL, '剧情,悬疑', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (723, '九一神雕侠侣', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2178262395.jpg', NULL, '元奎', NULL, '剧情,动作,爱情,科幻,奇幻', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (724, '偷窥', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2136057502.jpg', NULL, '菲利普·诺伊斯', NULL, '爱情,惊悚,情色', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (725, '杀出个黎明', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1776544990.jpg', NULL, '罗伯特·罗德里格兹', NULL, '动作,恐怖,犯罪', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (726, '极度恐慌', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2192051048.jpg', NULL, '沃尔夫冈·彼德森', NULL, '剧情,科幻,惊悚,灾难', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (727, '夺宝奇兵', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1709116195.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '动作,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (728, '小岛惊魂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p492298664.jpg', NULL, '亚历杭德罗·阿梅纳瓦尔', NULL, '剧情,悬疑,恐怖', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (729, '地球之夜', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p957052935.jpg', NULL, '吉姆·贾木许', NULL, '剧情,喜剧', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (730, '修女也疯狂', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2461439892.jpg', NULL, '埃米利·阿朵里诺', NULL, '喜剧,音乐,犯罪', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (731, '少年阿虎', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2456641081.jpg', NULL, '李仁港', NULL, '剧情,动作,爱情', 6, NULL);
INSERT INTO `myauth_movie_info` VALUES (732, '十一罗汉', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1973370351.jpg', NULL, '史蒂文·索德伯格', NULL, '惊悚,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (733, '苦月亮', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p700187064.jpg', NULL, '罗曼·波兰斯基', NULL, '剧情,爱情,惊悚,情色', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (734, '不一样的天空', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2175712032.jpg', NULL, '拉斯·霍尔斯道姆', NULL, '剧情,爱情,家庭', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (735, '不死劫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2199134149.jpg', NULL, 'M·奈特·沙马兰', NULL, '悬疑,惊悚,犯罪', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (736, '美国精神病人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2460996826.jpg', NULL, '玛丽·哈伦', NULL, '剧情,惊悚,犯罪', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (737, '绝恋', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2338916098.jpg', NULL, '迈克尔·温特伯顿', NULL, '剧情,爱情', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (738, '汉尼拔', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p613321434.jpg', NULL, '雷德利·斯科特', NULL, '惊悚,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (739, '狮子王', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2277799019.jpg', NULL, '罗杰·阿勒斯', NULL, '动画,歌舞,冒险', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (740, '幻想曲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p643090411.jpg', NULL, '詹姆斯·阿尔格', NULL, '动画,音乐,奇幻', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (741, '不法之徒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1616290291.jpg', NULL, '吉姆·贾木许', NULL, '剧情,喜剧,犯罪', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (742, '鳄鱼波鞋走天涯', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2188484411.jpg', NULL, '彼得·霍顿', NULL, '剧情,儿童', 9.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (743, '一九八四', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1073879508.jpg', NULL, '迈克尔·莱德福', NULL, '剧情,爱情,科幻,惊悚', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (744, '烈日灼人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p799102683.jpg', NULL, '尼基塔·米哈尔科夫', NULL, '剧情,历史', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (745, '阿虎', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2356225852.jpg', NULL, '李仁港', NULL, '剧情,爱情', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (746, '居家男人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p622619176.jpg', NULL, '布莱特·拉特纳', NULL, '剧情,喜剧,爱情,家庭,奇幻', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (747, '浓情巧克力', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p703826185.jpg', NULL, '拉斯·霍尔斯道姆', NULL, '剧情,爱情', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (748, '何处是我朋友的家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p740033093.jpg', NULL, '阿巴斯·基亚罗斯塔米', NULL, '剧情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (749, '背起爸爸上学', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2522284036.jpg', NULL, '周友朝', NULL, '剧情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (750, '梦旅人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p481965652.jpg', NULL, '岩井俊二', NULL, '剧情,奇幻', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (751, '广岛之恋', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2356864113.jpg', NULL, '阿伦·雷乃', NULL, '剧情,爱情,战争', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (752, '金枝玉叶', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p939948826.jpg', NULL, '陈可辛', NULL, '喜剧,同性', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (753, '德州巴黎', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p544482294.jpg', NULL, '维姆·文德斯', NULL, '剧情', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (754, '尼罗河上的惨案', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2366278130.jpg', NULL, '约翰·吉勒明', NULL, '剧情,悬疑,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (755, '十二夜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2176182513.jpg', NULL, '林爱华', NULL, '剧情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (756, '加油站袭击事件', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1837011657.jpg', NULL, '金相辰', NULL, '喜剧', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (757, '白头神探', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2136952828.jpg', NULL, '大卫·扎克', NULL, '喜剧,动作,爱情,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (758, '星际之门', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1495387023.jpg', NULL, '罗兰·艾默里奇', NULL, '动作,科幻,奇幻,冒险', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (759, '神女', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2028929312.jpg', NULL, '吴永刚', NULL, '剧情', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (760, '特务迷城', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1387053792.jpg', NULL, '陈德森', NULL, '喜剧,动作,惊悚', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (761, '的士速递', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1339506474.jpg', NULL, '热拉尔·克瓦兹克', NULL, '喜剧,动作,犯罪', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (762, '原罪', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563026581.jpg', NULL, '迈克尔·克里斯托弗', NULL, '剧情,爱情,悬疑,情色', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (763, '毁灭之路', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1593635978.jpg', NULL, '萨姆·门德斯', NULL, '剧情,惊悚,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (764, '活色生香', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1437330884.jpg', NULL, '佩德罗·阿莫多瓦', NULL, '剧情,爱情,惊悚,情色', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (765, '甜蜜十一月', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1188968652.jpg', NULL, '帕特·奥康纳', NULL, '剧情,爱情', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (766, '喜剧之王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1043597424.jpg', NULL, '周星驰', NULL, '剧情,喜剧,爱情', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (767, '佛莱迪大战杰森', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1904247948.jpg', NULL, '于仁泰', NULL, '惊悚,恐怖', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (768, '机动部队', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p793201686.jpg', NULL, '杜琪峰', NULL, '剧情,犯罪', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (769, '风雨同路', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2168677130.jpg', NULL, '黄柏文', NULL, '动作', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (770, '宋家皇朝', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2417829396.jpg', NULL, '张婉婷', NULL, '剧情,爱情,历史', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (771, '阿育王', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2196649757.jpg', NULL, '桑托什·斯万', NULL, '剧情,动作,爱情,历史,战争', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (772, '麦兜故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p804938713.jpg', NULL, '袁建滔', NULL, '剧情,喜剧,动画', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (773, '荒野大镖客', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178157710.jpg', NULL, '赛尔乔·莱昂内', NULL, '动作,西部', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (774, '血迷宫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2170091759.jpg', NULL, '乔尔·科恩', NULL, '剧情,惊悚,犯罪', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (775, '八月狂想曲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1590624711.jpg', NULL, '黑泽明', NULL, '剧情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (776, '花火', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513347103.jpg', NULL, '北野武', NULL, '剧情,爱情,犯罪', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (777, '奇门遁甲', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2344677928.jpg', NULL, '袁和平', NULL, '喜剧,动作,奇幻,古装', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (778, '飞天小女警', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2257978711.jpg', NULL, '克雷格·迈克科雷肯', NULL, '动画,家庭,奇幻,冒险', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (779, '双城故事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2228233904.jpg', NULL, '陈可辛', NULL, '剧情,爱情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (780, '人鱼传说', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2459834795.jpg', NULL, '罗文', NULL, '喜剧,爱情,奇幻', 7.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (781, '夏天的故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1404178381.jpg', NULL, '埃里克·侯麦', NULL, '剧情,爱情', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (782, '飞鹰计划', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1975184595.jpg', NULL, '成龙', NULL, '喜剧,动作,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (783, '失忆界女王', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p486551329.jpg', NULL, '马楚成', NULL, '喜剧,爱情', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (784, '我爱贝克汉姆', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p785902518.jpg', NULL, '顾伦德·查达哈', NULL, '剧情,喜剧,爱情,运动', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (785, '茉莉花开', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1008950338.jpg', NULL, '侯咏', NULL, '剧情,爱情,家庭', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (786, '人工智能', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792257137.jpg', NULL, '史蒂文·斯皮尔伯格', NULL, '剧情,科幻,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (787, '傲慢与偏见', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1353557903.jpg', NULL, 'Robert Z. Leonard', NULL, '剧情,爱情', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (788, '珍珠港', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1340424701.jpg', NULL, '迈克尔·贝', NULL, '剧情,爱情,历史,战争', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (789, '蒙娜丽莎的微笑', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p701334998.jpg', NULL, '迈克·内威尔', NULL, '剧情,爱情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (790, '喜马拉雅', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2238295864.jpg', NULL, '埃里克·瓦力', NULL, '剧情,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (791, '小鞋子', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2173580536.jpg', NULL, '马基德·马基迪', NULL, '剧情,家庭,儿童', 9.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (792, '暴雨将至', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p470344042.jpg', NULL, '米尔科·曼彻夫斯基', NULL, '剧情,战争', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (793, '喜宴', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2173713676.jpg', NULL, '李安', NULL, '剧情,喜剧,爱情,同性,家庭', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (794, '莫斯科不相信眼泪', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2542279117.jpg', NULL, '弗拉基米尔·缅绍夫', NULL, '剧情,喜剧,爱情', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (795, '望乡', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2151476445.jpg', NULL, '熊井启', NULL, '剧情,历史,战争', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (796, '饥饿游戏', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2282434035.jpg', NULL, '弗朗西斯·劳伦斯', NULL, '动作,科幻,冒险', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (797, '弯刀杀戮', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2156580336.jpg', NULL, '罗伯特·罗德里格兹', NULL, '动作,惊悚,犯罪', 5.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (798, '毒战', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1924498395.jpg', NULL, '杜琪峰', NULL, '剧情,动作,犯罪', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (799, '小屁孩日记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1707153400.jpg', NULL, '大卫·博维斯', NULL, '喜剧,家庭', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (800, '流感', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2029391129.jpg', NULL, '金成洙', NULL, '剧情,惊悚,灾难', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (801, '新世界', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1903379979.jpg', NULL, '朴勋政', NULL, '剧情,犯罪', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (802, '创可贴', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1768410538.jpg', NULL, '郑基训', NULL, '剧情,爱情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (803, '狼狈', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1628688457.jpg', NULL, '蜷川实花', NULL, '剧情,惊悚,犯罪', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (804, '波西', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2011353623.jpg', NULL, '托尔·弗罗伊登塔尔', NULL, '动作,奇幻,冒险', 5.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (805, '最后的巫师猎人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2305094811.jpg', NULL, '布瑞克·埃斯纳尔', NULL, '动作,奇幻,冒险', 5.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (806, '侏罗纪世界', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2246217861.jpg', NULL, '科林·特雷沃罗', NULL, '动作,科幻,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (807, '朋友', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2154816416.jpg', NULL, '郭暻泽', NULL, '动作', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (808, '赛德克', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1520558918.jpg', NULL, '魏德圣', NULL, '剧情,历史,战争', 8.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (809, '人类清除计划', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2239278955.jpg', NULL, '詹姆斯·德莫纳克', NULL, '科幻,惊悚,犯罪', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (810, '盟军夺宝队', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2174990264.jpg', NULL, '乔治·克鲁尼', NULL, '剧情,传记,历史,战争', 5.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (811, '黑金杀机', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2131742084.jpg', NULL, '雷德利·斯科特', NULL, '剧情,惊悚,犯罪', 5.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (812, '模仿游戏', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2255040492.jpg', NULL, '莫滕·泰杜姆', NULL, '剧情,同性,传记,战争', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (813, '私奔', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2153192509.jpg', NULL, '帕斯卡尔·舒梅', NULL, '喜剧,爱情,冒险', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (814, '鬼打墙', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2377927205.jpg', NULL, '杰克·海勒', NULL, '悬疑,惊悚', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (815, '双重人格', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2154753212.jpg', NULL, '理查德·艾欧阿德', NULL, '剧情,惊悚', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (816, '维克多', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2263543773.jpg', NULL, '保罗·麦圭根', NULL, '剧情,科幻,恐怖', 6.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (817, '海贼王剧场版', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1790937541.jpg', NULL, '长峰达也', NULL, '动作,动画,冒险', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (818, '孙子从美国来', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2157878128.jpg', NULL, '曲江涛', NULL, '剧情,家庭,儿童', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (819, '大野狼和小绵羊的爱情', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1712347347.jpg', NULL, '侯季然', NULL, '剧情,爱情', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (820, '唐璜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2163472540.jpg', NULL, '约瑟夫·高登-莱维特', NULL, '剧情,喜剧,爱情', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (821, '横道世之介', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2021127692.jpg', NULL, '冲田修一', NULL, '剧情,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (822, '天空之眼', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2411665175.jpg', NULL, '加文·胡德', NULL, '剧情,战争', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (823, '一切尽失', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2153382561.jpg', NULL, 'J·C·尚多尔', NULL, '剧情,灾难', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (824, '潜伏', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2044151740.jpg', NULL, '温子仁', NULL, '惊悚,恐怖', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (825, '怒火保镖', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2232111071.jpg', NULL, '西蒙·韦斯特', NULL, '剧情,动作,犯罪', 5.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (826, '圣殇', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1699450600.jpg', NULL, '金基德', NULL, '剧情', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (827, '布拉芙夫人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2202212337.jpg', NULL, '任弼星', NULL, '爱情,惊悚,情色', 5.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (828, '邻居', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1600144202.jpg', NULL, '金辉', NULL, '剧情,惊悚', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (829, '青魇', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1594175844.jpg', NULL, '邱礼涛', NULL, '剧情,悬疑,恐怖', 6.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (830, '匹夫', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1514157926.jpg', NULL, '杨树鹏', NULL, '剧情,动作,战争,西部', 5.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (831, '切尔诺贝利日记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1727072001.jpg', NULL, '布莱德利·帕克', NULL, '恐怖', 5.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (832, '极地大冒险', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2164199913.jpg', NULL, '卡里·尤索宁', NULL, '剧情,喜剧,动画,冒险', 6, NULL);
INSERT INTO `myauth_movie_info` VALUES (833, '银翼杀手', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg', NULL, '丹尼斯·维伦纽瓦', NULL, '剧情,科幻,惊悚', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (834, '山之外', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1717932845.jpg', NULL, '克里斯蒂安·蒙吉', NULL, '剧情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (835, '头脑特工队', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2266293606.jpg', NULL, '彼特·道格特', NULL, '喜剧,动画,冒险', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (836, '突袭', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2178368429.jpg', NULL, '加雷斯·埃文斯', NULL, '剧情,动作,犯罪', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (837, '阿黛尔的生活', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2162563238.jpg', NULL, '阿布戴·柯西胥', NULL, '剧情,爱情,同性', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (838, '大上海', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1786466478.jpg', NULL, '王晶', NULL, '剧情,动作', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (839, '鲁邦三世', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2185434060.jpg', NULL, '北村龙平', NULL, '剧情,动作,犯罪', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (840, '黄金时代', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2167320927.jpg', NULL, '许鞍华', NULL, '剧情,爱情,传记', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (841, '龙虎少年队', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2177364785.jpg', NULL, '菲尔·罗德', NULL, '喜剧,动作,犯罪', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (842, '魔法黑森林', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2213538065.jpg', NULL, '罗伯·马歇尔', NULL, '喜剧,歌舞,奇幻,冒险', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (843, '坚不可摧', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2222056402.jpg', NULL, '安吉丽娜·朱莉', NULL, '剧情,传记,战争,运动', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (844, '在我入睡前', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2195916228.jpg', NULL, '罗温·乔夫', NULL, '悬疑,惊悚', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (845, '草莓之夜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1805353057.jpg', NULL, '佐藤祐市', NULL, '惊悚', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (846, '扎职', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1755106338.jpg', NULL, '陈翊恒', NULL, '犯罪', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (847, '宿敌', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2145705774.jpg', NULL, '丹尼斯·维伦纽瓦', NULL, '剧情,悬疑,惊悚', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (848, '嫌疑人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2159702691.jpg', NULL, '元新渊', NULL, '动作', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (849, '观相', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2112449528.jpg', NULL, '韩在林', NULL, '剧情,历史,古装', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (850, '共犯', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2155399263.jpg', NULL, '国东锡', NULL, '惊悚,犯罪', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (851, '愤怒的小孩', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1850828493.jpg', NULL, '黄雷', NULL, '喜剧,儿童', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (852, '剧场版魔法少女小圆', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2151582333.jpg', NULL, '宫本幸裕', NULL, '动画', 9, NULL);
INSERT INTO `myauth_movie_info` VALUES (853, '如父如子', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2154079590.jpg', NULL, '是枝裕和', NULL, '剧情,家庭', 8.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (854, '北京遇上西雅图', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1878328589.jpg', NULL, '薛晓路', NULL, '喜剧,爱情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (855, '李可乐寻人记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2168345843.jpg', NULL, '周伟', NULL, '喜剧,爱情', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (856, '人再囧途之泰囧', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1793720172.jpg', NULL, '徐峥', NULL, '喜剧', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (857, '蓝色茉莉', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1978807112.jpg', NULL, '伍迪·艾伦', NULL, '剧情,家庭', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (858, '时空恋旅人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2070153774.jpg', NULL, '理查德·柯蒂斯', NULL, '喜剧,爱情,奇幻', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (859, '浮城大亨', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2210662696.jpg', NULL, '严浩', NULL, '剧情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (860, '爱情不', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1852163134.jpg', NULL, '朱时茂', NULL, '喜剧,爱情', 5, NULL);
INSERT INTO `myauth_movie_info` VALUES (861, '实习生', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2260497287.jpg', NULL, '南希·迈耶斯', NULL, '喜剧', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (862, '空中营救', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2199638985.jpg', NULL, '佐米·希尔拉', NULL, '动作,悬疑,惊悚,灾难', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (863, '圣诞玫瑰', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1962923729.jpg', NULL, '杨采妮', NULL, '剧情,悬疑,犯罪', 6.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (864, '不二神探', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2006870496.jpg', NULL, '王子鸣', NULL, '喜剧,动作,犯罪', 4.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (865, '四大名捕', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2158164038.jpg', NULL, '陈嘉上', NULL, '动作,悬疑,奇幻,武侠,古装', 5, NULL);
INSERT INTO `myauth_movie_info` VALUES (866, '四大名捕大结局', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2194662832.jpg', NULL, '陈嘉上', NULL, '动作,爱情,悬疑,武侠,古装', 4.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (867, '私人订制', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2159261731.jpg', NULL, '冯小刚', NULL, '喜剧', 5.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (868, '男人如衣服', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1690508139.jpg', NULL, '谷德昭', NULL, '喜剧,爱情', 5, NULL);
INSERT INTO `myauth_movie_info` VALUES (869, '女尸谜案', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1725734834.jpg', NULL, '奥里奥尔·保罗', NULL, '惊悚', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (870, '杀戒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1973515273.jpg', NULL, '章家瑞', NULL, '爱情,悬疑', 5.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (871, '窃听风云', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2182457355.jpg', NULL, '麦兆辉', NULL, '动作,悬疑,惊悚,犯罪', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (872, '两个月亮', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1641715477.jpg', NULL, '金东濒', NULL, '恐怖', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (873, '想爱就爱', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1806703157.jpg', NULL, '萨拉萨瓦蒂·翁索姆佩奇', NULL, '剧情,爱情', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (874, '在一起', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1863378643.jpg', NULL, '霍耀良', NULL, '爱情', 3.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (875, '布鲁克林', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2266027536.jpg', NULL, '约翰·克劳利', NULL, '剧情,爱情', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (876, '我的个神啊', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2243803873.jpg', NULL, '拉吉库马尔·希拉尼', NULL, '喜剧,奇幻', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (877, '复仇者联盟', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2237747953.jpg', NULL, '乔斯·韦登', NULL, '动作,科幻,奇幻,冒险', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (878, '奥林匹斯的陷落', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2162364777.jpg', NULL, '安东尼·福奎阿', NULL, '动作,犯罪', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (879, '冒牌家庭', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1996365758.jpg', NULL, '罗森·马歇尔·瑟伯', NULL, '喜剧', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (880, '惊天危机', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2039109399.jpg', NULL, '罗兰·艾默里奇', NULL, '动作,灾难', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (881, '阿修罗', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1610184632.jpg', NULL, '佐藤敬一', NULL, '动画,恐怖,历史', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (882, '秘鲁大冒险', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1689945374.jpg', NULL, '安立奎·高德', NULL, '动画,冒险', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (883, '汉娜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1865907521.jpg', NULL, '玛加蕾特·冯·特罗塔', NULL, '剧情,传记', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (884, '非诚勿语', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2123400019.jpg', NULL, 'Ivan Silvestrini', NULL, '喜剧,同性', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (885, '黄色大象', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1759558703.jpg', NULL, '广木隆一', NULL, '剧情', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (886, '无人引航', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2194962310.jpg', NULL, '威廉姆·H·梅西', NULL, '剧情,音乐', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (887, '杀死比尔整个血腥事件', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1557229084.jpg', NULL, '昆汀·塔伦蒂诺', NULL, '动作,犯罪', 8.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (888, '卡罗尔', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2312679154.jpg', NULL, '托德·海因斯', NULL, '剧情,爱情,同性', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (889, '全城高考', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1841092784.jpg', NULL, '钟少雄', NULL, '剧情', 5.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (890, '逃出生天', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2147894527.jpg', NULL, '彭发', NULL, '剧情,灾难', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (891, '扫毒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2157480930.jpg', NULL, '陈木胜', NULL, '剧情,动作,悬疑,犯罪', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (892, '弗兰克', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2195768476.jpg', NULL, '伦尼·阿伯拉罕森', NULL, '剧情,喜剧,音乐', 7.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (893, '别惹我', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2171003423.jpg', NULL, '吕克·贝松', NULL, '喜剧,动作,惊悚,犯罪', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (894, '麦兜', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2454027095.jpg', NULL, '谢立文', NULL, '喜剧,动画', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (895, '豪勇七蛟龙', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2361154441.jpg', NULL, '安东尼·福奎阿', NULL, '动作,西部,冒险', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (896, '致命弯道', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1751805110.jpg', NULL, '德克兰·奥布莱恩', NULL, '惊悚,恐怖', 5.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (897, '号房的礼物', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1816276065.jpg', NULL, '李焕庆', NULL, '剧情,喜剧,家庭', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (898, '遗忘', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2453758057.jpg', NULL, '连奕琦', NULL, '剧情', 8, NULL);
INSERT INTO `myauth_movie_info` VALUES (899, '猎神', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2326492532.jpg', NULL, '塞德里克·萨科', NULL, '动作,奇幻,冒险', 5.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (900, '谍影特工', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2322146824.jpg', NULL, '罗杰·唐纳森', NULL, '惊悚', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (901, '金衣女人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2231410371.jpg', NULL, '西蒙·柯蒂斯', NULL, '剧情,传记,历史,战争', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (902, '女性瘾者', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2165465692.jpg', NULL, '拉斯·冯·提尔', NULL, '剧情,情色', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (903, '叶问', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1891558983.jpg', NULL, '邱礼涛', NULL, '剧情,动作,传记', 6.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (904, '自由之丘', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2193382662.jpg', NULL, '洪尚秀', NULL, '剧情', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (905, '脑男', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2120479859.jpg', NULL, '泷本智行', NULL, '悬疑,犯罪', 7.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (906, '智取威虎山', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2215164906.jpg', NULL, '徐克', NULL, '剧情,动作,战争,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (907, '白发魔女传之明月天国', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2190764206.jpg', NULL, '张之亮', NULL, '动作,爱情,奇幻,武侠,古装', 3.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (908, '爱在午夜降临前', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2074715729.jpg', NULL, '理查德·林克莱特', NULL, '剧情,爱情', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (909, '恐怖故事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1612057105.jpg', NULL, '洪智暎', NULL, '恐怖', 6.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (910, '疯狂外星人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2235609577.jpg', NULL, '提姆·约翰森', NULL, '喜剧,科幻,动画,冒险', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (911, '绝色武器', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1609903887.jpg', NULL, '麦子善', NULL, '动作,爱情', 4, NULL);
INSERT INTO `myauth_movie_info` VALUES (912, '双腿生风', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2002494911.jpg', NULL, 'Carine Tardieu', NULL, '喜剧', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (913, '百鸟朝凤', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2332714135.jpg', NULL, '吴天明', NULL, '剧情', 8.1, NULL);
INSERT INTO `myauth_movie_info` VALUES (914, '搞定岳父大人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1650860828.jpg', NULL, '李海蜀', NULL, '喜剧,爱情,家庭', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (915, '美姐', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2073776576.jpg', NULL, '郝杰', NULL, '剧情,爱情,家庭', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (916, '等风来', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2163861862.jpg', NULL, '滕华涛', NULL, '喜剧,爱情', 5.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (917, '天台爱情', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2006855292.jpg', NULL, '周杰伦', NULL, '喜剧,动作,爱情,歌舞', 6.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (918, '变身超人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1892617767.jpg', NULL, '张时霖', NULL, '喜剧,动作', 6.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (919, '初恋未满', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2015805096.jpg', NULL, '刘娟', NULL, '剧情,爱情', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (920, '我只是还没有全力以赴', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1891641781.jpg', NULL, '福田雄一', NULL, '喜剧', 7.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (921, '天津闲人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2240947775.jpg', NULL, '郑大圣', NULL, '剧情,喜剧', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (922, '超能陆战队', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2224568669.jpg', NULL, '唐·霍尔', NULL, '喜剧,动作,科幻,动画,冒险', 8.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (923, '边境风云', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1645229293.jpg', NULL, '程耳', NULL, '剧情,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (924, '邋遢大王奇遇记', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1644025847.jpg', NULL, '钱运达', NULL, '动画,儿童', 8.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (925, '光晕', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1782488252.jpg', NULL, '斯特瓦特·亨德尔', NULL, '动作,科幻,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (926, '星际特工', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2496088130.jpg', NULL, '吕克·贝松', NULL, '动作,科幻,冒险', 7, NULL);
INSERT INTO `myauth_movie_info` VALUES (927, '全民目击', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2091289138.jpg', NULL, '非行', NULL, '剧情,悬疑,犯罪', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (928, '麦克法兰', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2222667000.jpg', NULL, '妮琪·卡罗', NULL, '剧情,传记,运动', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (929, '金田一少年事件簿', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2337098107.jpg', NULL, '木村ひさし', NULL, '剧情,悬疑', 5, NULL);
INSERT INTO `myauth_movie_info` VALUES (930, '布达佩斯大饭店', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178872593.jpg', NULL, '韦斯·安德森', NULL, '剧情,喜剧,冒险', 8.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (931, '弗兰西丝', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1927054388.jpg', NULL, '诺亚·鲍姆巴赫', NULL, '剧情,喜剧', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (932, '中国合伙人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1959304567.jpg', NULL, '陈可辛', NULL, '剧情', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (933, '悬赏', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1529198416.jpg', NULL, '冯志强', NULL, '剧情,喜剧,动作,犯罪', 5.9, NULL);
INSERT INTO `myauth_movie_info` VALUES (934, '年第', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2511086688.jpg', NULL, '丹尼·博伊尔', NULL, '运动', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (935, '许三观', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2216130110.jpg', NULL, '河正宇', NULL, '剧情,家庭', 7.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (936, '魔力麦克', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2251269074.jpg', NULL, '格里高利·雅各布', NULL, '剧情,喜剧,音乐', 5.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (937, '实习大叔', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1921688843.jpg', NULL, '肖恩·利维', NULL, '喜剧', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (938, '危机解密', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2097787328.jpg', NULL, '比尔·康顿', NULL, '剧情,传记', 6.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (939, '与神同行', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2500130777.jpg', NULL, '金容华', NULL, '剧情,奇幻', 7.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (940, '我们仍未知道那天所看见的花的名字', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1971347181.jpg', NULL, '长井龙雪', NULL, '动画', 8.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (941, '功夫熊猫', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2306653420.jpg', NULL, '吕寅荣', NULL, '喜剧,动作,动画,冒险', 7.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (942, '家园防线', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2172920443.jpg', NULL, '加里·弗莱德', NULL, '动作,惊悚,犯罪', 6.4, NULL);
INSERT INTO `myauth_movie_info` VALUES (943, '暗恋', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1832197925.jpg', NULL, '火火', NULL, '喜剧,爱情', 5.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (944, '霍比特人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2166784595.jpg', NULL, '彼得·杰克逊', NULL, '动作,奇幻,冒险', 8.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (945, '敢死队', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2196328516.jpg', NULL, '帕特里克·休斯', NULL, '动作,惊悚,冒险', 6.8, NULL);
INSERT INTO `myauth_movie_info` VALUES (946, '快乐到家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1833981381.jpg', NULL, '傅华阳', NULL, '喜剧', 3.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (947, '鬼三惊', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173981092.jpg', NULL, '伊萨拉·纳迪', NULL, '恐怖', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (948, '在这世界的角落', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2384601603.jpg', NULL, '片渊须直', NULL, '剧情,动画,战争', 7.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (949, '整容日记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2174794423.jpg', NULL, '林爱华', NULL, '喜剧,爱情', 4.6, NULL);
INSERT INTO `myauth_movie_info` VALUES (950, '幽灵党', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2276234635.jpg', NULL, '萨姆·门德斯', NULL, '动作,惊悚,冒险', 6.3, NULL);
INSERT INTO `myauth_movie_info` VALUES (951, '小黄人大眼萌', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2265761240.jpg', NULL, '凯尔·巴尔达', NULL, '喜剧,动画', 7.5, NULL);
INSERT INTO `myauth_movie_info` VALUES (952, '澳门风云', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2167451620.jpg', NULL, '王晶', NULL, '喜剧,动作', 5.7, NULL);
INSERT INTO `myauth_movie_info` VALUES (953, '刑警兄弟', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2328683485.jpg', NULL, '戚家基', NULL, '喜剧,动作', 5.2, NULL);
INSERT INTO `myauth_movie_info` VALUES (954, '华丽上班族', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2263695980.jpg', NULL, '杜琪峰', NULL, '剧情,喜剧,爱情,歌舞', 6, NULL);

-- ----------------------------
-- Table structure for myauth_user_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `myauth_user_evaluation`;
CREATE TABLE `myauth_user_evaluation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` double NOT NULL,
  `movie_id` double NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`, `user_id`, `movie_id`) USING BTREE,
  UNIQUE INDEX `myauth_user_evaluation_user_id_movie_id_6d16dd29_uniq`(`user_id`, `movie_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32132 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myauth_user_evaluation
-- ----------------------------
INSERT INTO `myauth_user_evaluation` VALUES (31105, 1, 675, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31106, 1, 470, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31107, 1, 64, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31108, 1, 185, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31109, 1, 765, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31110, 1, 73, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31111, 1, 261, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31112, 1, 451, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31113, 1, 592, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31114, 1, 569, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31115, 1, 402, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31116, 1, 577, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31117, 1, 217, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31118, 1, 852, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31119, 1, 764, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31120, 1, 823, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31121, 1, 732, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31122, 1, 504, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31123, 1, 176, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31124, 1, 526, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31125, 1, 507, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31126, 1, 954, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31127, 1, 883, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31128, 1, 196, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31129, 1, 38, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31130, 1, 951, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31131, 1, 454, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31132, 1, 657, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31133, 1, 181, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31134, 1, 828, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31135, 1, 721, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31136, 1, 308, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31137, 1, 144, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31138, 1, 590, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31139, 1, 710, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31140, 1, 329, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31141, 1, 952, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31142, 1, 161, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31143, 1, 714, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31144, 1, 682, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31145, 1, 600, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31146, 1, 579, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31147, 1, 512, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31148, 1, 319, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31149, 1, 664, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31150, 1, 488, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31151, 1, 890, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31152, 1, 836, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31153, 1, 57, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31154, 1, 80, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31155, 1, 653, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31156, 1, 849, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31157, 1, 783, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31158, 1, 920, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31159, 1, 447, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31160, 1, 493, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31161, 1, 458, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31162, 1, 270, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31163, 1, 142, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31164, 1, 257, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31165, 1, 774, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31166, 1, 384, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31167, 1, 70, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31168, 1, 269, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31169, 1, 164, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31170, 1, 177, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31171, 1, 68, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31172, 1, 232, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31173, 1, 926, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31174, 1, 690, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31175, 1, 186, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31176, 1, 908, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31177, 1, 146, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31178, 1, 906, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31179, 1, 608, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31180, 1, 99, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31181, 1, 466, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31182, 1, 548, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31183, 1, 62, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31184, 1, 928, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31185, 1, 746, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31186, 1, 935, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31187, 1, 553, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31188, 1, 589, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31189, 1, 643, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31190, 1, 254, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31191, 1, 175, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31192, 1, 405, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31193, 1, 201, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31194, 1, 566, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31195, 1, 92, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31196, 1, 511, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31197, 1, 274, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31198, 1, 452, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31199, 1, 298, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31200, 1, 354, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31201, 1, 416, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31202, 1, 799, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31203, 1, 886, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31204, 1, 510, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31205, 2, 760, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31206, 2, 799, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31207, 2, 294, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31208, 2, 838, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31209, 2, 527, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31210, 2, 802, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31211, 2, 424, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31212, 2, 687, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31213, 2, 926, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31214, 2, 367, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31215, 2, 555, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31216, 2, 569, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31217, 2, 817, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31218, 2, 128, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31219, 2, 475, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31220, 2, 750, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31221, 2, 638, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31222, 2, 708, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31223, 2, 150, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31224, 2, 334, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31225, 2, 536, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31226, 2, 718, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31227, 2, 887, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31228, 2, 942, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31229, 2, 782, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31230, 2, 217, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31231, 2, 570, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31232, 2, 266, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31233, 2, 789, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31234, 2, 933, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31235, 2, 171, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31236, 2, 370, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31237, 2, 484, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31238, 2, 539, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31239, 2, 201, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31240, 2, 341, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31241, 2, 396, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31242, 2, 136, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31243, 2, 31, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31244, 2, 218, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31245, 2, 754, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31246, 2, 321, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31247, 2, 383, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31248, 2, 243, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31249, 2, 628, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31250, 2, 262, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31251, 2, 823, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31252, 2, 336, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31253, 2, 103, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31254, 2, 820, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31255, 2, 313, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31256, 2, 236, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31257, 2, 841, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31258, 2, 763, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31259, 2, 578, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31260, 2, 714, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31261, 2, 494, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31262, 2, 852, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31263, 2, 613, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31264, 2, 848, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31265, 2, 882, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31266, 2, 547, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31267, 2, 496, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31268, 2, 408, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31269, 2, 94, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31270, 2, 206, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31271, 2, 264, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31272, 2, 648, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31273, 2, 244, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31274, 2, 353, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31275, 2, 936, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31276, 2, 448, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31277, 2, 323, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31278, 2, 709, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31279, 2, 26, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31280, 2, 464, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31281, 2, 940, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31282, 2, 16, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31283, 2, 433, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31284, 2, 101, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31285, 2, 178, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31286, 2, 622, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31287, 2, 905, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31288, 2, 272, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31289, 2, 95, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31290, 2, 593, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31291, 2, 37, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31292, 2, 145, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31293, 2, 51, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31294, 2, 597, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31295, 2, 633, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31296, 2, 18, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31297, 2, 563, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31298, 2, 278, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31299, 2, 200, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31300, 2, 697, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31301, 2, 59, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31302, 2, 843, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31303, 2, 811, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31304, 2, 204, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31305, 3, 523, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31306, 3, 666, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31307, 3, 356, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31308, 3, 141, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31309, 3, 18, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31310, 3, 770, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31311, 3, 618, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31312, 3, 125, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31313, 3, 8, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31314, 3, 203, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31315, 3, 240, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31316, 3, 900, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31317, 3, 528, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31318, 3, 612, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31319, 3, 903, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31320, 3, 489, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31321, 3, 423, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31322, 3, 243, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31323, 3, 231, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31324, 3, 312, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31325, 3, 378, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31326, 3, 295, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31327, 3, 211, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31328, 3, 742, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31329, 3, 494, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31330, 3, 613, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31331, 3, 511, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31332, 3, 691, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31333, 3, 148, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31334, 3, 237, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31335, 3, 915, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31336, 3, 774, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31337, 3, 206, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31338, 3, 326, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31339, 3, 168, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31340, 3, 561, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31341, 3, 943, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31342, 3, 886, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31343, 3, 60, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31344, 3, 92, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31345, 3, 496, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31346, 3, 532, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31347, 3, 252, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31348, 3, 800, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31349, 3, 785, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31350, 3, 177, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31351, 3, 757, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31352, 3, 30, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31353, 3, 249, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31354, 3, 605, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31355, 3, 47, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31356, 3, 700, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31357, 3, 509, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31358, 3, 27, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31359, 3, 756, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31360, 3, 426, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31361, 3, 443, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31362, 3, 625, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31363, 3, 622, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31364, 3, 335, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31365, 3, 172, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31366, 3, 926, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31367, 3, 699, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31368, 3, 229, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31369, 3, 676, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31370, 3, 322, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31371, 3, 110, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31372, 3, 571, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31373, 3, 193, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31374, 3, 948, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31375, 3, 936, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31376, 3, 460, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31377, 3, 631, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31378, 3, 119, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31379, 3, 648, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31380, 3, 278, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31381, 3, 650, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31382, 3, 931, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31383, 3, 637, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31384, 3, 28, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31385, 3, 906, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31386, 3, 779, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31387, 3, 108, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31388, 3, 607, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31389, 3, 565, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31390, 3, 112, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31391, 3, 563, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31392, 3, 852, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31393, 3, 628, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31394, 3, 866, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31395, 3, 765, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31396, 3, 643, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31397, 3, 273, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31398, 3, 104, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31399, 3, 311, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31400, 3, 266, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31401, 3, 465, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31402, 3, 826, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31403, 3, 777, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31404, 3, 594, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31405, 4, 734, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31406, 4, 412, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31407, 4, 689, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31408, 4, 679, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31409, 4, 76, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31410, 4, 316, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31411, 4, 630, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31412, 4, 263, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31413, 4, 175, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31414, 4, 588, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31415, 4, 837, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31416, 4, 943, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31417, 4, 131, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31418, 4, 836, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31419, 4, 517, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31420, 4, 592, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31421, 4, 61, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31422, 4, 658, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31423, 4, 858, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31424, 4, 468, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31425, 4, 403, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31426, 4, 570, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31427, 4, 16, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31428, 4, 584, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31429, 4, 580, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31430, 4, 751, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31431, 4, 325, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31432, 4, 152, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31433, 4, 39, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31434, 4, 282, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31435, 4, 597, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31436, 4, 727, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31437, 4, 890, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31438, 4, 850, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31439, 4, 785, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31440, 4, 826, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31441, 4, 415, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31442, 4, 832, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31443, 4, 177, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31444, 4, 414, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31445, 4, 565, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31446, 4, 446, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31447, 4, 753, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31448, 4, 821, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31449, 4, 807, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31450, 4, 480, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31451, 4, 233, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31452, 4, 13, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31453, 4, 120, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31454, 4, 937, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31455, 4, 357, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31456, 4, 209, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31457, 4, 707, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31458, 4, 43, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31459, 4, 12, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31460, 4, 133, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31461, 4, 273, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31462, 4, 902, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31463, 4, 472, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31464, 4, 385, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31465, 4, 582, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31466, 4, 525, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31467, 4, 697, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31468, 4, 758, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31469, 4, 455, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31470, 4, 25, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31471, 4, 631, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31472, 4, 426, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31473, 4, 655, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31474, 4, 384, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31475, 4, 239, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31476, 4, 784, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31477, 4, 942, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31478, 4, 482, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31479, 4, 291, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31480, 4, 100, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31481, 4, 366, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31482, 4, 479, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31483, 4, 792, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31484, 4, 1, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31485, 4, 45, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31486, 4, 868, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31487, 4, 126, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31488, 4, 232, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31489, 4, 386, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31490, 4, 332, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31491, 4, 860, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31492, 4, 30, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31493, 4, 905, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31494, 4, 299, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31495, 4, 187, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31496, 4, 539, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31497, 4, 381, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31498, 4, 896, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31499, 4, 782, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31500, 4, 359, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31501, 4, 418, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31502, 4, 749, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31503, 4, 939, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31504, 4, 281, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31505, 5, 201, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31506, 5, 786, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31507, 5, 693, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31508, 5, 697, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31509, 5, 817, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31510, 5, 924, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31511, 5, 74, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31512, 5, 614, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31513, 5, 640, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31514, 5, 173, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31515, 5, 902, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31516, 5, 57, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31517, 5, 37, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31518, 5, 277, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31519, 5, 439, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31520, 5, 165, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31521, 5, 234, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31522, 5, 705, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31523, 5, 495, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31524, 5, 916, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31525, 5, 432, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31526, 5, 739, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31527, 5, 354, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31528, 5, 710, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31529, 5, 337, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31530, 5, 246, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31531, 5, 634, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31532, 5, 815, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31533, 5, 442, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31534, 5, 518, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31535, 5, 855, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31536, 5, 569, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31537, 5, 443, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31538, 5, 452, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31539, 5, 301, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31540, 5, 339, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31541, 5, 869, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31542, 5, 8, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31543, 5, 820, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31544, 5, 455, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31545, 5, 451, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31546, 5, 583, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31547, 5, 819, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31548, 5, 894, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31549, 5, 496, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31550, 5, 917, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31551, 5, 403, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31552, 5, 426, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31553, 5, 893, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31554, 5, 558, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31555, 5, 242, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31556, 5, 215, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31557, 5, 672, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31558, 5, 644, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31559, 5, 67, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31560, 5, 151, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31561, 5, 198, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31562, 5, 272, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31563, 5, 682, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31564, 5, 694, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31565, 5, 784, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31566, 5, 608, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31567, 5, 81, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31568, 5, 52, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31569, 5, 44, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31570, 5, 874, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31571, 5, 421, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31572, 5, 625, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31573, 5, 42, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31574, 5, 330, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31575, 5, 357, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31576, 5, 845, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31577, 5, 674, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31578, 5, 384, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31579, 5, 66, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31580, 5, 795, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31581, 5, 498, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31582, 5, 537, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31583, 5, 664, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31584, 5, 145, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31585, 5, 34, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31586, 5, 402, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31587, 5, 531, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31588, 5, 142, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31589, 5, 328, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31590, 5, 26, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31591, 5, 271, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31592, 5, 871, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31593, 5, 582, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31594, 5, 59, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31595, 5, 607, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31596, 5, 417, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31597, 5, 671, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31598, 5, 177, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31599, 5, 722, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31600, 5, 250, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31601, 5, 362, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31602, 5, 758, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31603, 5, 467, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31604, 5, 623, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31605, 6, 37, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31606, 6, 737, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31607, 6, 382, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31608, 6, 572, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31609, 6, 302, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31610, 6, 673, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31611, 6, 763, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31612, 6, 437, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31613, 6, 200, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31614, 6, 726, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31615, 6, 333, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31616, 6, 242, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31617, 6, 804, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31618, 6, 541, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31619, 6, 873, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31620, 6, 782, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31621, 6, 304, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31622, 6, 537, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31623, 6, 883, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31624, 6, 121, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31625, 6, 801, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31626, 6, 532, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31627, 6, 826, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31628, 6, 650, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31629, 6, 66, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31630, 6, 913, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31631, 6, 225, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31632, 6, 781, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31633, 6, 239, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31634, 6, 6, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31635, 6, 102, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31636, 6, 335, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31637, 6, 143, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31638, 6, 496, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31639, 6, 16, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31640, 6, 463, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31641, 6, 370, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31642, 6, 363, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31643, 6, 508, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31644, 6, 936, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31645, 6, 777, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31646, 6, 649, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31647, 6, 151, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31648, 6, 638, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31649, 6, 439, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31650, 6, 810, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31651, 6, 33, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31652, 6, 222, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31653, 6, 373, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31654, 6, 590, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31655, 6, 656, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31656, 6, 770, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31657, 6, 361, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31658, 6, 60, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31659, 6, 334, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31660, 6, 827, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31661, 6, 571, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31662, 6, 841, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31663, 6, 817, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31664, 6, 90, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31665, 6, 252, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31666, 6, 78, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31667, 6, 175, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31668, 6, 281, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31669, 6, 522, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31670, 6, 682, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31671, 6, 93, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31672, 6, 392, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31673, 6, 813, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31674, 6, 417, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31675, 6, 323, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31676, 6, 405, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31677, 6, 52, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31678, 6, 213, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31679, 6, 891, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31680, 6, 387, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31681, 6, 464, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31682, 6, 364, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31683, 6, 859, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31684, 6, 910, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31685, 6, 593, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31686, 6, 259, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31687, 6, 748, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31688, 6, 912, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31689, 6, 427, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31690, 6, 442, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31691, 6, 865, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31692, 6, 237, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31693, 6, 863, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31694, 6, 717, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31695, 6, 278, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31696, 6, 498, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31697, 6, 410, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31698, 6, 189, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31699, 6, 260, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31700, 6, 55, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31701, 6, 343, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31702, 6, 828, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31703, 6, 106, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31704, 6, 525, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31705, 7, 926, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31706, 7, 117, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31707, 7, 631, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31708, 7, 119, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31709, 7, 816, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31710, 7, 394, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31711, 7, 820, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31712, 7, 501, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31713, 7, 346, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31714, 7, 746, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31715, 7, 326, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31716, 7, 899, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31717, 7, 886, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31718, 7, 348, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31719, 7, 364, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31720, 7, 432, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31721, 7, 735, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31722, 7, 643, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31723, 7, 740, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31724, 7, 308, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31725, 7, 516, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31726, 7, 653, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31727, 7, 807, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31728, 7, 48, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31729, 7, 810, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31730, 7, 123, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31731, 7, 449, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31732, 7, 223, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31733, 7, 660, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31734, 7, 562, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31735, 7, 862, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31736, 7, 818, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31737, 7, 140, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31738, 7, 952, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31739, 7, 377, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31740, 7, 154, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31741, 7, 291, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31742, 7, 609, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31743, 7, 596, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31744, 7, 448, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31745, 7, 672, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31746, 7, 693, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31747, 7, 334, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31748, 7, 625, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31749, 7, 437, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31750, 7, 64, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31751, 7, 139, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31752, 7, 525, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31753, 7, 529, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31754, 7, 246, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31755, 7, 743, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31756, 7, 230, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31757, 7, 317, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31758, 7, 484, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31759, 7, 632, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31760, 7, 229, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31761, 7, 629, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31762, 7, 180, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31763, 7, 400, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31764, 7, 877, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31765, 7, 949, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31766, 7, 345, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31767, 7, 314, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31768, 7, 280, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31769, 7, 343, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31770, 7, 853, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31771, 7, 251, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31772, 7, 191, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31773, 7, 550, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31774, 7, 723, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31775, 7, 322, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31776, 7, 87, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31777, 7, 520, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31778, 7, 98, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31779, 7, 307, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31780, 7, 937, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31781, 7, 813, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31782, 7, 68, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31783, 7, 908, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31784, 7, 441, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31785, 7, 365, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31786, 7, 199, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31787, 7, 591, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31788, 7, 402, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31789, 7, 270, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31790, 7, 839, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31791, 7, 708, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31792, 7, 420, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31793, 7, 802, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31794, 7, 559, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31795, 7, 168, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31796, 7, 62, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31797, 7, 742, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31798, 7, 52, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31799, 7, 434, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31800, 7, 945, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31801, 7, 544, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31802, 7, 97, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31803, 7, 21, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31804, 7, 607, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31805, 8, 324, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31806, 8, 679, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31807, 8, 88, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31808, 8, 578, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31809, 8, 471, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31810, 8, 747, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31811, 8, 474, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31812, 8, 342, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31813, 8, 555, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31814, 8, 20, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31815, 8, 129, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31816, 8, 153, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31817, 8, 19, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31818, 8, 211, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31819, 8, 105, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31820, 8, 696, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31821, 8, 1, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31822, 8, 865, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31823, 8, 123, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31824, 8, 78, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31825, 8, 287, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31826, 8, 889, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31827, 8, 326, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31828, 8, 847, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31829, 8, 310, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31830, 8, 394, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31831, 8, 238, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31832, 8, 515, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31833, 8, 24, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31834, 8, 853, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31835, 8, 261, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31836, 8, 527, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31837, 8, 191, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31838, 8, 329, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31839, 8, 312, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31840, 8, 178, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31841, 8, 745, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31842, 8, 3, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31843, 8, 331, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31844, 8, 121, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31845, 8, 269, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31846, 8, 41, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31847, 8, 790, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31848, 8, 162, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31849, 8, 680, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31850, 8, 718, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31851, 8, 175, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31852, 8, 508, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31853, 8, 315, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31854, 8, 929, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31855, 8, 751, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31856, 8, 486, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31857, 8, 796, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31858, 8, 519, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31859, 8, 276, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31860, 8, 551, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31861, 8, 730, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31862, 8, 99, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31863, 8, 187, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31864, 8, 241, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31865, 8, 442, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31866, 8, 784, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31867, 8, 799, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31868, 8, 585, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31869, 8, 89, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31870, 8, 872, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31871, 8, 325, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31872, 8, 763, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31873, 8, 794, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31874, 8, 592, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31875, 8, 932, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31876, 8, 600, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31877, 8, 94, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31878, 8, 288, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31879, 8, 576, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31880, 8, 603, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31881, 8, 552, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31882, 8, 558, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31883, 8, 682, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31884, 8, 7, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31885, 8, 328, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31886, 8, 726, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31887, 8, 173, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31888, 8, 120, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31889, 8, 701, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31890, 8, 512, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31891, 8, 157, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31892, 8, 405, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31893, 8, 87, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31894, 8, 874, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31895, 8, 503, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31896, 8, 580, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31897, 8, 879, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31898, 8, 318, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31899, 8, 6, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31900, 8, 138, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31901, 8, 743, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31902, 8, 818, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31903, 8, 649, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31904, 8, 414, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31905, 9, 151, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31906, 9, 227, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31907, 9, 704, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31908, 9, 607, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31909, 9, 865, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31910, 9, 812, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31911, 9, 155, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31912, 9, 281, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31913, 9, 280, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31914, 9, 330, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31915, 9, 634, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31916, 9, 336, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31917, 9, 803, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31918, 9, 266, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31919, 9, 319, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31920, 9, 304, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31921, 9, 134, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31922, 9, 657, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31923, 9, 630, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31924, 9, 548, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31925, 9, 75, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31926, 9, 639, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31927, 9, 736, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31928, 9, 228, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31929, 9, 758, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31930, 9, 45, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31931, 9, 902, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31932, 9, 278, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31933, 9, 224, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31934, 9, 62, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31935, 9, 210, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31936, 9, 320, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31937, 9, 53, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31938, 9, 650, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31939, 9, 945, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31940, 9, 890, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31941, 9, 528, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31942, 9, 511, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31943, 9, 512, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31944, 9, 406, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31945, 9, 457, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31946, 9, 811, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31947, 9, 445, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31948, 9, 924, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31949, 9, 198, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31950, 9, 944, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31951, 9, 436, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31952, 9, 635, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31953, 9, 317, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31954, 9, 66, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31955, 9, 862, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31956, 9, 285, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31957, 9, 318, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31958, 9, 547, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31959, 9, 530, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31960, 9, 851, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31961, 9, 724, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31962, 9, 397, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31963, 9, 950, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31964, 9, 573, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31965, 9, 103, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31966, 9, 193, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31967, 9, 610, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31968, 9, 526, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31969, 9, 296, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31970, 9, 409, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31971, 9, 786, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31972, 9, 52, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31973, 9, 566, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31974, 9, 725, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31975, 9, 780, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31976, 9, 714, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31977, 9, 252, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31978, 9, 388, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31979, 9, 646, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31980, 9, 617, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31981, 9, 497, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31982, 9, 536, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31983, 9, 695, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31984, 9, 424, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31985, 9, 943, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31986, 9, 186, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31987, 9, 339, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31988, 9, 360, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31989, 9, 95, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31990, 9, 749, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31991, 9, 29, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31992, 9, 382, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31993, 9, 797, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31994, 9, 117, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31995, 9, 196, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31996, 9, 251, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31997, 9, 770, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31998, 9, 594, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31999, 9, 99, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (32000, 9, 713, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32001, 9, 203, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (32002, 9, 456, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32003, 9, 814, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (32004, 9, 918, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32005, 10, 42, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (32006, 10, 238, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (32007, 10, 440, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (32008, 10, 865, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (32009, 10, 860, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (32010, 10, 595, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32011, 10, 341, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32012, 10, 710, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32013, 10, 181, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (32014, 10, 600, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32015, 10, 317, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (32016, 10, 585, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32017, 10, 377, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (32018, 10, 290, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32019, 10, 804, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32020, 10, 844, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32021, 10, 353, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (32022, 10, 761, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32023, 10, 797, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (32024, 10, 541, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (32025, 10, 413, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (32026, 10, 737, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (32027, 10, 392, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32028, 10, 765, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (32029, 10, 446, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32030, 10, 395, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (32031, 10, 404, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32032, 10, 733, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (32033, 10, 168, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (32034, 10, 868, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (32035, 10, 560, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (32036, 10, 468, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32037, 10, 314, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (32038, 10, 50, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32039, 10, 740, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32040, 10, 121, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32041, 10, 758, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (32042, 10, 77, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (32043, 10, 221, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32044, 10, 11, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (32045, 10, 885, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (32046, 10, 459, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (32047, 10, 411, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32048, 10, 611, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32049, 10, 315, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (32050, 10, 436, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32051, 10, 376, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32052, 10, 604, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32053, 10, 239, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (32054, 10, 177, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32055, 10, 568, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (32056, 10, 927, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32057, 10, 364, 9);
INSERT INTO `myauth_user_evaluation` VALUES (32058, 10, 162, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32059, 10, 916, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (32060, 10, 158, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32061, 10, 269, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32062, 10, 260, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (32063, 10, 363, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32064, 10, 416, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (32065, 10, 163, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (32066, 10, 110, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (32067, 10, 730, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (32068, 10, 157, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32069, 10, 574, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32070, 10, 381, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32071, 10, 638, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32072, 10, 129, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32073, 10, 486, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32074, 10, 249, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (32075, 10, 271, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32076, 10, 708, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32077, 10, 119, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32078, 10, 125, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (32079, 10, 93, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32080, 10, 89, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32081, 10, 127, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32082, 10, 562, 9);
INSERT INTO `myauth_user_evaluation` VALUES (32083, 10, 942, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (32084, 10, 48, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (32085, 10, 454, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (32086, 10, 917, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (32087, 10, 375, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (32088, 10, 472, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (32089, 10, 354, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (32090, 10, 839, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32091, 10, 79, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (32092, 10, 237, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32093, 10, 843, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (32094, 10, 23, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (32095, 10, 32, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32096, 10, 952, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (32097, 10, 831, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32098, 10, 902, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (32099, 10, 906, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32100, 10, 757, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32101, 10, 828, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (32102, 10, 499, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32103, 10, 931, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32104, 10, 148, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32105, 11, 2, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32106, 11, 3, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32107, 11, 15, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32108, 11, 39, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32109, 12, 2, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32110, 12, 264, 4);
INSERT INTO `myauth_user_evaluation` VALUES (32111, 12, 5, 50);
INSERT INTO `myauth_user_evaluation` VALUES (32112, 12, 164, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32113, 12, 3, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32114, 12, 4, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (32115, 13, 2, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32116, 13, 8, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32117, 1, 15, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32118, 14, 30, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32119, 14, 109, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32120, 14, 198, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32121, 14, 257, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32122, 14, 157, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32123, 14, 235, 2);
INSERT INTO `myauth_user_evaluation` VALUES (32124, 15, 3, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32125, 15, 4, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (32126, 1, 139, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32127, 1, 151, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32128, 1, 21, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32129, 1, 22, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (32130, 1, 28, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32131, 1, 33, 7.6);

SET FOREIGN_KEY_CHECKS = 1;
