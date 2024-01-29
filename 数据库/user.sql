/*
Navicat MySQL Data Transfer

Source Server         : ssm
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2024-01-29 22:31:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ename` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('aaa', '1');
INSERT INTO `user` VALUES ('gfgf', '12345');
INSERT INTO `user` VALUES ('kkk', '12345');
INSERT INTO `user` VALUES ('mengxi', '1');
INSERT INTO `user` VALUES ('xxx', '1');
INSERT INTO `user` VALUES ('张三', '12345');
INSERT INTO `user` VALUES ('李四', '123');
INSERT INTO `user` VALUES ('李木', '1');
INSERT INTO `user` VALUES ('李木子', '1');
INSERT INTO `user` VALUES ('浪漫血液', '1');
INSERT INTO `user` VALUES ('种毅山', '123');
INSERT INTO `user` VALUES ('肖伟', '123');
