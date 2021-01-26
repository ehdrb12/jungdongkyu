-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

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
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL COMMENT '서버에 저장되는 한글명이 아닌 파일명',
  `real_file_name` varchar(255) DEFAULT NULL COMMENT 'PC에서 한글로된 진짜 파일명',
  `bno` int(11) NOT NULL,
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('1cd1ec39-ea6a-43d8-81ad-45bcf5b69252.jpg','산타.jpg',117,'2021-01-04 07:00:18'),('d7f8cfb4-9dde-443f-af36-ab5da8cd86a6.jpg','산타.jpg',116,'2020-12-31 02:48:30');
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increment)일련번호를 자동증가기능',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판타입:tbl_board_type테이블의 값을 가져다 사용\n',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목',
  `content` text DEFAULT NULL COMMENT '게시물내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'gallery','1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:20:11','2020-12-23 03:20:11'),(2,'gallery','2번-------------------------째 게시물 입니다.','게시물 내용 입니다.','admin',13,0,'2020-12-23 03:46:10','2021-01-25 06:01:49'),(3,'gallery','3번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(4,'gallery','4번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(5,'gallery','5번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(6,'notice','6번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(7,'notice','7번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(8,'notice','8번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(9,'notice','9번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(10,'notice','10번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(11,'notice','11번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(12,'notice','12번째 게시물 입니다.','게시물 내용 입니다.','admin',0,6,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(13,'notice','13번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(14,'notice','14번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(15,'notice','15번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(16,'notice','16번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(17,'notice','17번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(18,'notice','18번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(19,'notice','19번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(20,'notice','20번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(21,'notice','21번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(22,'notice','22번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(23,'notice','23번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(24,'notice','24번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(25,'notice','25번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(26,'notice','26번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(27,'notice','27번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(28,'notice','28번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(29,'notice','29번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(30,'notice','30번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(31,'notice','31번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(32,'notice','32번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(33,'notice','33번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(34,'notice','34번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(35,'notice','35번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(36,'notice','36번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(37,'notice','37번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(38,'notice','38번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(39,'notice','39번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(40,'notice','40번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(41,'notice','41번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(42,'notice','42번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(43,'notice','43번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(44,'notice','44번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(45,'notice','45번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(46,'notice','46번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(47,'notice','47번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(48,'notice','48번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(49,'notice','49번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(50,'notice','50번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(51,'notice','51번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(52,'notice','52번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(53,'notice','53번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(54,'notice','54번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:10','2020-12-23 03:46:10'),(55,'notice','5=========5번째 게시물 입니다.','게시물 내용 입니다.','admin',23,0,'2020-12-23 03:46:11','2021-01-25 06:01:29'),(56,'notice','56번째 게시물 입니다.','게시물 내용 입니다.','admin',5,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(57,'notice','57번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(58,'notice','58번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(59,'notice','59번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(60,'notice','60번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(61,'notice','61번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(62,'notice','62번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(63,'notice','63번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(64,'notice','64번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(65,'notice','65번째 게시물 입니다.','게시물 내용 입니다.','admin',8,13,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(66,'notice','66번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(67,'notice','67번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(68,'notice','68번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(69,'notice','69번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(70,'notice','70번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(71,'notice','71번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(72,'notice','72번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(73,'notice','73번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(74,'notice','74번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(75,'notice','75번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(76,'notice','76번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(77,'notice','77번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(78,'notice','78번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(79,'notice','79번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(80,'notice','80번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(81,'notice','81번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(82,'notice','82번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(83,'notice','83번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(84,'notice','84번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(85,'notice','85번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(86,'notice','86번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(87,'notice','87번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(88,'notice','88번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(89,'notice','89번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(90,'notice','90번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(91,'notice','91번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(92,'notice','92번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(93,'notice','93번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(94,'notice','94번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(95,'notice','95번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(96,'notice','96번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(97,'notice','97번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(98,'notice','98번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(99,'notice','99번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(100,'notice','100번째 게시물 입니다.','게시물 내용 입니다.','admin',0,14,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(101,'notice','101번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(102,'notice','102번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(103,'notice','103번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(104,'notice','104번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(105,'notice','105번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(106,'notice','106번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(107,'notice','107번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(108,'notice','108번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(109,'notice','109번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(110,'notice','110번째 게시물 입니다.','게시물 내용 입니다.','admin',0,4,'2020-12-23 03:46:11','2020-12-23 03:46:11'),(116,'notice','e','<p>e<br></p>','e',4,0,'2020-12-31 02:48:30','2020-12-31 02:48:30'),(117,'notice','ㅁㅁ','<p>ㅁㅁ<br></p>','ㅁㅁ',61,0,'2020-12-31 05:01:27','2021-01-04 07:00:27');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(25) NOT NULL,
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판이름\n',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 출력 순서\n',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판생성';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','겔러리',2),('notice','공지사항',1);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디\n',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름\n',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값, 활동 가능한 회원 여부, 0 로그인불가능, 1 로그인 가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값, 2가지 레벨,ROLE_ADMIN(관리자),ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970년부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('Admin','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:04:08','2020-12-23 03:04:08'),('dummy_1','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_10','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_100','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_101','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_102','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_103','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_104','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_105','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_106','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_107','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_108','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_109','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_11','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_110','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-06 01:02:47'),('dummy_12','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_13','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_14','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_15','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_16','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_17','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_18','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_19','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_2','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_20','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_21','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_22','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_23','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_24','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_25','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_26','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_27','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_28','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_29','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_3','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_30','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_31','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_32','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_33','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_34','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_35','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_36','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_37','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_38','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_39','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_4','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_40','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_41','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_42','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_43','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_44','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_45','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_46','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_47','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_48','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_49','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_5','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_50','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_51','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_52','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_53','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_54','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_55','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_56','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_57','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_58','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_59','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_6','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_60','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_61','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_62','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_63','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_64','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_65','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_66','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_67','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_68','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_69','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_7','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_70','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_71','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_72','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_73','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_74','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_75','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_76','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_77','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_78','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_79','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_8','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_80','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_81','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_82','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_83','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_84','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_85','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_86','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_87','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_88','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_89','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_9','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_90','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_91','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_92','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_93','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_94','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_95','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_96','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_97','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_98','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:46','2021-01-06 01:02:46'),('dummy_99','$2a$10$jW8VE6wURUwASmHq5UzFe.RQ9EzxbXGOTrnvo2YIFqLxkW55bAq0u','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-01-06 01:02:47','2021-01-12 07:55:25');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일지',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (8,10,'댓글입력테스트','관리자','2021-01-06 08:02:34','2021-01-06 08:02:34'),(9,110,'댓-----글테스트','관리자','2021-01-06 08:32:10','2021-01-06 08:32:10'),(10,110,'댓-----글테스트','관리자','2021-01-06 08:32:11','2021-01-06 08:32:11'),(11,110,'댓-----글테스트','관리자','2021-01-06 08:32:44','2021-01-06 08:32:44'),(12,110,'댓-----글테스트','관리자','2021-01-06 08:32:45','2021-01-06 08:32:45'),(13,100,'댓-----글테스트','관리자','2021-01-07 00:21:36','2021-01-07 00:21:36'),(14,100,'댓-----글테스트','관리자','2021-01-07 00:21:37','2021-01-07 00:21:37'),(15,100,'댓-----글테스트','관리자','2021-01-07 00:21:38','2021-01-07 00:21:38'),(16,100,'댓-----글테스트','관리자','2021-01-07 00:21:39','2021-01-07 00:21:39'),(17,100,'댓-----글테스트','관리자','2021-01-07 00:21:39','2021-01-07 00:21:39'),(18,100,'댓-----글테스트','관리자','2021-01-07 00:21:40','2021-01-07 00:21:40'),(19,100,'댓-----글테스트','관리자','2021-01-07 00:21:41','2021-01-07 00:21:41'),(20,100,'댓-----글테스트','관리자','2021-01-07 00:21:41','2021-01-07 00:21:41'),(21,100,'댓-----글테스트','관리자','2021-01-07 00:21:42','2021-01-07 00:21:42'),(22,100,'댓-----글테스트','관리자','2021-01-07 00:21:42','2021-01-07 00:21:42'),(23,100,'댓-----글테스트','관리자','2021-01-07 00:21:43','2021-01-07 00:21:43'),(24,100,'댓-----글테스트','관리자','2021-01-07 00:33:44','2021-01-07 00:33:44'),(25,100,'댓-----글테스트','관리자','2021-01-07 00:33:44','2021-01-07 00:33:44'),(26,100,'댓-----글테스트','관리자','2021-01-07 00:33:47','2021-01-07 00:33:47'),(27,12,'댓글 입력 테스트','관리자','2021-01-07 01:09:58','2021-01-07 01:09:58'),(28,12,'댓글 입력 테스트','관리자','2021-01-07 01:10:10','2021-01-07 01:10:10'),(29,12,'댓글 입력 테스트','관리자','2021-01-07 01:10:17','2021-01-07 01:10:17'),(30,12,'댓글 입력 테스트','관리자','2021-01-07 01:10:24','2021-01-07 01:10:24'),(31,12,'댓글 입력 테스트','관리자','2021-01-07 01:10:37','2021-01-07 01:10:37'),(32,12,'댓글 입력 테스트','관리자','2021-01-07 01:14:03','2021-01-07 01:14:03'),(33,65,'댓글 입력 테스트','관리자','2021-01-07 01:14:57','2021-01-07 01:14:57'),(34,65,'댓글 입력 테스트','관리자','2021-01-07 01:14:58','2021-01-07 01:14:58'),(35,65,'댓글 입력 테스트','관리자','2021-01-07 01:14:59','2021-01-07 01:14:59'),(36,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:15','2021-01-07 01:15:15'),(37,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:16','2021-01-07 01:15:16'),(38,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:17','2021-01-07 01:15:17'),(39,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:18','2021-01-07 01:15:18'),(40,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:18','2021-01-07 01:15:18'),(41,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:19','2021-01-07 01:15:19'),(42,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:20','2021-01-07 01:15:20'),(43,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:20','2021-01-07 01:15:20'),(44,65,'댓글 입력 테스트','관리자','2021-01-07 01:15:21','2021-01-07 01:15:21'),(45,65,'댓--글 입력 테스트','관리자','2021-01-07 01:21:35','2021-01-07 01:21:35');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 15:56:26
