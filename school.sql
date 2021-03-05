/*
 Navicat Premium Data Transfer

 Source Server         : 美好
 Source Server Type    : MySQL
 Source Server Version : 50090
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 50090
 File Encoding         : 65001

 Date: 05/03/2021 21:09:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for datas
-- ----------------------------
DROP TABLE IF EXISTS `datas`;
CREATE TABLE `datas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `joinDate` datetime NOT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datas
-- ----------------------------
INSERT INTO `datas` VALUES (8, ' 胡歌', '1', 20, '北京', '2021-01-29 00:00:00');
INSERT INTO `datas` VALUES (2, '宋伟', '0', 22, '北京', '2021-01-04 17:39:05');
INSERT INTO `datas` VALUES (3, '王安石', '0', 13, '上海', '2021-02-07 17:39:10');
INSERT INTO `datas` VALUES (4, '强森', '1', 65, '天津', '2020-12-29 17:39:15');
INSERT INTO `datas` VALUES (5, 'C罗', '1', 33, '海口', '2021-01-18 17:39:22');
INSERT INTO `datas` VALUES (6, '霍元甲', '0', 43, '大连', '2021-01-12 17:39:26');
INSERT INTO `datas` VALUES (7, '飞侠', '1', 23, '大理', '2021-01-04 17:39:33');
INSERT INTO `datas` VALUES (9, '范伟', '0', 45, '上海', '2021-01-18 00:00:00');
INSERT INTO `datas` VALUES (10, '范伟', '1', 67, '北京', '2021-01-30 00:00:00');
INSERT INTO `datas` VALUES (11, '美丽', '0', 19, '广州', '2021-01-13 00:00:00');

-- ----------------------------
-- Table structure for star
-- ----------------------------
DROP TABLE IF EXISTS `star`;
CREATE TABLE `star`  (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of star
-- ----------------------------
INSERT INTO `star` VALUES (1, '小小', '12345');
INSERT INTO `star` VALUES (2, '一一', '22222');
INSERT INTO `star` VALUES (3, '三三', '76543');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张三', '123');
INSERT INTO `user` VALUES (2, '李四', '234');
INSERT INTO `user` VALUES (3, '胡歌', '345');
INSERT INTO `user` VALUES (4, 'rfv', '234');
INSERT INTO `user` VALUES (5, 'rfv', 'tgb');
INSERT INTO `user` VALUES (6, 'rfv', '567');
INSERT INTO `user` VALUES (7, 'ujm', '456');
INSERT INTO `user` VALUES (8, 'juyjy', 'jytjyt');
INSERT INTO `user` VALUES (9, 'ujmyum', 'hgrhn');
INSERT INTO `user` VALUES (10, 'ujm', 'regtre');
INSERT INTO `user` VALUES (11, 'eyrtyrty', 'hfghfh');
INSERT INTO `user` VALUES (12, 'jghj', 'gjgj');
INSERT INTO `user` VALUES (13, 'hgfhf', 'hgfh');
INSERT INTO `user` VALUES (14, 'hgfhfg', 'fsdfsfds');
INSERT INTO `user` VALUES (15, 'gergttred', 'fsaf');
INSERT INTO `user` VALUES (16, 'hfhf', 'fsdfs');
INSERT INTO `user` VALUES (17, 'hyh', 'gddgg');
INSERT INTO `user` VALUES (18, '', '');
INSERT INTO `user` VALUES (19, 'fsfsd', 'ffsfs');
INSERT INTO `user` VALUES (20, '123', '123');
INSERT INTO `user` VALUES (21, '', '');
INSERT INTO `user` VALUES (22, 'erty', 'ertyu');
INSERT INTO `user` VALUES (23, 'zxcvb', 'cvbnm');
INSERT INTO `user` VALUES (24, 'sdfg', 'sdfgh');
INSERT INTO `user` VALUES (25, 'sdfg', 'sdfgh');
INSERT INTO `user` VALUES (26, 'sdfg', 'asdfg');
INSERT INTO `user` VALUES (27, 'sdfgh', 'sdfg');
INSERT INTO `user` VALUES (28, 'wertyu', 'sdfg');
INSERT INTO `user` VALUES (29, 'sdfgh', 'sdfg');
INSERT INTO `user` VALUES (30, 'fghdfgh', 'sdfghj');
INSERT INTO `user` VALUES (31, 'sdfghj', 'sdfgh');
INSERT INTO `user` VALUES (32, 'sdfgh', 'ertyui');
INSERT INTO `user` VALUES (33, 'sdfgh', 'dfghjk');
INSERT INTO `user` VALUES (34, 'sdfghj', 'sdfgh');
INSERT INTO `user` VALUES (35, 'dfgh', 'sdfgh');
INSERT INTO `user` VALUES (36, '', '');
INSERT INTO `user` VALUES (37, 'ersdfgh', 'dfg');
INSERT INTO `user` VALUES (38, '', '');
INSERT INTO `user` VALUES (39, 'sdfghj', 'zxcvbnm');
INSERT INTO `user` VALUES (40, '', '');
INSERT INTO `user` VALUES (41, 'sdfgh', 'sdfghj');
INSERT INTO `user` VALUES (42, '', '');
INSERT INTO `user` VALUES (43, '', '');
INSERT INTO `user` VALUES (44, 'sdfghj', 'sdfghjk');
INSERT INTO `user` VALUES (45, 'sdfghj', 'sdfghjk');
INSERT INTO `user` VALUES (46, 'zsdfgh', 'sdfghj');
INSERT INTO `user` VALUES (47, 'dfghjkl', 'sdfghjk');
INSERT INTO `user` VALUES (48, 'sdfghj', 'asdfghjk');
INSERT INTO `user` VALUES (49, 'asdfgh', 'asdfghj');
INSERT INTO `user` VALUES (50, '', '');
INSERT INTO `user` VALUES (51, 'werty', 'sdfgh');
INSERT INTO `user` VALUES (52, 'sdfgh', 'sdfghj');
INSERT INTO `user` VALUES (53, 'ertyu', 'sdfghjk');
INSERT INTO `user` VALUES (54, 'sdfghj', 'sdfghj');
INSERT INTO `user` VALUES (55, 'ertyu', 'dfghjk');
INSERT INTO `user` VALUES (56, 'werty', 'ertyuio');
INSERT INTO `user` VALUES (57, 'ertyui', 'srty');
INSERT INTO `user` VALUES (58, '123', '123');
INSERT INTO `user` VALUES (59, '123', '123');
INSERT INTO `user` VALUES (60, '123', '123');
INSERT INTO `user` VALUES (61, '123', '123');
INSERT INTO `user` VALUES (62, '123', '123');
INSERT INTO `user` VALUES (63, 'sdfgyh', 'sdfghj');
INSERT INTO `user` VALUES (64, 'wertyu', 'ertyu');
INSERT INTO `user` VALUES (65, 'ertyui', 'ertyu');
INSERT INTO `user` VALUES (66, 'ertyui', 'ertyu');
INSERT INTO `user` VALUES (67, '34567', 'rtyu');
INSERT INTO `user` VALUES (68, '123', '123');
INSERT INTO `user` VALUES (69, '123', '123');
INSERT INTO `user` VALUES (70, '123', '123');

SET FOREIGN_KEY_CHECKS = 1;
