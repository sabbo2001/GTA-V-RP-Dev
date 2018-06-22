/*
Navicat MySQL Data Transfer

Source Server         : t
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : essentialmode

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-30 17:47:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shops`
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('1', 'TwentyFourSeven', 'bread', '30');
INSERT INTO `shops` VALUES ('2', 'TwentyFourSeven', 'water', '15');
INSERT INTO `shops` VALUES ('3', 'TwentyFourSeven', 'tacos', '500');
INSERT INTO `shops` VALUES ('4', 'TwentyFourSeven', 'burger', '475');
INSERT INTO `shops` VALUES ('5', 'TwentyFourSeven', 'cola', '100');
INSERT INTO `shops` VALUES ('6', 'TwentyFourSeven', 'fixkit', '1000');
INSERT INTO `shops` VALUES ('8', 'TwentyFourSeven', 'medikit', '1000');
INSERT INTO `shops` VALUES ('9', 'TwentyFourSeven', 'gps', '100');
INSERT INTO `shops` VALUES ('10', 'TwentyFourSeven', 'gazbottle', '10');
INSERT INTO `shops` VALUES ('11', 'TwentyFourSeven', 'fixtool', '10');
INSERT INTO `shops` VALUES ('12', 'TwentyFourSeven', 'carotool', '10');
INSERT INTO `shops` VALUES ('13', 'TwentyFourSeven', 'chocolate', '10');
INSERT INTO `shops` VALUES ('14', 'TwentyFourSeven', 'sandwich', '10');
INSERT INTO `shops` VALUES ('15', 'TwentyFourSeven', 'hamburger', '10');
INSERT INTO `shops` VALUES ('16', 'TwentyFourSeven', 'cupcake', '10');
INSERT INTO `shops` VALUES ('17', 'TwentyFourSeven', 'icetea', '10');
INSERT INTO `shops` VALUES ('18', 'TwentyFourSeven', 'redbull', '10');
INSERT INTO `shops` VALUES ('19', 'TwentyFourSeven', 'cigarett', '15');
INSERT INTO `shops` VALUES ('20', 'TwentyFourSeven', 'lighter', '10');
INSERT INTO `shops` VALUES ('21', 'RobsLiquor', 'bread', '30');
INSERT INTO `shops` VALUES ('22', 'RobsLiquor', 'water', '15');
INSERT INTO `shops` VALUES ('23', 'RobsLiquor', 'tacos', '500');
INSERT INTO `shops` VALUES ('24', 'RobsLiquor', 'burger', '475');
INSERT INTO `shops` VALUES ('25', 'RobsLiquor', 'cola', '100');
INSERT INTO `shops` VALUES ('26', 'RobsLiquor', 'fixkit', '1000');
INSERT INTO `shops` VALUES ('27', 'RobsLiquor', 'medikit', '1000');
INSERT INTO `shops` VALUES ('28', 'RobsLiquor', 'gps', '100');
INSERT INTO `shops` VALUES ('29', 'RobsLiquor', 'gazbottle', '10');
INSERT INTO `shops` VALUES ('30', 'RobsLiquor', 'fixtool', '10');
INSERT INTO `shops` VALUES ('31', 'RobsLiquor', 'carotool', '10');
INSERT INTO `shops` VALUES ('32', 'RobsLiquor', 'chocolate', '10');
INSERT INTO `shops` VALUES ('33', 'RobsLiquor', 'sandwich', '10');
INSERT INTO `shops` VALUES ('34', 'RobsLiquor', 'hamburger', '10');
INSERT INTO `shops` VALUES ('35', 'RobsLiquor', 'cupcake', '10');
INSERT INTO `shops` VALUES ('36', 'RobsLiquor', 'icetea', '10');
INSERT INTO `shops` VALUES ('37', 'RobsLiquor', 'redbull', '10');
INSERT INTO `shops` VALUES ('38', 'RobsLiquor', 'cigarett', '15');
INSERT INTO `shops` VALUES ('39', 'RobsLiquor', 'lighter', '10');
INSERT INTO `shops` VALUES ('40', 'LTDgasoline', 'bread', '30');
INSERT INTO `shops` VALUES ('41', 'LTDgasoline', 'water', '15');
INSERT INTO `shops` VALUES ('42', 'LTDgasoline', 'tacos', '500');
INSERT INTO `shops` VALUES ('43', 'LTDgasoline', 'burger', '475');
INSERT INTO `shops` VALUES ('44', 'LTDgasoline', 'cola', '100');
INSERT INTO `shops` VALUES ('45', 'LTDgasoline', 'fixkit', '1000');
INSERT INTO `shops` VALUES ('46', 'LTDgasoline', 'medikit', '1000');
INSERT INTO `shops` VALUES ('47', 'LTDgasoline', 'gps', '100');
INSERT INTO `shops` VALUES ('48', 'LTDgasoline', 'gazbottle', '10');
INSERT INTO `shops` VALUES ('49', 'LTDgasoline', 'fixtool', '10');
INSERT INTO `shops` VALUES ('50', 'LTDgasoline', 'carotool', '10');
INSERT INTO `shops` VALUES ('51', 'LTDgasoline', 'chocolate', '10');
INSERT INTO `shops` VALUES ('52', 'LTDgasoline', 'sandwich', '10');
INSERT INTO `shops` VALUES ('53', 'LTDgasoline', 'hamburger', '10');
INSERT INTO `shops` VALUES ('54', 'LTDgasoline', 'cupcake', '10');
INSERT INTO `shops` VALUES ('55', 'LTDgasoline', 'icetea', '10');
INSERT INTO `shops` VALUES ('56', 'LTDgasoline', 'redbull', '10');
INSERT INTO `shops` VALUES ('57', 'LTDgasoline', 'cigarett', '15');
INSERT INTO `shops` VALUES ('58', 'LTDgasoline', 'lighter', '10');
INSERT INTO `shops` VALUES ('59', 'Bar', 'wine', '50');
INSERT INTO `shops` VALUES ('60', 'Bar', 'beer', '50');
INSERT INTO `shops` VALUES ('61', 'Bar', 'vodka', '50');
INSERT INTO `shops` VALUES ('62', 'Bar', 'tequila', '40');
INSERT INTO `shops` VALUES ('63', 'Bar', 'whisky', '40');
INSERT INTO `shops` VALUES ('64', 'Bar', 'cigarett', '15');
INSERT INTO `shops` VALUES ('65', 'Bar', 'lighter', '10');
