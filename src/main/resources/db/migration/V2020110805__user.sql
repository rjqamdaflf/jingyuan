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

 Date: 08/11/2020 11:59:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ob8kqyqqgmefl0aco34akdtpe`(`email`) USING BTREE,
  UNIQUE INDEX `UK_sb8bbouer5wak8vyiiy4pf2bx`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'i@waylau.com', 'rjqamdaflf', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'rjqamdaflf');
INSERT INTO `user` VALUES (2, NULL, 'waylau@waylau.com', 'Way Lau', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'abc');
INSERT INTO `user` VALUES (7, NULL, 'fewqfweqf@qq.ocm', 'admin', '$2a$10$k3JkbgABSwPFdWNg.2wv4eJU2aEW9oDNc3eQmxIDaKWFz70y6voru', 'admin');
INSERT INTO `user` VALUES (8, NULL, 'fqwfeweqfwqf', 'fewqfweqf', '$2a$10$uotAXcVBD6ROIfKIqbK40udc5NDq74l6MVm2p8FZR617PSPike6OC', 'aaa');
INSERT INTO `user` VALUES (9, NULL, '2qjfiewjfjw@qq.com', 'ffffff', '$2a$10$JSJP.ZKUUtUQwoHTm6w7VeG.W3EbmdhXPcX128oJOc5aJ3KnMcvLW', 'ffffff');

SET FOREIGN_KEY_CHECKS = 1;
