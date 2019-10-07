/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : project_collect

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2019-10-08 07:48:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int(225) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(225) DEFAULT NULL,
  `a_password` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `p_id` int(225) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(225) DEFAULT NULL,
  `p_access` varchar(225) DEFAULT NULL,
  `p_download` varchar(225) DEFAULT NULL,
  `photo` varchar(225) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `jdk` varchar(225) DEFAULT NULL,
  `server` varchar(225) DEFAULT NULL,
  `framework` varchar(225) DEFAULT NULL,
  `dataversion` varchar(225) DEFAULT NULL,
  `abstra` varchar(500) DEFAULT NULL,
  `sales` int(10) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', 'Lucky_Book网上书城系统', 'http://localhost:8984/Jack_Book/', '/project/Jack_Book.zip', 'http://localhost:8984/project-collect/photo/2.PNG', '500', 'JDK 1.8', 'TomCat 8.5', 'Spring+Spring MVC+MyBatis', 'MySql 5.6', '本文从网上书店的实际工作需求出发，站在用户的角度，对网上书店的功能进行分析，对可行性进行探讨，采用了标准的UML面向对象方法建模。从网上书店图书选购到支付、配送、评价以及网上书店系统管理用用例图和顺序图逐一描述。在对网上购书系统全面的需求分析的基础上，采用软件工程的语言对其进行设计。对网上购物系统总体设计方面，采用便于维护管理的三层浏览器-服务器(B/S)体系结构，对图书选购、货款支付、图书配送管理、网上图书退货管理、图书管理、订单管理、顾客信息管理、评价管理和系统管理这些功能模块进行详细设计，用包图和类图表示出每个功能模块的子模块，将主要处理流程用流程图详细标注', '2');
INSERT INTO `project` VALUES ('3', 'Lucky_Book网上书城后台管理系统', 'http://localhost:8984/Jack_Book/Admin/pages/admin_Login.jsp', '/project/Jack_Book.zip', 'http://localhost:8984/project-collect/photo/3.PNG', '300', 'JDK 1.7', 'Tomcat 7.0', 'Lucky', 'MySql 5.3.4', '馆务管理：对读者、图书的借阅进行管理，对图书的流通、读者借阅信息、图书借阅信息、图书借阅排行榜、馆藏明细、读者借阅排行榜、中央库资源、图书异常信息、学科类目、图书经费等数据进行统计打印，以及进行数据的备份、还原。', '4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(225) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(225) NOT NULL,
  `u_password` varchar(225) NOT NULL,
  `u_school` varchar(225) NOT NULL,
  `u_tel` varchar(225) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '付康', '12345', '15级江汉大学文理学校', '17363312985');

-- ----------------------------
-- Table structure for `userproject`
-- ----------------------------
DROP TABLE IF EXISTS `userproject`;
CREATE TABLE `userproject` (
  `u_id` int(225) NOT NULL AUTO_INCREMENT,
  `p_id` int(225) NOT NULL,
  `start` int(225) NOT NULL,
  PRIMARY KEY (`u_id`,`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userproject
-- ----------------------------
