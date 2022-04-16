-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cookchef
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `recipe_table`
--

DROP TABLE IF EXISTS `recipe_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `cooking_time` int DEFAULT NULL,
  `recipe` text,
  `ingredients` text,
  `image_name` varchar(50) DEFAULT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `recipe_table_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `recipe_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_table`
--

LOCK TABLES `recipe_table` WRITE;
/*!40000 ALTER TABLE `recipe_table` DISABLE KEYS */;
INSERT INTO `recipe_table` VALUES (1,'Aloo Tikki',15,' Step 1 : Take a bowl.\r<br>Step 2 : Add potato and spices. Mix well.\r<br>Step 3 : Make shape of tikki.\r<br>Step 4 : Shallow fry these tikkis.\r<br>Step 5 : Serve hot with sauce or chutney.','Ingredient 1 : 3-4 boiled potatoes.\r<br>Ingredient 2 : as per taste salt.\r<br>Ingredient 3 : 1/2 teaspoon red chilli powder.\r<br>Ingredient 4 : 1 teaspoon chat masala.\r<br>Ingredient 5 : as needed oil.\r<br>','L4HRAFH_Aloo tikki.jpg',1),(7,'Banarasiya Thandai',10,'Step 1 : In a mixer add cashews, almond, saffron, black peppercorn, cardamon seeds, pistachio, rose, fennel seeds and make a powder of it.\r<br>Step 2 : Now in a mixer jar add 1 glass milk, add thandai powder, sugar, saffron and mix it well. Top it with dry fruits, flowers,edible colours and its done.','Ingredient 1 : 1/4 cup almonds.\r<br>Ingredient 2 : 10-12 peppercorn.\r<br>Ingredient 3 : 1/4 cup cashew\r<br>Ingredient 4 : pinch saffron\r<br>Ingredient 5 : 3 tsp fennel seeds.\r<br>Ingredient 6 : 2 cups milk.\r<br>Ingredient 7 : as required sugar.\r<br>Ingredient 8 : as needed flower. ','L4JDKM4_banarasiya thandai.jpg',1),(14,'Aloo Kachora',30,'   Step 1 : In a bowl, add potatoes, salt and red chilli powder.\r<br>Step 2 : Add chopped coriander leaves and mix all the stuffing. Keep aside and let them cool\r<br>Step 3 : Knead a soft dough of wheat flour.\r<br>Step 4 : Now pinch a small size of dough flatten it with water and place stuffing over it.\r<br>Step 5 : Again wet your palm and seal from all the sides and make a ball. Now keep this ball on a wet plate and flatten it carefully and slowly otherwise it will break.\r<br>Step 6 : Heat oil in a wok and fry it till crisp and brown from both sides.\r<br>Step 7 : Serve hot with chutney.','Ingredient 1 : 2 cups wheat flour.\r<br>Ingredient 2 : as per taste salt.\r<br>Ingredient 3 : 1 pinch soda.\r<br>Ingredient 4 : 4 boiled potatoes.\r<br>Ingredient 5 : 1 teaspoon red chilli powder.\r<br>Ingredient 6 : few coriander leaves.\r<br>Ingredient 7 : as required oil for frying.','BHNE29S_Aloo Kachori.jpg',2),(15,'Masala Dosa',30,'Step 1 : To prepare the batter, first wash and soak rice and urad dal in separate containers for approximately 6-8 hours. Once they are soaked well grind them separately till the mixture reaches smooth consistency. Mix the batter of both ingredients in a bigger conatainer and add salt to it. Combine well and allow it to ferment overnight.\r<br>Step 2 : Now, for potato filling, heat 2 tbsp oil in thick bottomed pan and let the mustard seeds splutter. Then add sliced onions, curry leaves, green chillies and saute them till onions turn pink. Then add a pinch of salt, turmeric powder and mix them well. Now take the cubed potatoes and add them to sauteed onions and mix them together. Pour water gradually to the mixture and allow potatoes to simmer for around 4 minutes. When the mixture is in semi-thick state, it\'s finally ready.\r<br>Step 3 : Now, take a Dosa tawa and heat it on a low-medium flame. Smear 1 tsp oil on it to prepare the Dosa. When tawa is hot pour and spread the batter evenly in a circular motion.\r<br>Step 4 : When the colour of dosa\'s edges turns into brown, reduce the flame and sprinkle few drops of oil on the dosa sides and put 2 tablespoons of potato filling. Fold the dosa. Repeat the process until all the batter and filling is used up. Serve hot masala hot dosa with coconut chutney and sambhar.','Ingredient 1 : 2 cup parboiled rice\r<br>Ingredient 2 : 1/4 cup refined oil.\r<br>Ingredient 3 : 1/2 urad dal.\r<br>Ingredient 4 : 1/2 teaspoon fenugreek seeds.\r<br>Ingredient 5 : 1 teaspoon salt.\r<br>Ingredient 6 : 1/2 kg boiled potato.\r<br>Ingredient 7 : 1/2 cup sliced onion.\r<br>Ingredient 8 : 2 medium chopped green chilli.\r<br>Ingredient 9 : 1 tablespoon mustard seeds.\r<br>Ingredient 10 : 10 curry leaves.\r<br>Ingredient 11 : 1/4 teaspoon turmeric powder.\r<br>Ingredient 12 : 1/4 water.','FMD1PT3_Masala Dosa.jpg',1);
/*!40000 ALTER TABLE `recipe_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_users`
--

DROP TABLE IF EXISTS `recipe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_users`
--

LOCK TABLES `recipe_users` WRITE;
/*!40000 ALTER TABLE `recipe_users` DISABLE KEYS */;
INSERT INTO `recipe_users` VALUES (1,'Preetam Pal','preetamppal20@gmail.com','cHJlZXRhbTEyMw=='),(2,'Mrudul Tora','mrudultora123@gmail.com','bXJ1ZHVsMTIz');
/*!40000 ALTER TABLE `recipe_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-15 17:39:11
