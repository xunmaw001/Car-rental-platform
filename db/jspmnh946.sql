-- MySQL dump 10.13  Distrib 5.7.32, for Win64 (x86_64)
--
-- Host: localhost    Database: jspmnh946
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-12-28 16:16:40',1,1,'提问1','回复1',1),(2,'2020-12-28 16:16:40',2,2,'提问2','回复2',2),(3,'2020-12-28 16:16:40',3,3,'提问3','回复3',3),(4,'2020-12-28 16:16:40',4,4,'提问4','回复4',4),(5,'2020-12-28 16:16:40',5,5,'提问5','回复5',5),(6,'2020-12-28 16:16:40',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongzhixinxi`
--

DROP TABLE IF EXISTS `chongzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` int(11) NOT NULL COMMENT '金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173506473 DEFAULT CHARSET=utf8 COMMENT='充值信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongzhixinxi`
--

LOCK TABLES `chongzhixinxi` WRITE;
/*!40000 ALTER TABLE `chongzhixinxi` DISABLE KEYS */;
INSERT INTO `chongzhixinxi` VALUES (1609172290071,'2020-12-28 16:18:09','001','李铭',100000,'2020-11-29','已支付'),(1609173506472,'2020-12-28 16:38:26','1','刘倩',100000,'2020-11-29','已支付');
/*!40000 ALTER TABLE `chongzhixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmnh946/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmnh946/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmnh946/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmnh946/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmnh946/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqichexinxi`
--

DROP TABLE IF EXISTS `discussqichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173475736 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqichexinxi`
--

LOCK TABLES `discussqichexinxi` WRITE;
/*!40000 ALTER TABLE `discussqichexinxi` DISABLE KEYS */;
INSERT INTO `discussqichexinxi` VALUES (1,'2020-12-28 16:16:41',1,1,'评论内容1','回复内容1'),(2,'2020-12-28 16:16:41',2,2,'评论内容2','回复内容2'),(3,'2020-12-28 16:16:41',3,3,'评论内容3','回复内容3'),(4,'2020-12-28 16:16:41',4,4,'评论内容4','回复内容4'),(5,'2020-12-28 16:16:41',5,5,'评论内容5','回复内容5'),(6,'2020-12-28 16:16:41',6,6,'评论内容6','回复内容6'),(1609173250413,'2020-12-28 16:34:09',1,1609173179664,'很不错的车',NULL),(1609173475735,'2020-12-28 16:37:55',2,1609173187555,'12212121',NULL);
/*!40000 ALTER TABLE `discussqichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) NOT NULL COMMENT '会员号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173187556 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (1,'2020-12-28 16:16:40','001','001','李铭','http://localhost:8080/jspmnh946/upload/1609172729941.png','2020-12-29'),(1609173187555,'2020-12-28 16:33:07','1','1','刘倩','http://localhost:8080/jspmnh946/upload/1609173446830.png','2020-11-29');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuandingdan`
--

DROP TABLE IF EXISTS `huiyuandingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `zulinjiage` int(11) DEFAULT NULL COMMENT '租赁价格',
  `huiyuanzhekou` float DEFAULT NULL COMMENT '会员折扣',
  `zulintianshu` int(11) NOT NULL COMMENT '租赁天数',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173488748 DEFAULT CHARSET=utf8 COMMENT='会员订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuandingdan`
--

LOCK TABLES `huiyuandingdan` WRITE;
/*!40000 ALTER TABLE `huiyuandingdan` DISABLE KEYS */;
INSERT INTO `huiyuandingdan` VALUES (1,'2020-12-28 16:16:40','订单编号1','汽车名称1','汽车类型1','颜色1','品牌1','车牌1',1,1,1,1,'2020-12-29','会员号1','姓名1','否','','未支付'),(2,'2020-12-28 16:16:40','订单编号2','汽车名称2','汽车类型2','颜色2','品牌2','车牌2',2,2,2,2,'2020-12-29','会员号2','姓名2','否','','未支付'),(3,'2020-12-28 16:16:40','订单编号3','汽车名称3','汽车类型3','颜色3','品牌3','车牌3',3,3,3,3,'2020-12-29','会员号3','姓名3','否','','未支付'),(4,'2020-12-28 16:16:40','订单编号4','汽车名称4','汽车类型4','颜色4','品牌4','车牌4',4,4,4,4,'2020-12-29','会员号4','姓名4','否','','未支付'),(5,'2020-12-28 16:16:40','订单编号5','汽车名称5','汽车类型5','颜色5','品牌5','车牌5',5,5,5,5,'2020-12-29','会员号5','姓名5','否','','未支付'),(6,'2020-12-28 16:16:40','订单编号6','汽车名称6','汽车类型6','颜色6','品牌6','车牌6',6,6,6,6,'2020-12-29','会员号6','姓名6','否','','未支付'),(1609173488747,'2020-12-28 16:38:08','20201229038046618614','阿特兹','小轿车','黑色','马自达','M66666666',250,0.8,10,2000,'2020-11-29','1','刘倩','是','借车成功','已支付');
/*!40000 ALTER TABLE `huiyuandingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanhaiche`
--

DROP TABLE IF EXISTS `huiyuanhaiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanhaiche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `paizhao` varchar(200) DEFAULT NULL COMMENT '拍照',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `haicheriqi` datetime DEFAULT NULL COMMENT '还车日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173550503 DEFAULT CHARSET=utf8 COMMENT='会员还车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanhaiche`
--

LOCK TABLES `huiyuanhaiche` WRITE;
/*!40000 ALTER TABLE `huiyuanhaiche` DISABLE KEYS */;
INSERT INTO `huiyuanhaiche` VALUES (1,'2020-12-28 16:16:40','订单编号1','汽车名称1','汽车类型1','品牌1','颜色1','车牌1','http://localhost:8080/jspmnh946/upload/huiyuanhaiche_paizhao1.jpg','备注1','2020-12-29 00:16:40','会员号1','姓名1','否','',1,1,'宇宙银河系地球1号'),(2,'2020-12-28 16:16:40','订单编号2','汽车名称2','汽车类型2','品牌2','颜色2','车牌2','http://localhost:8080/jspmnh946/upload/huiyuanhaiche_paizhao2.jpg','备注2','2020-12-29 00:16:40','会员号2','姓名2','否','',2,2,'宇宙银河系地球2号'),(3,'2020-12-28 16:16:40','订单编号3','汽车名称3','汽车类型3','品牌3','颜色3','车牌3','http://localhost:8080/jspmnh946/upload/huiyuanhaiche_paizhao3.jpg','备注3','2020-12-29 00:16:40','会员号3','姓名3','否','',3,3,'宇宙银河系地球3号'),(4,'2020-12-28 16:16:40','订单编号4','汽车名称4','汽车类型4','品牌4','颜色4','车牌4','http://localhost:8080/jspmnh946/upload/huiyuanhaiche_paizhao4.jpg','备注4','2020-12-29 00:16:40','会员号4','姓名4','否','',4,4,'宇宙银河系地球4号'),(5,'2020-12-28 16:16:40','订单编号5','汽车名称5','汽车类型5','品牌5','颜色5','车牌5','http://localhost:8080/jspmnh946/upload/huiyuanhaiche_paizhao5.jpg','备注5','2020-12-29 00:16:40','会员号5','姓名5','否','',5,5,'宇宙银河系地球5号'),(6,'2020-12-28 16:16:40','订单编号6','汽车名称6','汽车类型6','品牌6','颜色6','车牌6','http://localhost:8080/jspmnh946/upload/huiyuanhaiche_paizhao6.jpg','备注6','2020-12-29 00:16:40','会员号6','姓名6','否','',6,6,'宇宙银河系地球6号'),(1609173550502,'2020-12-28 16:39:09','20201229038046618614','阿特兹','小轿车','马自达','黑色','M66666666','http://localhost:8080/jspmnh946/upload/1609173543250.jpg','没有损坏','2020-11-29 10:25:39','1','刘倩','是','11',117.819,33.3616,'安徽省宿州市泗县丁湖镇圩后村');
/*!40000 ALTER TABLE `huiyuanhaiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichefenlei`
--

DROP TABLE IF EXISTS `qichefenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicheleixing` varchar(200) NOT NULL COMMENT '汽车类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609172994278 DEFAULT CHARSET=utf8 COMMENT='汽车分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichefenlei`
--

LOCK TABLES `qichefenlei` WRITE;
/*!40000 ALTER TABLE `qichefenlei` DISABLE KEYS */;
INSERT INTO `qichefenlei` VALUES (1,'2020-12-28 16:16:40','小轿车'),(2,'2020-12-28 16:16:40','SUV'),(3,'2020-12-28 16:16:40','跑车'),(1609172985713,'2020-12-28 16:29:45','越野车'),(1609172994277,'2020-12-28 16:29:53','商务车');
/*!40000 ALTER TABLE `qichefenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichexinxi`
--

DROP TABLE IF EXISTS `qichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) NOT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qicheleibie` varchar(200) DEFAULT NULL COMMENT '汽车类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `youhao` varchar(200) DEFAULT NULL COMMENT '油耗',
  `canshuxiangqing` longtext COMMENT '参数详情',
  `zulinjiage` int(11) DEFAULT NULL COMMENT '租赁价格',
  `huiyuanzhekou` float DEFAULT NULL COMMENT '会员折扣',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='汽车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichexinxi`
--

LOCK TABLES `qichexinxi` WRITE;
/*!40000 ALTER TABLE `qichexinxi` DISABLE KEYS */;
INSERT INTO `qichexinxi` VALUES (1,'2020-12-28 16:16:40','凌派','SUV','油电混合','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian1.jpg','本田','灰色','1.5T','0.8/ML','参数详情1',150,0.8,'M888888','2020-12-29 00:37:37'),(2,'2020-12-28 16:16:40','阿特兹','小轿车','油','http://localhost:8080/jspmnh946/upload/1609173033275.jpg','马自达','黑色','2.0T带涡轮','0.8/l','这里可以发布一些参数信息',250,0.8,'M66666666','2020-12-29 00:38:11'),(3,'2020-12-28 16:16:40','思域','小轿车','汽车类别3','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian3.jpg','品牌3','颜色3','排量3','油耗3','参数详情3',3,3,'车牌3','2020-12-29 00:28:07'),(4,'2020-12-28 16:16:40','汽车名称4','汽车类型4','汽车类别4','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian4.jpg','品牌4','颜色4','排量4','油耗4','参数详情4',4,4,'车牌4','2020-12-29 00:28:18'),(5,'2020-12-28 16:16:40','汽车名称5','汽车类型5','汽车类别5','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian5.jpg','品牌5','颜色5','排量5','油耗5','参数详情5',5,5,'车牌5','2020-12-29 00:16:40'),(6,'2020-12-28 16:16:40','汽车名称6','汽车类型6','汽车类别6','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian6.jpg','品牌6','颜色6','排量6','油耗6','参数详情6',6,6,'车牌6','2020-12-29 00:16:40');
/*!40000 ALTER TABLE `qichexinxi` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173462969 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1609173243206,'2020-12-28 16:34:02',1609173179664,1,'qichexinxi','凌派','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian1.jpg'),(1609173459105,'2020-12-28 16:37:38',1609173187555,1,'qichexinxi','凌派','http://localhost:8080/jspmnh946/upload/qichexinxi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1609172229332,'001','huiyuan','会员','p0ill7dadcujxrt0554b1tq6fkfzblyo','2020-12-28 16:17:16','2020-12-28 17:17:16'),(2,1,'abo','users','管理员','7ajupl7zz8rvjqvs9hex7kfl6pyaofbe','2020-12-28 16:18:50','2020-12-28 17:39:26'),(3,1609173179664,'1','yonghu','用户','8d75efj8f8cmikys4fy4btvehfcp7yce','2020-12-28 16:33:13','2020-12-28 17:33:14'),(4,1609173187555,'1','huiyuan','会员','gysgjmsmrk74y4aosm8t4z1xc2q46g3y','2020-12-28 16:36:50','2020-12-28 17:37:11');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-28 16:16:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173179665 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-12-28 16:16:40','001','001','姓名1','性别1','http://localhost:8080/jspmnh946/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(2,'2020-12-28 16:16:40','用户2','123456','姓名2','性别2','http://localhost:8080/jspmnh946/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(3,'2020-12-28 16:16:40','用户3','123456','姓名3','性别3','http://localhost:8080/jspmnh946/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(4,'2020-12-28 16:16:40','用户4','123456','姓名4','性别4','http://localhost:8080/jspmnh946/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(5,'2020-12-28 16:16:40','用户5','123456','姓名5','性别5','http://localhost:8080/jspmnh946/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(6,'2020-12-28 16:16:40','用户6','123456','姓名6','性别6','http://localhost:8080/jspmnh946/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1609173179664,'2020-12-28 16:32:59','1','1','李铭','男','http://localhost:8080/jspmnh946/upload/1609173212999.png','44121412141214124','1521412141');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuhaiche`
--

DROP TABLE IF EXISTS `yonghuhaiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuhaiche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `paizhao` varchar(200) DEFAULT NULL COMMENT '拍照',
  `beizhu` longtext COMMENT '备注',
  `haicheriqi` date DEFAULT NULL COMMENT '还车日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173328016 DEFAULT CHARSET=utf8 COMMENT='用户还车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuhaiche`
--

LOCK TABLES `yonghuhaiche` WRITE;
/*!40000 ALTER TABLE `yonghuhaiche` DISABLE KEYS */;
INSERT INTO `yonghuhaiche` VALUES (1,'2020-12-28 16:16:40','订单编号1','汽车名称1','汽车类型1','品牌1','颜色1','车牌1','http://localhost:8080/jspmnh946/upload/yonghuhaiche_paizhao1.jpg','备注1','2020-12-29','用户名1','姓名1','否','',1,1,'宇宙银河系地球1号'),(2,'2020-12-28 16:16:40','订单编号2','汽车名称2','汽车类型2','品牌2','颜色2','车牌2','http://localhost:8080/jspmnh946/upload/yonghuhaiche_paizhao2.jpg','备注2','2020-12-29','用户名2','姓名2','否','',2,2,'宇宙银河系地球2号'),(3,'2020-12-28 16:16:40','订单编号3','汽车名称3','汽车类型3','品牌3','颜色3','车牌3','http://localhost:8080/jspmnh946/upload/yonghuhaiche_paizhao3.jpg','备注3','2020-12-29','用户名3','姓名3','否','',3,3,'宇宙银河系地球3号'),(4,'2020-12-28 16:16:40','订单编号4','汽车名称4','汽车类型4','品牌4','颜色4','车牌4','http://localhost:8080/jspmnh946/upload/yonghuhaiche_paizhao4.jpg','备注4','2020-12-29','用户名4','姓名4','否','',4,4,'宇宙银河系地球4号'),(5,'2020-12-28 16:16:40','订单编号5','汽车名称5','汽车类型5','品牌5','颜色5','车牌5','http://localhost:8080/jspmnh946/upload/yonghuhaiche_paizhao5.jpg','备注5','2020-12-29','用户名5','姓名5','否','',5,5,'宇宙银河系地球5号'),(6,'2020-12-28 16:16:40','订单编号6','汽车名称6','汽车类型6','品牌6','颜色6','车牌6','http://localhost:8080/jspmnh946/upload/yonghuhaiche_paizhao6.jpg','备注6','2020-12-29','用户名6','姓名6','否','',6,6,'宇宙银河系地球6号'),(1609173328015,'2020-12-28 16:35:27','202012290341326057517','凌派','SUV','本田','灰色','M888888','http://localhost:8080/jspmnh946/upload/1609173319070.jpeg','没有损坏','2020-11-29','1','李铭','是','换成成功',121.784,29.6693,'浙江省宁波市鄞州区咸祥镇阳和寺');
/*!40000 ALTER TABLE `yonghuhaiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulindingdan`
--

DROP TABLE IF EXISTS `zulindingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zulindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `zulinjiage` int(11) DEFAULT NULL COMMENT '租赁价格',
  `zulintianshu` int(11) NOT NULL COMMENT '租赁天数',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609173261609 DEFAULT CHARSET=utf8 COMMENT='租赁订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulindingdan`
--

LOCK TABLES `zulindingdan` WRITE;
/*!40000 ALTER TABLE `zulindingdan` DISABLE KEYS */;
INSERT INTO `zulindingdan` VALUES (1,'2020-12-28 16:16:40','订单编号1','汽车名称1','汽车类型1','颜色1','品牌1','车牌1',1,1,1,'2020-12-29','用户名1','姓名1','否','','未支付'),(2,'2020-12-28 16:16:40','订单编号2','汽车名称2','汽车类型2','颜色2','品牌2','车牌2',2,2,2,'2020-12-29','用户名2','姓名2','否','','未支付'),(3,'2020-12-28 16:16:40','订单编号3','汽车名称3','汽车类型3','颜色3','品牌3','车牌3',3,3,3,'2020-12-29','用户名3','姓名3','否','','未支付'),(4,'2020-12-28 16:16:40','订单编号4','汽车名称4','汽车类型4','颜色4','品牌4','车牌4',4,4,4,'2020-12-29','用户名4','姓名4','否','','未支付'),(5,'2020-12-28 16:16:40','订单编号5','汽车名称5','汽车类型5','颜色5','品牌5','车牌5',5,5,5,'2020-12-29','用户名5','姓名5','否','','未支付'),(6,'2020-12-28 16:16:40','订单编号6','汽车名称6','汽车类型6','颜色6','品牌6','车牌6',6,6,6,'2020-12-29','用户名6','姓名6','否','','未支付'),(1609173261608,'2020-12-28 16:34:20','202012290341326057517','凌派','SUV','灰色','本田','M888888',150,5,750,'2020-11-29','1','李铭','是','租赁成功，请到XX门店取车','已支付');
/*!40000 ALTER TABLE `zulindingdan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-29  0:42:41
