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

 Date: 08/11/2020 11:59:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for link_management
-- ----------------------------
DROP TABLE IF EXISTS `link_management`;
CREATE TABLE `link_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sys_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `center_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of link_management
-- ----------------------------
INSERT INTO `link_management` VALUES (1, '北京供暖数据总览', 'http://jcny.jy100.com:30099/cAdmin/index.html', '2020-11-04 16:00:00', 112);
INSERT INTO `link_management` VALUES (2, '兰州能管平台', 'http://xcgl.jy100.com', '2020-10-01 16:00:00', 110);
INSERT INTO `link_management` VALUES (6, '北京能管平台', 'http://jcgl.jy100.com', '2020-10-09 16:00:00', 110);
INSERT INTO `link_management` VALUES (10, '沈阳能管平台', 'http://ptgl.jy100.com', '2020-10-29 16:00:00', 111);
INSERT INTO `link_management` VALUES (11, '西宁能管平台', 'http://www.kugou.com/', '2020-10-19 16:00:00', 110);
INSERT INTO `link_management` VALUES (12, '北京分时控制', 'https://www.jd.com/', '2020-10-12 16:00:00', 107);
INSERT INTO `link_management` VALUES (14, '沈阳分时控制', 'http://taobao.com/', '2020-09-30 16:00:00', 108);
INSERT INTO `link_management` VALUES (16, '兰州分时控制', 'https://www.bilibili.com/', '2020-10-12 16:00:00', 109);
INSERT INTO `link_management` VALUES (17, '天水分时控制', 'https://mail.google.com/mail/u/0/', '2020-10-19 16:00:00', 107);
INSERT INTO `link_management` VALUES (30, 'baidu', 'http://baidu.com', '2020-11-02 06:15:58', 107);
INSERT INTO `link_management` VALUES (31, 'jd', 'https://www.jd.com/', '2020-11-01 16:00:00', 107);

SET FOREIGN_KEY_CHECKS = 1;
