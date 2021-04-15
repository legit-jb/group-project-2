-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: topmovies_db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `scififantasy`
--

DROP TABLE IF EXISTS `scififantasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scififantasy` (
  `Entry` int DEFAULT NULL,
  `Film` text,
  `Director` text,
  `Leading actors` text,
  `Year of cinema release` int DEFAULT NULL,
  `IMDB link` text,
  `Country` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scififantasy`
--

LOCK TABLES `scififantasy` WRITE;
/*!40000 ALTER TABLE `scififantasy` DISABLE KEYS */;
INSERT INTO `scififantasy` VALUES (1,'2001','Stanley Kubrick','Daniel Richter, Gary Lockwood, Keir Dullea, William Sylvester',1968,'http://www.imdb.com/title/tt0062622/','USA'),(2,'Metropolis','Fritz Lang','Alfred Abel, Brigitte Helm, Gustav Frohlich, Gustav Fruhlich',1927,'http://www.imdb.com/title/tt0017136/','Germany'),(3,'Blade Runner','Ridley Scott','Harrison Ford, Rutger Hauer, Sean Young',1982,'http://www.imdb.com/title/tt0083658/','USA'),(4,'Alien','Ridley Scott','Ian Holm, John Hurt, Sigourney Weaver, Tom Skerritt',1979,'http://www.imdb.com/title/tt0078748/','USA'),(5,'The Wizard of Oz','Victor Fleming','Bert Lahr, Frank Morgan, Jack Haley, Judy Garland, Ray Bolger',1939,'http://www.imdb.com/title/tt0032138/','USA'),(6,'ET','Steven Spielberg','Dee Wallace, Drew Barrymore, Henry Thomas, Peter Coyote',1982,'http://www.imdb.com/title/tt0083866/','USA'),(6,'Solaris',' Andrei Tarkovsky','Donatas Banionis, Juri Jarvet, Nataly Bondarchuk, Natalya Bondarchuk',1972,'http://www.imdb.com/title/tt0069293/','USA'),(8,'Spirited Away','Hayao Miyazaki','Daveigh Chase, Jason Marsden, Jason Marsdon, Mari Natsuki, Miyu Irino, Rumi Hiragi, Suzanne Pleshette',2001,'http://www.imdb.com/title/tt0245429/','Japan'),(9,'Star Wars  (1977)','George Lucas','Alec Guinness, Carrie Fisher, David Prowse, Harrison Ford, Mark Hamill, Peter Cushing, Peter Mayhew',1977,'http://www.imdb.com/title/tt0076759/','USA'),(10,'Close Encounters','Steven Spielberg','Melinda Dillon, Richard Dreyfuss',1977,'http://www.imdb.com/title/tt0075860/','USA'),(10,'King Kong','Ernest B Schoedsack, Merian C Cooper','Bruce Cabot, Ernest B Schoedsack, Fay Wray, Frank Reicher, James Flavin, John Armstrong, Noble Jhonson, Robert Armstrong',1933,'http://www.imdb.com/title/tt0024216/','USA'),(13,'The Matrix','Andy & Larry Wachowski','Carrie-Anne Moss, Keanu Reeves, Laurence Fishburne',1999,'http://www.imdb.com/title/tt0133093/','USA'),(14,'Alphaville','Jean Luc-Godard','Anna Karina, Eddie Constantine',1965,'http://www.imdb.com/title/tt0058898/','France'),(15,'Back to the Future','Robert Zemeckis','Christopher Lloyd, Crispin Glover, Lea Thompson, Michael J Fox, Michael J. Fox',1985,'http://www.imdb.com/title/tt0088763/','USA'),(16,'Planet of the Apes','Franklin J Schaffner ','Charlton Heston, Kim Hunter, Roddy McDowell',1968,'http://www.imdb.com/title/tt0063442/','USA'),(17,'Brazil','Terry Gilliam','Jonathan Pryce, Michael Palin, Robert De Niro',1985,'http://www.imdb.com/title/tt0088846/','UK'),(19,'Dark Star','John Carpenter','Brian Narelle, Dan O\'Bannon, Dre Pahich',1974,'http://www.imdb.com/title/tt0069945/','USA'),(20,'Day the Earth Stood Still','Robert Wise','Hugh Marlowe, Lock Martin, Michael Rennie, Patricia Neal',1951,'http://www.imdb.com/title/tt0043456/','USA'),(21,'Edward Scissorhands','Tim Burton','Dianne Wiest, Johnny Depp, Winona Ryder',1990,'http://www.imdb.com/title/tt0099487/','USA'),(22,'Akira','Katsuhiro Otomo','Mitsuo Iwata, Nozomu Sasaki, Mami Koyama, Tessho Genda',1988,'http://www.imdb.com/title/tt0094625/','Japan'),(23,'Princess Bride','Rob reiner','Billy Crystal, Carty Elwes, Cary Elwes, Mandy Patinkin, Peter Falk, Robin Wright',1987,'http://www.imdb.com/title/tt0093779/','USA'),(24,'Panâ€™s Labyrinth','Guillermo del Toro',' Ariadna Gil, Doug Jones, Ivana Baquero, Maribel Verdu, Sergi Lopez',2006,'http://www.imdb.com/title/tt0457430/','Spain'),(25,'Starship Troopers','Paul Verhoeven','Casper Van Dien, Clancy Brown, Dina Meyer, Jake Busey, Michael Ironside',1997,'http://www.imdb.com/title/tt0120201/','USA');
/*!40000 ALTER TABLE `scififantasy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15 12:15:40
