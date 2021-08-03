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
-- Table structure for table `COMM_CODE`
--

DROP TABLE IF EXISTS `COMM_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMM_CODE` (
  `COMM_CD_ID` varchar(10) NOT NULL COMMENT '대표코드',
  `CD_ID` varchar(10) NOT NULL COMMENT '코드',
  `CD_NM` varchar(50) NOT NULL COMMENT '코드명',
  `CD_ENG` varchar(30) DEFAULT NULL COMMENT '영문명',
  `CD_SORT` int(11) DEFAULT NULL COMMENT '코드순서',
  `CD_USE_YN` char(1) DEFAULT NULL COMMENT '코드사용여부',
  `CONN_1_CD` varchar(200) DEFAULT NULL COMMENT '연결코드1',
  `CONN_2_CD` varchar(200) DEFAULT NULL COMMENT '연결코드2',
  `CONN_3_CD` varchar(200) DEFAULT NULL COMMENT '연결코드3',
  PRIMARY KEY (`COMM_CD_ID`,`CD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공통코드';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMM_CODE`
--

LOCK TABLES `COMM_CODE` WRITE;
/*!40000 ALTER TABLE `COMM_CODE` DISABLE KEYS */;
INSERT INTO `COMM_CODE` VALUES ('CMN01','01','멘토','mento',1,NULL,NULL,NULL,NULL),('CMN01','02','멘티','menti',2,NULL,NULL,NULL,NULL),('CMN01','03','관리자','admin',3,NULL,NULL,NULL,NULL),('CMN01','04','로봇','robot',4,NULL,NULL,NULL,NULL),('CMN02','0','일','sun',7,NULL,NULL,NULL,NULL),('CMN02','1','월','mon',1,NULL,NULL,NULL,NULL),('CMN02','2','화','tue',2,NULL,NULL,NULL,NULL),('CMN02','3','수','wen',3,NULL,NULL,NULL,NULL),('CMN02','4','목','thu',4,NULL,NULL,NULL,NULL),('CMN02','5','금','fri',5,NULL,NULL,NULL,NULL),('CMN02','6','토','set',6,NULL,NULL,NULL,NULL),('CODE01','G1','사원',NULL,1,NULL,NULL,NULL,NULL),('CODE01','G2','대리',NULL,2,NULL,NULL,NULL,NULL),('CODE01','G3','과장',NULL,3,NULL,NULL,NULL,NULL),('CODE01','G4','차장',NULL,4,NULL,NULL,NULL,NULL),('CODE01','G5','부장',NULL,5,NULL,NULL,NULL,NULL),('CODE01','G6','실행',NULL,6,NULL,NULL,NULL,NULL),('CODE02','1','1차',NULL,1,NULL,NULL,NULL,NULL),('CODE02','2','2차',NULL,2,NULL,NULL,NULL,NULL),('CODE02','3','3차',NULL,3,NULL,NULL,NULL,NULL),('CODE03','2','2명',NULL,NULL,NULL,NULL,NULL,NULL),('CODE03','4','4명',NULL,NULL,NULL,NULL,NULL,NULL),('CODE03','6','6명',NULL,NULL,NULL,NULL,NULL,NULL),('CODE03','8','8명',NULL,NULL,NULL,NULL,NULL,NULL),('CODE06','N','미사용',NULL,NULL,NULL,NULL,NULL,NULL),('CODE06','Y','사용',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `COMM_CODE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-03 16:04:08
