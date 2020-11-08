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

 Date: 08/11/2020 11:59:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menu_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单路径',
  `menu_parent_id` int(11) NULL DEFAULT NULL COMMENT '上级id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `menu_english` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '链接管理', '/sys/link/', NULL, '2020-10-19 18:20:15', '2020-10-19 18:20:20', 'link');
INSERT INTO `sys_menu` VALUES (2, '中心管理', '/sys/link/center', 1, '2020-10-19 18:21:22', '2020-10-19 18:21:23', 'link_center');
INSERT INTO `sys_menu` VALUES (3, '链接管理', '/sys/link/link', 1, '2020-10-21 18:22:10', '2020-10-29 18:22:12', 'link_link');
INSERT INTO `sys_menu` VALUES (4, '客户端管理', '/sys/link/app', 1, '2020-10-13 18:22:29', '2020-10-21 18:22:33', 'link_app');
INSERT INTO `sys_menu` VALUES (5, '系统管理', '/sys/system/', NULL, '2020-10-13 20:25:37', '2020-10-22 20:25:40', 'system');
INSERT INTO `sys_menu` VALUES (6, '系统公告', '/sys/system/notice', 5, '2020-10-19 20:26:20', '2020-10-19 20:26:22', 'system_notice');

SET FOREIGN_KEY_CHECKS = 1;
