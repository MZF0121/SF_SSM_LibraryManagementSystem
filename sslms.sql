/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : sslms

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2022-05-15 00:49:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(20) NOT NULL AUTO_INCREMENT COMMENT '书号',
  `bname` varchar(40) NOT NULL DEFAULT '',
  `bprice` float(40,0) NOT NULL COMMENT '书籍价格',
  `bcount` int(20) NOT NULL COMMENT '书籍库存',
  `bdescribe` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `book_id_uindex` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='书籍';

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'Java', '68', '92', '下层基础决定上层建筑');
INSERT INTO `book` VALUES ('2', '数据结构', '74', '56', '祝大家考研成功');
INSERT INTO `book` VALUES ('13', '计算机网络', '86', '92', '我是一点也不会');
INSERT INTO `book` VALUES ('14', 'ssm框架', '89', '1', '工作的最低要求');
INSERT INTO `book` VALUES ('15', '微型计算机原理', '55', '178', '带你走向更高的层级');

-- ----------------------------
-- Table structure for `superadmin`
-- ----------------------------
DROP TABLE IF EXISTS `superadmin`;
CREATE TABLE `superadmin` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '超级管理员编号',
  `sname` varchar(40) NOT NULL COMMENT '超级管理员名称',
  `sphone` varchar(40) NOT NULL,
  `spassword` varchar(40) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`sid`),
  UNIQUE KEY `Superadmin_sid_uindex` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='超级管理员';

-- ----------------------------
-- Records of superadmin
-- ----------------------------
INSERT INTO `superadmin` VALUES ('1', '马占峰', '13231750121', '130982');
INSERT INTO `superadmin` VALUES ('2', '吴甜甜', '17334104662', '130982');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `uname` varchar(40) NOT NULL COMMENT '用户名称',
  `uphone` varchar(100) NOT NULL COMMENT '用户手机号',
  `upassword` varchar(40) NOT NULL COMMENT '用户密码\n',
  `uage` int(20) NOT NULL COMMENT '用户年龄',
  `usex` varchar(10) DEFAULT NULL COMMENT '性别',
  `uaddress` varchar(40) DEFAULT NULL COMMENT '用户地址',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_uid_uindex` (`uid`),
  UNIQUE KEY `user_uphone_uindex` (`uphone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '马占峰', '000000', '000000', '23', '男', '河北省任丘市');
INSERT INTO `user` VALUES ('2', '吴甜甜', '1733410', '130982', '23', '女', '河北省邯郸市');
INSERT INTO `user` VALUES ('3', '111', '111111', '111', '1111', '女', '111');
INSERT INTO `user` VALUES ('4', '222', '2222', '22222', '222', '男', '2222');
INSERT INTO `user` VALUES ('6', '无名', '55555555', '111', '23', '女', '河北省衡水市');
INSERT INTO `user` VALUES ('7', '无名2', '125566223', '55555', '23', '女', '河北省石家庄市');
INSERT INTO `user` VALUES ('8', '无名3', '4121151555', '555444', '23', '男', '154545466');
INSERT INTO `user` VALUES ('9', '无名3', '22126165', '15151', '151', '女', '河北省邢台市');
INSERT INTO `user` VALUES ('10', '无名5', '155555655', '55555', '1111', '女', '河北省石家庄');
