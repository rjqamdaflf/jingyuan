/*
 Navicat Premium Data Transfer

 Source Server         : 116.62.123.32
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 116.62.123.32:7777
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 08/11/2020 11:58:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for center_management
-- ----------------------------
DROP TABLE IF EXISTS `center_management`;
CREATE TABLE `center_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime NOT NULL,
  `center_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of center_management
-- ----------------------------
INSERT INTO `center_management` VALUES (106, '2020-10-08 16:00:00', '短信中心');
INSERT INTO `center_management` VALUES (107, '2020-10-19 10:04:16', '人工智能控制');
INSERT INTO `center_management` VALUES (108, '2020-10-19 10:04:23', '西宁能管平台');
INSERT INTO `center_management` VALUES (109, '2020-10-19 10:04:30', '天水能管平台');
INSERT INTO `center_management` VALUES (110, '2020-10-19 10:04:37', '兰州能管平台');
INSERT INTO `center_management` VALUES (111, '2020-10-19 10:04:42', '沈阳能管平台');
INSERT INTO `center_management` VALUES (112, '2020-10-19 10:04:48', '北京能管平台');

SET FOREIGN_KEY_CHECKS = 1;
