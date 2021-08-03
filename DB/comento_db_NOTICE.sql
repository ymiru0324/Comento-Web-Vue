-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 222.239.249.125    Database: comento_db
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `NOTICE`
--

DROP TABLE IF EXISTS `NOTICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NOTICE` (
  `SEQ_NO` decimal(20,0) NOT NULL COMMENT 'SEQ_NO',
  `SUBJECT` varchar(200) DEFAULT NULL COMMENT 'NOTICE_SUBJECT',
  `CTNT` longtext COMMENT 'NOTICE_CTNT',
  `STAT_CD` varchar(10) DEFAULT NULL COMMENT 'STAT_CD',
  `VIEW_CNT` decimal(20,0) DEFAULT NULL COMMENT 'VIEW_CNT',
  `REG_USER` varchar(30) NOT NULL COMMENT '등록자',
  `REG_DTTM` datetime NOT NULL COMMENT '등록일시',
  `MOD_USER` varchar(30) DEFAULT NULL COMMENT '수정자',
  `MOD_DTTM` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`SEQ_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공지사항';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOTICE`
--

LOCK TABLES `NOTICE` WRITE;
/*!40000 ALTER TABLE `NOTICE` DISABLE KEYS */;
INSERT INTO `NOTICE` VALUES (1,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(2,'멘토공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(3,'사용자공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(4,'관리자공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(5,'시스템점검안내','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(6,'필수검토','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(7,'[점검안내]시스템 접속 불가 안내','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(8,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(9,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(10,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(11,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(12,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(13,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL),(14,'멘티공지','멘티여러분 안녕하세요. 금일 교육을 여러분에게 많은 도움이 되길바래요','OK',1,'sys','2021-05-17 12:27:31','sys',NULL);
/*!40000 ALTER TABLE `NOTICE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-03 16:04:07
