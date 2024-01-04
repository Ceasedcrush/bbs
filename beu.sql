-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beu
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminuser_info`
--

DROP TABLE IF EXISTS `adminuser_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminuser_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `username` varchar(20) NOT NULL COMMENT '用户账号',
  `password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminuser_info`
--

LOCK TABLES `adminuser_info` WRITE;
/*!40000 ALTER TABLE `adminuser_info` DISABLE KEYS */;
INSERT INTO `adminuser_info` VALUES (2,'boss','123','123');
/*!40000 ALTER TABLE `adminuser_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_info`
--

DROP TABLE IF EXISTS `forum_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_info` (
  `fid` int NOT NULL AUTO_INCREMENT COMMENT '帖子编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text COMMENT '帖子内容',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  `up` int DEFAULT '0' COMMENT '点赞数量',
  `reply_count` int DEFAULT '0' COMMENT '回复数量',
  `user_id` int NOT NULL COMMENT '楼主编号',
  `selected` int DEFAULT NULL COMMENT '是否为精选',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='帖子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_info`
--

LOCK TABLES `forum_info` WRITE;
/*!40000 ALTER TABLE `forum_info` DISABLE KEYS */;
INSERT INTO `forum_info` VALUES (1,'大作业','令人讨厌的大作业。','2024-01-04 16:07:55',0,0,1,NULL),(2,'大作业','做大作业如同上班，在工位上边做边吐槽。','2024-01-04 16:09:58',0,0,1,1),(3,'大作业','做大作业可真让人开心','2024-01-04 16:10:14',0,0,1,1),(6,'12312312','321312312','2024-01-04 16:10:49',0,0,1,1),(7,'大作业','要做完了，好开心。','2024-01-04 16:11:11',1,0,1,1),(9,'312','312312','2024-01-04 16:12:05',3,1,1,1);
/*!40000 ALTER TABLE `forum_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_info`
--

DROP TABLE IF EXISTS `reply_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply_info` (
  `reply_id` int NOT NULL AUTO_INCREMENT COMMENT '回帖编号',
  `reply_content` text NOT NULL COMMENT '回复内容',
  `reply_time` datetime NOT NULL COMMENT '回复时间',
  `up` int DEFAULT '0' COMMENT '点赞数量',
  `user_id` int NOT NULL COMMENT '用户编号',
  `fid` int NOT NULL COMMENT '帖子编号',
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_info`
--

LOCK TABLES `reply_info` WRITE;
/*!40000 ALTER TABLE `reply_info` DISABLE KEYS */;
INSERT INTO `reply_info` VALUES (1,'你好哈哈哈哈哈','2024-01-04 17:31:38',0,3,9),(2,'123123','2024-01-04 17:43:39',0,4,11),(3,'123123','2024-01-04 17:43:49',0,4,16);
/*!40000 ALTER TABLE `reply_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `username` varchar(20) NOT NULL COMMENT '用户账号',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) DEFAULT NULL COMMENT '注册邮箱',
  `signature` varchar(255) DEFAULT NULL COMMENT '个人签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'讨厌的大作业','123456','123456','2024-01-04','男',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-04 18:39:51
