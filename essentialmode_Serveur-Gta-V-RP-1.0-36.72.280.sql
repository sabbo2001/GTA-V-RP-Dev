/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : essentialmode

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-06-28 23:29:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addon_account`
-- ----------------------------
DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_account
-- ----------------------------
INSERT INTO `addon_account` VALUES ('1', 'society_ambulance', 'Ambulance', '1');
INSERT INTO `addon_account` VALUES ('2', 'caution', 'Caution', '0');
INSERT INTO `addon_account` VALUES ('3', 'property_black_money', 'Argent Sale Propriété', '1');
INSERT INTO `addon_account` VALUES ('4', 'society_cardealer', 'Concessionnaire', '1');
INSERT INTO `addon_account` VALUES ('5', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_account` VALUES ('6', 'society_police', 'Police', '1');
INSERT INTO `addon_account` VALUES ('7', 'society_mecano', 'Mécano', '1');
INSERT INTO `addon_account` VALUES ('8', 'society_realestateagent', 'Agent immobilier', '1');
INSERT INTO `addon_account` VALUES ('9', 'society_dock', 'Marina', '1');
INSERT INTO `addon_account` VALUES ('10', 'society_foodtruck', 'Foodtruck', '1');
INSERT INTO `addon_account` VALUES ('11', 'society_gouv', 'Gouvernement', '1');
INSERT INTO `addon_account` VALUES ('12', 'society_vigne', 'Vigneron', '1');
INSERT INTO `addon_account` VALUES ('13', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `addon_account` VALUES ('14', 'society_aircraftdealer', 'Airliner', '1');
INSERT INTO `addon_account` VALUES ('15', 'society_gouvernor', 'Gouvernement', '1');
INSERT INTO `addon_account` VALUES ('16', 'society_pompiste', 'Pompiste', '1');

-- ----------------------------
-- Table structure for `addon_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_account_data
-- ----------------------------
INSERT INTO `addon_account_data` VALUES ('1', 'society_police', '500000', null);
INSERT INTO `addon_account_data` VALUES ('2', 'society_mecano', '500000', null);
INSERT INTO `addon_account_data` VALUES ('3', 'society_realestateagent', '500000', null);
INSERT INTO `addon_account_data` VALUES ('10', 'society_dock', '500000', null);
INSERT INTO `addon_account_data` VALUES ('11', 'society_foodtruck', '500000', null);
INSERT INTO `addon_account_data` VALUES ('12', 'society_gouv', '500000', null);
INSERT INTO `addon_account_data` VALUES ('13', 'society_ambulance', '500000', null);
INSERT INTO `addon_account_data` VALUES ('14', 'society_cardealer', '500000', null);
INSERT INTO `addon_account_data` VALUES ('15', 'society_taxi', '500000', null);
INSERT INTO `addon_account_data` VALUES ('16', 'society_vigne', '500000', null);
INSERT INTO `addon_account_data` VALUES ('17', 'society_minage', '500000', null);
INSERT INTO `addon_account_data` VALUES ('18', 'property_black_money', '500000', 'steam:1100001081ca641');
INSERT INTO `addon_account_data` VALUES ('19', 'caution', '0', 'steam:1100001081ca641');
INSERT INTO `addon_account_data` VALUES ('20', 'society_unicorn', '500000', null);
INSERT INTO `addon_account_data` VALUES ('21', 'society_aircraftdealer', '500000', null);
INSERT INTO `addon_account_data` VALUES ('22', 'society_gouvernor', '500000', null);
INSERT INTO `addon_account_data` VALUES ('23', 'society_karting', '500000', null);
INSERT INTO `addon_account_data` VALUES ('24', 'society_pompiste', '500000', null);

-- ----------------------------
-- Table structure for `addon_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_inventory
-- ----------------------------
INSERT INTO `addon_inventory` VALUES ('1', 'property', 'Propriété', '0');
INSERT INTO `addon_inventory` VALUES ('2', 'society_cardealer', 'Concesionnaire', '1');
INSERT INTO `addon_inventory` VALUES ('7', 'society_police', 'Police', '1');
INSERT INTO `addon_inventory` VALUES ('8', 'society_mecano', 'Mécano', '1');
INSERT INTO `addon_inventory` VALUES ('10', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_inventory` VALUES ('11', 'society_dock', 'Marina', '1');
INSERT INTO `addon_inventory` VALUES ('13', 'society_vigne', 'Vigneron', '1');
INSERT INTO `addon_inventory` VALUES ('14', 'society_minage', 'Mineur', '1');
INSERT INTO `addon_inventory` VALUES ('20', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `addon_inventory` VALUES ('21', 'society_unicorn_fridge', 'Unicorn (frigo)', '1');
INSERT INTO `addon_inventory` VALUES ('22', 'society_aircraftdealer', 'Airliner', '1');
INSERT INTO `addon_inventory` VALUES ('23', 'society_gouvernor', 'Gouvernement', '1');
INSERT INTO `addon_inventory` VALUES ('28', 'society_peche', 'Pecheur', '1');
INSERT INTO `addon_inventory` VALUES ('29', 'society_pompiste', 'Pompiste', '1');
INSERT INTO `addon_inventory` VALUES ('30', 'society_ambulance', 'Ambulancier', '1');

-- ----------------------------
-- Table structure for `addon_inventory_items`
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_inventory_items
-- ----------------------------
INSERT INTO `addon_inventory_items` VALUES ('1', 'society_taxi', 'burger', '0', null);
INSERT INTO `addon_inventory_items` VALUES ('2', 'society_unicorn_fridge', 'bolcacahuetes', '3', null);
INSERT INTO `addon_inventory_items` VALUES ('3', 'society_unicorn_fridge', 'bolchips', '5', null);
INSERT INTO `addon_inventory_items` VALUES ('4', 'society_unicorn_fridge', 'drpepper', '4', null);
INSERT INTO `addon_inventory_items` VALUES ('5', 'society_unicorn_fridge', 'energy', '4', null);
INSERT INTO `addon_inventory_items` VALUES ('6', 'society_unicorn_fridge', 'icetea', '4', null);
INSERT INTO `addon_inventory_items` VALUES ('7', 'society_unicorn_fridge', 'tequila', '0', null);
INSERT INTO `addon_inventory_items` VALUES ('8', 'society_unicorn_fridge', 'soda', '4', null);
INSERT INTO `addon_inventory_items` VALUES ('9', 'society_unicorn_fridge', 'redbull', '4', null);
INSERT INTO `addon_inventory_items` VALUES ('10', 'society_unicorn_fridge', 'limonade', '4', null);
INSERT INTO `addon_inventory_items` VALUES ('11', 'society_police', 'bandage', '0', null);
INSERT INTO `addon_inventory_items` VALUES ('12', 'society_police', 'water', '5', null);
INSERT INTO `addon_inventory_items` VALUES ('13', 'society_police', 'gps', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('14', 'society_police', 'medikit', '2', null);
INSERT INTO `addon_inventory_items` VALUES ('15', 'society_police', 'bread', '5', null);
INSERT INTO `addon_inventory_items` VALUES ('16', 'society_police', 'weed', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('17', 'society_police', 'fixtool', '0', null);
INSERT INTO `addon_inventory_items` VALUES ('18', 'society_mecano', 'blowpipe', '6', null);
INSERT INTO `addon_inventory_items` VALUES ('19', 'society_mecano', 'carokit', '5', null);
INSERT INTO `addon_inventory_items` VALUES ('20', 'society_mecano', 'fixkit', '7', null);
INSERT INTO `addon_inventory_items` VALUES ('21', 'society_police', 'meth', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('22', 'society_police', 'cigarett', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('23', 'society_police', 'hamburger', '5', null);
INSERT INTO `addon_inventory_items` VALUES ('24', 'society_police', 'icetea', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('25', 'society_police', 'carokit', '0', null);
INSERT INTO `addon_inventory_items` VALUES ('26', 'society_police', 'fixkit', '5', null);
INSERT INTO `addon_inventory_items` VALUES ('28', 'property', 'hamburger', '10', 'steam:110000107f00b0f');

-- ----------------------------
-- Table structure for `aircrafts`
-- ----------------------------
DROP TABLE IF EXISTS `aircrafts`;
CREATE TABLE `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircrafts
-- ----------------------------
INSERT INTO `aircrafts` VALUES ('Alpha Z1', 'alphaz1', '1595000', 'plane');
INSERT INTO `aircrafts` VALUES ('Besra', 'besra', '1150000', 'plane');
INSERT INTO `aircrafts` VALUES ('Cuban 800', 'cuban800', '240000', 'plane');
INSERT INTO `aircrafts` VALUES ('Dodo', 'dodo', '500000', 'plane');
INSERT INTO `aircrafts` VALUES ('Duster', 'duster', '275000', 'plane');
INSERT INTO `aircrafts` VALUES ('Frogger', 'frogger', '1300000', 'heli');
INSERT INTO `aircrafts` VALUES ('Howard NX25', 'howard', '975000', 'plane');
INSERT INTO `aircrafts` VALUES ('Luxor', 'luxor', '1625000', 'plane');
INSERT INTO `aircrafts` VALUES ('Luxor Deluxe ', 'luxor2', '10000000', 'plane');
INSERT INTO `aircrafts` VALUES ('Mammatus', 'mammatus', '300000', 'plane');
INSERT INTO `aircrafts` VALUES ('Maverick', 'maverick', '780000', 'heli');
INSERT INTO `aircrafts` VALUES ('Nimbus', 'nimbus', '1900000', 'plane');
INSERT INTO `aircrafts` VALUES ('Shamal', 'shamal', '1150000', 'plane');
INSERT INTO `aircrafts` VALUES ('Mallard', 'stunt', '250000', 'plane');
INSERT INTO `aircrafts` VALUES ('SuperVolito', 'supervolito', '2113000', 'heli');
INSERT INTO `aircrafts` VALUES ('SuperVolito Carbon', 'supervolito2', '3330000', 'heli');
INSERT INTO `aircrafts` VALUES ('Swift', 'swift', '1500000', 'heli');
INSERT INTO `aircrafts` VALUES ('Swift Deluxe', 'swift2', '5150000', 'heli');
INSERT INTO `aircrafts` VALUES ('Velum', 'velum2', '1323350', 'plane');
INSERT INTO `aircrafts` VALUES ('Vestra', 'vestra', '950000', 'plane');
INSERT INTO `aircrafts` VALUES ('Volatus', 'volatus', '2295000', 'heli');

-- ----------------------------
-- Table structure for `aircraft_categories`
-- ----------------------------
DROP TABLE IF EXISTS `aircraft_categories`;
CREATE TABLE `aircraft_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircraft_categories
-- ----------------------------
INSERT INTO `aircraft_categories` VALUES ('1', 'plane', 'Planes');
INSERT INTO `aircraft_categories` VALUES ('2', 'heli', 'Helicopters');

-- ----------------------------
-- Table structure for `bans`
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `banned` varchar(50) NOT NULL DEFAULT '0',
  `banner` varchar(50) NOT NULL,
  `reason` varchar(150) NOT NULL DEFAULT '0',
  `expires` datetime NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bans
-- ----------------------------

-- ----------------------------
-- Table structure for `billing`
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of billing
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('steam:1100001081ca641', 'Jhone', 'Darfy', '25/5/80', 'm', '165');
INSERT INTO `characters` VALUES ('steam:11000010bf1d422', 'Allain', 'Terrieur', '1997/05/02', 'm', '170');
INSERT INTO `characters` VALUES ('steam:11000010e659d79', 'Kris', 'Borowski', '19995-07-12', 'm', '140');
INSERT INTO `characters` VALUES ('steam:1100001080d2eac', 'Charlie', 'Triston', '1989-04-07', 'f', '160');
INSERT INTO `characters` VALUES ('steam:110000112cc1d89', 'Jay', 'Ackerham', '1998 12 12', 'm', '155');
INSERT INTO `characters` VALUES ('steam:110000107e0850f', 'Jean', 'Marille', '1196', 'm', '180');

-- ----------------------------
-- Table structure for `coordinates`
-- ----------------------------
DROP TABLE IF EXISTS `coordinates`;
CREATE TABLE `coordinates` (
  `id` int(11) unsigned NOT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coordinates
-- ----------------------------
INSERT INTO `coordinates` VALUES ('1', '2681.752', '2800.187', '40.36', 'Mines du vieux Los Santos');
INSERT INTO `coordinates` VALUES ('2', '1077.64', '-1989.417', '30.883', 'Fonte des métaux');
INSERT INTO `coordinates` VALUES ('3', '-510.449', '-2751.847', '6.2', 'Vente du fer');
INSERT INTO `coordinates` VALUES ('7', '-801.323', '5403.05', '34.0766', 'Récolte bois');
INSERT INTO `coordinates` VALUES ('8', '-555.881', '5319.96', '73.5997', 'Traitement bois');
INSERT INTO `coordinates` VALUES ('9', '-473.829', '-985.232', '23.5457', 'Vente du bois');
INSERT INTO `coordinates` VALUES ('10', '-1813.25', '2105.58', '135.808', 'Vignobles');
INSERT INTO `coordinates` VALUES ('11', '823.7', '2193.76', '52.0271', 'Atelier du vin');
INSERT INTO `coordinates` VALUES ('12', '-561.508', '302.273', '82.6591', 'Vente du vin');

-- ----------------------------
-- Table structure for `datastore`
-- ----------------------------
DROP TABLE IF EXISTS `datastore`;
CREATE TABLE `datastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datastore
-- ----------------------------
INSERT INTO `datastore` VALUES ('1', 'property', 'Propriété', '1');
INSERT INTO `datastore` VALUES ('2', 'society_police', 'Police', '1');
INSERT INTO `datastore` VALUES ('3', 'user_mask', 'Masque', '1');
INSERT INTO `datastore` VALUES ('4', 'society_police', 'Police', '1');
INSERT INTO `datastore` VALUES ('5', 'society_vigne', 'Vigneron', '1');
INSERT INTO `datastore` VALUES ('8', 'society_minage', 'Mineur', '1');
INSERT INTO `datastore` VALUES ('9', 'user_ears', 'Ears', '0');
INSERT INTO `datastore` VALUES ('10', 'user_glasses', 'Glasses', '0');
INSERT INTO `datastore` VALUES ('11', 'user_helmet', 'Helmet', '0');
INSERT INTO `datastore` VALUES ('13', 'user_mask', 'Masque', '0');
INSERT INTO `datastore` VALUES ('14', 'society_police', 'Police', '1');
INSERT INTO `datastore` VALUES ('15', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `datastore` VALUES ('16', 'society_gouvernor', 'Gouvernement', '1');
INSERT INTO `datastore` VALUES ('17', 'society_brinks', 'brinks', '1');
INSERT INTO `datastore` VALUES ('18', 'society_peche', 'Pecheur', '1');
INSERT INTO `datastore` VALUES ('19', 'society_pompiste', 'Pompiste', '1');
INSERT INTO `datastore` VALUES ('20', 'society_Ambulance', 'Ambulancier', '1');

-- ----------------------------
-- Table structure for `datastore_data`
-- ----------------------------
DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datastore_data
-- ----------------------------
INSERT INTO `datastore_data` VALUES ('1', 'property', 'steam:1100001081ca641', '{\"dressing\":[]}');
INSERT INTO `datastore_data` VALUES ('2', 'user_mask', 'steam:1100001081ca641', '{\"hasMask\":true,\"skin\":{\"mask_1\":1,\"mask_2\":1}}');
INSERT INTO `datastore_data` VALUES ('3', 'user_helmet', 'steam:1100001081ca641', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":120,\"helmet_2\":0}}');
INSERT INTO `datastore_data` VALUES ('4', 'user_glasses', 'steam:1100001081ca641', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":3,\"glasses_2\":0}}');
INSERT INTO `datastore_data` VALUES ('5', 'user_ears', 'steam:1100001081ca641', '{\"skin\":{\"ears_1\":5,\"ears_2\":1},\"hasEars\":true}');
INSERT INTO `datastore_data` VALUES ('6', 'user_helmet', 'steam:11000010bf1d422', '{}');
INSERT INTO `datastore_data` VALUES ('7', 'user_mask', 'steam:11000010bf1d422', '{}');
INSERT INTO `datastore_data` VALUES ('8', 'user_glasses', 'steam:11000010bf1d422', '{\"skin\":{\"glasses_2\":6,\"glasses_1\":5},\"hasGlasses\":true}');
INSERT INTO `datastore_data` VALUES ('9', 'property', 'steam:11000010bf1d422', '{\"weapons\":[{\"ammo\":0,\"name\":\"GADGET_PARACHUTE\"}]}');
INSERT INTO `datastore_data` VALUES ('10', 'user_ears', 'steam:11000010bf1d422', '{}');
INSERT INTO `datastore_data` VALUES ('11', 'property', 'steam:11000010e659d79', '{}');
INSERT INTO `datastore_data` VALUES ('12', 'user_ears', 'steam:11000010e659d79', '{}');
INSERT INTO `datastore_data` VALUES ('13', 'user_glasses', 'steam:11000010e659d79', '{}');
INSERT INTO `datastore_data` VALUES ('14', 'user_mask', 'steam:11000010e659d79', '{}');
INSERT INTO `datastore_data` VALUES ('15', 'user_helmet', 'steam:11000010e659d79', '{}');
INSERT INTO `datastore_data` VALUES ('16', 'property', 'steam:1100001080d2eac', '{}');
INSERT INTO `datastore_data` VALUES ('17', 'user_helmet', 'steam:1100001080d2eac', '{}');
INSERT INTO `datastore_data` VALUES ('18', 'user_ears', 'steam:1100001080d2eac', '{}');
INSERT INTO `datastore_data` VALUES ('19', 'user_mask', 'steam:1100001080d2eac', '{}');
INSERT INTO `datastore_data` VALUES ('20', 'user_glasses', 'steam:1100001080d2eac', '{}');
INSERT INTO `datastore_data` VALUES ('21', 'user_helmet', 'steam:11000010b791fb5', '{}');
INSERT INTO `datastore_data` VALUES ('22', 'user_glasses', 'steam:11000010b791fb5', '{}');
INSERT INTO `datastore_data` VALUES ('23', 'user_ears', 'steam:11000010b791fb5', '{}');
INSERT INTO `datastore_data` VALUES ('24', 'user_mask', 'steam:11000010b791fb5', '{}');
INSERT INTO `datastore_data` VALUES ('25', 'property', 'steam:11000010b791fb5', '{}');
INSERT INTO `datastore_data` VALUES ('26', 'user_ears', 'steam:110000112cc1d89', '{}');
INSERT INTO `datastore_data` VALUES ('27', 'user_glasses', 'steam:110000112cc1d89', '{}');
INSERT INTO `datastore_data` VALUES ('28', 'user_helmet', 'steam:110000112cc1d89', '{}');
INSERT INTO `datastore_data` VALUES ('29', 'user_mask', 'steam:110000112cc1d89', '{}');
INSERT INTO `datastore_data` VALUES ('30', 'property', 'steam:110000112cc1d89', '{}');
INSERT INTO `datastore_data` VALUES ('31', 'property', 'steam:110000107e0850f', '{}');
INSERT INTO `datastore_data` VALUES ('32', 'user_mask', 'steam:110000107e0850f', '{}');
INSERT INTO `datastore_data` VALUES ('33', 'user_helmet', 'steam:110000107e0850f', '{}');
INSERT INTO `datastore_data` VALUES ('34', 'user_glasses', 'steam:110000107e0850f', '{}');
INSERT INTO `datastore_data` VALUES ('35', 'user_ears', 'steam:110000107e0850f', '{}');
INSERT INTO `datastore_data` VALUES ('36', 'user_mask', 'steam:110000107f00b0f', '{}');
INSERT INTO `datastore_data` VALUES ('37', 'user_glasses', 'steam:110000107f00b0f', '{}');
INSERT INTO `datastore_data` VALUES ('38', 'user_helmet', 'steam:110000107f00b0f', '{}');
INSERT INTO `datastore_data` VALUES ('39', 'user_ears', 'steam:110000107f00b0f', '{}');
INSERT INTO `datastore_data` VALUES ('40', 'property', 'steam:110000107f00b0f', '{}');
INSERT INTO `datastore_data` VALUES ('60', 'society_police', null, '{}');
INSERT INTO `datastore_data` VALUES ('61', 'society_vigne', null, '{}');
INSERT INTO `datastore_data` VALUES ('62', 'society_minage', null, '{}');
INSERT INTO `datastore_data` VALUES ('63', 'society_unicorn', null, '{}');
INSERT INTO `datastore_data` VALUES ('64', 'society_gouvernor', null, '{}');
INSERT INTO `datastore_data` VALUES ('65', 'society_brinks', null, '{}');
INSERT INTO `datastore_data` VALUES ('66', 'society_peche', null, '{}');
INSERT INTO `datastore_data` VALUES ('67', 'society_pompiste', null, '{}');
INSERT INTO `datastore_data` VALUES ('68', 'society_Ambulance', null, '{}');

-- ----------------------------
-- Table structure for `dock`
-- ----------------------------
DROP TABLE IF EXISTS `dock`;
CREATE TABLE `dock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dock
-- ----------------------------
INSERT INTO `dock` VALUES ('1', 'Seashark', 'seashark', '1500', 'dock');
INSERT INTO `dock` VALUES ('2', 'Seashark2', 'seashark2', '1500', 'dock');
INSERT INTO `dock` VALUES ('3', 'Yacht Seashark', 'seashark3', '1500', 'dock');
INSERT INTO `dock` VALUES ('4', 'Suntrap', 'suntrap', '1500', 'dock');
INSERT INTO `dock` VALUES ('5', 'Dinghy', 'dinghy', '2500', 'dock');
INSERT INTO `dock` VALUES ('6', 'Dinghy2 ', 'dinghy2', '2500', 'dock');
INSERT INTO `dock` VALUES ('7', 'Yacht Dinghy', 'dinghy4', '1500', 'dock');
INSERT INTO `dock` VALUES ('8', 'Tropic', 'tropic', '10000', 'dock');
INSERT INTO `dock` VALUES ('9', 'Yacht Tropic', 'tropic2', '10000', 'dock');
INSERT INTO `dock` VALUES ('10', 'Squalo', 'squalo', '12000', 'dock');
INSERT INTO `dock` VALUES ('11', 'Yacht Toro', 'toro2', '15000', 'dock');
INSERT INTO `dock` VALUES ('12', 'Toro', 'toro', '15000', 'dock');
INSERT INTO `dock` VALUES ('13', 'Jetmax', 'jetmax', '17500', 'dock');
INSERT INTO `dock` VALUES ('14', 'Voilier Marquis', 'marquis', '45500', 'dock');
INSERT INTO `dock` VALUES ('16', 'submersible2', 'submersible2', '51000', 'dock');
INSERT INTO `dock` VALUES ('17', 'squalo', 'squalo', '1000', 'dock');
INSERT INTO `dock` VALUES ('18', 'marquis', 'marquis', '1000', 'dock');
INSERT INTO `dock` VALUES ('19', 'jetmax', 'jetmax', '1000', 'dock');
INSERT INTO `dock` VALUES ('21', 'tropic', 'tropic', '1000', 'dock');
INSERT INTO `dock` VALUES ('22', 'submersible', 'submersible', '12000', 'dock');
INSERT INTO `dock` VALUES ('23', 'toro', 'toro', '1000', 'dock');

-- ----------------------------
-- Table structure for `dock_categories`
-- ----------------------------
DROP TABLE IF EXISTS `dock_categories`;
CREATE TABLE `dock_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dock_categories
-- ----------------------------
INSERT INTO `dock_categories` VALUES ('1', 'dock', 'Bateaux');

-- ----------------------------
-- Table structure for `ephone_users_group`
-- ----------------------------
DROP TABLE IF EXISTS `ephone_users_group`;
CREATE TABLE `ephone_users_group` (
  `user` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ephone_users_group
-- ----------------------------

-- ----------------------------
-- Table structure for `essence`
-- ----------------------------
DROP TABLE IF EXISTS `essence`;
CREATE TABLE `essence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `montant` varchar(100) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of essence
-- ----------------------------
INSERT INTO `essence` VALUES ('1', '1000');
INSERT INTO `essence` VALUES ('2', '1000');
INSERT INTO `essence` VALUES ('3', '1000');
INSERT INTO `essence` VALUES ('4', '1000');
INSERT INTO `essence` VALUES ('5', '1000');
INSERT INTO `essence` VALUES ('6', '1000');
INSERT INTO `essence` VALUES ('7', '1000');
INSERT INTO `essence` VALUES ('8', '1000');
INSERT INTO `essence` VALUES ('9', '1000');
INSERT INTO `essence` VALUES ('10', '1000');
INSERT INTO `essence` VALUES ('11', '1000');
INSERT INTO `essence` VALUES ('12', '1000');
INSERT INTO `essence` VALUES ('13', '1000');
INSERT INTO `essence` VALUES ('14', '1000');
INSERT INTO `essence` VALUES ('15', '1000');
INSERT INTO `essence` VALUES ('16', '1000');
INSERT INTO `essence` VALUES ('17', '1000');
INSERT INTO `essence` VALUES ('18', '1000');
INSERT INTO `essence` VALUES ('19', '1000');
INSERT INTO `essence` VALUES ('20', '1000');
INSERT INTO `essence` VALUES ('21', '1000');
INSERT INTO `essence` VALUES ('22', '1000');
INSERT INTO `essence` VALUES ('23', '1000');
INSERT INTO `essence` VALUES ('24', '1000');
INSERT INTO `essence` VALUES ('25', '1000');
INSERT INTO `essence` VALUES ('26', '1000');
INSERT INTO `essence` VALUES ('27', '1000');
INSERT INTO `essence` VALUES ('28', '1000');
INSERT INTO `essence` VALUES ('29', '1000');
INSERT INTO `essence` VALUES ('30', '1000');
INSERT INTO `essence` VALUES ('31', '1000');

-- ----------------------------
-- Table structure for `fine_types`
-- ----------------------------
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fine_types
-- ----------------------------
INSERT INTO `fine_types` VALUES ('1', 'Usage abusif du klaxon', '30', '0');
INSERT INTO `fine_types` VALUES ('2', 'Franchir une ligne continue', '40', '0');
INSERT INTO `fine_types` VALUES ('3', 'Circulation à contresens', '250', '0');
INSERT INTO `fine_types` VALUES ('4', 'Demi-tour non autorisé', '250', '0');
INSERT INTO `fine_types` VALUES ('5', 'Circulation hors-route', '170', '0');
INSERT INTO `fine_types` VALUES ('6', 'Non-respect des distances de sécurité', '30', '0');
INSERT INTO `fine_types` VALUES ('7', 'Arrêt dangereux / interdit', '150', '0');
INSERT INTO `fine_types` VALUES ('8', 'Stationnement gênant / interdit', '70', '0');
INSERT INTO `fine_types` VALUES ('9', 'Non respect  de la priorité à droite', '70', '0');
INSERT INTO `fine_types` VALUES ('10', 'Non-respect à un véhicule prioritaire', '90', '0');
INSERT INTO `fine_types` VALUES ('11', 'Non-respect d\'un stop', '105', '0');
INSERT INTO `fine_types` VALUES ('12', 'Non-respect d\'un feu rouge', '130', '0');
INSERT INTO `fine_types` VALUES ('13', 'Dépassement dangereux', '100', '0');
INSERT INTO `fine_types` VALUES ('14', 'Véhicule non en état', '100', '0');
INSERT INTO `fine_types` VALUES ('15', 'Conduite sans permis', '1500', '0');
INSERT INTO `fine_types` VALUES ('16', 'Délit de fuite', '800', '0');
INSERT INTO `fine_types` VALUES ('17', 'Excès de vitesse < 5 kmh', '90', '0');
INSERT INTO `fine_types` VALUES ('18', 'Excès de vitesse 5-15 kmh', '120', '0');
INSERT INTO `fine_types` VALUES ('19', 'Excès de vitesse 15-30 kmh', '180', '0');
INSERT INTO `fine_types` VALUES ('20', 'Excès de vitesse > 30 kmh', '300', '0');
INSERT INTO `fine_types` VALUES ('21', 'Entrave de la circulation', '110', '1');
INSERT INTO `fine_types` VALUES ('22', 'Dégradation de la voie publique', '90', '1');
INSERT INTO `fine_types` VALUES ('23', 'Trouble à l\'ordre publique', '90', '1');
INSERT INTO `fine_types` VALUES ('24', 'Entrave opération de police', '130', '1');
INSERT INTO `fine_types` VALUES ('25', 'Insulte envers / entre civils', '75', '1');
INSERT INTO `fine_types` VALUES ('26', 'Outrage à agent de police', '110', '1');
INSERT INTO `fine_types` VALUES ('27', 'Menace verbale ou intimidation envers civil', '90', '1');
INSERT INTO `fine_types` VALUES ('28', 'Menace verbale ou intimidation envers policier', '150', '1');
INSERT INTO `fine_types` VALUES ('29', 'Manifestation illégale', '250', '1');
INSERT INTO `fine_types` VALUES ('30', 'Tentative de corruption', '1500', '1');
INSERT INTO `fine_types` VALUES ('31', 'Arme blanche sortie en ville', '120', '2');
INSERT INTO `fine_types` VALUES ('32', 'Arme léthale sortie en ville', '300', '2');
INSERT INTO `fine_types` VALUES ('33', 'Port d\'arme non autorisé (défaut de license)', '600', '2');
INSERT INTO `fine_types` VALUES ('34', 'Port d\'arme illégal', '700', '2');
INSERT INTO `fine_types` VALUES ('35', 'Pris en flag lockpick', '300', '2');
INSERT INTO `fine_types` VALUES ('36', 'Vol de voiture', '1800', '2');
INSERT INTO `fine_types` VALUES ('37', 'Vente de drogue', '1500', '2');
INSERT INTO `fine_types` VALUES ('38', 'Fabriquation de drogue', '1500', '2');
INSERT INTO `fine_types` VALUES ('39', 'Possession de drogue', '650', '2');
INSERT INTO `fine_types` VALUES ('40', 'Prise d\'ôtage civil', '1500', '2');
INSERT INTO `fine_types` VALUES ('41', 'Prise d\'ôtage agent de l\'état', '2000', '2');
INSERT INTO `fine_types` VALUES ('42', 'Braquage particulier', '650', '2');
INSERT INTO `fine_types` VALUES ('43', 'Braquage magasin', '650', '2');
INSERT INTO `fine_types` VALUES ('44', 'Braquage de banque', '1500', '2');
INSERT INTO `fine_types` VALUES ('45', 'Tir sur civil', '2000', '3');
INSERT INTO `fine_types` VALUES ('46', 'Tir sur agent de l\'état', '2500', '3');
INSERT INTO `fine_types` VALUES ('47', 'Tentative de meurtre sur civil', '3000', '3');
INSERT INTO `fine_types` VALUES ('48', 'Tentative de meurtre sur agent de l\'état', '5000', '3');
INSERT INTO `fine_types` VALUES ('49', 'Meurtre sur civil', '10000', '3');
INSERT INTO `fine_types` VALUES ('50', 'Meurte sur agent de l\'état', '30000', '3');
INSERT INTO `fine_types` VALUES ('51', 'Meurtre involontaire', '1800', '3');
INSERT INTO `fine_types` VALUES ('52', 'Escroquerie à l\'entreprise', '2000', '2');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'bandage', 'Bandage', '20', '0', '1');
INSERT INTO `items` VALUES ('2', 'medikit', 'Medikit', '5', '0', '1');
INSERT INTO `items` VALUES ('3', 'weed', 'Weed', '100', '0', '1');
INSERT INTO `items` VALUES ('4', 'weed_pooch', 'Pochon de weed', '70', '0', '1');
INSERT INTO `items` VALUES ('5', 'coke', 'Coke', '100', '0', '1');
INSERT INTO `items` VALUES ('6', 'coke_pooch', 'Pochon de coke', '70', '0', '1');
INSERT INTO `items` VALUES ('7', 'meth', 'Meth', '100', '0', '1');
INSERT INTO `items` VALUES ('8', 'meth_pooch', 'Pochon de meth', '70', '0', '1');
INSERT INTO `items` VALUES ('9', 'opium', 'Opium', '100', '0', '1');
INSERT INTO `items` VALUES ('10', 'opium_pooch', 'Pochon de opium', '70', '0', '1');
INSERT INTO `items` VALUES ('11', 'alive_chicken', 'Poulet vivant', '50', '0', '1');
INSERT INTO `items` VALUES ('12', 'slaughtered_chicken', 'Poulet abattu', '50', '0', '1');
INSERT INTO `items` VALUES ('13', 'packaged_chicken', 'Poulet en barquette', '25', '0', '1');
INSERT INTO `items` VALUES ('14', 'fish', 'Poisson', '70', '0', '1');
INSERT INTO `items` VALUES ('15', 'stone', 'Pierre', '70', '0', '1');
INSERT INTO `items` VALUES ('16', 'wood', 'Bois', '70', '0', '1');
INSERT INTO `items` VALUES ('17', 'cutted_wood', 'Bois coupé', '50', '0', '1');
INSERT INTO `items` VALUES ('18', 'packaged_plank', 'Paquet de planches', '50', '0', '1');
INSERT INTO `items` VALUES ('19', 'petrol', 'Pétrole', '100', '0', '1');
INSERT INTO `items` VALUES ('20', 'petrol_raffin', 'Pétrole Raffiné', '50', '0', '1');
INSERT INTO `items` VALUES ('21', 'essence', 'Essence', '100', '0', '1');
INSERT INTO `items` VALUES ('22', 'whool', 'Laine', '70', '0', '1');
INSERT INTO `items` VALUES ('23', 'fabric', 'Tissu', '50', '0', '1');
INSERT INTO `items` VALUES ('24', 'clothe', 'Vêtement', '50', '0', '1');
INSERT INTO `items` VALUES ('25', 'bread', 'Pain', '10', '0', '1');
INSERT INTO `items` VALUES ('26', 'water', 'Eau', '10', '0', '1');
INSERT INTO `items` VALUES ('27', 'gazbottle', 'bouteille de gaz', '20', '0', '1');
INSERT INTO `items` VALUES ('28', 'fixtool', 'outils réparation', '20', '0', '1');
INSERT INTO `items` VALUES ('29', 'carotool', 'outils carosserie', '20', '0', '1');
INSERT INTO `items` VALUES ('30', 'blowpipe', 'Chalumeaux', '20', '0', '1');
INSERT INTO `items` VALUES ('31', 'fixkit', 'Kit réparation', '20', '0', '1');
INSERT INTO `items` VALUES ('32', 'carokit', 'Kit carosserie', '20', '0', '1');
INSERT INTO `items` VALUES ('33', 'gps', 'GPS', '1', '0', '1');
INSERT INTO `items` VALUES ('34', 'cola', 'Cola', '25', '0', '1');
INSERT INTO `items` VALUES ('35', 'vegetables', 'Légume', '70', '0', '1');
INSERT INTO `items` VALUES ('36', 'meat', 'Viande', '70', '0', '1');
INSERT INTO `items` VALUES ('37', 'tacos', 'Tacos', '25', '0', '1');
INSERT INTO `items` VALUES ('38', 'burger', 'Burger', '25', '0', '1');
INSERT INTO `items` VALUES ('39', 'pince', 'Pince', '10', '0', '1');
INSERT INTO `items` VALUES ('40', 'cerflex', 'Cerflex', '10', '0', '1');
INSERT INTO `items` VALUES ('41', 'tracker', 'Tracker', '10', '0', '1');
INSERT INTO `items` VALUES ('42', 'cigarett', 'Cigarett', '10', '0', '1');
INSERT INTO `items` VALUES ('43', 'raisin', 'Raisin', '70', '0', '1');
INSERT INTO `items` VALUES ('44', 'jus_raisin', 'Jus de raisin', '70', '0', '1');
INSERT INTO `items` VALUES ('45', 'grand_cru', 'Grand cru', '50', '0', '1');
INSERT INTO `items` VALUES ('46', 'vine', 'Vin', '50', '0', '1');
INSERT INTO `items` VALUES ('47', 'permis', 'Permis', '1', '0', '1');
INSERT INTO `items` VALUES ('48', 'lighter', 'Feu', '2', '0', '1');
INSERT INTO `items` VALUES ('49', 'chocolate', 'Chocolat', '15', '0', '1');
INSERT INTO `items` VALUES ('50', 'sandwich', 'Sandwich', '15', '0', '1');
INSERT INTO `items` VALUES ('51', 'hamburger', 'Hamburger', '15', '0', '1');
INSERT INTO `items` VALUES ('52', 'cupcake', 'Cupcake', '15', '0', '1');
INSERT INTO `items` VALUES ('53', 'icetea', 'Icetea', '15', '0', '1');
INSERT INTO `items` VALUES ('54', 'redbull', 'Redbull', '15', '0', '1');
INSERT INTO `items` VALUES ('55', 'wine', 'Wine', '70', '0', '1');
INSERT INTO `items` VALUES ('56', 'beer', 'Beer', '50', '0', '1');
INSERT INTO `items` VALUES ('57', 'vodka', 'Vodka', '50', '0', '1');
INSERT INTO `items` VALUES ('58', 'tequila', 'Tequila', '50', '0', '1');
INSERT INTO `items` VALUES ('59', 'whisky', 'Whisky', '50', '0', '1');
INSERT INTO `items` VALUES ('60', 'argent', 'Argent', '50', '0', '1');
INSERT INTO `items` VALUES ('61', 'lingot', 'Lingot', '50', '0', '1');
INSERT INTO `items` VALUES ('62', 'sandwich', 'Sandwich', '25', '0', '1');
INSERT INTO `items` VALUES ('63', 'coffee', 'Café', '25', '0', '1');
INSERT INTO `items` VALUES ('64', 'poubelle', 'Poubelle', '70', '0', '1');
INSERT INTO `items` VALUES ('65', 'sac_argent', 'Sac_Argent', '70', '0', '1');
INSERT INTO `items` VALUES ('66', 'bandage', 'Bandage', '20', '0', '1');
INSERT INTO `items` VALUES ('67', 'medikit', 'Medikit', '5', '0', '1');
INSERT INTO `items` VALUES ('68', 'weed', 'Weed', '500', '0', '1');
INSERT INTO `items` VALUES ('69', 'weed_pooch', 'Pochon de weed', '250', '0', '1');
INSERT INTO `items` VALUES ('70', 'coke', 'Coke', '500', '0', '1');
INSERT INTO `items` VALUES ('71', 'coke_pooch', 'Pochon de coke', '250', '0', '1');
INSERT INTO `items` VALUES ('72', 'meth', 'Meth', '500', '0', '1');
INSERT INTO `items` VALUES ('73', 'meth_pooch', 'Pochon de meth', '250', '0', '1');
INSERT INTO `items` VALUES ('74', 'opium', 'Opium', '500', '0', '1');
INSERT INTO `items` VALUES ('75', 'opium_pooch', 'Pochon de opium', '250', '0', '1');
INSERT INTO `items` VALUES ('76', 'alive_chicken', 'Poulet vivant', '35', '0', '1');
INSERT INTO `items` VALUES ('77', 'slaughtered_chicken', 'Poulet abattu', '35', '0', '1');
INSERT INTO `items` VALUES ('78', 'packaged_chicken', 'Poulet en barquette', '35', '0', '1');
INSERT INTO `items` VALUES ('79', 'fish', 'Poisson', '100', '0', '1');
INSERT INTO `items` VALUES ('80', 'stone', 'Pierre', '100', '0', '1');
INSERT INTO `items` VALUES ('81', 'washed_stone', 'Pierre Lavée', '75', '0', '1');
INSERT INTO `items` VALUES ('82', 'copper', 'Cuivre', '56', '0', '1');
INSERT INTO `items` VALUES ('83', 'iron', 'Fer', '42', '0', '1');
INSERT INTO `items` VALUES ('84', 'gold', 'Or', '21', '0', '1');
INSERT INTO `items` VALUES ('85', 'diamond', 'Diamant', '50', '0', '1');
INSERT INTO `items` VALUES ('86', 'wood', 'Bois', '100', '0', '1');
INSERT INTO `items` VALUES ('87', 'cutted_wood', 'Bois coupé', '75', '0', '1');
INSERT INTO `items` VALUES ('88', 'packaged_plank', 'Paquet de planches', '75', '0', '1');
INSERT INTO `items` VALUES ('89', 'petrol', 'Pétrole', '100', '0', '1');
INSERT INTO `items` VALUES ('90', 'petrol_raffin', 'Pétrole Raffiné', '75', '0', '1');
INSERT INTO `items` VALUES ('91', 'essence', 'Essence', '75', '0', '1');
INSERT INTO `items` VALUES ('92', 'whool', 'Laine', '100', '0', '1');
INSERT INTO `items` VALUES ('93', 'fabric', 'Tissu', '80', '0', '1');
INSERT INTO `items` VALUES ('94', 'clothe', 'Vêtement', '40', '0', '1');
INSERT INTO `items` VALUES ('95', 'gazbottle', 'bouteille de gaz', '10', '0', '1');
INSERT INTO `items` VALUES ('96', 'fixtool', 'outils réparation', '10', '0', '1');
INSERT INTO `items` VALUES ('97', 'carotool', 'outils carosserie', '10', '0', '1');
INSERT INTO `items` VALUES ('98', 'blowpipe', 'Chalumeaux', '10', '0', '1');
INSERT INTO `items` VALUES ('99', 'fixkit', 'Kit réparation', '10', '0', '1');
INSERT INTO `items` VALUES ('100', 'carokit', 'Kit carosserie', '10', '0', '1');
INSERT INTO `items` VALUES ('101', 'bandage', 'Bandage', '20', '0', '1');
INSERT INTO `items` VALUES ('102', 'medikit', 'Medikit', '5', '0', '1');
INSERT INTO `items` VALUES ('103', 'jager', 'Jägermeister', '25', '0', '1');
INSERT INTO `items` VALUES ('104', 'vodka', 'Vodka', '25', '0', '1');
INSERT INTO `items` VALUES ('105', 'rhum', 'Rhum', '25', '0', '1');
INSERT INTO `items` VALUES ('106', 'whisky', 'Whisky', '25', '0', '1');
INSERT INTO `items` VALUES ('107', 'tequila', 'Tequila', '25', '0', '1');
INSERT INTO `items` VALUES ('108', 'martini', 'Martini blanc', '25', '0', '1');
INSERT INTO `items` VALUES ('109', 'soda', 'Soda', '25', '0', '1');
INSERT INTO `items` VALUES ('110', 'jusfruit', 'Jus de fruits', '25', '0', '1');
INSERT INTO `items` VALUES ('111', 'icetea', 'Ice Tea', '25', '0', '1');
INSERT INTO `items` VALUES ('112', 'energy', 'Energy Drink', '25', '0', '1');
INSERT INTO `items` VALUES ('113', 'drpepper', 'Dr. Pepper', '25', '0', '1');
INSERT INTO `items` VALUES ('114', 'limonade', 'Limonade', '25', '0', '1');
INSERT INTO `items` VALUES ('115', 'bolcacahuetes', 'Bol de cacahuètes', '25', '0', '1');
INSERT INTO `items` VALUES ('116', 'bolnoixcajou', 'Bol de noix de cajou', '25', '0', '1');
INSERT INTO `items` VALUES ('117', 'bolpistache', 'Bol de pistaches', '25', '0', '1');
INSERT INTO `items` VALUES ('118', 'bolchips', 'Bol de chips', '25', '0', '1');
INSERT INTO `items` VALUES ('119', 'saucisson', 'Saucisson', '25', '0', '1');
INSERT INTO `items` VALUES ('120', 'grapperaisin', 'Grappe de raisin', '25', '0', '1');
INSERT INTO `items` VALUES ('121', 'jagerbomb', 'Jägerbomb', '25', '0', '1');
INSERT INTO `items` VALUES ('122', 'golem', 'Golem', '25', '0', '1');
INSERT INTO `items` VALUES ('123', 'whiskycoca', 'Whisky-coca', '25', '0', '1');
INSERT INTO `items` VALUES ('124', 'vodkaenergy', 'Vodka-energy', '25', '0', '1');
INSERT INTO `items` VALUES ('125', 'vodkafruit', 'Vodka-jus de fruits', '25', '0', '1');
INSERT INTO `items` VALUES ('126', 'rhumfruit', 'Rhum-jus de fruits', '25', '0', '1');
INSERT INTO `items` VALUES ('127', 'teqpaf', 'Teq\'paf', '25', '0', '1');
INSERT INTO `items` VALUES ('128', 'rhumcoca', 'Rhum-coca', '25', '0', '1');
INSERT INTO `items` VALUES ('129', 'mojito', 'Mojito', '25', '0', '1');
INSERT INTO `items` VALUES ('130', 'ice', 'Glaçon', '25', '0', '1');
INSERT INTO `items` VALUES ('131', 'mixapero', 'Mix Apéritif', '25', '0', '1');
INSERT INTO `items` VALUES ('132', 'metreshooter', 'Mètre de shooter', '25', '0', '1');
INSERT INTO `items` VALUES ('133', 'jagercerbere', 'Jäger Cerbère', '25', '0', '1');
INSERT INTO `items` VALUES ('134', 'menthe', 'Feuille de menthe', '25', '0', '1');
INSERT INTO `items` VALUES ('135', 'goldmedal', 'Medaille D\'or', '-1', '0', '1');
INSERT INTO `items` VALUES ('136', 'silvermedal', 'Medaille D\'argent', '-1', '0', '1');
INSERT INTO `items` VALUES ('137', 'bronzemedal', 'Medail De Bronze', '-1', '0', '1');
INSERT INTO `items` VALUES ('141', 'plongee1', 'Plongee courte', '-1', '0', '1');
INSERT INTO `items` VALUES ('142', 'plongee2', 'Plongee longue', '-1', '0', '1');
INSERT INTO `items` VALUES ('144', 'sacbillets', ' Sac de Billets', '100', '0', '1');
INSERT INTO `items` VALUES ('145', 'poisson_vivant', 'Poisson vivant', '100', '0', '1');
INSERT INTO `items` VALUES ('146', 'poisson_lave', 'Poisson lavé', '100', '0', '1');
INSERT INTO `items` VALUES ('147', 'poisson_préparé', 'Grand cru', '100', '0', '1');
INSERT INTO `items` VALUES ('148', 'poisson_vente', 'Poisson vente', '100', '0', '1');
INSERT INTO `items` VALUES ('149', 'blackberry', 'blackberry', '1', '0', '1');

-- ----------------------------
-- Table structure for `jail`
-- ----------------------------
DROP TABLE IF EXISTS `jail`;
CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jail
-- ----------------------------

-- ----------------------------
-- Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', 'unemployed', 'Chômeur', '0');
INSERT INTO `jobs` VALUES ('2', 'lumberjack', 'Bûcheron', '0');
INSERT INTO `jobs` VALUES ('3', 'fisherman', 'Pêcheur', '0');
INSERT INTO `jobs` VALUES ('4', 'reporter', 'Journaliste', '0');
INSERT INTO `jobs` VALUES ('5', 'tailor', 'tailleur', '0');
INSERT INTO `jobs` VALUES ('6', 'miner', 'Mineur', '0');
INSERT INTO `jobs` VALUES ('7', 'fueler', 'Raffineur', '0');
INSERT INTO `jobs` VALUES ('8', 'slaughterer', 'Abatteur', '0');
INSERT INTO `jobs` VALUES ('9', 'taxi', 'Taxi', '0');
INSERT INTO `jobs` VALUES ('10', 'cardealer', 'Concessionnaire', '1');
INSERT INTO `jobs` VALUES ('11', 'ambulance', 'Ambulancier', '0');
INSERT INTO `jobs` VALUES ('12', 'mecano', 'Mécano', '0');
INSERT INTO `jobs` VALUES ('13', 'foodtruck', 'Foodtruck', '0');
INSERT INTO `jobs` VALUES ('14', 'vigne', 'Vigneron', '0');
INSERT INTO `jobs` VALUES ('15', 'eboueur', 'Eboueur', '0');
INSERT INTO `jobs` VALUES ('16', 'police', 'LSPD', '0');
INSERT INTO `jobs` VALUES ('17', 'unicorn', 'Unicorn', '0');
INSERT INTO `jobs` VALUES ('18', 'realestateagent', 'Agent immobilier', '0');
INSERT INTO `jobs` VALUES ('21', 'dock', 'Marina', '1');
INSERT INTO `jobs` VALUES ('23', 'aircraftdealer', 'Airliner', '1');
INSERT INTO `jobs` VALUES ('24', 'gouvernor', 'Gouvernement', '0');
INSERT INTO `jobs` VALUES ('25', 'runner', 'Maratoonari', '0');
INSERT INTO `jobs` VALUES ('26', 'rally', 'Course_de_voiture', '0');
INSERT INTO `jobs` VALUES ('27', 'runner', 'Coureur', '0');
INSERT INTO `jobs` VALUES ('28', 'dock', 'Marina', '1');
INSERT INTO `jobs` VALUES ('29', 'brinks', 'Brinks', '0');
INSERT INTO `jobs` VALUES ('34', 'pompiste', 'Pompiste', '0');

-- ----------------------------
-- Table structure for `job_grades`
-- ----------------------------
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_grades
-- ----------------------------
INSERT INTO `job_grades` VALUES ('1', 'unemployed', '0', 'unemployed', 'RSA', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('2', 'lumberjack', '0', 'interim', 'Intérimaire', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('3', 'fisherman', '0', 'interim', 'Intérimaire', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('4', 'reporter', '0', 'employee', 'Intérimaire', '550', '{}', '{}');
INSERT INTO `job_grades` VALUES ('5', 'tailor', '0', 'interim', 'Intérimaire', '500', '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}');
INSERT INTO `job_grades` VALUES ('6', 'miner', '0', 'interim', 'Intérimaire', '500', '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}');
INSERT INTO `job_grades` VALUES ('7', 'fueler', '0', 'interim', 'Intérimaire', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('8', 'fueler', '3', 'boss', 'boss', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('9', 'slaughterer', '0', 'interim', 'Intérimaire', '250', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');
INSERT INTO `job_grades` VALUES ('10', 'cardealer', '0', 'recruit', 'Recrue', '150', '{}', '{}');
INSERT INTO `job_grades` VALUES ('11', 'cardealer', '1', 'novice', 'Novice', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('12', 'cardealer', '2', 'experienced', 'Experimente', '400', '{}', '{}');
INSERT INTO `job_grades` VALUES ('13', 'cardealer', '3', 'boss', 'Patron', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('14', 'taxi', '0', 'recrue', 'Recrue', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('15', 'taxi', '1', 'novice', 'Novice', '280', '{}', '{}');
INSERT INTO `job_grades` VALUES ('16', 'taxi', '2', 'experimente', 'Experimente', '300', '{}', '{}');
INSERT INTO `job_grades` VALUES ('17', 'taxi', '3', 'uber', 'Uber', '350', '{}', '{}');
INSERT INTO `job_grades` VALUES ('18', 'taxi', '4', 'boss', 'Patron', '1000', '{}', '{}');
INSERT INTO `job_grades` VALUES ('19', 'ambulance', '0', 'ambulance', 'Ambulancier', '500', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('20', 'ambulance', '1', 'doctor', 'Medecin', '700', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('21', 'ambulance', '2', 'chief_doctor', 'Medecin-chef', '900', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('22', 'ambulance', '3', 'boss', 'Chirurgien', '1000', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('23', 'mecano', '0', 'recrue', 'Recrue', '300', '{}', '{}');
INSERT INTO `job_grades` VALUES ('24', 'mecano', '1', 'novice', 'Novice', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('25', 'mecano', '2', 'experimente', 'Experimente', '700', '{}', '{}');
INSERT INTO `job_grades` VALUES ('26', 'mecano', '3', 'chief', 'Chef d\'équipe', '800', '{}', '{}');
INSERT INTO `job_grades` VALUES ('27', 'mecano', '4', 'boss', 'Patron', '1000', '{}', '{}');
INSERT INTO `job_grades` VALUES ('28', 'realestateagent', '0', 'location', 'Location', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('29', 'realestateagent', '1', 'vendeur', 'Vendeur', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('30', 'realestateagent', '2', 'gestion', 'Gestion', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('31', 'realestateagent', '3', 'boss', 'Patron', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('32', 'dock', '0', 'recruit', 'Recrue', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('33', 'dock', '1', 'novice', 'Novice', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('34', 'dock', '2', 'experienced', 'Experimente', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('35', 'dock', '3', 'boss', 'Patron', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('36', 'foodtruck', '0', 'cook', 'Cuisinier', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('37', 'foodtruck', '1', 'boss', 'Patron', '450', '{}', '{}');
INSERT INTO `job_grades` VALUES ('38', 'vigne', '0', 'recrue', 'Intérimaire', '500', '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('39', 'vigne', '1', 'novice', 'Vigneron', '750', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('40', 'vigne', '2', 'cdisenior', 'Chef de chai', '1200', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('41', 'vigne', '3', 'boss', 'Patron', '1600', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('42', 'eboueur', '0', 'interim', 'Intérimaire', '250', '{}', '{}');
INSERT INTO `job_grades` VALUES ('43', 'eboueur', '3', 'boss', 'boss', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('44', 'police', '0', 'recruit', 'Recrue', '200', '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('45', 'police', '4', 'officer', 'Officier', '1000', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('46', 'police', '1', 'sergeant', 'Sergent', '400', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('47', 'police', '2', 'lieutenant', 'Lieutenant', '600', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('48', 'police', '3', 'boss', 'Commandant', '700', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('49', 'unicorn', '0', 'barman', 'Barman', '300', '{}', '{}');
INSERT INTO `job_grades` VALUES ('50', 'unicorn', '1', 'dancer', 'Danseur', '300', '{}', '{}');
INSERT INTO `job_grades` VALUES ('51', 'unicorn', '2', 'viceboss', 'Co-gérant', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('52', 'unicorn', '3', 'boss', 'Gérant', '600', '{}', '{}');
INSERT INTO `job_grades` VALUES ('53', 'brinks', '0', 'interim', 'Interimaire', '2500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('54', 'aircraftdealer', '0', 'recruit', 'Recrue', '10', '{}', '{}');
INSERT INTO `job_grades` VALUES ('55', 'aircraftdealer', '1', 'novice', 'Novice', '25', '{}', '{}');
INSERT INTO `job_grades` VALUES ('56', 'aircraftdealer', '2', 'experienced', 'Experimente', '40', '{}', '{}');
INSERT INTO `job_grades` VALUES ('57', 'aircraftdealer', '3', 'boss', 'Patron', '0', '{}', '{}');
INSERT INTO `job_grades` VALUES ('58', 'gouvernor', '0', 'security_gouvernor', 'Garde du Corps', '2500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('59', 'gouvernor', '1', 'boss', 'Président', '5000', '{}', '{}');
INSERT INTO `job_grades` VALUES ('60', 'dock', '0', 'recruit', 'Recrue', '10', '{}', '{}');
INSERT INTO `job_grades` VALUES ('61', 'dock', '1', 'novice', 'Novice', '25', '{}', '{}');
INSERT INTO `job_grades` VALUES ('62', 'dock', '2', 'experienced', 'Experimente', '40', '{}', '{}');
INSERT INTO `job_grades` VALUES ('63', 'dock', '3', 'boss', 'Patron', '0', '{}', '{}');
INSERT INTO `job_grades` VALUES ('64', 'lumberjack', '3', 'boss', 'Patron', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('65', 'brinks', '0', 'interim', 'Convoyeur de fonds', '400', '{}', '{}');
INSERT INTO `job_grades` VALUES ('66', 'brinks', '1', 'officier', 'Officier', '500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('67', 'brinks', '2', 'sergean', 'Sergent', '600', '{}', '{}');
INSERT INTO `job_grades` VALUES ('68', 'brinks', '3', 'lieutemant', 'Lieutenant', '700', '{}', '{}');
INSERT INTO `job_grades` VALUES ('69', 'brinks', '4', 'boss', 'Patron', '1000', '{}', '{}');
INSERT INTO `job_grades` VALUES ('70', 'boatdealer', '0', 'recruit', 'Recrue', '10', '{}', '{}');
INSERT INTO `job_grades` VALUES ('71', 'boatdealer', '1', 'novice', 'Novice', '25', '{}', '{}');
INSERT INTO `job_grades` VALUES ('72', 'boatdealer', '2', 'experienced', 'Experimente', '40', '{}', '{}');
INSERT INTO `job_grades` VALUES ('73', 'boatdealer', '3', 'boss', 'Patron', '0', '{}', '{}');
INSERT INTO `job_grades` VALUES ('74', 'pompiste', '0', 'recrue', 'Etudiant', '450', '{}', '{}');
INSERT INTO `job_grades` VALUES ('75', 'pompiste', '1', 'experimente', 'Employé', '950', '{}', '{}');
INSERT INTO `job_grades` VALUES ('76', 'pompiste', '2', 'chef', 'Associé', '1500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('77', 'pompiste', '3', 'boss', 'Patron', '2000', '{}', '{}');

-- ----------------------------
-- Table structure for `licenses`
-- ----------------------------
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of licenses
-- ----------------------------
INSERT INTO `licenses` VALUES ('2', 'dmv', 'Code de la route');
INSERT INTO `licenses` VALUES ('3', 'drive', 'Permis de conduire');
INSERT INTO `licenses` VALUES ('4', 'drive_bike', 'Permi moto');
INSERT INTO `licenses` VALUES ('5', 'drive_truck', 'Commercial Drivers License');
INSERT INTO `licenses` VALUES ('6', 'weapon', 'Weapon Level : One');
INSERT INTO `licenses` VALUES ('7', 'weapon2', 'Weapon Level : Two');
INSERT INTO `licenses` VALUES ('8', 'weapon3', 'Weapon Level : Three');

-- ----------------------------
-- Table structure for `owned_aircrafts`
-- ----------------------------
DROP TABLE IF EXISTS `owned_aircrafts`;
CREATE TABLE `owned_aircrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the aircraft',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owned_aircrafts
-- ----------------------------
INSERT INTO `owned_aircrafts` VALUES ('1', '{\"modAPlate\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"modHorns\":-1,\"color1\":132,\"modSpeakers\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"plateIndex\":4,\"modArmor\":-1,\"modFrontBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"modFrame\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"pearlescentColor\":112,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"model\":-2122757008,\"modXenon\":false,\"wheelColor\":156,\"modTank\":-1,\"modArchCover\":-1,\"dirtLevel\":0.0086541119962931,\"modFender\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"windowTint\":-1,\"color2\":28,\"modAerials\":-1,\"plate\":\"22RTR770\",\"modDial\":-1,\"modSmokeEnabled\":1,\"health\":1000,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modLivery\":-1,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modRoof\":-1}', 'steam:1100001081ca641', '1');
INSERT INTO `owned_aircrafts` VALUES ('2', '{\"modSteeringWheel\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modStruts\":-1,\"plateIndex\":4,\"modTrimA\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"model\":-901163259,\"modSmokeEnabled\":false,\"health\":1000,\"modTransmission\":-1,\"modSeats\":-1,\"modAirFilter\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modFender\":-1,\"dirtLevel\":6.1996746063232,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"pearlescentColor\":122,\"modPlateHolder\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"modEngine\":-1,\"color2\":0,\"wheels\":0,\"modArchCover\":-1,\"modArmor\":-1,\"color1\":132,\"modFrontBumper\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modWindows\":-1,\"wheelColor\":156,\"plate\":\"83GKL924\",\"modSuspension\":-1,\"modSideSkirt\":-1}', 'steam:1100001081ca641', '1');
INSERT INTO `owned_aircrafts` VALUES ('4', '{\"modOrnaments\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"health\":1000,\"modTank\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"modEngine\":-1,\"modRoof\":-1,\"wheelColor\":111,\"modTrimA\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modXenon\":false,\"modTrunk\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"modDial\":-1,\"modFender\":-1,\"modTrimB\":-1,\"pearlescentColor\":5,\"modFrame\":-1,\"color1\":67,\"plate\":\"21HEY270\",\"modBrakes\":-1,\"dirtLevel\":6.0,\"modSuspension\":-1,\"modExhaust\":-1,\"wheels\":0,\"modFrontBumper\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"model\":-1523619738,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"plateIndex\":0,\"modHood\":-1,\"modEngineBlock\":-1,\"color2\":1}', 'steam:110000107f00b0f', '1');

-- ----------------------------
-- Table structure for `owned_boats`
-- ----------------------------
DROP TABLE IF EXISTS `owned_boats`;
CREATE TABLE `owned_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the boat',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of owned_boats
-- ----------------------------

-- ----------------------------
-- Table structure for `owned_properties`
-- ----------------------------
DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owned_properties
-- ----------------------------
INSERT INTO `owned_properties` VALUES ('1', 'TinselTowersApt12', '8500', '1', 'steam:1100001081ca641');
INSERT INTO `owned_properties` VALUES ('3', 'WildOatsDrive', '1500000', '0', 'steam:11000010bf1d422');
INSERT INTO `owned_properties` VALUES ('4', 'NorthConkerAvenue2045', '1500000', '0', 'steam:110000107f00b0f');

-- ----------------------------
-- Table structure for `owned_vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of owned_vehicles
-- ----------------------------
INSERT INTO `owned_vehicles` VALUES ('1', 0x7B226D6F6441726D6F72223A2D312C226D6F645472696D41223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F64526F6F66223A2D312C226D6F6457696E646F7773223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6453696465536B697274223A2D312C22636F6C6F7232223A302C226D6F64456E67696E65223A2D312C226D6F6445786861757374223A2D312C226D6F6444617368626F617264223A2D312C226D6F64486F6F64223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F64487964726F6C6963223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F6441657269616C73223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6441697246696C746572223A2D312C22646972744C6576656C223A302E302C226D6F644772696C6C65223A2D312C22636F6C6F7231223A3131312C226D6F64656C223A2D313033303237353033362C226D6F6446726F6E7442756D706572223A2D312C226D6F6458656E6F6E223A66616C73652C22776865656C73223A302C22706561726C657363656E74436F6C6F72223A302C226D6F645374656572696E67576865656C223A2D312C226865616C7468223A313030302C226D6F64537065616B657273223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F644672616D65223A2D312C226D6F6441506C617465223A2D312C226D6F644272616B6573223A2D312C226D6F64506C617465486F6C646572223A2D312C226D6F64537472757473223A2D312C226D6F6454616E6B223A2D312C226D6F644C6976657279223A2D312C226D6F645265617242756D706572223A2D312C226D6F64486F726E73223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F644469616C223A2D312C226D6F645472696D42223A2D312C226D6F64536D6F6B65456E61626C6564223A312C22776865656C436F6C6F72223A3135362C226D6F64536869667465724C656176657273223A2D312C226D6F6441726368436F766572223A2D312C226D6F644261636B576865656C73223A2D312C226D6F6453706F696C657273223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F64547572626F223A66616C73652C226D6F645472756E6B223A2D312C2277696E646F7754696E74223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C22706C617465496E646578223A342C226D6F6446656E646572223A2D312C22706C617465223A22383945554B363237222C226D6F645365617473223A2D317D, 'steam:1100001081ca641', '0');
INSERT INTO `owned_vehicles` VALUES ('2', 0x7B226D6F645374656572696E67576865656C223A2D312C226D6F6446726F6E7442756D706572223A2D312C22776865656C73223A302C226D6F644672616D65223A2D312C226D6F64656C223A313033333234353332382C226D6F6454616E6B223A2D312C226D6F64487964726F6C6963223A2D312C226D6F645265617242756D706572223A2D312C226D6F645472756E6B223A2D312C226D6F6441697246696C746572223A2D312C226D6F64486F6F64223A2D312C226D6F6441726D6F72223A2D312C226D6F645472696D41223A2D312C226D6F6453696465536B697274223A2D312C226D6F6444617368626F617264223A2D312C22636F6C6F7232223A3132322C226D6F64526F6F66223A2D312C226865616C7468223A313030302C22706C617465496E646578223A342C226D6F6441726368436F766572223A2D312C226D6F6441506C617465223A2D312C226D6F64506C617465486F6C646572223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C22646972744C6576656C223A302E302C226D6F645472616E736D697373696F6E223A2D312C22636F6C6F7231223A3132322C226D6F6458656E6F6E223A66616C73652C226D6F644272616B6573223A2D312C226D6F6441657269616C73223A2D312C226D6F645365617473223A2D312C226D6F64537472757473223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F64486F726E73223A2D312C22706561726C657363656E74436F6C6F72223A302C226D6F644772696C6C65223A2D312C226D6F64537065616B657273223A2D312C226D6F6453706F696C657273223A2D312C2277696E646F7754696E74223A2D312C22776865656C436F6C6F72223A3135362C226D6F644469616C223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F64547572626F223A66616C73652C226D6F6445786861757374223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6457696E646F7773223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F645472696D42223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F64536D6F6B65456E61626C6564223A312C22706C617465223A2236344A424B393730222C226D6F64456E67696E65223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F644C6976657279223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F6446656E646572223A2D317D, 'steam:1100001081ca641', '0');
INSERT INTO `owned_vehicles` VALUES ('3', 0x7B226D6F645374656572696E67576865656C223A2D312C226D6F6446726F6E7442756D706572223A2D312C22776865656C73223A302C226D6F644672616D65223A2D312C226D6F64656C223A2D313033303237353033362C226D6F6454616E6B223A2D312C226D6F64487964726F6C6963223A2D312C226D6F645265617242756D706572223A2D312C226D6F645472756E6B223A2D312C226D6F6441697246696C746572223A2D312C226D6F64486F6F64223A2D312C226D6F6441726D6F72223A2D312C226D6F645472696D41223A2D312C226D6F6453696465536B697274223A2D312C226D6F6444617368626F617264223A2D312C22636F6C6F7232223A302C226D6F64526F6F66223A2D312C226865616C7468223A313030302C22706C617465496E646578223A342C226D6F6441726368436F766572223A2D312C226D6F6441506C617465223A2D312C226D6F64506C617465486F6C646572223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C22646972744C6576656C223A302E302C226D6F645472616E736D697373696F6E223A2D312C22636F6C6F7231223A31332C226D6F6458656E6F6E223A66616C73652C226D6F644272616B6573223A2D312C226D6F6441657269616C73223A2D312C226D6F645365617473223A2D312C226D6F64537472757473223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F64486F726E73223A2D312C22706561726C657363656E74436F6C6F72223A36322C226D6F644772696C6C65223A2D312C226D6F64537065616B657273223A2D312C226D6F6453706F696C657273223A2D312C2277696E646F7754696E74223A2D312C22776865656C436F6C6F72223A3135362C226D6F644469616C223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F64547572626F223A66616C73652C226D6F6445786861757374223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6457696E646F7773223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F645472696D42223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F64536D6F6B65456E61626C6564223A66616C73652C22706C617465223A22323642434D313837222C226D6F64456E67696E65223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F644C6976657279223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F6446656E646572223A2D317D, 'steam:1100001081ca641', '0');
INSERT INTO `owned_vehicles` VALUES ('4', 0x7B226D6F6444617368626F617264223A2D312C226D6F644469616C223A2D312C226D6F6441697246696C746572223A2D312C226D6F644672616D65223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F64486F6F64223A2D312C226D6F644772696C6C65223A2D312C226D6F645472756E6B223A2D312C226D6F64547572626F223A66616C73652C226D6F6441726368436F766572223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F64506C617465486F6C646572223A2D312C22776865656C436F6C6F72223A3135362C226D6F64487964726F6C6963223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F64536869667465724C656176657273223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536D6F6B65456E61626C6564223A66616C73652C226D6F6441657269616C73223A2D312C226D6F645365617473223A2D312C226D6F644C6976657279223A2D312C226D6F645472696D42223A2D312C226D6F6446656E646572223A2D312C226D6F644F726E616D656E7473223A2D312C22706C617465496E646578223A302C226D6F6457696E646F7773223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6441726D6F72223A2D312C22776865656C73223A372C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F64456E67696E65223A2D312C226D6F64526967687446656E646572223A2D312C226D6F644272616B6573223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F6445786861757374223A2D312C226D6F645472696D41223A2D312C226D6F64537472757473223A2D312C22706C617465223A223631555156363533222C2277696E646F7754696E74223A2D312C226D6F6446726F6E7442756D706572223A2D312C226865616C7468223A313030302C226D6F6441506C617465223A2D312C22636F6C6F7231223A33312C226D6F645265617242756D706572223A2D312C22706561726C657363656E74436F6C6F72223A33322C226D6F6453696465536B697274223A2D312C226D6F6446726F6E74576865656C73223A2D312C22636F6C6F7232223A302C226D6F64526F6F66223A2D312C226D6F64486F726E73223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F64537065616B657273223A2D312C226D6F6454616E6B223A2D312C226D6F6453706F696C657273223A2D312C226D6F64656C223A313033323832333338382C22646972744C6576656C223A392E302C226D6F6458656E6F6E223A66616C73652C226D6F645374656572696E67576865656C223A2D317D, 'steam:1100001081ca641', '0');
INSERT INTO `owned_vehicles` VALUES ('5', 0x7B226D6F6444617368626F617264223A2D312C226D6F644469616C223A2D312C226D6F6441697246696C746572223A2D312C226D6F644672616D65223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F64486F6F64223A2D312C226D6F644772696C6C65223A2D312C226D6F645472756E6B223A2D312C226D6F64547572626F223A66616C73652C226D6F6441726368436F766572223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F64506C617465486F6C646572223A2D312C22776865656C436F6C6F72223A3135362C226D6F64487964726F6C6963223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F64536869667465724C656176657273223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536D6F6B65456E61626C6564223A66616C73652C226D6F6441657269616C73223A2D312C226D6F645365617473223A2D312C226D6F644C6976657279223A2D312C226D6F645472696D42223A2D312C226D6F6446656E646572223A2D312C226D6F644F726E616D656E7473223A2D312C22706C617465496E646578223A302C226D6F6457696E646F7773223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6441726D6F72223A2D312C22776865656C73223A362C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F64456E67696E65223A2D312C226D6F64526967687446656E646572223A2D312C226D6F644272616B6573223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F6445786861757374223A2D312C226D6F645472696D41223A2D312C226D6F64537472757473223A2D312C22706C617465223A22383945424B323235222C2277696E646F7754696E74223A2D312C226D6F6446726F6E7442756D706572223A2D312C226865616C7468223A313030302C226D6F6441506C617465223A2D312C22636F6C6F7231223A38382C226D6F645265617242756D706572223A2D312C22706561726C657363656E74436F6C6F72223A38382C226D6F6453696465536B697274223A2D312C226D6F6446726F6E74576865656C73223A2D312C22636F6C6F7232223A38382C226D6F64526F6F66223A2D312C226D6F64486F726E73223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F64537065616B657273223A2D312C226D6F6454616E6B223A2D312C226D6F6453706F696C657273223A2D312C226D6F64656C223A313637323139353535392C22646972744C6576656C223A31312E302C226D6F6458656E6F6E223A66616C73652C226D6F645374656572696E67576865656C223A2D317D, 'steam:1100001081ca641', '0');
INSERT INTO `owned_vehicles` VALUES ('6', 0x7B226D6F644672616D65223A2D312C226D6F6444617368626F617264223A2D312C226D6F64456E67696E65223A2D312C22776865656C73223A302C226D6F64547572626F223A66616C73652C226D6F6446726F6E74576865656C73223A2D312C226D6F6457696E646F7773223A2D312C226D6F6454616E6B223A2D312C226D6F6453706F696C657273223A2D312C226D6F64526F6F66223A2D312C226D6F645472696D41223A2D312C226D6F644C6976657279223A2D312C226D6F64486F6F64223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F645472696D42223A2D312C226D6F64537472757473223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F6456616E697479506C617465223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C22636F6C6F7231223A3133322C226D6F64537065616B657273223A2D312C2277696E646F7754696E74223A2D312C22706561726C657363656E74436F6C6F72223A3132322C22706C617465223A2238304B4D54323234222C22706C617465496E646578223A342C226D6F64526967687446656E646572223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F64656C223A3737313731313533352C226D6F644F726E616D656E7473223A2D312C226D6F6445786861757374223A2D312C226D6F64487964726F6C6963223A2D312C226D6F645265617242756D706572223A2D312C226D6F644272616B6573223A2D312C226D6F645365617473223A2D312C226D6F6441697246696C746572223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F64486F726E73223A2D312C226D6F645472756E6B223A2D312C226D6F644772696C6C65223A2D312C22646972744C6576656C223A302E302C226865616C7468223A313030302C22636F6C6F7232223A302C226D6F6441506C617465223A2D312C226D6F6441726D6F72223A2D312C226D6F6441657269616C73223A2D312C226D6F645374656572696E67576865656C223A2D312C226D6F64506C617465486F6C646572223A2D312C226D6F64456E67696E65426C6F636B223A2D312C22776865656C436F6C6F72223A3135362C226D6F644261636B576865656C73223A2D312C226D6F6446726F6E7442756D706572223A2D312C226D6F6441726368436F766572223A2D312C226D6F6446656E646572223A2D312C226D6F6453696465536B697274223A2D312C226D6F644469616C223A2D312C226D6F6458656E6F6E223A66616C73657D, 'steam:1100001081ca641', '0');

-- ----------------------------
-- Table structure for `owned_vehicles_garage`
-- ----------------------------
DROP TABLE IF EXISTS `owned_vehicles_garage`;
CREATE TABLE `owned_vehicles_garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of owned_vehicles_garage
-- ----------------------------
INSERT INTO `owned_vehicles_garage` VALUES ('1', 0x7B22646972744C6576656C223A302E34323138333330393739333437322C226D6F64446F6F72537065616B6572223A2D312C226D6F64456E67696E65223A2D312C226D6F645265617242756D706572223A2D312C226D6F644C6976657279223A2D312C226D6F645365617473223A2D312C226D6F644F726E616D656E7473223A2D312C2277696E646F7754696E74223A2D312C226D6F6441697246696C746572223A2D312C226D6F64486F726E73223A2D312C226D6F645472696D42223A2D312C226D6F6453696465536B697274223A2D312C226D6F64656C223A2D3334343934333030392C226D6F644772696C6C65223A2D312C22706C617465223A2232394D444C373232222C226D6F64547572626F223A66616C73652C226D6F64486F6F64223A2D312C226D6F644469616C223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6445786861757374223A2D312C226D6F6453706F696C657273223A2D312C226D6F6441726368436F766572223A2D312C226D6F645374656572696E67576865656C223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F644672616D65223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F6441506C617465223A2D312C226865616C7468223A3838352C226D6F644272616B6573223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F645472696D41223A2D312C226D6F6441726D6F72223A2D312C22776865656C73223A302C22706C617465496E646578223A302C226D6F6444617368626F617264223A2D312C226D6F6446656E646572223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F6458656E6F6E223A66616C73652C226D6F64526F6F66223A2D312C22636F6C6F7231223A302C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C22706561726C657363656E74436F6C6F72223A312C226D6F6441657269616C73223A2D312C226D6F64537472757473223A2D312C226D6F64487964726F6C6963223A2D312C226D6F6457696E646F7773223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F6456616E697479506C617465223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F64537065616B657273223A2D312C226D6F6446726F6E7442756D706572223A2D312C226D6F6454616E6B223A2D312C226D6F645472616E736D697373696F6E223A2D312C22776865656C436F6C6F72223A3135362C226D6F6446726F6E74576865656C73223A2D312C226D6F64506C617465486F6C646572223A2D312C22636F6C6F7232223A302C226D6F645472756E6B223A2D317D, 'steam:1100001081ca641', '1');
INSERT INTO `owned_vehicles_garage` VALUES ('2', 0x7B226D6F6458656E6F6E223A66616C73652C22776865656C73223A302C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F645472696D41223A2D312C226D6F644772696C6C65223A2D312C226D6F645472756E6B223A2D312C226D6F64456E67696E65223A2D312C226D6F64506C617465486F6C646572223A2D312C226D6F6441726D6F72223A2D312C226D6F64486F726E73223A2D312C22706561726C657363656E74436F6C6F72223A37302C226D6F645374656572696E67576865656C223A2D312C226D6F6453757370656E73696F6E223A332C226D6F6453696465536B697274223A2D312C226D6F64656C223A2D3239353638393032382C226D6F6454616E6B223A2D312C226D6F6445786861757374223A2D312C226D6F6446726F6E7442756D706572223A392C226D6F6453706F696C657273223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F64446F6F72537065616B6572223A2D312C22776865656C436F6C6F72223A3135382C226D6F64536869667465724C656176657273223A2D312C226865616C7468223A313030302C226D6F64456E67696E65426C6F636B223A2D312C226D6F64537472757473223A2D312C226D6F64526F6F66223A312C22706C617465496E646578223A302C226D6F6441726368436F766572223A2D312C226D6F644272616B6573223A322C226D6F644672616D65223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F6444617368626F617264223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F644C6976657279223A2D312C226D6F6441506C617465223A2D312C226D6F64526967687446656E646572223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F6446726F6E74576865656C73223A2D312C22706C617465223A2232324C484A313236222C226D6F645265617242756D706572223A372C226D6F64486F6F64223A382C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F64537065616B657273223A2D312C226D6F6441697246696C746572223A2D312C226D6F644469616C223A2D312C226D6F6446656E646572223A2D312C226D6F644261636B576865656C73223A2D312C2277696E646F7754696E74223A2D312C226D6F645472696D42223A2D312C226D6F6457696E646F7773223A2D312C22636F6C6F7231223A36342C226D6F6441657269616C73223A2D312C226D6F64547572626F223A312C22636F6C6F7232223A38382C226D6F64487964726F6C6963223A2D312C226D6F645365617473223A2D312C226D6F6456616E697479506C617465223A2D312C22646972744C6576656C223A392E31333130383235333437397D, 'steam:11000010bf1d422', '1');
INSERT INTO `owned_vehicles_garage` VALUES ('3', 0x7B226D6F64486F6F64223A2D312C226D6F64526F6F66223A2D312C226D6F64487964726F6C6963223A2D312C226D6F6453696465536B697274223A2D312C226D6F64456E67696E65426C6F636B223A2D312C22646972744C6576656C223A382E383030383732383032373334342C22636F6C6F7231223A332C2277696E646F7754696E74223A2D312C226D6F645472696D42223A2D312C226D6F64547572626F223A66616C73652C22636F6C6F7232223A332C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6453706F696C657273223A2D312C226D6F6446726F6E7442756D706572223A2D312C226D6F6441726368436F766572223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F6441726D6F72223A2D312C226D6F64506C617465486F6C646572223A2D312C22706C617465223A223836514B4D383632222C22706561726C657363656E74436F6C6F72223A352C226D6F644261636B576865656C73223A2D312C22776865656C436F6C6F72223A3135362C226D6F6453757370656E73696F6E223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F6441697246696C746572223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F64537472757473223A2D312C226D6F645265617242756D706572223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C22706C617465496E646578223A302C226D6F644772696C6C65223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F6446656E646572223A2D312C226D6F644272616B6573223A2D312C226D6F6458656E6F6E223A66616C73652C226D6F644F726E616D656E7473223A2D312C226D6F6444617368626F617264223A2D312C226D6F644469616C223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F64456E67696E65223A2D312C226D6F645374656572696E67576865656C223A2D312C226D6F645472696D41223A2D312C226D6F644672616D65223A2D312C226D6F64486F726E73223A2D312C226D6F6454616E6B223A2D312C226D6F644C6976657279223A2D312C226D6F64537065616B657273223A2D312C226D6F64656C223A3233343036323330392C226D6F6457696E646F7773223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6441657269616C73223A2D312C226865616C7468223A3933382C226D6F64536869667465724C656176657273223A2D312C22776865656C73223A372C226D6F645472756E6B223A2D312C226D6F645365617473223A2D312C226D6F6441506C617465223A2D312C226D6F6445786861757374223A2D317D, 'steam:1100001081ca641', '1');
INSERT INTO `owned_vehicles_garage` VALUES ('4', 0x7B226D6F64456E67696E65426C6F636B223A2D312C226D6F6441726368436F766572223A2D312C226D6F64506C617465486F6C646572223A2D312C22706C617465496E646578223A312C226D6F6441506C617465223A2D312C226D6F644C6976657279223A2D312C226D6F64547572626F223A312C226D6F64537065616B657273223A2D312C226D6F64526F6F66223A2D312C226D6F6444617368626F617264223A2D312C226D6F645472696D41223A2D312C226D6F6453696465536B697274223A312C22636F6C6F7232223A31332C226D6F644272616B6573223A322C22636F6C6F7231223A31322C226D6F64456E67696E65223A332C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6441726D6F72223A342C226D6F6453757370656E73696F6E223A332C226D6F6446656E646572223A2D312C226D6F6458656E6F6E223A312C226D6F6453706F696C657273223A352C226D6F64656C223A313438333137313332332C226D6F64526967687446656E646572223A2D312C226D6F645374656572696E67576865656C223A2D312C226D6F645365617473223A2D312C226D6F64486F6F64223A322C226D6F645265617242756D706572223A2D312C226D6F6441697246696C746572223A2D312C2277696E646F7754696E74223A312C226D6F645472616E736D697373696F6E223A322C226D6F64536869667465724C656176657273223A2D312C226D6F64537472757473223A2D312C226865616C7468223A3932382C226D6F645472696D42223A2D312C226D6F6445786861757374223A312C22706C617465223A223434424542363230222C226D6F644F726E616D656E7473223A2D312C226D6F645472756E6B223A2D312C22776865656C73223A302C226D6F64487964726F6C6963223A2D312C226D6F6441657269616C73223A2D312C226D6F644672616D65223A2D312C226D6F644261636B576865656C73223A2D312C22776865656C436F6C6F72223A302C226D6F6446726F6E74576865656C73223A31332C226D6F6446726F6E7442756D706572223A322C226D6F644469616C223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F64446F6F72537065616B6572223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F644772696C6C65223A332C226D6F64486F726E73223A2D312C226D6F6454616E6B223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F6457696E646F7773223A2D312C22646972744C6576656C223A322E323832383436343530383035372C226D6F6456616E697479506C617465223A2D312C22706561726C657363656E74436F6C6F72223A32347D, 'steam:1100001081ca641', '1');
INSERT INTO `owned_vehicles_garage` VALUES ('5', 0x7B226D6F6445786861757374223A2D312C22636F6C6F7231223A38382C226D6F6457696E646F7773223A2D312C226D6F6446656E646572223A2D312C226D6F645365617473223A2D312C226D6F645374656572696E67576865656C223A2D312C226D6F6441726D6F72223A2D312C226D6F64456E67696E65223A2D312C226D6F6444617368626F617264223A2D312C226D6F6458656E6F6E223A66616C73652C226D6F6441726368436F766572223A2D312C226D6F644C6976657279223A2D312C226D6F644672616D65223A2D312C226D6F645265617242756D706572223A2D312C226D6F6441657269616C73223A2D312C226D6F64536D6F6B65456E61626C6564223A66616C73652C226D6F644261636B576865656C73223A2D312C226D6F6446726F6E74576865656C73223A2D312C226865616C7468223A313030302C226D6F645472696D42223A2D312C22706C617465223A223236514950303731222C226D6F6453706F696C657273223A2D312C226D6F6454616E6B223A2D312C226D6F64537065616B657273223A2D312C22776865656C436F6C6F72223A3135362C226D6F64486F726E73223A2D312C226D6F6441506C617465223A2D312C226D6F644F726E616D656E7473223A2D312C2277696E646F7754696E74223A2D312C226D6F64526F6F66223A2D312C22706561726C657363656E74436F6C6F72223A38382C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6456616E697479506C617465223A2D312C226D6F645472696D41223A2D312C226D6F64537472757473223A2D312C22636F6C6F7232223A38382C226D6F6453696465536B697274223A2D312C226D6F645472756E6B223A2D312C226D6F64526967687446656E646572223A2D312C226D6F644469616C223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F64547572626F223A66616C73652C226D6F64487964726F6C6963223A2D312C226D6F644772696C6C65223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F6441697246696C746572223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F64656C223A313637323139353535392C226D6F644272616B6573223A2D312C22776865656C73223A362C226D6F645472616E736D697373696F6E223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6446726F6E7442756D706572223A2D312C22706C617465496E646578223A302C226D6F64486F6F64223A2D312C226D6F64506C617465486F6C646572223A2D312C226D6F6453757370656E73696F6E223A2D312C22646972744C6576656C223A382E302C226D6F64456E67696E65426C6F636B223A2D317D, 'steam:110000107f00b0f', '1');
INSERT INTO `owned_vehicles_garage` VALUES ('6', 0x7B226D6F64526967687446656E646572223A2D312C226D6F645365617473223A2D312C226D6F644772696C6C65223A2D312C226D6F6454616E6B223A2D312C226D6F6453706F696C657273223A2D312C226D6F64537472757473223A2D312C226D6F64486F6F64223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F6457696E646F7773223A2D312C226D6F645265617242756D706572223A2D312C226D6F64526F6F66223A2D312C226D6F64487964726F6C6963223A2D312C226D6F6441657269616C73223A2D312C226D6F6441697246696C746572223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F645472696D42223A2D312C226D6F64486F726E73223A2D312C226D6F6441726368436F766572223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F6456616E697479506C617465223A2D312C22706C617465496E646578223A302C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F644261636B576865656C73223A2D312C226D6F645374656572696E67576865656C223A2D312C226D6F645472696D41223A2D312C22706C617465223A22383445474D333339222C22646972744C6576656C223A302E31393638343935383435373934372C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C22636F6C6F7232223A302C226D6F6446726F6E74576865656C73223A2D312C226D6F644469616C223A2D312C226D6F64446F6F72537065616B6572223A2D312C22706561726C657363656E74436F6C6F72223A38372C226D6F6446656E646572223A2D312C226D6F64506C617465486F6C646572223A2D312C22776865656C73223A362C226D6F64537065616B657273223A2D312C226D6F645472756E6B223A2D312C226D6F644C6976657279223A2D312C2277696E646F7754696E74223A2D312C226D6F64656C223A3838343438333937322C226D6F6453696465536B697274223A2D312C22776865656C436F6C6F72223A3131322C226865616C7468223A3530332C226D6F645472616E736D697373696F6E223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F6458656E6F6E223A66616C73652C226D6F644272616B6573223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F64547572626F223A66616C73652C226D6F6441506C617465223A2D312C226D6F6441726D6F72223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C22636F6C6F7231223A38382C226D6F644672616D65223A2D312C226D6F6446726F6E7442756D706572223A2D312C226D6F6444617368626F617264223A2D312C226D6F6445786861757374223A2D312C226D6F64456E67696E65223A2D317D, 'steam:1100001081ca641', '1');

-- ----------------------------
-- Table structure for `phone_app_chat`
-- ----------------------------
DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_app_chat
-- ----------------------------

-- ----------------------------
-- Table structure for `phone_calls`
-- ----------------------------
DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_calls
-- ----------------------------

-- ----------------------------
-- Table structure for `phone_messages`
-- ----------------------------
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `phone_users_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_users_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for `properties`
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES ('1', 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', null, '1', '1', '0', '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', '1500000');
INSERT INTO `properties` VALUES ('2', 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', null, '1', '1', '0', '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', '1500000');
INSERT INTO `properties` VALUES ('3', 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', null, '1', '1', '0', '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', '1700000');
INSERT INTO `properties` VALUES ('4', 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', null, '1', '1', '0', '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', '1500000');
INSERT INTO `properties` VALUES ('5', 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', null, '1', '1', '0', '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', '1500000');
INSERT INTO `properties` VALUES ('6', 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', null, '1', '1', '0', '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', '1500000');
INSERT INTO `properties` VALUES ('7', 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', null, '1', '1', '0', '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', '562500');
INSERT INTO `properties` VALUES ('8', 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', null, '1', '1', '0', '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', '1500000');
INSERT INTO `properties` VALUES ('9', 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', null, '1', '1', '0', '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', '1500000');
INSERT INTO `properties` VALUES ('10', 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', null, '1', '1', '0', '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', '1500000');
INSERT INTO `properties` VALUES ('11', 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', null, '1', '1', '0', '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', '1700000');
INSERT INTO `properties` VALUES ('12', 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', null, null, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('13', 'Modern1Apartment', 'Appartement Moderne 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('14', 'Modern2Apartment', 'Appartement Moderne 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('15', 'Modern3Apartment', 'Appartement Moderne 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', '1300000');
INSERT INTO `properties` VALUES ('16', 'Mody1Apartment', 'Appartement Mode 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('17', 'Mody2Apartment', 'Appartement Mode 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('18', 'Mody3Apartment', 'Appartement Mode 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('19', 'Vibrant1Apartment', 'Appartement Vibrant 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('20', 'Vibrant2Apartment', 'Appartement Vibrant 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('21', 'Vibrant3Apartment', 'Appartement Vibrant 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('22', 'Sharp1Apartment', 'Appartement Persan 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('23', 'Sharp2Apartment', 'Appartement Persan 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('24', 'Sharp3Apartment', 'Appartement Persan 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('25', 'Monochrome1Apartment', 'Appartement Monochrome 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('26', 'Monochrome2Apartment', 'Appartement Monochrome 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('27', 'Monochrome3Apartment', 'Appartement Monochrome 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('28', 'Seductive1Apartment', 'Appartement Séduisant 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('29', 'Seductive2Apartment', 'Appartement Séduisant 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('30', 'Seductive3Apartment', 'Appartement Séduisant 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('31', 'Regal1Apartment', 'Appartement Régal 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('32', 'Regal2Apartment', 'Appartement Régal 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('33', 'Regal3Apartment', 'Appartement Régal 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', '1300000');
INSERT INTO `properties` VALUES ('34', 'Aqua1Apartment', 'Appartement Aqua 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('35', 'Aqua2Apartment', 'Appartement Aqua 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('36', 'Aqua3Apartment', 'Appartement Aqua 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', '1300000');
INSERT INTO `properties` VALUES ('37', 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', null, null, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('38', 'IntegrityWay28', '4 Integrity Way - Apt 28', null, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', null, '[]', 'IntegrityWay', '0', '1', '0', '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', '1700000');
INSERT INTO `properties` VALUES ('39', 'IntegrityWay30', '4 Integrity Way - Apt 30', null, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', null, '[]', 'IntegrityWay', '0', '1', '0', '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', '1700000');
INSERT INTO `properties` VALUES ('40', 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', null, null, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('41', 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', null, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', null, '[]', 'DellPerroHeights', '0', '1', '0', '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', '1700000');
INSERT INTO `properties` VALUES ('42', 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', null, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', null, '[]', 'DellPerroHeights', '0', '1', '0', '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', '1700000');
INSERT INTO `properties` VALUES ('43', 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', null, null, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('44', 'OldSpiceWarm', 'Old Spice Warm', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('45', 'OldSpiceClassical', 'Old Spice Classical', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('47', 'ExecutiveRich', 'Executive Rich', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('48', 'ExecutiveCool', 'Executive Cool', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('49', 'ExecutiveContrast', 'Executive Contrast', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('50', 'PowerBrokerIce', 'Power Broker Ice', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('51', 'PowerBrokerConservative', 'Power Broker Conservative', null, '', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('52', 'PowerBrokerPolished', 'Power Broker Polished', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('53', 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', null, null, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('54', 'LBOldSpiceWarm', 'LB Old Spice Warm', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_01a\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('55', 'LBOldSpiceClassical', 'LB Old Spice Classical', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_01b\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('56', 'LBOldSpiceVintage', 'LB Old Spice Vintage', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_01c\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('57', 'LBExecutiveRich', 'LB Executive Rich', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_02b\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('58', 'LBExecutiveCool', 'LB Executive Cool', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_02c\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('59', 'LBExecutiveContrast', 'LB Executive Contrast', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_02a\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('60', 'LBPowerBrokerIce', 'LB Power Broker Ice', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_03a\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('61', 'LBPowerBrokerConservative', 'LB Power Broker Conservative', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_03b\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('62', 'LBPowerBrokerPolished', 'LB Power Broker Polished', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_03c\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('63', 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', null, null, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('64', 'MBWOldSpiceWarm', 'MBW Old Spice Warm', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('65', 'MBWOldSpiceClassical', 'MBW Old Spice Classical', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('66', 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('67', 'MBWExecutiveRich', 'MBW Executive Rich', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('68', 'MBWExecutiveCool', 'MBW Executive Cool', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('69', 'MBWExecutive Contrast', 'MBW Executive Contrast', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('70', 'MBWPowerBrokerIce', 'MBW Power Broker Ice', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('71', 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('72', 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');

-- ----------------------------
-- Table structure for `rented_aircrafts`
-- ----------------------------
DROP TABLE IF EXISTS `rented_aircrafts`;
CREATE TABLE `rented_aircrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rented_aircrafts
-- ----------------------------

-- ----------------------------
-- Table structure for `rented_dock`
-- ----------------------------
DROP TABLE IF EXISTS `rented_dock`;
CREATE TABLE `rented_dock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rented_dock
-- ----------------------------

-- ----------------------------
-- Table structure for `rented_vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE `rented_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rented_vehicles
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('1', 'TwentyFourSeven', 'bread', '30');
INSERT INTO `shops` VALUES ('2', 'TwentyFourSeven', 'water', '15');
INSERT INTO `shops` VALUES ('3', 'TwentyFourSeven', 'tacos', '75');
INSERT INTO `shops` VALUES ('4', 'TwentyFourSeven', 'burger', '75');
INSERT INTO `shops` VALUES ('5', 'TwentyFourSeven', 'cola', '45');
INSERT INTO `shops` VALUES ('6', 'TwentyFourSeven', 'fixkit', '1000');
INSERT INTO `shops` VALUES ('8', 'TwentyFourSeven', 'medikit', '1000');
INSERT INTO `shops` VALUES ('9', 'TwentyFourSeven', 'gps', '15');
INSERT INTO `shops` VALUES ('10', 'TwentyFourSeven', 'gazbottle', '10');
INSERT INTO `shops` VALUES ('11', 'TwentyFourSeven', 'fixtool', '10');
INSERT INTO `shops` VALUES ('12', 'TwentyFourSeven', 'carotool', '10');
INSERT INTO `shops` VALUES ('13', 'TwentyFourSeven', 'chocolate', '4');
INSERT INTO `shops` VALUES ('14', 'TwentyFourSeven', 'sandwich', '8');
INSERT INTO `shops` VALUES ('15', 'TwentyFourSeven', 'hamburger', '7');
INSERT INTO `shops` VALUES ('16', 'TwentyFourSeven', 'cupcake', '3');
INSERT INTO `shops` VALUES ('17', 'TwentyFourSeven', 'icetea', '4');
INSERT INTO `shops` VALUES ('18', 'TwentyFourSeven', 'redbull', '5');
INSERT INTO `shops` VALUES ('19', 'TwentyFourSeven', 'cigarett', '1');
INSERT INTO `shops` VALUES ('20', 'TwentyFourSeven', 'lighter', '1');
INSERT INTO `shops` VALUES ('21', 'RobsLiquor', 'bread', '1');
INSERT INTO `shops` VALUES ('22', 'RobsLiquor', 'water', '1');
INSERT INTO `shops` VALUES ('23', 'RobsLiquor', 'tacos', '2');
INSERT INTO `shops` VALUES ('24', 'RobsLiquor', 'burger', '3');
INSERT INTO `shops` VALUES ('25', 'RobsLiquor', 'cola', '4');
INSERT INTO `shops` VALUES ('26', 'RobsLiquor', 'fixkit', '1000');
INSERT INTO `shops` VALUES ('27', 'RobsLiquor', 'medikit', '1000');
INSERT INTO `shops` VALUES ('28', 'RobsLiquor', 'gps', '100');
INSERT INTO `shops` VALUES ('29', 'RobsLiquor', 'gazbottle', '10');
INSERT INTO `shops` VALUES ('30', 'RobsLiquor', 'fixtool', '10');
INSERT INTO `shops` VALUES ('31', 'RobsLiquor', 'carotool', '10');
INSERT INTO `shops` VALUES ('32', 'RobsLiquor', 'chocolate', '4');
INSERT INTO `shops` VALUES ('33', 'RobsLiquor', 'sandwich', '8');
INSERT INTO `shops` VALUES ('34', 'RobsLiquor', 'hamburger', '7');
INSERT INTO `shops` VALUES ('35', 'RobsLiquor', 'cupcake', '3');
INSERT INTO `shops` VALUES ('36', 'RobsLiquor', 'icetea', '4');
INSERT INTO `shops` VALUES ('37', 'RobsLiquor', 'redbull', '5');
INSERT INTO `shops` VALUES ('38', 'RobsLiquor', 'cigarett', '1');
INSERT INTO `shops` VALUES ('39', 'RobsLiquor', 'lighter', '1');
INSERT INTO `shops` VALUES ('40', 'LTDgasoline', 'bread', '1');
INSERT INTO `shops` VALUES ('41', 'LTDgasoline', 'water', '1');
INSERT INTO `shops` VALUES ('42', 'LTDgasoline', 'tacos', '2');
INSERT INTO `shops` VALUES ('43', 'LTDgasoline', 'burger', '3');
INSERT INTO `shops` VALUES ('44', 'LTDgasoline', 'cola', '4');
INSERT INTO `shops` VALUES ('45', 'LTDgasoline', 'fixkit', '1000');
INSERT INTO `shops` VALUES ('46', 'LTDgasoline', 'medikit', '1000');
INSERT INTO `shops` VALUES ('47', 'LTDgasoline', 'gps', '100');
INSERT INTO `shops` VALUES ('48', 'LTDgasoline', 'gazbottle', '10');
INSERT INTO `shops` VALUES ('49', 'LTDgasoline', 'fixtool', '10');
INSERT INTO `shops` VALUES ('50', 'LTDgasoline', 'carotool', '10');
INSERT INTO `shops` VALUES ('51', 'LTDgasoline', 'chocolate', '4');
INSERT INTO `shops` VALUES ('52', 'LTDgasoline', 'sandwich', '8');
INSERT INTO `shops` VALUES ('53', 'LTDgasoline', 'hamburger', '7');
INSERT INTO `shops` VALUES ('54', 'LTDgasoline', 'cupcake', '3');
INSERT INTO `shops` VALUES ('55', 'LTDgasoline', 'icetea', '4');
INSERT INTO `shops` VALUES ('56', 'LTDgasoline', 'redbull', '5');
INSERT INTO `shops` VALUES ('57', 'LTDgasoline', 'cigarett', '1');
INSERT INTO `shops` VALUES ('58', 'LTDgasoline', 'lighter', '1');
INSERT INTO `shops` VALUES ('66', 'LTDgasoline', 'plongee1', '250');
INSERT INTO `shops` VALUES ('67', 'RobsLiquor', 'plongee1', '250');
INSERT INTO `shops` VALUES ('68', 'TwentyFourSeven', 'plongee1', '250');
INSERT INTO `shops` VALUES ('69', 'LTDgasoline', 'plongee2', '350');
INSERT INTO `shops` VALUES ('70', 'RobsLiquor', 'plongee2', '350');
INSERT INTO `shops` VALUES ('71', 'TwentyFourSeven', 'plongee2', '350');

-- ----------------------------
-- Table structure for `society_moneywash`
-- ----------------------------
DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of society_moneywash
-- ----------------------------

-- ----------------------------
-- Table structure for `truck_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `truck_inventory`;
CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of truck_inventory
-- ----------------------------
INSERT INTO `truck_inventory` VALUES ('1', 'burger', '5', '29MDL722', 'Burger');
INSERT INTO `truck_inventory` VALUES ('2', 'chocolate', '12', '29MDL722', 'Chocolat');
INSERT INTO `truck_inventory` VALUES ('3', 'plongee2', '18', '29MDL722', 'Plongee longue');
INSERT INTO `truck_inventory` VALUES ('4', 'tacos', '15', '29MDL722', 'Tacos');
INSERT INTO `truck_inventory` VALUES ('5', 'weed', '16', '29MDL722', 'Weed');
INSERT INTO `truck_inventory` VALUES ('6', 'gps', '2', '29MDL722', 'GPS');
INSERT INTO `truck_inventory` VALUES ('7', 'medikit', '2', '29MDL722', 'Medikit');
INSERT INTO `truck_inventory` VALUES ('8', 'plongee1', '10', '29MDL722', 'Plongee courte');
INSERT INTO `truck_inventory` VALUES ('9', 'gazbottle', '1', '29MDL722', 'bouteille de gaz');
INSERT INTO `truck_inventory` VALUES ('10', 'fixtool', '1', '29MDL722', 'outils réparation');
INSERT INTO `truck_inventory` VALUES ('11', 'cola', '10', '29MDL722', 'Cola');
INSERT INTO `truck_inventory` VALUES ('12', 'cupcake', '15', '29MDL722', 'Cupcake');
INSERT INTO `truck_inventory` VALUES ('13', 'hamburger', '10', '29MDL722', 'Hamburger');
INSERT INTO `truck_inventory` VALUES ('14', 'coke', '10', '29MDL722', 'Coke');
INSERT INTO `truck_inventory` VALUES ('15', 'icetea', '10', '29MDL722', 'Ice Tea');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bankbalance` int(32) DEFAULT '0',
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `last_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `DmvTest` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'Required',
  `tattoos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{}',
  `isDead` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vote` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `isFirstConnection` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('steam:1100001081ca641', 'license:fcd32157de1fdd7dc4c122113baca4b95ec80013', '10000', 'Bl@ckw@ve.fr', 0x7B22686169725F636F6C6F725F32223A302C22676C61737365735F32223A302C2262656172645F31223A31302C22746F72736F5F31223A31312C226D616B6575705F31223A302C226C6970737469636B5F34223A302C2265796562726F77735F34223A302C226C6970737469636B5F31223A302C22656172735F32223A302C226270726F6F665F32223A302C226D616B6575705F33223A302C2270616E74735F32223A322C22686169725F32223A342C226167655F32223A312C22646563616C735F31223A302C2268656C6D65745F32223A302C227473686972745F31223A32322C2265796562726F77735F31223A322C2273686F65735F31223A312C226C6970737469636B5F32223A302C2261726D73223A302C2268656C6D65745F31223A2D312C226D61736B5F31223A302C22736578223A302C22636861696E5F31223A312C22636861696E5F32223A312C22626167735F32223A302C226167655F31223A312C22686169725F636F6C6F725F31223A372C22746F72736F5F32223A302C22646563616C735F32223A302C226C6970737469636B5F33223A302C22686169725F31223A31392C22656172735F31223A2D312C2262656172645F34223A332C2270616E74735F31223A31302C226D616B6575705F32223A302C2262656172645F33223A332C2265796562726F77735F33223A332C2273686F65735F32223A302C2266616365223A34342C2262656172645F32223A31302C226D61736B5F32223A302C22736B696E223A302C226270726F6F665F31223A302C22626167735F31223A302C2265796562726F77735F32223A382C226D616B6575705F34223A302C227473686972745F32223A302C22676C61737365735F31223A307D, 'fisherman', '0', 0x5B7B226E616D65223A22574541504F4E5F4E49474854535449434B222C226C6162656C223A224D61747261717565222C22616D6D6F223A307D2C7B226E616D65223A22574541504F4E5F504953544F4C222C226C6162656C223A22506973746F6C6574222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F434F4D424154504953544F4C222C226C6162656C223A22506973746F6C657420646520636F6D626174222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F4150504953544F4C222C226C6162656C223A22506973746F6C6574206175746F6D617469717565222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F504953544F4C3530222C226C6162656C223A22506973746F6C65742063616C69627265203530222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F4D4943524F534D47222C226C6162656C223A224D6963726F20736D67222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F534D47222C226C6162656C223A22536D67222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F41535341554C54534D47222C226C6162656C223A22536D67206427617373617574222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F41535341554C545249464C45222C226C6162656C223A22467573696C206427617373617574222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F43415242494E455249464C45222C226C6162656C223A224361726162696E65206427617373617574222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F414456414E4345445249464C45222C226C6162656C223A22467573696C206176616E63C3A9222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F4D47222C226C6162656C223A224D69747261696C6C65757365222C22616D6D6F223A307D2C7B226E616D65223A22574541504F4E5F434F4D4241544D47222C226C6162656C223A224D69747261696C6C6575736520646520636F6D626174222C22616D6D6F223A307D2C7B226E616D65223A22574541504F4E5F50554D5053484F5447554E222C226C6162656C223A22467573696C20C3A020706F6D7065222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F41535341554C5453484F5447554E222C226C6162656C223A224361726162696E65206427617373617574222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F42554C4C50555053484F5447554E222C226C6162656C223A224361726162696E652062756C6C707570222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F534E495045525249464C45222C226C6162656C223A22467573696C20646520736E69706572222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F4845415659534E49504552222C226C6162656C223A22467573696C20646520736E69706572206C6F757264222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F525047222C226C6162656C223A224C616E63652D726F636B6574222C22616D6D6F223A317D2C7B226E616D65223A22574541504F4E5F5354494E474552222C226C6162656C223A224C616E63652D6D697373696C65207374696E676572222C22616D6D6F223A31397D2C7B226E616D65223A22574541504F4E5F4752454E414445222C226C6162656C223A224772656E616465222C22616D6D6F223A337D2C7B226E616D65223A22574541504F4E5F535449434B59424F4D42222C226C6162656C223A22426F6D626520636F6C6C616E7465222C22616D6D6F223A32337D2C7B226E616D65223A22574541504F4E5F534D4F4B454752454E414445222C226C6162656C223A224772656E6164652066756D6967C3A86E65222C22616D6D6F223A32347D2C7B226E616D65223A22574541504F4E5F425A474153222C226C6162656C223A224772656E61646520C3A02067617A20627A222C22616D6D6F223A32317D2C7B226E616D65223A22574541504F4E5F4D4F4C4F544F56222C226C6162656C223A22436F636B7461696C206D6F6C6F746F76222C22616D6D6F223A32357D2C7B226E616D65223A22574541504F4E5F46495245455854494E47554953484552222C226C6162656C223A22457874696E6374657572222C22616D6D6F223A34327D2C7B226E616D65223A22574541504F4E5F504554524F4C43414E222C226C6162656C223A224A6572726963616E206427657373656E6365222C22616D6D6F223A34327D2C7B226E616D65223A22574541504F4E5F534E53504953544F4C222C226C6162656C223A22506973746F6C657420736E73222C22616D6D6F223A3235307D2C7B226E616D65223A22574541504F4E5F434F4D504143544C41554E43484552222C226C6162656C223A224C616E6365757220636F6D70616374222C22616D6D6F223A32307D2C7B226E616D65223A22574541504F4E5F4D494E49534D47222C226C6162656C223A224D696E6920736D67222C22616D6D6F223A3235307D2C7B226E616D65223A224741444745545F504152414348555445222C226C6162656C223A22506172616368757465222C22616D6D6F223A307D2C7B226E616D65223A22574541504F4E5F464C415245222C226C6162656C223A22467573C3A9652044C3A9747265737365222C22616D6D6F223A32307D5D, '{\"x\":226.10171508789,\"y\":-803.80578613281,\"z\":30.600036621094}', '1035865', '1', 'admin', '100000', 0x5B7B226E616D65223A2268756E676572222C2270657263656E74223A34372E35342C2276616C223A3437353430307D2C7B226E616D65223A22746869727374222C2270657263656E74223A33302E3737352C2276616C223A3330373735307D2C7B226E616D65223A226472756E6B222C2270657263656E74223A302E302C2276616C223A307D5D, 'JOhn', 'Nime', '1989/08/85', 'm', '150', null, '273968', '', '{}', '0', '', '1');
INSERT INTO `users` VALUES ('steam:11000010bf1d422', 'license:4f5798c47ec422e130053cfe87ca36c8c4fde20f', '999811', 'blackluckyFR', 0x7B2265796562726F77735F33223A352C226270726F6F665F31223A302C2262656172645F31223A31352C22676C61737365735F32223A362C22626167735F32223A302C22676C61737365735F31223A352C2273686F65735F32223A302C2270616E74735F31223A34372C22736578223A302C226C6970737469636B5F33223A302C226D61736B5F31223A302C226D616B6575705F34223A302C226D61736B5F32223A302C227473686972745F32223A302C2262656172645F32223A31302C22686169725F31223A332C2273686F65735F31223A31322C2265796562726F77735F31223A302C226C6970737469636B5F34223A302C22626167735F31223A302C22746F72736F5F32223A332C2270616E74735F32223A302C226167655F31223A302C226C6970737469636B5F32223A302C22686169725F32223A302C226C6970737469636B5F31223A302C22646563616C735F32223A302C2261726D73223A302C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22686169725F636F6C6F725F31223A31352C22656172735F32223A302C227473686972745F31223A3133302C226D616B6575705F32223A302C22736B696E223A312C2265796562726F77735F32223A382C22746F72736F5F31223A31332C226167655F32223A302C226D616B6575705F33223A302C22656172735F31223A2D312C226D616B6575705F31223A302C2266616365223A34342C22636861696E5F32223A302C22646563616C735F31223A312C22636861696E5F31223A302C2265796562726F77735F34223A302C2268656C6D65745F32223A302C2262656172645F34223A302C2262656172645F33223A392C22686169725F636F6C6F725F32223A307D, 'mecano', '2', 0x5B7B226C6162656C223A22506973746F6C6574222C22616D6D6F223A33382C226E616D65223A22574541504F4E5F504953544F4C227D2C7B226C6162656C223A22467573696C206427617373617574222C22616D6D6F223A33302C226E616D65223A22574541504F4E5F41535341554C545249464C45227D2C7B226C6162656C223A2254617A6572222C22616D6D6F223A34322C226E616D65223A22574541504F4E5F5354554E47554E227D2C7B226C6162656C223A224772656E6164652066756D6967C3A86E65222C22616D6D6F223A32342C226E616D65223A22574541504F4E5F534D4F4B454752454E414445227D2C7B226C6162656C223A22457874696E6374657572222C22616D6D6F223A34322C226E616D65223A22574541504F4E5F46495245455854494E47554953484552227D2C7B226C6162656C223A22506172616368757465222C22616D6D6F223A302C226E616D65223A224741444745545F504152414348555445227D5D, '{\"y\":-1148.1948242188,\"x\":16.985610961914,\"z\":29.03889465332}', '13450', '0', 'user', '0', 0x5B7B2276616C223A3430363030302C226E616D65223A2268756E676572222C2270657263656E74223A34302E367D2C7B2276616C223A3532323235302C226E616D65223A22746869727374222C2270657263656E74223A35322E3232357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Allain', 'Terrieur', '1997/05/02', 'm', '170', null, '415252', '', '{}', '0', null, '1');
INSERT INTO `users` VALUES ('steam:11000010e659d79', 'license:2be002f4b9dd94d44f5dbd4665ffaf0f616d56b1', '1000', '✪Jarko', 0x7B2265796562726F77735F33223A302C226270726F6F665F31223A302C2261726D73223A302C22676C61737365735F32223A302C22626167735F32223A302C22636861696E5F32223A302C2265796562726F77735F32223A342C2270616E74735F31223A372C22736578223A302C226C6970737469636B5F33223A302C226C6970737469636B5F34223A302C226D616B6575705F34223A302C2266616365223A342C227473686972745F32223A332C2262656172645F32223A302C2270616E74735F32223A332C2273686F65735F32223A342C22656172735F32223A302C226D616B6575705F33223A302C2265796562726F77735F31223A302C226167655F32223A302C226C6970737469636B5F31223A302C226167655F31223A312C226C6970737469636B5F32223A302C2265796562726F77735F34223A302C22626167735F31223A302C227473686972745F31223A32302C22746F72736F5F32223A322C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22686169725F32223A332C2262656172645F31223A302C226D616B6575705F32223A302C2273686F65735F31223A392C22736B696E223A352C22676C61737365735F31223A302C22746F72736F5F31223A332C22636861696E5F31223A302C22686169725F31223A32302C22656172735F31223A2D312C226D616B6575705F31223A302C226D61736B5F32223A302C226D61736B5F31223A302C22646563616C735F31223A332C22686169725F636F6C6F725F31223A392C22646563616C735F32223A302C2268656C6D65745F32223A302C2262656172645F34223A302C2262656172645F33223A302C22686169725F636F6C6F725F32223A317D, 'unemployed', '0', 0x5B5D, '{\"z\":29.913724899292,\"y\":-1396.9259033203,\"x\":269.40673828125}', '14000', '0', 'user', '0', 0x5B7B2276616C223A3438353230302C2270657263656E74223A34382E35322C226E616D65223A2268756E676572227D2C7B2276616C223A3438313530302C2270657263656E74223A34382E31352C226E616D65223A22746869727374227D2C7B2276616C223A302C2270657263656E74223A302E302C226E616D65223A226472756E6B227D5D, 'Kris', 'Borowski', '19995-07-12', 'm', '140', null, '626492', '', '{}', '0', null, '1');
INSERT INTO `users` VALUES ('steam:1100001080d2eac', 'license:1926aad15e8f4e5f65fc1a99ff246b0a56601491', '1000', 'ah64hunter', 0x7B2265796562726F77735F33223A302C226270726F6F665F31223A302C2262656172645F31223A302C22676C61737365735F32223A302C22626167735F32223A302C2265796562726F77735F34223A302C2265796562726F77735F32223A302C226167655F32223A302C22736578223A302C226C6970737469636B5F33223A302C226C6970737469636B5F34223A302C226D616B6575705F34223A302C22646563616C735F32223A302C227473686972745F32223A302C2262656172645F32223A302C226D616B6575705F33223A302C22676C61737365735F31223A302C22656172735F32223A302C22636861696E5F31223A302C227473686972745F31223A302C22626167735F31223A302C226C6970737469636B5F31223A302C226167655F31223A302C226C6970737469636B5F32223A302C226D616B6575705F32223A302C2261726D73223A302C2273686F65735F31223A302C2273686F65735F32223A302C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22686169725F636F6C6F725F31223A302C226D61736B5F31223A302C22686169725F32223A302C2265796562726F77735F31223A302C22736B696E223A302C226D61736B5F32223A302C22746F72736F5F31223A302C2270616E74735F32223A302C22686169725F31223A302C22656172735F31223A2D312C226D616B6575705F31223A302C22746F72736F5F32223A302C22636861696E5F32223A302C22646563616C735F31223A302C2270616E74735F31223A302C2266616365223A302C2268656C6D65745F32223A302C2262656172645F34223A302C2262656172645F33223A302C22686169725F636F6C6F725F32223A307D, 'unemployed', '0', 0x5B5D, '{\"z\":210.42572021484,\"y\":4911.7036132813,\"x\":-1058.2280273438}', '6000', '0', 'user', '0', 0x5B7B2276616C223A3432303630302C226E616D65223A2268756E676572222C2270657263656E74223A34322E30367D2C7B2276616C223A3430303735302C226E616D65223A22746869727374222C2270657263656E74223A34302E3037357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Charlie', 'Triston', '1989-04-07', 'f', '160', null, '337771', '', '{}', '1', null, '1');
INSERT INTO `users` VALUES ('steam:110000112cc1d89', 'license:45e04146700069531ee4ff574f843078f9591034', '1000', 'ClassedGamer', 0x7B227473686972745F31223A302C22676C61737365735F32223A302C2265796562726F77735F34223A302C226D616B6575705F34223A302C22746F72736F5F32223A302C22746F72736F5F31223A302C2262656172645F32223A302C2273686F65735F31223A302C226270726F6F665F32223A302C227473686972745F32223A302C22676C61737365735F31223A302C226C6970737469636B5F32223A302C2268656C6D65745F32223A302C22636861696E5F31223A302C226C6970737469636B5F33223A302C226D616B6575705F32223A302C226D61736B5F31223A302C226C6970737469636B5F31223A302C22646563616C735F32223A302C226270726F6F665F31223A302C22686169725F31223A302C2265796562726F77735F33223A302C2262656172645F34223A302C22626167735F31223A302C22656172735F31223A2D312C22636861696E5F32223A302C22686169725F636F6C6F725F32223A302C22736B696E223A302C2273686F65735F32223A302C226D616B6575705F33223A302C2266616365223A302C22686169725F636F6C6F725F31223A302C226D616B6575705F31223A302C2262656172645F31223A302C226167655F32223A302C2270616E74735F32223A302C2265796562726F77735F31223A302C2270616E74735F31223A302C226D61736B5F32223A302C2262656172645F33223A302C22646563616C735F31223A302C2261726D73223A302C226C6970737469636B5F34223A302C2268656C6D65745F31223A2D312C22686169725F32223A302C22736578223A302C2265796562726F77735F32223A302C22656172735F32223A302C22626167735F32223A302C226167655F31223A307D, 'unemployed', '0', 0x5B7B226C6162656C223A22506172616368757465222C22616D6D6F223A302C226E616D65223A224741444745545F504152414348555445227D5D, '{\"y\":1291.0317382813,\"x\":727.72357177734,\"z\":360.29614257813}', '2000', '0', 'user', '0', 0x5B7B2276616C223A3937363430302C226E616D65223A2268756E676572222C2270657263656E74223A39372E36347D2C7B2276616C223A3937303530302C226E616D65223A22746869727374222C2270657263656E74223A39372E30357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Jay', 'Ackerham', '1998 12 12', 'm', '155', null, '531872', '', '{}', '0', null, '1');
INSERT INTO `users` VALUES ('steam:110000107e0850f', 'license:b43d10159e99e8d39de370f6b79f7f849022a5fc', '1000', 'Zorxi', 0x7B226D616B6575705F31223A302C2262656172645F32223A302C2262656172645F34223A302C226C6970737469636B5F31223A302C22686169725F636F6C6F725F31223A332C226D616B6575705F32223A302C226D61736B5F32223A302C2262656172645F33223A302C2268656C6D65745F32223A362C227473686972745F31223A302C22746F72736F5F31223A302C22646563616C735F32223A302C22686169725F32223A302C2265796562726F77735F31223A312C22686169725F636F6C6F725F32223A342C22626167735F31223A33312C2265796562726F77735F32223A382C2262656172645F31223A302C22676C61737365735F31223A302C2273686F65735F31223A352C226C6970737469636B5F33223A302C22646563616C735F31223A302C226167655F31223A302C227473686972745F32223A302C2270616E74735F31223A362C22736578223A302C2266616365223A302C226167655F32223A302C2265796562726F77735F34223A302C226C6970737469636B5F34223A302C22746F72736F5F32223A332C22626167735F32223A302C22636861696E5F32223A302C22636861696E5F31223A302C22676C61737365735F32223A302C22656172735F32223A302C22686169725F31223A31342C226C6970737469636B5F32223A302C2265796562726F77735F33223A302C22656172735F31223A2D312C226270726F6F665F31223A302C2268656C6D65745F31223A372C226D616B6575705F34223A302C2261726D73223A302C2270616E74735F32223A312C226D61736B5F31223A302C226270726F6F665F32223A302C2273686F65735F32223A332C226D616B6575705F33223A302C22736B696E223A337D, 'unemployed', '0', 0x5B7B226E616D65223A224741444745545F504152414348555445222C226C6162656C223A22506172616368757465222C22616D6D6F223A307D5D, '{\"z\":35.168785095215,\"x\":1622.1130371094,\"y\":3637.9885253906}', '11460', '0', 'user', '0', 0x5B7B2276616C223A3732383830302C226E616D65223A2268756E676572222C2270657263656E74223A37322E38387D2C7B2276616C223A3635393235302C226E616D65223A22746869727374222C2270657263656E74223A36352E3932357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Jean', 'Marille', '1996', 'm', '179.5', null, '906341', '', '{}', '0', null, '1');
INSERT INTO `users` VALUES ('steam:110000107f00b0f', 'license:5ae119f6a39683624ebeb310a0de1a068e627b88', '1000', 'Sayans', 0x7B226D616B6575705F31223A302C226270726F6F665F31223A302C226C6970737469636B5F34223A302C2262656172645F31223A302C22646563616C735F32223A302C22636861696E5F32223A302C22736578223A302C22736B696E223A31302C22636861696E5F31223A302C2262656172645F32223A302C2265796562726F77735F32223A302C22746F72736F5F31223A302C2262656172645F34223A302C226270726F6F665F32223A302C22656172735F31223A2D312C2265796562726F77735F31223A302C22656172735F32223A302C226D61736B5F32223A302C2265796562726F77735F33223A302C2273686F65735F32223A302C2262656172645F33223A302C226167655F32223A302C22676C61737365735F31223A302C2261726D73223A302C22626167735F31223A302C22676C61737365735F32223A302C227473686972745F31223A302C226D616B6575705F34223A302C227473686972745F32223A302C22686169725F636F6C6F725F31223A302C226C6970737469636B5F32223A302C226C6970737469636B5F31223A302C2268656C6D65745F32223A302C2266616365223A33362C2273686F65735F31223A302C226C6970737469636B5F33223A302C226167655F31223A302C226D616B6575705F32223A302C22686169725F636F6C6F725F32223A302C2270616E74735F32223A302C22746F72736F5F32223A302C226D61736B5F31223A302C2268656C6D65745F31223A2D312C22686169725F31223A302C226D616B6575705F33223A302C22626167735F32223A302C22686169725F32223A302C22646563616C735F31223A302C2265796562726F77735F34223A302C2270616E74735F31223A307D, 'unemployed', '0', 0x5B7B226E616D65223A22574541504F4E5F504953544F4C222C226C6162656C223A22506973746F6C6574222C22616D6D6F223A307D5D, '{\"x\":111.97885894775,\"y\":-1168.1761474609,\"z\":31.424938201904}', '724000', '0', 'user', '0', 0x5B7B2270657263656E74223A33392E33322C2276616C223A3339333230302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A33362E36352C2276616C223A3336363530302C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, 'Toni', 'Mariani', '1997/06/017', 'm', '174', null, '840533', '', '{}', '0', null, '1');

-- ----------------------------
-- Table structure for `user_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_accounts
-- ----------------------------
INSERT INTO `user_accounts` VALUES ('1', 'steam:1100001081ca641', 'black_money', '94800');
INSERT INTO `user_accounts` VALUES ('6', 'steam:11000010bf1d422', 'black_money', '1000');
INSERT INTO `user_accounts` VALUES ('7', 'steam:11000010e659d79', 'black_money', '1000');
INSERT INTO `user_accounts` VALUES ('8', 'steam:1100001080d2eac', 'black_money', '1000');
INSERT INTO `user_accounts` VALUES ('9', 'steam:11000010b791fb5', 'black_money', '1000');
INSERT INTO `user_accounts` VALUES ('10', 'steam:110000112cc1d89', 'black_money', '1000');
INSERT INTO `user_accounts` VALUES ('11', 'steam:110000107e0850f', 'black_money', '1000');
INSERT INTO `user_accounts` VALUES ('12', 'steam:110000107f00b0f', 'black_money', '1000');

-- ----------------------------
-- Table structure for `user_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `user_contacts`;
CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_contacts
-- ----------------------------
INSERT INTO `user_contacts` VALUES ('1', 'steam:1100001081ca641', 'Allain_Terrieur', '415252');
INSERT INTO `user_contacts` VALUES ('2', 'steam:1100001081ca641', 'Kris_Borowski', '626492');
INSERT INTO `user_contacts` VALUES ('3', 'steam:1100001081ca641', 'Charlie_Triston', '337771');
INSERT INTO `user_contacts` VALUES ('4', 'steam:1100001081ca641', 'Toni_Mariani', '840533');

-- ----------------------------
-- Table structure for `user_hangard`
-- ----------------------------
DROP TABLE IF EXISTS `user_hangard`;
CREATE TABLE `user_hangard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `plate` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user_hangard
-- ----------------------------
INSERT INTO `user_hangard` VALUES ('20', 'steam:1100001081ca641', 0x7B226D6F6441726D6F72223A2D312C226D6F645472696D41223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F64526F6F66223A2D312C226D6F6457696E646F7773223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6453696465536B697274223A2D312C22636F6C6F7232223A302C226D6F64456E67696E65223A2D312C226D6F6445786861757374223A2D312C226D6F6444617368626F617264223A2D312C226D6F64486F6F64223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F64487964726F6C6963223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F6441657269616C73223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F6441697246696C746572223A2D312C22646972744C6576656C223A302E302C226D6F644772696C6C65223A2D312C22636F6C6F7231223A3131312C226D6F64656C223A2D313033303237353033362C226D6F6446726F6E7442756D706572223A2D312C226D6F6458656E6F6E223A66616C73652C22776865656C73223A302C22706561726C657363656E74436F6C6F72223A302C226D6F645374656572696E67576865656C223A2D312C226865616C7468223A313030302C226D6F64537065616B657273223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F644672616D65223A2D312C226D6F6441506C617465223A2D312C226D6F644272616B6573223A2D312C226D6F64506C617465486F6C646572223A2D312C226D6F64537472757473223A2D312C226D6F6454616E6B223A2D312C226D6F644C6976657279223A2D312C226D6F645265617242756D706572223A2D312C226D6F64486F726E73223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F644469616C223A2D312C226D6F645472696D42223A2D312C226D6F64536D6F6B65456E61626C6564223A312C22776865656C436F6C6F72223A3135362C226D6F64536869667465724C656176657273223A2D312C226D6F6441726368436F766572223A2D312C226D6F644261636B576865656C73223A2D312C226D6F6453706F696C657273223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F64547572626F223A66616C73652C226D6F645472756E6B223A2D312C2277696E646F7754696E74223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C22706C617465496E646578223A342C226D6F6446656E646572223A2D312C22706C617465223A22383945554B363237222C226D6F645365617473223A2D317D, '89EUK627');
INSERT INTO `user_hangard` VALUES ('21', 'steam:1100001081ca641', 0x7B226D6F645374656572696E67576865656C223A2D312C226D6F6446726F6E7442756D706572223A2D312C22776865656C73223A302C226D6F644672616D65223A2D312C226D6F64656C223A2D313033303237353033362C226D6F6454616E6B223A2D312C226D6F64487964726F6C6963223A2D312C226D6F645265617242756D706572223A2D312C226D6F645472756E6B223A2D312C226D6F6441697246696C746572223A2D312C226D6F64486F6F64223A2D312C226D6F6441726D6F72223A2D312C226D6F645472696D41223A2D312C226D6F6453696465536B697274223A2D312C226D6F6444617368626F617264223A2D312C22636F6C6F7232223A302C226D6F64526F6F66223A2D312C226865616C7468223A313030302C22706C617465496E646578223A342C226D6F6441726368436F766572223A2D312C226D6F6441506C617465223A2D312C226D6F64506C617465486F6C646572223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C22646972744C6576656C223A302E302C226D6F645472616E736D697373696F6E223A2D312C22636F6C6F7231223A31332C226D6F6458656E6F6E223A66616C73652C226D6F644272616B6573223A2D312C226D6F6441657269616C73223A2D312C226D6F645365617473223A2D312C226D6F64537472757473223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F64486F726E73223A2D312C22706561726C657363656E74436F6C6F72223A36322C226D6F644772696C6C65223A2D312C226D6F64537065616B657273223A2D312C226D6F6453706F696C657273223A2D312C2277696E646F7754696E74223A2D312C22776865656C436F6C6F72223A3135362C226D6F644469616C223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F64547572626F223A66616C73652C226D6F6445786861757374223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6457696E646F7773223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F645472696D42223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F64536D6F6B65456E61626C6564223A66616C73652C22706C617465223A22323642434D313837222C226D6F64456E67696E65223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F644C6976657279223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F6446656E646572223A2D317D, '26BCM187');
INSERT INTO `user_hangard` VALUES ('22', 'steam:1100001081ca641', 0x7B226D6F645374656572696E67576865656C223A2D312C226D6F6446726F6E7442756D706572223A2D312C22776865656C73223A302C226D6F644672616D65223A2D312C226D6F64656C223A313033333234353332382C226D6F6454616E6B223A2D312C226D6F64487964726F6C6963223A2D312C226D6F645265617242756D706572223A2D312C226D6F645472756E6B223A2D312C226D6F6441697246696C746572223A2D312C226D6F64486F6F64223A2D312C226D6F6441726D6F72223A2D312C226D6F645472696D41223A2D312C226D6F6453696465536B697274223A2D312C226D6F6444617368626F617264223A2D312C22636F6C6F7232223A3132322C226D6F64526F6F66223A2D312C226865616C7468223A313030302C22706C617465496E646578223A342C226D6F6441726368436F766572223A2D312C226D6F6441506C617465223A2D312C226D6F64506C617465486F6C646572223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C22646972744C6576656C223A302E302C226D6F645472616E736D697373696F6E223A2D312C22636F6C6F7231223A3132322C226D6F6458656E6F6E223A66616C73652C226D6F644272616B6573223A2D312C226D6F6441657269616C73223A2D312C226D6F645365617473223A2D312C226D6F64537472757473223A2D312C226D6F644261636B576865656C73223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F6446726F6E74576865656C73223A2D312C226D6F64486F726E73223A2D312C22706561726C657363656E74436F6C6F72223A302C226D6F644772696C6C65223A2D312C226D6F64537065616B657273223A2D312C226D6F6453706F696C657273223A2D312C2277696E646F7754696E74223A2D312C22776865656C436F6C6F72223A3135362C226D6F644469616C223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F64547572626F223A66616C73652C226D6F6445786861757374223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226D6F6457696E646F7773223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F645472696D42223A2D312C226D6F64526967687446656E646572223A2D312C226D6F6456616E697479506C617465223A2D312C226D6F644F726E616D656E7473223A2D312C226D6F64536D6F6B65456E61626C6564223A312C22706C617465223A2236344A424B393730222C226D6F64456E67696E65223A2D312C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C226D6F644C6976657279223A2D312C226D6F64456E67696E65426C6F636B223A2D312C226D6F6446656E646572223A2D317D, '64JBK970');
INSERT INTO `user_hangard` VALUES ('24', 'steam:1100001081ca641', 0x7B226D6F644672616D65223A2D312C226D6F6444617368626F617264223A2D312C226D6F64456E67696E65223A2D312C22776865656C73223A302C226D6F64547572626F223A66616C73652C226D6F6446726F6E74576865656C73223A2D312C226D6F6457696E646F7773223A2D312C226D6F6454616E6B223A2D312C226D6F6453706F696C657273223A2D312C226D6F64526F6F66223A2D312C226D6F645472696D41223A2D312C226D6F644C6976657279223A2D312C226D6F64486F6F64223A2D312C226D6F6453757370656E73696F6E223A2D312C226D6F645472696D42223A2D312C226D6F64537472757473223A2D312C226D6F64536869667465724C656176657273223A2D312C226D6F64446F6F72537065616B6572223A2D312C226D6F6456616E697479506C617465223A2D312C2274797265536D6F6B65436F6C6F72223A5B3235352C3235352C3235355D2C226E656F6E456E61626C6564223A5B66616C73652C66616C73652C66616C73652C66616C73655D2C22636F6C6F7231223A3133322C226D6F64537065616B657273223A2D312C2277696E646F7754696E74223A2D312C22706561726C657363656E74436F6C6F72223A3132322C22706C617465223A2238304B4D54323234222C22706C617465496E646578223A342C226D6F64526967687446656E646572223A2D312C226D6F645472616E736D697373696F6E223A2D312C226D6F64536D6F6B65456E61626C6564223A312C226D6F64656C223A3737313731313533352C226D6F644F726E616D656E7473223A2D312C226D6F6445786861757374223A2D312C226D6F64487964726F6C6963223A2D312C226D6F645265617242756D706572223A2D312C226D6F644272616B6573223A2D312C226D6F645365617473223A2D312C226D6F6441697246696C746572223A2D312C226E656F6E436F6C6F72223A5B3235352C302C3235355D2C226D6F64486F726E73223A2D312C226D6F645472756E6B223A2D312C226D6F644772696C6C65223A2D312C22646972744C6576656C223A302E302C226865616C7468223A313030302C22636F6C6F7232223A302C226D6F6441506C617465223A2D312C226D6F6441726D6F72223A2D312C226D6F6441657269616C73223A2D312C226D6F645374656572696E67576865656C223A2D312C226D6F64506C617465486F6C646572223A2D312C226D6F64456E67696E65426C6F636B223A2D312C22776865656C436F6C6F72223A3135362C226D6F644261636B576865656C73223A2D312C226D6F6446726F6E7442756D706572223A2D312C226D6F6441726368436F766572223A2D312C226D6F6446656E646572223A2D312C226D6F6453696465536B697274223A2D312C226D6F644469616C223A2D312C226D6F6458656E6F6E223A66616C73657D, '80KMT224');

-- ----------------------------
-- Table structure for `user_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inventory
-- ----------------------------
INSERT INTO `user_inventory` VALUES ('964', 'steam:1100001081ca641', 'blackberry', '1');
INSERT INTO `user_inventory` VALUES ('965', 'steam:1100001081ca641', 'medikit', '3');
INSERT INTO `user_inventory` VALUES ('966', 'steam:1100001081ca641', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('967', 'steam:1100001081ca641', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('968', 'steam:1100001081ca641', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('969', 'steam:1100001081ca641', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('970', 'steam:1100001081ca641', 'washed_stone', '0');
INSERT INTO `user_inventory` VALUES ('971', 'steam:1100001081ca641', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('972', 'steam:1100001081ca641', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('973', 'steam:1100001081ca641', 'sandwich', '3');
INSERT INTO `user_inventory` VALUES ('975', 'steam:1100001081ca641', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('976', 'steam:1100001081ca641', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('977', 'steam:1100001081ca641', 'diamond', '0');
INSERT INTO `user_inventory` VALUES ('978', 'steam:1100001081ca641', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('979', 'steam:1100001081ca641', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('980', 'steam:1100001081ca641', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('981', 'steam:1100001081ca641', 'water', '3');
INSERT INTO `user_inventory` VALUES ('982', 'steam:1100001081ca641', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('983', 'steam:1100001081ca641', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('984', 'steam:1100001081ca641', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('985', 'steam:1100001081ca641', 'fixkit', '3');
INSERT INTO `user_inventory` VALUES ('986', 'steam:1100001081ca641', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('987', 'steam:1100001081ca641', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('988', 'steam:1100001081ca641', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('989', 'steam:1100001081ca641', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('990', 'steam:1100001081ca641', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('991', 'steam:1100001081ca641', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('992', 'steam:1100001081ca641', 'meth', '0');
INSERT INTO `user_inventory` VALUES ('993', 'steam:1100001081ca641', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('994', 'steam:1100001081ca641', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('995', 'steam:1100001081ca641', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('996', 'steam:1100001081ca641', 'cutted_wood', '0');
INSERT INTO `user_inventory` VALUES ('997', 'steam:1100001081ca641', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('998', 'steam:1100001081ca641', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('999', 'steam:1100001081ca641', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('1000', 'steam:1100001081ca641', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('1001', 'steam:1100001081ca641', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('1002', 'steam:1100001081ca641', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('1003', 'steam:1100001081ca641', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('1004', 'steam:1100001081ca641', 'tacos', '25');
INSERT INTO `user_inventory` VALUES ('1005', 'steam:1100001081ca641', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('1006', 'steam:1100001081ca641', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('1007', 'steam:1100001081ca641', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('1008', 'steam:1100001081ca641', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('1009', 'steam:1100001081ca641', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('1010', 'steam:1100001081ca641', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('1011', 'steam:1100001081ca641', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('1012', 'steam:1100001081ca641', 'plongee1', '1');
INSERT INTO `user_inventory` VALUES ('1013', 'steam:1100001081ca641', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('1014', 'steam:1100001081ca641', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('1015', 'steam:1100001081ca641', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('1016', 'steam:1100001081ca641', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('1017', 'steam:1100001081ca641', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('1018', 'steam:1100001081ca641', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('1019', 'steam:1100001081ca641', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('1020', 'steam:1100001081ca641', 'fixtool', '2');
INSERT INTO `user_inventory` VALUES ('1021', 'steam:1100001081ca641', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('1022', 'steam:1100001081ca641', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('1023', 'steam:1100001081ca641', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('1024', 'steam:1100001081ca641', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('1025', 'steam:1100001081ca641', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('1026', 'steam:1100001081ca641', 'cupcake', '2');
INSERT INTO `user_inventory` VALUES ('1027', 'steam:1100001081ca641', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('1028', 'steam:1100001081ca641', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('1029', 'steam:1100001081ca641', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('1030', 'steam:1100001081ca641', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('1031', 'steam:1100001081ca641', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('1032', 'steam:1100001081ca641', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('1033', 'steam:1100001081ca641', 'hamburger', '3');
INSERT INTO `user_inventory` VALUES ('1034', 'steam:1100001081ca641', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('1035', 'steam:1100001081ca641', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('1036', 'steam:1100001081ca641', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('1037', 'steam:1100001081ca641', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('1038', 'steam:1100001081ca641', 'gazbottle', '1');
INSERT INTO `user_inventory` VALUES ('1039', 'steam:1100001081ca641', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('1040', 'steam:1100001081ca641', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('1041', 'steam:1100001081ca641', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('1042', 'steam:1100001081ca641', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1043', 'steam:1100001081ca641', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('1044', 'steam:1100001081ca641', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('1045', 'steam:1100001081ca641', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1046', 'steam:1100001081ca641', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('1047', 'steam:1100001081ca641', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('1048', 'steam:1100001081ca641', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('1049', 'steam:1100001081ca641', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('1050', 'steam:1100001081ca641', 'chocolate', '2');
INSERT INTO `user_inventory` VALUES ('1051', 'steam:1100001081ca641', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('1052', 'steam:1100001081ca641', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('1053', 'steam:1100001081ca641', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('1054', 'steam:1100001081ca641', 'cola', '3');
INSERT INTO `user_inventory` VALUES ('1055', 'steam:1100001081ca641', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('1056', 'steam:1100001081ca641', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('1057', 'steam:1100001081ca641', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('1058', 'steam:1100001081ca641', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('1059', 'steam:1100001081ca641', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('1060', 'steam:1100001081ca641', 'burger', '16');
INSERT INTO `user_inventory` VALUES ('1061', 'steam:1100001081ca641', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('1062', 'steam:1100001081ca641', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1063', 'steam:1100001081ca641', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('1064', 'steam:1100001081ca641', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('1065', 'steam:1100001081ca641', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('1066', 'steam:1100001081ca641', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('1067', 'steam:1100001081ca641', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('1068', 'steam:1100001081ca641', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('1069', 'steam:1100001081ca641', 'cigarett', '1');
INSERT INTO `user_inventory` VALUES ('1070', 'steam:1100001081ca641', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('1071', 'steam:1100001081ca641', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('1072', 'steam:1100001081ca641', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('1073', 'steam:1100001081ca641', 'lighter', '1');
INSERT INTO `user_inventory` VALUES ('1074', 'steam:110000112cc1d89', 'fixkit', '0');
INSERT INTO `user_inventory` VALUES ('1075', 'steam:110000112cc1d89', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('1076', 'steam:110000112cc1d89', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('1077', 'steam:110000112cc1d89', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1078', 'steam:110000112cc1d89', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('1079', 'steam:110000112cc1d89', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('1080', 'steam:110000112cc1d89', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('1081', 'steam:110000112cc1d89', 'tacos', '0');
INSERT INTO `user_inventory` VALUES ('1082', 'steam:110000112cc1d89', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('1083', 'steam:110000112cc1d89', 'sandwich', '0');
INSERT INTO `user_inventory` VALUES ('1084', 'steam:110000112cc1d89', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('1085', 'steam:110000112cc1d89', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('1086', 'steam:110000112cc1d89', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('1087', 'steam:110000112cc1d89', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1088', 'steam:110000112cc1d89', 'cigarett', '0');
INSERT INTO `user_inventory` VALUES ('1089', 'steam:110000112cc1d89', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('1090', 'steam:110000112cc1d89', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('1091', 'steam:110000112cc1d89', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('1092', 'steam:110000112cc1d89', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('1093', 'steam:110000112cc1d89', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('1094', 'steam:110000112cc1d89', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('1095', 'steam:110000112cc1d89', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('1096', 'steam:110000112cc1d89', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('1097', 'steam:110000112cc1d89', 'burger', '0');
INSERT INTO `user_inventory` VALUES ('1098', 'steam:110000112cc1d89', 'washed_stone', '0');
INSERT INTO `user_inventory` VALUES ('1099', 'steam:110000112cc1d89', 'lighter', '0');
INSERT INTO `user_inventory` VALUES ('1100', 'steam:110000112cc1d89', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('1101', 'steam:110000112cc1d89', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('1102', 'steam:110000112cc1d89', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('1103', 'steam:110000112cc1d89', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('1104', 'steam:110000112cc1d89', 'cupcake', '0');
INSERT INTO `user_inventory` VALUES ('1105', 'steam:110000112cc1d89', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('1106', 'steam:110000112cc1d89', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('1107', 'steam:110000112cc1d89', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('1108', 'steam:110000112cc1d89', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('1109', 'steam:110000112cc1d89', 'plongee1', '0');
INSERT INTO `user_inventory` VALUES ('1110', 'steam:110000112cc1d89', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('1111', 'steam:110000112cc1d89', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('1112', 'steam:110000112cc1d89', 'meth', '0');
INSERT INTO `user_inventory` VALUES ('1113', 'steam:110000112cc1d89', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('1114', 'steam:110000112cc1d89', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('1115', 'steam:110000112cc1d89', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('1116', 'steam:110000112cc1d89', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('1117', 'steam:110000112cc1d89', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('1118', 'steam:110000112cc1d89', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('1119', 'steam:110000112cc1d89', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('1120', 'steam:110000112cc1d89', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('1121', 'steam:110000112cc1d89', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('1122', 'steam:110000112cc1d89', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('1123', 'steam:110000112cc1d89', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('1124', 'steam:110000112cc1d89', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('1125', 'steam:110000112cc1d89', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('1126', 'steam:110000112cc1d89', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('1127', 'steam:110000112cc1d89', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('1128', 'steam:110000112cc1d89', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('1129', 'steam:110000112cc1d89', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('1130', 'steam:110000112cc1d89', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('1131', 'steam:110000112cc1d89', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('1132', 'steam:110000112cc1d89', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('1133', 'steam:110000112cc1d89', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('1134', 'steam:110000112cc1d89', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1135', 'steam:110000112cc1d89', 'gazbottle', '0');
INSERT INTO `user_inventory` VALUES ('1136', 'steam:110000112cc1d89', 'cola', '0');
INSERT INTO `user_inventory` VALUES ('1137', 'steam:110000112cc1d89', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('1138', 'steam:110000112cc1d89', 'gps', '0');
INSERT INTO `user_inventory` VALUES ('1139', 'steam:110000112cc1d89', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('1140', 'steam:110000112cc1d89', 'bread', '0');
INSERT INTO `user_inventory` VALUES ('1141', 'steam:110000112cc1d89', 'water', '0');
INSERT INTO `user_inventory` VALUES ('1142', 'steam:110000112cc1d89', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1143', 'steam:110000112cc1d89', 'hamburger', '0');
INSERT INTO `user_inventory` VALUES ('1144', 'steam:110000112cc1d89', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('1145', 'steam:110000112cc1d89', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('1146', 'steam:110000112cc1d89', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('1147', 'steam:110000112cc1d89', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('1148', 'steam:110000112cc1d89', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('1149', 'steam:110000112cc1d89', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('1150', 'steam:110000112cc1d89', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('1151', 'steam:110000112cc1d89', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('1152', 'steam:110000112cc1d89', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('1153', 'steam:110000112cc1d89', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1154', 'steam:110000112cc1d89', 'diamond', '0');
INSERT INTO `user_inventory` VALUES ('1155', 'steam:110000112cc1d89', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('1156', 'steam:110000112cc1d89', 'chocolate', '0');
INSERT INTO `user_inventory` VALUES ('1157', 'steam:110000112cc1d89', 'cutted_wood', '0');
INSERT INTO `user_inventory` VALUES ('1158', 'steam:110000112cc1d89', 'medikit', '0');
INSERT INTO `user_inventory` VALUES ('1159', 'steam:110000112cc1d89', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('1160', 'steam:110000112cc1d89', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('1161', 'steam:110000112cc1d89', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('1162', 'steam:110000112cc1d89', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('1163', 'steam:110000112cc1d89', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('1164', 'steam:110000112cc1d89', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('1165', 'steam:110000112cc1d89', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('1166', 'steam:110000112cc1d89', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('1167', 'steam:110000112cc1d89', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('1168', 'steam:110000112cc1d89', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('1169', 'steam:110000112cc1d89', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('1170', 'steam:110000112cc1d89', 'fixtool', '0');
INSERT INTO `user_inventory` VALUES ('1171', 'steam:110000112cc1d89', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('1172', 'steam:110000112cc1d89', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('1173', 'steam:110000112cc1d89', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1174', 'steam:110000112cc1d89', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('1175', 'steam:110000112cc1d89', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('1176', 'steam:110000112cc1d89', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1177', 'steam:110000112cc1d89', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('1178', 'steam:110000112cc1d89', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('1179', 'steam:110000112cc1d89', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('1180', 'steam:110000112cc1d89', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('1181', 'steam:110000107e0850f', 'meth', '0');
INSERT INTO `user_inventory` VALUES ('1182', 'steam:110000107e0850f', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('1183', 'steam:110000107e0850f', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('1184', 'steam:110000107e0850f', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('1185', 'steam:110000107e0850f', 'sandwich', '0');
INSERT INTO `user_inventory` VALUES ('1186', 'steam:110000107e0850f', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('1187', 'steam:110000107e0850f', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('1188', 'steam:110000107e0850f', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('1189', 'steam:110000107e0850f', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('1190', 'steam:110000107e0850f', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('1191', 'steam:110000107e0850f', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('1192', 'steam:110000107e0850f', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('1193', 'steam:110000107e0850f', 'tacos', '0');
INSERT INTO `user_inventory` VALUES ('1194', 'steam:110000107e0850f', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('1195', 'steam:110000107e0850f', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('1196', 'steam:110000107e0850f', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('1197', 'steam:110000107e0850f', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('1198', 'steam:110000107e0850f', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('1199', 'steam:110000107e0850f', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('1200', 'steam:110000107e0850f', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('1201', 'steam:110000107e0850f', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('1202', 'steam:110000107e0850f', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('1203', 'steam:110000107e0850f', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('1204', 'steam:110000107e0850f', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('1205', 'steam:110000107e0850f', 'diamond', '0');
INSERT INTO `user_inventory` VALUES ('1206', 'steam:110000107e0850f', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('1207', 'steam:110000107e0850f', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('1208', 'steam:110000107e0850f', 'medikit', '1');
INSERT INTO `user_inventory` VALUES ('1209', 'steam:110000107e0850f', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('1210', 'steam:110000107e0850f', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('1211', 'steam:110000107e0850f', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('1212', 'steam:110000107e0850f', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('1213', 'steam:110000107e0850f', 'plongee1', '0');
INSERT INTO `user_inventory` VALUES ('1214', 'steam:110000107e0850f', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1215', 'steam:110000107e0850f', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('1216', 'steam:110000107e0850f', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('1217', 'steam:110000107e0850f', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('1218', 'steam:110000107e0850f', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('1219', 'steam:110000107e0850f', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1220', 'steam:110000107e0850f', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('1221', 'steam:110000107e0850f', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('1222', 'steam:110000107e0850f', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('1223', 'steam:110000107e0850f', 'cola', '0');
INSERT INTO `user_inventory` VALUES ('1224', 'steam:110000107e0850f', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('1225', 'steam:110000107e0850f', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('1226', 'steam:110000107e0850f', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('1227', 'steam:110000107e0850f', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('1228', 'steam:110000107e0850f', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('1229', 'steam:110000107e0850f', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('1230', 'steam:110000107e0850f', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('1231', 'steam:110000107e0850f', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('1232', 'steam:110000107e0850f', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('1233', 'steam:110000107e0850f', 'cutted_wood', '0');
INSERT INTO `user_inventory` VALUES ('1234', 'steam:110000107e0850f', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('1235', 'steam:110000107e0850f', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('1236', 'steam:110000107e0850f', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('1237', 'steam:110000107e0850f', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('1238', 'steam:110000107e0850f', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('1239', 'steam:110000107e0850f', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1240', 'steam:110000107e0850f', 'burger', '0');
INSERT INTO `user_inventory` VALUES ('1241', 'steam:110000107e0850f', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('1242', 'steam:110000107e0850f', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('1243', 'steam:110000107e0850f', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('1244', 'steam:110000107e0850f', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('1245', 'steam:110000107e0850f', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('1246', 'steam:110000107e0850f', 'gazbottle', '0');
INSERT INTO `user_inventory` VALUES ('1247', 'steam:110000107e0850f', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1248', 'steam:110000107e0850f', 'chocolate', '0');
INSERT INTO `user_inventory` VALUES ('1249', 'steam:110000107e0850f', 'lighter', '0');
INSERT INTO `user_inventory` VALUES ('1250', 'steam:110000107e0850f', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('1251', 'steam:110000107e0850f', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('1252', 'steam:110000107e0850f', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('1253', 'steam:110000107e0850f', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('1254', 'steam:110000107e0850f', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('1255', 'steam:110000107e0850f', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('1256', 'steam:110000107e0850f', 'fixtool', '0');
INSERT INTO `user_inventory` VALUES ('1257', 'steam:110000107e0850f', 'fixkit', '1');
INSERT INTO `user_inventory` VALUES ('1258', 'steam:110000107e0850f', 'cupcake', '0');
INSERT INTO `user_inventory` VALUES ('1259', 'steam:110000107e0850f', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('1260', 'steam:110000107e0850f', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('1261', 'steam:110000107e0850f', 'hamburger', '0');
INSERT INTO `user_inventory` VALUES ('1262', 'steam:110000107e0850f', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1263', 'steam:110000107e0850f', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('1264', 'steam:110000107e0850f', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('1265', 'steam:110000107e0850f', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('1266', 'steam:110000107e0850f', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('1267', 'steam:110000107e0850f', 'washed_stone', '0');
INSERT INTO `user_inventory` VALUES ('1268', 'steam:110000107e0850f', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('1269', 'steam:110000107e0850f', 'bread', '6');
INSERT INTO `user_inventory` VALUES ('1270', 'steam:110000107e0850f', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('1271', 'steam:110000107e0850f', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('1272', 'steam:110000107e0850f', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('1273', 'steam:110000107e0850f', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('1274', 'steam:110000107e0850f', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('1275', 'steam:110000107e0850f', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('1276', 'steam:110000107e0850f', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('1277', 'steam:110000107e0850f', 'water', '5');
INSERT INTO `user_inventory` VALUES ('1278', 'steam:110000107e0850f', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('1279', 'steam:110000107e0850f', 'cigarett', '0');
INSERT INTO `user_inventory` VALUES ('1280', 'steam:110000107e0850f', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('1281', 'steam:110000107e0850f', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('1282', 'steam:110000107e0850f', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1283', 'steam:110000107e0850f', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1284', 'steam:110000107e0850f', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('1285', 'steam:110000107e0850f', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('1286', 'steam:110000107e0850f', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('1287', 'steam:110000107e0850f', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('1288', 'steam:11000010bf1d422', 'cutted_wood', '0');
INSERT INTO `user_inventory` VALUES ('1289', 'steam:11000010bf1d422', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('1290', 'steam:11000010bf1d422', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('1291', 'steam:11000010bf1d422', 'tacos', '0');
INSERT INTO `user_inventory` VALUES ('1292', 'steam:11000010bf1d422', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('1293', 'steam:11000010bf1d422', 'lighter', '0');
INSERT INTO `user_inventory` VALUES ('1294', 'steam:11000010bf1d422', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('1295', 'steam:11000010bf1d422', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('1296', 'steam:11000010bf1d422', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('1297', 'steam:11000010bf1d422', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('1298', 'steam:11000010bf1d422', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1299', 'steam:11000010bf1d422', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('1300', 'steam:11000010bf1d422', 'meth', '0');
INSERT INTO `user_inventory` VALUES ('1301', 'steam:11000010bf1d422', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('1302', 'steam:11000010bf1d422', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('1303', 'steam:11000010bf1d422', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('1304', 'steam:11000010bf1d422', 'diamond', '0');
INSERT INTO `user_inventory` VALUES ('1305', 'steam:11000010bf1d422', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('1306', 'steam:11000010bf1d422', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('1307', 'steam:11000010bf1d422', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('1308', 'steam:11000010bf1d422', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('1309', 'steam:11000010bf1d422', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('1310', 'steam:11000010bf1d422', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('1311', 'steam:11000010bf1d422', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('1312', 'steam:11000010bf1d422', 'water', '4');
INSERT INTO `user_inventory` VALUES ('1313', 'steam:11000010bf1d422', 'medikit', '0');
INSERT INTO `user_inventory` VALUES ('1314', 'steam:11000010bf1d422', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('1315', 'steam:11000010bf1d422', 'burger', '0');
INSERT INTO `user_inventory` VALUES ('1316', 'steam:11000010bf1d422', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('1317', 'steam:11000010bf1d422', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('1318', 'steam:11000010bf1d422', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('1319', 'steam:11000010bf1d422', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('1320', 'steam:11000010bf1d422', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('1321', 'steam:11000010bf1d422', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('1322', 'steam:11000010bf1d422', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('1323', 'steam:11000010bf1d422', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1324', 'steam:11000010bf1d422', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('1325', 'steam:11000010bf1d422', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('1326', 'steam:11000010bf1d422', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('1327', 'steam:11000010bf1d422', 'sandwich', '0');
INSERT INTO `user_inventory` VALUES ('1328', 'steam:11000010bf1d422', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('1329', 'steam:11000010bf1d422', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('1330', 'steam:11000010bf1d422', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('1331', 'steam:11000010bf1d422', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('1332', 'steam:11000010bf1d422', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('1333', 'steam:11000010bf1d422', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('1334', 'steam:11000010bf1d422', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('1335', 'steam:11000010bf1d422', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('1336', 'steam:11000010bf1d422', 'cola', '0');
INSERT INTO `user_inventory` VALUES ('1337', 'steam:11000010bf1d422', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('1338', 'steam:11000010bf1d422', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1339', 'steam:11000010bf1d422', 'gazbottle', '0');
INSERT INTO `user_inventory` VALUES ('1340', 'steam:11000010bf1d422', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('1341', 'steam:11000010bf1d422', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('1342', 'steam:11000010bf1d422', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('1343', 'steam:11000010bf1d422', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1344', 'steam:11000010bf1d422', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('1345', 'steam:11000010bf1d422', 'plongee1', '0');
INSERT INTO `user_inventory` VALUES ('1346', 'steam:11000010bf1d422', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('1347', 'steam:11000010bf1d422', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('1348', 'steam:11000010bf1d422', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('1349', 'steam:11000010bf1d422', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('1350', 'steam:11000010bf1d422', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('1351', 'steam:11000010bf1d422', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('1352', 'steam:11000010bf1d422', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('1353', 'steam:11000010bf1d422', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('1354', 'steam:11000010bf1d422', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('1355', 'steam:11000010bf1d422', 'fixkit', '0');
INSERT INTO `user_inventory` VALUES ('1356', 'steam:11000010bf1d422', 'cupcake', '0');
INSERT INTO `user_inventory` VALUES ('1357', 'steam:11000010bf1d422', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('1358', 'steam:11000010bf1d422', 'chocolate', '0');
INSERT INTO `user_inventory` VALUES ('1359', 'steam:11000010bf1d422', 'fixtool', '0');
INSERT INTO `user_inventory` VALUES ('1360', 'steam:11000010bf1d422', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('1361', 'steam:11000010bf1d422', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('1362', 'steam:11000010bf1d422', 'washed_stone', '0');
INSERT INTO `user_inventory` VALUES ('1363', 'steam:11000010bf1d422', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('1364', 'steam:11000010bf1d422', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('1365', 'steam:11000010bf1d422', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('1366', 'steam:11000010bf1d422', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('1367', 'steam:11000010bf1d422', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('1368', 'steam:11000010bf1d422', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1369', 'steam:11000010bf1d422', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('1370', 'steam:11000010bf1d422', 'cigarett', '0');
INSERT INTO `user_inventory` VALUES ('1371', 'steam:11000010bf1d422', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1372', 'steam:11000010bf1d422', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('1373', 'steam:11000010bf1d422', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('1374', 'steam:11000010bf1d422', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1375', 'steam:11000010bf1d422', 'bread', '0');
INSERT INTO `user_inventory` VALUES ('1376', 'steam:11000010bf1d422', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('1377', 'steam:11000010bf1d422', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('1378', 'steam:11000010bf1d422', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('1379', 'steam:11000010bf1d422', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('1380', 'steam:11000010bf1d422', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('1381', 'steam:11000010bf1d422', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('1382', 'steam:11000010bf1d422', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('1383', 'steam:11000010bf1d422', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('1384', 'steam:11000010bf1d422', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('1385', 'steam:11000010bf1d422', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('1386', 'steam:11000010bf1d422', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('1387', 'steam:11000010bf1d422', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('1388', 'steam:11000010bf1d422', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('1389', 'steam:11000010bf1d422', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('1390', 'steam:11000010bf1d422', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('1391', 'steam:11000010bf1d422', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('1392', 'steam:11000010bf1d422', 'hamburger', '0');
INSERT INTO `user_inventory` VALUES ('1393', 'steam:11000010bf1d422', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('1394', 'steam:11000010bf1d422', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('1395', 'steam:110000107f00b0f', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1396', 'steam:110000107f00b0f', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('1397', 'steam:110000107f00b0f', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1398', 'steam:110000107f00b0f', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('1399', 'steam:110000107f00b0f', 'washed_stone', '0');
INSERT INTO `user_inventory` VALUES ('1400', 'steam:110000107f00b0f', 'chocolate', '0');
INSERT INTO `user_inventory` VALUES ('1401', 'steam:110000107f00b0f', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('1402', 'steam:110000107f00b0f', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('1403', 'steam:110000107f00b0f', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('1404', 'steam:110000107f00b0f', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('1405', 'steam:110000107f00b0f', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('1406', 'steam:110000107f00b0f', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('1407', 'steam:110000107f00b0f', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('1408', 'steam:110000107f00b0f', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('1409', 'steam:110000107f00b0f', 'meth', '0');
INSERT INTO `user_inventory` VALUES ('1410', 'steam:110000107f00b0f', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('1411', 'steam:110000107f00b0f', 'cola', '0');
INSERT INTO `user_inventory` VALUES ('1412', 'steam:110000107f00b0f', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('1413', 'steam:110000107f00b0f', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('1414', 'steam:110000107f00b0f', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('1415', 'steam:110000107f00b0f', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('1416', 'steam:110000107f00b0f', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('1417', 'steam:110000107f00b0f', 'lighter', '2');
INSERT INTO `user_inventory` VALUES ('1418', 'steam:110000107f00b0f', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('1419', 'steam:110000107f00b0f', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('1420', 'steam:110000107f00b0f', 'cupcake', '1');
INSERT INTO `user_inventory` VALUES ('1421', 'steam:110000107f00b0f', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('1422', 'steam:110000107f00b0f', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('1423', 'steam:110000107f00b0f', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('1424', 'steam:110000107f00b0f', 'cigarett', '5');
INSERT INTO `user_inventory` VALUES ('1425', 'steam:110000107f00b0f', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('1426', 'steam:110000107f00b0f', 'plongee1', '0');
INSERT INTO `user_inventory` VALUES ('1427', 'steam:110000107f00b0f', 'gazbottle', '0');
INSERT INTO `user_inventory` VALUES ('1428', 'steam:110000107f00b0f', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('1429', 'steam:110000107f00b0f', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('1430', 'steam:110000107f00b0f', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('1431', 'steam:110000107f00b0f', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('1432', 'steam:110000107f00b0f', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1433', 'steam:110000107f00b0f', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('1434', 'steam:110000107f00b0f', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('1435', 'steam:110000107f00b0f', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('1436', 'steam:110000107f00b0f', 'water', '0');
INSERT INTO `user_inventory` VALUES ('1437', 'steam:110000107f00b0f', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('1438', 'steam:110000107f00b0f', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('1439', 'steam:110000107f00b0f', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('1440', 'steam:110000107f00b0f', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1441', 'steam:110000107f00b0f', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('1442', 'steam:110000107f00b0f', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('1443', 'steam:110000107f00b0f', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('1444', 'steam:110000107f00b0f', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('1445', 'steam:110000107f00b0f', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('1446', 'steam:110000107f00b0f', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('1447', 'steam:110000107f00b0f', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('1448', 'steam:110000107f00b0f', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('1449', 'steam:110000107f00b0f', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('1450', 'steam:110000107f00b0f', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('1451', 'steam:110000107f00b0f', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('1452', 'steam:110000107f00b0f', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1453', 'steam:110000107f00b0f', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('1454', 'steam:110000107f00b0f', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('1455', 'steam:110000107f00b0f', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('1456', 'steam:110000107f00b0f', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('1457', 'steam:110000107f00b0f', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('1458', 'steam:110000107f00b0f', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('1459', 'steam:110000107f00b0f', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('1460', 'steam:110000107f00b0f', 'hamburger', '3');
INSERT INTO `user_inventory` VALUES ('1461', 'steam:110000107f00b0f', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('1462', 'steam:110000107f00b0f', 'sandwich', '12');
INSERT INTO `user_inventory` VALUES ('1463', 'steam:110000107f00b0f', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('1464', 'steam:110000107f00b0f', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('1465', 'steam:110000107f00b0f', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('1466', 'steam:110000107f00b0f', 'fixkit', '0');
INSERT INTO `user_inventory` VALUES ('1467', 'steam:110000107f00b0f', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('1468', 'steam:110000107f00b0f', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('1469', 'steam:110000107f00b0f', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('1470', 'steam:110000107f00b0f', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('1471', 'steam:110000107f00b0f', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('1472', 'steam:110000107f00b0f', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('1473', 'steam:110000107f00b0f', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('1474', 'steam:110000107f00b0f', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('1475', 'steam:110000107f00b0f', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1476', 'steam:110000107f00b0f', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('1477', 'steam:110000107f00b0f', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('1478', 'steam:110000107f00b0f', 'burger', '0');
INSERT INTO `user_inventory` VALUES ('1479', 'steam:110000107f00b0f', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('1480', 'steam:110000107f00b0f', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('1481', 'steam:110000107f00b0f', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('1482', 'steam:110000107f00b0f', 'cutted_wood', '0');
INSERT INTO `user_inventory` VALUES ('1483', 'steam:110000107f00b0f', 'fixtool', '5');
INSERT INTO `user_inventory` VALUES ('1484', 'steam:110000107f00b0f', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('1485', 'steam:110000107f00b0f', 'tacos', '0');
INSERT INTO `user_inventory` VALUES ('1486', 'steam:110000107f00b0f', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('1487', 'steam:110000107f00b0f', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('1488', 'steam:110000107f00b0f', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('1489', 'steam:110000107f00b0f', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('1490', 'steam:110000107f00b0f', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('1491', 'steam:110000107f00b0f', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('1492', 'steam:110000107f00b0f', 'medikit', '0');
INSERT INTO `user_inventory` VALUES ('1493', 'steam:110000107f00b0f', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1494', 'steam:110000107f00b0f', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('1495', 'steam:110000107f00b0f', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('1496', 'steam:110000107f00b0f', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('1497', 'steam:110000107f00b0f', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('1498', 'steam:110000107f00b0f', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('1499', 'steam:110000107f00b0f', 'diamond', '0');
INSERT INTO `user_inventory` VALUES ('1500', 'steam:110000107f00b0f', 'bread', '0');
INSERT INTO `user_inventory` VALUES ('1501', 'steam:110000107f00b0f', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('1502', 'steam:1100001080d2eac', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('1503', 'steam:1100001080d2eac', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('1504', 'steam:1100001080d2eac', 'burger', '0');
INSERT INTO `user_inventory` VALUES ('1505', 'steam:1100001080d2eac', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('1506', 'steam:1100001080d2eac', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('1507', 'steam:1100001080d2eac', 'sandwich', '0');
INSERT INTO `user_inventory` VALUES ('1508', 'steam:1100001080d2eac', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('1509', 'steam:1100001080d2eac', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('1510', 'steam:1100001080d2eac', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('1511', 'steam:1100001080d2eac', 'cigarett', '0');
INSERT INTO `user_inventory` VALUES ('1512', 'steam:1100001080d2eac', 'lighter', '0');
INSERT INTO `user_inventory` VALUES ('1513', 'steam:1100001080d2eac', 'gazbottle', '0');
INSERT INTO `user_inventory` VALUES ('1514', 'steam:1100001080d2eac', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('1515', 'steam:1100001080d2eac', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('1516', 'steam:1100001080d2eac', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('1517', 'steam:1100001080d2eac', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('1518', 'steam:1100001080d2eac', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('1519', 'steam:1100001080d2eac', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('1520', 'steam:1100001080d2eac', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('1521', 'steam:1100001080d2eac', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('1522', 'steam:1100001080d2eac', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1523', 'steam:1100001080d2eac', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('1524', 'steam:1100001080d2eac', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('1525', 'steam:1100001080d2eac', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('1526', 'steam:1100001080d2eac', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('1527', 'steam:1100001080d2eac', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('1528', 'steam:1100001080d2eac', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('1529', 'steam:1100001080d2eac', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('1530', 'steam:1100001080d2eac', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('1531', 'steam:1100001080d2eac', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('1532', 'steam:1100001080d2eac', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('1533', 'steam:1100001080d2eac', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('1534', 'steam:1100001080d2eac', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('1535', 'steam:1100001080d2eac', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('1536', 'steam:1100001080d2eac', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('1537', 'steam:1100001080d2eac', 'meth', '0');
INSERT INTO `user_inventory` VALUES ('1538', 'steam:1100001080d2eac', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('1539', 'steam:1100001080d2eac', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('1540', 'steam:1100001080d2eac', 'bread', '0');
INSERT INTO `user_inventory` VALUES ('1541', 'steam:1100001080d2eac', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1542', 'steam:1100001080d2eac', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('1543', 'steam:1100001080d2eac', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('1544', 'steam:1100001080d2eac', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('1545', 'steam:1100001080d2eac', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('1546', 'steam:1100001080d2eac', 'plongee1', '0');
INSERT INTO `user_inventory` VALUES ('1547', 'steam:1100001080d2eac', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('1548', 'steam:1100001080d2eac', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('1549', 'steam:1100001080d2eac', 'chocolate', '0');
INSERT INTO `user_inventory` VALUES ('1550', 'steam:1100001080d2eac', 'fixkit', '0');
INSERT INTO `user_inventory` VALUES ('1551', 'steam:1100001080d2eac', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('1552', 'steam:1100001080d2eac', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('1553', 'steam:1100001080d2eac', 'cupcake', '0');
INSERT INTO `user_inventory` VALUES ('1554', 'steam:1100001080d2eac', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1555', 'steam:1100001080d2eac', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('1556', 'steam:1100001080d2eac', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('1557', 'steam:1100001080d2eac', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('1558', 'steam:1100001080d2eac', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('1559', 'steam:1100001080d2eac', 'gps', '0');
INSERT INTO `user_inventory` VALUES ('1560', 'steam:1100001080d2eac', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('1561', 'steam:1100001080d2eac', 'washed_stone', '0');
INSERT INTO `user_inventory` VALUES ('1562', 'steam:1100001080d2eac', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('1563', 'steam:1100001080d2eac', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('1564', 'steam:1100001080d2eac', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('1565', 'steam:1100001080d2eac', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('1566', 'steam:1100001080d2eac', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('1567', 'steam:1100001080d2eac', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('1568', 'steam:1100001080d2eac', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('1569', 'steam:1100001080d2eac', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('1570', 'steam:1100001080d2eac', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('1571', 'steam:1100001080d2eac', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('1572', 'steam:1100001080d2eac', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('1573', 'steam:1100001080d2eac', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1574', 'steam:1100001080d2eac', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('1575', 'steam:1100001080d2eac', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('1576', 'steam:1100001080d2eac', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('1577', 'steam:1100001080d2eac', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1578', 'steam:1100001080d2eac', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('1579', 'steam:1100001080d2eac', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('1580', 'steam:1100001080d2eac', 'tacos', '0');
INSERT INTO `user_inventory` VALUES ('1581', 'steam:1100001080d2eac', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('1582', 'steam:1100001080d2eac', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('1583', 'steam:1100001080d2eac', 'essence', '0');
INSERT INTO `user_inventory` VALUES ('1584', 'steam:1100001080d2eac', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('1585', 'steam:1100001080d2eac', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('1586', 'steam:1100001080d2eac', 'diamond', '0');
INSERT INTO `user_inventory` VALUES ('1587', 'steam:1100001080d2eac', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('1588', 'steam:1100001080d2eac', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('1589', 'steam:1100001080d2eac', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('1590', 'steam:1100001080d2eac', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('1591', 'steam:1100001080d2eac', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('1592', 'steam:1100001080d2eac', 'water', '0');
INSERT INTO `user_inventory` VALUES ('1593', 'steam:1100001080d2eac', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('1594', 'steam:1100001080d2eac', 'cola', '0');
INSERT INTO `user_inventory` VALUES ('1595', 'steam:1100001080d2eac', 'medikit', '0');
INSERT INTO `user_inventory` VALUES ('1596', 'steam:1100001080d2eac', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('1597', 'steam:1100001080d2eac', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('1598', 'steam:1100001080d2eac', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('1599', 'steam:1100001080d2eac', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('1600', 'steam:1100001080d2eac', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('1601', 'steam:1100001080d2eac', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('1602', 'steam:1100001080d2eac', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('1603', 'steam:1100001080d2eac', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('1604', 'steam:1100001080d2eac', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('1605', 'steam:1100001080d2eac', 'fixtool', '0');
INSERT INTO `user_inventory` VALUES ('1606', 'steam:1100001080d2eac', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('1607', 'steam:1100001080d2eac', 'hamburger', '0');
INSERT INTO `user_inventory` VALUES ('1608', 'steam:1100001080d2eac', 'cutted_wood', '0');

-- ----------------------------
-- Table structure for `user_licenses`
-- ----------------------------
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_licenses
-- ----------------------------
INSERT INTO `user_licenses` VALUES ('7', 'weapon', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('8', 'weapon2', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('9', 'weapon3', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('10', 'weapon', 'steam:110000107f00b0f');
INSERT INTO `user_licenses` VALUES ('11', 'weapon2', 'steam:110000107f00b0f');

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('1', 'Blade', 'blade', '15000', 'muscle');
INSERT INTO `vehicles` VALUES ('2', 'Buccaneer', 'buccaneer', '18000', 'muscle');
INSERT INTO `vehicles` VALUES ('3', 'Buccaneer Rider', 'buccaneer2', '24000', 'muscle');
INSERT INTO `vehicles` VALUES ('4', 'Chino', 'chino', '15000', 'muscle');
INSERT INTO `vehicles` VALUES ('5', 'Chino Luxe', 'chino2', '19000', 'muscle');
INSERT INTO `vehicles` VALUES ('6', 'Coquette BlackFin', 'coquette3', '55000', 'muscle');
INSERT INTO `vehicles` VALUES ('7', 'Dominator', 'dominator', '35000', 'muscle');
INSERT INTO `vehicles` VALUES ('8', 'Dukes', 'dukes', '28000', 'muscle');
INSERT INTO `vehicles` VALUES ('9', 'Gauntlet', 'gauntlet', '30000', 'muscle');
INSERT INTO `vehicles` VALUES ('10', 'Hotknife', 'hotknife', '125000', 'muscle');
INSERT INTO `vehicles` VALUES ('11', 'Faction', 'faction', '20000', 'muscle');
INSERT INTO `vehicles` VALUES ('12', 'Faction Rider', 'faction2', '30000', 'muscle');
INSERT INTO `vehicles` VALUES ('13', 'Faction XL', 'faction3', '40000', 'muscle');
INSERT INTO `vehicles` VALUES ('14', 'Nightshade', 'nightshade', '65000', 'muscle');
INSERT INTO `vehicles` VALUES ('15', 'Phoenix', 'phoenix', '12500', 'muscle');
INSERT INTO `vehicles` VALUES ('16', 'Picador', 'picador', '18000', 'muscle');
INSERT INTO `vehicles` VALUES ('17', 'Sabre Turbo', 'sabregt', '20000', 'muscle');
INSERT INTO `vehicles` VALUES ('18', 'Sabre GT', 'sabregt2', '25000', 'muscle');
INSERT INTO `vehicles` VALUES ('19', 'Slam Van', 'slamvan3', '11500', 'muscle');
INSERT INTO `vehicles` VALUES ('20', 'Tampa', 'tampa', '16000', 'muscle');
INSERT INTO `vehicles` VALUES ('21', 'Virgo', 'virgo', '14000', 'muscle');
INSERT INTO `vehicles` VALUES ('22', 'Vigero', 'vigero', '12500', 'muscle');
INSERT INTO `vehicles` VALUES ('23', 'Voodoo', 'voodoo', '7200', 'muscle');
INSERT INTO `vehicles` VALUES ('24', 'Blista', 'blista', '8000', 'compacts');
INSERT INTO `vehicles` VALUES ('25', 'Brioso R/A', 'brioso', '18000', 'compacts');
INSERT INTO `vehicles` VALUES ('26', 'Issi', 'issi2', '10000', 'compacts');
INSERT INTO `vehicles` VALUES ('27', 'Panto', 'panto', '10000', 'compacts');
INSERT INTO `vehicles` VALUES ('28', 'Prairie', 'prairie', '12000', 'compacts');
INSERT INTO `vehicles` VALUES ('29', 'Bison', 'bison', '45000', 'vans');
INSERT INTO `vehicles` VALUES ('30', 'Bobcat XL', 'bobcatxl', '32000', 'vans');
INSERT INTO `vehicles` VALUES ('31', 'Burrito', 'burrito3', '19000', 'vans');
INSERT INTO `vehicles` VALUES ('32', 'Burrito', 'gburrito2', '29000', 'vans');
INSERT INTO `vehicles` VALUES ('33', 'Camper', 'camper', '42000', 'vans');
INSERT INTO `vehicles` VALUES ('34', 'Gang Burrito', 'gburrito', '45000', 'vans');
INSERT INTO `vehicles` VALUES ('35', 'Journey', 'journey', '6500', 'vans');
INSERT INTO `vehicles` VALUES ('36', 'Minivan', 'minivan', '13000', 'vans');
INSERT INTO `vehicles` VALUES ('37', 'Moonbeam', 'moonbeam', '18000', 'vans');
INSERT INTO `vehicles` VALUES ('38', 'Moonbeam Rider', 'moonbeam2', '35000', 'vans');
INSERT INTO `vehicles` VALUES ('39', 'Paradise', 'paradise', '19000', 'vans');
INSERT INTO `vehicles` VALUES ('40', 'Rumpo', 'rumpo', '15000', 'vans');
INSERT INTO `vehicles` VALUES ('41', 'Rumpo Trail', 'rumpo3', '19500', 'vans');
INSERT INTO `vehicles` VALUES ('42', 'Surfer', 'surfer', '12000', 'vans');
INSERT INTO `vehicles` VALUES ('43', 'Youga', 'youga', '10800', 'vans');
INSERT INTO `vehicles` VALUES ('44', 'Youga Luxuary', 'youga2', '14500', 'vans');
INSERT INTO `vehicles` VALUES ('45', 'Asea', 'asea', '5500', 'sedans');
INSERT INTO `vehicles` VALUES ('46', 'Cognoscenti', 'cognoscenti', '55000', 'sedans');
INSERT INTO `vehicles` VALUES ('47', 'Emperor', 'emperor', '8500', 'sedans');
INSERT INTO `vehicles` VALUES ('48', 'Fugitive', 'fugitive', '12000', 'sedans');
INSERT INTO `vehicles` VALUES ('49', 'Glendale', 'glendale', '6500', 'sedans');
INSERT INTO `vehicles` VALUES ('50', 'Intruder', 'intruder', '7500', 'sedans');
INSERT INTO `vehicles` VALUES ('51', 'Premier', 'premier', '8000', 'sedans');
INSERT INTO `vehicles` VALUES ('52', 'Primo Custom', 'primo2', '14000', 'sedans');
INSERT INTO `vehicles` VALUES ('53', 'Regina', 'regina', '5000', 'sedans');
INSERT INTO `vehicles` VALUES ('54', 'Schafter', 'schafter2', '25000', 'sedans');
INSERT INTO `vehicles` VALUES ('55', 'Stretch', 'stretch', '90000', 'sedans');
INSERT INTO `vehicles` VALUES ('56', 'Super Diamond', 'superd', '130000', 'sedans');
INSERT INTO `vehicles` VALUES ('57', 'Tailgater', 'tailgater', '30000', 'sedans');
INSERT INTO `vehicles` VALUES ('58', 'Warrener', 'warrener', '4000', 'sedans');
INSERT INTO `vehicles` VALUES ('59', 'Washington', 'washington', '9000', 'sedans');
INSERT INTO `vehicles` VALUES ('60', 'Baller', 'baller2', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('61', 'Baller Sport', 'baller3', '60000', 'suvs');
INSERT INTO `vehicles` VALUES ('62', 'Cavalcade', 'cavalcade2', '55000', 'suvs');
INSERT INTO `vehicles` VALUES ('63', 'Contender', 'contender', '70000', 'suvs');
INSERT INTO `vehicles` VALUES ('64', 'Dubsta', 'dubsta', '45000', 'suvs');
INSERT INTO `vehicles` VALUES ('65', 'Dubsta Luxuary', 'dubsta2', '60000', 'suvs');
INSERT INTO `vehicles` VALUES ('66', 'Fhantom', 'fq2', '17000', 'suvs');
INSERT INTO `vehicles` VALUES ('67', 'Grabger', 'granger', '50000', 'suvs');
INSERT INTO `vehicles` VALUES ('68', 'Gresley', 'gresley', '47500', 'suvs');
INSERT INTO `vehicles` VALUES ('69', 'Huntley S', 'huntley', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('70', 'Landstalker', 'landstalker', '35000', 'suvs');
INSERT INTO `vehicles` VALUES ('71', 'Mesa', 'mesa', '16000', 'suvs');
INSERT INTO `vehicles` VALUES ('72', 'Mesa Trail', 'mesa3', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('73', 'Patriot', 'patriot', '55000', 'suvs');
INSERT INTO `vehicles` VALUES ('74', 'Radius', 'radi', '29000', 'suvs');
INSERT INTO `vehicles` VALUES ('75', 'Rocoto', 'rocoto', '45000', 'suvs');
INSERT INTO `vehicles` VALUES ('76', 'Seminole', 'seminole', '25000', 'suvs');
INSERT INTO `vehicles` VALUES ('77', 'XLS', 'xls', '32000', 'suvs');
INSERT INTO `vehicles` VALUES ('78', 'Btype', 'btype', '62000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('79', 'Btype Luxe', 'btype3', '85000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('80', 'Btype Hotroad', 'btype2', '155000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('81', 'Casco', 'casco', '30000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('82', 'Coquette Classic', 'coquette2', '40000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('83', 'Manana', 'manana', '12800', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('84', 'Monroe', 'monroe', '55000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('85', 'Pigalle', 'pigalle', '20000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('86', 'Stinger', 'stinger', '80000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('87', 'Stinger GT', 'stingergt', '75000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('88', 'Stirling GT', 'feltzer3', '65000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('89', 'Z-Type', 'ztype', '220000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('90', 'Bifta', 'bifta', '12000', 'offroad');
INSERT INTO `vehicles` VALUES ('91', 'Bf Injection', 'bfinjection', '16000', 'offroad');
INSERT INTO `vehicles` VALUES ('92', 'Blazer', 'blazer', '6500', 'offroad');
INSERT INTO `vehicles` VALUES ('93', 'Blazer Sport', 'blazer4', '8500', 'offroad');
INSERT INTO `vehicles` VALUES ('94', 'Brawler', 'brawler', '45000', 'offroad');
INSERT INTO `vehicles` VALUES ('95', 'Bubsta 6x6', 'dubsta3', '120000', 'offroad');
INSERT INTO `vehicles` VALUES ('96', 'Dune Buggy', 'dune', '8000', 'offroad');
INSERT INTO `vehicles` VALUES ('97', 'Guardian', 'guardian', '45000', 'offroad');
INSERT INTO `vehicles` VALUES ('98', 'Rebel', 'rebel2', '35000', 'offroad');
INSERT INTO `vehicles` VALUES ('99', 'Sandking', 'sandking', '55000', 'offroad');
INSERT INTO `vehicles` VALUES ('100', 'The Liberator', 'monster', '210000', 'offroad');
INSERT INTO `vehicles` VALUES ('101', 'Trophy Truck', 'trophytruck', '60000', 'offroad');
INSERT INTO `vehicles` VALUES ('102', 'Trophy Truck Limited', 'trophytruck2', '80000', 'offroad');
INSERT INTO `vehicles` VALUES ('103', 'Cognoscenti Cabrio', 'cogcabrio', '55000', 'coupes');
INSERT INTO `vehicles` VALUES ('104', 'Exemplar', 'exemplar', '32000', 'coupes');
INSERT INTO `vehicles` VALUES ('105', 'F620', 'f620', '40000', 'coupes');
INSERT INTO `vehicles` VALUES ('106', 'Felon', 'felon', '42000', 'coupes');
INSERT INTO `vehicles` VALUES ('107', 'Felon GT', 'felon2', '55000', 'coupes');
INSERT INTO `vehicles` VALUES ('108', 'Jackal', 'jackal', '38000', 'coupes');
INSERT INTO `vehicles` VALUES ('109', 'Oracle XS', 'oracle2', '35000', 'coupes');
INSERT INTO `vehicles` VALUES ('110', 'Sentinel', 'sentinel', '32000', 'coupes');
INSERT INTO `vehicles` VALUES ('111', 'Sentinel XS', 'sentinel2', '40000', 'coupes');
INSERT INTO `vehicles` VALUES ('112', 'Windsor', 'windsor', '95000', 'coupes');
INSERT INTO `vehicles` VALUES ('113', 'Windsor Drop', 'windsor2', '125000', 'coupes');
INSERT INTO `vehicles` VALUES ('114', 'Zion', 'zion', '36000', 'coupes');
INSERT INTO `vehicles` VALUES ('115', 'Zion Cabrio', 'zion2', '45000', 'coupes');
INSERT INTO `vehicles` VALUES ('116', '9F', 'ninef', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('117', '9F Cabrio', 'ninef2', '80000', 'sports');
INSERT INTO `vehicles` VALUES ('118', 'Alpha', 'alpha', '60000', 'sports');
INSERT INTO `vehicles` VALUES ('119', 'Banshee', 'banshee', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('120', 'Bestia GTS', 'bestiagts', '55000', 'sports');
INSERT INTO `vehicles` VALUES ('121', 'Buffalo', 'buffalo', '12000', 'sports');
INSERT INTO `vehicles` VALUES ('122', 'Buffalo S', 'buffalo2', '20000', 'sports');
INSERT INTO `vehicles` VALUES ('123', 'Carbonizzare', 'carbonizzare', '75000', 'sports');
INSERT INTO `vehicles` VALUES ('124', 'Comet', 'comet2', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('125', 'Coquette', 'coquette', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('126', 'Drift Tampa', 'tampa2', '80000', 'sports');
INSERT INTO `vehicles` VALUES ('127', 'Elegy', 'elegy2', '38500', 'sports');
INSERT INTO `vehicles` VALUES ('128', 'Feltzer', 'feltzer2', '55000', 'sports');
INSERT INTO `vehicles` VALUES ('129', 'Furore GT', 'furoregt', '45000', 'sports');
INSERT INTO `vehicles` VALUES ('130', 'Fusilade', 'fusilade', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('131', 'Jester', 'jester', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('132', 'Jester(Racecar)', 'jester2', '135000', 'sports');
INSERT INTO `vehicles` VALUES ('133', 'Khamelion', 'khamelion', '38000', 'sports');
INSERT INTO `vehicles` VALUES ('134', 'Kuruma', 'kuruma', '30000', 'sports');
INSERT INTO `vehicles` VALUES ('135', 'Lynx', 'lynx', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('136', 'Mamba', 'mamba', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('137', 'Massacro', 'massacro', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('138', 'Massacro(Racecar)', 'massacro2', '130000', 'sports');
INSERT INTO `vehicles` VALUES ('139', 'Omnis', 'omnis', '35000', 'sports');
INSERT INTO `vehicles` VALUES ('140', 'Penumbra', 'penumbra', '28000', 'sports');
INSERT INTO `vehicles` VALUES ('141', 'Rapid GT', 'rapidgt', '35000', 'sports');
INSERT INTO `vehicles` VALUES ('142', 'Rapid GT Convertible', 'rapidgt2', '45000', 'sports');
INSERT INTO `vehicles` VALUES ('143', 'Schafter V12', 'schafter3', '50000', 'sports');
INSERT INTO `vehicles` VALUES ('144', 'Seven 70', 'seven70', '39500', 'sports');
INSERT INTO `vehicles` VALUES ('145', 'Sultan', 'sultan', '15000', 'sports');
INSERT INTO `vehicles` VALUES ('146', 'Surano', 'surano', '50000', 'sports');
INSERT INTO `vehicles` VALUES ('147', 'Tropos', 'tropos', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('148', 'Verlierer', 'verlierer2', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('149', 'Adder', 'adder', '900000', 'super');
INSERT INTO `vehicles` VALUES ('150', 'Banshee 900R', 'banshee2', '255000', 'super');
INSERT INTO `vehicles` VALUES ('151', 'Bullet', 'bullet', '90000', 'super');
INSERT INTO `vehicles` VALUES ('152', 'Cheetah', 'cheetah', '375000', 'super');
INSERT INTO `vehicles` VALUES ('153', 'Entity XF', 'entityxf', '425000', 'super');
INSERT INTO `vehicles` VALUES ('154', 'ETR1', 'sheava', '220000', 'super');
INSERT INTO `vehicles` VALUES ('155', 'FMJ', 'fmj', '185000', 'super');
INSERT INTO `vehicles` VALUES ('156', 'Infernus', 'infernus', '180000', 'super');
INSERT INTO `vehicles` VALUES ('157', 'Osiris', 'osiris', '160000', 'super');
INSERT INTO `vehicles` VALUES ('158', 'Pfister', 'pfister811', '85000', 'super');
INSERT INTO `vehicles` VALUES ('159', 'RE-7B', 'le7b', '325000', 'super');
INSERT INTO `vehicles` VALUES ('160', 'Reaper', 'reaper', '150000', 'super');
INSERT INTO `vehicles` VALUES ('161', 'Sultan RS', 'sultanrs', '65000', 'super');
INSERT INTO `vehicles` VALUES ('162', 'T20', 't20', '300000', 'super');
INSERT INTO `vehicles` VALUES ('163', 'Turismo R', 'turismor', '350000', 'super');
INSERT INTO `vehicles` VALUES ('164', 'Tyrus', 'tyrus', '600000', 'super');
INSERT INTO `vehicles` VALUES ('165', 'Vacca', 'vacca', '120000', 'super');
INSERT INTO `vehicles` VALUES ('166', 'Voltic', 'voltic', '90000', 'super');
INSERT INTO `vehicles` VALUES ('167', 'X80 Proto', 'prototipo', '2500000', 'super');
INSERT INTO `vehicles` VALUES ('168', 'Zentorno', 'zentorno', '1500000', 'super');
INSERT INTO `vehicles` VALUES ('169', 'Akuma', 'AKUMA', '7500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('170', 'Avarus', 'avarus', '18000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('171', 'Bagger', 'bagger', '13500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('172', 'Bati 801', 'bati', '12000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('173', 'Bati 801RR', 'bati2', '19000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('174', 'BF400', 'bf400', '6500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('175', 'BMX (velo)', 'bmx', '160', 'motorcycles');
INSERT INTO `vehicles` VALUES ('176', 'Carbon RS', 'carbonrs', '18000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('177', 'Chimera', 'chimera', '38000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('178', 'Cliffhanger', 'cliffhanger', '9500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('179', 'Cruiser (velo)', 'cruiser', '510', 'motorcycles');
INSERT INTO `vehicles` VALUES ('180', 'Daemon', 'daemon', '11500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('181', 'Daemon High', 'daemon2', '13500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('182', 'Defiler', 'defiler', '9800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('183', 'Double T', 'double', '28000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('184', 'Enduro', 'enduro', '5500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('185', 'Esskey', 'esskey', '4200', 'motorcycles');
INSERT INTO `vehicles` VALUES ('186', 'Faggio', 'faggio', '1900', 'motorcycles');
INSERT INTO `vehicles` VALUES ('187', 'Vespa', 'faggio2', '2800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('188', 'Fixter (velo)', 'fixter', '225', 'motorcycles');
INSERT INTO `vehicles` VALUES ('189', 'Gargoyle', 'gargoyle', '16500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('190', 'Hakuchou', 'hakuchou', '31000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('191', 'Hakuchou Sport', 'hakuchou2', '55000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('192', 'Hexer', 'hexer', '12000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('193', 'Innovation', 'innovation', '23500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('194', 'Manchez', 'manchez', '5300', 'motorcycles');
INSERT INTO `vehicles` VALUES ('195', 'Nemesis', 'nemesis', '5800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('196', 'Nightblade', 'nightblade', '35000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('197', 'PCJ-600', 'pcj', '6200', 'motorcycles');
INSERT INTO `vehicles` VALUES ('198', 'Ruffian', 'ruffian', '6800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('199', 'Sanchez', 'sanchez', '5300', 'motorcycles');
INSERT INTO `vehicles` VALUES ('200', 'Sanchez Sport', 'sanchez2', '5300', 'motorcycles');
INSERT INTO `vehicles` VALUES ('201', 'Sanctus', 'sanctus', '25000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('202', 'Scorcher (velo)', 'scorcher', '280', 'motorcycles');
INSERT INTO `vehicles` VALUES ('203', 'Sovereign', 'sovereign', '22000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('204', 'Shotaro Concept', 'shotaro', '320000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('205', 'Thrust', 'thrust', '24000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('206', 'Tri bike (velo)', 'tribike3', '520', 'motorcycles');
INSERT INTO `vehicles` VALUES ('207', 'Vader', 'vader', '7200', 'motorcycles');
INSERT INTO `vehicles` VALUES ('208', 'Vortex', 'vortex', '9800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('209', 'Woflsbane', 'wolfsbane', '9000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('210', 'Zombie', 'zombiea', '9500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('211', 'Zombie Luxuary', 'zombieb', '12000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('212', 'Deluxo', 'Deluxo', '50', 'test');
INSERT INTO `vehicles` VALUES ('213', 'Oppressor', 'Oppressor', '50', 'test');

-- ----------------------------
-- Table structure for `vehicle_categories`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_categories
-- ----------------------------
INSERT INTO `vehicle_categories` VALUES ('1', 'compacts', 'Compacts');
INSERT INTO `vehicle_categories` VALUES ('2', 'coupes', 'Coupés');
INSERT INTO `vehicle_categories` VALUES ('3', 'sedans', 'Sedans');
INSERT INTO `vehicle_categories` VALUES ('4', 'sports', 'Sports');
INSERT INTO `vehicle_categories` VALUES ('5', 'sportsclassics', 'Sports Classics');
INSERT INTO `vehicle_categories` VALUES ('6', 'super', 'Super');
INSERT INTO `vehicle_categories` VALUES ('7', 'muscle', 'Muscle');
INSERT INTO `vehicle_categories` VALUES ('8', 'offroad', 'Off Road');
INSERT INTO `vehicle_categories` VALUES ('9', 'suvs', 'SUVs');
INSERT INTO `vehicle_categories` VALUES ('10', 'vans', 'Vans');
INSERT INTO `vehicle_categories` VALUES ('11', 'motorcycles', 'Motos');
INSERT INTO `vehicle_categories` VALUES ('12', 'test', 'test');

-- ----------------------------
-- Table structure for `vehicle_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_inventory`;
CREATE TABLE `vehicle_inventory` (
  `plate` varchar(50) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `weedshops`
-- ----------------------------
DROP TABLE IF EXISTS `weedshops`;
CREATE TABLE `weedshops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weedshops
-- ----------------------------
INSERT INTO `weedshops` VALUES ('1', 'weedsel', 'weed_licence', '35000');
INSERT INTO `weedshops` VALUES ('2', 'methsel', 'meth_licence', '45000');
INSERT INTO `weedshops` VALUES ('3', 'cocksel', 'cock_licence', '55000');
INSERT INTO `weedshops` VALUES ('4', 'infosel', 'tracker', '40000');
INSERT INTO `weedshops` VALUES ('5', 'infosel', 'cerflex', '75');
INSERT INTO `weedshops` VALUES ('6', 'infosel', 'pince', '85');
INSERT INTO `weedshops` VALUES ('7', 'infosel', 'gps', '5500');

-- ----------------------------
-- Table structure for `whitelist`
-- ----------------------------
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE `whitelist` (
  `identifier` varchar(70) NOT NULL,
  `last_connecion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ban_reason` text,
  `ban_until` timestamp NULL DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of whitelist
-- ----------------------------
INSERT INTO `whitelist` VALUES ('steam:1100001081ca641', '2018-05-07 03:47:27', null, null, '1');
