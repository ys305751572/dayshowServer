/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.11 : Database - dayshow
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dayshow` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dayshow`;

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL DEFAULT '' COMMENT '后台账号',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '后台密码',
  `mobile` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '管理员姓名',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`id`,`user_name`,`password`,`mobile`,`name`,`create_date`,`update_date`) values (1,'admin','AEC60231D83FE6CF81444BC536596887','18120574075','BOSS',NULL,1459823162425);
insert  into `tb_admin`(`id`,`user_name`,`password`,`mobile`,`name`,`create_date`,`update_date`) values (6,'qwer','AEC60231D83FE6CF81444BC536596887','18120574075','123',1459825290593,NULL);

/*Table structure for table `tb_common` */

DROP TABLE IF EXISTS `tb_common`;

CREATE TABLE `tb_common` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `register_agreement` varchar(3000) DEFAULT '' COMMENT '注册协议',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_common` */

/*Table structure for table `tb_help` */

DROP TABLE IF EXISTS `tb_help`;

CREATE TABLE `tb_help` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) DEFAULT '',
  `type` int(2) DEFAULT '0' COMMENT '类型:0.注册协议 1.关于软件 2.帮助 3.测试帮助',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_help` */

insert  into `tb_help`(`id`,`content`,`type`,`create_date`,`update_date`) values (5,'注册协议',0,NULL,NULL);
insert  into `tb_help`(`id`,`content`,`type`,`create_date`,`update_date`) values (6,'关于软件',1,NULL,NULL);
insert  into `tb_help`(`id`,`content`,`type`,`create_date`,`update_date`) values (7,'帮助',2,NULL,NULL);
insert  into `tb_help`(`id`,`content`,`type`,`create_date`,`update_date`) values (8,'&ltp&gt测试帮助&lt/p&gt',3,NULL,1459148643239);

/*Table structure for table `tb_image` */

DROP TABLE IF EXISTS `tb_image`;

CREATE TABLE `tb_image` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `path` varchar(500) DEFAULT NULL,
  `thumbs` varchar(500) DEFAULT NULL,
  `attribute` varchar(500) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tb_image` */

insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (1,'images/2016/4/1460012179203.jpg','{\"480x800\":\"images/2016/4/1460012179203_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 14:56:19');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (2,'images/2016/4/1460012411848.jpg','{\"480x800\":\"images/2016/4/1460012411848_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 15:00:12');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (3,'images/2016/4/1460012899294.jpg','{\"480x800\":\"images/2016/4/1460012899294_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 15:08:20');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (4,'images/2016/4/1460013095375.jpg','{\"480x800\":\"images/2016/4/1460013095375_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 15:11:36');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (5,'images/2016/4/1460019383203.jpg','{\"480x800\":\"images/2016/4/1460019383203_480x800.jpg\"}','{\"width\":960,\"height\":540}','2016-04-07 16:56:24');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (6,'images/2016/4/1460021035610.jpg','{\"480x800\":\"images/2016/4/1460021035610_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 17:23:56');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (7,'images/2016/4/1460021322611.jpg','{\"480x800\":\"images/2016/4/1460021322611_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 17:28:43');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (8,'images/2016/4/1460021407669.jpg','{\"480x800\":\"images/2016/4/1460021407669_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 17:30:08');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (9,'images/2016/4/1460022638821.jpg','{\"480x800\":\"images/2016/4/1460022638821_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-07 17:50:39');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (10,'images/2016/4/1460022646448.jpg','{\"480x800\":\"images/2016/4/1460022646448_480x800.jpg\"}','{\"height\":207,\"width\":152}','2016-04-07 17:50:47');
insert  into `tb_image`(`id`,`path`,`thumbs`,`attribute`,`create_date`) values (11,'images/2016/4/1460078457039.jpg','{\"480x800\":\"images/2016/4/1460078457039_480x800.jpg\"}','{\"height\":612,\"width\":816}','2016-04-08 09:20:57');

/*Table structure for table `tb_level_medal` */

DROP TABLE IF EXISTS `tb_level_medal`;

CREATE TABLE `tb_level_medal` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) DEFAULT '' COMMENT '编号',
  `level` int(2) DEFAULT '0' COMMENT '等级：1：等级一，2：等级二，3：等级三',
  `icon` varchar(200) DEFAULT '' COMMENT '勋章图标',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_level_medal` */

insert  into `tb_level_medal`(`id`,`number`,`level`,`icon`,`create_date`,`update_date`) values (5,'01',1,'',NULL,NULL);
insert  into `tb_level_medal`(`id`,`number`,`level`,`icon`,`create_date`,`update_date`) values (6,'02',2,'',NULL,NULL);
insert  into `tb_level_medal`(`id`,`number`,`level`,`icon`,`create_date`,`update_date`) values (7,'03',3,'images/2016/4/1460009748545.jpg',NULL,1460009748551);

/*Table structure for table `tb_measure` */

DROP TABLE IF EXISTS `tb_measure`;

CREATE TABLE `tb_measure` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(32) NOT NULL COMMENT '用户ID',
  `part` int(2) DEFAULT '0' COMMENT '测量部位:0.颈部,1.手部,2:脸部',
  `measure_moisture` double DEFAULT '0' COMMENT '水分值',
  `measure_grease` double DEFAULT '0' COMMENT '油脂',
  `address` varchar(50) DEFAULT '' COMMENT '测量城市',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

/*Data for the table `tb_measure` */

insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (5,3,0,20,16,'武汉',1457408948282,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (6,3,0,19,15,'武汉',1457408997765,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (7,3,2,21,16,'武汉',1457409047467,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (8,3,0,17,14,'武汉',1457502197031,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (9,3,0,20,16,'武汉',1457502403475,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (10,3,2,16,13,'武汉',1457502671102,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (11,3,1,22,18,'武汉',1457502730545,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (12,3,1,21,17,'武汉',1457502741250,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (13,3,0,29,23,'武汉',1457580423658,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (14,3,0,29,23,'武汉',1457580503126,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (15,3,0,17,14,'武汉',1457580581974,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (16,3,0,24,19,'武汉',1457594373112,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (25,3,0,26,20,'武汉',1457933764353,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (26,3,0,25,20,'武汉',1457933907195,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (27,3,0,25,20,'武汉',1457933926511,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (28,3,0,24,19,'武汉',1457933939715,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (35,3,0,20,16,'武汉',1458874845167,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (36,3,0,25,20,'武汉',1458874870486,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (37,3,0,24,19,'武汉',1458874882810,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (38,3,0,23,19,'武汉',1458874922964,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (41,3,0,23,18,'武汉',1458875058758,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (42,3,0,19,15,'武汉',1458875253589,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (43,3,0,18,15,'武汉',1458875358897,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (45,3,0,24,19,'武汉',1458875672716,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (46,3,0,20,16,'武汉',1458875784253,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (47,3,0,22,18,'武汉',1458875784380,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (48,3,0,21,16,'武汉',1458875793440,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (75,3,1,21,17,'武汉',1459491839030,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (76,3,0,23,18,'武汉',1459491887320,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (78,3,0,21,17,'武汉',1459494132065,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (79,10,0,22,17,'武汉',1459839760760,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (80,10,1,24,19,'武汉',1459839837258,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (81,10,2,23,18,'武汉',1459839854657,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (82,10,1,25,20,'武汉',1459840842378,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (83,10,1,25,20,'武汉',1459841582512,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (84,10,0,24,19,'武汉',1459844822664,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (85,3,1,24,19,'武汉',1459844875640,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (86,9,0,24,19,'武汉',1459927564688,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (87,9,0,20,16,'武汉',1459930986516,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (88,9,1,22,17,'武汉',1459999618674,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (89,12,2,19,15,'武汉',1460083118374,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (90,12,0,27,21,'武汉',1460083338526,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (91,12,1,21,17,'武汉',1460083396697,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (92,12,0,35,28,'武汉',1460083408698,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (93,12,0,24,19,'武汉',1460083545901,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (94,12,0,22,17,'武汉',1460083603102,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (95,12,0,32,26,'武汉',1460084761915,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (96,12,0,27,21,'武汉',1460085194227,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (97,12,0,26,20,'武汉',1460085599683,NULL);
insert  into `tb_measure`(`id`,`user_id`,`part`,`measure_moisture`,`measure_grease`,`address`,`create_date`,`update_date`) values (98,9,0,25,20,'武汉',1460088506265,NULL);

/*Table structure for table `tb_measure_config` */

DROP TABLE IF EXISTS `tb_measure_config`;

CREATE TABLE `tb_measure_config` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `part` int(2) DEFAULT '0' COMMENT '部位:0.颈部,1.手部,2:脸部',
  `level` int(2) DEFAULT '0' COMMENT '等级 0:一级',
  `moisture_up` double DEFAULT '0' COMMENT '正常水分范围，上限',
  `moisture_down` double DEFAULT '0' COMMENT '正常水分范围，下限',
  `grease_up` double DEFAULT '0' COMMENT '正常油脂范围，上限',
  `grease_down` double DEFAULT '0' COMMENT '正常油脂范围，下限',
  `type_desc` varchar(100) DEFAULT '' COMMENT '类型描述',
  `type_x` int(2) DEFAULT '0' COMMENT '0.小于,1.等于,2.大于',
  `type_y` int(2) DEFAULT '0' COMMENT '0.小于,1.等于,2.大于',
  `skin_type` int(2) DEFAULT '0' COMMENT '肤质:0.敏感性,1.中性,2.油性,3.干性,4.混合性',
  `result` varchar(500) DEFAULT '' COMMENT '结果建议',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

/*Data for the table `tb_measure_config` */

insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (5,0,0,23,22,55,45,'',NULL,NULL,2,'456',NULL,1459332864137);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (6,1,0,34,23,28,15,'',NULL,NULL,3,'4566',NULL,1459317859186);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (7,2,0,65,35,28,15,'',NULL,NULL,1,'6556541',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (8,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。222',NULL,1459393943550);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (9,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (10,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (11,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (12,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (13,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。sgsdgd',NULL,1460106791261);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (14,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。5555',NULL,1459403248389);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (15,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (16,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (17,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (18,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (19,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (20,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (21,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。34343434',NULL,1459994114806);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (22,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (23,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (24,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (25,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (26,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (27,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (28,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (29,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (30,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (31,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (32,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (33,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (34,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (35,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (36,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (37,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (38,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。2222',NULL,1459403243788);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (39,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (40,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (41,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (42,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (43,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (44,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (45,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (46,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (47,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (48,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',0,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (49,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',0,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (50,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (51,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',0,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (52,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',0,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (53,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (54,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (55,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (56,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。fdsafsdfa',NULL,1460106795972);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (57,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (58,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (59,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (60,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (61,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (62,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。234344',NULL,1460106801052);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (63,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (64,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (65,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (66,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (67,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (68,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (69,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (70,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (71,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (72,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (73,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (74,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (75,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (76,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (77,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (78,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (79,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (80,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (81,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (82,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (83,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (84,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (85,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (86,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (87,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (88,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (89,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (90,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (91,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (92,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (93,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',1,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (94,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',1,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (95,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (96,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',1,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (97,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',1,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (98,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (99,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (100,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (101,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (102,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (103,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (104,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (105,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。asfsfsdaf',NULL,1460106806107);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (106,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (107,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (108,0,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (109,0,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (110,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (111,0,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (112,0,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (113,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。6789',NULL,1460106782447);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (114,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (115,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (116,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (117,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (118,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (119,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (120,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (121,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (122,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (123,1,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (124,1,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (125,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (126,1,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (127,1,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (128,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,0,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (129,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,0,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (130,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,0,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (131,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,0,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (132,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,0,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (133,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,1,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (134,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,1,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (135,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,1,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (136,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,1,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (137,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,1,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (138,2,1,NULL,NULL,NULL,NULL,'敏感性肌肤肤质状况描述',2,2,0,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (139,2,1,NULL,NULL,NULL,NULL,'中性肌肤肤质状况描述',2,2,1,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (140,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,2,2,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (141,2,1,NULL,NULL,NULL,NULL,'干性肌肤肤质状况描述',2,2,3,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);
insert  into `tb_measure_config`(`id`,`part`,`level`,`moisture_up`,`moisture_down`,`grease_up`,`grease_down`,`type_desc`,`type_x`,`type_y`,`skin_type`,`result`,`create_date`,`update_date`) values (142,2,1,NULL,NULL,NULL,NULL,'混合性肌肤肤质状况描述',2,2,4,'你的肌肤水分含量不足，本身就是油性肌肤，需要好好补水，稳定的作息时间。',NULL,NULL);

/*Table structure for table `tb_oauth` */

DROP TABLE IF EXISTS `tb_oauth`;

CREATE TABLE `tb_oauth` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(100) NOT NULL COMMENT '第三方登录凭证',
  `user_id` int(32) DEFAULT NULL COMMENT '用户ID',
  `platform` varchar(50) DEFAULT '' COMMENT 'WEIXIN:微信,WEIBO:微博',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `tb_oauth` */

insert  into `tb_oauth`(`id`,`open_id`,`user_id`,`platform`,`create_date`,`update_date`) values (21,'3268461334',NULL,'WEIBO',NULL,NULL);
insert  into `tb_oauth`(`id`,`open_id`,`user_id`,`platform`,`create_date`,`update_date`) values (25,'oU5TlwHpZLZEd89_VvCZOrskWUrM',3,'WEIXIN',NULL,NULL);
insert  into `tb_oauth`(`id`,`open_id`,`user_id`,`platform`,`create_date`,`update_date`) values (27,'1787557561',9,'WEIBO',NULL,NULL);
insert  into `tb_oauth`(`id`,`open_id`,`user_id`,`platform`,`create_date`,`update_date`) values (30,'oU5TlwON9A4z140yx4kU0nMNBMHI',NULL,'WEIXIN',NULL,NULL);

/*Table structure for table `tb_record` */

DROP TABLE IF EXISTS `tb_record`;

CREATE TABLE `tb_record` (
  `ID` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(32) NOT NULL COMMENT '发布用户ID',
  `contact` varchar(50) DEFAULT '' COMMENT '联系方式',
  `content` varchar(50) DEFAULT '' COMMENT '反馈内容',
  `is_list` int(2) DEFAULT '0' COMMENT '状态',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_record` */

insert  into `tb_record`(`ID`,`user_id`,`contact`,`content`,`is_list`,`create_date`,`update_date`) values (1,0,'15623756692','We',0,1457432409318,NULL);
insert  into `tb_record`(`ID`,`user_id`,`contact`,`content`,`is_list`,`create_date`,`update_date`) values (2,0,'13036166602','Headband',0,1457927813665,NULL);
insert  into `tb_record`(`ID`,`user_id`,`contact`,`content`,`is_list`,`create_date`,`update_date`) values (3,0,'13026166602','这',0,1458876049159,NULL);
insert  into `tb_record`(`ID`,`user_id`,`contact`,`content`,`is_list`,`create_date`,`update_date`) values (4,0,'13688522552','好恶魔刘阳',0,1460088298596,NULL);

/*Table structure for table `tb_share` */

DROP TABLE IF EXISTS `tb_share`;

CREATE TABLE `tb_share` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) DEFAULT '' COMMENT '编号',
  `content` varchar(2000) DEFAULT '' COMMENT '内容',
  `name` varchar(20) DEFAULT '' COMMENT '模板名称',
  `level` int(2) DEFAULT '0' COMMENT '等级:0:所有用户，1:一级及以上用户，2:二级及以上用户，3:三级及以上用户',
  `cover_image_id` bigint(32) DEFAULT NULL,
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tb_share` */

insert  into `tb_share`(`id`,`number`,`content`,`name`,`level`,`cover_image_id`,`create_date`,`update_date`) values (1,'1','','模板1',0,NULL,NULL,NULL);
insert  into `tb_share`(`id`,`number`,`content`,`name`,`level`,`cover_image_id`,`create_date`,`update_date`) values (2,'2','&ltp&gtsfasfsafs&ltem&gtadfasdfsfas&lt/em&gtfsafsadfasdfsfa&ltspan style=\"border: 1px solid rgb(0, 0, 0);\"&gtsfsafsadfasdfsf&lt/span&gtasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsaf&ltstrong&gtsadfasdfsfasfsaf&lt/strong&gtsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasf&ltspan style=\"text-decoration: underline;\"&gtsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasfsafsadfasdfsfasf&lt/span&gtsafsadfasdfs&ltspan style=\"color: rgb(147, 137, 83);\"&gtfasfsafsadfasdfsfa&lt/span&gtsfsafsad&ltspan style=\"color: rgb(151, 72, 6);\"&gtfasdfsfasfsafsa&lt/span&gtdfasdfsfasfsafsadfasdfsfasfsafsadfasdf&lt/p&gt','模板2',0,NULL,NULL,1459498772099);
insert  into `tb_share`(`id`,`number`,`content`,`name`,`level`,`cover_image_id`,`create_date`,`update_date`) values (3,'3','','模板3',2,NULL,NULL,NULL);
insert  into `tb_share`(`id`,`number`,`content`,`name`,`level`,`cover_image_id`,`create_date`,`update_date`) values (4,'4','','模板4',3,NULL,NULL,NULL);
insert  into `tb_share`(`id`,`number`,`content`,`name`,`level`,`cover_image_id`,`create_date`,`update_date`) values (10,'11','&ltp&gt&nbsp;fasfsadf../safasafsdfsafs&ltimg src=\"../files/upload/images/ueditor/20160408/1460078464209082072.jpg\" title=\"1460078464209082072.jpg\" alt=\"1.jpg\"/&gt&lt/p&gt','11',3,11,1460013254865,1460092912822);

/*Table structure for table `tb_share_image` */

DROP TABLE IF EXISTS `tb_share_image`;

CREATE TABLE `tb_share_image` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `share_id` bigint(32) DEFAULT NULL,
  `image_id` bigint(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_share_image` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `ID` bigint(32) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `weixin` varchar(50) DEFAULT NULL COMMENT '微信账号',
  `weibo` varchar(50) DEFAULT NULL COMMENT '微博账号',
  `nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `avater` varchar(200) DEFAULT '' COMMENT '头像',
  `gender` int(11) DEFAULT '1' COMMENT '性别:1.男 2.女',
  `height` double DEFAULT '0' COMMENT '身高',
  `weight` double DEFAULT '0' COMMENT '体重',
  `year` int(11) DEFAULT '0' COMMENT '出身年份',
  `skin` int(11) DEFAULT '0' COMMENT '肤质:0.敏感性,1.中性,2.油性,3.干性,4.混合性',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_date` bigint(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`ID`,`mobile`,`password`,`weixin`,`weibo`,`nickname`,`avater`,`gender`,`height`,`weight`,`year`,`skin`,`create_date`,`update_date`) values (3,'13036166602','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'Jacky','images/2016/4/1460082806274.jpg',1,170,50,2004,10,1457403987194,1460010612537);
insert  into `tb_user`(`ID`,`mobile`,`password`,`weixin`,`weibo`,`nickname`,`avater`,`gender`,`height`,`weight`,`year`,`skin`,`create_date`,`update_date`) values (9,'15972129886','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'234','images/2016/4/1460083498122.jpg',2,170,50,1990,20,1459835045565,1460014853051);
insert  into `tb_user`(`ID`,`mobile`,`password`,`weixin`,`weibo`,`nickname`,`avater`,`gender`,`height`,`weight`,`year`,`skin`,`create_date`,`update_date`) values (10,'13006140281','123456',NULL,NULL,'','',2,170,50,1990,20,1459835273652,1459835273652);
insert  into `tb_user`(`ID`,`mobile`,`password`,`weixin`,`weibo`,`nickname`,`avater`,`gender`,`height`,`weight`,`year`,`skin`,`create_date`,`update_date`) values (11,'13476107753','',NULL,NULL,'testname',NULL,1,0,0,0,0,1459927756416,1459927756416);
insert  into `tb_user`(`ID`,`mobile`,`password`,`weixin`,`weibo`,`nickname`,`avater`,`gender`,`height`,`weight`,`year`,`skin`,`create_date`,`update_date`) values (12,'18062967266','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'小刘','images/2016/4/1460083020700.jpg',1,170,50,1990,20,1460082969809,1460083004322);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
