/*
 Navicat Premium Data Transfer

 Source Server         : beibei
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : mxonline

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 02/11/2019 09:43:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  INDEX `auth_group_permissions_group_id_b120cbf9`(`group_id`) USING BTREE,
  INDEX `auth_group_permissions_permission_id_84c5c92e`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
  INDEX `auth_permission_content_type_id_2f476e4b`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (25, 'Can add 课程资源', 7, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (26, 'Can change 课程资源', 7, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 课程资源', 7, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (28, 'Can view 课程资源', 7, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (29, 'Can add 视频', 8, 'add_video');
INSERT INTO `auth_permission` VALUES (30, 'Can change 视频', 8, 'change_video');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 视频', 8, 'delete_video');
INSERT INTO `auth_permission` VALUES (32, 'Can view 视频', 8, 'view_video');
INSERT INTO `auth_permission` VALUES (33, 'Can add 课程章节', 9, 'add_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can change 课程章节', 9, 'change_lesson');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 课程章节', 9, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (36, 'Can view 课程章节', 9, 'view_lesson');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程信息', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程信息', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程信息', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (40, 'Can view 课程信息', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (41, 'Can add 用户咨询', 11, 'add_userask');
INSERT INTO `auth_permission` VALUES (42, 'Can change 用户咨询', 11, 'change_userask');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 用户咨询', 11, 'delete_userask');
INSERT INTO `auth_permission` VALUES (44, 'Can view 用户咨询', 11, 'view_userask');
INSERT INTO `auth_permission` VALUES (45, 'Can add 课程评论', 12, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (46, 'Can change 课程评论', 12, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 课程评论', 12, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (48, 'Can view 课程评论', 12, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户课程', 13, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户课程', 13, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户课程', 13, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (52, 'Can view 用户课程', 13, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (53, 'Can add 用户收藏', 14, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (54, 'Can change 用户收藏', 14, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 用户收藏', 14, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (56, 'Can view 用户收藏', 14, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户消息', 15, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户消息', 15, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户消息', 15, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户消息', 15, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (61, 'Can add 教师', 16, 'add_teacher');
INSERT INTO `auth_permission` VALUES (62, 'Can change 教师', 16, 'change_teacher');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 教师', 16, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (64, 'Can view 教师', 16, 'view_teacher');
INSERT INTO `auth_permission` VALUES (65, 'Can add 课程机构', 17, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (66, 'Can change 课程机构', 17, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 课程机构', 17, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (68, 'Can view 课程机构', 17, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (69, 'Can add 城市', 18, 'add_city');
INSERT INTO `auth_permission` VALUES (70, 'Can change 城市', 18, 'change_city');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 城市', 18, 'delete_city');
INSERT INTO `auth_permission` VALUES (72, 'Can view 城市', 18, 'view_city');
INSERT INTO `auth_permission` VALUES (73, 'Can add Bookmark', 19, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (74, 'Can change Bookmark', 19, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (75, 'Can delete Bookmark', 19, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (76, 'Can view Bookmark', 19, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (77, 'Can add User Setting', 20, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (78, 'Can change User Setting', 20, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (79, 'Can delete User Setting', 20, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (80, 'Can view User Setting', 20, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (81, 'Can add User Widget', 21, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (82, 'Can change User Widget', 21, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (83, 'Can delete User Widget', 21, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (84, 'Can view User Widget', 21, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (85, 'Can add log entry', 22, 'add_log');
INSERT INTO `auth_permission` VALUES (86, 'Can change log entry', 22, 'change_log');
INSERT INTO `auth_permission` VALUES (87, 'Can delete log entry', 22, 'delete_log');
INSERT INTO `auth_permission` VALUES (88, 'Can view log entry', 22, 'view_log');
INSERT INTO `auth_permission` VALUES (89, 'Can add captcha store', 23, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (90, 'Can change captcha store', 23, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (91, 'Can delete captcha store', 23, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (92, 'Can view captcha store', 23, 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (120, 'KHCJ', 'khcj', 'f278cb6010ddeaed3e5f7660e3d73ef2fc32f223', '2019-10-27 02:19:25.481382');
INSERT INTO `captcha_captchastore` VALUES (121, 'ZJXT', 'zjxt', '800eb974c0d38aff166e1720c0907e5d8fbffc95', '2019-10-27 02:21:15.557011');
INSERT INTO `captcha_captchastore` VALUES (122, 'KOXD', 'koxd', '10c6874407290cf2112c2212623976d3c2c7b0ea', '2019-10-30 14:10:11.942412');
INSERT INTO `captcha_captchastore` VALUES (117, 'KVEN', 'kven', '9466b6f371bc3b86067348843ba4b24a6f3bea4a', '2019-10-25 00:47:22.406080');
INSERT INTO `captcha_captchastore` VALUES (118, 'HVIN', 'hvin', '74d06ef95b3351e8359582ba966e7c2c5d351f1c', '2019-10-27 02:19:22.992619');
INSERT INTO `captcha_captchastore` VALUES (119, 'VQOJ', 'vqoj', 'ba081e2f9c6882b2a54d6d2eeaecf8601227d55f', '2019-10-27 02:19:24.590730');
INSERT INTO `captcha_captchastore` VALUES (116, 'MSXB', 'msxb', '752a3707d8f9cd9b85742496dd7c7b209574080c', '2019-10-25 00:47:20.125724');
INSERT INTO `captcha_captchastore` VALUES (115, 'KDKH', 'kdkh', '2f971509171e1a91d1bd65de49b7d3ed2d086a5c', '2019-10-25 00:46:51.166930');
INSERT INTO `captcha_captchastore` VALUES (114, 'XFXR', 'xfxr', '8670e537df59b4edfb1f3ca0d4d179fac5c6594c', '2019-10-25 00:46:29.874803');
INSERT INTO `captcha_captchastore` VALUES (113, 'UHXL', 'uhxl', '4589acbf0526ca784b9875009d17c44cb4a9f3fe', '2019-10-25 00:46:26.328031');
INSERT INTO `captcha_captchastore` VALUES (112, 'DXJG', 'dxjg', '2a87a35606ca7c54cd520554e96402970255c701', '2019-10-25 00:45:47.510555');
INSERT INTO `captcha_captchastore` VALUES (111, 'AJHV', 'ajhv', 'b0cf865c065e4a1df90ae08b4ecbcf4bb645b2cb', '2019-10-25 00:45:34.106234');
INSERT INTO `captcha_captchastore` VALUES (110, 'VLQJ', 'vlqj', 'ced713d4506b82138a309884e230181872b16c8d', '2019-10-25 00:45:28.071552');
INSERT INTO `captcha_captchastore` VALUES (109, 'YXST', 'yxst', '6f904ef3698063ca893dbc99fde19a6af8f188a9', '2019-10-25 00:45:24.290899');
INSERT INTO `captcha_captchastore` VALUES (108, 'SYZE', 'syze', 'd2ba2f2e0de7ca6427fda829ac12521c5298095c', '2019-10-25 00:45:23.530147');
INSERT INTO `captcha_captchastore` VALUES (107, 'HNSL', 'hnsl', '89cb0747152fe50e835102dbac9d7d32ab01a973', '2019-10-25 00:45:22.247483');
INSERT INTO `captcha_captchastore` VALUES (106, 'JGVJ', 'jgvj', '9ff24e47ff7c85966f04f21f26315ea9583b0154', '2019-10-25 00:44:50.892802');
INSERT INTO `captcha_captchastore` VALUES (105, 'VJTW', 'vjtw', 'fa68315da5e60f5409b5992eb6949bbb384ef5a2', '2019-10-25 00:44:49.092603');
INSERT INTO `captcha_captchastore` VALUES (104, 'CJHF', 'cjhf', 'cd9734a6d15b3060e3b2047e5b64ae5cb2cb6e05', '2019-10-25 00:44:47.624315');
INSERT INTO `captcha_captchastore` VALUES (103, 'AODP', 'aodp', 'd29b96b39de45a4096e04b9f5e6756bd64436099', '2019-10-25 00:44:11.069053');
INSERT INTO `captcha_captchastore` VALUES (102, 'GUAA', 'guaa', '50a7580168134413f1ce11d9809313351ea8463e', '2019-10-25 00:44:03.024736');
INSERT INTO `captcha_captchastore` VALUES (101, 'FOUV', 'fouv', 'c313bde4951b4efab26bab4b50367cf0f3e4f449', '2019-10-25 00:41:35.368171');
INSERT INTO `captcha_captchastore` VALUES (100, 'KOGU', 'kogu', '0e19ff389e03052b80b826b0f0980fdd72e0c580', '2019-10-25 00:41:33.734025');
INSERT INTO `captcha_captchastore` VALUES (99, 'FMPC', 'fmpc', '17a537ac072ab34c6d963794f1edf66b185a2409', '2019-10-25 00:40:25.563708');
INSERT INTO `captcha_captchastore` VALUES (98, 'XRDZ', 'xrdz', 'd678bb335b05e3668e39367fa92ca98eb9692c2a', '2019-10-25 00:40:20.808001');
INSERT INTO `captcha_captchastore` VALUES (97, 'LRXX', 'lrxx', '7055b5b0e1300407765367312031950e134fb23e', '2019-10-25 00:40:18.589724');
INSERT INTO `captcha_captchastore` VALUES (96, 'ZSRU', 'zsru', '113161e6ef86ea438c6a583e2ce6e5f2de314ca0', '2019-10-24 16:34:05.179459');
INSERT INTO `captcha_captchastore` VALUES (95, 'UVFB', 'uvfb', '1c16452e3279ce1de50ac5056d4cdc0cc8d0891e', '2019-10-24 16:34:00.515729');
INSERT INTO `captcha_captchastore` VALUES (94, 'QOKE', 'qoke', '1dc48ddbfa215d6a32d0db0051f840961263ca35', '2019-10-24 16:33:59.148148');
INSERT INTO `captcha_captchastore` VALUES (93, 'QKWU', 'qkwu', 'fb0973ff41f5091bb8634b8b9000a855b53a2d86', '2019-10-24 16:33:07.353558');
INSERT INTO `captcha_captchastore` VALUES (92, 'GCKV', 'gckv', 'c455ff933c696c9d1918ff159c91a9a44455d1ba', '2019-10-24 16:33:06.341544');
INSERT INTO `captcha_captchastore` VALUES (91, 'FWQO', 'fwqo', '8881921daa3508238a5601825d49ee83aca2c50d', '2019-10-24 16:33:04.993819');
INSERT INTO `captcha_captchastore` VALUES (85, 'SOUQ', 'souq', '4f8ead8516edd4fe7888122d1026bfc008faacb2', '2019-10-24 13:48:15.572240');
INSERT INTO `captcha_captchastore` VALUES (83, 'UYZN', 'uyzn', 'fc39711d4fe04e20c36f5d13dfe80b22e4b56794', '2019-10-23 14:58:10.917904');
INSERT INTO `captcha_captchastore` VALUES (82, 'QIOB', 'qiob', 'c307b185fcedd35bc8b9823cbda45ebd4fe23c9f', '2019-10-23 14:58:05.336791');
INSERT INTO `captcha_captchastore` VALUES (90, 'DIIR', 'diir', '129f9aa369ef16d645f40d9401d44ffa53b0188b', '2019-10-24 16:32:11.196240');
INSERT INTO `captcha_captchastore` VALUES (89, 'WUUI', 'wuui', 'c277e3cc2cd31ccd6c9433b48347582423970163', '2019-10-24 16:32:07.138289');
INSERT INTO `captcha_captchastore` VALUES (88, 'PKYY', 'pkyy', '53f761fb3620addfb157932ab20bbc0180679aec', '2019-10-24 16:32:05.205794');
INSERT INTO `captcha_captchastore` VALUES (87, 'MYHI', 'myhi', 'c9ce50eaa5ef65e12ae085104df87ad9dc9ac7b3', '2019-10-24 13:51:31.682166');
INSERT INTO `captcha_captchastore` VALUES (86, 'ABDG', 'abdg', '9276cc3627296b05a7892ef60f42e76fa5f20cc3', '2019-10-24 13:48:19.846111');

-- ----------------------------
-- Table structure for course_course
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_time` int(11) NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `is_classics` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_course_teacher_id_f04a37b5`(`teacher_id`) USING BTREE,
  INDEX `course_course_course_org_id_6a10e205`(`course_org_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES (1, '2019-10-10 13:22:00.000000', 'Python入门到入土', '学习python', 0, 'cj', 0, 0, 0, '后端开发', 'python', '需要有python基础', '学习python很重要', '送分', 'courses/2019/10/230357-15200030370aef.jpg', 1, 2, 1);

-- ----------------------------
-- Table structure for course_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `course_courseresource`;
CREATE TABLE `course_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_courseresource_course_id_d5504211`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_lesson
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_lesson_course_id_65df4a1c`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_video_lesson_id_0731e8a9`(`lesson_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  INDEX `django_admin_log_content_type_id_c4bce8eb`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (7, 'course', 'courseresource');
INSERT INTO `django_content_type` VALUES (8, 'course', 'video');
INSERT INTO `django_content_type` VALUES (9, 'course', 'lesson');
INSERT INTO `django_content_type` VALUES (10, 'course', 'course');
INSERT INTO `django_content_type` VALUES (11, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (12, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (13, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (14, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (15, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (17, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (18, 'organization', 'city');
INSERT INTO `django_content_type` VALUES (19, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (20, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (23, 'captcha', 'captchastore');

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
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-09-20 08:03:29.351609');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-09-20 08:03:29.406462');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-09-20 08:03:29.448349');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-09-20 08:03:29.676258');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-09-20 08:03:29.683239');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-09-20 08:03:29.691219');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-09-20 08:03:29.698200');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-09-20 08:03:29.700195');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-09-20 08:03:29.707176');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-09-20 08:03:29.714156');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-09-20 08:03:29.720140');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2019-09-20 08:03:29.749063');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2019-09-20 08:03:29.756044');
INSERT INTO `django_migrations` VALUES (14, 'users', '0001_initial', '2019-09-20 08:03:29.809900');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2019-09-20 08:03:30.057289');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2019-09-20 08:03:30.162009');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-20 08:03:30.171982');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2019-09-20 08:03:30.182952');
INSERT INTO `django_migrations` VALUES (19, 'organization', '0001_initial', '2019-10-08 22:29:53.274636');
INSERT INTO `django_migrations` VALUES (20, 'course', '0001_initial', '2019-10-08 22:29:53.443186');
INSERT INTO `django_migrations` VALUES (21, 'operation', '0001_initial', '2019-10-08 22:29:53.704487');
INSERT INTO `django_migrations` VALUES (22, 'xadmin', '0001_initial', '2019-10-09 03:44:54.659484');
INSERT INTO `django_migrations` VALUES (23, 'xadmin', '0002_log', '2019-10-09 03:44:54.794510');
INSERT INTO `django_migrations` VALUES (24, 'xadmin', '0003_auto_20160715_0100', '2019-10-09 03:44:54.834596');
INSERT INTO `django_migrations` VALUES (25, 'organization', '0002_auto_20191010_2034', '2019-10-10 12:35:09.468083');
INSERT INTO `django_migrations` VALUES (26, 'captcha', '0001_initial', '2019-10-17 14:25:51.540315');
INSERT INTO `django_migrations` VALUES (27, 'course', '0002_auto_20191018_1108', '2019-10-18 03:09:04.019756');
INSERT INTO `django_migrations` VALUES (28, 'organization', '0003_auto_20191030_2201', '2019-10-30 14:04:49.435206');
INSERT INTO `django_migrations` VALUES (29, 'course', '0003_course_course_org', '2019-10-30 14:04:49.526433');
INSERT INTO `django_migrations` VALUES (30, 'course', '0004_course_is_classics', '2019-10-30 14:07:16.156723');
INSERT INTO `django_migrations` VALUES (31, 'organization', '0004_remove_courseorg_is_classics', '2019-10-30 14:07:16.256614');

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('4mroavv0ggwf90ixzp6bcyeizmcrc68g', 'ZmI0NGRhMDEwZDg0YWY0YWJhY2JlNDg0MTQ4ZDZkMWQ3MjliMjYyMjp7fQ==', '2019-11-06 14:38:56.752876');
INSERT INTO `django_session` VALUES ('cvm761q37t6wkvetdr42ebx8p07s1p8t', 'OWVmMmUwNTc0MGRmYzg2MjhkMzU0MzcyY2QzMGY5MjUxMjBhNmI4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDkwZDYzZGNkMWUyY2JmMjkxYzYyZTFmNGQ4YTUyMzE1MmQ0ZjJkIiwiTElTVF9RVUVSWSI6W1siY291cnNlIiwiY291cnNlIl0sIiJdfQ==', '2019-10-24 13:24:30.976594');
INSERT INTO `django_session` VALUES ('00e1zmkvdavzvwgc5g1myiqszw8mlw3a', 'MDQwYjJlMWJmOTQyMjFjNDI1N2RhOTAzOTg2NTFjZDhkYzk3OTEwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDkwZDYzZGNkMWUyY2JmMjkxYzYyZTFmNGQ4YTUyMzE1MmQ0ZjJkIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY291cnNlb3JnIl0sIiJdfQ==', '2019-11-14 03:04:48.719346');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_course_id_c88f1b6a`(`course_id`) USING BTREE,
  INDEX `operation_coursecomments_user_id_f5ff70b3`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (1, '2019-10-31 15:23:44.547548', '贝贝', '15659720810', '你好');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_course_id_9f1eab2e`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_user_id_835fe81a`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_user_id_ad46a6af`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usermessage_user_id_716f8b9d`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organization_city
-- ----------------------------
DROP TABLE IF EXISTS `organization_city`;
CREATE TABLE `organization_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_city
-- ----------------------------
INSERT INTO `organization_city` VALUES (1, '2019-10-10 01:58:00.000000', '上海', '魔都');
INSERT INTO `organization_city` VALUES (2, '2019-10-10 07:18:00.000000', '北京', '首都');
INSERT INTO `organization_city` VALUES (3, '2019-10-29 01:32:00.000000', '泉州', '泉州');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `is_auth` tinyint(1) NOT NULL,
  `is_gold` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseorg_city_id_4a842f85`(`city_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '2019-10-10 09:41:00.000000', '慕课网', '专业', '全国知名', 'pxjg', 0, 0, 'org/2019/10/timg.jpg', '北京市', 0, 0, 2, 1, 1);
INSERT INTO `organization_courseorg` VALUES (2, '2019-10-29 01:33:00.000000', '仰恩大学', '仰恩大学', '全国知名', 'gx', 0, 0, 'org/2019/10/下载.jfif', '福建省泉州市仰恩大学', 0, 0, 3, 0, 0);

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_org_id_cd000a1a`(`org_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, '2019-10-10 12:56:00.000000', 'beibei', 0, '贝贝无限集团', '打工仔', '吹逼', 0, 0, 18, 'teacher/2019/10/233807-1525189087b4a0.jpg', 1);

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
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
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$150000$qrHOn4a3v2vH$fNtLH3tBb3GJ7LMPq+ZHxmAigE8u7KU+L6Kg+FVR/es=', '2019-10-30 14:05:27.793219', 1, 'beibei', '', '', 'tttbd@qq.com', 1, 1, '2019-10-09 03:51:13.534661', '', NULL, '', '', '', 'default.jpg');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$150000$TSYy94yLbDeH$rAxqe6hXjBYvO7UyMiriY2YF+Nl1pcuRt4eOVhmUeRo=', '2019-10-15 08:31:56.936991', 0, 'beibei1', '', '', '', 0, 1, '2019-10-10 01:09:52.686172', '', NULL, '', '', '', 'default.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_userprofile_id_a4496a80`(`userprofile_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_user_permissions_userprofile_id_34544737`(`userprofile_id`) USING BTREE,
  INDEX `users_userprofile_user_permissions_permission_id_393136b6`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2019-10-10 01:09:53.069762', '127.0.0.1', '2', 'beibei1', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-10-10 01:59:07.797934', '127.0.0.1', '1', 'City object (1)', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-10-10 07:19:07.420194', '127.0.0.1', '2', '北京', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-10-10 09:42:07.815547', '127.0.0.1', '1', 'CourseOrg object (1)', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-10-10 12:57:21.536875', '127.0.0.1', '1', 'beibei', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-10-10 13:23:49.336720', '127.0.0.1', '1', 'Course object (1)', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-10-29 01:33:14.843008', '127.0.0.1', '3', '泉州', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-10-29 01:34:30.038574', '127.0.0.1', '2', '仰恩大学', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-10-29 03:05:02.418599', '127.0.0.1', '1', '慕课网', 'change', '修改 image', 17, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-10-30 14:07:26.366679', '127.0.0.1', '1', '慕课网', 'change', '修改 is_auth 和 is_gold', 17, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-10-30 14:07:45.329355', '127.0.0.1', '1', 'Course object (1)', 'change', '修改 is_classics', 10, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-10-30 14:10:50.157715', '127.0.0.1', '1', 'Course object (1)', 'change', '修改 course_org', 10, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', 'https://bootswatch.com/3/cerulean/bootstrap.min.css', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
