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
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crime` (
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
-- Dumping data for table `crime`
--

LOCK TABLES `crime` WRITE;
/*!40000 ALTER TABLE `crime` DISABLE KEYS */;
INSERT INTO `crime` VALUES (1,'Chinatown','Roman Polanski','Faye Dunaway, Jack Nicholson, John Huston',1974,'http://www.imdb.com/title/tt0071315/','USA'),(2,'Touch of Evil','Orson Welles','Charlton Heston, Janet Leigh, Marlene Dietrich, Orson Welles, Zsa Zsa Gabor',1958,'http://www.imdb.com/title/tt0052311/','USA'),(3,'Vertigo','Alfred Hitchcock','Barbara Bel Geddes, James Stewart, Kim Novak',1958,'http://www.imdb.com/title/tt0052357/','USA'),(4,' Badlands','Terrence Malik','Alan Vint, Martin Sheen, Ramon Bieri, Sissy Spacek, Warren Oates',1973,'http://www.imdb.com/title/tt0069762/','USA'),(5,'Rashomon','Akira Kurosawa','Machiko Kyo, Masayuki Mori, Toshiro Mifune',1950,'http://www.imdb.com/title/tt0042876/','Japan'),(6,'Double Indemnity','Billy Wilder','Porter Hall, Jean Heather, Byron Barr, Richard Gaines, John Philliber, Edward G.\nRobinson, Fred MacMurray and Barbara Stanwyck',1944,'http://www.imdb.com/title/tt0036775/','USA'),(7,'Get Carter','Mike Hodges','Brian Mosley, Britt Ekland, Geraldine Moffatt, John Osborne, Michael Caine',1971,'http://www.imdb.com/title/tt0067128/','UK'),(8,'Pulp Fiction','Quentin Tarantino','Amanda Plummer, Bruce Willis, Eric Stoltz, Harvey Keitel, John Travolta, Rosanna Arquette, Samuel L Jackson, Steve Buscemi, Tim Roth, Uma Thurman',1994,'http://www.imdb.com/title/tt0110912/','USA'),(9,'Hidden',' Michael Haneke','Annie Girardot, Daniel Auteuil, Juliette Binoche, Maurice Benichou',2005,'http://www.imdb.com/title/tt0387898/','France'),(10,'Goodfellas','Martin Scorsese',' Frank Vincent, Joe Pesci, Lorraine Bracco, Ray Liotta, Robert De Niro',1990,'http://www.imdb.com/title/tt0099685/','USA'),(11,'The Conversation','Francis Coppola, Francis Ford Coppola','Allen Garfield, Gene Hackman, John Cazale',1974,'http://www.imdb.com/title/tt0071360/','USA'),(12,'Bonnie & Clyde','Arthur Penn','Faye Dunaway, Gene Hackman, Michael J Pollard, Warren Beatty',1967,'http://www.imdb.com/title/tt0061418/','USA'),(13,'The Killing','Stanley Kubrick',' Coleen Gray, Elisha Cook Junior, Jay C Flippen, Sterling Hayden, Vince Edwards',1956,'http://www.imdb.com/title/tt0049406/','USA'),(14,'French Connection','William Friedkin','Fernando Rey, Gene Hackman, Roy Schieder, Tony Lo Bianco',1971,'http://www.imdb.com/title/tt0067116/','USA'),(15,'The Big Sleep','Howard Hawkes','Bob Steele, Elisha Cook Jr, Elisha Cook Jr., Humphrey Bogart, Lauren Bacall',1946,'http://www.imdb.com/title/tt0038355/','USA'),(16,'La Ceremonie','Claude Chabrol','Isabelle Huppert, Jacqueline Bisset, Sandrine Bonnaire',1995,'http://www.imdb.com/title/tt0112769/','France'),(17,'Point Blank','John Boorman','Angie Dickinson, Keenan Wynn, Lee Marvin',1967,'http://www.imdb.com/title/tt0062138/','USA'),(18,'Hard Boiled','John Woo','Chow Yun Fat, Tony Leung',1992,'http://www.imdb.com/title/tt0104684/','Hong Kong'),(19,'Long Good Friday','John McKenzie','Bob Hoskins, Bryan Marshall, Dave King, Helen Mirren',1980,'http://www.imdb.com/title/tt0081070/','UK'),(20,'A Prophet','Jacques Audiard ','Adel Bencherif, Niels Arestrup, Tahar Rahim, Tahar Ramin',2009,'http://www.imdb.com/title/tt1235166/','France'),(20,'Heat','Michael Mann','Al Pacino, Ashley Judd, Jon Voight, Robert De Niro, Tom Sizemore, Val Kilmer',1995,'http://www.imdb.com/title/tt0113277/','USA'),(20,'Scarface (1983)','Brian De Palma','Al Pacino, Mary Elizabeth Mastrantonio, Michelle Pfeiffer, Robert Loggia, Steven Bauer',1983,'http://www.imdb.com/title/tt0086250/','USA'),(23,'Millerâ€™s Crossing','Joel Coen','Albert Finney, Gabriel Byrne, Marcia Gay Harden',1990,'http://www.imdb.com/title/tt0100150/','USA'),(24,'Postman Always Rings Twice  (1942)','Tay Garnett','Cecil Kellaway, John Garfield, Lana Turner',1946,'http://www.imdb.com/title/tt0038854/','USA'),(25,'Jour Se Leve','Marcel Carne','Annabella, Arletty, Jean Gabin',1939,'http://www.imdb.com/title/tt0031514/','France');
/*!40000 ALTER TABLE `crime` ENABLE KEYS */;
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
