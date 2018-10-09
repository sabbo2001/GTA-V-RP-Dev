/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : essentialmode

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-10-09 11:59:16
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_account
-- ----------------------------
INSERT INTO `addon_account` VALUES ('1', 'society_ambulance', 'Ambulance', '1');
INSERT INTO `addon_account` VALUES ('2', 'caution', 'Caution', '0');
INSERT INTO `addon_account` VALUES ('3', 'property_black_money', 'Argent Sale Propriété', '1');
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
INSERT INTO `addon_account` VALUES ('42', 'society_thelostmc', 'TheLostMC', '1');
INSERT INTO `addon_account` VALUES ('44', 'society_boulanger', 'Boulanger', '1');
INSERT INTO `addon_account` VALUES ('49', 'society_bucheron', 'bucherons', '1');
INSERT INTO `addon_account` VALUES ('51', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_account` VALUES ('54', 'society_tabac', 'tabac', '1');
INSERT INTO `addon_account` VALUES ('56', 'society_mineur', 'mineur', '1');
INSERT INTO `addon_account` VALUES ('59', 'society_cardealer', 'Concessionnaire', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_account_data
-- ----------------------------
INSERT INTO `addon_account_data` VALUES ('1', 'society_police', '501100', null);
INSERT INTO `addon_account_data` VALUES ('2', 'society_mecano', '90681709', null);
INSERT INTO `addon_account_data` VALUES ('3', 'society_realestateagent', '1035500', null);
INSERT INTO `addon_account_data` VALUES ('10', 'society_dock', '500000', null);
INSERT INTO `addon_account_data` VALUES ('11', 'society_foodtruck', '500000', null);
INSERT INTO `addon_account_data` VALUES ('12', 'society_gouv', '500000', null);
INSERT INTO `addon_account_data` VALUES ('13', 'society_ambulance', '500000', null);
INSERT INTO `addon_account_data` VALUES ('14', 'society_cardealer', '500000', null);
INSERT INTO `addon_account_data` VALUES ('15', 'society_taxi', '500000', null);
INSERT INTO `addon_account_data` VALUES ('16', 'society_vigne', '501106', null);
INSERT INTO `addon_account_data` VALUES ('17', 'society_minage', '500000', null);
INSERT INTO `addon_account_data` VALUES ('18', 'property_black_money', '500000', 'steam:1100001081ca641');
INSERT INTO `addon_account_data` VALUES ('19', 'caution', '0', 'steam:1100001081ca641');
INSERT INTO `addon_account_data` VALUES ('20', 'society_unicorn', '500000', null);
INSERT INTO `addon_account_data` VALUES ('21', 'society_aircraftdealer', '500000', null);
INSERT INTO `addon_account_data` VALUES ('22', 'society_gouvernor', '500000', null);
INSERT INTO `addon_account_data` VALUES ('23', 'society_karting', '500000', null);
INSERT INTO `addon_account_data` VALUES ('24', 'society_pompiste', '500100', null);
INSERT INTO `addon_account_data` VALUES ('516', 'caution', '0', 'steam:11000010bf1d422');
INSERT INTO `addon_account_data` VALUES ('517', 'caution', '0', 'steam:110000104241d07');
INSERT INTO `addon_account_data` VALUES ('519', 'society_thelostmc', '4200', null);
INSERT INTO `addon_account_data` VALUES ('521', 'society_boulanger', '53000', '');
INSERT INTO `addon_account_data` VALUES ('523', 'caution', '0', 'steam:110000118174a89');
INSERT INTO `addon_account_data` VALUES ('524', 'caution', '0', 'steam:1100001131dfe30');
INSERT INTO `addon_account_data` VALUES ('525', 'caution', '0', 'steam:1100001155676a1');
INSERT INTO `addon_account_data` VALUES ('526', 'caution', '0', 'steam:1100001080d2eac');
INSERT INTO `addon_account_data` VALUES ('527', 'society_bucheron', '103530', '');
INSERT INTO `addon_account_data` VALUES ('528', 'caution', '0', 'steam:11000011af99e80');
INSERT INTO `addon_account_data` VALUES ('529', 'caution', '0', 'steam:11000011d47a3e9');
INSERT INTO `addon_account_data` VALUES ('530', 'caution', '0', 'steam:1100001197657ba');
INSERT INTO `addon_account_data` VALUES ('531', 'caution', '0', 'steam:110000106008986');
INSERT INTO `addon_account_data` VALUES ('532', 'caution', '0', 'steam:110000134dc2aa9');
INSERT INTO `addon_account_data` VALUES ('533', 'caution', '0', 'steam:110000107488f5d');
INSERT INTO `addon_account_data` VALUES ('534', 'caution', '0', 'steam:11000010dd5edad');
INSERT INTO `addon_account_data` VALUES ('535', 'caution', '0', 'steam:110000108762d64');
INSERT INTO `addon_account_data` VALUES ('536', 'caution', '0', 'steam:11000010d853f55');
INSERT INTO `addon_account_data` VALUES ('537', 'caution', '0', 'steam:110000105f29a1c');
INSERT INTO `addon_account_data` VALUES ('538', 'caution', '0', 'steam:110000119ed79e9');
INSERT INTO `addon_account_data` VALUES ('539', 'caution', '0', 'steam:1100001356edd90');
INSERT INTO `addon_account_data` VALUES ('540', 'caution', '0', 'steam:11000010bc1a7fa');
INSERT INTO `addon_account_data` VALUES ('541', 'caution', '0', 'steam:1100001080e2950');
INSERT INTO `addon_account_data` VALUES ('542', 'caution', '0', 'steam:110000117123f36');
INSERT INTO `addon_account_data` VALUES ('543', 'caution', '0', 'steam:1100001329a0c01');
INSERT INTO `addon_account_data` VALUES ('544', 'caution', '0', 'steam:1100001137fc9b0');
INSERT INTO `addon_account_data` VALUES ('545', 'society_tabac', '1006200', null);
INSERT INTO `addon_account_data` VALUES ('546', 'society_mineur', '500000', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addon_inventory
-- ----------------------------
INSERT INTO `addon_inventory` VALUES ('1', 'property', 'Propriété', '0');
INSERT INTO `addon_inventory` VALUES ('7', 'society_police', 'Police', '1');
INSERT INTO `addon_inventory` VALUES ('8', 'society_mecano', 'Mécano', '1');
INSERT INTO `addon_inventory` VALUES ('10', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_inventory` VALUES ('11', 'society_dock', 'Marina', '1');
INSERT INTO `addon_inventory` VALUES ('13', 'society_vigne', 'Vigneron', '1');
INSERT INTO `addon_inventory` VALUES ('20', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `addon_inventory` VALUES ('21', 'society_unicorn_fridge', 'Unicorn (frigo)', '1');
INSERT INTO `addon_inventory` VALUES ('22', 'society_aircraftdealer', 'Airliner', '1');
INSERT INTO `addon_inventory` VALUES ('23', 'society_gouvernor', 'Gouvernement', '1');
INSERT INTO `addon_inventory` VALUES ('28', 'society_peche', 'Pecheur', '1');
INSERT INTO `addon_inventory` VALUES ('29', 'society_pompiste', 'Pompiste', '1');
INSERT INTO `addon_inventory` VALUES ('30', 'society_ambulance', 'Ambulancier', '1');
INSERT INTO `addon_inventory` VALUES ('33', 'society_thelostmc', 'TheLostMC', '1');
INSERT INTO `addon_inventory` VALUES ('34', 'society_brinksjobs', 'Brinks', '1');
INSERT INTO `addon_inventory` VALUES ('35', 'society_boulanger', 'Boulanger', '1');
INSERT INTO `addon_inventory` VALUES ('40', 'society_bucheron', 'Bucherons', '1');
INSERT INTO `addon_inventory` VALUES ('42', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_inventory` VALUES ('45', 'society_tabac', 'tabac', '1');
INSERT INTO `addon_inventory` VALUES ('47', 'society_mineur', 'mineur', '1');
INSERT INTO `addon_inventory` VALUES ('50', 'society_cardealer', 'Concesionnaire', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
INSERT INTO `addon_inventory_items` VALUES ('29', 'society_thelostmc', 'burger', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('30', 'society_boulanger', 'burger', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('32', 'society_bucherons', 'cigarett', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('33', 'society_bucheron', 'burger', '2', null);
INSERT INTO `addon_inventory_items` VALUES ('34', 'society_tabac', 'bandage', '1', null);
INSERT INTO `addon_inventory_items` VALUES ('35', 'property', 'blowpipe', '1', 'steam:1100001081ca641');
INSERT INTO `addon_inventory_items` VALUES ('36', 'society_mineur', 'burger', '2', null);
INSERT INTO `addon_inventory_items` VALUES ('37', 'society_tabac', 'wood', '3', null);
INSERT INTO `addon_inventory_items` VALUES ('38', 'society_bucheron', 'chocolate', '1', null);

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
-- Table structure for `cardealer_vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cardealer_vehicles
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
INSERT INTO `characters` VALUES ('steam:110000104241d07', 'Martina', 'Winters', '1995-03-15', 'f', '178');
INSERT INTO `characters` VALUES ('steam:110000118174a89', 'Ivo', 'CGW', '2002-01-17', 'm', '180');
INSERT INTO `characters` VALUES ('steam:1100001131dfe30', 'Oliwer', 'Dziamski', '1980/07/23', 'm', '150');
INSERT INTO `characters` VALUES ('steam:11000011af99e80', 'Khalil', 'Abbadi', '1998/20/12', 'm', '180');
INSERT INTO `characters` VALUES ('steam:11000011d47a3e9', 'Matt', 'Plaka', '1993/1/16', 'm', '160');
INSERT INTO `characters` VALUES ('steam:110000106008986', 'Dude', 'The Dude', '14-4-1982', 'm', '199');
INSERT INTO `characters` VALUES ('steam:110000107488f5d', 'Jeff', 'Goodman', '1994 12 6', 'm', '172');
INSERT INTO `characters` VALUES ('steam:110000108762d64', 'Durk', 'Swagger', '1-1-1985', 'm', '195');
INSERT INTO `characters` VALUES ('steam:11000010d853f55', 'Aurora', 'Wilkes', '1998/12/12', 'f', '160');
INSERT INTO `characters` VALUES ('steam:110000105f29a1c', 'Denis', 'Mehmed', '2000-03-25', 'm', '180');
INSERT INTO `characters` VALUES ('steam:1100001356edd90', 'Rhys', 'Briscoe', '1999-08-28', 'm', '200');
INSERT INTO `characters` VALUES ('steam:11000010bc1a7fa', 'Gif', 'Dad', '19940421', 'm', '175');
INSERT INTO `characters` VALUES ('steam:1100001080e2950', 'Bill', 'Nye', '(1980,11,27)', 'm', '160');
INSERT INTO `characters` VALUES ('steam:110000117123f36', 'Jake', 'Moss', '1996/12/5', 'm', '177');
INSERT INTO `characters` VALUES ('steam:1100001329a0c01', 'Comando', 'Bear', '1995,01,04', 'm', '173');
INSERT INTO `characters` VALUES ('steam:1100001137fc9b0', 'Nikol', 'Kuken', '13121994', 'm', '177');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datastore
-- ----------------------------
INSERT INTO `datastore` VALUES ('1', 'property', 'Propriété', '1');
INSERT INTO `datastore` VALUES ('2', 'society_police', 'Police', '1');
INSERT INTO `datastore` VALUES ('3', 'user_mask', 'Masque', '1');
INSERT INTO `datastore` VALUES ('4', 'society_police', 'Police', '1');
INSERT INTO `datastore` VALUES ('5', 'society_vigne', 'Vigneron', '1');
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
INSERT INTO `datastore` VALUES ('22', 'society_thelostmc', 'TheLostMC', '1');
INSERT INTO `datastore` VALUES ('23', 'society_boulanger', 'Boulanger', '1');
INSERT INTO `datastore` VALUES ('28', 'society_bucheron', 'Bucherons', '1');
INSERT INTO `datastore` VALUES ('29', 'society_taxi', 'Taxi', '1');
INSERT INTO `datastore` VALUES ('30', 'society_tabac', 'tabac', '1');
INSERT INTO `datastore` VALUES ('31', 'society_mineur', 'mineur', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

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
INSERT INTO `datastore_data` VALUES ('69', 'user_glasses', 'steam:110000104241d07', '{}');
INSERT INTO `datastore_data` VALUES ('70', 'user_mask', 'steam:110000104241d07', '{}');
INSERT INTO `datastore_data` VALUES ('71', 'user_helmet', 'steam:110000104241d07', '{}');
INSERT INTO `datastore_data` VALUES ('72', 'user_ears', 'steam:110000104241d07', '{}');
INSERT INTO `datastore_data` VALUES ('73', 'society_lumberjack', null, '{}');
INSERT INTO `datastore_data` VALUES ('74', 'society_thelostmc', null, '{\"garage\":[],\"weapons\":[{\"count\":1,\"name\":\"WEAPON_KNIFE\"}]}');
INSERT INTO `datastore_data` VALUES ('75', 'society_boulanger', null, '{}');
INSERT INTO `datastore_data` VALUES ('76', 'society_bucherons', null, '{\"garage\":[{\"modSpeakers\":-1,\"modHood\":-1,\"plateIndex\":3,\"modWindows\":-1,\"modDashboard\":-1,\"color1\":4,\"modDial\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"dirtLevel\":7.1325092315674,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"plate\":\"45NHX858\",\"modTurbo\":false,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"color2\":0,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"model\":-1776615689,\"modLivery\":-1,\"modRightFender\":-1,\"modXenon\":false,\"wheelColor\":156,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modHorns\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modBrakes\":-1,\"health\":993,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"pearlescentColor\":111,\"wheels\":1,\"modExhaust\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modTank\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"modTrimA\":-1},{\"modSpeakers\":-1,\"wheelColor\":156,\"plateIndex\":0,\"modWindows\":-1,\"modDashboard\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modSmokeEnabled\":1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modAerials\":-1,\"color1\":100,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modOrnaments\":-1,\"plate\":\"86MAI446\",\"modTurbo\":false,\"neonColor\":[255,0,255],\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"color2\":1,\"modLivery\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modTransmission\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modHorns\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modBrakes\":-1,\"model\":1475773103,\"modEngineBlock\":-1,\"windowTint\":-1,\"health\":1000,\"modAirFilter\":-1,\"modHood\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"pearlescentColor\":1,\"wheels\":1,\"modExhaust\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"dirtLevel\":5.4831562042236,\"modTank\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"modFrontBumper\":-1}]}');
INSERT INTO `datastore_data` VALUES ('77', 'user_mask', 'steam:110000118174a89', '{}');
INSERT INTO `datastore_data` VALUES ('78', 'user_helmet', 'steam:110000118174a89', '{}');
INSERT INTO `datastore_data` VALUES ('79', 'user_glasses', 'steam:110000118174a89', '{}');
INSERT INTO `datastore_data` VALUES ('80', 'user_ears', 'steam:110000118174a89', '{}');
INSERT INTO `datastore_data` VALUES ('81', 'user_helmet', 'steam:1100001131dfe30', '{}');
INSERT INTO `datastore_data` VALUES ('82', 'user_glasses', 'steam:1100001131dfe30', '{}');
INSERT INTO `datastore_data` VALUES ('83', 'user_mask', 'steam:1100001131dfe30', '{}');
INSERT INTO `datastore_data` VALUES ('84', 'user_ears', 'steam:1100001131dfe30', '{}');
INSERT INTO `datastore_data` VALUES ('85', 'user_mask', 'steam:1100001155676a1', '{}');
INSERT INTO `datastore_data` VALUES ('86', 'user_glasses', 'steam:1100001155676a1', '{}');
INSERT INTO `datastore_data` VALUES ('87', 'user_ears', 'steam:1100001155676a1', '{}');
INSERT INTO `datastore_data` VALUES ('88', 'user_helmet', 'steam:1100001155676a1', '{}');
INSERT INTO `datastore_data` VALUES ('89', 'society_bucheron', null, '{}');
INSERT INTO `datastore_data` VALUES ('90', 'user_ears', 'steam:11000011af99e80', '{}');
INSERT INTO `datastore_data` VALUES ('91', 'user_mask', 'steam:11000011af99e80', '{}');
INSERT INTO `datastore_data` VALUES ('92', 'user_helmet', 'steam:11000011af99e80', '{}');
INSERT INTO `datastore_data` VALUES ('93', 'user_glasses', 'steam:11000011af99e80', '{}');
INSERT INTO `datastore_data` VALUES ('94', 'user_glasses', 'steam:11000011d47a3e9', '{}');
INSERT INTO `datastore_data` VALUES ('95', 'user_helmet', 'steam:11000011d47a3e9', '{}');
INSERT INTO `datastore_data` VALUES ('96', 'user_mask', 'steam:11000011d47a3e9', '{}');
INSERT INTO `datastore_data` VALUES ('97', 'user_ears', 'steam:11000011d47a3e9', '{}');
INSERT INTO `datastore_data` VALUES ('98', 'user_ears', 'steam:1100001197657ba', '{}');
INSERT INTO `datastore_data` VALUES ('99', 'user_helmet', 'steam:1100001197657ba', '{}');
INSERT INTO `datastore_data` VALUES ('100', 'user_glasses', 'steam:1100001197657ba', '{}');
INSERT INTO `datastore_data` VALUES ('101', 'user_mask', 'steam:1100001197657ba', '{}');
INSERT INTO `datastore_data` VALUES ('102', 'user_ears', 'steam:110000106008986', '{}');
INSERT INTO `datastore_data` VALUES ('103', 'user_glasses', 'steam:110000106008986', '{}');
INSERT INTO `datastore_data` VALUES ('104', 'user_mask', 'steam:110000106008986', '{}');
INSERT INTO `datastore_data` VALUES ('105', 'user_helmet', 'steam:110000106008986', '{}');
INSERT INTO `datastore_data` VALUES ('106', 'user_mask', 'steam:110000134dc2aa9', '{}');
INSERT INTO `datastore_data` VALUES ('107', 'user_helmet', 'steam:110000134dc2aa9', '{}');
INSERT INTO `datastore_data` VALUES ('108', 'user_glasses', 'steam:110000134dc2aa9', '{}');
INSERT INTO `datastore_data` VALUES ('109', 'user_ears', 'steam:110000134dc2aa9', '{}');
INSERT INTO `datastore_data` VALUES ('110', 'user_mask', 'steam:110000107488f5d', '{}');
INSERT INTO `datastore_data` VALUES ('111', 'user_helmet', 'steam:110000107488f5d', '{}');
INSERT INTO `datastore_data` VALUES ('112', 'user_ears', 'steam:110000107488f5d', '{}');
INSERT INTO `datastore_data` VALUES ('113', 'user_glasses', 'steam:110000107488f5d', '{}');
INSERT INTO `datastore_data` VALUES ('114', 'user_helmet', 'steam:11000010dd5edad', '{}');
INSERT INTO `datastore_data` VALUES ('115', 'user_mask', 'steam:11000010dd5edad', '{}');
INSERT INTO `datastore_data` VALUES ('116', 'user_glasses', 'steam:11000010dd5edad', '{}');
INSERT INTO `datastore_data` VALUES ('117', 'user_ears', 'steam:11000010dd5edad', '{}');
INSERT INTO `datastore_data` VALUES ('118', 'society_taxi', null, '{}');
INSERT INTO `datastore_data` VALUES ('119', 'user_mask', 'steam:110000108762d64', '{}');
INSERT INTO `datastore_data` VALUES ('120', 'user_glasses', 'steam:110000108762d64', '{}');
INSERT INTO `datastore_data` VALUES ('121', 'user_helmet', 'steam:110000108762d64', '{}');
INSERT INTO `datastore_data` VALUES ('122', 'user_ears', 'steam:110000108762d64', '{}');
INSERT INTO `datastore_data` VALUES ('123', 'user_ears', 'steam:11000010d853f55', '{}');
INSERT INTO `datastore_data` VALUES ('124', 'user_glasses', 'steam:11000010d853f55', '{}');
INSERT INTO `datastore_data` VALUES ('125', 'user_helmet', 'steam:11000010d853f55', '{}');
INSERT INTO `datastore_data` VALUES ('126', 'user_mask', 'steam:11000010d853f55', '{}');
INSERT INTO `datastore_data` VALUES ('127', 'user_glasses', 'steam:110000105f29a1c', '{}');
INSERT INTO `datastore_data` VALUES ('128', 'user_mask', 'steam:110000105f29a1c', '{}');
INSERT INTO `datastore_data` VALUES ('129', 'user_helmet', 'steam:110000105f29a1c', '{}');
INSERT INTO `datastore_data` VALUES ('130', 'user_ears', 'steam:110000105f29a1c', '{}');
INSERT INTO `datastore_data` VALUES ('131', 'user_helmet', 'steam:110000119ed79e9', '{}');
INSERT INTO `datastore_data` VALUES ('132', 'user_glasses', 'steam:110000119ed79e9', '{}');
INSERT INTO `datastore_data` VALUES ('133', 'user_mask', 'steam:110000119ed79e9', '{}');
INSERT INTO `datastore_data` VALUES ('134', 'user_ears', 'steam:110000119ed79e9', '{}');
INSERT INTO `datastore_data` VALUES ('135', 'user_helmet', 'steam:1100001356edd90', '{}');
INSERT INTO `datastore_data` VALUES ('136', 'user_glasses', 'steam:1100001356edd90', '{}');
INSERT INTO `datastore_data` VALUES ('137', 'user_mask', 'steam:1100001356edd90', '{}');
INSERT INTO `datastore_data` VALUES ('138', 'user_ears', 'steam:1100001356edd90', '{}');
INSERT INTO `datastore_data` VALUES ('139', 'user_helmet', 'steam:11000010bc1a7fa', '{}');
INSERT INTO `datastore_data` VALUES ('140', 'user_mask', 'steam:11000010bc1a7fa', '{}');
INSERT INTO `datastore_data` VALUES ('141', 'user_glasses', 'steam:11000010bc1a7fa', '{}');
INSERT INTO `datastore_data` VALUES ('142', 'user_ears', 'steam:11000010bc1a7fa', '{}');
INSERT INTO `datastore_data` VALUES ('143', 'user_helmet', 'steam:1100001080e2950', '{}');
INSERT INTO `datastore_data` VALUES ('144', 'user_mask', 'steam:1100001080e2950', '{}');
INSERT INTO `datastore_data` VALUES ('145', 'user_glasses', 'steam:1100001080e2950', '{}');
INSERT INTO `datastore_data` VALUES ('146', 'user_ears', 'steam:1100001080e2950', '{}');
INSERT INTO `datastore_data` VALUES ('147', 'user_ears', 'steam:110000117123f36', '{}');
INSERT INTO `datastore_data` VALUES ('148', 'user_mask', 'steam:110000117123f36', '{}');
INSERT INTO `datastore_data` VALUES ('149', 'user_glasses', 'steam:110000117123f36', '{}');
INSERT INTO `datastore_data` VALUES ('150', 'user_helmet', 'steam:110000117123f36', '{}');
INSERT INTO `datastore_data` VALUES ('151', 'user_ears', 'steam:1100001329a0c01', '{}');
INSERT INTO `datastore_data` VALUES ('152', 'user_glasses', 'steam:1100001329a0c01', '{}');
INSERT INTO `datastore_data` VALUES ('153', 'user_mask', 'steam:1100001329a0c01', '{}');
INSERT INTO `datastore_data` VALUES ('154', 'user_helmet', 'steam:1100001329a0c01', '{}');
INSERT INTO `datastore_data` VALUES ('155', 'user_helmet', 'steam:1100001137fc9b0', '{}');
INSERT INTO `datastore_data` VALUES ('156', 'user_ears', 'steam:1100001137fc9b0', '{}');
INSERT INTO `datastore_data` VALUES ('157', 'user_glasses', 'steam:1100001137fc9b0', '{}');
INSERT INTO `datastore_data` VALUES ('158', 'user_mask', 'steam:1100001137fc9b0', '{}');
INSERT INTO `datastore_data` VALUES ('159', 'society_tabac', null, '{}');
INSERT INTO `datastore_data` VALUES ('160', 'society_mineur', null, '{\"garage\":[{\"modSeats\":-1,\"modFrontBumper\":-1,\"modTurbo\":1,\"plateIndex\":5,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":47,\"color2\":23,\"modDashboard\":-1,\"modVanityPlate\":-1,\"modWindows\":-1,\"modFender\":-1,\"modEngine\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"windowTint\":-1,\"modStruts\":-1,\"modXenon\":1,\"modOrnaments\":-1,\"modHood\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"plate\":\" PRESSM \",\"modAPlate\":-1,\"model\":48339065,\"modTank\":-1,\"modFrontWheels\":-1,\"wheels\":0,\"modBrakes\":-1,\"pearlescentColor\":105,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"dirtLevel\":11.357892990112,\"modEngineBlock\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"neonColor\":[255,0,255],\"modShifterLeavers\":-1,\"modDial\":-1,\"modAirFilter\":-1,\"health\":918,\"modSuspension\":-1,\"wheelColor\":156,\"modRightFender\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1}]}');

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
INSERT INTO `essence` VALUES ('2', '920');
INSERT INTO `essence` VALUES ('3', '858');
INSERT INTO `essence` VALUES ('4', '832');
INSERT INTO `essence` VALUES ('5', '846');
INSERT INTO `essence` VALUES ('6', '844');
INSERT INTO `essence` VALUES ('7', '953');
INSERT INTO `essence` VALUES ('8', '1000');
INSERT INTO `essence` VALUES ('9', '907');
INSERT INTO `essence` VALUES ('10', '1000');
INSERT INTO `essence` VALUES ('11', '952');
INSERT INTO `essence` VALUES ('12', '891');
INSERT INTO `essence` VALUES ('13', '1000');
INSERT INTO `essence` VALUES ('14', '973');
INSERT INTO `essence` VALUES ('15', '1000');
INSERT INTO `essence` VALUES ('16', '1000');
INSERT INTO `essence` VALUES ('17', '970');
INSERT INTO `essence` VALUES ('18', '1000');
INSERT INTO `essence` VALUES ('19', '1000');
INSERT INTO `essence` VALUES ('20', '924');
INSERT INTO `essence` VALUES ('21', '867');
INSERT INTO `essence` VALUES ('22', '962');
INSERT INTO `essence` VALUES ('23', '962');
INSERT INTO `essence` VALUES ('24', '1000');
INSERT INTO `essence` VALUES ('25', '1000');
INSERT INTO `essence` VALUES ('26', '961');
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
-- Table structure for `fine_types_thelostmc`
-- ----------------------------
DROP TABLE IF EXISTS `fine_types_thelostmc`;
CREATE TABLE `fine_types_thelostmc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of fine_types_thelostmc
-- ----------------------------
INSERT INTO `fine_types_thelostmc` VALUES ('1', 'Raket', '3000', '0');
INSERT INTO `fine_types_thelostmc` VALUES ('2', 'Raket', '5000', '0');
INSERT INTO `fine_types_thelostmc` VALUES ('3', 'Raket', '10000', '1');
INSERT INTO `fine_types_thelostmc` VALUES ('4', 'Raket', '20000', '1');
INSERT INTO `fine_types_thelostmc` VALUES ('5', 'Raket', '50000', '2');
INSERT INTO `fine_types_thelostmc` VALUES ('6', 'Raket', '150000', '3');
INSERT INTO `fine_types_thelostmc` VALUES ('7', 'Raket', '350000', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'bandage', 'Bandage', '20', '0', '1');
INSERT INTO `items` VALUES ('2', 'medikit', 'Medikit', '10', '0', '1');
INSERT INTO `items` VALUES ('3', 'weed', 'Weed', '100', '0', '1');
INSERT INTO `items` VALUES ('4', 'weed_pooch', 'Pochon de weed', '100', '0', '1');
INSERT INTO `items` VALUES ('5', 'coke', 'Coke', '100', '0', '1');
INSERT INTO `items` VALUES ('6', 'coke_pooch', 'Pochon de coke', '100', '0', '1');
INSERT INTO `items` VALUES ('7', 'meth', 'Meth', '100', '0', '1');
INSERT INTO `items` VALUES ('8', 'meth_pooch', 'Pochon de meth', '100', '0', '1');
INSERT INTO `items` VALUES ('9', 'opium', 'Opium', '100', '0', '1');
INSERT INTO `items` VALUES ('10', 'opium_pooch', 'Pochon de opium', '100', '0', '1');
INSERT INTO `items` VALUES ('11', 'alive_chicken', 'Poulet vivant', '100', '0', '1');
INSERT INTO `items` VALUES ('12', 'slaughtered_chicken', 'Poulet abattu', '100', '0', '1');
INSERT INTO `items` VALUES ('13', 'packaged_chicken', 'Poulet en barquette', '100', '0', '1');
INSERT INTO `items` VALUES ('14', 'fish', 'Poisson', '100', '0', '1');
INSERT INTO `items` VALUES ('15', 'stone', 'Pierre', '100', '0', '1');
INSERT INTO `items` VALUES ('19', 'petrol', 'Pétrole', '5000', '0', '1');
INSERT INTO `items` VALUES ('20', 'petrol_raffin', 'Pétrole Raffiné', '10000', '0', '1');
INSERT INTO `items` VALUES ('21', 'fuel', 'Essence', '10000', '0', '1');
INSERT INTO `items` VALUES ('22', 'whool', 'Laine', '100', '0', '1');
INSERT INTO `items` VALUES ('23', 'fabric', 'Tissu', '100', '0', '1');
INSERT INTO `items` VALUES ('24', 'clothe', 'Vêtement', '100', '0', '1');
INSERT INTO `items` VALUES ('25', 'bread', 'Pain', '20', '0', '1');
INSERT INTO `items` VALUES ('26', 'water', 'Eau', '20', '0', '1');
INSERT INTO `items` VALUES ('27', 'gazbottle', 'bouteille de gaz', '20', '0', '1');
INSERT INTO `items` VALUES ('28', 'fixtool', 'outils réparation', '20', '0', '1');
INSERT INTO `items` VALUES ('29', 'carotool', 'outils carosserie', '20', '0', '1');
INSERT INTO `items` VALUES ('30', 'blowpipe', 'Chalumeaux', '20', '0', '1');
INSERT INTO `items` VALUES ('31', 'fixkit', 'Kit réparation', '20', '0', '1');
INSERT INTO `items` VALUES ('32', 'carokit', 'Kit carosserie', '20', '0', '1');
INSERT INTO `items` VALUES ('33', 'gps', 'GPS', '5', '0', '1');
INSERT INTO `items` VALUES ('34', 'cola', 'Cola', '25', '0', '1');
INSERT INTO `items` VALUES ('35', 'vegetables', 'Légume', '100', '0', '1');
INSERT INTO `items` VALUES ('36', 'meat', 'Viande', '100', '0', '1');
INSERT INTO `items` VALUES ('37', 'tacos', 'Tacos', '50', '0', '1');
INSERT INTO `items` VALUES ('38', 'burger', 'Burger', '50', '0', '1');
INSERT INTO `items` VALUES ('39', 'pince', 'Pince', '10', '0', '1');
INSERT INTO `items` VALUES ('40', 'cerflex', 'Cerflex', '10', '0', '1');
INSERT INTO `items` VALUES ('41', 'tracker', 'Tracker', '10', '0', '1');
INSERT INTO `items` VALUES ('42', 'cigarett', 'Cigarett', '10', '0', '1');
INSERT INTO `items` VALUES ('43', 'raisin', 'Raisin', '100', '0', '1');
INSERT INTO `items` VALUES ('44', 'jus_raisin', 'Jus de raisin', '100', '0', '1');
INSERT INTO `items` VALUES ('45', 'grand_cru', 'Grand cru', '50', '0', '1');
INSERT INTO `items` VALUES ('46', 'vine', 'Vin', '100', '0', '1');
INSERT INTO `items` VALUES ('47', 'permis', 'Permis', '3', '0', '1');
INSERT INTO `items` VALUES ('48', 'lighter', 'Feu', '2', '0', '1');
INSERT INTO `items` VALUES ('49', 'chocolate', 'Chocolat', '20', '0', '1');
INSERT INTO `items` VALUES ('50', 'sandwich', 'Sandwich', '20', '0', '1');
INSERT INTO `items` VALUES ('51', 'hamburger', 'Hamburger', '20', '0', '1');
INSERT INTO `items` VALUES ('52', 'cupcake', 'Cupcake', '20', '0', '1');
INSERT INTO `items` VALUES ('53', 'icetea', 'Icetea', '20', '0', '1');
INSERT INTO `items` VALUES ('54', 'redbull', 'Redbull', '20', '0', '1');
INSERT INTO `items` VALUES ('55', 'wine', 'Wine', '20', '0', '1');
INSERT INTO `items` VALUES ('56', 'beer', 'Beer', '20', '0', '1');
INSERT INTO `items` VALUES ('57', 'vodka', 'Vodka', '20', '0', '1');
INSERT INTO `items` VALUES ('58', 'tequila', 'Tequila', '20', '0', '1');
INSERT INTO `items` VALUES ('59', 'whisky', 'Whisky', '20', '0', '1');
INSERT INTO `items` VALUES ('60', 'argent', 'Argent', '20', '0', '1');
INSERT INTO `items` VALUES ('61', 'lingot', 'Lingot', '100', '0', '1');
INSERT INTO `items` VALUES ('62', 'coffee', 'Café', '15', '0', '1');
INSERT INTO `items` VALUES ('63', 'poubelle', 'Poubelle', '50', '0', '1');
INSERT INTO `items` VALUES ('64', 'sac_argent', 'Sac_Argent', '100', '0', '1');
INSERT INTO `items` VALUES ('65', 'copper', 'Cuivre', '50', '0', '1');
INSERT INTO `items` VALUES ('66', 'iron', 'Fer', '50', '0', '1');
INSERT INTO `items` VALUES ('67', 'gold', 'Or', '50', '0', '1');
INSERT INTO `items` VALUES ('69', 'jager', 'Jägermeister', '5', '0', '1');
INSERT INTO `items` VALUES ('70', 'rhum', 'Rhum', '5', '0', '1');
INSERT INTO `items` VALUES ('71', 'martini', 'Martini blanc', '5', '0', '1');
INSERT INTO `items` VALUES ('72', 'soda', 'Soda', '25', '0', '1');
INSERT INTO `items` VALUES ('73', 'jusfruit', 'Jus de fruits', '25', '0', '1');
INSERT INTO `items` VALUES ('74', 'energy', 'Energy Drink', '25', '0', '1');
INSERT INTO `items` VALUES ('75', 'drpepper', 'Dr. Pepper', '25', '0', '1');
INSERT INTO `items` VALUES ('76', 'limonade', 'Limonade', '25', '0', '1');
INSERT INTO `items` VALUES ('77', 'bolcacahuetes', 'Bol de cacahuètes', '25', '0', '1');
INSERT INTO `items` VALUES ('78', 'bolnoixcajou', 'Bol de noix de cajou', '25', '0', '1');
INSERT INTO `items` VALUES ('79', 'bolpistache', 'Bol de pistaches', '25', '0', '1');
INSERT INTO `items` VALUES ('80', 'bolchips', 'Bol de chips', '25', '0', '1');
INSERT INTO `items` VALUES ('81', 'saucisson', 'Saucisson', '25', '0', '1');
INSERT INTO `items` VALUES ('82', 'grapperaisin', 'Grappe de raisin', '25', '0', '1');
INSERT INTO `items` VALUES ('83', 'jagerbomb', 'Jägerbomb', '25', '0', '1');
INSERT INTO `items` VALUES ('84', 'golem', 'Golem', '25', '0', '1');
INSERT INTO `items` VALUES ('85', 'whiskycoca', 'Whisky-coca', '25', '0', '1');
INSERT INTO `items` VALUES ('86', 'vodkaenergy', 'Vodka-energy', '25', '0', '1');
INSERT INTO `items` VALUES ('87', 'vodkafruit', 'Vodka-jus de fruits', '25', '0', '1');
INSERT INTO `items` VALUES ('88', 'rhumfruit', 'Rhum-jus de fruits', '25', '0', '1');
INSERT INTO `items` VALUES ('89', 'teqpaf', 'Teq\'paf', '25', '0', '1');
INSERT INTO `items` VALUES ('90', 'rhumcoca', 'Rhum-coca', '25', '0', '1');
INSERT INTO `items` VALUES ('91', 'mojito', 'Mojito', '25', '0', '1');
INSERT INTO `items` VALUES ('92', 'ice', 'Glaçon', '25', '0', '1');
INSERT INTO `items` VALUES ('93', 'mixapero', 'Mix Apéritif', '25', '0', '1');
INSERT INTO `items` VALUES ('94', 'metreshooter', 'Mètre de shooter', '25', '0', '1');
INSERT INTO `items` VALUES ('95', 'jagercerbere', 'Jäger Cerbère', '25', '0', '1');
INSERT INTO `items` VALUES ('96', 'menthe', 'Feuille de menthe', '25', '0', '1');
INSERT INTO `items` VALUES ('97', 'goldmedal', 'Medaille D\'or', '10', '0', '1');
INSERT INTO `items` VALUES ('98', 'silvermedal', 'Medaille D\'argent', '10', '0', '1');
INSERT INTO `items` VALUES ('99', 'bronzemedal', 'Medail De Bronze', '10', '0', '1');
INSERT INTO `items` VALUES ('100', 'plongee1', 'Plongee courte', '5', '0', '1');
INSERT INTO `items` VALUES ('101', 'plongee2', 'Plongee longue', '5', '0', '1');
INSERT INTO `items` VALUES ('102', 'sacbillets', ' Sac de Billets', '100', '0', '1');
INSERT INTO `items` VALUES ('103', 'poisson_vivant', 'Poisson vivant', '100', '0', '1');
INSERT INTO `items` VALUES ('104', 'poisson_lave', 'Poisson lavé', '100', '0', '1');
INSERT INTO `items` VALUES ('105', 'poisson_préparé', 'poisson_préparé', '100', '0', '1');
INSERT INTO `items` VALUES ('106', 'poisson_vente', 'Poisson vente', '100', '0', '1');
INSERT INTO `items` VALUES ('108', 'blé', 'Blé', '100', '0', '1');
INSERT INTO `items` VALUES ('109', 'farine_blé', 'Farine', '100', '0', '1');
INSERT INTO `items` VALUES ('110', 'farine_blé_premium', 'farine de haute qualité', '100', '0', '1');
INSERT INTO `items` VALUES ('111', 'pain', 'Pain', '100', '0', '1');
INSERT INTO `items` VALUES ('161', 'wood', 'Bois', '100', '0', '1');
INSERT INTO `items` VALUES ('162', 'cutted_wood', 'bois coupe', '100', '0', '1');
INSERT INTO `items` VALUES ('163', 'plank', 'planches', '100', '0', '1');
INSERT INTO `items` VALUES ('164', 'packaged_plank', 'paquet de planches', '100', '0', '1');
INSERT INTO `items` VALUES ('165', 'feuilletab', 'Feuille de tabac', '100', '0', '1');
INSERT INTO `items` VALUES ('166', 'tabacsec', 'Tabac', '100', '0', '1');
INSERT INTO `items` VALUES ('167', 'pierreb', 'Pierre', '100', '0', '1');
INSERT INTO `items` VALUES ('168', 'or', 'Or', '50', '0', '1');
INSERT INTO `items` VALUES ('169', 'diamon', 'diamant', '100', '0', '1');
INSERT INTO `items` VALUES ('170', 'solo_key', 'Cle conte la montre', '10', '0', '1');
INSERT INTO `items` VALUES ('171', 'multi_key', 'Cle course de rue', '10', '0', '1');
INSERT INTO `items` VALUES ('172', 'croquettes', 'Croquettes', '20', '0', '1');

-- ----------------------------
-- Table structure for `jail`
-- ----------------------------
DROP TABLE IF EXISTS `jail`;
CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `isjailed` tinyint(1) DEFAULT NULL,
  `J_Time` datetime NOT NULL,
  `J_Cell` varchar(20) NOT NULL,
  `Jailer` varchar(100) NOT NULL,
  `Jailer_ID` varchar(100) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', 'unemployed', 'Chomeur', '0');
INSERT INTO `jobs` VALUES ('3', 'fisherman', 'Pecheur', '0');
INSERT INTO `jobs` VALUES ('4', 'reporter', 'Journaliste', '0');
INSERT INTO `jobs` VALUES ('5', 'tailor', 'tailleur', '0');
INSERT INTO `jobs` VALUES ('6', 'mineur', 'Mineur', '0');
INSERT INTO `jobs` VALUES ('7', 'fueler', 'Raffineur', '0');
INSERT INTO `jobs` VALUES ('8', 'slaughterer', 'Abatteur', '0');
INSERT INTO `jobs` VALUES ('9', 'taxi', 'Taxi', '0');
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
INSERT INTO `jobs` VALUES ('26', 'rally', 'Course', '0');
INSERT INTO `jobs` VALUES ('27', 'runner', 'Coureur', '0');
INSERT INTO `jobs` VALUES ('28', 'dock', 'Marina', '1');
INSERT INTO `jobs` VALUES ('34', 'pompiste', 'Pompiste', '0');
INSERT INTO `jobs` VALUES ('35', 'thelostmc', 'Brinks', '0');
INSERT INTO `jobs` VALUES ('37', 'boulan', 'Boulanger', '0');
INSERT INTO `jobs` VALUES ('38', 'buche', 'Bucherons', '0');
INSERT INTO `jobs` VALUES ('44', 'taxi', 'Taxi', '0');
INSERT INTO `jobs` VALUES ('47', 'tabac', 'tabac', '0');
INSERT INTO `jobs` VALUES ('51', 'cardealer', 'Concessionnaire', '0');

-- ----------------------------
-- Table structure for `job_grades`
-- ----------------------------
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_grades
-- ----------------------------
INSERT INTO `job_grades` VALUES ('1', 'unemployed', '0', 'unemployed', 'RSA', '150', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('3', 'fisherman', '0', 'interim', 'Intérimaire', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('4', 'reporter', '0', 'employee', 'Intérimaire', '550', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('5', 'tailor', '0', 'interim', 'Intérimaire', '500', '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}');
INSERT INTO `job_grades` VALUES ('7', 'fueler', '0', 'interim', 'Intérimaire', '500', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('8', 'fueler', '3', 'boss', 'boss', '500', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('9', 'ambulance', '0', 'ambulance', 'Ambulancier', '500', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('10', 'ambulance', '1', 'doctor', 'Medecin', '700', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('11', 'ambulance', '2', 'chief_doctor', 'Medecin-chef', '900', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('12', 'ambulance', '3', 'boss', 'Chirurgien', '1000', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('13', 'mecano', '0', 'recrue', 'Recrue', '350', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('14', 'mecano', '1', 'novice', 'Novice', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('15', 'mecano', '2', 'experimente', 'Experimente', '650', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('16', 'mecano', '3', 'chief', 'Chef d\'équipe', '800', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('17', 'mecano', '4', 'boss', 'Patron', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('18', 'realestateagent', '0', 'location', 'Location', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('19', 'realestateagent', '1', 'vendeur', 'Vendeur', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('20', 'realestateagent', '2', 'gestion', 'Gestion', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('21', 'realestateagent', '3', 'boss', 'Patron', '500', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('22', 'dock', '0', 'recruit', 'Recrue', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('23', 'dock', '1', 'novice', 'Novice', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('24', 'dock', '2', 'experienced', 'Experimente', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('25', 'dock', '3', 'boss', 'Patron', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('26', 'foodtruck', '0', 'cook', 'Cuisinier', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('27', 'foodtruck', '1', 'boss', 'Patron', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('28', 'vigne', '0', 'recrue', 'Intérimaire', '350', '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('29', 'vigne', '1', 'novice', 'Vigneron', '450', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('30', 'vigne', '2', 'cdisenior', 'Chef de chai', '650', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('31', 'vigne', '3', 'boss', 'Patron', '1000', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('32', 'eboueur', '0', 'interim', 'Intérimaire', '250', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('33', 'eboueur', '3', 'boss', 'boss', '500', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('34', 'police', '0', 'recruit', 'Recrue', '350', '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('35', 'police', '4', 'officer', 'Officier', '450', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('36', 'police', '1', 'sergeant', 'Sergent', '650', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('37', 'police', '2', 'lieutenant', 'Lieutenant', '800', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('38', 'police', '3', 'boss', 'Commandant', '1000', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('39', 'unicorn', '0', 'barman', 'Barman', '350', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('40', 'unicorn', '1', 'dancer', 'Danseur', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('41', 'unicorn', '2', 'viceboss', 'Co-gérant', '650', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('42', 'unicorn', '3', 'boss', 'Gérant', '800', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('43', 'brinks', '0', 'interim', 'Interimaire', '350', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('45', 'aircraftdealer', '0', 'recruit', 'Recrue', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('46', 'aircraftdealer', '1', 'novice', 'Novice', '1', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('47', 'aircraftdealer', '2', 'experienced', 'Experimente', '1', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('48', 'aircraftdealer', '3', 'boss', 'Patron', '1', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('49', 'gouvernor', '0', 'security_gouvernor', 'Garde du Corps', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('50', 'gouvernor', '1', 'boss', 'Président', '1500', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('51', 'dock', '0', 'recruit', 'Recrue', '10', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('52', 'dock', '1', 'novice', 'Novice', '25', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('53', 'dock', '2', 'experienced', 'Experimente', '40', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('54', 'dock', '3', 'boss', 'Patron', '0', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('55', 'brinks', '0', 'interim', 'Convoyeur de fonds', '400', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('56', 'brinks', '1', 'recue', 'Officier', '500', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('57', 'brinks', '2', 'employé', 'Sergent', '700', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('58', 'brinks', '3', 'Vice-Boss', 'Lieutenant', '800', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('59', 'brinks', '4', 'Boss', 'Patron', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('60', 'boatdealer', '0', 'recruit', 'Recrue', '10', '{}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('61', 'boatdealer', '1', 'novice', 'Novice', '25', '{}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('62', 'boatdealer', '2', 'experienced', 'Experimente', '40', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('63', 'boatdealer', '3', 'boss', 'Patron', '0', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('64', 'pompiste', '0', 'recrue', 'Etudiant', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('65', 'pompiste', '1', 'experimente', 'Employé', '550', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('66', 'pompiste', '2', 'chef', 'Associé', '850', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('67', 'pompiste', '3', 'boss', 'Patron', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('68', 'thelostmc', '0', 'Rookie', 'interimaire', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('69', 'thelostmc', '1', 'Trooper', 'escorte', '550', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('70', 'thelostmc', '2', 'Recruiter', 'Employée', '850', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('71', 'thelostmc', '3', 'Vize-Boss', 'Vice-Patron', '950', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('72', 'thelostmc', '4', 'Boss', 'Patron', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('73', 'boulan', '0', 'recrue', 'Intérimaire', '450', '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('74', 'boulan', '1', 'novice', 'Boulanger', '550', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('75', 'boulan', '2', 'cdisenior', 'Chef', '850', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('76', 'boulan', '3', 'boss', 'Patron', '1000', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('77', 'buche', '0', 'recrue', 'Intérimaire', '450', '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('78', 'buche', '1', 'novice', 'Bucherons', '550', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('79', 'buche', '2', 'cdisenior', 'Chefb', '850', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('80', 'buche', '3', 'boss', 'Patron', '1000', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('81', 'taxi', '0', 'recrue', 'Recrue', '250', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('82', 'taxi', '1', 'novice', 'Novice', '350', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('83', 'taxi', '2', 'experimente', 'Experimente', '450', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('84', 'taxi', '3', 'uber', 'Uber', '550', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('85', 'taxi', '4', 'boss', 'Patron', '750', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('90', 'tabac', '0', 'recrue', 'Interimaire', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('91', 'tabac', '1', 'novice', 'tabac', '550', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('92', 'tabac', '2', 'cdisenior', 'Chef Déquipe', '850', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('93', 'tabac', '3', 'boss', 'Patron', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('94', 'mineur', '0', 'recrue', 'Interimaire', '450', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('95', 'mineur', '1', 'novice', 'Mineur', '650', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('96', 'mineur', '2', 'cdisenior', 'Chef déquipe', '850', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('97', 'mineur', '3', 'boss', 'Patron', '1000', '\"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES ('1034', 'cardealer', '0', 'recruit', 'Recrue', '10', '{}', '{}');
INSERT INTO `job_grades` VALUES ('1035', 'cardealer', '1', 'novice', 'Novice', '25', '{}', '{}');
INSERT INTO `job_grades` VALUES ('1036', 'cardealer', '2', 'experienced', 'Experimente', '40', '{}', '{}');
INSERT INTO `job_grades` VALUES ('1037', 'cardealer', '3', 'boss', 'Patron', '0', '{}', '{}');

-- ----------------------------
-- Table structure for `licenses`
-- ----------------------------
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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
INSERT INTO `licenses` VALUES ('9', 'boat', 'Boat License');
INSERT INTO `licenses` VALUES ('14', 'boat', 'Boat License');
INSERT INTO `licenses` VALUES ('15', 'truck', 'Truck License');
INSERT INTO `licenses` VALUES ('16', 'boat', 'Boat License');

-- ----------------------------
-- Table structure for `multi_race`
-- ----------------------------
DROP TABLE IF EXISTS `multi_race`;
CREATE TABLE `multi_race` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL,
  `race` int(11) NOT NULL,
  `nb_laps` int(11) NOT NULL,
  `nb_pers` int(11) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of multi_race
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owned_aircrafts
-- ----------------------------
INSERT INTO `owned_aircrafts` VALUES ('1', '{\"modSeats\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":1,\"modRightFender\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"wheels\":0,\"color2\":28,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"color1\":132,\"modDial\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"dirtLevel\":0.024236377328634,\"modLivery\":-1,\"modSpeakers\":-1,\"pearlescentColor\":112,\"model\":-2122757008,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"plate\":\"22RTR770\",\"health\":1000,\"wheelColor\":156,\"modTank\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"modBrakes\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modStruts\":-1,\"modHood\":-1,\"modTrimA\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modFender\":-1}', 'steam:1100001081ca641', '1');
INSERT INTO `owned_aircrafts` VALUES ('2', '{\"modSeats\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":1,\"modRightFender\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"wheels\":0,\"color2\":0,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"color1\":132,\"modDial\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"dirtLevel\":6.2072229385376,\"modLivery\":-1,\"modSpeakers\":-1,\"pearlescentColor\":122,\"model\":-901163259,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"plate\":\"83GKL924\",\"health\":1000,\"wheelColor\":156,\"modTank\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"modBrakes\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modStruts\":-1,\"modHood\":-1,\"modTrimA\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modFender\":-1}', 'steam:1100001081ca641', '1');
INSERT INTO `owned_aircrafts` VALUES ('4', '{\"modOrnaments\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"health\":1000,\"modTank\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"modEngine\":-1,\"modRoof\":-1,\"wheelColor\":111,\"modTrimA\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modXenon\":false,\"modTrunk\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"modDial\":-1,\"modFender\":-1,\"modTrimB\":-1,\"pearlescentColor\":5,\"modFrame\":-1,\"color1\":67,\"plate\":\"21HEY270\",\"modBrakes\":-1,\"dirtLevel\":6.0,\"modSuspension\":-1,\"modExhaust\":-1,\"wheels\":0,\"modFrontBumper\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"model\":-1523619738,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"plateIndex\":0,\"modHood\":-1,\"modEngineBlock\":-1,\"color2\":1}', 'steam:110000107f00b0f', '1');
INSERT INTO `owned_aircrafts` VALUES ('7', '{\"modSeats\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":1,\"modRightFender\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"wheels\":0,\"color2\":0,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"color1\":0,\"modDial\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"dirtLevel\":0.1933321505785,\"modLivery\":-1,\"modSpeakers\":-1,\"pearlescentColor\":1,\"model\":744705981,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"plate\":\"66ZVD447\",\"health\":1000,\"wheelColor\":156,\"modTank\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"modBrakes\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modStruts\":-1,\"modHood\":-1,\"modTrimA\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modFender\":-1}', 'steam:1100001081ca641', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
  `owner` varchar(30) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `vehicleType` varchar(20) DEFAULT 'car',
  `stored` varchar(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of owned_vehicles
-- ----------------------------
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'EHE 529', '{\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"wheelColor\":0,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"wheels\":0,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modHood\":-1,\"color1\":0,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"plate\":\"EHE 529\",\"modFender\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"modGrille\":-1,\"color2\":0,\"modRearBumper\":-1,\"modTurbo\":false,\"windowTint\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modXenon\":false,\"health\":0,\"modArchCover\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"plateIndex\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"model\":0,\"neonColor\":[0,0,0],\"modRightFender\":-1,\"tyreSmokeColor\":[0,0,0],\"modEngine\":-1,\"modAirFilter\":-1,\"dirtLevel\":0.0,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1}', 'boat', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'MOU 375', '{\"modStruts\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"plate\":\"MOU 375\",\"wheelColor\":156,\"modFrontBumper\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modBrakes\":-1,\"color2\":0,\"modRightFender\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modHood\":-1,\"modEngine\":-1,\"modArchCover\":-1,\"modXenon\":false,\"plateIndex\":0,\"modSpoilers\":-1,\"modRoof\":-1,\"modFender\":-1,\"modTurbo\":false,\"modFrontWheels\":-1,\"pearlescentColor\":111,\"color1\":6,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modExhaust\":-1,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"windowTint\":-1,\"health\":1000,\"modGrille\":-1,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modTank\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"dirtLevel\":7.0,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"model\":-344943009}', 'car', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'MYN 849', '{\"modArmor\":-1,\"modStruts\":-1,\"modEngine\":-1,\"modWindows\":-1,\"health\":1000,\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modFrontBumper\":-1,\"pearlescentColor\":8,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"plateIndex\":4,\"modTrimA\":-1,\"modVanityPlate\":-1,\"model\":276773164,\"modTurbo\":false,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"color2\":0,\"color1\":0,\"modTrunk\":-1,\"wheels\":0,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"dirtLevel\":0.0,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"plate\":\"MYN 849\",\"modTrimB\":-1,\"modDial\":-1,\"wheelColor\":156,\"modTank\":-1,\"modSpeakers\":-1}', 'boat', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'NEG 765', '{\"modArmor\":-1,\"modSeats\":-1,\"modEngine\":-1,\"modWindows\":-1,\"health\":0,\"modSmokeEnabled\":false,\"modRoof\":-1,\"modFrame\":-1,\"pearlescentColor\":0,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modRearBumper\":-1,\"dirtLevel\":0.0,\"modSuspension\":-1,\"modXenon\":false,\"modTank\":-1,\"windowTint\":-1,\"neonColor\":[0,0,0],\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"plateIndex\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[0,0,0],\"modFender\":-1,\"color2\":0,\"color1\":0,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"wheels\":0,\"modFrontWheels\":-1,\"model\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"plate\":\"NEG 765\",\"modHorns\":-1,\"modDial\":-1,\"wheelColor\":0,\"modSideSkirt\":-1,\"modArchCover\":-1}', 'boat', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'QQA 431', '{\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"wheelColor\":0,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"wheels\":0,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modHood\":-1,\"color1\":0,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"plate\":\"QQA 431\",\"modFender\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"modGrille\":-1,\"color2\":0,\"modRearBumper\":-1,\"modTurbo\":false,\"windowTint\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modXenon\":false,\"health\":0,\"modArchCover\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"plateIndex\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"model\":0,\"neonColor\":[0,0,0],\"modRightFender\":-1,\"tyreSmokeColor\":[0,0,0],\"modEngine\":-1,\"modAirFilter\":-1,\"dirtLevel\":0.0,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1}', 'boat', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'SVL 891', '{\"windowTint\":-1,\"modHood\":-1,\"plateIndex\":4,\"modLivery\":-1,\"pearlescentColor\":5,\"color1\":1,\"modSpoilers\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modAerials\":-1,\"modFender\":-1,\"dirtLevel\":0.0,\"wheelColor\":156,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"modFrontBumper\":-1,\"wheels\":0,\"modAirFilter\":-1,\"model\":-1030275036,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modEngineBlock\":-1,\"modBackWheels\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"modFrontWheels\":-1,\"modAPlate\":-1,\"health\":1000,\"modRightFender\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"modSeats\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"plate\":\"SVL 891\",\"modArmor\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modSuspension\":-1,\"color2\":73,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"modDial\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modStruts\":-1}', 'boat', '1');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'SYR 357', '{\"modVanityPlate\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modAPlate\":-1,\"modLivery\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modAerials\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"plateIndex\":4,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"wheels\":0,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modFender\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"model\":-1030275036,\"pearlescentColor\":5,\"modArchCover\":-1,\"modPlateHolder\":-1,\"plate\":\"SYR 357\",\"modHood\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modEngine\":-1,\"color1\":1,\"modStruts\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"modDial\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modHorns\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"color2\":73,\"wheelColor\":156,\"modEngineBlock\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modArmor\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modXenon\":false}', 'boat', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'VRT 387', '{\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"wheelColor\":0,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"wheels\":0,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modHood\":-1,\"color1\":0,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"plate\":\"VRT 387\",\"modFender\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"modGrille\":-1,\"color2\":0,\"modRearBumper\":-1,\"modTurbo\":false,\"windowTint\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modXenon\":false,\"health\":0,\"modArchCover\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"plateIndex\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"model\":0,\"neonColor\":[0,0,0],\"modRightFender\":-1,\"tyreSmokeColor\":[0,0,0],\"modEngine\":-1,\"modAirFilter\":-1,\"dirtLevel\":0.0,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1}', 'boat', 'true');
INSERT INTO `owned_vehicles` VALUES ('steam:1100001081ca641', 'YWG 042', '{\"modArmor\":-1,\"modStruts\":-1,\"modEngine\":-1,\"modWindows\":-1,\"health\":1000,\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modFrontBumper\":-1,\"pearlescentColor\":8,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"plateIndex\":4,\"modTrimA\":-1,\"modVanityPlate\":-1,\"model\":276773164,\"modTurbo\":false,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"color2\":0,\"color1\":0,\"modTrunk\":-1,\"wheels\":0,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"dirtLevel\":0.0,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"plate\":\"YWG 042\",\"modTrimB\":-1,\"modDial\":-1,\"wheelColor\":156,\"modTank\":-1,\"modSpeakers\":-1}', 'boat', 'true');

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

-- ----------------------------
-- Table structure for `peage_flash`
-- ----------------------------
DROP TABLE IF EXISTS `peage_flash`;
CREATE TABLE `peage_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(10) NOT NULL,
  `speed` int(11) NOT NULL,
  `modele` varchar(25) NOT NULL,
  `station` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of peage_flash
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_calls
-- ----------------------------
INSERT INTO `phone_calls` VALUES ('123', '273968', '415252', '1', '2018-07-06 00:16:39', '0');
INSERT INTO `phone_calls` VALUES ('124', '415252', '273968', '0', '2018-07-06 00:16:39', '0');
INSERT INTO `phone_calls` VALUES ('125', '415252', '273968', '0', '2018-07-11 16:32:56', '0');
INSERT INTO `phone_calls` VALUES ('126', '273968', '415252', '1', '2018-07-11 16:32:56', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_users_contacts
-- ----------------------------
INSERT INTO `phone_users_contacts` VALUES ('7', 'steam:1100001081ca641', '415252', 'lucky');

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
-- Table structure for `qalle_brottsregister`
-- ----------------------------
DROP TABLE IF EXISTS `qalle_brottsregister`;
CREATE TABLE `qalle_brottsregister` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of qalle_brottsregister
-- ----------------------------

-- ----------------------------
-- Table structure for `record_multi`
-- ----------------------------
DROP TABLE IF EXISTS `record_multi`;
CREATE TABLE `record_multi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `race` int(11) NOT NULL,
  `record` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `nb_laps` int(11) NOT NULL,
  `multi_race_id` int(11) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `record_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of record_multi
-- ----------------------------
INSERT INTO `record_multi` VALUES ('1', 'b99e0f8acf6d85173ef8477a6bcadec1', '2', '30252', '20', '3', '1', '0', '2018-10-03 19:42:32');

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
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of rented_vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for `shops`
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('1', 'TwentyFourSeven', 'bread', '15');
INSERT INTO `shops` VALUES ('2', 'TwentyFourSeven', 'water', '15');
INSERT INTO `shops` VALUES ('3', 'TwentyFourSeven', 'tacos', '30');
INSERT INTO `shops` VALUES ('4', 'TwentyFourSeven', 'burger', '15');
INSERT INTO `shops` VALUES ('5', 'TwentyFourSeven', 'chocolate', '15');
INSERT INTO `shops` VALUES ('6', 'TwentyFourSeven', 'sandwich', '15');
INSERT INTO `shops` VALUES ('7', 'TwentyFourSeven', 'hamburger', '12');
INSERT INTO `shops` VALUES ('8', 'TwentyFourSeven', 'cupcake', '4');
INSERT INTO `shops` VALUES ('9', 'TwentyFourSeven', 'saucisson', '4');
INSERT INTO `shops` VALUES ('10', 'TwentyFourSeven', 'coffee', '4');
INSERT INTO `shops` VALUES ('11', 'TwentyFourSeven', 'cola', '10');
INSERT INTO `shops` VALUES ('12', 'TwentyFourSeven', 'icetea', '12');
INSERT INTO `shops` VALUES ('13', 'TwentyFourSeven', 'soda', '15');
INSERT INTO `shops` VALUES ('14', 'TwentyFourSeven', 'jusfruit', '16');
INSERT INTO `shops` VALUES ('15', 'TwentyFourSeven', 'gps', '50');
INSERT INTO `shops` VALUES ('16', 'TwentyFourSeven', 'lighter', '1');
INSERT INTO `shops` VALUES ('17', 'TwentyFourSeven', 'plongee1', '61');
INSERT INTO `shops` VALUES ('18', 'TwentyFourSeven', 'plongee2', '80');
INSERT INTO `shops` VALUES ('19', 'TwentyFourSeven', 'croquettes', '100');
INSERT INTO `shops` VALUES ('20', 'RobsLiquor', 'bread', '15');
INSERT INTO `shops` VALUES ('21', 'RobsLiquor', 'water', '15');
INSERT INTO `shops` VALUES ('22', 'RobsLiquor', 'tacos', '30');
INSERT INTO `shops` VALUES ('23', 'RobsLiquor', 'burger', '15');
INSERT INTO `shops` VALUES ('24', 'RobsLiquor', 'chocolate', '15');
INSERT INTO `shops` VALUES ('25', 'RobsLiquor', 'sandwich', '15');
INSERT INTO `shops` VALUES ('26', 'RobsLiquor', 'hamburger', '12');
INSERT INTO `shops` VALUES ('27', 'RobsLiquor', 'cupcake', '4');
INSERT INTO `shops` VALUES ('28', 'RobsLiquor', 'saucisson', '4');
INSERT INTO `shops` VALUES ('29', 'RobsLiquor', 'coffee', '4');
INSERT INTO `shops` VALUES ('30', 'RobsLiquor', 'cola', '10');
INSERT INTO `shops` VALUES ('31', 'RobsLiquor', 'icetea', '12');
INSERT INTO `shops` VALUES ('32', 'RobsLiquor', 'soda', '15');
INSERT INTO `shops` VALUES ('33', 'RobsLiquor', 'jusfruit', '16');
INSERT INTO `shops` VALUES ('34', 'RobsLiquor', 'gps', '50');
INSERT INTO `shops` VALUES ('35', 'RobsLiquor', 'lighter', '1');
INSERT INTO `shops` VALUES ('36', 'RobsLiquor', 'plongee1', '61');
INSERT INTO `shops` VALUES ('37', 'RobsLiquor', 'plongee2', '80');
INSERT INTO `shops` VALUES ('38', 'RobsLiquor', 'croquettes', '100');
INSERT INTO `shops` VALUES ('39', 'LTDgasoline', 'bread', '10');
INSERT INTO `shops` VALUES ('40', 'LTDgasoline', 'water', '15');
INSERT INTO `shops` VALUES ('41', 'LTDgasoline', 'tacos', '30');
INSERT INTO `shops` VALUES ('42', 'LTDgasoline', 'burger', '15');
INSERT INTO `shops` VALUES ('43', 'LTDgasoline', 'chocolate', '15');
INSERT INTO `shops` VALUES ('44', 'LTDgasoline', 'sandwich', '15');
INSERT INTO `shops` VALUES ('45', 'LTDgasoline', 'hamburger', '12');
INSERT INTO `shops` VALUES ('46', 'LTDgasoline', 'cupcake', '4');
INSERT INTO `shops` VALUES ('47', 'LTDgasoline', 'saucisson', '4');
INSERT INTO `shops` VALUES ('48', 'LTDgasoline', 'coffee', '4');
INSERT INTO `shops` VALUES ('49', 'LTDgasoline', 'cola', '10');
INSERT INTO `shops` VALUES ('50', 'LTDgasoline', 'icetea', '12');
INSERT INTO `shops` VALUES ('51', 'LTDgasoline', 'soda', '15');
INSERT INTO `shops` VALUES ('52', 'LTDgasoline', 'jusfruit', '16');
INSERT INTO `shops` VALUES ('53', 'LTDgasoline', 'gps', '50');
INSERT INTO `shops` VALUES ('54', 'LTDgasoline', 'lighter', '1');
INSERT INTO `shops` VALUES ('55', 'LTDgasoline', 'plongee1', '61');
INSERT INTO `shops` VALUES ('56', 'LTDgasoline', 'plongee2', '80');
INSERT INTO `shops` VALUES ('57', 'LTDgasoline', 'croquettes', '100');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of society_moneywash
-- ----------------------------
INSERT INTO `society_moneywash` VALUES ('10', 'steam:1100001081ca641', 'tabac', '100');
INSERT INTO `society_moneywash` VALUES ('11', 'steam:1100001081ca641', 'tabac', '500000');
INSERT INTO `society_moneywash` VALUES ('12', 'steam:1100001081ca641', 'mineur', '9451900');
INSERT INTO `society_moneywash` VALUES ('13', 'steam:1100001081ca641', 'gouvernor', '1000');
INSERT INTO `society_moneywash` VALUES ('14', 'steam:1100001081ca641', 'tabac', '100');

-- ----------------------------
-- Table structure for `solo_race`
-- ----------------------------
DROP TABLE IF EXISTS `solo_race`;
CREATE TABLE `solo_race` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `record` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `record_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of solo_race
-- ----------------------------
INSERT INTO `solo_race` VALUES ('1', 'b99e0f8acf6d85173ef8477a6bcadec1', '26701', '3', '5', '2018-10-03 19:32:49');
INSERT INTO `solo_race` VALUES ('2', 'b99e0f8acf6d85173ef8477a6bcadec1', '198408', '2', '5', '2018-10-03 19:38:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of truck_inventory
-- ----------------------------
INSERT INTO `truck_inventory` VALUES ('36', 'water', '0', 'MOU 375 ', 'Eau');

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
  `isFirstConnection` int(11) DEFAULT '1',
  `pet` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('steam:1100001081ca641', 'license:fcd32157de1fdd7dc4c122113baca4b95ec80013', '19852', 'Bl@ckw@ve.fr', 0x7B22646563616C735F32223A302C2262656172645F33223A332C2265796562726F77735F32223A382C226167655F31223A312C2270616E74735F32223A322C2268656C6D65745F31223A2D312C22736B696E223A302C22746F72736F5F31223A31312C226167655F32223A312C22746F72736F5F32223A302C22636861696E5F32223A312C22646563616C735F31223A302C22686169725F636F6C6F725F31223A372C22626167735F31223A302C226270726F6F665F32223A302C226D616B6575705F33223A302C22686169725F32223A342C22676C61737365735F32223A302C2262656172645F32223A31302C2273686F65735F32223A302C2265796562726F77735F33223A332C22686169725F636F6C6F725F32223A302C226C6970737469636B5F31223A302C22676C61737365735F31223A302C2266616365223A34342C22636861696E5F31223A312C22656172735F31223A2D312C227473686972745F31223A34392C226270726F6F665F31223A302C2265796562726F77735F34223A302C22736578223A302C226C6970737469636B5F34223A302C2262656172645F31223A31302C22686169725F31223A31392C2268656C6D65745F32223A302C226D61736B5F32223A302C22656172735F32223A302C2265796562726F77735F31223A322C2261726D73223A302C226D61736B5F31223A302C2262656172645F34223A332C226D616B6575705F34223A302C2273686F65735F31223A312C2270616E74735F31223A31302C226D616B6575705F32223A302C226D616B6575705F31223A302C227473686972745F32223A302C22626167735F32223A302C226C6970737469636B5F32223A302C226C6970737469636B5F33223A307D, 'pompiste', '3', 0x5B7B226E616D65223A22574541504F4E5F4B4E494645222C22616D6D6F223A302C226C6162656C223A22436F7574656175227D2C7B226E616D65223A22574541504F4E5F4E49474854535449434B222C22616D6D6F223A302C226C6162656C223A224D61747261717565227D2C7B226E616D65223A22574541504F4E5F48414D4D4552222C22616D6D6F223A302C226C6162656C223A224D617274656175227D2C7B226E616D65223A22574541504F4E5F424154222C22616D6D6F223A302C226C6162656C223A224261747465227D2C7B226E616D65223A22574541504F4E5F474F4C46434C5542222C22616D6D6F223A302C226C6162656C223A22436C756220646520676F6C66227D2C7B226E616D65223A22574541504F4E5F43524F57424152222C22616D6D6F223A302C226C6162656C223A2250696564206465206269636865227D2C7B226E616D65223A22574541504F4E5F504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C6574227D2C7B226E616D65223A22574541504F4E5F434F4D424154504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C657420646520636F6D626174227D2C7B226E616D65223A22574541504F4E5F4150504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C6574206175746F6D617469717565227D2C7B226E616D65223A22574541504F4E5F504953544F4C3530222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C65742063616C69627265203530227D2C7B226E616D65223A22574541504F4E5F4D4943524F534D47222C22616D6D6F223A3235302C226C6162656C223A224D6963726F20736D67227D2C7B226E616D65223A22574541504F4E5F534D47222C22616D6D6F223A3235302C226C6162656C223A22536D67227D2C7B226E616D65223A22574541504F4E5F41535341554C54534D47222C22616D6D6F223A3235302C226C6162656C223A22536D67206427617373617574227D2C7B226E616D65223A22574541504F4E5F41535341554C545249464C45222C22616D6D6F223A3235302C226C6162656C223A22467573696C206427617373617574227D2C7B226E616D65223A22574541504F4E5F43415242494E455249464C45222C22616D6D6F223A3235302C226C6162656C223A224361726162696E65206427617373617574227D2C7B226E616D65223A22574541504F4E5F414456414E4345445249464C45222C22616D6D6F223A3235302C226C6162656C223A22467573696C206176616E63C3A9227D2C7B226E616D65223A22574541504F4E5F4D47222C22616D6D6F223A3235302C226C6162656C223A224D69747261696C6C65757365227D2C7B226E616D65223A22574541504F4E5F434F4D4241544D47222C22616D6D6F223A3235302C226C6162656C223A224D69747261696C6C6575736520646520636F6D626174227D2C7B226E616D65223A22574541504F4E5F50554D5053484F5447554E222C22616D6D6F223A3235302C226C6162656C223A22467573696C20C3A020706F6D7065227D2C7B226E616D65223A22574541504F4E5F5341574E4F464653484F5447554E222C22616D6D6F223A3235302C226C6162656C223A224361726162696E6520C3A02063616E6F6E20736369C3A9227D2C7B226E616D65223A22574541504F4E5F41535341554C5453484F5447554E222C22616D6D6F223A3235302C226C6162656C223A224361726162696E65206427617373617574227D2C7B226E616D65223A22574541504F4E5F42554C4C50555053484F5447554E222C22616D6D6F223A3235302C226C6162656C223A224361726162696E652062756C6C707570227D2C7B226E616D65223A22574541504F4E5F5354554E47554E222C22616D6D6F223A3235302C226C6162656C223A2254617A6572227D2C7B226E616D65223A22574541504F4E5F534E495045525249464C45222C22616D6D6F223A3235302C226C6162656C223A22467573696C20646520736E69706572227D2C7B226E616D65223A22574541504F4E5F4845415659534E49504552222C22616D6D6F223A3235302C226C6162656C223A22467573696C20646520736E69706572206C6F757264227D2C7B226E616D65223A22574541504F4E5F4752454E4144454C41554E43484552222C22616D6D6F223A32302C226C6162656C223A224C616E63652D6772656E616465227D2C7B226E616D65223A22574541504F4E5F525047222C22616D6D6F223A32302C226C6162656C223A224C616E63652D726F636B6574227D2C7B226E616D65223A22574541504F4E5F4D494E4947554E222C22616D6D6F223A3235302C226C6162656C223A224D696E6967756E227D2C7B226E616D65223A22574541504F4E5F4752454E414445222C22616D6D6F223A32352C226C6162656C223A224772656E616465227D2C7B226E616D65223A22574541504F4E5F535449434B59424F4D42222C22616D6D6F223A32352C226C6162656C223A22426F6D626520636F6C6C616E7465227D2C7B226E616D65223A22574541504F4E5F534D4F4B454752454E414445222C22616D6D6F223A32352C226C6162656C223A224772656E6164652066756D6967C3A86E65227D2C7B226E616D65223A22574541504F4E5F425A474153222C22616D6D6F223A32352C226C6162656C223A224772656E61646520C3A02067617A20627A227D2C7B226E616D65223A22574541504F4E5F4D4F4C4F544F56222C22616D6D6F223A32352C226C6162656C223A22436F636B7461696C206D6F6C6F746F76227D2C7B226E616D65223A22574541504F4E5F46495245455854494E47554953484552222C22616D6D6F223A323030302C226C6162656C223A22457874696E6374657572227D2C7B226E616D65223A22574541504F4E5F504554524F4C43414E222C22616D6D6F223A343530302C226C6162656C223A224A6572726963616E206427657373656E6365227D2C7B226E616D65223A22574541504F4E5F42414C4C222C22616D6D6F223A312C226C6162656C223A2242616C6C65227D2C7B226E616D65223A22574541504F4E5F534E53504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C657420736E73227D2C7B226E616D65223A22574541504F4E5F424F54544C45222C22616D6D6F223A302C226C6162656C223A22426F757465696C6C65227D2C7B226E616D65223A22574541504F4E5F475553454E42455247222C22616D6D6F223A3235302C226C6162656C223A2242616C61796575736520677573656E62657267227D2C7B226E616D65223A22574541504F4E5F5350454349414C43415242494E45222C22616D6D6F223A3235302C226C6162656C223A224361726162696E65207370C3A96369616C65227D2C7B226E616D65223A22574541504F4E5F4845415659504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C6574206C6F757264227D2C7B226E616D65223A22574541504F4E5F42554C4C5055505249464C45222C22616D6D6F223A3235302C226C6162656C223A22467573696C2062756C6C707570227D2C7B226E616D65223A22574541504F4E5F56494E54414745504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C65742076696E74616765227D2C7B226E616D65223A22574541504F4E5F46495245574F524B222C22616D6D6F223A32302C226C6162656C223A224665752064276172746966696365227D2C7B226E616D65223A22574541504F4E5F4D55534B4554222C22616D6D6F223A3235302C226C6162656C223A224D6F757371756574227D2C7B226E616D65223A22574541504F4E5F484541565953484F5447554E222C22616D6D6F223A3235302C226C6162656C223A22467573696C20C3A020706F6D7065206C6F757264227D2C7B226E616D65223A22574541504F4E5F4D41524B534D414E5249464C45222C22616D6D6F223A3235302C226C6162656C223A22467573696C206D61726B736D616E227D2C7B226E616D65223A22574541504F4E5F484F4D494E474C41554E43484552222C22616D6D6F223A31302C226C6162656C223A224C616E63652074C3AA74652D63686572636865757365227D2C7B226E616D65223A22574541504F4E5F50524F584D494E45222C22616D6D6F223A352C226C6162656C223A224D696E652064652070726F78696D6974C3A9227D2C7B226E616D65223A22574541504F4E5F534E4F5742414C4C222C22616D6D6F223A31302C226C6162656C223A22426F756C65206465206E65696765227D2C7B226E616D65223A22574541504F4E5F464C41524547554E222C22616D6D6F223A32302C226C6162656C223A224C616E636520667573C3A9652064652064C3A9747265737365227D2C7B226E616D65223A22574541504F4E5F434F4D424154504457222C22616D6D6F223A3235302C226C6162656C223A2241726D652064652064C3A966656E736520706572736F6E6E656C6C65227D2C7B226E616D65223A22574541504F4E5F4D41524B534D414E504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C6574206D61726B736D616E227D2C7B226E616D65223A22574541504F4E5F4B4E55434B4C45222C22616D6D6F223A302C226C6162656C223A22506F696E6720616DC3A972696361696E227D2C7B226E616D65223A22574541504F4E5F48415443484554222C22616D6D6F223A302C226C6162656C223A224861636865747465227D2C7B226E616D65223A22574541504F4E5F5241494C47554E222C22616D6D6F223A32302C226C6162656C223A2243616E6F6E20C3A96CC3A963747269717565227D2C7B226E616D65223A22574541504F4E5F4D414348455445222C22616D6D6F223A302C226C6162656C223A224D61636865747465227D2C7B226E616D65223A22574541504F4E5F4D414348494E45504953544F4C222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C6574206D69747261696C6C657572227D2C7B226E616D65223A22574541504F4E5F535749544348424C414445222C22616D6D6F223A302C226C6162656C223A22436F757465617520C3A0206372616E206427617272C3AA74227D2C7B226E616D65223A22574541504F4E5F5245564F4C564552222C22616D6D6F223A3235302C226C6162656C223A225265766F6C766572227D2C7B226E616D65223A22574541504F4E5F444253484F5447554E222C22616D6D6F223A3235302C226C6162656C223A22467573696C20C3A020706F6D706520646F75626C652063616E6F6E227D2C7B226E616D65223A22574541504F4E5F434F4D504143545249464C45222C22616D6D6F223A3235302C226C6162656C223A22467573696C20636F6D70616374227D2C7B226E616D65223A22574541504F4E5F4155544F53484F5447554E222C22616D6D6F223A3235302C226C6162656C223A22467573696C20C3A020706F6D7065206175746F6D617469717565227D2C7B226E616D65223A22574541504F4E5F424154544C45415845222C22616D6D6F223A302C226C6162656C223A22486163686520646520636F6D626174227D2C7B226E616D65223A22574541504F4E5F434F4D504143544C41554E43484552222C22616D6D6F223A32302C226C6162656C223A224C616E6365757220636F6D70616374227D2C7B226E616D65223A22574541504F4E5F4D494E49534D47222C22616D6D6F223A3235302C226C6162656C223A224D696E6920736D67227D2C7B226E616D65223A22574541504F4E5F50495045424F4D42222C22616D6D6F223A31302C226C6162656C223A22426F6D6265207475796175227D2C7B226E616D65223A22574541504F4E5F504F4F4C435545222C22616D6D6F223A302C226C6162656C223A2251756575652064652062696C6C617264227D2C7B226E616D65223A22574541504F4E5F5752454E4348222C22616D6D6F223A302C226C6162656C223A22436CC3A9227D2C7B226E616D65223A22574541504F4E5F464C4153484C49474854222C22616D6D6F223A302C226C6162656C223A224C616D706520746F72636865227D2C7B226E616D65223A224741444745545F504152414348555445222C22616D6D6F223A302C226C6162656C223A22506172616368757465227D2C7B226E616D65223A22574541504F4E5F464C415245222C22616D6D6F223A32352C226C6162656C223A22467573C3A9652044C3A9747265737365227D2C7B226E616D65223A22574541504F4E5F41535341554C545249464C455F4D4B32222C22616D6D6F223A3235302C226C6162656C223A2241737361756C74205269666C65204D6B20494920227D2C7B226E616D65223A22574541504F4E5F43415242494E455249464C455F4D4B32222C22616D6D6F223A3235302C226C6162656C223A2243617262696E65205269666C65204D6B20494920227D2C7B226E616D65223A22574541504F4E5F434F4D4241544D475F4D4B32222C22616D6D6F223A3235302C226C6162656C223A22436F6D626174204D47204D6B204949227D2C7B226E616D65223A22574541504F4E5F4845415659534E495045525F4D4B32222C22616D6D6F223A3235302C226C6162656C223A22486561767920536E69706572204D6B204949227D2C7B226E616D65223A22574541504F4E5F504953544F4C5F4D4B32222C22616D6D6F223A3235302C226C6162656C223A22506973746F6C204D6B204949227D2C7B226E616D65223A22574541504F4E5F534D475F4D4B32222C22616D6D6F223A3235302C226C6162656C223A22534D47204D6B204949227D5D, '{\"y\":-932.10552978516,\"z\":19.014675140381,\"x\":-713.56872558594}', '1486550', '4', 'superadmin', '100000', 0x5B7B2276616C223A3833373930302C2270657263656E74223A38332E37392C226E616D65223A2268756E676572227D2C7B2276616C223A3837383035302C2270657263656E74223A38372E3830352C226E616D65223A22746869727374227D2C7B2276616C223A302C2270657263656E74223A302E302C226E616D65223A226472756E6B227D5D, 'JOhn', 'Nime', '1989/08/85', 'm', '172', null, '54642', 'Passed', '[{\"collection\":\"mpbeach_overlays\",\"texture\":5}]', '0', 'Aucun candidat', '0', 'chat');
INSERT INTO `users` VALUES ('steam:11000010bf1d422', 'license:4f5798c47ec422e130053cfe87ca36c8c4fde20f', '3000', 'blackluckyFR', 0x7B2265796562726F77735F33223A352C226270726F6F665F31223A302C2262656172645F31223A31352C22676C61737365735F32223A362C22626167735F32223A302C22676C61737365735F31223A352C2273686F65735F32223A302C2270616E74735F31223A34372C22736578223A302C226C6970737469636B5F33223A302C226D61736B5F31223A302C226D616B6575705F34223A302C226D61736B5F32223A302C227473686972745F32223A302C2262656172645F32223A31302C22686169725F31223A332C2273686F65735F31223A31322C2265796562726F77735F31223A302C226C6970737469636B5F34223A302C22626167735F31223A302C22746F72736F5F32223A332C2270616E74735F32223A302C226167655F31223A302C226C6970737469636B5F32223A302C22686169725F32223A302C226C6970737469636B5F31223A302C22646563616C735F32223A302C2261726D73223A302C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22686169725F636F6C6F725F31223A31352C22656172735F32223A302C227473686972745F31223A3133302C226D616B6575705F32223A302C22736B696E223A312C2265796562726F77735F32223A382C22746F72736F5F31223A31332C226167655F32223A302C226D616B6575705F33223A302C22656172735F31223A2D312C226D616B6575705F31223A302C2266616365223A34342C22636861696E5F32223A302C22646563616C735F31223A312C22636861696E5F31223A302C2265796562726F77735F34223A302C2268656C6D65745F32223A302C2262656172645F34223A302C2262656172645F33223A392C22686169725F636F6C6F725F32223A307D, 'unemployed', '0', 0x5B7B226C6162656C223A22506973746F6C6574222C22616D6D6F223A32322C226E616D65223A22574541504F4E5F504953544F4C227D2C7B226C6162656C223A22467573696C206427617373617574222C22616D6D6F223A33302C226E616D65223A22574541504F4E5F41535341554C545249464C45227D2C7B226C6162656C223A22467573696C20C3A020706F6D7065222C22616D6D6F223A31302C226E616D65223A22574541504F4E5F50554D5053484F5447554E227D2C7B226C6162656C223A2254617A6572222C22616D6D6F223A34322C226E616D65223A22574541504F4E5F5354554E47554E227D2C7B226C6162656C223A224772656E6164652066756D6967C3A86E65222C22616D6D6F223A32342C226E616D65223A22574541504F4E5F534D4F4B454752454E414445227D2C7B226C6162656C223A22457874696E6374657572222C22616D6D6F223A34322C226E616D65223A22574541504F4E5F46495245455854494E47554953484552227D2C7B226C6162656C223A22506172616368757465222C22616D6D6F223A302C226E616D65223A224741444745545F504152414348555445227D5D, '{\"z\":28.72403717041,\"y\":-1015.9793701172,\"x\":439.11605834961}', '1036067', '0', 'user', '0', 0x5B7B2270657263656E74223A39302E36322C2276616C223A3930363230302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A39322E373437352C2276616C223A3932373437352C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, 'Allain', 'Terrieur', '1997/05/02', 'm', '170', null, '41525', '', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:11000010e659d79', 'license:2be002f4b9dd94d44f5dbd4665ffaf0f616d56b1', '3000', '✪Jarko', 0x7B2265796562726F77735F33223A302C226270726F6F665F31223A302C2261726D73223A302C22676C61737365735F32223A302C22626167735F32223A302C22636861696E5F32223A302C2265796562726F77735F32223A342C2270616E74735F31223A372C22736578223A302C226C6970737469636B5F33223A302C226C6970737469636B5F34223A302C226D616B6575705F34223A302C2266616365223A342C227473686972745F32223A332C2262656172645F32223A302C2270616E74735F32223A332C2273686F65735F32223A342C22656172735F32223A302C226D616B6575705F33223A302C2265796562726F77735F31223A302C226167655F32223A302C226C6970737469636B5F31223A302C226167655F31223A312C226C6970737469636B5F32223A302C2265796562726F77735F34223A302C22626167735F31223A302C227473686972745F31223A32302C22746F72736F5F32223A322C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22686169725F32223A332C2262656172645F31223A302C226D616B6575705F32223A302C2273686F65735F31223A392C22736B696E223A352C22676C61737365735F31223A302C22746F72736F5F31223A332C22636861696E5F31223A302C22686169725F31223A32302C22656172735F31223A2D312C226D616B6575705F31223A302C226D61736B5F32223A302C226D61736B5F31223A302C22646563616C735F31223A332C22686169725F636F6C6F725F31223A392C22646563616C735F32223A302C2268656C6D65745F32223A302C2262656172645F34223A302C2262656172645F33223A302C22686169725F636F6C6F725F32223A317D, 'unemployed', '0', 0x5B5D, '{\"z\":29.913724899292,\"y\":-1396.9259033203,\"x\":269.40673828125}', '14000', '0', 'user', '0', 0x5B7B2276616C223A3438353230302C2270657263656E74223A34382E35322C226E616D65223A2268756E676572227D2C7B2276616C223A3438313530302C2270657263656E74223A34382E31352C226E616D65223A22746869727374227D2C7B2276616C223A302C2270657263656E74223A302E302C226E616D65223A226472756E6B227D5D, 'Kris', 'Borowski', '19995/07/12', 'm', '140', null, '62649', '', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:1100001080d2eac', 'license:1926aad15e8f4e5f65fc1a99ff246b0a56601491', '3000', 'ah64hunter', 0x7B2265796562726F77735F33223A302C226270726F6F665F31223A302C2262656172645F31223A302C22676C61737365735F32223A302C22626167735F32223A302C2265796562726F77735F34223A302C2265796562726F77735F32223A302C226167655F32223A302C22736578223A302C226C6970737469636B5F33223A302C226C6970737469636B5F34223A302C226D616B6575705F34223A302C22646563616C735F32223A302C227473686972745F32223A302C2262656172645F32223A302C226D616B6575705F33223A302C22676C61737365735F31223A302C22656172735F32223A302C22636861696E5F31223A302C227473686972745F31223A302C22626167735F31223A302C226C6970737469636B5F31223A302C226167655F31223A302C226C6970737469636B5F32223A302C226D616B6575705F32223A302C2261726D73223A302C2273686F65735F31223A302C2273686F65735F32223A302C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22686169725F636F6C6F725F31223A302C226D61736B5F31223A302C22686169725F32223A302C2265796562726F77735F31223A302C22736B696E223A302C226D61736B5F32223A302C22746F72736F5F31223A302C2270616E74735F32223A302C22686169725F31223A302C22656172735F31223A2D312C226D616B6575705F31223A302C22746F72736F5F32223A302C22636861696E5F32223A302C22646563616C735F31223A302C2270616E74735F31223A302C2266616365223A302C2268656C6D65745F32223A302C2262656172645F34223A302C2262656172645F33223A302C22686169725F636F6C6F725F32223A307D, 'unemployed', '0', 0x5B7B226C6162656C223A22506973746F6C6574222C226E616D65223A22574541504F4E5F504953544F4C222C22616D6D6F223A3231347D2C7B226C6162656C223A22506973746F6C6574206D69747261696C6C657572222C226E616D65223A22574541504F4E5F4D414348494E45504953544F4C222C22616D6D6F223A3235307D5D, '{\"y\":-3122.5134277344,\"z\":18.091674804688,\"x\":564.79516601563}', '10650', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2270657263656E74223A34362E35322C2276616C223A3436353230307D2C7B226E616D65223A22746869727374222C2270657263656E74223A34372E33392C2276616C223A3437333930307D2C7B226E616D65223A226472756E6B222C2270657263656E74223A302E302C2276616C223A307D5D, 'Charlie', 'Triston', '1989/04/07', 'f', '160', null, '33777', '', '{}', '1', null, '1', '');
INSERT INTO `users` VALUES ('steam:110000112cc1d89', 'license:45e04146700069531ee4ff574f843078f9591034', '3000', 'ClassedGamer', 0x7B227473686972745F31223A302C22676C61737365735F32223A302C2265796562726F77735F34223A302C226D616B6575705F34223A302C22746F72736F5F32223A302C22746F72736F5F31223A302C2262656172645F32223A302C2273686F65735F31223A302C226270726F6F665F32223A302C227473686972745F32223A302C22676C61737365735F31223A302C226C6970737469636B5F32223A302C2268656C6D65745F32223A302C22636861696E5F31223A302C226C6970737469636B5F33223A302C226D616B6575705F32223A302C226D61736B5F31223A302C226C6970737469636B5F31223A302C22646563616C735F32223A302C226270726F6F665F31223A302C22686169725F31223A302C2265796562726F77735F33223A302C2262656172645F34223A302C22626167735F31223A302C22656172735F31223A2D312C22636861696E5F32223A302C22686169725F636F6C6F725F32223A302C22736B696E223A302C2273686F65735F32223A302C226D616B6575705F33223A302C2266616365223A302C22686169725F636F6C6F725F31223A302C226D616B6575705F31223A302C2262656172645F31223A302C226167655F32223A302C2270616E74735F32223A302C2265796562726F77735F31223A302C2270616E74735F31223A302C226D61736B5F32223A302C2262656172645F33223A302C22646563616C735F31223A302C2261726D73223A302C226C6970737469636B5F34223A302C2268656C6D65745F31223A2D312C22686169725F32223A302C22736578223A302C2265796562726F77735F32223A302C22656172735F32223A302C22626167735F32223A302C226167655F31223A307D, 'unemployed', '0', 0x5B7B226C6162656C223A22506172616368757465222C22616D6D6F223A302C226E616D65223A224741444745545F504152414348555445227D5D, '{\"y\":1291.0317382813,\"x\":727.72357177734,\"z\":360.29614257813}', '2000', '0', 'user', '0', 0x5B7B2276616C223A3937363430302C226E616D65223A2268756E676572222C2270657263656E74223A39372E36347D2C7B2276616C223A3937303530302C226E616D65223A22746869727374222C2270657263656E74223A39372E30357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Jay', 'Ackerham', '1998/12/12', 'm', '155', null, '53187', '', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:110000107e0850f', 'license:b43d10159e99e8d39de370f6b79f7f849022a5fc', '3000', 'Zorxi', 0x7B226D616B6575705F31223A302C2262656172645F32223A302C2262656172645F34223A302C226C6970737469636B5F31223A302C22686169725F636F6C6F725F31223A332C226D616B6575705F32223A302C226D61736B5F32223A302C2262656172645F33223A302C2268656C6D65745F32223A362C227473686972745F31223A302C22746F72736F5F31223A302C22646563616C735F32223A302C22686169725F32223A302C2265796562726F77735F31223A312C22686169725F636F6C6F725F32223A342C22626167735F31223A33312C2265796562726F77735F32223A382C2262656172645F31223A302C22676C61737365735F31223A302C2273686F65735F31223A352C226C6970737469636B5F33223A302C22646563616C735F31223A302C226167655F31223A302C227473686972745F32223A302C2270616E74735F31223A362C22736578223A302C2266616365223A302C226167655F32223A302C2265796562726F77735F34223A302C226C6970737469636B5F34223A302C22746F72736F5F32223A332C22626167735F32223A302C22636861696E5F32223A302C22636861696E5F31223A302C22676C61737365735F32223A302C22656172735F32223A302C22686169725F31223A31342C226C6970737469636B5F32223A302C2265796562726F77735F33223A302C22656172735F31223A2D312C226270726F6F665F31223A302C2268656C6D65745F31223A372C226D616B6575705F34223A302C2261726D73223A302C2270616E74735F32223A312C226D61736B5F31223A302C226270726F6F665F32223A302C2273686F65735F32223A332C226D616B6575705F33223A302C22736B696E223A337D, 'unemployed', '0', 0x5B7B226E616D65223A224741444745545F504152414348555445222C226C6162656C223A22506172616368757465222C22616D6D6F223A307D5D, '{\"z\":35.168785095215,\"x\":1622.1130371094,\"y\":3637.9885253906}', '11460', '0', 'user', '0', 0x5B7B2276616C223A3732383830302C226E616D65223A2268756E676572222C2270657263656E74223A37322E38387D2C7B2276616C223A3635393235302C226E616D65223A22746869727374222C2270657263656E74223A36352E3932357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Jean', 'Marille', '1996/01/01', 'm', '179.5', null, '90634', '', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:110000107f00b0f', 'license:5ae119f6a39683624ebeb310a0de1a068e627b88', '3000', 'Sayans', 0x7B226D616B6575705F31223A302C226270726F6F665F31223A302C226C6970737469636B5F34223A302C2262656172645F31223A302C22646563616C735F32223A302C22636861696E5F32223A302C22736578223A302C22736B696E223A31302C22636861696E5F31223A302C2262656172645F32223A302C2265796562726F77735F32223A302C22746F72736F5F31223A302C2262656172645F34223A302C226270726F6F665F32223A302C22656172735F31223A2D312C2265796562726F77735F31223A302C22656172735F32223A302C226D61736B5F32223A302C2265796562726F77735F33223A302C2273686F65735F32223A302C2262656172645F33223A302C226167655F32223A302C22676C61737365735F31223A302C2261726D73223A302C22626167735F31223A302C22676C61737365735F32223A302C227473686972745F31223A302C226D616B6575705F34223A302C227473686972745F32223A302C22686169725F636F6C6F725F31223A302C226C6970737469636B5F32223A302C226C6970737469636B5F31223A302C2268656C6D65745F32223A302C2266616365223A33362C2273686F65735F31223A302C226C6970737469636B5F33223A302C226167655F31223A302C226D616B6575705F32223A302C22686169725F636F6C6F725F32223A302C2270616E74735F32223A302C22746F72736F5F32223A302C226D61736B5F31223A302C2268656C6D65745F31223A2D312C22686169725F31223A302C226D616B6575705F33223A302C22626167735F32223A302C22686169725F32223A302C22646563616C735F31223A302C2265796562726F77735F34223A302C2270616E74735F31223A307D, 'unemployed', '0', 0x5B7B226E616D65223A22574541504F4E5F504953544F4C222C226C6162656C223A22506973746F6C6574222C22616D6D6F223A307D5D, '{\"x\":111.97885894775,\"y\":-1168.1761474609,\"z\":31.424938201904}', '724000', '0', 'user', '0', 0x5B7B2270657263656E74223A33392E33322C2276616C223A3339333230302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A33362E36352C2276616C223A3336363530302C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, 'Toni', 'Mariani', '1997/06/017', 'm', '174', null, '84053', '', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:110000104241d07', 'license:18411ebfebb604c6a075fb0e0ebf6004049b46a7', '3000', 'MrCin', null, 'unemployed', '0', 0x5B5D, '{\"z\":56.084495544434,\"y\":2829.0,\"x\":-338.04306030273}', '0', '0', 'user', '0', 0x5B7B2270657263656E74223A39392E34322C2276616C223A3939343230302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A39392E3536352C2276616C223A3939353635302C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, 'Martina', 'Winters', '1995/03/15', 'f', '178', null, '33735', 'Required', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:110000118174a89', 'license:18cc7ea072f279347872f6b524e41fbd7c62d4e2', '3000', 'Ivo_Roxy', null, 'unemployed', '0', 0x5B5D, '{\"z\":39.997852325439,\"y\":-439.5075378418,\"x\":-26.011987686157}', '2100', '0', 'user', '0', 0x5B7B2276616C223A3438363730302C2270657263656E74223A34382E36372C226E616D65223A2268756E676572227D2C7B2276616C223A3439303032352C2270657263656E74223A34392E303032352C226E616D65223A22746869727374227D2C7B2276616C223A302C2270657263656E74223A302E302C226E616D65223A226472756E6B227D5D, 'Ivo', 'CGW', '2002/01/17', 'm', '180', null, '90634', 'Required', '{}', '0', null, '1', '');
INSERT INTO `users` VALUES ('steam:11000011af99e80', 'license:cf548e6962bce9708bef2d2ae38b52113b99167a', '3000', 'khalilox', 0x7B22736578223A302C2262656172645F31223A302C22656172735F32223A302C2273686F65735F32223A302C226D61736B5F31223A302C226D616B6575705F32223A302C226C6970737469636B5F31223A302C226C6970737469636B5F32223A302C22636861696E5F31223A302C22626167735F32223A302C22686169725F31223A34302C227473686972745F31223A302C22646563616C735F31223A302C2273686F65735F31223A302C2270616E74735F32223A302C226D61736B5F32223A302C2265796562726F77735F33223A302C226167655F31223A302C2268656C6D65745F32223A302C2266616365223A31302C226167655F32223A302C22686169725F636F6C6F725F32223A302C22686169725F636F6C6F725F31223A302C22676C61737365735F31223A302C2268656C6D65745F31223A2D312C226D616B6575705F34223A302C22746F72736F5F32223A302C22626167735F31223A302C22746F72736F5F31223A302C2262656172645F33223A302C226D616B6575705F33223A302C22676C61737365735F32223A302C2270616E74735F31223A302C2262656172645F32223A302C226270726F6F665F31223A302C22636861696E5F32223A302C22646563616C735F32223A302C22736B696E223A302C227473686972745F32223A302C226D616B6575705F31223A302C2265796562726F77735F32223A302C226C6970737469636B5F34223A302C2262656172645F34223A302C2265796562726F77735F34223A302C2265796562726F77735F31223A302C2261726D73223A302C22686169725F32223A302C226C6970737469636B5F33223A302C22656172735F31223A2D312C226270726F6F665F32223A307D, 'unemployed', '0', 0x5B7B226E616D65223A22574541504F4E5F50554D5053484F5447554E222C22616D6D6F223A302C226C6162656C223A22467573696C20C3A020706F6D7065227D5D, '{\"z\":29.290040969849,\"x\":92.555015563965,\"y\":-1324.1037597656}', '500', '0', 'user', '0', 0x5B7B2270657263656E74223A39322E37372C226E616D65223A2268756E676572222C2276616C223A3932373730307D2C7B2270657263656E74223A39342E353737352C226E616D65223A22746869727374222C2276616C223A3934353737357D2C7B2270657263656E74223A302E302C226E616D65223A226472756E6B222C2276616C223A307D5D, 'Khalil', 'Abbadi', '1998/20/12', 'm', '180', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:11000011d47a3e9', 'license:e19de1d58d913eab0fcaefc61b894a4e2355b5c2', '3000', 'mpalka03', 0x7B22626167735F32223A302C22626167735F31223A302C2268656C6D65745F32223A302C22646563616C735F32223A302C22676C61737365735F31223A302C22686169725F636F6C6F725F32223A302C2273686F65735F32223A302C226270726F6F665F32223A302C2268656C6D65745F31223A2D312C22736B696E223A302C22736578223A302C22636861696E5F31223A302C226D61736B5F31223A302C2265796562726F77735F34223A302C226270726F6F665F31223A302C2270616E74735F31223A302C22686169725F32223A302C22686169725F636F6C6F725F31223A302C22686169725F31223A302C2262656172645F33223A302C2266616365223A302C2265796562726F77735F31223A302C226C6970737469636B5F33223A302C226D61736B5F32223A302C2273686F65735F31223A302C226C6970737469636B5F34223A302C2262656172645F31223A302C2262656172645F34223A302C226167655F32223A302C226D616B6575705F31223A302C2265796562726F77735F33223A302C22636861696E5F32223A302C226C6970737469636B5F32223A302C227473686972745F32223A302C22746F72736F5F31223A302C22656172735F32223A302C2262656172645F32223A302C22746F72736F5F32223A302C226167655F31223A302C227473686972745F31223A302C226D616B6575705F34223A302C2270616E74735F32223A302C226D616B6575705F32223A302C2265796562726F77735F32223A302C226D616B6575705F33223A302C2261726D73223A302C226C6970737469636B5F31223A302C22656172735F31223A2D312C22676C61737365735F32223A302C22646563616C735F31223A307D, 'unemployed', '0', 0x5B5D, '{\"x\":1662.7755126953,\"y\":-22.728290557861,\"z\":174.92790222168}', '500', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2270657263656E74223A39362E30362C2276616C223A3936303630307D2C7B226E616D65223A22746869727374222C2270657263656E74223A39372E3034352C2276616C223A3937303435307D2C7B226E616D65223A226472756E6B222C2270657263656E74223A302E302C2276616C223A307D5D, 'Matt', 'Plaka', '1993/1/16', 'm', '160', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:1100001197657ba', 'license:2c3fb834f9f2a5aade61f79d879a8439216d9987', '3000', 'bobi boten', null, 'unemployed', '0', 0x5B5D, '{\"y\":2092.1604003906,\"x\":-597.17724609375,\"z\":131.4112701416}', '0', '0', 'user', '0', 0x5B7B2270657263656E74223A39392E30332C2276616C223A3939303330302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A39392E323732352C2276616C223A3939323732352C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, '', '', '', '', '', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:110000106008986', 'license:89c913bf059b197ea7f5d2103d256d55edc66c0f', '3000', 'Stiflehill', null, 'unemployed', '0', 0x5B5D, '{\"x\":-2607.9760742188,\"y\":3552.755859375,\"z\":5.6841516494751}', '500', '0', 'user', '0', 0x5B7B2276616C223A3938353630302C226E616D65223A2268756E676572222C2270657263656E74223A39382E35367D2C7B2276616C223A3938393230302C226E616D65223A22746869727374222C2270657263656E74223A39382E39327D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Dude', 'The Dude', '14-4-1982', 'm', '199', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:110000134dc2aa9', 'license:710cee334170460b2eebe9456262e81f12e07761', '3000', 'kevinmuller2018', null, 'unemployed', '0', 0x5B5D, '{\"y\":0.0,\"x\":0.0,\"z\":0.0}', '0', '0', 'user', '0', 0x5B5D, '', '', '', '', '', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:110000107488f5d', 'license:4517bbcfb2b3ab4eeb716972a6625fc57078662a', '3000', 'Jeff Goodman', null, 'unemployed', '0', 0x5B5D, '{\"z\":30.859279632568,\"y\":6118.365234375,\"x\":-259.33645629883}', '0', '0', 'user', '0', 0x5B7B2276616C223A3938353330302C2270657263656E74223A39382E35332C226E616D65223A2268756E676572227D2C7B2276616C223A3938383937352C2270657263656E74223A39382E383937352C226E616D65223A22746869727374227D2C7B2276616C223A302C2270657263656E74223A302E302C226E616D65223A226472756E6B227D5D, 'Jeff', 'Goodman', '1994 12 6', 'm', '172', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:11000010dd5edad', 'license:47bb5c018b52c85754080a2871726b7e642c101a', '3000', 'SiggiPalli', null, 'unemployed', '0', 0x5B5D, '{\"z\":23.375455856323,\"y\":5408.2309570313,\"x\":-1448.0217285156}', '0', '0', 'user', '0', 0x5B7B2276616C223A3939353030302C2270657263656E74223A39392E352C226E616D65223A2268756E676572227D2C7B2276616C223A3939363235302C2270657263656E74223A39392E3632352C226E616D65223A22746869727374227D2C7B2276616C223A302C2270657263656E74223A302E302C226E616D65223A226472756E6B227D5D, '', '', '', '', '', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:110000108762d64', 'license:7ea46c598d71ccf5673d34705e2fdc34af75012b', '3000', 'proditaki', 0x7B2262656172645F33223A302C226D616B6575705F34223A302C22626167735F32223A302C226C6970737469636B5F31223A302C2266616365223A362C226C6970737469636B5F33223A302C2262656172645F31223A302C226270726F6F665F31223A302C2268656C6D65745F31223A2D312C226D616B6575705F33223A302C226167655F31223A302C2270616E74735F32223A302C2270616E74735F31223A312C22646563616C735F31223A302C22656172735F31223A2D312C22686169725F31223A332C226167655F32223A302C2273686F65735F32223A302C22686169725F636F6C6F725F31223A322C2273686F65735F31223A312C22746F72736F5F31223A302C226D61736B5F31223A302C22636861696E5F32223A302C22746F72736F5F32223A302C2261726D73223A302C22646563616C735F32223A302C22676C61737365735F31223A302C22686169725F32223A352C226D61736B5F32223A302C227473686972745F31223A372C2265796562726F77735F32223A302C226C6970737469636B5F32223A302C226D616B6575705F32223A302C22736B696E223A312C227473686972745F32223A302C2262656172645F32223A302C2265796562726F77735F31223A302C2262656172645F34223A302C226C6970737469636B5F34223A302C22636861696E5F31223A302C22676C61737365735F32223A302C226D616B6575705F31223A302C2268656C6D65745F32223A302C22736578223A302C22626167735F31223A302C2265796562726F77735F33223A302C2265796562726F77735F34223A302C22686169725F636F6C6F725F32223A332C226270726F6F665F32223A302C22656172735F32223A307D, 'unemployed', '0', 0x5B5D, '{\"y\":3751.9067382813,\"z\":43.13537979126,\"x\":2495.2153320313}', '0', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2276616C223A3938353530302C2270657263656E74223A39382E35357D2C7B226E616D65223A22746869727374222C2276616C223A3938393132352C2270657263656E74223A39382E393132357D2C7B226E616D65223A226472756E6B222C2276616C223A302C2270657263656E74223A302E307D5D, 'Durk', 'Swagger', '1-1-1985', 'm', '195', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:11000010d853f55', 'license:8934b7eeca60b5c7e82479474bf2ae7ea4c89579', '3000', 'PsyWren', 0x7B2262656172645F33223A302C226D616B6575705F34223A302C22626167735F32223A302C226C6970737469636B5F31223A302C2266616365223A34352C226C6970737469636B5F33223A302C2262656172645F31223A302C226270726F6F665F31223A302C226D61736B5F32223A302C226D616B6575705F33223A302C226167655F31223A302C2270616E74735F32223A302C2270616E74735F31223A302C22646563616C735F31223A302C22656172735F31223A2D312C22686169725F31223A31362C2261726D73223A352C2273686F65735F32223A322C22686169725F636F6C6F725F31223A31372C2273686F65735F31223A31312C22636861696E5F31223A322C22736B696E223A31302C226270726F6F665F32223A302C22746F72736F5F31223A33312C226D616B6575705F32223A352C226D61736B5F31223A302C2268656C6D65745F31223A2D312C22686169725F32223A332C226167655F32223A302C227473686972745F31223A302C22636861696E5F32223A332C226C6970737469636B5F32223A302C22676C61737365735F31223A352C22746F72736F5F32223A332C226D616B6575705F31223A302C2262656172645F32223A302C226C6970737469636B5F34223A302C2262656172645F34223A302C2265796562726F77735F31223A322C2265796562726F77735F32223A362C22676C61737365735F32223A302C2268656C6D65745F32223A302C2265796562726F77735F33223A34312C22736578223A312C22646563616C735F32223A302C22626167735F31223A302C2265796562726F77735F34223A33362C22686169725F636F6C6F725F32223A342C227473686972745F32223A302C22656172735F32223A307D, 'unemployed', '0', 0x5B5D, '{\"y\":4268.3588867188,\"z\":45.336524963379,\"x\":-2262.9616699219}', '1500', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2276616C223A3839313230302C2270657263656E74223A38392E31327D2C7B226E616D65223A22746869727374222C2276616C223A3931383430302C2270657263656E74223A39312E38347D2C7B226E616D65223A226472756E6B222C2276616C223A302C2270657263656E74223A302E307D5D, 'Aurora', 'Wilkes', '1998/12/12', 'f', '160', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:110000105f29a1c', 'license:27204a882d505d18d14cb5bdc32a80929704d662', '3000', '»PrO__KiLeR«™', null, 'unemployed', '0', 0x5B5D, '{\"y\":1596.8001708984,\"z\":356.33712768555,\"x\":-428.77111816406}', '500', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2276616C223A313030303030302C2270657263656E74223A3130302E307D2C7B226E616D65223A22746869727374222C2276616C223A313030303030302C2270657263656E74223A3130302E307D2C7B226E616D65223A226472756E6B222C2276616C223A302C2270657263656E74223A302E307D5D, 'Denis', 'Mehmed', '2000-03-25', 'm', '180', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:110000119ed79e9', 'license:e6289ef2ebd7d197040410076ffe07267bf4fcc1', '3000', 'gskf503', null, 'unemployed', '0', 0x5B5D, '{\"x\":-1495.0699462891,\"z\":55.650932312012,\"y\":142.69746398926}', '500', '0', 'user', '0', 0x5B7B2270657263656E74223A39372E38352C2276616C223A3937383530302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A39382E333837352C2276616C223A3938333837352C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, '', '', '', '', '', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:1100001356edd90', 'license:22d6ff3214c55b87ad9eec366b47a955e2f03c7c', '3000', 'rhysbriscoe', null, 'unemployed', '0', 0x5B7B226E616D65223A22574541504F4E5F43415242494E455249464C45222C22616D6D6F223A33302C226C6162656C223A224361726162696E65206427617373617574227D5D, '{\"z\":43.610706329346,\"y\":3291.9851074219,\"x\":1696.1042480469}', '1000', '0', 'user', '0', 0x5B7B2270657263656E74223A39312E37382C2276616C223A3931373830302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A39332E3833352C2276616C223A3933383335302C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, 'Rhys', 'Briscoe', '1999-08-28', 'm', '200', null, null, 'Required', '{}', '1', null, '1', '');
INSERT INTO `users` VALUES ('steam:11000010bc1a7fa', 'license:322fc9d2680bccc4223c43092a20e82d61fa0bae', '3000', 'Mr__Elliot', 0x7B2261726D73223A302C2262656172645F32223A302C226C6970737469636B5F33223A302C226167655F31223A302C2265796562726F77735F34223A302C226C6970737469636B5F32223A302C22736578223A302C22746F72736F5F31223A302C226D616B6575705F32223A302C2270616E74735F32223A302C22686169725F32223A302C22636861696E5F32223A302C2265796562726F77735F32223A302C22676C61737365735F31223A302C227473686972745F31223A302C22656172735F32223A302C226270726F6F665F31223A302C2270616E74735F31223A302C2262656172645F31223A302C22686169725F636F6C6F725F32223A302C2266616365223A302C2265796562726F77735F31223A302C22636861696E5F31223A302C226D616B6575705F33223A302C226C6970737469636B5F34223A302C2268656C6D65745F31223A2D312C22646563616C735F32223A302C226270726F6F665F32223A302C2262656172645F33223A302C226D61736B5F31223A302C22736B696E223A302C22686169725F31223A302C226D616B6575705F31223A302C226D616B6575705F34223A302C226C6970737469636B5F31223A302C226D61736B5F32223A302C22686169725F636F6C6F725F31223A302C227473686972745F32223A302C22656172735F31223A2D312C2265796562726F77735F33223A302C22676C61737365735F32223A302C22626167735F31223A302C226167655F32223A302C2273686F65735F32223A302C2268656C6D65745F32223A302C22746F72736F5F32223A302C22626167735F32223A302C2262656172645F34223A302C2273686F65735F31223A302C22646563616C735F31223A307D, 'unemployed', '0', 0x5B5D, '{\"y\":3803.6530761719,\"z\":32.132991790771,\"x\":1974.3933105469}', '500', '0', 'user', '0', 0x5B7B2270657263656E74223A39382E36352C2276616C223A3938363530302C226E616D65223A2268756E676572227D2C7B2270657263656E74223A39382E393837352C2276616C223A3938393837352C226E616D65223A22746869727374227D2C7B2270657263656E74223A302E302C2276616C223A302C226E616D65223A226472756E6B227D5D, 'Gif', 'Dad', '19940421', 'm', '175', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:1100001080e2950', 'license:c13d2f41c1c5cc9627b8ea9ebe0e77f9718b288d', '3000', 'GalacticSoviet', 0x7B22736578223A302C22626167735F32223A302C22686169725F32223A302C22736B696E223A302C2262656172645F31223A302C227473686972745F32223A302C22686169725F31223A302C2265796562726F77735F34223A302C2266616365223A302C22646563616C735F31223A302C2268656C6D65745F31223A2D312C22656172735F31223A2D312C226167655F32223A302C2273686F65735F32223A302C22746F72736F5F31223A302C226D616B6575705F33223A302C2261726D73223A302C227473686972745F31223A302C2262656172645F34223A302C22686169725F636F6C6F725F31223A302C22646563616C735F32223A302C22636861696E5F32223A302C2265796562726F77735F31223A302C2265796562726F77735F32223A302C22656172735F32223A302C2273686F65735F31223A302C226270726F6F665F31223A302C226D616B6575705F31223A302C226D61736B5F32223A302C226270726F6F665F32223A302C226C6970737469636B5F34223A302C2262656172645F33223A302C22636861696E5F31223A302C226C6970737469636B5F32223A302C226D616B6575705F32223A302C22676C61737365735F32223A302C22686169725F636F6C6F725F32223A302C226D61736B5F31223A302C22626167735F31223A302C2270616E74735F32223A302C2268656C6D65745F32223A302C226D616B6575705F34223A302C2262656172645F32223A302C226C6970737469636B5F31223A302C2265796562726F77735F33223A302C226C6970737469636B5F33223A302C2270616E74735F31223A302C226167655F31223A302C22746F72736F5F32223A302C22676C61737365735F31223A307D, 'unemployed', '0', 0x5B7B22616D6D6F223A302C226E616D65223A22574541504F4E5F4B4E494645222C226C6162656C223A22436F7574656175227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F4E49474854535449434B222C226C6162656C223A224D61747261717565227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F48414D4D4552222C226C6162656C223A224D617274656175227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F424154222C226C6162656C223A224261747465227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F474F4C46434C5542222C226C6162656C223A22436C756220646520676F6C66227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F43524F57424152222C226C6162656C223A2250696564206465206269636865227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F504953544F4C222C226C6162656C223A22506973746F6C6574227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F434F4D424154504953544F4C222C226C6162656C223A22506973746F6C657420646520636F6D626174227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4150504953544F4C222C226C6162656C223A22506973746F6C6574206175746F6D617469717565227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F504953544F4C3530222C226C6162656C223A22506973746F6C65742063616C69627265203530227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D4943524F534D47222C226C6162656C223A224D6963726F20736D67227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F534D47222C226C6162656C223A22536D67227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F41535341554C54534D47222C226C6162656C223A22536D67206427617373617574227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F41535341554C545249464C45222C226C6162656C223A22467573696C206427617373617574227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F43415242494E455249464C45222C226C6162656C223A224361726162696E65206427617373617574227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F414456414E4345445249464C45222C226C6162656C223A22467573696C206176616E63C3A9227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D47222C226C6162656C223A224D69747261696C6C65757365227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F434F4D4241544D47222C226C6162656C223A224D69747261696C6C6575736520646520636F6D626174227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F50554D5053484F5447554E222C226C6162656C223A22467573696C20C3A020706F6D7065227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F5341574E4F464653484F5447554E222C226C6162656C223A224361726162696E6520C3A02063616E6F6E20736369C3A9227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F41535341554C5453484F5447554E222C226C6162656C223A224361726162696E65206427617373617574227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F42554C4C50555053484F5447554E222C226C6162656C223A224361726162696E652062756C6C707570227D2C7B22616D6D6F223A3230302C226E616D65223A22574541504F4E5F5354554E47554E222C226C6162656C223A2254617A6572227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F534E495045525249464C45222C226C6162656C223A22467573696C20646520736E69706572227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4845415659534E49504552222C226C6162656C223A22467573696C20646520736E69706572206C6F757264227D2C7B22616D6D6F223A32302C226E616D65223A22574541504F4E5F4752454E4144454C41554E43484552222C226C6162656C223A224C616E63652D6772656E616465227D2C7B22616D6D6F223A32302C226E616D65223A22574541504F4E5F525047222C226C6162656C223A224C616E63652D726F636B6574227D2C7B22616D6D6F223A3230302C226E616D65223A22574541504F4E5F4D494E4947554E222C226C6162656C223A224D696E6967756E227D2C7B22616D6D6F223A32352C226E616D65223A22574541504F4E5F4752454E414445222C226C6162656C223A224772656E616465227D2C7B22616D6D6F223A32352C226E616D65223A22574541504F4E5F535449434B59424F4D42222C226C6162656C223A22426F6D626520636F6C6C616E7465227D2C7B22616D6D6F223A32352C226E616D65223A22574541504F4E5F534D4F4B454752454E414445222C226C6162656C223A224772656E6164652066756D6967C3A86E65227D2C7B22616D6D6F223A32352C226E616D65223A22574541504F4E5F425A474153222C226C6162656C223A224772656E61646520C3A02067617A20627A227D2C7B22616D6D6F223A32352C226E616D65223A22574541504F4E5F4D4F4C4F544F56222C226C6162656C223A22436F636B7461696C206D6F6C6F746F76227D2C7B22616D6D6F223A3230302C226E616D65223A22574541504F4E5F46495245455854494E47554953484552222C226C6162656C223A22457874696E6374657572227D2C7B22616D6D6F223A3230302C226E616D65223A22574541504F4E5F504554524F4C43414E222C226C6162656C223A224A6572726963616E206427657373656E6365227D2C7B22616D6D6F223A312C226E616D65223A22574541504F4E5F42414C4C222C226C6162656C223A2242616C6C65227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F534E53504953544F4C222C226C6162656C223A22506973746F6C657420736E73227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F424F54544C45222C226C6162656C223A22426F757465696C6C65227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F475553454E42455247222C226C6162656C223A2242616C61796575736520677573656E62657267227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F5350454349414C43415242494E45222C226C6162656C223A224361726162696E65207370C3A96369616C65227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4845415659504953544F4C222C226C6162656C223A22506973746F6C6574206C6F757264227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F42554C4C5055505249464C45222C226C6162656C223A22467573696C2062756C6C707570227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F444147474552222C226C6162656C223A22506F69676E617264227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F56494E54414745504953544F4C222C226C6162656C223A22506973746F6C65742076696E74616765227D2C7B22616D6D6F223A32302C226E616D65223A22574541504F4E5F46495245574F524B222C226C6162656C223A224665752064276172746966696365227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D55534B4554222C226C6162656C223A224D6F757371756574227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F484541565953484F5447554E222C226C6162656C223A22467573696C20C3A020706F6D7065206C6F757264227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D41524B534D414E5249464C45222C226C6162656C223A22467573696C206D61726B736D616E227D2C7B22616D6D6F223A31302C226E616D65223A22574541504F4E5F484F4D494E474C41554E43484552222C226C6162656C223A224C616E63652074C3AA74652D63686572636865757365227D2C7B22616D6D6F223A352C226E616D65223A22574541504F4E5F50524F584D494E45222C226C6162656C223A224D696E652064652070726F78696D6974C3A9227D2C7B22616D6D6F223A31302C226E616D65223A22574541504F4E5F534E4F5742414C4C222C226C6162656C223A22426F756C65206465206E65696765227D2C7B22616D6D6F223A32302C226E616D65223A22574541504F4E5F464C41524547554E222C226C6162656C223A224C616E636520667573C3A9652064652064C3A9747265737365227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F434F4D424154504457222C226C6162656C223A2241726D652064652064C3A966656E736520706572736F6E6E656C6C65227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D41524B534D414E504953544F4C222C226C6162656C223A22506973746F6C6574206D61726B736D616E227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F4B4E55434B4C45222C226C6162656C223A22506F696E6720616DC3A972696361696E227D2C7B22616D6D6F223A32302C226E616D65223A22574541504F4E5F5241494C47554E222C226C6162656C223A2243616E6F6E20C3A96CC3A963747269717565227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D414348494E45504953544F4C222C226C6162656C223A22506973746F6C6574206D69747261696C6C657572227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F535749544348424C414445222C226C6162656C223A22436F757465617520C3A0206372616E206427617272C3AA74227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F5245564F4C564552222C226C6162656C223A225265766F6C766572227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F444253484F5447554E222C226C6162656C223A22467573696C20C3A020706F6D706520646F75626C652063616E6F6E227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F434F4D504143545249464C45222C226C6162656C223A22467573696C20636F6D70616374227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4155544F53484F5447554E222C226C6162656C223A22467573696C20C3A020706F6D7065206175746F6D617469717565227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F424154544C45415845222C226C6162656C223A22486163686520646520636F6D626174227D2C7B22616D6D6F223A32302C226E616D65223A22574541504F4E5F434F4D504143544C41554E43484552222C226C6162656C223A224C616E6365757220636F6D70616374227D2C7B22616D6D6F223A3235302C226E616D65223A22574541504F4E5F4D494E49534D47222C226C6162656C223A224D696E6920736D67227D2C7B22616D6D6F223A31302C226E616D65223A22574541504F4E5F50495045424F4D42222C226C6162656C223A22426F6D6265207475796175227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F504F4F4C435545222C226C6162656C223A2251756575652064652062696C6C617264227D2C7B22616D6D6F223A302C226E616D65223A22574541504F4E5F5752454E4348222C226C6162656C223A22436CC3A9227D2C7B22616D6D6F223A302C226E616D65223A224741444745545F4E49474854564953494F4E222C226C6162656C223A22566973696F6E206E6F637475726E65227D2C7B22616D6D6F223A302C226E616D65223A224741444745545F504152414348555445222C226C6162656C223A22506172616368757465227D2C7B22616D6D6F223A32352C226E616D65223A22574541504F4E5F464C415245222C226C6162656C223A22467573C3A9652044C3A9747265737365227D5D, '{\"x\":253.59976196289,\"z\":120.11982727051,\"y\":429.33374023438}', '1500', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2276616C223A3837323130302C2270657263656E74223A38372E32317D2C7B226E616D65223A22746869727374222C2276616C223A3930343037352C2270657263656E74223A39302E343037357D2C7B226E616D65223A226472756E6B222C2276616C223A302C2270657263656E74223A302E307D5D, 'Bill', 'Nye', '(1980,11,27)', 'm', '160', null, null, 'Required', '{}', '1', null, '1', '');
INSERT INTO `users` VALUES ('steam:110000117123f36', 'license:ddef38e1c6db12f6c3793a5394aaf46c30d12203', '3000', 'Groot csgonecro.com hellcase.com', null, 'unemployed', '0', 0x5B5D, '{\"x\":-1586.8537597656,\"z\":13.017395019531,\"y\":-1010.2131958008}', '0', '0', 'user', '0', 0x5B7B226E616D65223A2268756E676572222C2276616C223A3938383430302C2270657263656E74223A39382E38347D2C7B226E616D65223A22746869727374222C2276616C223A3939313330302C2270657263656E74223A39392E31337D2C7B226E616D65223A226472756E6B222C2276616C223A302C2270657263656E74223A302E307D5D, 'Jake', 'Moss', '1996/12/5', 'm', '177', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:1100001329a0c01', 'license:a4b051d692f5584039ab3bf07cb822d3462712a4', '3000', 'comando_bear', null, 'unemployed', '0', 0x5B5D, '{\"y\":-327.37771606445,\"x\":-2090.8520507813,\"z\":12.456046104431}', '1000', '0', 'user', '0', 0x5B7B2276616C223A3933313930302C226E616D65223A2268756E676572222C2270657263656E74223A39332E31397D2C7B2276616C223A3934383932352C226E616D65223A22746869727374222C2270657263656E74223A39342E383932357D2C7B2276616C223A302C226E616D65223A226472756E6B222C2270657263656E74223A302E307D5D, 'Comando', 'Bear', '1995,01,04', 'm', '173', null, null, 'Required', '{}', null, null, '1', '');
INSERT INTO `users` VALUES ('steam:1100001137fc9b0', 'license:e50b3dbb5d9897424ed09bae5a3360f2f2908ce3', '3000', 'Sansa Stark', 0x7B2263686573745F31223A302C226167655F31223A302C2263686573745F33223A302C2262656172645F31223A302C22626C7573685F32223A302C22646563616C735F31223A302C226C6970737469636B5F32223A302C2265796562726F77735F34223A302C2263686573745F32223A302C2262656172645F34223A302C22686169725F636F6C6F725F31223A302C22626F6479625F31223A302C2273686F65735F32223A302C22776174636865735F31223A2D312C22626C656D69736865735F31223A302C227473686972745F31223A302C226D616B6575705F31223A302C226C6970737469636B5F33223A302C226D616B6575705F33223A302C22626167735F32223A302C22626F6479625F32223A302C2270616E74735F31223A302C2268656C6D65745F31223A2D312C22636F6D706C6578696F6E5F32223A302C226D6F6C65735F32223A302C2266616365223A34352C2273756E5F31223A302C22676C61737365735F32223A302C22736578223A302C226270726F6F665F32223A302C22656172735F32223A302C2265796562726F77735F31223A302C226167655F32223A302C226270726F6F665F31223A302C22676C61737365735F31223A302C22626C656D69736865735F32223A302C2265796562726F77735F33223A302C2273686F65735F31223A302C22736B696E223A302C22776174636865735F32223A302C2261726D73223A302C2265796562726F77735F32223A302C2262726163656C6574735F32223A302C22686169725F32223A302C226C6970737469636B5F34223A302C226C6970737469636B5F31223A302C22686169725F636F6C6F725F32223A302C2270616E74735F32223A302C227473686972745F32223A302C226579655F636F6C6F72223A302C22626C7573685F33223A302C22746F72736F5F32223A302C22686169725F31223A342C226D616B6575705F34223A302C2262656172645F32223A302C2262726163656C6574735F31223A2D312C226D616B6575705F32223A302C2268656C6D65745F32223A302C2262656172645F33223A302C226D61736B5F32223A302C226D6F6C65735F31223A302C2261726D735F32223A302C2273756E5F32223A302C22646563616C735F32223A302C22626C7573685F31223A302C22626167735F31223A302C22636F6D706C6578696F6E5F31223A302C22636861696E5F31223A302C22746F72736F5F31223A302C22656172735F31223A2D312C226D61736B5F31223A302C22636861696E5F32223A307D, 'unemployed', '0', 0x5B5D, '{\"z\":296.51953125,\"y\":-967.99090576172,\"x\":-103.65381622314}', '0', '0', 'user', '0', 0x5B7B2270657263656E74223A39382E39342C226E616D65223A2268756E676572222C2276616C223A3938393430307D2C7B2270657263656E74223A39392E3230352C226E616D65223A22746869727374222C2276616C223A3939323035307D2C7B2270657263656E74223A302E302C226E616D65223A226472756E6B222C2276616C223A307D5D, 'Nikol', 'Kuken', '13121994', 'm', '177', null, null, 'Required', '{}', null, null, '1', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_accounts
-- ----------------------------
INSERT INTO `user_accounts` VALUES ('1', 'steam:1100001081ca641', 'black_money', '24461');
INSERT INTO `user_accounts` VALUES ('6', 'steam:11000010bf1d422', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('7', 'steam:11000010e659d79', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('8', 'steam:1100001080d2eac', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('9', 'steam:11000010b791fb5', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('10', 'steam:110000112cc1d89', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('11', 'steam:110000107e0850f', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('12', 'steam:110000107f00b0f', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('13', 'steam:110000104241d07', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('14', 'steam:110000118174a89', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('15', 'steam:1100001131dfe30', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('16', 'steam:1100001155676a1', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('17', 'steam:11000011af99e80', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('18', 'steam:11000011d47a3e9', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('19', 'steam:1100001197657ba', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('20', 'steam:110000106008986', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('21', 'steam:110000134dc2aa9', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('22', 'steam:110000107488f5d', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('23', 'steam:11000010dd5edad', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('24', 'steam:110000108762d64', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('25', 'steam:11000010d853f55', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('26', 'steam:110000105f29a1c', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('27', 'steam:110000119ed79e9', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('28', 'steam:1100001356edd90', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('29', 'steam:11000010bc1a7fa', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('30', 'steam:1100001080e2950', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('31', 'steam:110000117123f36', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('32', 'steam:1100001329a0c01', 'black_money', '0');
INSERT INTO `user_accounts` VALUES ('33', 'steam:1100001137fc9b0', 'black_money', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4198 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inventory
-- ----------------------------
INSERT INTO `user_inventory` VALUES ('1', 'steam:1100001081ca641', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('2', 'steam:11000010bf1d422', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('3', 'steam:11000010e659d79', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('4', 'steam:1100001080d2eac', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('5', 'steam:110000112cc1d89', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('6', 'steam:110000107e0850f', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('7', 'steam:110000107f00b0f', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('8', 'steam:110000104241d07', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('9', 'steam:110000118174a89', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('10', 'steam:11000011af99e80', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('11', 'steam:11000011d47a3e9', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('12', 'steam:1100001197657ba', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('13', 'steam:110000106008986', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('14', 'steam:110000134dc2aa9', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('15', 'steam:110000107488f5d', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('16', 'steam:11000010dd5edad', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('17', 'steam:110000108762d64', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('18', 'steam:11000010d853f55', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('19', 'steam:110000105f29a1c', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('20', 'steam:110000119ed79e9', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('21', 'steam:1100001356edd90', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('22', 'steam:11000010bc1a7fa', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('23', 'steam:1100001080e2950', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('24', 'steam:110000117123f36', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('25', 'steam:1100001329a0c01', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('26', 'steam:1100001137fc9b0', 'gps', '1');
INSERT INTO `user_inventory` VALUES ('27', 'steam:1100001081ca641', 'water', '8');
INSERT INTO `user_inventory` VALUES ('28', 'steam:11000010bf1d422', 'water', '10');
INSERT INTO `user_inventory` VALUES ('29', 'steam:11000010e659d79', 'water', '10');
INSERT INTO `user_inventory` VALUES ('30', 'steam:1100001080d2eac', 'water', '10');
INSERT INTO `user_inventory` VALUES ('31', 'steam:110000112cc1d89', 'water', '10');
INSERT INTO `user_inventory` VALUES ('32', 'steam:110000107e0850f', 'water', '10');
INSERT INTO `user_inventory` VALUES ('33', 'steam:110000107f00b0f', 'water', '10');
INSERT INTO `user_inventory` VALUES ('34', 'steam:110000104241d07', 'water', '10');
INSERT INTO `user_inventory` VALUES ('35', 'steam:110000118174a89', 'water', '10');
INSERT INTO `user_inventory` VALUES ('36', 'steam:11000011af99e80', 'water', '10');
INSERT INTO `user_inventory` VALUES ('37', 'steam:11000011d47a3e9', 'water', '10');
INSERT INTO `user_inventory` VALUES ('38', 'steam:1100001197657ba', 'water', '10');
INSERT INTO `user_inventory` VALUES ('39', 'steam:110000106008986', 'water', '10');
INSERT INTO `user_inventory` VALUES ('40', 'steam:110000134dc2aa9', 'water', '10');
INSERT INTO `user_inventory` VALUES ('41', 'steam:110000107488f5d', 'water', '10');
INSERT INTO `user_inventory` VALUES ('42', 'steam:11000010dd5edad', 'water', '10');
INSERT INTO `user_inventory` VALUES ('43', 'steam:110000108762d64', 'water', '10');
INSERT INTO `user_inventory` VALUES ('44', 'steam:11000010d853f55', 'water', '10');
INSERT INTO `user_inventory` VALUES ('45', 'steam:110000105f29a1c', 'water', '10');
INSERT INTO `user_inventory` VALUES ('46', 'steam:110000119ed79e9', 'water', '10');
INSERT INTO `user_inventory` VALUES ('47', 'steam:1100001356edd90', 'water', '10');
INSERT INTO `user_inventory` VALUES ('48', 'steam:11000010bc1a7fa', 'water', '10');
INSERT INTO `user_inventory` VALUES ('49', 'steam:1100001080e2950', 'water', '10');
INSERT INTO `user_inventory` VALUES ('50', 'steam:110000117123f36', 'water', '10');
INSERT INTO `user_inventory` VALUES ('51', 'steam:1100001329a0c01', 'water', '10');
INSERT INTO `user_inventory` VALUES ('52', 'steam:1100001137fc9b0', 'water', '10');
INSERT INTO `user_inventory` VALUES ('53', 'steam:1100001081ca641', 'bread', '5');
INSERT INTO `user_inventory` VALUES ('54', 'steam:11000010bf1d422', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('55', 'steam:11000010e659d79', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('56', 'steam:1100001080d2eac', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('57', 'steam:110000112cc1d89', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('58', 'steam:110000107e0850f', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('59', 'steam:110000107f00b0f', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('60', 'steam:110000104241d07', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('61', 'steam:110000118174a89', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('62', 'steam:11000011af99e80', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('63', 'steam:11000011d47a3e9', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('64', 'steam:1100001197657ba', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('65', 'steam:110000106008986', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('66', 'steam:110000134dc2aa9', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('67', 'steam:110000107488f5d', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('68', 'steam:11000010dd5edad', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('69', 'steam:110000108762d64', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('70', 'steam:11000010d853f55', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('71', 'steam:110000105f29a1c', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('72', 'steam:110000119ed79e9', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('73', 'steam:1100001356edd90', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('74', 'steam:11000010bc1a7fa', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('75', 'steam:1100001080e2950', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('76', 'steam:110000117123f36', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('77', 'steam:1100001329a0c01', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('78', 'steam:1100001137fc9b0', 'bread', '10');
INSERT INTO `user_inventory` VALUES ('4083', 'steam:1100001081ca641', 'bolpistache', '0');
INSERT INTO `user_inventory` VALUES ('4084', 'steam:1100001081ca641', 'slaughtered_chicken', '0');
INSERT INTO `user_inventory` VALUES ('4085', 'steam:1100001081ca641', 'fixtool', '0');
INSERT INTO `user_inventory` VALUES ('4086', 'steam:1100001081ca641', 'energy', '0');
INSERT INTO `user_inventory` VALUES ('4087', 'steam:1100001081ca641', 'whool', '0');
INSERT INTO `user_inventory` VALUES ('4088', 'steam:1100001081ca641', 'cigarett', '0');
INSERT INTO `user_inventory` VALUES ('4089', 'steam:1100001081ca641', 'whisky', '0');
INSERT INTO `user_inventory` VALUES ('4090', 'steam:1100001081ca641', 'farine_blé', '0');
INSERT INTO `user_inventory` VALUES ('4091', 'steam:1100001081ca641', 'meat', '0');
INSERT INTO `user_inventory` VALUES ('4092', 'steam:1100001081ca641', 'weed_pooch', '0');
INSERT INTO `user_inventory` VALUES ('4093', 'steam:1100001081ca641', 'lighter', '0');
INSERT INTO `user_inventory` VALUES ('4094', 'steam:1100001081ca641', 'petrol', '0');
INSERT INTO `user_inventory` VALUES ('4095', 'steam:1100001081ca641', 'cola', '0');
INSERT INTO `user_inventory` VALUES ('4096', 'steam:1100001081ca641', 'croquettes', '0');
INSERT INTO `user_inventory` VALUES ('4097', 'steam:1100001081ca641', 'jagerbomb', '0');
INSERT INTO `user_inventory` VALUES ('4098', 'steam:1100001081ca641', 'or', '0');
INSERT INTO `user_inventory` VALUES ('4099', 'steam:1100001081ca641', 'jagercerbere', '0');
INSERT INTO `user_inventory` VALUES ('4100', 'steam:1100001081ca641', 'weed', '0');
INSERT INTO `user_inventory` VALUES ('4101', 'steam:1100001081ca641', 'stone', '0');
INSERT INTO `user_inventory` VALUES ('4102', 'steam:1100001081ca641', 'fuel', '2000');
INSERT INTO `user_inventory` VALUES ('4103', 'steam:1100001081ca641', 'diamon', '0');
INSERT INTO `user_inventory` VALUES ('4104', 'steam:1100001081ca641', 'pierreb', '0');
INSERT INTO `user_inventory` VALUES ('4105', 'steam:1100001081ca641', 'iron', '0');
INSERT INTO `user_inventory` VALUES ('4106', 'steam:1100001081ca641', 'medikit', '0');
INSERT INTO `user_inventory` VALUES ('4107', 'steam:1100001081ca641', 'tabacsec', '0');
INSERT INTO `user_inventory` VALUES ('4108', 'steam:1100001081ca641', 'blowpipe', '0');
INSERT INTO `user_inventory` VALUES ('4109', 'steam:1100001081ca641', 'rhumfruit', '0');
INSERT INTO `user_inventory` VALUES ('4110', 'steam:1100001081ca641', 'icetea', '0');
INSERT INTO `user_inventory` VALUES ('4111', 'steam:1100001081ca641', 'poisson_lave', '0');
INSERT INTO `user_inventory` VALUES ('4112', 'steam:1100001081ca641', 'pince', '0');
INSERT INTO `user_inventory` VALUES ('4113', 'steam:1100001081ca641', 'feuilletab', '0');
INSERT INTO `user_inventory` VALUES ('4114', 'steam:1100001081ca641', 'mixapero', '0');
INSERT INTO `user_inventory` VALUES ('4115', 'steam:1100001081ca641', 'packaged_plank', '0');
INSERT INTO `user_inventory` VALUES ('4116', 'steam:1100001081ca641', 'plank', '0');
INSERT INTO `user_inventory` VALUES ('4117', 'steam:1100001081ca641', 'poisson_préparé', '0');
INSERT INTO `user_inventory` VALUES ('4118', 'steam:1100001081ca641', 'opium', '0');
INSERT INTO `user_inventory` VALUES ('4119', 'steam:1100001081ca641', 'pain', '0');
INSERT INTO `user_inventory` VALUES ('4120', 'steam:1100001081ca641', 'farine_blé_premium', '0');
INSERT INTO `user_inventory` VALUES ('4121', 'steam:1100001081ca641', 'wood', '0');
INSERT INTO `user_inventory` VALUES ('4122', 'steam:1100001081ca641', 'carokit', '0');
INSERT INTO `user_inventory` VALUES ('4123', 'steam:1100001081ca641', 'poisson_vivant', '0');
INSERT INTO `user_inventory` VALUES ('4124', 'steam:1100001081ca641', 'poisson_vente', '0');
INSERT INTO `user_inventory` VALUES ('4125', 'steam:1100001081ca641', 'sacbillets', '0');
INSERT INTO `user_inventory` VALUES ('4126', 'steam:1100001081ca641', 'opium_pooch', '0');
INSERT INTO `user_inventory` VALUES ('4127', 'steam:1100001081ca641', 'blé', '0');
INSERT INTO `user_inventory` VALUES ('4128', 'steam:1100001081ca641', 'golem', '0');
INSERT INTO `user_inventory` VALUES ('4129', 'steam:1100001081ca641', 'plongee2', '0');
INSERT INTO `user_inventory` VALUES ('4130', 'steam:1100001081ca641', 'jus_raisin', '0');
INSERT INTO `user_inventory` VALUES ('4131', 'steam:1100001081ca641', 'clothe', '0');
INSERT INTO `user_inventory` VALUES ('4132', 'steam:1100001081ca641', 'redbull', '0');
INSERT INTO `user_inventory` VALUES ('4133', 'steam:1100001081ca641', 'metreshooter', '0');
INSERT INTO `user_inventory` VALUES ('4134', 'steam:1100001081ca641', 'bolnoixcajou', '0');
INSERT INTO `user_inventory` VALUES ('4135', 'steam:1100001081ca641', 'poubelle', '0');
INSERT INTO `user_inventory` VALUES ('4136', 'steam:1100001081ca641', 'plongee1', '0');
INSERT INTO `user_inventory` VALUES ('4137', 'steam:1100001081ca641', 'coke', '0');
INSERT INTO `user_inventory` VALUES ('4138', 'steam:1100001081ca641', 'ice', '0');
INSERT INTO `user_inventory` VALUES ('4139', 'steam:1100001081ca641', 'solo_key', '0');
INSERT INTO `user_inventory` VALUES ('4140', 'steam:1100001081ca641', 'hamburger', '0');
INSERT INTO `user_inventory` VALUES ('4141', 'steam:1100001081ca641', 'bandage', '0');
INSERT INTO `user_inventory` VALUES ('4142', 'steam:1100001081ca641', 'silvermedal', '0');
INSERT INTO `user_inventory` VALUES ('4143', 'steam:1100001081ca641', 'sandwich', '0');
INSERT INTO `user_inventory` VALUES ('4144', 'steam:1100001081ca641', 'meth_pooch', '0');
INSERT INTO `user_inventory` VALUES ('4145', 'steam:1100001081ca641', 'tequila', '0');
INSERT INTO `user_inventory` VALUES ('4146', 'steam:1100001081ca641', 'burger', '0');
INSERT INTO `user_inventory` VALUES ('4147', 'steam:1100001081ca641', 'bolchips', '0');
INSERT INTO `user_inventory` VALUES ('4148', 'steam:1100001081ca641', 'menthe', '0');
INSERT INTO `user_inventory` VALUES ('4149', 'steam:1100001081ca641', 'goldmedal', '0');
INSERT INTO `user_inventory` VALUES ('4150', 'steam:1100001081ca641', 'wine', '0');
INSERT INTO `user_inventory` VALUES ('4151', 'steam:1100001081ca641', 'vegetables', '0');
INSERT INTO `user_inventory` VALUES ('4152', 'steam:1100001081ca641', 'vine', '0');
INSERT INTO `user_inventory` VALUES ('4153', 'steam:1100001081ca641', 'cutted_wood', '0');
INSERT INTO `user_inventory` VALUES ('4154', 'steam:1100001081ca641', 'saucisson', '0');
INSERT INTO `user_inventory` VALUES ('4155', 'steam:1100001081ca641', 'tacos', '-4');
INSERT INTO `user_inventory` VALUES ('4156', 'steam:1100001081ca641', 'rhum', '0');
INSERT INTO `user_inventory` VALUES ('4157', 'steam:1100001081ca641', 'bronzemedal', '0');
INSERT INTO `user_inventory` VALUES ('4158', 'steam:1100001081ca641', 'beer', '0');
INSERT INTO `user_inventory` VALUES ('4159', 'steam:1100001081ca641', 'copper', '0');
INSERT INTO `user_inventory` VALUES ('4160', 'steam:1100001081ca641', 'drpepper', '0');
INSERT INTO `user_inventory` VALUES ('4161', 'steam:1100001081ca641', 'jusfruit', '0');
INSERT INTO `user_inventory` VALUES ('4162', 'steam:1100001081ca641', 'coke_pooch', '0');
INSERT INTO `user_inventory` VALUES ('4163', 'steam:1100001081ca641', 'sac_argent', '0');
INSERT INTO `user_inventory` VALUES ('4164', 'steam:1100001081ca641', 'cupcake', '0');
INSERT INTO `user_inventory` VALUES ('4165', 'steam:1100001081ca641', 'teqpaf', '0');
INSERT INTO `user_inventory` VALUES ('4166', 'steam:1100001081ca641', 'petrol_raffin', '0');
INSERT INTO `user_inventory` VALUES ('4167', 'steam:1100001081ca641', 'coffee', '0');
INSERT INTO `user_inventory` VALUES ('4168', 'steam:1100001081ca641', 'rhumcoca', '0');
INSERT INTO `user_inventory` VALUES ('4169', 'steam:1100001081ca641', 'grapperaisin', '0');
INSERT INTO `user_inventory` VALUES ('4170', 'steam:1100001081ca641', 'bolcacahuetes', '0');
INSERT INTO `user_inventory` VALUES ('4171', 'steam:1100001081ca641', 'whiskycoca', '0');
INSERT INTO `user_inventory` VALUES ('4172', 'steam:1100001081ca641', 'limonade', '0');
INSERT INTO `user_inventory` VALUES ('4173', 'steam:1100001081ca641', 'martini', '0');
INSERT INTO `user_inventory` VALUES ('4174', 'steam:1100001081ca641', 'lingot', '0');
INSERT INTO `user_inventory` VALUES ('4175', 'steam:1100001081ca641', 'gold', '0');
INSERT INTO `user_inventory` VALUES ('4176', 'steam:1100001081ca641', 'carotool', '0');
INSERT INTO `user_inventory` VALUES ('4177', 'steam:1100001081ca641', 'fish', '0');
INSERT INTO `user_inventory` VALUES ('4178', 'steam:1100001081ca641', 'cerflex', '0');
INSERT INTO `user_inventory` VALUES ('4179', 'steam:1100001081ca641', 'mojito', '0');
INSERT INTO `user_inventory` VALUES ('4180', 'steam:1100001081ca641', 'vodkaenergy', '0');
INSERT INTO `user_inventory` VALUES ('4181', 'steam:1100001081ca641', 'permis', '0');
INSERT INTO `user_inventory` VALUES ('4182', 'steam:1100001081ca641', 'alive_chicken', '0');
INSERT INTO `user_inventory` VALUES ('4183', 'steam:1100001081ca641', 'vodkafruit', '0');
INSERT INTO `user_inventory` VALUES ('4184', 'steam:1100001081ca641', 'argent', '0');
INSERT INTO `user_inventory` VALUES ('4185', 'steam:1100001081ca641', 'multi_key', '0');
INSERT INTO `user_inventory` VALUES ('4186', 'steam:1100001081ca641', 'grand_cru', '0');
INSERT INTO `user_inventory` VALUES ('4187', 'steam:1100001081ca641', 'jager', '0');
INSERT INTO `user_inventory` VALUES ('4188', 'steam:1100001081ca641', 'gazbottle', '0');
INSERT INTO `user_inventory` VALUES ('4189', 'steam:1100001081ca641', 'fixkit', '0');
INSERT INTO `user_inventory` VALUES ('4190', 'steam:1100001081ca641', 'soda', '0');
INSERT INTO `user_inventory` VALUES ('4191', 'steam:1100001081ca641', 'tracker', '0');
INSERT INTO `user_inventory` VALUES ('4192', 'steam:1100001081ca641', 'chocolate', '0');
INSERT INTO `user_inventory` VALUES ('4193', 'steam:1100001081ca641', 'fabric', '0');
INSERT INTO `user_inventory` VALUES ('4194', 'steam:1100001081ca641', 'raisin', '0');
INSERT INTO `user_inventory` VALUES ('4195', 'steam:1100001081ca641', 'vodka', '0');
INSERT INTO `user_inventory` VALUES ('4196', 'steam:1100001081ca641', 'packaged_chicken', '0');
INSERT INTO `user_inventory` VALUES ('4197', 'steam:1100001081ca641', 'meth', '0');

-- ----------------------------
-- Table structure for `user_licenses`
-- ----------------------------
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_licenses
-- ----------------------------
INSERT INTO `user_licenses` VALUES ('7', 'weapon', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('8', 'weapon2', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('9', 'weapon3', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('10', 'weapon', 'steam:110000107f00b0f');
INSERT INTO `user_licenses` VALUES ('11', 'weapon2', 'steam:110000107f00b0f');
INSERT INTO `user_licenses` VALUES ('12', 'boat', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES ('13', 'truck', 'steam:1100001081ca641');

-- ----------------------------
-- Table structure for `user_parkings`
-- ----------------------------
DROP TABLE IF EXISTS `user_parkings`;
CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_parkings
-- ----------------------------
INSERT INTO `user_parkings` VALUES ('10', 'steam:1100001081ca641', 'IntegrityWay', '6', '{\"modStruts\":-1,\"color1\":6,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plateIndex\":0,\"modFender\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"health\":929,\"modTrimB\":-1,\"modTrunk\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"plate\":\"PEU 766 \",\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"dirtLevel\":3.4423720836639,\"modPlateHolder\":-1,\"modDial\":-1,\"pearlescentColor\":111,\"modRearBumper\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"color2\":0,\"wheelColor\":156,\"modXenon\":false,\"modWindows\":-1,\"modFrame\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"wheels\":0,\"modArmor\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"model\":-344943009,\"modEngine\":-1,\"modSeats\":-1,\"windowTint\":-1}');
INSERT INTO `user_parkings` VALUES ('11', 'steam:1100001081ca641', 'IntegrityWay', '10', '{\"modStruts\":-1,\"color1\":19,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plateIndex\":0,\"modFender\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"health\":990,\"modTrimB\":-1,\"modTrunk\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"plate\":\"24DCT015\",\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"dirtLevel\":0.008287601172924,\"modPlateHolder\":-1,\"modDial\":-1,\"pearlescentColor\":23,\"modRearBumper\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"color2\":10,\"wheelColor\":0,\"modXenon\":false,\"modWindows\":-1,\"modFrame\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"wheels\":1,\"modArmor\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"model\":1483171323,\"modEngine\":-1,\"modSeats\":-1,\"windowTint\":-1}');
INSERT INTO `user_parkings` VALUES ('16', 'steam:1100001081ca641', 'VinewoodEstate2650', '2', '{\"modRoof\":-1,\"modAPlate\":-1,\"model\":-344943009,\"modSpoilers\":-1,\"modTank\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"wheelColor\":156,\"modBrakes\":-1,\"modHood\":-1,\"modRightFender\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modSmokeEnabled\":1,\"modDial\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":5,\"modEngineBlock\":-1,\"modTrimB\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"plate\":\"GAA 744 \",\"modOrnaments\":-1,\"dirtLevel\":8.8836002349854,\"modPlateHolder\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"color2\":0,\"modGrille\":-1,\"modHorns\":-1,\"color1\":8,\"windowTint\":-1,\"modLivery\":-1,\"plateIndex\":0,\"modExhaust\":-1,\"modWindows\":-1,\"health\":908,\"wheels\":0}');
INSERT INTO `user_parkings` VALUES ('22', 'steam:1100001081ca641', 'IntegrityWay', '5', '{\"modRoof\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"health\":737,\"modTrimA\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modLivery\":-1,\"modHood\":-1,\"modSuspension\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"model\":1483171323,\"color2\":10,\"modPlateHolder\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"modTurbo\":false,\"modStruts\":-1,\"pearlescentColor\":23,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"modFender\":-1,\"wheelColor\":0,\"modAPlate\":-1,\"modVanityPlate\":-1,\"plate\":\"29XIH273\",\"windowTint\":-1,\"modShifterLeavers\":-1,\"modGrille\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"dirtLevel\":4.5756402015686,\"modBackWheels\":-1,\"modEngine\":-1,\"modTank\":-1,\"modFrontWheels\":-1,\"modAerials\":-1,\"modAirFilter\":-1,\"modXenon\":false,\"color1\":19,\"modSeats\":-1,\"modFrontBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"wheels\":1,\"modHydrolic\":-1,\"modFrame\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"tyreSmokeColor\":[255,255,255]}');
INSERT INTO `user_parkings` VALUES ('25', 'steam:1100001081ca641', 'IntegrityWay', '1', '{\"model\":-344943009,\"plateIndex\":0,\"color1\":6,\"modPlateHolder\":-1,\"modTransmission\":-1,\"modFrontWheels\":-1,\"plate\":\"MOU 375 \",\"modRightFender\":-1,\"modTrunk\":-1,\"modXenon\":false,\"modExhaust\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"windowTint\":-1,\"modFender\":-1,\"health\":994,\"modSpeakers\":-1,\"modTurbo\":false,\"modHorns\":-1,\"modArmor\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"color2\":0,\"modGrille\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modSmokeEnabled\":1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"dirtLevel\":7.1598672866821,\"pearlescentColor\":111,\"modFrame\":-1}');

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('Adder', 'adder', '900000', 'super');
INSERT INTO `vehicles` VALUES ('Akuma', 'AKUMA', '7500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Alpha', 'alpha', '60000', 'sports');
INSERT INTO `vehicles` VALUES ('Ardent', 'ardent', '1150000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Asea', 'asea', '5500', 'sedans');
INSERT INTO `vehicles` VALUES ('Autarch', 'autarch', '1955000', 'super');
INSERT INTO `vehicles` VALUES ('Avarus', 'avarus', '18000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bagger', 'bagger', '13500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Baller', 'baller2', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('Baller Sport', 'baller3', '60000', 'suvs');
INSERT INTO `vehicles` VALUES ('Banshee', 'banshee', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('Banshee 900R', 'banshee2', '255000', 'super');
INSERT INTO `vehicles` VALUES ('Bati 801', 'bati', '12000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bati 801RR', 'bati2', '19000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bestia GTS', 'bestiagts', '55000', 'sports');
INSERT INTO `vehicles` VALUES ('BF400', 'bf400', '6500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bf Injection', 'bfinjection', '16000', 'offroad');
INSERT INTO `vehicles` VALUES ('Bifta', 'bifta', '12000', 'offroad');
INSERT INTO `vehicles` VALUES ('Bison', 'bison', '45000', 'vans');
INSERT INTO `vehicles` VALUES ('Blade', 'blade', '15000', 'muscle');
INSERT INTO `vehicles` VALUES ('Blazer', 'blazer', '6500', 'offroad');
INSERT INTO `vehicles` VALUES ('Blazer Sport', 'blazer4', '8500', 'offroad');
INSERT INTO `vehicles` VALUES ('blazer5', 'blazer5', '1755600', 'offroad');
INSERT INTO `vehicles` VALUES ('Blista', 'blista', '8000', 'compacts');
INSERT INTO `vehicles` VALUES ('BMX (velo)', 'bmx', '160', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bobcat XL', 'bobcatxl', '32000', 'vans');
INSERT INTO `vehicles` VALUES ('Brawler', 'brawler', '45000', 'offroad');
INSERT INTO `vehicles` VALUES ('Brioso R/A', 'brioso', '18000', 'compacts');
INSERT INTO `vehicles` VALUES ('Btype', 'btype', '62000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Btype Hotroad', 'btype2', '155000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Btype Luxe', 'btype3', '85000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Buccaneer', 'buccaneer', '18000', 'muscle');
INSERT INTO `vehicles` VALUES ('Buccaneer Rider', 'buccaneer2', '24000', 'muscle');
INSERT INTO `vehicles` VALUES ('Buffalo', 'buffalo', '12000', 'sports');
INSERT INTO `vehicles` VALUES ('Buffalo S', 'buffalo2', '20000', 'sports');
INSERT INTO `vehicles` VALUES ('Bullet', 'bullet', '90000', 'super');
INSERT INTO `vehicles` VALUES ('Burrito', 'burrito3', '19000', 'vans');
INSERT INTO `vehicles` VALUES ('Camper', 'camper', '42000', 'vans');
INSERT INTO `vehicles` VALUES ('Carbonizzare', 'carbonizzare', '75000', 'sports');
INSERT INTO `vehicles` VALUES ('Carbon RS', 'carbonrs', '18000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Casco', 'casco', '30000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Cavalcade', 'cavalcade2', '55000', 'suvs');
INSERT INTO `vehicles` VALUES ('Cheetah', 'cheetah', '375000', 'super');
INSERT INTO `vehicles` VALUES ('Chimera', 'chimera', '38000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Chino', 'chino', '15000', 'muscle');
INSERT INTO `vehicles` VALUES ('Chino Luxe', 'chino2', '19000', 'muscle');
INSERT INTO `vehicles` VALUES ('Cliffhanger', 'cliffhanger', '9500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Cognoscenti Cabrio', 'cogcabrio', '55000', 'coupes');
INSERT INTO `vehicles` VALUES ('Cognoscenti', 'cognoscenti', '55000', 'sedans');
INSERT INTO `vehicles` VALUES ('Comet', 'comet2', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('Comet 5', 'comet5', '1145000', 'sports');
INSERT INTO `vehicles` VALUES ('Contender', 'contender', '70000', 'suvs');
INSERT INTO `vehicles` VALUES ('Coquette', 'coquette', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('Coquette Classic', 'coquette2', '40000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Coquette BlackFin', 'coquette3', '55000', 'muscle');
INSERT INTO `vehicles` VALUES ('Cruiser (velo)', 'cruiser', '510', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Cyclone', 'cyclone', '1890000', 'super');
INSERT INTO `vehicles` VALUES ('Daemon', 'daemon', '11500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Daemon High', 'daemon2', '13500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Defiler', 'defiler', '9800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Deluxo', 'deluxo', '4721500', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Dominator', 'dominator', '35000', 'muscle');
INSERT INTO `vehicles` VALUES ('Double T', 'double', '28000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Dubsta', 'dubsta', '45000', 'suvs');
INSERT INTO `vehicles` VALUES ('Dubsta Luxuary', 'dubsta2', '60000', 'suvs');
INSERT INTO `vehicles` VALUES ('Bubsta 6x6', 'dubsta3', '120000', 'offroad');
INSERT INTO `vehicles` VALUES ('Dukes', 'dukes', '28000', 'muscle');
INSERT INTO `vehicles` VALUES ('Dune Buggy', 'dune', '8000', 'offroad');
INSERT INTO `vehicles` VALUES ('Elegy', 'elegy2', '38500', 'sports');
INSERT INTO `vehicles` VALUES ('Emperor', 'emperor', '8500', 'sedans');
INSERT INTO `vehicles` VALUES ('Enduro', 'enduro', '5500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Entity XF', 'entityxf', '425000', 'super');
INSERT INTO `vehicles` VALUES ('Esskey', 'esskey', '4200', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Exemplar', 'exemplar', '32000', 'coupes');
INSERT INTO `vehicles` VALUES ('F620', 'f620', '40000', 'coupes');
INSERT INTO `vehicles` VALUES ('Faction', 'faction', '20000', 'muscle');
INSERT INTO `vehicles` VALUES ('Faction Rider', 'faction2', '30000', 'muscle');
INSERT INTO `vehicles` VALUES ('Faction XL', 'faction3', '40000', 'muscle');
INSERT INTO `vehicles` VALUES ('Faggio', 'faggio', '1900', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Vespa', 'faggio2', '2800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Felon', 'felon', '42000', 'coupes');
INSERT INTO `vehicles` VALUES ('Felon GT', 'felon2', '55000', 'coupes');
INSERT INTO `vehicles` VALUES ('Feltzer', 'feltzer2', '55000', 'sports');
INSERT INTO `vehicles` VALUES ('Stirling GT', 'feltzer3', '65000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Fixter (velo)', 'fixter', '225', 'motorcycles');
INSERT INTO `vehicles` VALUES ('FMJ', 'fmj', '185000', 'super');
INSERT INTO `vehicles` VALUES ('Fhantom', 'fq2', '17000', 'suvs');
INSERT INTO `vehicles` VALUES ('Fugitive', 'fugitive', '12000', 'sedans');
INSERT INTO `vehicles` VALUES ('Furore GT', 'furoregt', '45000', 'sports');
INSERT INTO `vehicles` VALUES ('Fusilade', 'fusilade', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('Gargoyle', 'gargoyle', '16500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Gauntlet', 'gauntlet', '30000', 'muscle');
INSERT INTO `vehicles` VALUES ('Gang Burrito', 'gburrito', '45000', 'vans');
INSERT INTO `vehicles` VALUES ('Burrito', 'gburrito2', '29000', 'vans');
INSERT INTO `vehicles` VALUES ('Glendale', 'glendale', '6500', 'sedans');
INSERT INTO `vehicles` VALUES ('Grabger', 'granger', '50000', 'suvs');
INSERT INTO `vehicles` VALUES ('Gresley', 'gresley', '47500', 'suvs');
INSERT INTO `vehicles` VALUES ('GT 500', 'gt500', '785000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Guardian', 'guardian', '45000', 'offroad');
INSERT INTO `vehicles` VALUES ('Hakuchou', 'hakuchou', '31000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hakuchou Sport', 'hakuchou2', '55000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hermes', 'hermes', '535000', 'muscle');
INSERT INTO `vehicles` VALUES ('Hexer', 'hexer', '12000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hotknife', 'hotknife', '125000', 'muscle');
INSERT INTO `vehicles` VALUES ('Huntley S', 'huntley', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('Hustler', 'hustler', '625000', 'muscle');
INSERT INTO `vehicles` VALUES ('Infernus', 'infernus', '180000', 'super');
INSERT INTO `vehicles` VALUES ('Innovation', 'innovation', '23500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Intruder', 'intruder', '7500', 'sedans');
INSERT INTO `vehicles` VALUES ('Issi', 'issi2', '10000', 'compacts');
INSERT INTO `vehicles` VALUES ('Jackal', 'jackal', '38000', 'coupes');
INSERT INTO `vehicles` VALUES ('Jester', 'jester', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('Jester(Racecar)', 'jester2', '135000', 'sports');
INSERT INTO `vehicles` VALUES ('Journey', 'journey', '6500', 'vans');
INSERT INTO `vehicles` VALUES ('Kamacho', 'kamacho', '345000', 'offroad');
INSERT INTO `vehicles` VALUES ('Khamelion', 'khamelion', '38000', 'sports');
INSERT INTO `vehicles` VALUES ('Kuruma', 'kuruma', '30000', 'sports');
INSERT INTO `vehicles` VALUES ('Landstalker', 'landstalker', '35000', 'suvs');
INSERT INTO `vehicles` VALUES ('RE-7B', 'le7b', '325000', 'super');
INSERT INTO `vehicles` VALUES ('Lynx', 'lynx', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('Mamba', 'mamba', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('Manana', 'manana', '12800', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Manchez', 'manchez', '5300', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Massacro', 'massacro', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('Massacro(Racecar)', 'massacro2', '130000', 'sports');
INSERT INTO `vehicles` VALUES ('Mesa', 'mesa', '16000', 'suvs');
INSERT INTO `vehicles` VALUES ('Mesa Trail', 'mesa3', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('Minivan', 'minivan', '13000', 'vans');
INSERT INTO `vehicles` VALUES ('Monroe', 'monroe', '55000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('The Liberator', 'monster', '210000', 'offroad');
INSERT INTO `vehicles` VALUES ('Moonbeam', 'moonbeam', '18000', 'vans');
INSERT INTO `vehicles` VALUES ('Moonbeam Rider', 'moonbeam2', '35000', 'vans');
INSERT INTO `vehicles` VALUES ('Nemesis', 'nemesis', '5800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Neon', 'neon', '1500000', 'sports');
INSERT INTO `vehicles` VALUES ('Nightblade', 'nightblade', '35000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Nightshade', 'nightshade', '65000', 'muscle');
INSERT INTO `vehicles` VALUES ('9F', 'ninef', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('9F Cabrio', 'ninef2', '80000', 'sports');
INSERT INTO `vehicles` VALUES ('Omnis', 'omnis', '35000', 'sports');
INSERT INTO `vehicles` VALUES ('Oppressor', 'oppressor', '3524500', 'super');
INSERT INTO `vehicles` VALUES ('Oracle XS', 'oracle2', '35000', 'coupes');
INSERT INTO `vehicles` VALUES ('Osiris', 'osiris', '160000', 'super');
INSERT INTO `vehicles` VALUES ('Panto', 'panto', '10000', 'compacts');
INSERT INTO `vehicles` VALUES ('Paradise', 'paradise', '19000', 'vans');
INSERT INTO `vehicles` VALUES ('Pariah', 'pariah', '1420000', 'sports');
INSERT INTO `vehicles` VALUES ('Patriot', 'patriot', '55000', 'suvs');
INSERT INTO `vehicles` VALUES ('PCJ-600', 'pcj', '6200', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Penumbra', 'penumbra', '28000', 'sports');
INSERT INTO `vehicles` VALUES ('Pfister', 'pfister811', '85000', 'super');
INSERT INTO `vehicles` VALUES ('Phoenix', 'phoenix', '12500', 'muscle');
INSERT INTO `vehicles` VALUES ('Picador', 'picador', '18000', 'muscle');
INSERT INTO `vehicles` VALUES ('Pigalle', 'pigalle', '20000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Prairie', 'prairie', '12000', 'compacts');
INSERT INTO `vehicles` VALUES ('Premier', 'premier', '8000', 'sedans');
INSERT INTO `vehicles` VALUES ('Primo Custom', 'primo2', '14000', 'sedans');
INSERT INTO `vehicles` VALUES ('X80 Proto', 'prototipo', '2500000', 'super');
INSERT INTO `vehicles` VALUES ('Radius', 'radi', '29000', 'suvs');
INSERT INTO `vehicles` VALUES ('raiden', 'raiden', '1375000', 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT', 'rapidgt', '35000', 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT Convertible', 'rapidgt2', '45000', 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT3', 'rapidgt3', '885000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Reaper', 'reaper', '150000', 'super');
INSERT INTO `vehicles` VALUES ('Rebel', 'rebel2', '35000', 'offroad');
INSERT INTO `vehicles` VALUES ('Regina', 'regina', '5000', 'sedans');
INSERT INTO `vehicles` VALUES ('Retinue', 'retinue', '615000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Revolter', 'revolter', '1610000', 'sports');
INSERT INTO `vehicles` VALUES ('riata', 'riata', '380000', 'offroad');
INSERT INTO `vehicles` VALUES ('Rocoto', 'rocoto', '45000', 'suvs');
INSERT INTO `vehicles` VALUES ('Ruffian', 'ruffian', '6800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Ruiner 2', 'ruiner2', '5745600', 'muscle');
INSERT INTO `vehicles` VALUES ('Rumpo', 'rumpo', '15000', 'vans');
INSERT INTO `vehicles` VALUES ('Rumpo Trail', 'rumpo3', '19500', 'vans');
INSERT INTO `vehicles` VALUES ('Sabre Turbo', 'sabregt', '20000', 'muscle');
INSERT INTO `vehicles` VALUES ('Sabre GT', 'sabregt2', '25000', 'muscle');
INSERT INTO `vehicles` VALUES ('Sanchez', 'sanchez', '5300', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sanchez Sport', 'sanchez2', '5300', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sanctus', 'sanctus', '25000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sandking', 'sandking', '55000', 'offroad');
INSERT INTO `vehicles` VALUES ('Savestra', 'savestra', '990000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('SC 1', 'sc1', '1603000', 'super');
INSERT INTO `vehicles` VALUES ('Schafter', 'schafter2', '25000', 'sedans');
INSERT INTO `vehicles` VALUES ('Schafter V12', 'schafter3', '50000', 'sports');
INSERT INTO `vehicles` VALUES ('Scorcher (velo)', 'scorcher', '280', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Seminole', 'seminole', '25000', 'suvs');
INSERT INTO `vehicles` VALUES ('Sentinel', 'sentinel', '32000', 'coupes');
INSERT INTO `vehicles` VALUES ('Sentinel XS', 'sentinel2', '40000', 'coupes');
INSERT INTO `vehicles` VALUES ('Sentinel3', 'sentinel3', '650000', 'sports');
INSERT INTO `vehicles` VALUES ('Seven 70', 'seven70', '39500', 'sports');
INSERT INTO `vehicles` VALUES ('ETR1', 'sheava', '220000', 'super');
INSERT INTO `vehicles` VALUES ('Shotaro Concept', 'shotaro', '320000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Slam Van', 'slamvan3', '11500', 'muscle');
INSERT INTO `vehicles` VALUES ('Sovereign', 'sovereign', '22000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Stinger', 'stinger', '80000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Stinger GT', 'stingergt', '75000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Streiter', 'streiter', '500000', 'sports');
INSERT INTO `vehicles` VALUES ('Stretch', 'stretch', '90000', 'sedans');
INSERT INTO `vehicles` VALUES ('Stromberg', 'stromberg', '3185350', 'sports');
INSERT INTO `vehicles` VALUES ('Sultan', 'sultan', '15000', 'sports');
INSERT INTO `vehicles` VALUES ('Sultan RS', 'sultanrs', '65000', 'super');
INSERT INTO `vehicles` VALUES ('Super Diamond', 'superd', '130000', 'sedans');
INSERT INTO `vehicles` VALUES ('Surano', 'surano', '50000', 'sports');
INSERT INTO `vehicles` VALUES ('Surfer', 'surfer', '12000', 'vans');
INSERT INTO `vehicles` VALUES ('T20', 't20', '300000', 'super');
INSERT INTO `vehicles` VALUES ('Tailgater', 'tailgater', '30000', 'sedans');
INSERT INTO `vehicles` VALUES ('Tampa', 'tampa', '16000', 'muscle');
INSERT INTO `vehicles` VALUES ('Drift Tampa', 'tampa2', '80000', 'sports');
INSERT INTO `vehicles` VALUES ('Thrust', 'thrust', '24000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Tri bike (velo)', 'tribike3', '520', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Trophy Truck', 'trophytruck', '60000', 'offroad');
INSERT INTO `vehicles` VALUES ('Trophy Truck Limited', 'trophytruck2', '80000', 'offroad');
INSERT INTO `vehicles` VALUES ('Tropos', 'tropos', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('Turismo R', 'turismor', '350000', 'super');
INSERT INTO `vehicles` VALUES ('Tyrus', 'tyrus', '600000', 'super');
INSERT INTO `vehicles` VALUES ('Vacca', 'vacca', '120000', 'super');
INSERT INTO `vehicles` VALUES ('Vader', 'vader', '7200', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Verlierer', 'verlierer2', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('Vigero', 'vigero', '12500', 'muscle');
INSERT INTO `vehicles` VALUES ('Virgo', 'virgo', '14000', 'muscle');
INSERT INTO `vehicles` VALUES ('Viseris', 'viseris', '875000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Visione', 'visione', '2250000', 'super');
INSERT INTO `vehicles` VALUES ('Voltic', 'voltic', '90000', 'super');
INSERT INTO `vehicles` VALUES ('Voltic 2', 'voltic2', '3830400', 'super');
INSERT INTO `vehicles` VALUES ('Voodoo', 'voodoo', '7200', 'muscle');
INSERT INTO `vehicles` VALUES ('Vortex', 'vortex', '9800', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Warrener', 'warrener', '4000', 'sedans');
INSERT INTO `vehicles` VALUES ('Washington', 'washington', '9000', 'sedans');
INSERT INTO `vehicles` VALUES ('Windsor', 'windsor', '95000', 'coupes');
INSERT INTO `vehicles` VALUES ('Windsor Drop', 'windsor2', '125000', 'coupes');
INSERT INTO `vehicles` VALUES ('Woflsbane', 'wolfsbane', '9000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('XLS', 'xls', '32000', 'suvs');
INSERT INTO `vehicles` VALUES ('Yosemite', 'yosemite', '485000', 'muscle');
INSERT INTO `vehicles` VALUES ('Youga', 'youga', '10800', 'vans');
INSERT INTO `vehicles` VALUES ('Youga Luxuary', 'youga2', '14500', 'vans');
INSERT INTO `vehicles` VALUES ('Z190', 'z190', '900000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Zentorno', 'zentorno', '1500000', 'super');
INSERT INTO `vehicles` VALUES ('Zion', 'zion', '36000', 'coupes');
INSERT INTO `vehicles` VALUES ('Zion Cabrio', 'zion2', '45000', 'coupes');
INSERT INTO `vehicles` VALUES ('Zombie', 'zombiea', '9500', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Zombie Luxuary', 'zombieb', '12000', 'motorcycles');
INSERT INTO `vehicles` VALUES ('Z-Type', 'ztype', '220000', 'sportsclassics');

-- ----------------------------
-- Table structure for `vehicle_categories`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vehicle_categories
-- ----------------------------
INSERT INTO `vehicle_categories` VALUES ('compacts', 'Compacts');
INSERT INTO `vehicle_categories` VALUES ('coupes', 'Coupés');
INSERT INTO `vehicle_categories` VALUES ('motorcycles', 'Motos');
INSERT INTO `vehicle_categories` VALUES ('muscle', 'Muscle');
INSERT INTO `vehicle_categories` VALUES ('offroad', 'Off Road');
INSERT INTO `vehicle_categories` VALUES ('sedans', 'Sedans');
INSERT INTO `vehicle_categories` VALUES ('sports', 'Sports');
INSERT INTO `vehicle_categories` VALUES ('sportsclassics', 'Sports Classics');
INSERT INTO `vehicle_categories` VALUES ('super', 'Super');
INSERT INTO `vehicle_categories` VALUES ('suvs', 'SUVs');
INSERT INTO `vehicle_categories` VALUES ('vans', 'Vans');

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
