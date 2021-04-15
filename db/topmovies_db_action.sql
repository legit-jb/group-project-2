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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
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
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'Apocalypse Now','Francis Coppola','Dennis Hopper, Frederic Forrest, Laurence Fishburne, Marlon Brando, Martin Sheen, Robert Duvall, Rpobert Duvall',1979,'http://www.imdb.com/title/tt0078788/','USA'),(2,'North by Northwest','Alfred Hitchcock',' Cary Grant, Eva Marie Saint, Eva Marie Saint, James Mason, Jessie Royce Landis, Leo G Carroll, Martin Landau',1959,'http://www.imdb.com/title/tt0053125/','USA'),(3,'Once Upon a Time in the West','Sergio Leone','Charles Bronson, Claudia Cardinale, Henry Fonda, Jason Robards',1968,'http://www.imdb.com/title/tt0064116/','Italy'),(4,'The Wild Bunch','Sam Pekinpah','Ernest Borgnine, Robert Ryan, William Holden',1969,'http://www.imdb.com/title/tt0065214/','USA'),(5,'Deliverance','John Boorman ','Burt Reynolds, Jon Voight, Ned Beatty',1972,'http://www.imdb.com/title/tt0068473/','USA'),(6,'City of God','Fernando Meirelles','Alexandre Rodrigues, Leandro Firmino da Hora, Matheus Nachtergaele, Phelipe Haagensen',2002,'http://www.imdb.com/title/tt0317248/','Brazil'),(7,'Paths of Glory','Stanley Kubrick','Adolphe Menjou, Kirk Douglas, Ralph Meeker',1957,'http://www.imdb.com/title/tt0050825/','USA'),(7,'The Wages of Fear','Henri-Georges Clouzot','Charles Vanel, Folco Lulli, Yves Montand',1953,'http://www.imdb.com/title/tt0046268/','France'),(9,'Crouching Tiger Hidden Dragon','Ang Lee','Chang Chen, Chow Yun-Fat, Michelle Yeoh, Zhang Ziyi, Ziyi Zhang',2000,'http://www.imdb.com/title/tt0190332/','Taiwan'),(10,' The Thin Red Line','Terrence Malik','Adrien Brody, Ben Chaplin, Nick Nolte, Sean Penn',1998,'http://www.imdb.com/title/tt0120863/','USA'),(11,'Raiders of the Lost Ark','Steven Spielberg','Harrison Ford, Karen Allen, Paul Freeman, Ronald Lacey',1981,'http://www.imdb.com/title/tt0082971/','USA'),(12,' Bullitt','Peter Yates','Jacqueline Bisset, Robert Vaughn, Steve McQueen',1968,'http://www.imdb.com/title/tt0062765/','USA'),(12,'Ran','Akira Kurosawa','Akira Terao, Daisuke Ryu, Mieko Harada, Tatsuya Nakadai',1985,'http://www.imdb.com/title/tt0089881/','Japan'),(14,'Die Hard','John McTeirnan','Alan Rickman, Bonnie Bedelia, Bruce Willis',1988,'http://www.imdb.com/title/tt0095016/','Japan'),(15,'The Adventures of Robin Hood','Michael Curtiz, William Keighley','Basil Rathbone, Claude Rains, Errol Flynn, Olivia De Havilland, Olivia de Havilland, William Keighley',1938,'http://www.imdb.com/title/tt0029843/','USA'),(16,' The Searchers','John Ford','Jeffrey Hunter, John Wayne, Natalie Wood, Vera Miles, Ward Bond',1956,'http://www.imdb.com/title/tt0049730/','USA'),(17,'Goldfinger','Guy Hamilton',' Bernard Lee, Gert Frobe, Harold Sakata, Honor Blackman, Lois Maxwell, Sean Connery, Shirley Eaton, Tania Mallet',1964,'http://www.imdb.com/title/tt0058150/','UK'),(18,'Full Metal Jacket','Stanley Kubrick','Adam Baldwin, Lee Ermey, Matthew Modine, Vincent D\'Onofrio',1987,'http://www.imdb.com/title/tt0093058/','USA'),(18,'Last of the Mohicans','Michael Mann','Daniel Day-Lewis, Jodhi May, Madeleine Stowe',1992,'http://www.imdb.com/title/tt0104691/',''),(20,'Deer Hunter','Michael Cimino','Christopher Walken, Meryl Streep, Robert De Niro',1978,'http://www.imdb.com/title/tt0077416/','USA'),(21,'Gladiator','Ridley Scott','Connie Nielsen, Joaquin Phoenix, Oliver Reed, Russell Crowe',2000,'http://www.imdb.com/title/tt0172495/','USA'),(22,'Rome Open City','Roberto Rossellini','Aldo Fabrizi, Anna Magnani, Marcello Pagliero',1945,'http://www.imdb.com/title/tt0038890/','Italy'),(23,'Butch Cassidy','George Roy Hill','Katharine Ross, Paul Newman, Robert Redford',1969,'http://www.imdb.com/title/tt0064115/','USA'),(23,'Where Eagles Dare','Brian G. Hutton','Clint Eastwood, Mary Ure, Richard Burton',1968,'http://www.imdb.com/title/tt0065207/','USA'),(25,'The Incredibles','Brad Bird','Craig T Nelson, Holly Hunter, Jason Lee, Samuel L Jackson',2004,'http://www.imdb.com/title/tt0317705/','USA');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
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
