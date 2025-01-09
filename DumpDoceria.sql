CREATE DATABASE  IF NOT EXISTS `doceviver2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `doceviver2`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: doceviver2
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cardapio`
--

DROP TABLE IF EXISTS `cardapio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardapio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `detalhes` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardapio`
--

LOCK TABLES `cardapio` WRITE;
/*!40000 ALTER TABLE `cardapio` DISABLE KEYS */;
INSERT INTO `cardapio` VALUES (1,'Pão na Chapa',4.50,'Vegana','Pão francês, manteiga'),(2,'Pão de Queijo',4.00,'Salgados','Polvilho, queijo, leite, ovos'),(3,'Coxinha de Frango',5.50,'Salgados','Frango desfiado, catupiry, massa de farinha de trigo'),(4,'Fatia de Torta de Palmito',10.00,'Vegana','Massa de grão-de-bico, palmito, tomate, cebola'),(5,'Lanche Natural',15.00,'Vegana','Pão integral, alface, tomate, cenoura ralada, tofu'),(6,'Brigadeiro',5.00,'Doces','Leite condensado, chocolate em pó, manteiga'),(7,'Cone Recheado',8.60,'Doces','Massa de cone, doce de leite, cobertura de chocolate'),(8,'Água',3.00,'Bebidas','Água mineral'),(9,'Café',5.07,'Bebidas','Café moído na hora'),(10,'Suco',11.00,'Salgados','Frutas frescas, água, açúcar (opcional)');
/*!40000 ALTER TABLE `cardapio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (57,'Ester Cattaneo','ester.cattaneo@gmail.com','ca52659d995989a059fd6adeb87f76dc','2004-06-21','2024-12-08 13:21:24',1),(58,'Felipe','maiasssnoty@outlook.com','68199467d21136cd5a7bc5a0cddf5d0d','2001-04-08','2024-12-08 16:32:32',0),(60,'usuario','usuario@123.com','401cec94d3ed586d8cb895c10c0f7db6','2002-01-22','2025-01-04 12:20:22',1),(61,'teste7','teste7@gmail.com','09151a42659cfc08aff86820f973f640','2004-06-21','2025-01-08 16:11:16',0),(62,'teste8','teste8@gmail.com','cc1dae793882f1f06efc3ee1ad5ca754','2004-06-21','2025-01-08 20:48:21',0),(63,'admin','admin@gmail.com','c93ccd78b2076528346216b3b2f701e6','2004-06-21','2025-01-08 20:50:00',1),(65,'teste9','teste9@gmail.com','09151a42659cfc08aff86820f973f640','2004-06-21','2025-01-08 22:48:07',0),(66,'rodrigo','rodrigo@gmail.com','bd3711d0dd00de22e9d2fb6c1bdd85d6','2004-06-21','2025-01-09 00:14:30',0),(67,'admin2','admin2@gmail.com','c84258e9c39059a89ab77d846ddab909','2004-06-21','2025-01-09 00:17:57',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curtida`
--

DROP TABLE IF EXISTS `curtida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curtida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cardapio_id` int NOT NULL,
  `curtidas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curtida`
--

LOCK TABLES `curtida` WRITE;
/*!40000 ALTER TABLE `curtida` DISABLE KEYS */;
INSERT INTO `curtida` VALUES (1,1,3),(2,2,5),(3,3,9),(4,4,4),(5,5,3),(6,6,1),(7,7,0),(8,8,2);
/*!40000 ALTER TABLE `curtida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fale_conosco`
--

DROP TABLE IF EXISTS `fale_conosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fale_conosco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mensagem` text COLLATE utf8mb4_general_ci NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fale_conosco`
--

LOCK TABLES `fale_conosco` WRITE;
/*!40000 ALTER TABLE `fale_conosco` DISABLE KEYS */;
INSERT INTO `fale_conosco` VALUES (1,'Maria Silva','maria.silva@email.com','(11) 98765-4321','Gostaria de saber mais sobre os bolos disponíveis.','2024-08-26 19:27:13'),(2,'João Pereira','joao.pereira@email.com',NULL,'Quais são as opções de doces sem açúcar?','2024-08-26 19:27:13'),(3,'Ana Costa','ana.costa@email.com','(21) 91234-5678','Vocês fazem entregas aos domingos?','2024-08-26 19:27:13'),(4,'Lucas Almeida','lucas.almeida@email.com','(31) 99887-6543','Quais são os horários de funcionamento?','2024-08-26 19:27:13'),(5,'Beatriz Rocha','beatriz.rocha@email.com','(41) 98765-1234','Há opções sem glúten no cardápio?','2024-08-26 19:27:13'),(6,'Pedro Martins','pedro.martins@email.com','(51) 91234-4321','Aceitam encomendas para festas grandes?','2024-08-26 19:27:13'),(7,'fefe','felipe@gmail.com','1991911919','Gostei demais, mt bai','2024-12-07 17:22:22'),(8,'giovana','giovana@gmail.com','(19) 98311-2889','muito bom os docinhos','2025-01-04 13:29:39'),(9,'teste','teste@gmail.com','19999999999','oiii isso é um teste','2025-01-08 23:05:45');
/*!40000 ALTER TABLE `fale_conosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faleconosco`
--

DROP TABLE IF EXISTS `faleconosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faleconosco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mensagem` text COLLATE utf8mb4_general_ci NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faleconosco`
--

LOCK TABLES `faleconosco` WRITE;
/*!40000 ALTER TABLE `faleconosco` DISABLE KEYS */;
INSERT INTO `faleconosco` VALUES (1,'fefe','fe@gmail.com','1991911919','Amei a doceria sô. Só colocar um crem di lei e tá bao','2024-12-07 17:17:15'),(2,'fefe','fe@gmail.com','1991911919','Mt bao, gostei','2024-12-07 17:21:02');
/*!40000 ALTER TABLE `faleconosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionaria_adm`
--

DROP TABLE IF EXISTS `funcionaria_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionaria_adm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data_contratacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionaria_adm`
--

LOCK TABLES `funcionaria_adm` WRITE;
/*!40000 ALTER TABLE `funcionaria_adm` DISABLE KEYS */;
INSERT INTO `funcionaria_adm` VALUES (1,'Juliana Santos','juliana.santos@email.com','admsecure123','2024-08-26 19:27:14'),(2,'Paula Ferreira','paula.ferreira@email.com','senhaadm456','2024-08-26 19:27:14'),(3,'Ricardo Menezes','ricardo.menezes@email.com','admin789','2024-08-26 19:27:14'),(4,'Daniela Lopes','daniela.lopes@email.com','adminpass123','2024-08-26 19:27:14'),(5,'Eduardo Ribeiro','eduardo.ribeiro@email.com','secureadm456','2024-08-26 19:27:14');
/*!40000 ALTER TABLE `funcionaria_adm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galeria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `cardapio_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
INSERT INTO `galeria` VALUES (23,'ameeeei',3),(24,'ameeeei',3);
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `data_pedido` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL,
  `itens` varchar(5000) COLLATE utf8mb4_general_ci DEFAULT 'Em processamento',
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (8,61,'2025-01-08 16:11:30',25.00,'Lanche Natural, Fatia de Torta de Palmito'),(9,62,'2025-01-08 20:48:34',33.50,'Lanche Natural, Fatia de Torta de Palmito, Pão na Chapa, Pão de Queijo'),(10,62,'2025-01-08 20:48:45',33.50,'Lanche Natural, Fatia de Torta de Palmito, Pão na Chapa, Pão de Queijo'),(12,63,'2025-01-08 22:04:22',19.00,'Pão na Chapa, Pão na Chapa, Fatia de Torta de Palmito'),(13,63,'2025-01-08 22:04:25',19.00,'Pão na Chapa, Pão na Chapa, Fatia de Torta de Palmito'),(14,63,'2025-01-08 22:04:28',19.00,'Pão na Chapa, Pão na Chapa, Fatia de Torta de Palmito'),(15,65,'2025-01-08 22:48:29',45.00,'Água, Água, Água, Lanche Natural, Fatia de Torta de Palmito, Suco'),(16,65,'2025-01-08 23:01:57',0.00,''),(17,66,'2025-01-09 00:15:58',18.50,'Pão de Queijo, Pão na Chapa, Fatia de Torta de Palmito');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'doceviver2'
--

--
-- Dumping routines for database 'doceviver2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-08 21:29:17
