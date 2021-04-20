-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sports_player_lookup
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sport_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `image` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_players_sports_idx` (`sport_id`),
  CONSTRAINT `fk_players_sports` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,1,'Lebron','James','Male','https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/1966.png',NULL,NULL),(2,1,'Anthony','Davis','Male','https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6583.png',NULL,NULL),(3,1,'Stephen','Curry','Male','https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3975.png',NULL,NULL),(4,1,'Sheryl','Swoopes','Female','https://pyxis.nymag.com/v1/imgs/286/b7c/ee91fd2966dcccf25e33932191e408ade2-04-sheryl-swoopes.rvertical.w330.jpg',NULL,NULL),(5,2,'Samantha','Bricio','Female','https://i.ytimg.com/vi/MX__MVidgeo/maxresdefault.jpg',NULL,NULL),(6,2,'Dmitriy','Muserskiy','Male','https://media.gettyimages.com/photos/dmitriy-muserskiy-of-russia-serves-the-ball-during-the-fivb-world-picture-id455178194?s=612x612',NULL,NULL),(7,1,'Tamika','Catchings','Female','https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2F8points9seconds.com%2Ffiles%2F2016%2F09%2F9172647-tamika-catchings-olympic-preview-team-usa-media-summit.jpg',NULL,NULL),(8,2,'Lorenzo','Bernardi','Male','https://volleybox.net/media/upload/players/1570966498SLP3G.png',NULL,NULL),(9,3,'Kelsie','Whitmore','Female','https://pbs.twimg.com/media/EyTv4RRVcAAyMR-.jpg',NULL,NULL),(10,3,'Alta','Weiss','Female','https://www.ohiohistory.org/OHC/media/OHC-Media/Sports%20Blog/Content/Lois-Youngen.jpg',NULL,NULL),(11,4,'Lionel','Messi','Male','https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ec595d45f39760007b05c07%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D989%26cropX2%3D2480%26cropY1%3D74%26cropY2%3D1564',NULL,NULL),(12,4,'Cristiano','Ronaldo','Male','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/220px-Cristiano_Ronaldo_2018.jpg',NULL,NULL),(13,3,'Hank','Aaron','Male','https://149346005.v2.pressablecdn.com/wp-content/uploads/2021/01/Hank-Aaron.jpg',NULL,NULL),(14,4,'Pernille','Harder','Female','https://img.fifa.com/image/upload/t_l1/xuvv22ttjjgfejs7tjkh.jpg',NULL,NULL),(15,5,'Zinedine','Zidane','Male','https://site-cdn.givemesport.com/images/21/02/12/3dd01847adcccbbea65929fcea6a4113/320.jpg',NULL,NULL),(16,5,'Jordyn','Huitema','Female','https://img.olympicchannel.com/images/image/private/t_16-9_760/primary/vuwjipfc7arqpihvna45',NULL,NULL),(17,5,'David','Beckham','Male','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdLcLh4SXpY_Jw2hd49CmBx17RVBhxFsnR7ntxquuTjLZLo7xgO_psRLQ5vpWj4GKz7UA&usqp=CAU',NULL,NULL),(18,3,'Mookie','Betts','Male','data:image/jpeg;base64,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',NULL,NULL),(19,4,'Vivianne','Miedema','Female','https://i.guim.co.uk/img/media/62b2264d8dc40e3900ed8fbc363c8d4d47ea6010/493_50_2228_1337/master/2228.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=ef2be615c0e8babe9fc8097c80f1920a',NULL,NULL),(20,3,'Mike','Trout','Male','https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5cfe6e6c4c687b0008593078%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D526%26cropX2%3D2241%26cropY1%3D121%26cropY2%3D1835',NULL,NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'Basketball',NULL,NULL),(2,'Volleyball',NULL,NULL),(3,'Baseball',NULL,NULL),(4,'Soccer',NULL,NULL),(5,'Football',NULL,NULL);
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 21:45:46
