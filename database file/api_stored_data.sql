/*
Navicat MySQL Data Transfer

Source Server         : MySql Enterprise
Source Server Version : 50545
Source Host           : 192.168.1.205:3306
Source Database       : population

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2018-10-08 10:20:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for o_data
-- ----------------------------
DROP TABLE IF EXISTS `o_data`;
CREATE TABLE `o_data` (
  `id` smallint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(200) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  `population` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_data
-- ----------------------------
INSERT INTO `o_data` VALUES ('201', 'Arab World', '2017', '414491886');
INSERT INTO `o_data` VALUES ('202', 'Arab World', '2013', '381702086');
INSERT INTO `o_data` VALUES ('203', 'Arab World', '2015', '398304960');
INSERT INTO `o_data` VALUES ('204', 'Arab World', '2016', '406452690');
INSERT INTO `o_data` VALUES ('205', 'Arab World', '2014', '390043028');
INSERT INTO `o_data` VALUES ('206', 'Arab World', '2012', '373306993');
INSERT INTO `o_data` VALUES ('207', 'Arab World', '2011', '364895878');
INSERT INTO `o_data` VALUES ('208', 'Arab World', '2010', '356508908');
INSERT INTO `o_data` VALUES ('209', 'Arab World', '2009', '348145094');
INSERT INTO `o_data` VALUES ('210', 'Arab World', '2006', '323773264');
INSERT INTO `o_data` VALUES ('211', 'Arab World', '2008', '339825483');
INSERT INTO `o_data` VALUES ('212', 'Arab World', '2005', '316264728');
INSERT INTO `o_data` VALUES ('213', 'Arab World', '2007', '331653797');
INSERT INTO `o_data` VALUES ('214', 'Arab World', '2003', '302434519');
INSERT INTO `o_data` VALUES ('215', 'Arab World', '2004', '309162029');
INSERT INTO `o_data` VALUES ('216', 'Arab World', '2002', '296026575');
INSERT INTO `o_data` VALUES ('217', 'Arab World', '2001', '289850357');
INSERT INTO `o_data` VALUES ('218', 'Arab World', '2000', '283832016');
INSERT INTO `o_data` VALUES ('219', 'Arab World', '1999', '277962869');
INSERT INTO `o_data` VALUES ('220', 'Arab World', '1998', '272235146');
INSERT INTO `o_data` VALUES ('221', 'Arab World', '1997', '266575075');
INSERT INTO `o_data` VALUES ('222', 'Arab World', '1996', '260843462');
INSERT INTO `o_data` VALUES ('223', 'Arab World', '1995', '255029671');
INSERT INTO `o_data` VALUES ('224', 'Arab World', '1994', '247435930');
INSERT INTO `o_data` VALUES ('225', 'Arab World', '1993', '241286091');
INSERT INTO `o_data` VALUES ('226', 'Arab World', '1991', '230829868');
INSERT INTO `o_data` VALUES ('227', 'Arab World', '1992', '235037179');
INSERT INTO `o_data` VALUES ('228', 'Arab World', '1990', '224735446');
INSERT INTO `o_data` VALUES ('229', 'Arab World', '1989', '216787402');
INSERT INTO `o_data` VALUES ('230', 'Arab World', '1988', '210844771');
INSERT INTO `o_data` VALUES ('231', 'Arab World', '1987', '204942549');
INSERT INTO `o_data` VALUES ('232', 'Arab World', '1986', '199093767');
INSERT INTO `o_data` VALUES ('233', 'Arab World', '1985', '193310301');
INSERT INTO `o_data` VALUES ('234', 'Arab World', '1984', '187610756');
INSERT INTO `o_data` VALUES ('235', 'Arab World', '1983', '182005827');
INSERT INTO `o_data` VALUES ('236', 'Arab World', '1982', '176490084');
INSERT INTO `o_data` VALUES ('237', 'Arab World', '1981', '171051950');
INSERT INTO `o_data` VALUES ('238', 'Arab World', '1980', '165689490');
INSERT INTO `o_data` VALUES ('239', 'Arab World', '1979', '160392488');
INSERT INTO `o_data` VALUES ('240', 'Arab World', '1978', '155183724');
INSERT INTO `o_data` VALUES ('241', 'Arab World', '1976', '145332378');
INSERT INTO `o_data` VALUES ('242', 'Arab World', '1977', '150133054');
INSERT INTO `o_data` VALUES ('243', 'Arab World', '1975', '140843298');
INSERT INTO `o_data` VALUES ('244', 'Arab World', '1974', '136696761');
INSERT INTO `o_data` VALUES ('245', 'Arab World', '1972', '129269375');
INSERT INTO `o_data` VALUES ('246', 'Arab World', '1973', '132863416');
INSERT INTO `o_data` VALUES ('247', 'Arab World', '1971', '125807419');
INSERT INTO `o_data` VALUES ('248', 'Arab World', '1969', '119016542');
INSERT INTO `o_data` VALUES ('249', 'Arab World', '1968', '115680165');
INSERT INTO `o_data` VALUES ('250', 'Arab World', '1970', '122398374');
