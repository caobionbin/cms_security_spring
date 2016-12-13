/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.15 : Database - uracsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`uracsdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `uracsdb`;

/*Table structure for table `s_user` */

DROP TABLE IF EXISTS `s_user`;

CREATE TABLE `s_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `s_user` */

insert  into `s_user`(`id`,`username`,`password`) values (1,'limingxing0','limx0'),(2,'limingxing1','limx1'),(3,'limingxing2','limx2'),(4,'limingxing3','limx3'),(5,'limingxing4','limx4'),(6,'limingxing5','limx5'),(7,'limingxing6','limx6'),(8,'limingxing7','limx7'),(9,'limingxing8','limx8'),(10,'limingxing9','limx9'),(11,'limingxing10','limx10'),(12,'limingxing11','limx11'),(13,'limingxing12','limx12'),(14,'limingxing13','limx13'),(15,'limingxing14','limx14'),(16,'limingxing15','limx15'),(17,'limingxing16','limx16'),(18,'limingxing17','limx17'),(19,'limingxing18','limx18'),(20,'limingxing19','limx19'),(21,'limingxing20','limx20'),(22,'limingxing21','limx21'),(23,'limingxing22','limx22'),(24,'limingxing23','limx23'),(25,'limingxing24','limx24'),(26,'limingxing25','limx25'),(27,'limingxing26','limx26'),(28,'limingxing27','limx27'),(29,'limingxing28','limx28'),(30,'limingxing29','limx29'),(31,'limingxing30','limx30'),(32,'limingxing31','limx31'),(33,'limingxing32','limx32'),(34,'limingxing33','limx33'),(35,'limingxing34','limx34'),(36,'limingxing35','limx35'),(37,'limingxing36','limx36'),(38,'limingxing37','limx37'),(39,'limingxing38','limx38'),(40,'limingxing39','limx39'),(41,'limingxing40','limx40'),(42,'limingxing41','limx41'),(43,'limingxing42','limx42'),(44,'limingxing43','limx43'),(45,'limingxing44','limx44'),(46,'limingxing45','limx45'),(47,'limingxing46','limx46'),(48,'limingxing47','limx47'),(49,'limingxing48','limx48'),(50,'limingxing49','limx49'),(51,'limingxing50','limx50'),(52,'limingxing51','limx51'),(53,'limingxing52','limx52'),(54,'limingxing53','limx53'),(55,'limingxing54','limx54'),(56,'limingxing55','limx55'),(57,'limingxing56','limx56'),(58,'limingxing57','limx57'),(59,'limingxing58','limx58'),(60,'limingxing59','limx59'),(61,'limingxing60','limx60'),(62,'limingxing61','limx61'),(63,'limingxing62','limx62'),(64,'limingxing63','limx63'),(65,'limingxing64','limx64'),(66,'limingxing65','limx65'),(67,'limingxing66','limx66'),(68,'limingxing67','limx67'),(69,'limingxing68','limx68'),(70,'limingxing69','limx69'),(71,'limingxing70','limx70'),(72,'limingxing71','limx71'),(73,'limingxing72','limx72'),(74,'limingxing73','limx73'),(75,'limingxing74','limx74'),(76,'limingxing75','limx75'),(77,'limingxing76','limx76'),(78,'limingxing77','limx77'),(79,'limingxing78','limx78'),(80,'limingxing79','limx79'),(81,'limingxing80','limx80'),(82,'limingxing81','limx81'),(83,'limingxing82','limx82'),(84,'limingxing83','limx83'),(85,'limingxing84','limx84'),(86,'limingxing85','limx85'),(87,'limingxing86','limx86'),(88,'limingxing87','limx87'),(89,'limingxing88','limx88'),(90,'limingxing89','limx89'),(91,'limingxing90','limx90'),(92,'limingxing91','limx91'),(93,'limingxing92','limx92'),(94,'limingxing93','limx93'),(95,'limingxing94','limx94'),(96,'limingxing95','limx95'),(97,'limingxing96','limx96'),(98,'limingxing97','limx97'),(99,'limingxing98','limx98'),(100,'limingxing99','limx99');

/*Table structure for table `sys_function` */

DROP TABLE IF EXISTS `sys_function`;

CREATE TABLE `sys_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '父ID',
  `function_name` varchar(100) NOT NULL COMMENT '功能名称',
  `display` int(1) NOT NULL DEFAULT '1' COMMENT '是否显示到菜单栏',
  `state` int(1) NOT NULL COMMENT '是否启用，0=不启用，1=启用',
  `icon` varchar(50) DEFAULT NULL COMMENT 'icon',
  `action` varchar(255) NOT NULL COMMENT '请求路径',
  `function_desc` int(3) NOT NULL,
  `insert_time` date DEFAULT NULL COMMENT '插入时间',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `sys_function` */

insert  into `sys_function`(`id`,`parent_id`,`function_name`,`display`,`state`,`icon`,`action`,`function_desc`,`insert_time`,`update_time`) values (1,0,'主页',1,1,'li1','/menu.jsp',8,'2015-11-22','2016-12-06'),(2,0,'用户',1,1,'li1','/user/findindex.do',4,'2015-11-24','2015-12-14'),(3,2,'表单',1,1,'li1','/user/form.do',5,'2015-12-04','2015-12-14'),(4,2,'bootstraptree',1,1,'li1','/user/bootstraptreeview.do',6,'2015-12-04','2015-12-14'),(5,0,'用户管理',1,1,'li1','/user/findindex.do',1,'2015-12-04','2015-12-14'),(6,0,'角色管理',1,1,'li1','/role/role.do',2,'2015-12-11','2015-12-14'),(7,0,'模块管理',1,1,'li1','/function/module.do',3,'2015-12-13','2015-12-14'),(9,2,'test',1,1,'1','/test.do',7,'2015-12-13','2015-12-14'),(12,0,'yyyy',1,1,'4l','www.baidu.com',54,'2016-12-03','2016-12-03'),(13,5,'应用',1,1,'天天','77',0,'2016-12-07',NULL),(14,6,'高级',1,1,'额额','问问',0,'2016-12-07',NULL),(15,2,'55',1,1,'33','44',0,'2016-12-07',NULL);

/*Table structure for table `sys_function_role` */

DROP TABLE IF EXISTS `sys_function_role`;

CREATE TABLE `sys_function_role` (
  `function_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `function_id` (`function_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_function_role` */

insert  into `sys_function_role`(`function_id`,`role_id`) values (4,4),(9,4),(5,4),(6,4),(7,4),(2,4),(1,1),(3,1),(4,1),(5,1),(6,1),(7,1),(2,1),(1,5),(12,5),(3,3),(4,3),(6,3);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '父ID',
  `menu_name` varchar(100) NOT NULL COMMENT '功能名称',
  `display` int(1) NOT NULL DEFAULT '1' COMMENT '是否显示到菜单栏',
  `state` int(1) NOT NULL COMMENT '是否启用，0=不启用，1=启用',
  `icon` varchar(50) DEFAULT NULL COMMENT 'icon',
  `url` varchar(255) NOT NULL COMMENT '请求路径',
  `menu_desc` varchar(255) NOT NULL,
  `insert_time` date DEFAULT NULL COMMENT '插入时间',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`parent_id`,`menu_name`,`display`,`state`,`icon`,`url`,`menu_desc`,`insert_time`,`update_time`) values (1,0,'默认进入',0,1,NULL,'/menu.jsp','默认必须配置','2016-12-08',NULL),(2,0,'开始',1,1,NULL,'','','2016-12-08',NULL),(3,2,'分析',1,1,'images/Index/index_011.png','menu/analysis.do','开始-分析','2016-12-08',NULL),(4,2,'今日咨询',1,1,'images/Index/index_013.png','menu/consultation.do','开始-今日咨询','2016-12-09',NULL),(5,0,'前台咨询',1,1,NULL,'','','2016-12-09',NULL),(6,5,'新咨询',1,1,'images/Advice/advice_01.png','menu/newConsulation.do','前台咨询-新咨询','2016-12-09',NULL),(7,5,'咨询记录',1,1,'images/Advice/advice_02.png','menu/consultingRecords.do','前台咨询-咨询记录','2016-12-09',NULL),(8,0,'高级设置',1,1,NULL,'','','2016-12-09',NULL),(9,8,'账号设置',1,1,NULL,'user/list.do','高级设置-账号设置','2016-12-09',NULL),(10,8,'角色设置',1,1,NULL,'role/list.do','高级设置-角色设置','2016-12-09',NULL),(11,8,'菜单设置',1,1,NULL,'menu/list.do','高级设置-菜单设置','2016-12-09',NULL),(20,2,'今日报名',1,1,'images/Index/index_012.png','menu/registerToday.do','开始-今日报名','2016-12-09',NULL),(21,2,'今日试听',1,1,'images/Index/index_0020.png','menu/trylistener.do','开始-今日试听','2016-12-09',NULL);

/*Table structure for table `sys_menu_role` */

DROP TABLE IF EXISTS `sys_menu_role`;

CREATE TABLE `sys_menu_role` (
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_role` */

insert  into `sys_menu_role`(`menu_id`,`role_id`) values (1,1),(2,1),(3,1),(4,1),(5,1),(7,1),(8,1),(9,1),(10,1),(11,1),(20,1),(21,1);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `state` int(1) NOT NULL COMMENT '是否启用，0=不启用，1=启用',
  `insert_time` date DEFAULT NULL COMMENT '生成时间',
  `updat_time` date DEFAULT NULL COMMENT '更新时间',
  `description` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`role_name`,`state`,`insert_time`,`updat_time`,`description`) values (1,'admin',1,'2016-12-09',NULL,NULL),(3,'分校',1,NULL,NULL,NULL);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) NOT NULL COMMENT '登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `display_name` varchar(50) NOT NULL COMMENT '显示名称',
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '状态，0=冻结，1=正常',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '登陆IP',
  `bind_ip` varchar(100) DEFAULT NULL COMMENT '绑定IP',
  `ipband_flag` int(1) DEFAULT NULL COMMENT '是否绑定',
  `try_times` int(1) NOT NULL DEFAULT '3' COMMENT '登陆失败的尝试次数，超过次数后session有效期内禁止登陆',
  `last_logintime` date DEFAULT NULL COMMENT '最后登陆时间',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `contact_phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `uuid` varchar(4) DEFAULT NULL COMMENT '4位长度的UUID',
  `insert_time` date DEFAULT NULL COMMENT '插入时间',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`login_name`,`password`,`display_name`,`state`,`login_ip`,`bind_ip`,`ipband_flag`,`try_times`,`last_logintime`,`email`,`contact_phone`,`uuid`,`insert_time`,`update_time`) values (2,'天空','123456','天空',1,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (2,1);

/*Table structure for table `t_app_menu` */

DROP TABLE IF EXISTS `t_app_menu`;

CREATE TABLE `t_app_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '菜单名称',
  `parentId` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单ID',
  `menuCode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '编号',
  `menuUrl` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单URL',
  `urlTarget` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '页面打开位置',
  `navMenu` int(11) NOT NULL DEFAULT '0' COMMENT '0:不显示在导航菜单中,1:显示在导航菜单中',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `remark` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL,
  `lastUpdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_app_menu` */

insert  into `t_app_menu`(`id`,`menuName`,`parentId`,`menuCode`,`menuUrl`,`urlTarget`,`navMenu`,`sort`,`remark`,`createTime`,`lastUpdate`) values (1,'应用基本功能',0,NULL,NULL,NULL,1,0,NULL,'2013-03-28 00:00:00','2013-03-28 00:00:00'),(2,'用户中心首页',1,'main','/u/main',NULL,1,0,NULL,'2013-03-28 00:00:00','2013-03-28 00:00:00'),(3,'系统管理',0,NULL,NULL,NULL,1,0,NULL,'2013-03-28 00:00:00','2013-03-28 00:00:00'),(4,'用户管理',3,'main','/u/users',NULL,1,0,NULL,'2013-03-28 00:00:00','2013-03-28 00:00:00'),(5,'角色管理',3,'roles','/u/roles',NULL,1,0,NULL,'2013-03-28 00:00:00','2013-03-28 00:00:00'),(6,'资源管理',3,'menus','/u/menus',NULL,1,0,NULL,'2013-03-28 00:00:00','2013-03-31 22:02:15'),(7,'超级菜单',0,'eee','ee',NULL,1,0,NULL,'2016-12-02 16:21:07','2016-12-03 11:34:55'),(8,'超级儿子',7,'sun','/u/sun',NULL,1,0,NULL,'2016-12-02 16:26:09','2016-12-03 10:54:36'),(9,'应用3',1,'dff','/u/df',NULL,1,0,NULL,'2016-12-03 16:36:41','2016-12-03 16:36:57');

/*Table structure for table `t_app_role` */

DROP TABLE IF EXISTS `t_app_role`;

CREATE TABLE `t_app_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理角色标识',
  `roleName` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `createTime` datetime NOT NULL COMMENT '角色创建时间',
  `lastUpdate` datetime NOT NULL COMMENT '角色最近修改时间',
  `status` int(11) NOT NULL COMMENT '0:禁用,1:启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_app_role` */

insert  into `t_app_role`(`id`,`roleName`,`createTime`,`lastUpdate`,`status`) values (1,'系统管理员','2013-03-28 00:00:00','2013-04-01 13:30:53',1),(2,'普通用户','2013-03-28 00:00:00','2013-03-28 00:00:00',1),(3,'超级用户','2016-12-02 16:20:33','2016-12-02 16:20:33',1),(4,'着急','2016-12-03 16:37:18','2016-12-03 16:37:18',1);

/*Table structure for table `t_app_role_menu` */

DROP TABLE IF EXISTS `t_app_role_menu`;

CREATE TABLE `t_app_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL COMMENT '角色id',
  `menuId` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_app_role_menu` */

insert  into `t_app_role_menu`(`id`,`roleId`,`menuId`) values (8,1,2),(9,1,5),(10,1,3),(11,1,4),(12,1,6),(13,1,1),(65,3,7),(66,3,8),(79,4,4),(80,4,3),(81,4,5),(82,4,6),(83,2,5),(84,2,7),(85,2,2),(86,2,8),(87,2,6);

/*Table structure for table `t_app_user` */

DROP TABLE IF EXISTS `t_app_user`;

CREATE TABLE `t_app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `passWord` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` datetime NOT NULL,
  `lastUpdate` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0:禁用,1:启用',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_app_user` */

insert  into `t_app_user`(`id`,`userName`,`passWord`,`createTime`,`lastUpdate`,`status`) values (1,'admin','b444e82d17a54d53a9e623fa586bf23ad7087df5e6f44848d01150fb0d5d523ea07ed99abdd074fc','2013-03-28 00:00:00','2013-03-28 00:00:00',1),(2,'test','b444e82d17a54d53a9e623fa586bf23ad7087df5e6f44848d01150fb0d5d523ea07ed99abdd074fc','2013-03-28 00:00:00','2013-03-28 00:00:00',1),(3,'test1','b444e82d17a54d53a9e623fa586bf23ad7087df5e6f44848d01150fb0d5d523ea07ed99abdd074fc','2013-03-31 20:04:19','2013-03-31 20:17:26',1),(5,'test3','b444e82d17a54d53a9e623fa586bf23ad7087df5e6f44848d01150fb0d5d523ea07ed99abdd074fc','2013-03-31 20:07:01','2013-03-31 20:07:22',1),(6,'super','104d7c22b744676413e74e467fbc792b186418b9c9a3c5b41dbf8f11a58656c6440e50b72cc51a2e','2016-12-02 16:22:08','2016-12-02 16:22:08',1),(7,'test5','594ed339db1b1527ee3c27c8d899cdd7a3ae1d1f2f85742ea485bbb5d28d0bafd09ef1bd55bd5d66','2016-12-03 16:36:15','2016-12-03 16:36:15',1);

/*Table structure for table `t_app_user_role` */

DROP TABLE IF EXISTS `t_app_user_role`;

CREATE TABLE `t_app_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '用户id',
  `roleId` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_app_user_role` */

insert  into `t_app_user_role`(`id`,`userId`,`roleId`) values (12,1,1),(13,1,3),(14,1,2),(23,2,1),(24,2,2),(25,5,2),(26,5,1),(27,7,4),(28,6,3),(29,3,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
