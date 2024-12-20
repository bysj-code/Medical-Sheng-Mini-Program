-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django0d26l
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `django0d26l`
--

/*!40000 DROP DATABASE IF EXISTS `django0d26l`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django0d26l` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django0d26l`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930096704 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2023-03-16 01:20:48',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2023-03-16 01:20:48',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2023-03-16 01:20:48',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2023-03-16 01:20:48',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2023-03-16 01:20:48',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2023-03-16 01:20:48',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2023-03-16 01:20:48',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2023-03-16 01:20:48',18,'宇宙银河系地球1号','地某','13823888888','是'),(1678930096703,'2023-03-16 01:28:16',1678929930333,'XXX','张三','18156541454','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'qixiexinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930473017 DEFAULT CHARSET=utf8 COMMENT='商城客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2023-03-16 01:20:48',1,1,'提问1','回复1',1),(112,'2023-03-16 01:20:48',2,2,'提问2','回复2',2),(113,'2023-03-16 01:20:48',3,3,'提问3','回复3',3),(114,'2023-03-16 01:20:48',4,4,'提问4','回复4',4),(115,'2023-03-16 01:20:48',5,5,'提问5','回复5',5),(116,'2023-03-16 01:20:48',6,6,'提问6','回复6',6),(117,'2023-03-16 01:20:48',7,7,'提问7','回复7',7),(118,'2023-03-16 01:20:48',8,8,'提问8','回复8',8),(1678930138216,'2023-03-16 01:28:58',1678929930333,NULL,'联系商城客服',NULL,0),(1678930407189,'2023-03-16 01:33:27',1678929930333,1,NULL,'XXXXXX',0),(1678930473016,'2023-03-16 01:34:33',1678929930333,NULL,'111111111111111',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqixiexinxi`
--

DROP TABLE IF EXISTS `discussqixiexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqixiexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930488611 DEFAULT CHARSET=utf8 COMMENT='器械信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqixiexinxi`
--

LOCK TABLES `discussqixiexinxi` WRITE;
/*!40000 ALTER TABLE `discussqixiexinxi` DISABLE KEYS */;
INSERT INTO `discussqixiexinxi` VALUES (1678930488610,'2023-03-16 01:34:48',91,1678929930333,'upload/1678929929766.jpg','111','完成后可以评价','');
/*!40000 ALTER TABLE `discussqixiexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyaopinxinxi`
--

DROP TABLE IF EXISTS `discussyaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyaopinxinxi`
--

LOCK TABLES `discussyaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discussyaopinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussyaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyisheng`
--

DROP TABLE IF EXISTS `discussyisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930028723 DEFAULT CHARSET=utf8 COMMENT='医生评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyisheng`
--

LOCK TABLES `discussyisheng` WRITE;
/*!40000 ALTER TABLE `discussyisheng` DISABLE KEYS */;
INSERT INTO `discussyisheng` VALUES (1678930028722,'2023-03-16 01:27:08',21,1678929930333,'upload/1678929929766.jpg','111','111','');
/*!40000 ALTER TABLE `discussyisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930152133 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (121,'2023-03-16 01:20:48','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(122,'2023-03-16 01:20:48','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(123,'2023-03-16 01:20:48','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(124,'2023-03-16 01:20:48','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(125,'2023-03-16 01:20:48','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(126,'2023-03-16 01:20:48','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(127,'2023-03-16 01:20:48','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(128,'2023-03-16 01:20:48','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放'),(1678929952401,'2023-03-16 01:25:52',NULL,'<p>可以回复帖子</p>',121,1678929930333,'111','upload/1678929929766.jpg',NULL),(1678930152132,'2023-03-16 01:29:12','发布交流贴','<p>发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴发布交流贴<img src=\"http://localhost:8080/django0d26l/upload/1678930150775.png\" alt=\"图像\"></p>',0,1678929930333,'111',NULL,'开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangtixing`
--

DROP TABLE IF EXISTS `jiankangtixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangtixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tixingleixing` varchar(200) DEFAULT NULL COMMENT '提醒类型',
  `tixingneirong` longtext COMMENT '提醒内容',
  `tixingshijian` datetime DEFAULT NULL COMMENT '提醒时间',
  `tixingtupian` longtext COMMENT '提醒图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930371974 DEFAULT CHARSET=utf8 COMMENT='健康提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangtixing`
--

LOCK TABLES `jiankangtixing` WRITE;
/*!40000 ALTER TABLE `jiankangtixing` DISABLE KEYS */;
INSERT INTO `jiankangtixing` VALUES (101,'2023-03-16 01:20:48','账号1','姓名1','提醒类型1','提醒内容1','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian1.jpg,upload/jiankangtixing_tixingtupian2.jpg,upload/jiankangtixing_tixingtupian3.jpg',1),(102,'2023-03-16 01:20:48','账号2','姓名2','提醒类型2','提醒内容2','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian2.jpg,upload/jiankangtixing_tixingtupian3.jpg,upload/jiankangtixing_tixingtupian4.jpg',2),(103,'2023-03-16 01:20:48','账号3','姓名3','提醒类型3','提醒内容3','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian3.jpg,upload/jiankangtixing_tixingtupian4.jpg,upload/jiankangtixing_tixingtupian5.jpg',3),(104,'2023-03-16 01:20:48','账号4','姓名4','提醒类型4','提醒内容4','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian4.jpg,upload/jiankangtixing_tixingtupian5.jpg,upload/jiankangtixing_tixingtupian6.jpg',4),(105,'2023-03-16 01:20:48','账号5','姓名5','提醒类型5','提醒内容5','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian5.jpg,upload/jiankangtixing_tixingtupian6.jpg,upload/jiankangtixing_tixingtupian7.jpg',5),(106,'2023-03-16 01:20:48','账号6','姓名6','提醒类型6','提醒内容6','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian6.jpg,upload/jiankangtixing_tixingtupian7.jpg,upload/jiankangtixing_tixingtupian8.jpg',6),(107,'2023-03-16 01:20:48','账号7','姓名7','提醒类型7','提醒内容7','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian7.jpg,upload/jiankangtixing_tixingtupian8.jpg,upload/jiankangtixing_tixingtupian9.jpg',7),(108,'2023-03-16 01:20:48','账号8','姓名8','提醒类型8','提醒内容8','2023-03-16 09:20:48','upload/jiankangtixing_tixingtupian8.jpg,upload/jiankangtixing_tixingtupian9.jpg,upload/jiankangtixing_tixingtupian10.jpg',8),(1678930371973,'2023-03-16 01:32:51','111','张三','XXX','<p>XXXXXXXXXXXXXXXXXXXXXXX</p>','2023-03-16 01:32:43','upload/1678930369562.jpg',0);
/*!40000 ALTER TABLE `jiankangtixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianyanxinxi`
--

DROP TABLE IF EXISTS `jianyanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianyanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianyanxiangmu` varchar(200) DEFAULT NULL COMMENT '检验项目',
  `jianyandidian` varchar(200) DEFAULT NULL COMMENT '检验地点',
  `jianchafeiyong` int(11) DEFAULT NULL COMMENT '检查费用',
  `jianyanshijian` datetime DEFAULT NULL COMMENT '检验时间',
  `jianyantupian` longtext COMMENT '检验图片',
  `yishengbianhao` varchar(200) DEFAULT NULL COMMENT '医生编号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930248882 DEFAULT CHARSET=utf8 COMMENT='检验信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianyanxinxi`
--

LOCK TABLES `jianyanxinxi` WRITE;
/*!40000 ALTER TABLE `jianyanxinxi` DISABLE KEYS */;
INSERT INTO `jianyanxinxi` VALUES (61,'2023-03-16 01:20:48','账号1','姓名1','检验项目1','检验地点1',1,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian1.jpg,upload/jianyanxinxi_jianyantupian2.jpg,upload/jianyanxinxi_jianyantupian3.jpg','医生编号1','医生姓名1','未支付',1),(62,'2023-03-16 01:20:48','账号2','姓名2','检验项目2','检验地点2',2,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian2.jpg,upload/jianyanxinxi_jianyantupian3.jpg,upload/jianyanxinxi_jianyantupian4.jpg','医生编号2','医生姓名2','未支付',2),(63,'2023-03-16 01:20:48','账号3','姓名3','检验项目3','检验地点3',3,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian3.jpg,upload/jianyanxinxi_jianyantupian4.jpg,upload/jianyanxinxi_jianyantupian5.jpg','医生编号3','医生姓名3','未支付',3),(64,'2023-03-16 01:20:48','账号4','姓名4','检验项目4','检验地点4',4,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian4.jpg,upload/jianyanxinxi_jianyantupian5.jpg,upload/jianyanxinxi_jianyantupian6.jpg','医生编号4','医生姓名4','未支付',4),(65,'2023-03-16 01:20:48','账号5','姓名5','检验项目5','检验地点5',5,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian5.jpg,upload/jianyanxinxi_jianyantupian6.jpg,upload/jianyanxinxi_jianyantupian7.jpg','医生编号5','医生姓名5','未支付',5),(66,'2023-03-16 01:20:48','账号6','姓名6','检验项目6','检验地点6',6,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian6.jpg,upload/jianyanxinxi_jianyantupian7.jpg,upload/jianyanxinxi_jianyantupian8.jpg','医生编号6','医生姓名6','未支付',6),(67,'2023-03-16 01:20:48','账号7','姓名7','检验项目7','检验地点7',7,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian7.jpg,upload/jianyanxinxi_jianyantupian8.jpg,upload/jianyanxinxi_jianyantupian9.jpg','医生编号7','医生姓名7','未支付',7),(68,'2023-03-16 01:20:48','账号8','姓名8','检验项目8','检验地点8',8,'2023-03-16 09:20:48','upload/jianyanxinxi_jianyantupian8.jpg,upload/jianyanxinxi_jianyantupian9.jpg,upload/jianyanxinxi_jianyantupian10.jpg','医生编号8','医生姓名8','未支付',8),(1678930248881,'2023-03-15 17:30:48','111','张三','XXX','XXX',500,'2023-03-15 17:30:28','upload/1678930247368.jpg','医生编号1','医生姓名1','已支付',21);
/*!40000 ALTER TABLE `jianyanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuzhenjilu`
--

DROP TABLE IF EXISTS `jiuzhenjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuzhenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshitupian` longtext COMMENT '科室图片',
  `jiuzhenshijian` datetime DEFAULT NULL COMMENT '就诊时间',
  `zhengzhuangmiaoshu` longtext COMMENT '症状描述',
  `zhenduanjieguo` longtext COMMENT '诊断结果',
  `zhiliaofangan` longtext COMMENT '治疗方案',
  `yishengbianhao` varchar(200) DEFAULT NULL COMMENT '医生编号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930220632 DEFAULT CHARSET=utf8 COMMENT='就诊记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuzhenjilu`
--

LOCK TABLES `jiuzhenjilu` WRITE;
/*!40000 ALTER TABLE `jiuzhenjilu` DISABLE KEYS */;
INSERT INTO `jiuzhenjilu` VALUES (51,'2023-03-16 01:20:48','账号1','姓名1','科室名称1','upload/jiuzhenjilu_keshitupian1.jpg,upload/jiuzhenjilu_keshitupian2.jpg,upload/jiuzhenjilu_keshitupian3.jpg','2023-03-16 09:20:48','症状描述1','诊断结果1','治疗方案1','医生编号1','医生姓名1',1),(52,'2023-03-16 01:20:48','账号2','姓名2','科室名称2','upload/jiuzhenjilu_keshitupian2.jpg,upload/jiuzhenjilu_keshitupian3.jpg,upload/jiuzhenjilu_keshitupian4.jpg','2023-03-16 09:20:48','症状描述2','诊断结果2','治疗方案2','医生编号2','医生姓名2',2),(53,'2023-03-16 01:20:48','账号3','姓名3','科室名称3','upload/jiuzhenjilu_keshitupian3.jpg,upload/jiuzhenjilu_keshitupian4.jpg,upload/jiuzhenjilu_keshitupian5.jpg','2023-03-16 09:20:48','症状描述3','诊断结果3','治疗方案3','医生编号3','医生姓名3',3),(54,'2023-03-16 01:20:48','账号4','姓名4','科室名称4','upload/jiuzhenjilu_keshitupian4.jpg,upload/jiuzhenjilu_keshitupian5.jpg,upload/jiuzhenjilu_keshitupian6.jpg','2023-03-16 09:20:48','症状描述4','诊断结果4','治疗方案4','医生编号4','医生姓名4',4),(55,'2023-03-16 01:20:48','账号5','姓名5','科室名称5','upload/jiuzhenjilu_keshitupian5.jpg,upload/jiuzhenjilu_keshitupian6.jpg,upload/jiuzhenjilu_keshitupian7.jpg','2023-03-16 09:20:48','症状描述5','诊断结果5','治疗方案5','医生编号5','医生姓名5',5),(56,'2023-03-16 01:20:48','账号6','姓名6','科室名称6','upload/jiuzhenjilu_keshitupian6.jpg,upload/jiuzhenjilu_keshitupian7.jpg,upload/jiuzhenjilu_keshitupian8.jpg','2023-03-16 09:20:48','症状描述6','诊断结果6','治疗方案6','医生编号6','医生姓名6',6),(57,'2023-03-16 01:20:48','账号7','姓名7','科室名称7','upload/jiuzhenjilu_keshitupian7.jpg,upload/jiuzhenjilu_keshitupian8.jpg,upload/jiuzhenjilu_keshitupian9.jpg','2023-03-16 09:20:48','症状描述7','诊断结果7','治疗方案7','医生编号7','医生姓名7',7),(58,'2023-03-16 01:20:48','账号8','姓名8','科室名称8','upload/jiuzhenjilu_keshitupian8.jpg,upload/jiuzhenjilu_keshitupian9.jpg,upload/jiuzhenjilu_keshitupian10.jpg','2023-03-16 09:20:48','症状描述8','诊断结果8','治疗方案8','医生编号8','医生姓名8',8),(1678930220631,'2023-03-16 01:30:20','111','张三','科室名称1','upload/yisheng_keshitupian1.jpg','2023-03-16 01:30:16','XXXXXX','XXXXXXXXXXX','XXXXXXXXX','医生编号1','医生姓名1',21);
/*!40000 ALTER TABLE `jiuzhenjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshimingcheng`
--

DROP TABLE IF EXISTS `keshimingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshimingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930293710 DEFAULT CHARSET=utf8 COMMENT='科室名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshimingcheng`
--

LOCK TABLES `keshimingcheng` WRITE;
/*!40000 ALTER TABLE `keshimingcheng` DISABLE KEYS */;
INSERT INTO `keshimingcheng` VALUES (41,'2023-03-16 01:20:48','科室名称1'),(42,'2023-03-16 01:20:48','科室名称2'),(43,'2023-03-16 01:20:48','科室名称3'),(44,'2023-03-16 01:20:48','科室名称4'),(45,'2023-03-16 01:20:48','科室名称5'),(46,'2023-03-16 01:20:48','科室名称6'),(47,'2023-03-16 01:20:48','科室名称7'),(48,'2023-03-16 01:20:48','科室名称8'),(1678930293709,'2023-03-16 01:31:33','理疗科');
/*!40000 ALTER TABLE `keshimingcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930395067 DEFAULT CHARSET=utf8 COMMENT='医疗资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (171,'2023-03-16 01:20:48','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(172,'2023-03-16 01:20:48','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(173,'2023-03-16 01:20:48','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(174,'2023-03-16 01:20:48','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(175,'2023-03-16 01:20:48','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(176,'2023-03-16 01:20:48','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(177,'2023-03-16 01:20:48','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(178,'2023-03-16 01:20:48','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(1678930395066,'2023-03-16 01:33:15','XXXXX','XXXX','upload/1678930393782.jpg','<p>XXX</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'qixiexinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930104470 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1678930104313,'2023-03-15 09:28:24','20233169282535961744','yaopinxinxi',1678929930333,81,'药品名称1','upload/yaopinxinxi_yaopintupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','XXX','18156541454','张三','添加备注',NULL),(1678930104469,'2023-03-15 09:28:24','20233169282551663191','qixiexinxi',1678929930333,91,'器械名称1','upload/qixiexinxi_qixietupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','XXX','18156541454','张三','添加备注',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qixiexinxi`
--

DROP TABLE IF EXISTS `qixiexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qixiexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qixiemingcheng` varchar(200) DEFAULT NULL COMMENT '器械名称',
  `qixieleixing` varchar(200) DEFAULT NULL COMMENT '器械类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `qixiejieshao` longtext COMMENT '器械介绍',
  `qixietupian` longtext COMMENT '器械图片',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930358817 DEFAULT CHARSET=utf8 COMMENT='器械信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qixiexinxi`
--

LOCK TABLES `qixiexinxi` WRITE;
/*!40000 ALTER TABLE `qixiexinxi` DISABLE KEYS */;
INSERT INTO `qixiexinxi` VALUES (91,'2023-03-15 09:20:48','器械名称1','器械类型1','品牌1','生产商1','2023-03-16','器械介绍1','upload/qixiexinxi_qixietupian1.jpg,upload/qixiexinxi_qixietupian2.jpg,upload/qixiexinxi_qixietupian3.jpg',1,98,2,1,99.9),(92,'2023-03-16 01:20:48','器械名称2','器械类型2','品牌2','生产商2','2023-03-16','器械介绍2','upload/qixiexinxi_qixietupian2.jpg,upload/qixiexinxi_qixietupian3.jpg,upload/qixiexinxi_qixietupian4.jpg',2,99,2,2,99.9),(93,'2023-03-16 01:20:48','器械名称3','器械类型3','品牌3','生产商3','2023-03-16','器械介绍3','upload/qixiexinxi_qixietupian3.jpg,upload/qixiexinxi_qixietupian4.jpg,upload/qixiexinxi_qixietupian5.jpg',3,99,3,3,99.9),(94,'2023-03-16 01:20:48','器械名称4','器械类型4','品牌4','生产商4','2023-03-16','器械介绍4','upload/qixiexinxi_qixietupian4.jpg,upload/qixiexinxi_qixietupian5.jpg,upload/qixiexinxi_qixietupian6.jpg',4,99,4,4,99.9),(95,'2023-03-16 01:20:48','器械名称5','器械类型5','品牌5','生产商5','2023-03-16','器械介绍5','upload/qixiexinxi_qixietupian5.jpg,upload/qixiexinxi_qixietupian6.jpg,upload/qixiexinxi_qixietupian7.jpg',5,99,5,5,99.9),(96,'2023-03-16 01:20:48','器械名称6','器械类型6','品牌6','生产商6','2023-03-16','器械介绍6','upload/qixiexinxi_qixietupian6.jpg,upload/qixiexinxi_qixietupian7.jpg,upload/qixiexinxi_qixietupian8.jpg',6,99,6,6,99.9),(97,'2023-03-16 01:20:48','器械名称7','器械类型7','品牌7','生产商7','2023-03-16','器械介绍7','upload/qixiexinxi_qixietupian7.jpg,upload/qixiexinxi_qixietupian8.jpg,upload/qixiexinxi_qixietupian9.jpg',7,99,7,7,99.9),(98,'2023-03-16 01:20:48','器械名称8','器械类型8','品牌8','生产商8','2023-03-16','器械介绍8','upload/qixiexinxi_qixietupian8.jpg,upload/qixiexinxi_qixietupian9.jpg,upload/qixiexinxi_qixietupian10.jpg',8,99,8,8,99.9),(1678930358816,'2023-03-16 01:32:38','XXX','XXX','XXX','XXX','2023-03-16','<p>XXXX</p>','upload/1678930351491.jpg',5,90,0,0,500);
/*!40000 ALTER TABLE `qixiexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930068160 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1678930023855,'2023-03-16 01:27:03',1678929930333,21,'yisheng','医生编号1','upload/yisheng_keshitupian1.jpg','1',NULL,NULL),(1678930045132,'2023-03-16 01:27:25',1678929930333,81,'yaopinxinxi','药品名称1','upload/yaopinxinxi_yaopintupian1.jpg','1',NULL,NULL),(1678930047065,'2023-03-16 01:27:27',1678929930333,81,'yaopinxinxi','药品名称1','upload/yaopinxinxi_yaopintupian1.jpg','21',NULL,NULL),(1678930065385,'2023-03-16 01:27:45',1678929930333,91,'qixiexinxi','器械名称1','upload/qixiexinxi_qixietupian1.jpg','1',NULL,NULL),(1678930068159,'2023-03-16 01:27:48',1678929930333,91,'qixiexinxi','器械名称1','upload/qixiexinxi_qixietupian1.jpg','21',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijiandangan`
--

DROP TABLE IF EXISTS `tijiandangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijiandangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianyanxiangmu` varchar(200) DEFAULT NULL COMMENT '检验项目',
  `jianyanjieguo` longtext COMMENT '检验结果',
  `yishengjianyi` longtext COMMENT '医生建议',
  `jianyantupian` longtext COMMENT '检验图片',
  `yishengbianhao` varchar(200) DEFAULT NULL COMMENT '医生编号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930269714 DEFAULT CHARSET=utf8 COMMENT='体检档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijiandangan`
--

LOCK TABLES `tijiandangan` WRITE;
/*!40000 ALTER TABLE `tijiandangan` DISABLE KEYS */;
INSERT INTO `tijiandangan` VALUES (71,'2023-03-16 01:20:48','账号1','姓名1','检验项目1','检验结果1','医生建议1','upload/tijiandangan_jianyantupian1.jpg,upload/tijiandangan_jianyantupian2.jpg,upload/tijiandangan_jianyantupian3.jpg','医生编号1','医生姓名1',1),(72,'2023-03-16 01:20:48','账号2','姓名2','检验项目2','检验结果2','医生建议2','upload/tijiandangan_jianyantupian2.jpg,upload/tijiandangan_jianyantupian3.jpg,upload/tijiandangan_jianyantupian4.jpg','医生编号2','医生姓名2',2),(73,'2023-03-16 01:20:48','账号3','姓名3','检验项目3','检验结果3','医生建议3','upload/tijiandangan_jianyantupian3.jpg,upload/tijiandangan_jianyantupian4.jpg,upload/tijiandangan_jianyantupian5.jpg','医生编号3','医生姓名3',3),(74,'2023-03-16 01:20:48','账号4','姓名4','检验项目4','检验结果4','医生建议4','upload/tijiandangan_jianyantupian4.jpg,upload/tijiandangan_jianyantupian5.jpg,upload/tijiandangan_jianyantupian6.jpg','医生编号4','医生姓名4',4),(75,'2023-03-16 01:20:48','账号5','姓名5','检验项目5','检验结果5','医生建议5','upload/tijiandangan_jianyantupian5.jpg,upload/tijiandangan_jianyantupian6.jpg,upload/tijiandangan_jianyantupian7.jpg','医生编号5','医生姓名5',5),(76,'2023-03-16 01:20:48','账号6','姓名6','检验项目6','检验结果6','医生建议6','upload/tijiandangan_jianyantupian6.jpg,upload/tijiandangan_jianyantupian7.jpg,upload/tijiandangan_jianyantupian8.jpg','医生编号6','医生姓名6',6),(77,'2023-03-16 01:20:48','账号7','姓名7','检验项目7','检验结果7','医生建议7','upload/tijiandangan_jianyantupian7.jpg,upload/tijiandangan_jianyantupian8.jpg,upload/tijiandangan_jianyantupian9.jpg','医生编号7','医生姓名7',7),(78,'2023-03-16 01:20:48','账号8','姓名8','检验项目8','检验结果8','医生建议8','upload/tijiandangan_jianyantupian8.jpg,upload/tijiandangan_jianyantupian9.jpg,upload/tijiandangan_jianyantupian10.jpg','医生编号8','医生姓名8',8),(1678930269713,'2023-03-16 01:31:09','111','张三','XXX','XXXXXX','XXXXXXXXX','upload/1678930247368.jpg','医生编号1','医生姓名1',21);
/*!40000 ALTER TABLE `tijiandangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-16 01:20:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `zhuzhigongneng` varchar(200) DEFAULT NULL COMMENT '主治功能',
  `yongfayongliang` varchar(200) DEFAULT NULL COMMENT '用法用量',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `yaopintupian` longtext COMMENT '药品图片',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930339066 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (81,'2023-03-15 09:20:48','药品名称1','药品类型1','主治功能1','用法用量1','2023-03-16','注意事项1','upload/yaopinxinxi_yaopintupian1.jpg,upload/yaopinxinxi_yaopintupian2.jpg,upload/yaopinxinxi_yaopintupian3.jpg',1,98,2,1,99.9),(82,'2023-03-16 01:20:48','药品名称2','药品类型2','主治功能2','用法用量2','2023-03-16','注意事项2','upload/yaopinxinxi_yaopintupian2.jpg,upload/yaopinxinxi_yaopintupian3.jpg,upload/yaopinxinxi_yaopintupian4.jpg',2,99,2,2,99.9),(83,'2023-03-16 01:20:48','药品名称3','药品类型3','主治功能3','用法用量3','2023-03-16','注意事项3','upload/yaopinxinxi_yaopintupian3.jpg,upload/yaopinxinxi_yaopintupian4.jpg,upload/yaopinxinxi_yaopintupian5.jpg',3,99,3,3,99.9),(84,'2023-03-16 01:20:48','药品名称4','药品类型4','主治功能4','用法用量4','2023-03-16','注意事项4','upload/yaopinxinxi_yaopintupian4.jpg,upload/yaopinxinxi_yaopintupian5.jpg,upload/yaopinxinxi_yaopintupian6.jpg',4,99,4,4,99.9),(85,'2023-03-16 01:20:48','药品名称5','药品类型5','主治功能5','用法用量5','2023-03-16','注意事项5','upload/yaopinxinxi_yaopintupian5.jpg,upload/yaopinxinxi_yaopintupian6.jpg,upload/yaopinxinxi_yaopintupian7.jpg',5,99,5,5,99.9),(86,'2023-03-16 01:20:48','药品名称6','药品类型6','主治功能6','用法用量6','2023-03-16','注意事项6','upload/yaopinxinxi_yaopintupian6.jpg,upload/yaopinxinxi_yaopintupian7.jpg,upload/yaopinxinxi_yaopintupian8.jpg',6,99,6,6,99.9),(87,'2023-03-16 01:20:48','药品名称7','药品类型7','主治功能7','用法用量7','2023-03-16','注意事项7','upload/yaopinxinxi_yaopintupian7.jpg,upload/yaopinxinxi_yaopintupian8.jpg,upload/yaopinxinxi_yaopintupian9.jpg',7,99,7,7,99.9),(88,'2023-03-16 01:20:48','药品名称8','药品类型8','主治功能8','用法用量8','2023-03-16','注意事项8','upload/yaopinxinxi_yaopintupian8.jpg,upload/yaopinxinxi_yaopintupian9.jpg,upload/yaopinxinxi_yaopintupian10.jpg',8,99,8,8,99.9),(1678930339065,'2023-03-16 01:32:19','XXX药品','XX类型','XXX','XXX','2023-03-16','<p>XXXXXXXXXXXX</p>','upload/1678930331611.png',5,99,0,0,50);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengbianhao` varchar(200) NOT NULL COMMENT '医生编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `keshijianjie` longtext COMMENT '科室简介',
  `keshitupian` longtext COMMENT '科室图片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishengbianhao` (`yishengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2023-03-16 01:20:48','医生编号1','123456','医生姓名1','男','科室名称1','职称1','13823888881','科室简介1','upload/yisheng_keshitupian1.jpg',200),(22,'2023-03-16 01:20:48','医生编号2','123456','医生姓名2','男','科室名称2','职称2','13823888882','科室简介2','upload/yisheng_keshitupian2.jpg',200),(23,'2023-03-16 01:20:48','医生编号3','123456','医生姓名3','男','科室名称3','职称3','13823888883','科室简介3','upload/yisheng_keshitupian3.jpg',200),(24,'2023-03-16 01:20:48','医生编号4','123456','医生姓名4','男','科室名称4','职称4','13823888884','科室简介4','upload/yisheng_keshitupian4.jpg',200),(25,'2023-03-16 01:20:48','医生编号5','123456','医生姓名5','男','科室名称5','职称5','13823888885','科室简介5','upload/yisheng_keshitupian5.jpg',200),(26,'2023-03-16 01:20:48','医生编号6','123456','医生姓名6','男','科室名称6','职称6','13823888886','科室简介6','upload/yisheng_keshitupian6.jpg',200),(27,'2023-03-16 01:20:48','医生编号7','123456','医生姓名7','男','科室名称7','职称7','13823888887','科室简介7','upload/yisheng_keshitupian7.jpg',200),(28,'2023-03-15 17:20:48','医生编号8','123456','医生姓名8','男','理疗科','职称8','13823888888','<p>科室简介8</p>','upload/yisheng_keshitupian8.jpg',200);
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1678929930334 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-03-16 01:20:48','账号1','123456','姓名1','男','13823888881','440300199101010001','upload/yonghu_touxiang1.jpg',200),(12,'2023-03-16 01:20:48','账号2','123456','姓名2','男','13823888882','440300199202020002','upload/yonghu_touxiang2.jpg',200),(13,'2023-03-16 01:20:48','账号3','123456','姓名3','男','13823888883','440300199303030003','upload/yonghu_touxiang3.jpg',200),(14,'2023-03-16 01:20:48','账号4','123456','姓名4','男','13823888884','440300199404040004','upload/yonghu_touxiang4.jpg',200),(15,'2023-03-16 01:20:48','账号5','123456','姓名5','男','13823888885','440300199505050005','upload/yonghu_touxiang5.jpg',200),(16,'2023-03-16 01:20:48','账号6','123456','姓名6','男','13823888886','440300199606060006','upload/yonghu_touxiang6.jpg',200),(17,'2023-03-16 01:20:48','账号7','123456','姓名7','男','13823888887','440300199707070007','upload/yonghu_touxiang7.jpg',200),(18,'2023-03-16 01:20:48','账号8','123456','姓名8','男','13823888888','440300199808080008','upload/yonghu_touxiang8.jpg',200),(1678929930333,'2023-03-15 09:25:30','111','111','张三','男','18156541454','441454565414541454','upload/1678929929766.jpg',19800.2);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueguahao`
--

DROP TABLE IF EXISTS `yuyueguahao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshitupian` longtext COMMENT '科室图片',
  `yishengbianhao` varchar(200) DEFAULT NULL COMMENT '医生编号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `yuyueshuoming` longtext COMMENT '预约说明',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678930035471 DEFAULT CHARSET=utf8 COMMENT='预约挂号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueguahao`
--

LOCK TABLES `yuyueguahao` WRITE;
/*!40000 ALTER TABLE `yuyueguahao` DISABLE KEYS */;
INSERT INTO `yuyueguahao` VALUES (31,'2023-03-16 01:20:48','科室名称1','upload/yuyueguahao_keshitupian1.jpg,upload/yuyueguahao_keshitupian2.jpg,upload/yuyueguahao_keshitupian3.jpg','医生编号1','医生姓名1','2023-03-16 09:20:48','预约说明1','账号1','姓名1','13823888881',1),(32,'2023-03-16 01:20:48','科室名称2','upload/yuyueguahao_keshitupian2.jpg,upload/yuyueguahao_keshitupian3.jpg,upload/yuyueguahao_keshitupian4.jpg','医生编号2','医生姓名2','2023-03-16 09:20:48','预约说明2','账号2','姓名2','13823888882',2),(33,'2023-03-16 01:20:48','科室名称3','upload/yuyueguahao_keshitupian3.jpg,upload/yuyueguahao_keshitupian4.jpg,upload/yuyueguahao_keshitupian5.jpg','医生编号3','医生姓名3','2023-03-16 09:20:48','预约说明3','账号3','姓名3','13823888883',3),(34,'2023-03-16 01:20:48','科室名称4','upload/yuyueguahao_keshitupian4.jpg,upload/yuyueguahao_keshitupian5.jpg,upload/yuyueguahao_keshitupian6.jpg','医生编号4','医生姓名4','2023-03-16 09:20:48','预约说明4','账号4','姓名4','13823888884',4),(35,'2023-03-16 01:20:48','科室名称5','upload/yuyueguahao_keshitupian5.jpg,upload/yuyueguahao_keshitupian6.jpg,upload/yuyueguahao_keshitupian7.jpg','医生编号5','医生姓名5','2023-03-16 09:20:48','预约说明5','账号5','姓名5','13823888885',5),(36,'2023-03-16 01:20:48','科室名称6','upload/yuyueguahao_keshitupian6.jpg,upload/yuyueguahao_keshitupian7.jpg,upload/yuyueguahao_keshitupian8.jpg','医生编号6','医生姓名6','2023-03-16 09:20:48','预约说明6','账号6','姓名6','13823888886',6),(37,'2023-03-16 01:20:48','科室名称7','upload/yuyueguahao_keshitupian7.jpg,upload/yuyueguahao_keshitupian8.jpg,upload/yuyueguahao_keshitupian9.jpg','医生编号7','医生姓名7','2023-03-16 09:20:48','预约说明7','账号7','姓名7','13823888887',7),(38,'2023-03-16 01:20:48','科室名称8','upload/yuyueguahao_keshitupian8.jpg,upload/yuyueguahao_keshitupian9.jpg,upload/yuyueguahao_keshitupian10.jpg','医生编号8','医生姓名8','2023-03-16 09:20:48','预约说明8','账号8','姓名8','13823888888',8),(1678930035470,'2023-03-16 01:27:15','科室名称1','upload/yisheng_keshitupian1.jpg','医生编号1','医生姓名1','2023-03-16 01:27:13','XXXXX','111','张三','18156541454',1678929930333);
/*!40000 ALTER TABLE `yuyueguahao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-21 16:06:18
