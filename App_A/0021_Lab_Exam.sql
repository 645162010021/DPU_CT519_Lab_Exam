-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 0021_lab_exam
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `0021_lab_exam`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `0021_lab_exam` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `0021_lab_exam`;

--
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero` (
  `Hero_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Hero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero`
--

LOCK TABLES `hero` WRITE;
/*!40000 ALTER TABLE `hero` DISABLE KEYS */;
INSERT INTO `hero` VALUES (1,'Iron man','A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward Stark suffers a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction','https://is4-ssl.mzstatic.com/image/thumb/aIvtSHOcgUL4ym2l6eQHPQ/1200x675mf.jpg'),(2,'Thor','Thor: Love and Thunder is a 2022 American superhero film based on Marvel Comics featuring the character Thor,','https://disney.fandom.com/wiki/Thor_Odinson'),(3,'Hulk ','The Hulk is a superhero appearing in publications by the American publisher Marvel Comics.','https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/14/1522871567-aif3.jpg?resize=480:*');
/*!40000 ALTER TABLE `hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_in_movie`
--

DROP TABLE IF EXISTS `hero_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero_in_movie` (
  `Hero_id` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL,
  PRIMARY KEY (`Hero_id`,`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_in_movie`
--

LOCK TABLES `hero_in_movie` WRITE;
/*!40000 ALTER TABLE `hero_in_movie` DISABLE KEYS */;
INSERT INTO `hero_in_movie` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6);
/*!40000 ALTER TABLE `hero_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `Movie_id` int(11) NOT NULL,
  `Movie_Name` varchar(200) NOT NULL,
  `Trailer_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Iron Man 2','https://www.youtube.com/watch?v=wKtcmiifycU'),(2,'Iron Man (2008)','https://www.youtube.com/watch?v=8ugaeA-nMTc'),(3,'Thor: Love and Thunder','https://www.youtube.com/watch?v=Go8nTmfrQd8'),(4,'Thor','https://www.youtube.com/watch?v=JOddp-nlNvQ'),(5,'She-Hulk: Attorney at Law','https://www.youtube.com/watch?v=u7JsKhI2An0'),(6,'Hulk (2003)','https://www.youtube.com/watch?v=2ErnLuJKQA4');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15 13:34:42
