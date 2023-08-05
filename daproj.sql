-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: daproj
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountID` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_time` datetime NOT NULL,
  `subscriber_count` int NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  `watch_time` int NOT NULL DEFAULT '0',
  `view_count` mediumtext,
  `revenue` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'PewDiePie','pewds@aol.com','2008-07-10 22:33:10',102342021,'youtube.com/PewDiePie',10292983,'3900982821',32921928),(2,'nexpo','nexpo@gmail.com','2018-04-23 21:02:10',1029381,'youtube.com/nexpo',1023341,'6457845',95172),(3,'ninja','ninja@epic.games.com','2012-06-01 02:01:47',18327838,'youtube.com/ninja',393971719,'1993805',230122),(4,'RickAstely','rick.roll@epic.troll.com','2010-02-10 07:30:17',3210919,'youtube.com/RickAstely',928347,'19890900',290198),(5,'MrBeast','mr.beast@gmail.com','2005-12-29 04:12:15',900073,'youtube.com/MrBeast',793001,'89001273',45001),(6,'arnold','arnold.sn@aol.com','2001-02-12 09:12:49',83712,'youtube.com/arnold',17301,'301223',4543),(7,'jcs','jcs@gmail.com','2021-06-25 23:12:02',53309,'youtube.com/jcs',23810,'3876100',7621),(8,'joji','joji@gmail.com','2022-01-01 00:00:01',1322309,'youtube.com/jsc',675410,'153876100',3937621),(9,'fireship','fireship@gmail.com','2019-05-18 18:59:23',12309,'youtube.com/fireship',175241,'150600',97109),(10,'vnnm','vnnm@dev.com','2003-10-03 00:20:01',69,'youtube.com/vnnm',0,'0',0),(11,'mewhenthecrimewatch','mwtcw@aol.com','2020-05-30 00:20:01',0,'youtube.com/mwtcw',0,'0',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement` (
  `adID` int NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `advertiser` varchar(255) NOT NULL,
  `skippable` tinyint(1) NOT NULL DEFAULT '0',
  `duration` int NOT NULL,
  PRIMARY KEY (`adID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,1029091,'Alphabet',0,30),(2,124290091,'Raid Shadow Legends',0,5),(3,293091,'Lenovo',0,30),(4,6760,'Panasonic',1,120),(5,3928102,'Swiggy',1,30),(6,992812,'Jockey',0,30),(7,829198918,'Grammarly',1,30);
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `commentID` int NOT NULL,
  `likes` int NOT NULL DEFAULT '0',
  `dislikes` int NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `hearted` tinyint(1) NOT NULL DEFAULT '0',
  `pinned` tinyint(1) NOT NULL DEFAULT '0',
  `commmented_time` datetime NOT NULL,
  PRIMARY KEY (`commentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,298,22,'That was a really great video, keep it up cuz me and most of us here are hooked!',1,1,'2022-10-25 15:21:39'),(2,2989,12,'Her dad pleading for help shook me to my core. We\'re used to hearing that from actors in movies but there\'s a desperation and a raw hollering tone that is just so horrifying.',0,0,'2021-12-25 02:21:19'),(3,29891,135,'The fact that she wrote in her journal that she\'s the happiest she\'s ever been in the midst of her daughter being missing says a LOT.',0,1,'2018-02-01 23:57:09'),(4,938,1,'First',0,0,'2022-06-19 00:59:01'),(5,192919,2993,'Who is still listening in 2025',1,1,'2019-10-10 23:59:11'),(6,3554,34,'Joji songs hit different when you\'re missing someone',1,1,'2022-04-19 03:12:30'),(7,987,12,'Every song is captivating, and haunting I always get a sense of nostalgia.',0,0,'2021-01-03 01:12:04'),(8,24987,212,'I\'ve hurt people Stephen. I\'ve taken a cookie from the cookie jar and lied about it. That kind of guilt weighs down on a good person like you and I',0,1,'2022-01-23 07:02:49'),(9,1929,9301,'These detectives are literally leaving the room and googling ΓÇ£how to obtain a confessionΓÇ¥ and then coming back in.',0,1,'2022-05-01 02:01:21'),(10,21929,301,'Me smiling like an idiot for 4 minutes straight',1,1,'2021-05-13 05:07:50'),(11,4212,31,'The fact that the cops staged the whole murder scene just to see how she reacted was hilarious',0,0,'2022-09-01 13:22:55');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_on`
--

DROP TABLE IF EXISTS `comments_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_on` (
  `accountID` int NOT NULL,
  `commentID` int NOT NULL,
  `videoID` int NOT NULL,
  PRIMARY KEY (`commentID`),
  KEY `FK_accountID` (`accountID`),
  KEY `FK_videoID` (`videoID`),
  CONSTRAINT `comments_on_ibfk_1` FOREIGN KEY (`videoID`) REFERENCES `video` (`videoID`) ON DELETE CASCADE,
  CONSTRAINT `comments_on_ibfk_2` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE,
  CONSTRAINT `comments_on_ibfk_3` FOREIGN KEY (`commentID`) REFERENCES `comment` (`commentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_on`
--

LOCK TABLES `comments_on` WRITE;
/*!40000 ALTER TABLE `comments_on` DISABLE KEYS */;
INSERT INTO `comments_on` VALUES (1,1,4),(10,2,6),(11,3,6),(5,4,1),(10,5,7),(10,6,13),(10,7,7),(11,8,10),(11,9,10),(10,10,14),(11,11,6);
/*!40000 ALTER TABLE `comments_on` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engage_with`
--

DROP TABLE IF EXISTS `engage_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engage_with` (
  `accountID` int NOT NULL,
  `commentID` int NOT NULL,
  `videoID` int NOT NULL,
  `adID` int NOT NULL,
  `engagement_rate_ad` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`commentID`),
  KEY `adID` (`adID`),
  KEY `videoID` (`videoID`),
  KEY `accountID` (`accountID`),
  CONSTRAINT `engage_with_ibfk_1` FOREIGN KEY (`adID`) REFERENCES `advertisement` (`adID`) ON DELETE CASCADE,
  CONSTRAINT `engage_with_ibfk_2` FOREIGN KEY (`videoID`) REFERENCES `video` (`videoID`) ON DELETE CASCADE,
  CONSTRAINT `engage_with_ibfk_3` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE,
  CONSTRAINT `engage_with_ibfk_4` FOREIGN KEY (`commentID`) REFERENCES `comment` (`commentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engage_with`
--

LOCK TABLES `engage_with` WRITE;
/*!40000 ALTER TABLE `engage_with` DISABLE KEYS */;
INSERT INTO `engage_with` VALUES (1,1,4,2,20.0000),(10,2,6,1,40.3400),(11,3,6,5,70.3400),(5,4,1,3,35.2100),(10,5,7,4,93.2300);
/*!40000 ALTER TABLE `engage_with` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `videoID` int NOT NULL,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`videoID`,`genre`),
  CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`videoID`) REFERENCES `video` (`videoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Battle Royale'),(1,'FPS'),(1,'Gaming'),(2,'Jazz'),(2,'Music'),(3,'Entertainment'),(4,'AI'),(4,'Gore'),(4,'Horror'),(4,'Machine Learning'),(5,'Arnold'),(5,'Body Building'),(6,'Psychology'),(7,'Break ups'),(7,'Music'),(7,'Relationships'),(8,'Code');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `adID` int NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`adID`,`location`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`adID`) REFERENCES `advertisement` (`adID`) ON DELETE CASCADE,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'California'),(2,'Israel'),(3,'Hong Kong'),(4,'Japan'),(5,'India'),(6,'United States');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play`
--

DROP TABLE IF EXISTS `play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play` (
  `accountID` int NOT NULL,
  `videoID` int NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`accountID`,`videoID`,`time`),
  KEY `videoID` (`videoID`),
  CONSTRAINT `play_ibfk_1` FOREIGN KEY (`videoID`) REFERENCES `video` (`videoID`) ON DELETE CASCADE,
  CONSTRAINT `play_ibfk_2` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play`
--

LOCK TABLES `play` WRITE;
/*!40000 ALTER TABLE `play` DISABLE KEYS */;
INSERT INTO `play` VALUES (9,1,'2022-10-05 04:54:10'),(11,2,'2022-10-10 00:34:10'),(11,4,'2022-10-10 00:54:10'),(9,6,'2022-11-10 00:54:10'),(11,6,'2022-11-10 00:54:10');
/*!40000 ALTER TABLE `play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `accountID` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_count` int NOT NULL DEFAULT '0',
  `visibility_status` varchar(255) DEFAULT 'public',
  `modified_time` datetime NOT NULL,
  PRIMARY KEY (`accountID`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Original Songs',4,'public','2009-10-05 02:32:49'),(5,'Failed Video Ideas',23,'private','2022-06-18 17:04:01'),(8,'Nectar',18,'public','2021-10-03 00:00:01'),(9,'Project Ideas',29,'public','2020-02-12 02:04:23'),(11,'Test',2,'private','2022-03-20 01:12:34');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `accountID` int NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'assumption, unique for any accountID',
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `post_time` datetime NOT NULL,
  PRIMARY KEY (`accountID`,`title`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'New epic fornite giveaway!','text','2017-01-09 20:19:34'),(6,'Post workout pump','image','2003-02-02 01:01:02'),(7,'New video soon!','text','2022-11-12 19:14:09'),(8,'Teaser for my upcoming single','audio','2022-05-29 10:30:02'),(11,'New jcs video is out guys!','text','2022-11-02 02:10:34');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `run`
--

DROP TABLE IF EXISTS `run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `run` (
  `adID` int NOT NULL,
  `videoID` int NOT NULL,
  PRIMARY KEY (`adID`,`videoID`),
  KEY `videoID` (`videoID`),
  CONSTRAINT `run_ibfk_1` FOREIGN KEY (`adID`) REFERENCES `advertisement` (`adID`) ON  DELETE CASCADE,
  CONSTRAINT `run_ibfk_2` FOREIGN KEY (`videoID`) REFERENCES `video` (`videoID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `run`
--

LOCK TABLES `run` WRITE;
/*!40000 ALTER TABLE `run` DISABLE KEYS */;
INSERT INTO `run` VALUES (1,2),(1,4),(2,5),(1,6),(3,6),(5,6);
/*!40000 ALTER TABLE `run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `subscriber` int NOT NULL,
  `subscribed` int NOT NULL,
  PRIMARY KEY (`subscriber`,`subscribed`),
  KEY `subscribed` (`subscribed`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`subscriber`) REFERENCES `account` (`accountID`) ON DELETE CASCADE,
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`subscribed`) REFERENCES `account` (`accountID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (10,1),(11,2),(5,4),(10,7),(11,7),(10,8);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload` (
  `accountID` int NOT NULL,
  `videoID` int NOT NULL,
  PRIMARY KEY (`accountID`,`videoID`),
  KEY `videoID` (`videoID`),
  CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`videoID`) REFERENCES `video` (`videoID`) ON DELETE CASCADE,
  CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (3,1),(4,2),(5,3),(2,4),(6,5),(7,6),(8,7),(9,8),(9,9),(7,10),(10,11),(10,12),(8,13),(8,14);
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `videoID` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int NOT NULL,
  `upload_time` datetime NOT NULL,
  `likes` int NOT NULL DEFAULT '0',
  `dislikes` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `revenue` int NOT NULL DEFAULT '0',
  `rating` varchar(2) NOT NULL DEFAULT '0',
  `clickthrough_percentage` decimal(18,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`videoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Epic Fortnite Battle Royal',631,'2010-10-25 10:30:10',100220,101,92911922,12900,'G',65.3400),(2,'Rick Astley - Never Gonna Give You Up',212,'2009-10-25 04:10:02',15000120,12101,1313754817,80110,'G',94.1200),(3,'Last To Take Hand Off Jet, Keeps It!',901,'2022-11-13 07:10:12',920154,364,12070763,2014,'G',97.1200),(4,'The Disturbing Art of A.I.',1202,'2022-10-02 03:18:40',99008,32,1440250,998,'PG',99.1200),(5,'How To Train For Mass',1012,'2015-10-15 09:11:40',929308,3245,79594001,6230,'G',79.2100),(6,'JCS In the mind of a killer',2498,'2014-03-09 12:32:40',1200230,756,24938467,2696,'PG',89.3400),(7,'Joji - Glimpse of Us',233,'2022-07-14 04:05:02',693128,234,49169640,3012,'G',48.3400),(8,'Stop calling Fleet a VS Code Killer',241,'2022-10-13 15:55:32',26982,87,491655,471,'G',92.5700),(9,'Python is better than C and 10 other lies you tell yourself',3993,'2020-10-18 00:02:32',3294938,3284,930482,939,'G',45.3400),(10,'What pretending to be crazy looks like',29830,'2019-04-01 12:02:32',3239389,84,1982748,939,'PG',93.4000),(11,'Princess Leia Metal Bikini',892,'2022-08-02 00:00:00',3248,93,3900011,3552,'R',89.3400),(12,'Miku Celery Dance',8923,'2021-10-03 00:00:00',32423,897,89001,5552,'G',99.3400),(13,'Joji - Ew',393,'2022-10-21 01:20:34',3425323,333,19219,2234,'G',45.2300),(14,'Joji - Gimme Love',345,'2022-11-21 02:24:34',32623,332,2121125,7816,'G',75.2300);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27 11:25:38
