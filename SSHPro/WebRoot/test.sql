/*
Navicat MySQL Data Transfer

Source Server         : 172.21.95.64
Source Server Version : 50096
Source Host           : 172.21.95.64:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2015-10-14 16:00:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `account` varchar(255) default NULL,
  `psw` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `name` varchar(11) default NULL,
  `image` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('333', '速度', 'dfsd', '高级管理员', '', null);
INSERT INTO `admin` VALUES ('382', '戴妃', '8', '普通管理员', '胜多负少', null);
INSERT INTO `admin` VALUES ('386', 'qwedqw', 'dasd', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('388', '7dd', '7', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('390', '90dd', '90', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('392', '67dd', '67', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('394', '45', '45', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('396', '66', '66', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('399', '额额', 'dd', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('400', '人体', 'df', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('402', '订单', 'dd', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('409', '谔谔', '22', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('411', '啊啊订单', 'aa', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('412', '更', 'gg', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('413', '威武', 'ww', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('414', '232', '232', '普通管理员', '', null);
INSERT INTO `admin` VALUES ('415', '111d', '111', '普通管理员', '111', null);
INSERT INTO `admin` VALUES ('416', '333', '333', '高级管理员', '333', null);
INSERT INTO `admin` VALUES ('417', '123', '123', '高级管理员', '风格', null);
INSERT INTO `admin` VALUES ('418', '222', '222', '高级管理员', '222', null);
INSERT INTO `admin` VALUES ('421', '88', '88', '普通管理员', '小莫, 默默', '1443341009453.jpg');
INSERT INTO `admin` VALUES ('424', '13', '13', '普通管理员', '同源, 团团', '1443341081562.png');
INSERT INTO `admin` VALUES ('425', '23', '23', '普通管理员', '锁定, 德润', '1443341176265.png');
INSERT INTO `admin` VALUES ('426', '34', '34', '普通管理员', '锁定, 德润', '1443341176265.png');
INSERT INTO `admin` VALUES ('427', '56', '56', '普通管理员', '刚恒', '1443341723562.jpg');
INSERT INTO `admin` VALUES ('428', '456', '456', '普通管理员', '凤凰', '1443342919671.jpg');
INSERT INTO `admin` VALUES ('430', '5656', '5656', '普通管理员', '等等', '1443344654718.jpg');
INSERT INTO `admin` VALUES ('432', 'ty', 'ty', '普通管理员', 'ty', '1443414041828.jpg');
INSERT INTO `admin` VALUES ('433', 'ttt', 'ttt', '普通管理员', 'ttt', '1443415001062.jpg');
INSERT INTO `admin` VALUES ('434', 'ddd', 'ddd', '普通管理员', 'ddd', '1443415148890.jpg');
INSERT INTO `admin` VALUES ('435', 'aaa', 'aaa', '普通管理员', 'aaa', '1443422636234.png');
INSERT INTO `admin` VALUES ('436', 'gamei', '123', '高级管理员', 'jiamijg', '1443424765015.png');
INSERT INTO `admin` VALUES ('438', '12333', '123', '普通管理员', '第二组哇哈', '1443426439734.jpg');
INSERT INTO `admin` VALUES ('439', 'eee', 'eee', '普通管理员', 'eee', '1443430883765.png');
INSERT INTO `admin` VALUES ('440', '', '', '普通管理员', '', '1443498669625.png');
INSERT INTO `admin` VALUES ('441', 'dd', 'dd', '普通管理员', 'dd', '1443713944453.jpg');
INSERT INTO `admin` VALUES ('442', 'ffaa', 'ffaa', '普通管理员', 'ffaa', '1443782566453.jpg');
INSERT INTO `admin` VALUES ('443', 'cc', 'cc', '普通管理员', 'cc', '1443789934203.jpg');
INSERT INTO `admin` VALUES ('444', 'ccdd', 'cc', '普通管理员', '文', null);
INSERT INTO `admin` VALUES ('445', 'dddd', 'dddd', '普通管理员', 'dddd', '1443882890250.jpg');
INSERT INTO `admin` VALUES ('455', 'account', 'psw', 'type', 'name', 'image');
INSERT INTO `admin` VALUES ('456', 'account', 'psw', 'type', 'name', 'image');
INSERT INTO `admin` VALUES ('457', 'account', 'psw', 'type', 'name', 'image');
INSERT INTO `admin` VALUES ('458', 'account', 'psw', 'type', 'name', 'image');
INSERT INTO `admin` VALUES ('459', 'account', 'psw', 'type', 'name', 'image');
INSERT INTO `admin` VALUES ('460', '啊', 'a', '普通管理员', '啊', '1444483395703.jpg');
INSERT INTO `admin` VALUES ('461', 'b', 'b', '普通管理员', 'b', '1444555598593.jpg');

-- ----------------------------
-- Table structure for `aircompany`
-- ----------------------------
DROP TABLE IF EXISTS `aircompany`;
CREATE TABLE `aircompany` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `summary` varchar(255) default NULL,
  `lid` text,
  `logourl` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircompany
-- ----------------------------
INSERT INTO `aircompany` VALUES ('2', '中国航空', '中国', '99500', '中国', '', 'dh.jpg');
INSERT INTO `aircompany` VALUES ('3', '中国北航', '中国', '10065', 'good', null, 'dh.jpg');
INSERT INTO `aircompany` VALUES ('10', '南方航空', '中国', '10088', 'good', 'undefined', 'dh.jpg');
INSERT INTO `aircompany` VALUES ('14', '11', '11', '11', '11', '11', '');
INSERT INTO `aircompany` VALUES ('15', '22', '22', '22', '22', '22', null);
INSERT INTO `aircompany` VALUES ('16', '33', '33', '33', '33', '33', null);
INSERT INTO `aircompany` VALUES ('17', '44', '44', '44', '44', '44', null);
INSERT INTO `aircompany` VALUES ('18', '55', '55', '55', '55', '55', null);
INSERT INTO `aircompany` VALUES ('19', '66', '66', '66', '66', '66', null);
INSERT INTO `aircompany` VALUES ('20', '77', '77', '77', '77', '77', null);
INSERT INTO `aircompany` VALUES ('21', '88', '88', '88', '88', '88', null);
INSERT INTO `aircompany` VALUES ('22', '99', '99', '99', '99', '99', null);

-- ----------------------------
-- Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `discount` double default NULL,
  `children` double default NULL,
  `adult` double default NULL,
  `golden` double default NULL,
  `silver` double default NULL,
  `common` double default NULL,
  `starttime` date default NULL,
  `endtime` date default NULL,
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('4', '1', '1', '4', '4', null, '2015-09-04', '2015-09-08', '228', '普通折扣');
INSERT INTO `discount` VALUES ('0.8', '0.9', '0.9', '0.5', '0.2', '0.4', '2015-09-16', '2015-09-22', '231', '普通折扣');
INSERT INTO `discount` VALUES ('1', '1', '1', '1', '1', null, '2015-09-23', '2015-09-29', '232', '中秋折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-10-09', '2015-10-11', '245', '普通折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-10-12', '2015-10-20', '246', '普通折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-10-21', '2015-10-31', '250', '春节折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-09-09', '2015-09-15', '252', '普通折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-09-30', '2015-10-08', '253', '国庆折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '1', '0.85', '0.9', null, '2015-11-02', '2015-11-07', '254', '普通折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-08-30', '2015-09-03', '257', '五一折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-11-08', '2015-11-13', '258', '春节折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-11-15', '2015-11-17', '263', '国庆折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-11-18', '2015-11-19', '282', '国庆折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-11-24', '2015-11-24', '283', '春节折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-11-25', '2015-11-25', '284', '端午折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-11-22', '2015-11-22', '286', '端午折扣');
INSERT INTO `discount` VALUES ('1', '0.5', '0.9', '0.8', '0.85', null, '2015-12-01', '2015-12-01', '287', '国庆折扣');

-- ----------------------------
-- Table structure for `line`
-- ----------------------------
DROP TABLE IF EXISTS `line`;
CREATE TABLE `line` (
  `id` int(255) NOT NULL auto_increment,
  `startplace` varchar(255) default NULL,
  `endplace` varchar(255) default NULL,
  `starttime` time default NULL,
  `endtime` time default NULL,
  `linename` varchar(255) default NULL,
  `endcity` varchar(255) default NULL,
  `startcity` varchar(255) default NULL,
  `pid` int(255) default NULL,
  `planedate` date default NULL,
  `distance` int(11) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line
-- ----------------------------
INSERT INTO `line` VALUES ('1', '深圳机场1', '广州机场1', '08:00:00', '10:00:00', 'MU5220', '广州', '深圳', '2', '2015-08-28', '8024', null);
INSERT INTO `line` VALUES ('2', '北京机场', '广州机场', '08:30:00', '14:30:00', 'MU5212', '广州', '北京', '2', '2015-09-26', '2000', null);
INSERT INTO `line` VALUES ('106', '广州机场1', '海南机场1', '02:56:01', '02:56:01', 'q1', '海南', '广州', '2', '2015-09-06', '1200', null);
INSERT INTO `line` VALUES ('107', '广州机场1', '海南机场1', '02:56:01', '02:56:01', 'q1', '海南', '广州', '2', '2015-09-07', '1200', null);
INSERT INTO `line` VALUES ('108', '广州机场1', '海南机场1', '02:56:01', '02:56:01', 'q1', '海南', '广州', '2', '2015-09-08', '1200', null);
INSERT INTO `line` VALUES ('109', '广州机场1', '海南机场1', '02:56:01', '02:56:01', 'q1', '海南', '广州', '2', '2015-09-09', '1200', null);
INSERT INTO `line` VALUES ('110', '广州机场1', '海南机场1', '02:56:01', '02:56:01', 'q1', '海南', '广州', '2', '2015-09-10', '1200', null);
INSERT INTO `line` VALUES ('111', '广州机场1', '海南机场1', '02:56:01', '02:56:01', 'q1', '海南', '广州', '2', '2015-09-11', '1200', null);
INSERT INTO `line` VALUES ('113', '济南机场', '首都机场', '04:54:00', '07:54:00', 'q2', '北京', '济南', '2', '2015-09-08', '1300', null);
INSERT INTO `line` VALUES ('115', '济南机场', '首都机场', '04:54:00', '07:54:00', 'q2', '北京', '济南', '2', '2015-09-10', '1300', null);
INSERT INTO `line` VALUES ('116', '济南机场', '首都机场', '04:54:00', '07:54:00', 'q2', '北京', '济南', '2', '2015-09-11', '1300', null);
INSERT INTO `line` VALUES ('117', '济南机场', '首都机场', '04:54:00', '07:54:00', 'q2', '北京', '济南', '2', '2015-09-12', '1300', null);
INSERT INTO `line` VALUES ('119', '济南机场', '揭阳机场', '03:03:00', '05:52:00', 'q3', '揭阳', '济南', '2', '2015-09-08', '1200', null);
INSERT INTO `line` VALUES ('121', '济南机场', '揭阳机场', '03:03:00', '05:52:00', 'q3', '揭阳', '济南', '2', '2015-09-10', '1200', null);
INSERT INTO `line` VALUES ('122', '济南机场', '揭阳机场', '03:03:00', '05:52:00', 'q3', '揭阳', '济南', '2', '2015-09-11', '1200', null);
INSERT INTO `line` VALUES ('123', '济南机场', '揭阳机场', '03:03:00', '05:52:00', 'q3', '揭阳', '济南', '2', '2015-09-12', '1200', null);
INSERT INTO `line` VALUES ('124', '潮汕机场2', '石家庄机场2', '04:52:00', '04:52:00', 'Q34', '石家庄', '揭阳', '3', '2015-09-07', '1500', null);
INSERT INTO `line` VALUES ('125', '潮汕机场2', '石家庄机场2', '04:52:00', '04:52:00', 'Q34', '石家庄', '揭阳', '3', '2015-09-08', '1500', null);
INSERT INTO `line` VALUES ('126', '潮汕机场2', '石家庄机场2', '04:52:00', '04:52:00', 'Q34', '石家庄', '揭阳', '3', '2015-09-09', '1500', null);
INSERT INTO `line` VALUES ('127', '潮汕机场2', '石家庄机场2', '04:52:00', '04:52:00', 'Q34', '石家庄', '揭阳', '3', '2015-09-10', '1500', null);
INSERT INTO `line` VALUES ('128', '潮汕机场2', '石家庄机场2', '04:52:00', '04:52:00', 'Q34', '石家庄', '揭阳', '3', '2015-09-11', '1500', null);
INSERT INTO `line` VALUES ('130', '济南机场', '潮汕机场', '12:24:00', '14:44:00', 'q4', '揭阳', '济南', '2', '2015-09-08', '1200', null);
INSERT INTO `line` VALUES ('134', '西江机场', '西藏机场', '09:16:00', '10:16:00', 'U918', '西藏', '肇庆', '2', '2015-09-19', '20', null);
INSERT INTO `line` VALUES ('135', '西江机场', '西藏机场', '09:16:00', '10:16:00', 'U918', '西藏', '肇庆', '2', '2015-09-20', '20', null);
INSERT INTO `line` VALUES ('136', '西江机场', '西藏机场', '09:16:00', '10:16:00', 'U918', '西藏', '肇庆', '2', '2015-09-21', '20', null);
INSERT INTO `line` VALUES ('139', '西江机场', '首都机场', '11:05:00', '13:05:00', 'zq233', '北京', '肇庆', '2', '2015-09-26', '1600', null);
INSERT INTO `line` VALUES ('140', '西江机场', '首都机场', '11:05:00', '13:05:00', 'zq233', '北京', '肇庆', '2', '2015-09-27', '1600', null);
INSERT INTO `line` VALUES ('141', '西江机场', '首都机场', '11:05:00', '13:05:00', 'zq233', '北京', '肇庆', '2', '2015-09-28', '1600', null);
INSERT INTO `line` VALUES ('142', '西江机场', '首都机场', '11:05:00', '13:05:00', 'zq233', '北京', '肇庆', '2', '2015-09-29', '1600', null);
INSERT INTO `line` VALUES ('143', '西江机场', '首都机场', '11:05:00', '13:05:00', 'zq233', '北京', '肇庆', '2', '2015-09-30', '1600', null);
INSERT INTO `line` VALUES ('144', '西江机场', '首都机场', '11:05:00', '13:05:00', 'zq233', '北京', '肇庆', '2', '2015-10-01', '1600', null);
INSERT INTO `line` VALUES ('145', '广州机场', '首都机场', '11:15:30', '13:15:30', 'G3233', '北京', '广州', '2', '2015-09-26', '1600', null);
INSERT INTO `line` VALUES ('146', '广州机场', '首都机场', '11:15:30', '13:15:30', 'G3233', '北京', '广州', '2', '2015-09-27', '1600', null);
INSERT INTO `line` VALUES ('147', '广州机场', '首都机场', '11:15:30', '13:15:30', 'G3233', '北京', '广州', '2', '2015-09-28', '1600', null);
INSERT INTO `line` VALUES ('148', '广州机场', '首都机场', '11:15:30', '13:15:30', 'G3233', '北京', '广州', '2', '2015-09-29', '1600', null);
INSERT INTO `line` VALUES ('149', '广州机场', '首都机场', '11:15:30', '13:15:30', 'G3233', '北京', '广州', '2', '2015-09-30', '1600', null);
INSERT INTO `line` VALUES ('150', '广州机场', '首都机场', '11:15:30', '13:15:30', 'G3233', '北京', '广州', '2', '2015-10-01', '1600', null);
INSERT INTO `line` VALUES ('157', '首都机场', '济南机场', '14:30:15', '15:30:15', 'jn233', '济南', '北京', '2', '2015-09-27', '1300', null);
INSERT INTO `line` VALUES ('158', '首都机场', '济南机场', '14:30:15', '15:30:15', 'jn233', '济南', '北京', '2', '2015-09-28', '1300', null);
INSERT INTO `line` VALUES ('159', '首都机场', '济南机场', '14:30:15', '15:30:15', 'jn233', '济南', '北京', '2', '2015-09-29', '1300', null);
INSERT INTO `line` VALUES ('160', '首都机场', '济南机场', '14:30:15', '15:30:15', 'jn233', '济南', '北京', '2', '2015-09-30', '1300', null);
INSERT INTO `line` VALUES ('161', '首都机场', '济南机场', '14:30:15', '15:30:15', 'jn233', '济南', '北京', '2', '2015-10-01', '1300', null);
INSERT INTO `line` VALUES ('162', '首都机场', '济南机场', '14:30:15', '15:30:15', 'jn233', '济南', '北京', '2', '2015-10-02', '1300', null);
INSERT INTO `line` VALUES ('163', '白云机场', '武汉机场', '14:30:15', '15:30:15', '775', '武汉', '广州', '3', '2015-09-27', '133', null);
INSERT INTO `line` VALUES ('164', '白云机场', '武汉机场', '14:30:15', '15:30:15', '775', '武汉', '广州', '3', '2015-09-28', '133', null);
INSERT INTO `line` VALUES ('165', '白云机场', '武汉机场', '14:30:15', '15:30:15', '775', '武汉', '广州', '3', '2015-09-29', '133', null);
INSERT INTO `line` VALUES ('166', '白云机场', '武汉机场', '14:30:15', '15:30:15', '775', '武汉', '广州', '3', '2015-09-30', '133', null);
INSERT INTO `line` VALUES ('167', '白云机场', '武汉机场', '14:30:15', '15:30:15', '775', '武汉', '广州', '3', '2015-10-01', '133', null);
INSERT INTO `line` VALUES ('168', '白云机场', '武汉机场', '14:30:15', '15:30:15', '775', '武汉', '广州', '3', '2015-10-02', '133', null);
INSERT INTO `line` VALUES ('169', '首都机场T2', '杭州机场', '17:50:30', '18:15:30', 'MU889', '杭州', '北京', '2', '2015-09-28', '1500', null);
INSERT INTO `line` VALUES ('170', '首都机场T2', '杭州机场', '17:50:30', '18:15:30', 'MU889', '杭州', '北京', '2', '2015-09-29', '1500', null);
INSERT INTO `line` VALUES ('171', '首都机场T2', '杭州机场', '17:50:30', '18:15:30', 'MU889', '杭州', '北京', '2', '2015-09-30', '1500', null);
INSERT INTO `line` VALUES ('172', '首都机场T2', '杭州机场', '17:50:30', '18:15:30', 'MU889', '杭州', '北京', '2', '2015-10-01', '1500', null);
INSERT INTO `line` VALUES ('173', '首都机场T2', '杭州机场', '17:50:30', '18:15:30', 'MU889', '杭州', '北京', '2', '2015-10-02', '1500', null);
INSERT INTO `line` VALUES ('174', '首都机场T2', '杭州机场', '17:50:30', '18:15:30', 'MU889', '杭州', '北京', '2', '2015-10-03', '1500', null);
INSERT INTO `line` VALUES ('175', '西江机场', '首都机场', '09:10:00', '10:10:00', 'qqqq', '北京', '肇庆', '2', '2015-09-29', '20', null);
INSERT INTO `line` VALUES ('176', '西江机场', '首都机场', '09:10:00', '10:10:00', 'qqqq', '北京', '肇庆', '2', '2015-09-30', '20', null);
INSERT INTO `line` VALUES ('177', '西江机场', '首都机场', '09:10:00', '10:10:00', 'qqqq', '北京', '肇庆', '2', '2015-10-01', '20', null);
INSERT INTO `line` VALUES ('178', '西江机场', '首都机场', '09:10:00', '10:10:00', 'qqqq', '北京', '肇庆', '2', '2015-10-02', '20', null);
INSERT INTO `line` VALUES ('179', '西江机场', '首都机场', '09:10:00', '10:10:00', 'qqqq', '北京', '肇庆', '2', '2015-10-03', '20', null);
INSERT INTO `line` VALUES ('180', '西江机场', '首都机场', '09:10:00', '10:10:00', 'qqqq', '北京', '肇庆', '2', '2015-10-04', '20', null);
INSERT INTO `line` VALUES ('181', '白云机场', '首都机场', '15:10:00', '16:10:00', 'q32555', '北京', '广州', '10', '2015-10-12', '1200', null);
INSERT INTO `line` VALUES ('182', '白云机场', '首都机场', '15:10:00', '16:10:00', 'q32555', '北京', '广州', '10', '2015-10-13', '1200', null);
INSERT INTO `line` VALUES ('183', '白云机场', '首都机场', '15:10:00', '16:10:00', 'q32555', '北京', '广州', '10', '2015-10-14', '1200', null);
INSERT INTO `line` VALUES ('184', '白云机场', '首都机场', '15:10:00', '16:10:00', 'q32555', '北京', '广州', '10', '2015-10-15', '1200', null);
INSERT INTO `line` VALUES ('185', '白云机场', '首都机场', '15:10:00', '16:10:00', 'q32555', '北京', '广州', '10', '2015-10-16', '1200', null);
INSERT INTO `line` VALUES ('186', '白云机场', '首都机场', '15:10:00', '16:10:00', 'q32555', '北京', '广州', '10', '2015-10-17', '1200', null);

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `clicknumber` int(11) default NULL,
  `content` text,
  `pubdate` date default NULL,
  `title` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  `author` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '102', '民航资源网2015年9月29日消息：田磊，中共共产党员，2008年参加工作。自从来到东航西北这个大家庭，在这个平凡的工作岗位上，他踏踏实实、勤勤肯肯的做好本职工作，以严谨的工作态度来对待每一件事情。在这七年的职场生涯中，田磊凭借着自己这种脚踏实地，严谨认真，谦虚好学，积极向上，以身作则的工作作风，已经得到了同事们一致肯定和赞扬。\r\n\r\n　　在日常工作管理中，无论对待琐碎事务处理还是在师徒带教期间，他都以身作则为原则，本着责任心处理每一项事务，取得一次次工作中的肯定。在田磊师徒带教期间，田磊的徒弟回忆说：“自己的师傅是一个非常认真负责的师傅，他将自己积攒下来的电子课件和电子执照教材给了自己，并向自己讲授这几年的工作经验。记得自己初进驾驶舱时，师傅就给自己说道，在驾驶舱中，未经允许，红色和有保护盖的按钮是不能操作的；驾驶舱按钮开关繁多，在操作之前一定要先看清楚了，再操作。驾驶舱里面的部件确实非常多，师傅给我依次介绍，我当时似懂非懂的看着师傅，脑子里面有些混乱，但是，在后期师傅的帮助下，我慢慢的屡清楚了里面的眉目。”田磊的徒弟指着电脑上的文件继续说道：“这些都是师傅当初给我的，由于看起来比较吃力，我总是问一些很模棱两可的问题，但是，师傅总是很耐心的帮我分析，解答。在查阅资料时，师傅根据他多年的经验给我绘制出一张关系表，让我很容易理解各种手册之间的关系，然后针对常用的AMM（飞机维修手册）详细讲解具体操作步骤……正是因为师傅这种认真负责的态度，才使得我这段实习期过得很充实，同时也将对我今后的职业生涯产生深远的影响，他就是我的榜样。”t', '2015-09-22', '身先士卒 无私奉献——记东航西北田磊', 'gallery-1.jpg', 'common', 'gamei');
INSERT INTO `news` VALUES ('2', '66', '　民航资源网2015年9月29日消息：为在全国范围内深入推广东航品牌，打开东航直销的全新市场，吸引更多的潜在客源关注各类东航产品和服务品牌，提升社会认知度 。2015年9月底，东航石家庄营业部携河北康辉旅行社股份有限公司精心筹备数日的东航“旅游集市”石家庄站隆重开幕。这次东航“旅游集市”活动得到华北营销中心的大力支持，并全程派人指导与跟进。\r\n\r\n　　适时推出特价机票，吸引河北地区大众消费群体的关注和积极参与，提高东方航空在河北的品牌影响力是这次东航“旅游集市”石家庄站的举办宗旨。为使东航“旅游集市”活动产生轰动效应，真正使东航品牌深入人心，石家庄部早在两个月前就进行了缜密的部署。从活动方案的设计、宣传内容的确定、航线促销政策的申请、旅游产品的配套，再到各个活动细节的推敲落实等都列出了详尽的推进时间表，以确保东航“旅游集市”活动在石家庄站的顺利开展。', '2015-09-23', '中联航河北开展旅游集市石家庄站活动纪实', 'gallery-2.jpg', 'discount', 'gamei');
INSERT INTO `news` VALUES ('3', '654', '财新记者从多个可靠信源获悉，继民航空管局局长助理刘德华被查后，他曾经的直接领导、现任民航空管局党委常委、工会主席徐东亦已失联接近两个月时间。\r\n\r\n　　消息人士透露，徐东8月4日上午还在局里临时主持一个会议，下午即被叫走调查；第二天空管局要开党委会，通知他时发现联系不上。此后几天空管局的内部说法是徐东出差了，但之后一直没有回归工作岗位。财新记者曾尝试联系中国民航局新闻发言人，但未获官方置评。近期有消息称，民航局内部已有相应通报。\r\n\r\n　　“徐东涉嫌收受贿赂。”两位接近中国民航局的人士向财新记者透露。\r\n\r\n　　徐东年纪不大，约50岁，曾任民航新疆管理局副局长，2008年底调任民航空管局总会计师，2013年担任工会主席，是空管局党委常委。', '2015-09-18', '民航空管局党委常委徐东失联八周', 'gallery-3.jpg', 'notice', 'gamei');
INSERT INTO `news` VALUES ('106', null, '           刚刚      come  on ', '2015-10-14', '刚刚     再来一次', '1444797857687.jpg', 'common', '文');
INSERT INTO `news` VALUES ('107', null, '           是大法官阿萨德发士大夫', '2015-10-14', '说戴妃是的发生', '1444797898859.jpg', 'common', '文');

-- ----------------------------
-- Table structure for `passenger`
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `id` int(11) NOT NULL auto_increment,
  `idcard` varchar(255) character set utf8 NOT NULL default '',
  `name` varchar(255) character set utf8 default NULL,
  `phone` varchar(255) default NULL,
  PRIMARY KEY  (`id`,`idcard`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES ('4', '440882199303031578', '吴振廷', '15766228255');
INSERT INTO `passenger` VALUES ('34', '440882199303031111', '曾志伟', '15766228255');
INSERT INTO `passenger` VALUES ('35', '44142619933142097X', '张增荣', '15766228248');
INSERT INTO `passenger` VALUES ('37', '440882199303031579', '张珂源', '15766228123');
INSERT INTO `passenger` VALUES ('40', '440882199303031111', '曾志伟', '15766228255');
INSERT INTO `passenger` VALUES ('41', '440882199303031111', '曾志伟', '15766228255');
INSERT INTO `passenger` VALUES ('42', '44142619933142097X', '张增荣', '15766228248');
INSERT INTO `passenger` VALUES ('43', '440882199303031579', '张珂源', '15766228123');
INSERT INTO `passenger` VALUES ('44', '440882199303031578', '吴振廷', '15766228255');
INSERT INTO `passenger` VALUES ('45', '111111111111111111', '张珂沅', '15766228123');
INSERT INTO `passenger` VALUES ('46', '222222222222222222', '谢闯', '15766228123');
INSERT INTO `passenger` VALUES ('79', '440882199303031111', '曾志伟', '15766228255');
INSERT INTO `passenger` VALUES ('80', '123456789098765432', '杨家明', '15766228136');
INSERT INTO `passenger` VALUES ('81', '09876543212345678', '莫五菱', '15766228098');

-- ----------------------------
-- Table structure for `pass_user`
-- ----------------------------
DROP TABLE IF EXISTS `pass_user`;
CREATE TABLE `pass_user` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pass_user
-- ----------------------------
INSERT INTO `pass_user` VALUES ('1', '4', '72');
INSERT INTO `pass_user` VALUES ('2', '5', '72');
INSERT INTO `pass_user` VALUES ('15', '34', '72');
INSERT INTO `pass_user` VALUES ('18', '37', '3');
INSERT INTO `pass_user` VALUES ('19', '38', '3');
INSERT INTO `pass_user` VALUES ('20', '39', '3');
INSERT INTO `pass_user` VALUES ('21', '40', '3');
INSERT INTO `pass_user` VALUES ('22', '41', '3');
INSERT INTO `pass_user` VALUES ('23', '42', '3');
INSERT INTO `pass_user` VALUES ('24', '43', '3');
INSERT INTO `pass_user` VALUES ('28', '47', '72');
INSERT INTO `pass_user` VALUES ('29', '48', null);
INSERT INTO `pass_user` VALUES ('30', '49', null);
INSERT INTO `pass_user` VALUES ('31', '50', null);
INSERT INTO `pass_user` VALUES ('32', '51', '72');
INSERT INTO `pass_user` VALUES ('33', '52', '72');
INSERT INTO `pass_user` VALUES ('34', '53', '72');
INSERT INTO `pass_user` VALUES ('35', '54', '72');
INSERT INTO `pass_user` VALUES ('36', '55', '72');
INSERT INTO `pass_user` VALUES ('37', '56', '72');
INSERT INTO `pass_user` VALUES ('38', '57', '72');
INSERT INTO `pass_user` VALUES ('39', '58', '72');
INSERT INTO `pass_user` VALUES ('40', '59', '72');
INSERT INTO `pass_user` VALUES ('41', '60', '72');
INSERT INTO `pass_user` VALUES ('42', '61', '72');
INSERT INTO `pass_user` VALUES ('43', '62', '72');
INSERT INTO `pass_user` VALUES ('44', '63', '72');
INSERT INTO `pass_user` VALUES ('45', '64', '72');
INSERT INTO `pass_user` VALUES ('46', '65', '72');
INSERT INTO `pass_user` VALUES ('47', '66', '72');
INSERT INTO `pass_user` VALUES ('48', '67', '72');
INSERT INTO `pass_user` VALUES ('49', '68', '72');
INSERT INTO `pass_user` VALUES ('50', '69', '72');
INSERT INTO `pass_user` VALUES ('51', '70', '72');
INSERT INTO `pass_user` VALUES ('52', '71', '72');
INSERT INTO `pass_user` VALUES ('53', '72', '72');
INSERT INTO `pass_user` VALUES ('54', '73', '72');
INSERT INTO `pass_user` VALUES ('55', '74', '72');
INSERT INTO `pass_user` VALUES ('56', '75', '72');
INSERT INTO `pass_user` VALUES ('57', '76', '72');
INSERT INTO `pass_user` VALUES ('58', '77', '72');
INSERT INTO `pass_user` VALUES ('59', '78', '72');
INSERT INTO `pass_user` VALUES ('60', '79', null);
INSERT INTO `pass_user` VALUES ('61', '2', '1');
INSERT INTO `pass_user` VALUES ('62', '80', '72');
INSERT INTO `pass_user` VALUES ('63', '81', '72');
INSERT INTO `pass_user` VALUES ('64', '82', '72');

-- ----------------------------
-- Table structure for `plane`
-- ----------------------------
DROP TABLE IF EXISTS `plane`;
CREATE TABLE `plane` (
  `id` int(11) NOT NULL auto_increment,
  `lname` varchar(255) default NULL,
  `tdcnum` int(11) default NULL,
  `swcnum` int(11) default NULL,
  `jjcnum` int(11) default NULL,
  `thcnum` int(11) default NULL,
  `tdcprice` double default NULL,
  `swcprice` double default NULL,
  `jjcprice` double default NULL,
  `thcprice` double default NULL,
  `planetype` varchar(255) default NULL,
  `imgurl` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plane
-- ----------------------------
INSERT INTO `plane` VALUES ('1', 'q1', '12', '49', '253', '0', '2320', '555', '111', '222', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('2', '', '4', '12', '150', '12', '1200', '1232', '800', '500', '波音749', '/BacksAdmin/plane/img/波音747.gif', '报废');
INSERT INTO `plane` VALUES ('3', 'Q34', '4', '10', '150', '12', '1600', '1500', '1200', '200', '波音233', '/BacksAdmin/plane/img/波音747.gif', '空闲');
INSERT INTO `plane` VALUES ('4', '', '4', '12', '253', '0', '9999', '8888', '7777', '6666', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '需修理');
INSERT INTO `plane` VALUES ('5', 'q4', '4', '10', '150', '12', '1500', '2300', '51323', '2323', '波音wtf', '/BacksAdmin/plane/img/波音747.gif', '完美');
INSERT INTO `plane` VALUES ('12', 'MU222', '12', '49', '253', '0', '1200', '1300', '111', '222', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('13', 'MU333', '12', '12', '12', '12', '12', '12', '12', '12', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('19', 'MU5220', '12', '49', '120', '2', '1659', '1379', '900', '600', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('20', 'q3', '12', '49', '120', '4', '1659', '1379', '900', '499', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('21', 'MU5212', '12', '49', '120', '4', '1659', '1379', '900', '499', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('22', 'U918', '12', '49', '120', '4', '1500', '1200', '1000', '500', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('23', 'MU889', '12', '49', '120', '4', '1599', '1200', '600', '300', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('24', '775', '12', '49', '120', '4', '1500', '1200', '1000', '500', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('25', 'qqqq', '12', '49', '120', '4', '1200', '1000', '900', '500', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('26', 'jn233', '12', '49', '120', '4', '1300', '1200', '1000', '500', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('27', 'jn233', '12', '49', '120', '4', '1300', '1200', '1000', '500', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('28', 'G3233', '12', '49', '120', '4', '1600', '1200', '300', '100', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('34', 'zq233', '12', '48', '120', '4', '1500', '1200', '1000', '800', '波音777', '/BacksAdmin/plane/img/波音777.jpg', '完美');
INSERT INTO `plane` VALUES ('38', 'q32555', '10', '15', '50', '5', '1600', '1500', '1200', '1100', 'qwe233', '', '完美');

-- ----------------------------
-- Table structure for `seatnum`
-- ----------------------------
DROP TABLE IF EXISTS `seatnum`;
CREATE TABLE `seatnum` (
  `id` int(11) NOT NULL auto_increment,
  `lname` varchar(255) default NULL,
  `planedate` date default NULL,
  `tdcnum` int(11) default NULL,
  `swcnum` int(11) default NULL,
  `jjcnum` int(11) default NULL,
  `thcnum` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seatnum
-- ----------------------------
INSERT INTO `seatnum` VALUES ('1', 'MU5220', '2015-08-28', '0', '3', '48', '0');
INSERT INTO `seatnum` VALUES ('2', 'MU5212', '2015-08-28', '0', '48', '165', '38');
INSERT INTO `seatnum` VALUES ('99', 'q1', '2015-09-06', '1', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('100', 'q1', '2015-09-07', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('101', 'q1', '2015-09-08', '1', '3', '1', '4');
INSERT INTO `seatnum` VALUES ('102', 'q1', '2015-09-09', '1', '3', '1', '4');
INSERT INTO `seatnum` VALUES ('103', 'q1', '2015-09-10', '1', '3', '1', '4');
INSERT INTO `seatnum` VALUES ('104', 'q1', '2015-09-11', '1', '3', '1', '4');
INSERT INTO `seatnum` VALUES ('106', 'q2', '2015-09-08', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('108', 'q2', '2015-09-10', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('109', 'q2', '2015-09-11', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('110', 'q2', '2015-09-12', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('112', 'q3', '2015-09-08', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('114', 'q3', '2015-09-10', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('115', 'q3', '2015-09-11', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('116', 'q3', '2015-09-12', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('117', 'Q34', '2015-09-07', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('118', 'Q34', '2015-09-08', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('119', 'Q34', '2015-09-09', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('120', 'Q34', '2015-09-10', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('121', 'Q34', '2015-09-11', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('124', 'q4', '2015-09-08', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('125', 'U918', '2015-09-18', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('126', 'U918', '2015-09-19', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('127', 'U918', '2015-09-20', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('128', 'U918', '2015-09-21', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('131', 'zq233', '2015-09-26', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('132', 'zq233', '2015-09-27', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('133', 'zq233', '2015-09-28', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('134', 'zq233', '2015-09-29', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('135', 'zq233', '2015-09-30', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('136', 'zq233', '2015-10-01', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('137', 'G3233', '2015-09-26', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('138', 'G3233', '2015-09-27', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('139', 'G3233', '2015-09-28', '1', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('140', 'G3233', '2015-09-29', '1', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('141', 'G3233', '2015-09-30', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('142', 'G3233', '2015-10-01', '0', '0', '0', '0');
INSERT INTO `seatnum` VALUES ('149', 'jn233', '2015-09-27', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('150', 'jn233', '2015-09-28', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('151', 'jn233', '2015-09-29', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('152', 'jn233', '2015-09-30', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('153', 'jn233', '2015-10-01', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('154', 'jn233', '2015-10-02', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('155', '775', '2015-09-27', '13', '47', '120', '0');
INSERT INTO `seatnum` VALUES ('156', '775', '2015-09-28', '12', '48', '119', '3');
INSERT INTO `seatnum` VALUES ('157', '775', '2015-09-29', '12', '46', '113', '2');
INSERT INTO `seatnum` VALUES ('158', '775', '2015-09-30', '12', '49', '119', '3');
INSERT INTO `seatnum` VALUES ('159', '775', '2015-10-01', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('160', '775', '2015-10-02', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('161', 'MU889', '2015-09-28', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('162', 'MU889', '2015-09-29', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('163', 'MU889', '2015-09-30', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('164', 'MU889', '2015-10-01', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('165', 'MU889', '2015-10-02', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('166', 'MU889', '2015-10-03', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('167', 'qqqq', '2015-09-29', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('168', 'qqqq', '2015-09-30', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('169', 'qqqq', '2015-10-01', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('170', 'qqqq', '2015-10-02', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('171', 'qqqq', '2015-10-03', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('172', 'qqqq', '2015-10-04', '12', '49', '120', '4');
INSERT INTO `seatnum` VALUES ('173', 'q32555', '2015-10-12', '9', '15', '50', '5');
INSERT INTO `seatnum` VALUES ('174', 'q32555', '2015-10-13', '10', '15', '50', '5');
INSERT INTO `seatnum` VALUES ('175', 'q32555', '2015-10-14', '8', '14', '49', '5');
INSERT INTO `seatnum` VALUES ('176', 'q32555', '2015-10-15', '10', '15', '50', '5');
INSERT INTO `seatnum` VALUES ('177', 'q32555', '2015-10-16', '10', '15', '50', '5');
INSERT INTO `seatnum` VALUES ('178', 'q32555', '2015-10-17', '10', '15', '50', '5');

-- ----------------------------
-- Table structure for `ticket`
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL auto_increment,
  `idcard` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `lname` varchar(255) default NULL,
  `startplace` varchar(255) default NULL,
  `endplace` varchar(255) default NULL,
  `starttime` time default NULL,
  `endtime` time default NULL,
  `startdate` date default NULL,
  `apname` varchar(255) default NULL,
  `seattype` varchar(255) default NULL,
  `price` double default NULL,
  `buydate` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES ('1', '440582199304290495', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-09-20', '南方航空', '经济舱', '1000', '2015-01-17');
INSERT INTO `ticket` VALUES ('2', '440882199303031578', '男', 'MU5220', '深圳机场', '广州机场', '00:00:00', '11:13:08', '2015-08-25', '中国航空', '头等舱', '1200', '2015-08-20');
INSERT INTO `ticket` VALUES ('3', '440582199304290495', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-09-22', '南方航空', '经济舱', '1200', '2015-02-20');
INSERT INTO `ticket` VALUES ('4', '440882199303031578', '男', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-08-28', '中国北航', '头等舱', '1200', '2015-03-22');
INSERT INTO `ticket` VALUES ('7', '440582199304290485', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-03-20', '南方航空', '经济舱', '1100', '2015-04-17');
INSERT INTO `ticket` VALUES ('8', '440582199304290445', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-04-20', '南方航空', '经济舱', '1000', '2015-05-17');
INSERT INTO `ticket` VALUES ('9', '440582199304290447', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-05-20', '南方航空', '经济舱', '6000', '2015-06-17');
INSERT INTO `ticket` VALUES ('10', '440582199304290492', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-06-20', '南方航空', '经济舱', '1500', '2015-07-17');
INSERT INTO `ticket` VALUES ('11', '440582199304290496', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-07-20', '南方航空', '经济舱', '1000', '2015-08-17');
INSERT INTO `ticket` VALUES ('12', '440582199304290494', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-08-20', '南方航空', '经济舱', '1000', '2015-09-17');
INSERT INTO `ticket` VALUES ('13', '440582199304290493', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-10-20', '南方航空', '经济舱', '1400', '2015-10-17');
INSERT INTO `ticket` VALUES ('14', '440582199304290497', '女', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-11-20', '南方航空', '经济舱', '2000', '2015-11-17');
INSERT INTO `ticket` VALUES ('641', '440582199304290499', '男', 'MU5212', '北京机场', '广州机场', '08:30:00', '14:30:00', '2015-08-28', '中国航空', '经济舱', '9000', '2015-12-22');
INSERT INTO `ticket` VALUES ('642', '440882199303031578', '女', 'MU5220', '深圳机场1', '广州机场1', '08:00:00', '10:00:00', '2015-08-28', '中国航空', '头等舱', '1659', '2015-09-28');
INSERT INTO `ticket` VALUES ('643', '440882199303031578', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-27', '中国北航', '特惠舱', '500', '2015-09-28');
INSERT INTO `ticket` VALUES ('644', '440582200005041234', '女', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-27', '中国北航', '商务舱', '1200', '2015-09-29');
INSERT INTO `ticket` VALUES ('649', '440582199304290495', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-29', '中国北航', '经济舱', '900', '2015-09-30');
INSERT INTO `ticket` VALUES ('652', '440582199304290495', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-29', '中国北航', '经济舱', '900', '2015-09-30');
INSERT INTO `ticket` VALUES ('653', '440582199304290495', '女', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-28', '中国北航', '商务舱', '600', '2015-09-30');
INSERT INTO `ticket` VALUES ('654', '440582199304290495', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-29', '中国北航', '特惠舱', '250', '2015-09-30');
INSERT INTO `ticket` VALUES ('655', '440582199304290495', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-29', '中国北航', '特惠舱', '250', '2015-09-30');
INSERT INTO `ticket` VALUES ('667', '440582199304290495', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-27', '中国北航', '特惠舱', '250', '2015-10-12');
INSERT INTO `ticket` VALUES ('668', '440582199304290495', '男', '775', '白云机场', '武汉机场', '14:30:15', '15:30:15', '2015-09-29', '中国北航', '特惠舱', '450', '2015-10-12');

-- ----------------------------
-- Table structure for `torder`
-- ----------------------------
DROP TABLE IF EXISTS `torder`;
CREATE TABLE `torder` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `lid` int(11) default NULL,
  `seat` varchar(255) character set utf8 default NULL,
  `pid` int(255) default NULL,
  `price` double default NULL,
  `starttime` datetime default NULL,
  `status` varchar(255) character set utf8 default NULL,
  `phone` varchar(255) default NULL,
  `contacter` varchar(255) character set utf8 default NULL,
  `ordernum` varchar(255) default NULL,
  `remaintime` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of torder
-- ----------------------------
INSERT INTO `torder` VALUES ('30', '3', '1', 'jjc', '5', '1069', '2015-09-07 10:28:51', '订单失效', null, null, '201509071028511', '0');
INSERT INTO `torder` VALUES ('31', '3', '1', 'jjc', '34', '1069', '2015-09-07 10:28:51', '订单失效', null, null, '201509071028511', '0');
INSERT INTO `torder` VALUES ('32', '3', '1', 'jjc', '35', '1069', '2015-09-07 10:28:51', '订单失效', null, null, '201509071028511', '0');
INSERT INTO `torder` VALUES ('33', '3', '1', 'jjc', '4', '1069', '2015-09-07 10:28:51', '订单失效', null, null, '201509071028511', '0');
INSERT INTO `torder` VALUES ('34', '3', '1', 'thc', '5', '470', '2015-09-07 11:18:35', '订单失效', null, null, '201509071118351', '0');
INSERT INTO `torder` VALUES ('69', '82', '1', 'jjc', '35', '970', '2015-09-18 10:37:52', '订单失效', null, null, '201509181037521', '0');
INSERT INTO `torder` VALUES ('70', '82', '1', 'jjc', '35', '970', '2015-09-18 10:37:59', '订单失效', null, null, '201509181037591', '0');
INSERT INTO `torder` VALUES ('71', '82', '1', 'jjc', '35', '970', '2015-09-18 10:38:15', '订单失效', null, null, '201509181038151', '0');
INSERT INTO `torder` VALUES ('72', '82', '1', 'jjc', '35', '970', '2015-09-18 10:38:25', '订单失效', null, null, '201509181038251', '0');
INSERT INTO `torder` VALUES ('73', '82', '1', 'jjc', '35', '970', '2015-09-18 10:38:27', '订单失效', null, null, '201509181038271', '0');
INSERT INTO `torder` VALUES ('161', null, null, null, null, null, null, '已退款', null, null, null, null);
INSERT INTO `torder` VALUES ('178', '72', '1', 'swc', '34', '1449', '2015-10-12 15:06:04', '订单失效', '', '', '201510121506041', '0');
INSERT INTO `torder` VALUES ('179', '72', '1', 'swc', '80', '1449', '2015-10-12 15:06:04', '订单失效', '', '', '201510121506041', '0');
INSERT INTO `torder` VALUES ('180', '72', '1', 'jjc', '80', '970', '2015-10-12 15:27:31', '订单失效', '', '', '201510121527311', '0');
INSERT INTO `torder` VALUES ('181', '72', '1', 'jjc', '81', '970', '2015-10-12 15:27:31', '订单失效', '', '', '201510121527311', '0');
INSERT INTO `torder` VALUES ('182', '72', '1', 'jjc', '34', '970', '2015-10-12 16:55:29', '订单失效', '', '', '201510121655291', '0');
INSERT INTO `torder` VALUES ('183', '72', '1', 'jjc', '80', '970', '2015-10-12 16:55:29', '订单失效', '', '', '201510121655291', '0');
INSERT INTO `torder` VALUES ('184', '72', '1', 'jjc', '34', '970', '2015-10-12 17:01:39', '订单失效', '', '', '201510121701391', '0');
INSERT INTO `torder` VALUES ('185', '72', '1', 'jjc', '80', '970', '2015-10-12 17:01:39', '订单失效', '', '', '201510121701391', '0');
INSERT INTO `torder` VALUES ('186', '72', '1', 'swc', '34', '1449', '2015-10-14 08:16:39', '订单失效', '', '', '201510140816391', '0');
INSERT INTO `torder` VALUES ('187', '72', '1', 'swc', '80', '1449', '2015-10-14 08:16:39', '订单失效', '', '', '201510140816391', '0');
INSERT INTO `torder` VALUES ('188', '72', '1', 'swc', '4', '1449', '2015-10-14 08:18:37', '订单失效', '', '', '201510140818371', '0');
INSERT INTO `torder` VALUES ('189', '72', '1', 'swc', '34', '1449', '2015-10-14 08:18:37', '订单失效', '', '', '201510140818371', '0');
INSERT INTO `torder` VALUES ('190', '72', '183', 'tdc', '80', '1670', '2015-10-14 15:36:35', '订单取消', '', '', '20151014153635183', '-1');
INSERT INTO `torder` VALUES ('191', '72', '183', 'tdc', '34', '1670', '2015-10-14 15:36:35', '订单取消', '', '', '20151014153635183', '-1');

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `id` int(11) NOT NULL auto_increment,
  `idcard` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `psw` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `account` varchar(255) default NULL,
  `ckid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('72', '440582199304290456', '吴振廷', '男', '15766228259', '6666', '金牌会员', 'root7', null);
INSERT INTO `tuser` VALUES ('74', '440582199304290497', '王晓破', '男', '15766228251', '123456', '银牌会员', 'root12', null);
INSERT INTO `tuser` VALUES ('83', '440582199304290495', '曾志伟', '男', '15766228253', '123456789', '银牌会员', 'root2', null);
INSERT INTO `tuser` VALUES ('84', '440582199304281562', '王小贱', '男', '15655555555', '1222', '普通会员', 'root', null);
INSERT INTO `tuser` VALUES ('87', '445222199309294331', '张柯沅', '男', '15766228274', '6666', '金牌会员', 'zky123', null);
INSERT INTO `tuser` VALUES ('94', '445222199309294332', '吴小婷', '女', '15788221234', '123', '普通会员', 'abc', null);
INSERT INTO `tuser` VALUES ('102', '440582199304290494', '曾志伟', '男', '15766228219', '4564564', '黄金会员', '456456', null);
INSERT INTO `tuser` VALUES ('103', '445222199309294311', '胖胖玲', '女', '66666666666', '2333', '普通会员', 'mwl', null);
INSERT INTO `tuser` VALUES ('106', '4405821993042904955', 'ddd', '男', '45646456', '', '', '', null);
