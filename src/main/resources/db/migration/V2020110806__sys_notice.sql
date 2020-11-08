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

 Date: 08/11/2020 11:59:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `show_flag` smallint(255) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (2, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf8877', 1, '2020-10-19 14:33:57');
INSERT INTO `sys_notice` VALUES (3, '33555247ddd', '2020-10-15 22:58:10', '857745', 0, '2020-10-19 15:39:57');
INSERT INTO `sys_notice` VALUES (4, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf8877', 0, '2020-10-19 14:33:57');
INSERT INTO `sys_notice` VALUES (5, '33555247666633', '2020-10-15 22:58:10', '2020-11-12', 1, '2020-11-02 15:09:26');
INSERT INTO `sys_notice` VALUES (6, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf887784411', 0, '2020-10-19 15:40:09');
INSERT INTO `sys_notice` VALUES (7, 'jfijweqijfiowqjf', '2020-10-15 22:58:10', '857745', 1, '2020-11-02 15:00:18');
INSERT INTO `sys_notice` VALUES (9, '33555247jkfkoejwoiqjfiojewiojfiowjqf', '2020-10-15 22:58:10', '857745', 0, '2020-10-31 13:36:07');
INSERT INTO `sys_notice` VALUES (10, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioeji4jijfjjeiowjqwjqf88773', 1, '2020-11-02 15:08:59');
INSERT INTO `sys_notice` VALUES (11, '33555247jojiojfoiqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2020-10-15 22:58:10', '857745', 0, '2020-10-31 14:23:06');
INSERT INTO `sys_notice` VALUES (12, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf887754', 1, '2020-10-19 15:57:44');
INSERT INTO `sys_notice` VALUES (13, 'sn加油', '2020-10-15 22:58:10', 's10', 0, '2020-10-31 13:36:45');
INSERT INTO `sys_notice` VALUES (14, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf昌就覅耳机你8877', 1, '2020-10-19 15:40:17');
INSERT INTO `sys_notice` VALUES (15, '33555247', '2020-10-15 22:58:10', '857745', 1, '2020-10-23 22:58:15');
INSERT INTO `sys_notice` VALUES (16, 'jfioejwqoijfijewfjiwqjfijweiofjid fjoiew jiqfojweoi fi9jweoi fjwq oifj wqof', '2020-10-31 14:21:55', 'jfiojiewjiqfjoi', 1, '2020-10-31 14:21:55');
INSERT INTO `sys_notice` VALUES (17, '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2020-10-31 14:22:09', '111111111111111111111111111111', 0, '2020-10-31 14:22:09');
INSERT INTO `sys_notice` VALUES (18, 'abc', '2020-10-31 14:22:57', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqfkoiejwifiojweqiojfiowjeifjwqijefqowij', 1, '2020-11-02 15:00:32');
INSERT INTO `sys_notice` VALUES (19, 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', '2020-11-02 06:21:19', 'abc', 1, '2020-11-02 10:53:00');
INSERT INTO `sys_notice` VALUES (20, 'fjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjssjfojieowjqijfijisjokfjiowjifjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjssjfojieowjqijfijisjokfjiowjifjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjssjfojieowjqijfijisjokfjiowji', '2020-11-02 10:53:27', 'jfoijewijqifj', 1, '2020-11-02 10:53:27');
INSERT INTO `sys_notice` VALUES (21, 'abfjwdojfiojwqiojfiwqfe', '2020-11-02 15:01:25', 'abcjcjjfjifjjewqfjeoiwqj', 1, '2020-11-02 15:07:55');

SET FOREIGN_KEY_CHECKS = 1;
