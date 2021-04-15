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
-- Table structure for table `horror`
--

DROP TABLE IF EXISTS `horror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horror` (
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
-- Dumping data for table `horror`
--

LOCK TABLES `horror` WRITE;
/*!40000 ALTER TABLE `horror` DISABLE KEYS */;
INSERT INTO `horror` VALUES (1,'Psycho','Alfred Hitchcock','Anthony Perkins, Janet Leigh, Vera Miles',1960,'http://www.imdb.com/title/tt0054215/','USA'),(2,'Rosemaryâ€™s Baby','Roman Polanski','John Cassavetes, Mia Farrow, Ruth Gordon',1968,'http://www.imdb.com/title/tt0063522/','USA'),(3,'Donâ€™t Look Now','Nicholas Roeg','Donald Sutherland, Hilary Mason, Julie Christie',1973,'http://www.imdb.com/title/tt0069995/','UK'),(4,'The Wicker Man','Robin Hardy','Britt Ekland, Christopher Lee, Edward Woodward',1973,'http://www.imdb.com/title/tt0070917/','UK'),(5,'The Shining','Stanley Kubrick','Danny Lloyd, Jack Nicholson, Shelley Duval',1980,'http://www.imdb.com/title/tt0081505/','USA'),(6,'The Exorcist','William Friedkin','Ellen Burstyn, Linda Blair, Max von Sydow',1973,'http://www.imdb.com/title/tt0070047/','USA'),(7,'Nosferatu  (1922)','FW Mernau','Alexander Granach, Greta Schroder, Gustav von Wangenheim, Max Schreck',1922,'http://www.imdb.com/title/tt0013442/','Germany'),(8,'Let the Right One In','Tomas Alfredson',' Henrik Dahl, Kare Hedebrant, Karin Bergquist, Lina Leandersson, Per Ragnar, Peter Carlberg',2008,'http://www.imdb.com/title/tt1139797/','Sweden'),(9,'Vampyr','Carl Theodor Dreyer','Henriette GÃ©rard, Henriette Gerard, Julian West, Sybille Schmitz',1932,'http://www.imdb.com/title/tt0023649/','Germany'),(10,'Peeping Tom','Michael Powell','Anna Massey, Carl Boehm, Esmond Knight, Karl Bohm, Maxine Audley, Moira Shearer',1960,'http://www.imdb.com/title/tt0054167/','UK'),(11,'The Innocents','Jack Clayton','Clytie Jessop, Deborah Kerr, Michael Redgrave, Peter Wyngarde',1961,'http://www.imdb.com/title/tt0055018/','USA'),(12,'Ringu','Hideo Nakata','Nanako Matsushima, Hiroyuki Sanada,  Rikiya Otaka',1998,'http://www.imdb.com/title/tt0178868/','Japan'),(13,'The Haunting','Robert Wise','Claire Bloom, Julie Harris, Richard Johnson',1963,'http://www.imdb.com/title/tt0057129/','USA'),(14,'Texas Chainsaw Massacre','Tobe Hooper',' Edwin Neal, Jim Siedow, Marilyn Burns, Paul A Partain',1974,'http://www.imdb.com/title/tt0072271/','USA'),(15,'Dead of Night','Alberto Cavalcanti, Charles Crichton','Googie Withers, Mervyn Johns, Michael Redgrave',1945,'http://www.imdb.com/title/tt0037635/','UK'),(16,'The Cabinet of Dr Caligari','Robert Wiene','Conrad Veidt, Lil Dagover, Werner Krauss',1920,'http://www.imdb.com/title/tt0010323/','Germany'),(17,'Halloween','John Carpenter','Donald Pleasance, Donald Pleasence, Jamie Lee Curtis, Nancy Loomis, Tony Moran',1978,'http://www.imdb.com/title/tt0077651/','USA'),(18,'Bride of Frankenstein','James Whale','Boris Karloff, Colin Clive, Elsa Lanchester',1935,'http://www.imdb.com/title/tt0026138/','USA'),(19,'Les Diaboliques','Henri-Georges Clouzot','Paul Meurisse, Simone Signoret, Vera Clouzot',1955,'http://www.imdb.com/title/tt0046911/','France'),(20,'Audition','Miike Takashi','Eihi Shiina, Ishibashi Renji, Ishibashi Ryo, Matsuda Miyuki, Renji Ishibashi, Ryo Ishibashi, Shiina Eihi',1999,'http://www.imdb.com/title/tt0235198/','Korea'),(20,'Dracula   (1958)','Terence Fisher','Christopher Lee, Melissa Stribling, Michael Gough, Peter Cushing',1958,'http://www.imdb.com/title/tt0051554/','UK'),(22,'The Blair Witch Project','Daniel Myrick, E Sanchez','Heather Donahue, Joshua Leonard, Michael C. Williams',1999,'http://www.imdb.com/title/tt0185937/','USA'),(24,'Carrie','Brian De Palma','John Travolta, Piper Laurie, Sissy Spacek',1976,'http://www.imdb.com/title/tt0074285/','USA'),(25,'Les Vampires (1915)','Louis Feuillade','Edouard Mathe, Marcel Levesque',1915,'http://www.imdb.com/title/tt0006206/','France');
/*!40000 ALTER TABLE `horror` ENABLE KEYS */;
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
