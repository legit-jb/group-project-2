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
-- Table structure for table `romance`
--

DROP TABLE IF EXISTS `romance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `romance` (
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
-- Dumping data for table `romance`
--

LOCK TABLES `romance` WRITE;
/*!40000 ALTER TABLE `romance` DISABLE KEYS */;
INSERT INTO `romance` VALUES (1,'Brief Encounter','David Lean ','Celia Johnson, Cyril Raymond, Stanley Holloway, Trevor Howard',1945,'http://www.imdb.com/title/tt0037558/','UK'),(2,'Casablanca','Michael Curtiz','Claude Rains, Humphrey Bogart, Ingrid Bergman, Paul Henreid',1942,'http://www.imdb.com/title/tt0034583/','USA'),(3,'Before Sunrise','Richard Linklater','Ethan Hawke and Julie Delpy',1995,'http://www.imdb.com/title/tt0112471/','USA'),(3,'Before Sunset','Richard Linklater','Ethan Hawke and Julie Delpy',2004,'http://www.imdb.com/title/tt0381681/awards','USA'),(4,'Breathless','Jean-Luc Godard','Jean Seberg, Jean-Paul Belmondo',1960,'http://www.imdb.com/title/tt0053472/','France'),(5,'In the Mood for Love','Kar Wai Wong','Maggie Cheung Man-Yuk, Rebecca Pan, Tony Leung Chiu-Wai',2000,'http://www.imdb.com/title/tt0118694/','Hong Kong'),(6,'The Apartment','Billy Wilder','Fred MacMurray, Jack Lemmon, Ray Walston, Shirley MacLaine',1960,'http://www.imdb.com/title/tt0053604/','USA'),(7,'Hannah & Her Sisters','Woody Allen ','Barbara Hershey, Carrie Fisher, Dianne Wiest, Julie Kavner, Mia Farrow, Michael Caine, Woody Allen',1986,'http://www.imdb.com/title/tt0091167/','USA'),(8,'Eternal Sunshine of the Spotless Mind','Michel Gondry','Elijah Wood, Jim Carrey, Kate Winslet, Kirsten Dunst, Mark Ruffalo, Tom Wilkinson',2004,'http://www.imdb.com/title/tt0338013/','USA'),(9,'Room With a View','James Ivory','Helena Bonham Carter, Julian Sands, Maggie Smith',1985,'http://www.imdb.com/title/tt0091867/','UK'),(10,'Jules et Jim','FranÃ§ois Truffaut','Henri Serre, Jeanne Moreau, Oscar Werner, Oskar Werner',1962,'http://www.imdb.com/title/tt0055032/','France'),(11,'All That Heaven Allows','Douglas Sirk','Jane Wyman, Rock Hudson',1955,'http://www.imdb.com/title/tt0047811/','USA'),(12,'Gone with the Wind','Victor Fleming','Anne Rutherford, Clark Gable, Hattie McDaniel, Leslie Howard, Olivia De Havilland, Vivien Leigh',1939,'http://www.imdb.com/title/tt0031381/','USA'),(13,'An Affair to Remember','Leo McCarey','Cary Grant, Deborah Kerr, Richard Denning',1957,'http://www.imdb.com/title/tt0050105/','USA'),(14,'Umbrellas of Cherbourg','Jaques Demy ','Anne Vernon, Catherine Deneuve, Nino Castelnuovo',1964,'http://www.imdb.com/title/tt0058450/','France'),(15,'Lost in Translation','Sofia Coppola','Bill Murray, Giovanni Ribisi, Scarlett Johansson',2003,'http://www.imdb.com/title/tt0335266/','USA'),(15,'Roman Holiday','William Wyler','Audrey Hepburn, Gregory Peck',1953,'http://www.imdb.com/title/tt0046250/','USA'),(15,'Wall-E','Andrew Stanton','Ben Burtt, Fred Willard, Jeff Garlin, Kathy Najimy, Sigourney Weaver',2008,'http://www.imdb.com/title/tt0910970/','USA'),(18,'My Night With Maud','Eric Rohmer',' Francoise Fabian, Jean-Louis Trintignant',1969,'http://www.imdb.com/title/tt0064612/','France'),(19,'Voyage to Italy','Roberto Rossellini','Ingrid Bergman',1954,'http://www.imdb.com/title/tt0046511/','Italy'),(20,'Dr Zhivago','David Lean','Geraldine Chaplin, Julie Christie, Omar Sharif',1965,'http://www.imdb.com/title/tt0059113/','USA'),(21,'Harold & Maude','Hal Ashby','Bud Cort, Cyril Cusack, Ruth Gordon, Vivian Pickles',1971,'http://www.imdb.com/title/tt0067185/','USA'),(22,'When Harry Met Sally','Rob Reiner','Billy Crystal, Bruno Kirby, Carrie Fisher, Meg Ryan',1989,'http://www.imdb.com/title/tt0098635/','USA'),(23,'Say Anything....','Cameron crowe','John Cusack, Ione Skye, John Mahoney',1989,'http://www.imdb.com/title/tt0098258/','USA'),(24,'Fabulous Baker Boys','Steve Kloves','Beau Bridges, Jeff Bridges, Michelle Pfeiffer',1989,'http://www.imdb.com/title/tt0097322/','USA'),(25,'A Matter of Life & Death',' Emeric Pressburger, Michael Powell',' David Niven, Kim Hunter, Raymond Massey, Richard Attenborough, Roger Livesey',1946,'http://www.imdb.com/title/tt0038733/','UK');
/*!40000 ALTER TABLE `romance` ENABLE KEYS */;
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
