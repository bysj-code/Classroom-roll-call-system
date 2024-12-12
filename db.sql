/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ketangdianmingxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ketangdianmingxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ketangdianmingxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/ketangdianmingxitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/ketangdianmingxitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/ketangdianmingxitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2022-04-28 09:12:27'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2022-04-28 09:12:27'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2022-04-28 09:12:27'),(4,'banji_types','班级',1,'班级1',NULL,NULL,'2022-04-28 09:12:27'),(5,'banji_types','班级',2,'班级2',NULL,NULL,'2022-04-28 09:12:27'),(6,'banji_types','班级',3,'班级3',NULL,NULL,'2022-04-28 09:12:27'),(7,'kechengkaoqin_types','考勤状态',1,'未考勤',NULL,NULL,'2022-04-28 09:12:28'),(8,'kechengkaoqin_types','考勤状态',2,'已考勤',NULL,NULL,'2022-04-28 09:12:28'),(9,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-28 09:12:28'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-28 09:12:28'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-28 09:12:28'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-28 09:12:28'),(13,'sex_types','性别',1,'男',NULL,NULL,'2022-04-28 09:12:28'),(14,'sex_types','性别',2,'女',NULL,NULL,'2022-04-28 09:12:28'),(15,'xueyuan_types','专业',1,'专业1',NULL,NULL,'2022-04-28 09:12:28'),(16,'xueyuan_types','专业',2,'专业2',NULL,NULL,'2022-04-28 09:12:28'),(17,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-28 09:12:28'),(18,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-28 09:12:28');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`jiaoshi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,1,NULL,'发布内容1',NULL,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','2022-04-28 09:14:54'),(2,'帖子标题2',NULL,3,NULL,'发布内容2',NULL,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','2022-04-28 09:14:54'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',NULL,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','2022-04-28 09:14:54'),(4,'帖子标题4',NULL,3,NULL,'发布内容4',NULL,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','2022-04-28 09:14:54'),(5,'帖子标题5',NULL,2,NULL,'发布内容5',NULL,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','2022-04-28 09:14:54'),(6,NULL,1,NULL,NULL,'教师评论12',5,2,'2022-04-28 10:36:20',NULL,'2022-04-28 10:36:20'),(7,NULL,NULL,NULL,1,'管理评论212',5,2,'2022-04-28 10:39:58',NULL,'2022-04-28 10:39:58'),(8,NULL,NULL,1,NULL,'用户评论2',5,2,'2022-04-28 10:41:54',NULL,'2022-04-28 10:41:54');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','教师姓名1','http://localhost:8080/ketangdianmingxitong/upload/jiaoshi1.jpg',2,'17703786901','1@qq.com',261,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(2,'a2','123456','教师姓名2','http://localhost:8080/ketangdianmingxitong/upload/jiaoshi2.jpg',2,'17703786902','2@qq.com',7,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(3,'a3','123456','教师姓名3','http://localhost:8080/ketangdianmingxitong/upload/jiaoshi3.jpg',2,'17703786903','3@qq.com',478,'2022-04-28 09:14:54','2022-04-28 09:14:54');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号  Search111 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '课程开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '课程结束时间',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `kecheng_content` text COMMENT '课程详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_types`,`banji_types`,`jiaoshi_id`,`kaishi_time`,`jieshu_time`,`kecheng_photo`,`kecheng_content`,`insert_time`,`create_time`) values (1,'165110849426948','课程名称1',3,1,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','http://localhost:8080/ketangdianmingxitong/upload/kecheng1.jpg','课程详情1','2022-04-28 09:14:54','2022-04-28 09:14:54'),(2,'165110849426954','课程名称2',1,2,2,'2022-04-28 09:14:54','2022-04-28 09:14:54','http://localhost:8080/ketangdianmingxitong/upload/kecheng2.jpg','课程详情2','2022-04-28 09:14:54','2022-04-28 09:14:54'),(3,'16511084942702','课程名称3',1,3,3,'2022-04-28 09:14:54','2022-04-28 09:14:54','http://localhost:8080/ketangdianmingxitong/upload/kecheng3.jpg','课程详情3','2022-04-28 09:14:54','2022-04-28 09:14:54'),(4,'165110849427085','课程名称4',1,2,2,'2022-04-28 09:14:54','2022-04-28 09:14:54','http://localhost:8080/ketangdianmingxitong/upload/kecheng4.jpg','课程详情4','2022-04-28 09:14:54','2022-04-28 09:14:54'),(5,'165110849427065','课程名称5',2,3,1,'2022-04-28 09:14:54','2022-04-28 09:14:54','http://localhost:8080/ketangdianmingxitong/upload/kecheng5.jpg','课程详情5','2022-04-28 09:14:54','2022-04-28 09:14:54'),(6,'1651113260611','课程名称6',3,1,1,'2022-04-29 10:00:00','2022-04-29 11:50:00','http://localhost:8080/ketangdianmingxitong/upload/1651113311630.webp','<p><span style=\"color: rgb(96, 98, 102);\">课程详情6</span></p>','2022-04-28 10:35:16','2022-04-28 10:35:16'),(7,'1651113416633','课程名称7',3,1,1,'2022-04-29 00:00:00','2022-04-29 00:00:00','http://localhost:8080/ketangdianmingxitong/upload/1651113559974.webp','<p><span style=\"color: rgb(96, 98, 102);\">课程详情7</span></p>','2022-04-28 10:39:25','2022-04-28 10:39:25');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(2,2,3,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(3,3,2,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(4,4,2,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(5,5,1,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(6,7,1,1,'2022-04-28 10:40:55','2022-04-28 10:40:55');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-28 09:14:54','回复信息1','2022-04-28 09:14:54','2022-04-28 09:14:54'),(2,2,1,'留言内容2','2022-04-28 09:14:54','回复信息2','2022-04-28 09:14:54','2022-04-28 09:14:54'),(3,3,3,'留言内容3','2022-04-28 09:14:54','回复信息3','2022-04-28 09:14:54','2022-04-28 09:14:54'),(4,4,3,'留言内容4','2022-04-28 09:14:54','回复信息4','2022-04-28 09:14:54','2022-04-28 09:14:54'),(5,5,3,'留言内容5','2022-04-28 09:14:54','回复信息5','2022-04-28 09:14:54','2022-04-28 09:14:54'),(6,7,1,'留言内容2\n教师后台可以回复2','2022-04-28 10:41:13','',NULL,'2022-04-28 10:41:13'),(7,7,1,'留言内容2\n教师后台可以回复2','2022-04-28 10:41:13','',NULL,'2022-04-28 10:41:13');

/*Table structure for table `kechengkaoqin` */

DROP TABLE IF EXISTS `kechengkaoqin`;

CREATE TABLE `kechengkaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kechengkaoqin_types` int(11) DEFAULT NULL COMMENT '考勤状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '考勤时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='课程考勤';

/*Data for the table `kechengkaoqin` */

insert  into `kechengkaoqin`(`id`,`kecheng_id`,`yonghu_id`,`kechengkaoqin_types`,`insert_time`,`update_time`,`create_time`) values (1,1,1,2,'2022-04-28 09:14:54','2022-04-28 10:24:56','2022-04-28 09:14:54'),(2,1,2,1,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(3,1,3,1,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(6,2,1,2,'2022-04-28 09:14:54','2022-04-28 10:28:45','2022-04-28 09:14:54'),(7,2,2,1,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(8,2,3,1,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(9,3,1,2,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(10,4,2,2,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(11,5,3,1,'2022-04-28 09:14:54',NULL,'2022-04-28 09:14:54'),(12,6,1,2,'2022-04-28 10:35:17','2022-04-28 10:41:26','2022-04-28 10:35:17'),(13,6,2,1,'2022-04-28 10:35:17',NULL,'2022-04-28 10:35:17'),(14,6,3,1,'2022-04-28 10:35:17',NULL,'2022-04-28 10:35:17'),(15,7,1,2,'2022-04-28 10:39:25','2022-04-28 10:41:19','2022-04-28 10:39:25'),(16,7,2,1,'2022-04-28 10:39:25',NULL,'2022-04-28 10:39:25'),(17,7,3,1,'2022-04-28 10:39:25',NULL,'2022-04-28 10:39:25');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/ketangdianmingxitong/upload/news1.jpg','2022-04-28 09:14:54','公告详情1','2022-04-28 09:14:54'),(2,'公告标题2',2,'http://localhost:8080/ketangdianmingxitong/upload/news2.jpg','2022-04-28 09:14:54','公告详情2','2022-04-28 09:14:54'),(3,'公告标题3',3,'http://localhost:8080/ketangdianmingxitong/upload/news3.jpg','2022-04-28 09:14:54','公告详情3','2022-04-28 09:14:54'),(4,'公告标题4',2,'http://localhost:8080/ketangdianmingxitong/upload/news4.jpg','2022-04-28 09:14:54','公告详情4','2022-04-28 09:14:54'),(5,'公告标题5',3,'http://localhost:8080/ketangdianmingxitong/upload/news5.jpg','2022-04-28 09:14:54','公告详情5','2022-04-28 09:14:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','v507wa7r3s17bb22xbht18f1yciv6o1n','2022-04-28 09:36:42','2022-04-28 11:44:33'),(2,1,'a1','yonghu','用户','vcb8s0mbi2o5ppomzjrju25szasny80z','2022-04-28 10:13:09','2022-04-28 11:40:46'),(3,1,'a1','jiaoshi','教师','ccmf7u7gv7o2ub6cvp804a598ayislik','2022-04-28 10:36:08','2022-04-28 11:36:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `xueyuan_types` int(11) DEFAULT NULL COMMENT '专业 Search111',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`banji_types`,`xueyuan_types`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/ketangdianmingxitong/upload/yonghu1.jpg',1,'17703786901','1@qq.com',1,1,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(2,'a2','123456','用户姓名2','http://localhost:8080/ketangdianmingxitong/upload/yonghu2.jpg',2,'17703786902','2@qq.com',1,2,1,'2022-04-28 09:14:54','2022-04-28 09:14:54'),(3,'a3','123456','用户姓名3','http://localhost:8080/ketangdianmingxitong/upload/yonghu3.jpg',2,'17703786903','3@qq.com',1,1,1,'2022-04-28 09:14:54','2022-04-28 09:14:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
