/*
 Navicat Premium Data Transfer

 Source Server         : 3.34.112.69
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 3.34.112.69:7777
 Source Schema         : jingyuan

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 08/11/2020 11:50:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_management
-- ----------------------------
DROP TABLE IF EXISTS `app_management`;
CREATE TABLE `app_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `down_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '下载url',
  `create_time` datetime(0) NOT NULL,
  `center_id` int(11) NOT NULL,
  `down_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '下载密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of app_management
-- ----------------------------
INSERT INTO `app_management` VALUES (2, '兰州能管平台', 'http://xcgl.jy100.com', '2020-10-01 16:00:00', 109, '55454');
INSERT INTO `app_management` VALUES (6, '北京能管平台', 'http://jcgl.jy100.com', '2020-10-09 16:00:00', 112, 'fewqfwe');
INSERT INTO `app_management` VALUES (10, '沈阳能管平台', 'http://jcgl.jy100.com/Center.aspx?centerId=13', '2020-10-29 16:00:00', 107, 'fqwfewq33');
INSERT INTO `app_management` VALUES (11, '西宁能管平台', 'http://www.kugou.com/', '2020-10-19 16:00:00', 106, 'fqwfew');
INSERT INTO `app_management` VALUES (12, '北京分时控制', 'https://www.jd.com/', '2020-10-12 16:00:00', 107, 'rewqfw');
INSERT INTO `app_management` VALUES (16, '兰州分时控制333', 'https://www.bilibili.com/', '2020-10-12 16:00:00', 106, 'fwqer');
INSERT INTO `app_management` VALUES (17, '天水分时控制', 'https://mail.googlejfoiejwqpijfoqw.com/mail/u/0/', '2020-10-19 16:00:00', 109, 'ewqrewjfejwqjfjfieojwq');
INSERT INTO `app_management` VALUES (25, 'fdfasfew', 'http://fwqef.com', '2020-10-30 16:00:00', 106, 'fewqf');
INSERT INTO `app_management` VALUES (26, 'fdfasfew', 'fwqef', '2020-10-30 16:00:00', 108, 'fewqf');
INSERT INTO `app_management` VALUES (27, 'jfoijejwjqf', 'fjieowjqioojf', '2020-10-31 13:31:57', 106, 'ijfeiojwqiojf');
INSERT INTO `app_management` VALUES (29, 'fdfasfew', 'fwqef', '2020-10-30 16:00:00', 107, 'fewqf');
INSERT INTO `app_management` VALUES (30, 'jfoijeoiwjqifjowjqfj', 'fjeoijwioqjfijewiojqfioj', '2020-10-31 13:32:11', 106, 'fjeiojwiqjfijwqijfowqef');
INSERT INTO `app_management` VALUES (31, '48789784f56ew4w', 'w4f89we489f4', '2020-10-31 13:32:41', 106, '4f5e4wq894f89wqef');
INSERT INTO `app_management` VALUES (32, '48789784f56ew4w', 'w4f89we489f4', '2020-10-30 16:00:00', 109, '4f5e4wq894f89wqef');
INSERT INTO `app_management` VALUES (33, 'fewqfewqfhnfjjwj', 'fjeoiwkssfopjoiewdjfiojwqofqjqfiojij', '2020-10-30 16:00:00', 112, 'fewqfewifjiejwqiofjweqf');
INSERT INTO `app_management` VALUES (34, 'hnfjjwjdjfiojweqifjowefw', 'fjeokjfikojeiowfiojqwfoiwjqfiojij', '2020-10-30 16:00:00', 112, 'fweqfewqfifjiejwqiofjweqf');
INSERT INTO `app_management` VALUES (35, 'hnfjjwjjfiojeiojf', 'kfopekwqkfewjoifjwqoijef', '2020-10-30 16:00:00', 110, 'fewqfewqfweq');
INSERT INTO `app_management` VALUES (36, 'hnfjjwj', 'oifjioejwqifioweqffjeoiwjqfiojij', '2020-10-30 16:00:00', 109, 'fewqfwefwfiijwqeiofjiowqfqw');

SET FOREIGN_KEY_CHECKS = 1;
