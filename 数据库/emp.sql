/*
Navicat MySQL Data Transfer

Source Server         : ssm
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2024-01-29 22:31:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `hiredate` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `sal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '张三', '123456', '普通员工', '2023-07-06', '20', '男', '5000');
INSERT INTO `emp` VALUES ('2', '李四', '123', '经理', '2023-07-20', '29', '男', '8000');
INSERT INTO `emp` VALUES ('3', '灌灌灌灌', '12345', '总经理', '2023-07-27', '55', '男', '12000');
INSERT INTO `emp` VALUES ('4', '李木子', '12345', '老板', '2023-09-06', '32', '男', '23000');
INSERT INTO `emp` VALUES ('14', 'aaa', '12345', '经理', '2023-06-29', '25', '女', '12000');
INSERT INTO `emp` VALUES ('16', 'vvv', '123456', '老板', '2023-07-20', '20', '女', '5000');
