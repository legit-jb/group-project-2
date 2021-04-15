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
-- Table structure for table `comedy`
--

DROP TABLE IF EXISTS `comedy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comedy` (
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
-- Dumping data for table `comedy`
--

LOCK TABLES `comedy` WRITE;
/*!40000 ALTER TABLE `comedy` DISABLE KEYS */;
INSERT INTO `comedy` VALUES (1,'Annie Hall','Woody Allen','Carol Kane, Diane Keaton, Paul Simon, Tony Roberts, Woody Allen',1977,'http://www.imdb.com/title/tt0075686/','USA'),(2,'Borat','Larry Charles','Ken Davitian, Pamela Anderson , Sacha Baron Cohen',2006,'http://www.imdb.com/title/tt0443453/','USA'),(3,'Some Like it Hot','Billy Wilder','George Raft, Jack Lemmon, Joe E Brown, Marilyn Monroe, Tony Curtis',1959,'http://www.imdb.com/title/tt0053291/','USA'),(4,'Team America','Trey Parker','Kristen Miller, Matt Stone, Trey Parker',2004,'http://www.imdb.com/title/tt0372588/','USA'),(5,'Dr Strangelove','Stanley Kubrick','George C Scott, Peter Sellers, Sterling Hayden',1964,'http://www.imdb.com/title/tt0057012/','UK'),(5,'The Ladykillers','Alexander Mackendrick','Alec Guinness, Cecil Parker, Herbert Lom, Peter Sellers',1955,'http://www.imdb.com/title/tt0048281/','UK'),(7,'Duck Soup','Leo McCarey','Chico Marx, Groucho Marx, Harpo Marx, Margaret Dumont, The Marx Brothers, Zeppo Marx',1933,'http://www.imdb.com/title/tt0023969/','USA'),(7,'Rushmore','Wes Anderson',' Bill Murray, Brian Cox, Jason Schwartzman, Olivia Williams',1998,'http://www.imdb.com/title/tt0128445/','USA'),(9,'Kind Hearts & Coronets','Robert Hamer','Alec Guinness, Dennis Price, Joan Greenwood',1949,'http://www.imdb.com/title/tt0041546/','UK'),(10,'Monty Pythonâ€™s Life of Brian','Terry Jones','Eric Idle, Graham Chapman, John Cleese, Michael Palin, Terry Gilliam, Terry Jones',1979,'http://www.imdb.com/title/tt0079470/','UK'),(11,'Airplane!','Jim Abrahams, David Zucker and Jerry Zucker','Julie Hagerty, Leslie Nielsen, Robert Hays',1980,'http://www.imdb.com/title/tt0080339/','USA'),(12,'Election','Alexander Payne','Chris Klein, Matthew Broderick, Reese Witherspoon',1999,'http://www.imdb.com/title/tt0126886/','USA'),(12,'His Girl Friday','Howard Hawkes','Cary Grant, Gene Lockhart, Ralph Bellamy, Rosalind Russell',1940,'http://www.imdb.com/title/tt0032599/','USA'),(12,'The Big Lebowski','Joel Coen','Jeff Bridges, John Goodman, Julianne Moore, Steve Buscemi',1998,'http://www.imdb.com/title/tt0118715/','USA'),(15,'This Is Spinal Tap','Rob Reiner',' Christopher Guest, Harry Shearer, Michael McKean, Rob Reiner',1984,'http://www.imdb.com/title/tt0088258/','USA'),(16,'Bringing Up Baby','Howard Hawkes','Cary Grant, Katharine Hepburn, Katherine Hepburn',1938,'http://www.imdb.com/title/tt0029947/','USA'),(17,'Thereâ€™s Something About Mary','Peter & Bob Farrelly','Ben Stiller, Cameron Diaz, Lee Evans, Matt Dillon',1998,'http://www.imdb.com/title/tt0129387/','USA'),(18,'Dazed and Confused','Richard Linklater','Adam Goldberg, Jason London, Joey Lauren Adams, Joey Lauren Adams, Milla Jovovich, Rory Cochrane, Shawn Andrew',1993,'http://www.imdb.com/title/tt0106677/','USA'),(18,'MASH','Robert Altman','Donald Sutherland, Elliott Gould, Sally Kellerman',1970,'http://www.imdb.com/title/tt0066026/','USA'),(20,'Groundhog Day','Harold Ramis','Andie MacDowell, Bill Murray, Chris Elliott, Stephen Tobolowsky',1993,'http://www.imdb.com/title/tt0107048/','USA'),(21,'Clueless','Amy Heckerling','Alicia Silverstone, Dan Hedaya, Stacey Dash',1995,'http://www.imdb.com/title/tt0112697/','USA'),(22,'The Great Dictator','Charlie Chaplin','Charlie Chaplin, Jack Oakie, Paulette Goddard',1940,'http://www.imdb.com/title/tt0032553/','USA'),(23,'Clerks','Kevin Smith','Brian O\'Halloran, Jeff Anderson, Marilyn Ghigliotti',1994,'http://www.imdb.com/title/tt0109445/','USA'),(24,'The Jerk','Carl Reiner','Steve Martin',1979,'http://www.imdb.com/title/tt0079367/','USA'),(25,'Shaun of the Dead','Edgar Wright','Dylan Moran, Kate Ashfield, Nick Frost, Simon Pegg',2004,'http://www.imdb.com/title/tt0365748/','UK');
/*!40000 ALTER TABLE `comedy` ENABLE KEYS */;
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
