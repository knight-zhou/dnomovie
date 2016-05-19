/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : dnomovie

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-05-19 16:53:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can add webuser', '8', 'add_webuser');
INSERT INTO `auth_permission` VALUES ('23', 'Can change webuser', '8', 'change_webuser');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete webuser', '8', 'delete_webuser');
INSERT INTO `auth_permission` VALUES ('25', 'Can add movie', '9', 'add_movie');
INSERT INTO `auth_permission` VALUES ('26', 'Can change movie', '9', 'change_movie');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete movie', '9', 'delete_movie');
INSERT INTO `auth_permission` VALUES ('28', 'Can add movie history', '10', 'add_moviehistory');
INSERT INTO `auth_permission` VALUES ('29', 'Can change movie history', '10', 'change_moviehistory');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete movie history', '10', 'delete_moviehistory');
INSERT INTO `auth_permission` VALUES ('31', 'Can add movie coment', '11', 'add_moviecoment');
INSERT INTO `auth_permission` VALUES ('32', 'Can change movie coment', '11', 'change_moviecoment');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete movie coment', '11', 'delete_moviecoment');
INSERT INTO `auth_permission` VALUES ('34', 'Can add Question', '12', 'add_question');
INSERT INTO `auth_permission` VALUES ('35', 'Can change Question', '12', 'change_question');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete Question', '12', 'delete_question');
INSERT INTO `auth_permission` VALUES ('37', 'Can add Answer', '13', 'add_answer');
INSERT INTO `auth_permission` VALUES ('38', 'Can change Answer', '13', 'change_answer');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete Answer', '13', 'delete_answer');
INSERT INTO `auth_permission` VALUES ('40', 'Can add Tag', '14', 'add_tag');
INSERT INTO `auth_permission` VALUES ('41', 'Can change Tag', '14', 'change_tag');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete Tag', '14', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('43', 'Can add Activity', '15', 'add_activity');
INSERT INTO `auth_permission` VALUES ('44', 'Can change Activity', '15', 'change_activity');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete Activity', '15', 'delete_activity');
INSERT INTO `auth_permission` VALUES ('46', 'Can add Notification', '16', 'add_notification');
INSERT INTO `auth_permission` VALUES ('47', 'Can change Notification', '16', 'change_notification');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete Notification', '16', 'delete_notification');
INSERT INTO `auth_permission` VALUES ('49', 'Can add chat group', '17', 'add_chatgroup');
INSERT INTO `auth_permission` VALUES ('50', 'Can change chat group', '17', 'change_chatgroup');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete chat group', '17', 'delete_chatgroup');
INSERT INTO `auth_permission` VALUES ('52', 'Can add movie spider', '18', 'add_moviespider');
INSERT INTO `auth_permission` VALUES ('53', 'Can change movie spider', '18', 'change_moviespider');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete movie spider', '18', 'delete_moviespider');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$20000$LT3evceRHVI8$S3msbsyNNgdVmBEpXVALBRn52CfVNK2IJ61PWRAiLw0=', '2016-05-18 16:34:38', '1', 'admin', '', '', '1142394341@qq.com', '1', '1', '2016-03-15 10:11:19');
INSERT INTO `auth_user` VALUES ('15', 'pbkdf2_sha256$20000$XNp7Fr4DOvX2$TzArNcy1g5rGHGiKFP6eBaWN6Zj+/fI2T4WWapQ89YE=', '2016-04-30 19:58:31', '0', 'andy', '', '', '853970293@qq.com', '0', '1', '2016-04-11 13:12:14');
INSERT INTO `auth_user` VALUES ('16', 'pbkdf2_sha256$20000$OHcRw6mJVqrr$yKCb6LT/c0XfR/xziu4fPdOPCcInEPcGEgiiG3sWurs=', '2016-05-18 20:37:59', '0', 'alex', '', '', '1@qq.com', '0', '1', '2016-04-12 09:59:14');
INSERT INTO `auth_user` VALUES ('17', 'pbkdf2_sha256$20000$mk8PH7zOm10s$3Ber3dAMet/zDWMIA1J1UJtiH37boHR4RezSRSPiaUQ=', '2016-05-07 16:16:41', '0', 'feng', '', '', '1@qq.com', '0', '1', '2016-04-15 20:21:27');
INSERT INTO `auth_user` VALUES ('18', 'pbkdf2_sha256$20000$wpwfsJC21PsE$NkWReH5jfUKBV5nrHO1MXqDp8dFHPRNUyjADQ6U7i48=', '2016-04-16 11:28:21', '0', 'alex_andy1', '', '', '2@qq.com', '0', '1', '2016-04-16 11:28:20');
INSERT INTO `auth_user` VALUES ('19', 'pbkdf2_sha256$20000$3IHCWqseyClt$ZQppo0CNA27Hw1o0/o3ZJeF8n7Jr7Sd6eECUFSSoZMM=', '2016-04-16 16:03:53', '0', 'apache', '', '', '4@qq.com', '0', '1', '2016-04-16 11:29:50');
INSERT INTO `auth_user` VALUES ('20', 'pbkdf2_sha256$20000$gd1j75bmgQxt$r6EGw/et5Ev55ReQmHBlkTBE0PbdMopQ3e2Sv7lcHms=', '2016-04-16 11:31:18', '0', 'feng1', '', '', '3@qq.com', '0', '1', '2016-04-16 11:31:17');
INSERT INTO `auth_user` VALUES ('21', 'pbkdf2_sha256$20000$CiG5VFMauYbk$dhnIPUMUUi3eaJt1MhXSVURATJJfN55OvFeCpZklvng=', '2016-04-29 16:21:14', '0', 'tianxia123', '', '', '123@qq.com', '0', '1', '2016-04-29 09:11:00');
INSERT INTO `auth_user` VALUES ('22', 'pbkdf2_sha256$24000$5cACudA9wQlh$/izHY00plvnm7TE/X74HYkkc9IcSt3LVHUpvXH6LQ+o=', '2016-05-19 16:52:54', '0', 'zz', '', '', 'zz@qq.com', '0', '1', '2016-05-18 11:05:46');
INSERT INTO `auth_user` VALUES ('23', 'pbkdf2_sha256$20000$CQu58kUnkGJ6$FeL8zxjA0gZG3Geq7Y0HsTtIqaJl74JjFGStlVLgwF4=', '2016-05-18 17:14:24', '0', 'qq', '', '', '', '0', '1', '2016-05-18 15:28:49');
INSERT INTO `auth_user` VALUES ('24', 'pbkdf2_sha256$24000$jtQXdHWu0j9X$dD4H6jvjxSVL+VnwY3p0HtgFJ2Z+g+1t1pEJ7Qd8di4=', '2016-05-19 16:37:57', '0', 'cc', '', '', 'cc@qq.com', '0', '1', '2016-05-19 16:37:57');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2016-03-15 10:20:06', '2', 'alex', '1', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2016-03-17 10:54:46', '9', 'admin123', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2016-03-17 10:54:46', '2', 'alex', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2016-03-17 10:54:46', '3', 'alex_.Y', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2016-03-17 10:54:46', '7', 'alex_.Ydfsfwfd', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2016-03-17 10:54:46', '5', 'alex_.Yew', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2016-03-17 10:54:46', '6', 'alex_.Yfdsfa', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2016-03-17 10:54:46', '8', 'alex_.Yl', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2016-03-17 10:54:46', '4', 'alex_.YY', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2016-04-16 15:31:29', '1', 'alex - 乱世佳人', '1', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2016-04-16 15:53:09', '2', 'alex - 大话西游之大圣娶亲', '1', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2016-04-16 15:53:43', '2', 'alex - 大话西游之大圣娶亲', '2', '已修改 comment 。', '11', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2016-04-19 19:59:27', '1', '下载链接：http://www.xunlei.com', '1', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2016-04-26 19:45:05', '7', 'alex', '2', '已修改 friends 。', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2016-04-26 19:45:49', '1', 'Test', '1', '', '17', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2016-04-29 09:11:39', '12', 'tianxia123', '2', '已修改 friends 。', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2016-05-18 15:28:49', '23', 'qq', '1', '', '4', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'movie', 'movie');
INSERT INTO `django_content_type` VALUES ('11', 'movie', 'moviecoment');
INSERT INTO `django_content_type` VALUES ('10', 'movie', 'moviehistory');
INSERT INTO `django_content_type` VALUES ('18', 'movie', 'moviespider');
INSERT INTO `django_content_type` VALUES ('15', 'questions', 'activity');
INSERT INTO `django_content_type` VALUES ('13', 'questions', 'answer');
INSERT INTO `django_content_type` VALUES ('16', 'questions', 'notification');
INSERT INTO `django_content_type` VALUES ('12', 'questions', 'question');
INSERT INTO `django_content_type` VALUES ('14', 'questions', 'tag');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('17', 'webchat', 'chatgroup');
INSERT INTO `django_content_type` VALUES ('8', 'webuser', 'webuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('9qvdir6i2d8g5n3fi6t6k8knuyvykiyu', 'MWQxZTJkNDkzMjE4ZDI5MzA3ZjU2MGJlMGRiNjU2MTNlYWZlNTRkZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyOGYyZmZlOGQyYjkyNzRmMjg1M2YxYjJkNDA5ZDI3YzM5YjUwMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMiJ9', '2016-06-02 16:52:55');

-- ----------------------------
-- Table structure for movie_movie
-- ----------------------------
DROP TABLE IF EXISTS `movie_movie`;
CREATE TABLE `movie_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moviename` varchar(64) NOT NULL,
  `doubanlink` varchar(256) DEFAULT NULL,
  `doubanscore` varchar(64) DEFAULT NULL,
  `doubancounter` int(11) DEFAULT NULL,
  `imdblink` varchar(256) DEFAULT NULL,
  `imdbscore` varchar(64) DEFAULT NULL,
  `imdbcounter` int(11) DEFAULT NULL,
  `nomovielink` varchar(256) DEFAULT NULL,
  `nomoviescore` varchar(64) DEFAULT NULL,
  `nomoviecounter` int(11) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `dateyear` varchar(64) DEFAULT NULL,
  `actor` varchar(256) DEFAULT NULL,
  `director` varchar(256) DEFAULT NULL,
  `style` varchar(64) DEFAULT NULL,
  `movieaddress` varchar(256) DEFAULT NULL,
  `downloadlink` varchar(256) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `original` varchar(256) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `spidertime` datetime DEFAULT NULL,
  `aboutmovie` varchar(256) DEFAULT NULL,
  `language` varchar(64) DEFAULT NULL,
  `dyttsearch` varchar(256) DEFAULT NULL,
  `dyttdetail` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44311 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_movie
-- ----------------------------

-- ----------------------------
-- Table structure for movie_moviecoment
-- ----------------------------
DROP TABLE IF EXISTS `movie_moviecoment`;
CREATE TABLE `movie_moviecoment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `comment` longtext NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_moviecoment_movie_id_696dffa1a4b3da2f_fk_movie_movie_id` (`movie_id`) USING BTREE,
  KEY `movie_moviecoment_user_id_c1b43b320b26131_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `movie_moviecoment_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`),
  CONSTRAINT `movie_moviecoment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_moviecoment
-- ----------------------------

-- ----------------------------
-- Table structure for movie_moviehistory
-- ----------------------------
DROP TABLE IF EXISTS `movie_moviehistory`;
CREATE TABLE `movie_moviehistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `marked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_moviehistory_movie_id_726637eb5d857ea6_fk_movie_movie_id` (`movie_id`) USING BTREE,
  KEY `movie_moviehistory_user_id_6190b20a2b4f5dfa_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `movie_moviehistory_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`),
  CONSTRAINT `movie_moviehistory_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_moviehistory
-- ----------------------------
INSERT INTO `movie_moviehistory` VALUES ('20', '2016-05-17 21:09:02', '32810', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('21', '2016-05-17 21:09:12', '6790', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('22', '2016-05-17 21:42:17', '32810', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('23', '2016-05-17 21:42:50', '32986', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('24', '2016-05-17 21:43:38', '32959', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('25', '2016-05-17 21:45:03', '21155', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('26', '2016-05-17 21:45:38', '5254', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('27', '2016-05-17 21:46:37', '32846', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('28', '2016-05-17 22:11:30', '33060', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('29', '2016-05-17 22:12:09', '13892', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('30', '2016-05-17 22:12:55', '21946', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('31', '2016-05-17 22:13:31', '33228', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('32', '2016-05-17 22:49:06', '6913', '1', null);
INSERT INTO `movie_moviehistory` VALUES ('33', '2016-05-18 10:33:45', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('34', '2016-05-18 10:35:07', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('35', '2016-05-18 10:36:12', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('36', '2016-05-18 10:38:45', '44304', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('37', '2016-05-18 10:41:19', '44305', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('38', '2016-05-18 10:41:31', '27105', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('39', '2016-05-18 10:43:27', '44236', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('40', '2016-05-18 10:51:08', '44245', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('41', '2016-05-18 10:57:41', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('42', '2016-05-18 10:57:57', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('43', '2016-05-18 10:58:26', '44260', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('44', '2016-05-18 11:58:06', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('45', '2016-05-18 12:48:26', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('46', '2016-05-18 15:15:19', '9877', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('47', '2016-05-18 15:16:01', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('48', '2016-05-18 15:16:06', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('49', '2016-05-18 15:16:56', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('50', '2016-05-18 15:17:19', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('51', '2016-05-18 15:17:51', '44297', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('52', '2016-05-18 15:18:04', '44305', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('53', '2016-05-18 15:20:24', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('54', '2016-05-18 15:20:41', '44300', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('55', '2016-05-18 15:26:55', '44299', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('56', '2016-05-18 15:31:31', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('57', '2016-05-18 15:31:57', '7719', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('58', '2016-05-18 15:32:45', '44310', '23', '0');
INSERT INTO `movie_moviehistory` VALUES ('59', '2016-05-18 15:32:47', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('60', '2016-05-18 15:33:07', '44309', '23', '0');
INSERT INTO `movie_moviehistory` VALUES ('61', '2016-05-18 15:33:12', '44308', '23', '0');
INSERT INTO `movie_moviehistory` VALUES ('62', '2016-05-18 15:33:14', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('63', '2016-05-18 15:34:11', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('64', '2016-05-18 15:34:27', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('65', '2016-05-18 15:36:58', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('66', '2016-05-18 15:37:04', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('67', '2016-05-18 15:39:28', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('68', '2016-05-18 15:39:31', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('69', '2016-05-18 15:39:35', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('70', '2016-05-18 15:44:17', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('71', '2016-05-18 15:45:15', '44279', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('72', '2016-05-18 15:51:45', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('73', '2016-05-18 15:51:49', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('74', '2016-05-18 15:52:45', '44298', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('75', '2016-05-18 16:31:27', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('76', '2016-05-18 16:41:38', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('77', '2016-05-18 16:42:51', '16780', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('78', '2016-05-18 16:53:57', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('79', '2016-05-18 16:54:11', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('80', '2016-05-18 16:54:27', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('81', '2016-05-18 16:54:30', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('82', '2016-05-18 16:55:12', '44300', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('83', '2016-05-18 16:55:41', '34341', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('84', '2016-05-18 16:56:42', '44306', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('85', '2016-05-18 16:57:29', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('86', '2016-05-18 17:02:35', '44299', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('87', '2016-05-18 17:05:32', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('88', '2016-05-18 17:07:10', '22859', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('89', '2016-05-18 17:07:49', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('90', '2016-05-18 17:07:53', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('91', '2016-05-18 17:10:38', '44306', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('92', '2016-05-18 17:13:53', '44273', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('93', '2016-05-18 17:24:43', '44307', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('94', '2016-05-18 17:42:44', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('95', '2016-05-18 17:46:32', '596', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('96', '2016-05-18 18:14:07', '44196', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('97', '2016-05-18 18:18:27', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('98', '2016-05-18 18:28:39', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('99', '2016-05-18 18:44:16', '44306', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('100', '2016-05-18 19:05:16', '44297', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('101', '2016-05-18 19:42:11', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('102', '2016-05-18 19:45:19', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('103', '2016-05-18 20:06:26', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('104', '2016-05-18 20:08:01', '12151', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('105', '2016-05-18 20:38:47', '44196', '16', '0');
INSERT INTO `movie_moviehistory` VALUES ('106', '2016-05-18 20:49:49', '44299', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('107', '2016-05-18 22:54:29', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('108', '2016-05-18 22:54:50', '29126', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('109', '2016-05-19 08:55:47', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('110', '2016-05-19 09:15:00', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('111', '2016-05-19 09:31:14', '44306', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('112', '2016-05-19 10:26:42', '44307', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('113', '2016-05-19 11:29:25', '44304', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('114', '2016-05-19 11:47:39', '44303', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('115', '2016-05-19 11:47:55', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('116', '2016-05-19 12:21:07', '44302', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('117', '2016-05-19 12:58:11', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('118', '2016-05-19 13:13:36', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('119', '2016-05-19 13:16:43', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('120', '2016-05-19 13:31:02', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('121', '2016-05-19 13:31:57', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('122', '2016-05-19 13:37:08', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('123', '2016-05-19 13:38:28', '44297', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('124', '2016-05-19 13:40:07', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('125', '2016-05-19 13:42:29', '44304', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('126', '2016-05-19 13:50:11', '44299', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('127', '2016-05-19 13:54:19', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('128', '2016-05-19 13:58:04', '44297', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('129', '2016-05-19 14:00:27', '43868', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('130', '2016-05-19 14:00:29', '43868', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('131', '2016-05-19 14:01:17', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('132', '2016-05-19 14:12:38', '44310', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('133', '2016-05-19 14:14:02', '44301', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('134', '2016-05-19 14:17:32', '44304', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('135', '2016-05-19 14:24:23', '44308', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('136', '2016-05-19 14:49:31', '44309', '1', '0');
INSERT INTO `movie_moviehistory` VALUES ('137', '2016-05-19 14:56:09', '44310', '1', '0');

-- ----------------------------
-- Table structure for movie_moviespider
-- ----------------------------
DROP TABLE IF EXISTS `movie_moviespider`;
CREATE TABLE `movie_moviespider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_tag` varchar(512) DEFAULT NULL,
  `moviename` varchar(64) NOT NULL,
  `moviedetailurl` varchar(512) DEFAULT NULL,
  `movieimgurl` varchar(512) DEFAULT NULL,
  `movieaddtime` datetime NOT NULL,
  `moviespiderornot` int(11) NOT NULL,
  `country` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69347 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_moviespider
-- ----------------------------

-- ----------------------------
-- Table structure for questions_activity
-- ----------------------------
DROP TABLE IF EXISTS `questions_activity`;
CREATE TABLE `questions_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_type` varchar(1) NOT NULL,
  `date` datetime NOT NULL,
  `question` int(11) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_activity_user_id_14f0afefbb2c8a54_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `questions_activity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions_activity
-- ----------------------------
INSERT INTO `questions_activity` VALUES ('10', 'U', '2016-04-21 19:35:27', null, '2', '16');
INSERT INTO `questions_activity` VALUES ('11', 'U', '2016-04-21 19:35:28', null, '3', '16');
INSERT INTO `questions_activity` VALUES ('12', 'F', '2016-04-21 19:39:00', '2', null, '16');
INSERT INTO `questions_activity` VALUES ('13', 'U', '2016-04-22 08:52:46', null, '1', '16');
INSERT INTO `questions_activity` VALUES ('14', 'F', '2016-04-30 14:08:57', '2', null, '21');
INSERT INTO `questions_activity` VALUES ('15', 'U', '2016-04-30 14:09:13', null, '4', '21');
INSERT INTO `questions_activity` VALUES ('24', 'D', '2016-04-30 14:09:32', null, '3', '21');
INSERT INTO `questions_activity` VALUES ('27', 'U', '2016-04-30 14:09:37', null, '2', '21');
INSERT INTO `questions_activity` VALUES ('28', 'F', '2016-04-30 20:40:49', '3', null, '16');
INSERT INTO `questions_activity` VALUES ('29', 'U', '2016-04-30 20:40:59', null, '5', '16');
INSERT INTO `questions_activity` VALUES ('30', 'F', '2016-05-05 21:31:19', '3', null, '15');
INSERT INTO `questions_activity` VALUES ('31', 'U', '2016-05-07 16:15:04', null, '5', '1');

-- ----------------------------
-- Table structure for questions_answer
-- ----------------------------
DROP TABLE IF EXISTS `questions_answer`;
CREATE TABLE `questions_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answercontent` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `votes` int(11) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_answer_7aa0f6ee` (`question_id`) USING BTREE,
  KEY `questions_answer_e8701ad4` (`user_id`) USING BTREE,
  CONSTRAINT `questions_answer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `questions_answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions_answer
-- ----------------------------
INSERT INTO `questions_answer` VALUES ('1', '下载链接：http://www.xunlei.com', '2016-04-19 19:59:27', '2016-04-19 19:59:27', '1', '1', '1', '16');
INSERT INTO `questions_answer` VALUES ('2', '没有', '2016-04-21 19:34:59', '2016-04-21 19:34:59', '2', '1', '2', '16');
INSERT INTO `questions_answer` VALUES ('3', '别人有', '2016-04-21 19:35:20', '2016-04-21 19:35:20', '0', '0', '2', '16');
INSERT INTO `questions_answer` VALUES ('4', '真心不错啊', '2016-04-30 14:09:09', '2016-04-30 14:09:09', '1', '0', '2', '21');
INSERT INTO `questions_answer` VALUES ('5', '****哈哈哈不用啊', '2016-04-30 20:40:47', '2016-04-30 20:40:47', '2', '0', '3', '16');
INSERT INTO `questions_answer` VALUES ('6', 'eeeee.', '2016-05-18 11:06:08', '2016-05-18 11:06:08', '0', '0', '3', '22');
INSERT INTO `questions_answer` VALUES ('7', 'lll', '2016-05-18 11:06:44', '2016-05-18 11:06:44', '0', '0', '4', '22');

-- ----------------------------
-- Table structure for questions_notification
-- ----------------------------
DROP TABLE IF EXISTS `questions_notification`;
CREATE TABLE `questions_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `notification_type` varchar(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_noti_answer_id_13b935c8cc08c677_fk_questions_answer_id` (`answer_id`) USING BTREE,
  KEY `questions_notificat_from_user_id_e4a8f71f22ce500_fk_auth_user_id` (`from_user_id`) USING BTREE,
  KEY `questions__question_id_1a141a3ab92f88f7_fk_questions_question_id` (`question_id`) USING BTREE,
  KEY `questions_notificati_to_user_id_2af5eddff92aefe3_fk_auth_user_id` (`to_user_id`) USING BTREE,
  CONSTRAINT `questions_notification_ibfk_1` FOREIGN KEY (`to_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `questions_notification_ibfk_2` FOREIGN KEY (`from_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `questions_notification_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `questions_answer` (`id`),
  CONSTRAINT `questions_notification_ibfk_4` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions_notification
-- ----------------------------
INSERT INTO `questions_notification` VALUES ('1', '2016-04-30 14:08:57', 'F', '0', null, '21', '2', '16');
INSERT INTO `questions_notification` VALUES ('2', '2016-04-30 14:09:09', 'A', '0', null, '21', '2', '16');
INSERT INTO `questions_notification` VALUES ('3', '2016-05-05 21:31:19', 'F', '0', null, '15', '3', '16');
INSERT INTO `questions_notification` VALUES ('4', '2016-05-18 11:06:08', 'A', '0', null, '22', '3', '16');

-- ----------------------------
-- Table structure for questions_question
-- ----------------------------
DROP TABLE IF EXISTS `questions_question`;
CREATE TABLE `questions_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `favorites` int(11) NOT NULL,
  `has_accepted_answer` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_question_user_id_4fc8b845632ae4a7_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `questions_question_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions_question
-- ----------------------------
INSERT INTO `questions_question` VALUES ('1', '寻找老手的下载资源', '有谁有老手的下载资源的呀', '2016-04-17 20:58:46', '2016-04-17 20:58:46', '0', '1', '16');
INSERT INTO `questions_question` VALUES ('2', '寻找新世界的下载资源', '有人有么', '2016-04-21 19:01:08', '2016-04-21 19:01:08', '2', '1', '16');
INSERT INTO `questions_question` VALUES ('3', '寻求天下第一的片源', '有木有啊', '2016-04-30 20:40:17', '2016-04-30 20:40:17', '2', '0', '16');
INSERT INTO `questions_question` VALUES ('4', '这是测试', '哈哈哈', '2016-05-18 11:06:28', '2016-05-18 11:06:28', '0', '0', '22');
INSERT INTO `questions_question` VALUES ('5', 'fdsafdsac', 'cccc', '2016-05-19 16:37:15', '2016-05-19 16:37:15', '0', '0', '22');
INSERT INTO `questions_question` VALUES ('6', '00', '000', '2016-05-19 16:40:59', '2016-05-19 16:40:59', '0', '0', '22');
INSERT INTO `questions_question` VALUES ('7', 'fdsafds', 'affsdafsdaf', '2016-05-19 16:43:46', '2016-05-19 16:43:46', '0', '0', '22');
INSERT INTO `questions_question` VALUES ('8', '5', '5555555555555555555555555555', '2016-05-19 16:47:47', '2016-05-19 16:47:47', '0', '0', '22');

-- ----------------------------
-- Table structure for questions_tag
-- ----------------------------
DROP TABLE IF EXISTS `questions_tag`;
CREATE TABLE `questions_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questions_tag_tag_654989771ed538d3_uniq` (`tag`,`question_id`) USING BTREE,
  KEY `questions_tag_tag_654989771ed538d3_idx` (`tag`,`question_id`) USING BTREE,
  KEY `questions__question_id_3fcfda229b04f96d_fk_questions_question_id` (`question_id`) USING BTREE,
  CONSTRAINT `questions_tag_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions_tag
-- ----------------------------
INSERT INTO `questions_tag` VALUES ('7', '', '5');
INSERT INTO `questions_tag` VALUES ('8', '', '6');
INSERT INTO `questions_tag` VALUES ('10', '', '8');
INSERT INTO `questions_tag` VALUES ('9', 'fdsafd', '7');
INSERT INTO `questions_tag` VALUES ('4', '剧情', '2');
INSERT INTO `questions_tag` VALUES ('6', '哈哈', '4');
INSERT INTO `questions_tag` VALUES ('5', '天下第一', '3');
INSERT INTO `questions_tag` VALUES ('1', '老手', '1');
INSERT INTO `questions_tag` VALUES ('2', '韩国', '1');
INSERT INTO `questions_tag` VALUES ('3', '韩国', '2');

-- ----------------------------
-- Table structure for webchat_chatgroup
-- ----------------------------
DROP TABLE IF EXISTS `webchat_chatgroup`;
CREATE TABLE `webchat_chatgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `memberlimits` int(11) NOT NULL,
  `founder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webchat_chatgr_founder_id_37b506e5605464d1_fk_webuser_webuser_id` (`founder_id`) USING BTREE,
  CONSTRAINT `webchat_chatgroup_ibfk_1` FOREIGN KEY (`founder_id`) REFERENCES `webuser_webuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webchat_chatgroup
-- ----------------------------
INSERT INTO `webchat_chatgroup` VALUES ('1', 'Test', '200', '7');

-- ----------------------------
-- Table structure for webchat_chatgroup_admins
-- ----------------------------
DROP TABLE IF EXISTS `webchat_chatgroup_admins`;
CREATE TABLE `webchat_chatgroup_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatgroup_id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chatgroup_id` (`chatgroup_id`,`webuser_id`) USING BTREE,
  KEY `webchat_chatgr_webuser_id_724c4375419c2725_fk_webuser_webuser_id` (`webuser_id`) USING BTREE,
  CONSTRAINT `webchat_chatgroup_admins_ibfk_1` FOREIGN KEY (`webuser_id`) REFERENCES `webuser_webuser` (`id`),
  CONSTRAINT `webchat_chatgroup_admins_ibfk_2` FOREIGN KEY (`chatgroup_id`) REFERENCES `webchat_chatgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webchat_chatgroup_admins
-- ----------------------------
INSERT INTO `webchat_chatgroup_admins` VALUES ('3', '1', '7');
INSERT INTO `webchat_chatgroup_admins` VALUES ('1', '1', '8');
INSERT INTO `webchat_chatgroup_admins` VALUES ('2', '1', '9');

-- ----------------------------
-- Table structure for webchat_chatgroup_members
-- ----------------------------
DROP TABLE IF EXISTS `webchat_chatgroup_members`;
CREATE TABLE `webchat_chatgroup_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatgroup_id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chatgroup_id` (`chatgroup_id`,`webuser_id`) USING BTREE,
  KEY `webchat_chatgr_webuser_id_7742713a207bc563_fk_webuser_webuser_id` (`webuser_id`) USING BTREE,
  CONSTRAINT `webchat_chatgroup_members_ibfk_1` FOREIGN KEY (`webuser_id`) REFERENCES `webuser_webuser` (`id`),
  CONSTRAINT `webchat_chatgroup_members_ibfk_2` FOREIGN KEY (`chatgroup_id`) REFERENCES `webchat_chatgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webchat_chatgroup_members
-- ----------------------------
INSERT INTO `webchat_chatgroup_members` VALUES ('5', '1', '7');
INSERT INTO `webchat_chatgroup_members` VALUES ('1', '1', '8');
INSERT INTO `webchat_chatgroup_members` VALUES ('2', '1', '9');
INSERT INTO `webchat_chatgroup_members` VALUES ('3', '1', '10');
INSERT INTO `webchat_chatgroup_members` VALUES ('4', '1', '11');

-- ----------------------------
-- Table structure for webuser_webuser
-- ----------------------------
DROP TABLE IF EXISTS `webuser_webuser`;
CREATE TABLE `webuser_webuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `likestyle` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `registerday` datetime NOT NULL,
  `sex` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `webuser_webuser_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webuser_webuser
-- ----------------------------
INSERT INTO `webuser_webuser` VALUES ('6', '江西赣州', 'http://www.baidu.com', '[u\'0\', u\'1\', u\'2\']', '[u\'2\']', '2016-05-05 21:05:08', '0', '15', '0');
INSERT INTO `webuser_webuser` VALUES ('7', '江西赣州', 'http://www.baidu.com', null, 'IT 狗', '2016-04-26 19:45:05', '0', '16', '0');
INSERT INTO `webuser_webuser` VALUES ('8', '江西赣州', 'http://www.baidu.com', null, 'IT 狗', '2016-04-15 20:21:49', '1', '17', '0');
INSERT INTO `webuser_webuser` VALUES ('9', null, null, null, null, '2016-04-16 11:28:21', '1', '18', '0');
INSERT INTO `webuser_webuser` VALUES ('10', null, null, null, null, '2016-04-16 11:29:51', '1', '19', '0');
INSERT INTO `webuser_webuser` VALUES ('11', null, null, null, null, '2016-04-16 11:31:18', '1', '20', '0');
INSERT INTO `webuser_webuser` VALUES ('12', '', '', null, '', '2016-04-29 09:11:39', '1', '21', '0');
INSERT INTO `webuser_webuser` VALUES ('13', null, null, null, null, '2016-05-18 11:05:46', '1', '22', '0');
INSERT INTO `webuser_webuser` VALUES ('14', null, null, null, null, '2016-05-19 16:37:57', '1', '24', '0');

-- ----------------------------
-- Table structure for webuser_webuser_friends
-- ----------------------------
DROP TABLE IF EXISTS `webuser_webuser_friends`;
CREATE TABLE `webuser_webuser_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_webuser_id` int(11) NOT NULL,
  `to_webuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_webuser_id` (`from_webuser_id`,`to_webuser_id`) USING BTREE,
  KEY `webuser_web_to_webuser_id_3a25ea940e9d729f_fk_webuser_webuser_id` (`to_webuser_id`) USING BTREE,
  CONSTRAINT `webuser_webuser_friends_ibfk_1` FOREIGN KEY (`to_webuser_id`) REFERENCES `webuser_webuser` (`id`),
  CONSTRAINT `webuser_webuser_friends_ibfk_2` FOREIGN KEY (`from_webuser_id`) REFERENCES `webuser_webuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webuser_webuser_friends
-- ----------------------------
INSERT INTO `webuser_webuser_friends` VALUES ('11', '6', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('1', '7', '6');
INSERT INTO `webuser_webuser_friends` VALUES ('2', '7', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('3', '7', '8');
INSERT INTO `webuser_webuser_friends` VALUES ('4', '7', '9');
INSERT INTO `webuser_webuser_friends` VALUES ('5', '7', '10');
INSERT INTO `webuser_webuser_friends` VALUES ('6', '7', '11');
INSERT INTO `webuser_webuser_friends` VALUES ('15', '7', '12');
INSERT INTO `webuser_webuser_friends` VALUES ('7', '8', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('14', '8', '12');
INSERT INTO `webuser_webuser_friends` VALUES ('8', '9', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('9', '10', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('10', '11', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('13', '12', '7');
INSERT INTO `webuser_webuser_friends` VALUES ('12', '12', '8');
