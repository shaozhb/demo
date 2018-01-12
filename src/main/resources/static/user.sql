/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : sell

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-01-11 18:58:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `states` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '2018-01-10 18:20:36');
INSERT INTO `user` VALUES ('2', 'b', 'b', 'b', 'b', 'b', 'b', 'b', '2018-01-11 10:10:34');
INSERT INTO `user` VALUES ('3', 'c', 'c', 'c', 'c', 'c', 'c', 'c', '2018-01-11 10:10:47');
INSERT INTO `user` VALUES ('4', 'd', 'd', 'd', 'd', 'd', 'd', 'd', '2018-01-11 10:11:06');
INSERT INTO `user` VALUES ('5', 'e', 'e', 'e', 'e', 'e', 'e', 'e', '2018-01-11 10:11:23');
INSERT INTO `user` VALUES ('6', 'f', 'f', 'f', 'f', 'f', 'f', 'f', '2018-01-11 10:11:33');
INSERT INTO `user` VALUES ('7', 'g', 'g', 'g', 'g', 'g', 'g', 'g', '2018-01-11 10:11:42');
INSERT INTO `user` VALUES ('8', 'h', 'h', 'h', 'h', 'h', 'h', 'h', '2018-01-11 10:11:50');
INSERT INTO `user` VALUES ('9', 'i', 'i', 'i', 'i', 'i', 'i', 'i', '2018-01-11 10:12:00');
INSERT INTO `user` VALUES ('10', 'j', 'j', 'j', 'j', 'j', 'j', 'j', '2018-01-11 10:12:10');
INSERT INTO `user` VALUES ('11', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '2018-01-11 10:12:21');
INSERT INTO `user` VALUES ('12', 'n', 'n', 'n', 'n', 'n', 'n', 'n', '2018-01-11 10:12:21');
INSERT INTO `user` VALUES ('13', 'n', 'n', 'n', 'n', 'n', 'n', 'n', '2018-02-11 15:00:58');
INSERT INTO `user` VALUES ('14', 'n', 'n', 'n', 'n', 'n', 'n', '1', '2018-11-11 15:11:43');
INSERT INTO `user` VALUES ('15', 'm', 'm', 'm', 'm', 'm', 'm', '1', '2018-12-11 15:12:44');
INSERT INTO `user` VALUES ('16', 'mm', 'm', 'm', 'm', 'm', 'm', '1', '2018-01-11 15:16:25');
INSERT INTO `user` VALUES ('17', 'mm', 'm', 'm', 'm', 'm', 'm', '1', '2018-01-11 15:16:31');
INSERT INTO `user` VALUES ('18', 'p', 'p', 'p', 'p', 'p', 'p', '1', '2018-01-11 15:24:00');
INSERT INTO `user` VALUES ('19', 'b', 'b', 'b', 'b', 'b', 'b', '1', '2018-01-11 15:24:14');
INSERT INTO `user` VALUES ('20', 'l', 'l', 'l', 'l', 'l', 'l', '1', '2018-01-11 15:28:12');
INSERT INTO `user` VALUES ('21', 'l', 'l', 'l', 'l', 'l', 'l', '1', '2018-01-11 15:28:34');
INSERT INTO `user` VALUES ('22', 'l', 'l', 'l', 'l', 'l', 'l', '1', '2018-01-11 15:28:40');
INSERT INTO `user` VALUES ('23', 'l', 'l', 'l', 'l', 'l', 'l', '1', '2018-01-11 15:28:44');
INSERT INTO `user` VALUES ('24', 'o', 'o', 'o', 'o', 'o', 'o', '1', '2018-01-11 15:29:34');
INSERT INTO `user` VALUES ('25', 'i', 'i', 'i', 'i', 'i', 'i', '1', '2018-01-11 15:29:53');
INSERT INTO `user` VALUES ('26', 'i', 'i', 'i', 'i', 'i', 'i', '1', '2018-01-11 15:30:00');
INSERT INTO `user` VALUES ('27', 'i', 'i', 'i', 'i', 'i', 'i', '1', '2018-01-11 15:30:05');
INSERT INTO `user` VALUES ('28', 'v', 'v', 'v', 'v', 'v', 'v', '1', '2018-01-11 15:45:11');
INSERT INTO `user` VALUES ('29', 'v', 'v', 'v', 'v', 'v', 'v', '1', '2018-01-11 15:45:15');
INSERT INTO `user` VALUES ('30', 'v', 'v', 'v', 'v', 'v', 'v', '1', '2018-01-11 15:46:14');
INSERT INTO `user` VALUES ('31', 'v', 'v', 'v', 'v', 'v', 'v', '1', '2018-01-11 15:49:48');
