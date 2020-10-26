-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nombresdb
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-1:10.4.15+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Jena David','lorem@elit.edu'),(2,'Britanni Crawford','facilisi.Sed@tinciduntneque.com'),(3,'Solomon Hansen','risus@lectusante.ca'),(4,'Maggy Wilson','est@nequenon.org'),(5,'Graiden Burris','nunc@convallisconvallis.ca'),(6,'Connor Avery','semper.auctor@vitaesemperegestas.ca'),(7,'Gary West','Phasellus.fermentum@condimentum.com'),(8,'Gage Jones','ultricies@libero.net'),(9,'Jeremy Aguirre','libero.at.auctor@Namporttitorscelerisque.org'),(10,'Linda Drake','rutrum@eu.com'),(11,'Lacey Mckay','sagittis@liberoProin.co.uk'),(12,'Slade Calhoun','dolor@ipsum.ca'),(13,'Miranda Mcdaniel','sagittis.Nullam.vitae@Fusce.org'),(14,'Josiah Harris','nulla@aliquamenimnec.com'),(15,'Lacey Valencia','Nunc.sollicitudin@luctusipsum.com'),(16,'Yen Hodge','lectus@tellus.net'),(17,'Ariana Hunt','Mauris.ut@enimSednulla.net'),(18,'Cameron Price','pharetra.sed.hendrerit@faucibusorciluctus.edu'),(19,'Jescie Tran','tempor.augue@luctusutpellentesque.com'),(20,'Vielka Wall','aliquam.iaculis.lacus@metusIn.com'),(21,'Ivory Contreras','viverra@estarcuac.ca'),(22,'Wynne Rasmussen','ridiculus@inaliquet.com'),(23,'Mara Stokes','metus@ornareInfaucibus.co.uk'),(24,'Axel Stanton','vitae@egestasrhoncus.edu'),(25,'Tanek Knapp','nunc.Quisque.ornare@Aeneansed.ca'),(26,'Drew Short','orci@massalobortisultrices.net'),(27,'Chadwick Bentley','ac.fermentum.vel@pede.org'),(28,'Wade Estes','vitae.erat@feugiat.edu'),(29,'John Davenport','placerat@dignissim.net'),(30,'Brody Wall','imperdiet@nisisemsemper.net'),(31,'Lucius Patton','Phasellus.dolor@suscipitnonummy.org'),(32,'Cadman Rich','fames@neque.co.uk'),(33,'Astra Dalton','neque.pellentesque.massa@nec.com'),(34,'Tarik Warner','Fusce.aliquam.enim@Donecporttitor.edu'),(35,'Jonas Ferrell','magnis@vel.edu'),(36,'Audra Gallegos','sed@eleifendnuncrisus.net'),(37,'Lionel Hess','malesuada.malesuada.Integer@accumsan.org'),(38,'Hu Alford','diam.at.pretium@purussapien.net'),(39,'Hilda Lyons','nibh.enim.gravida@vitae.edu'),(40,'Angelica Hyde','lectus.justo@est.co.uk'),(41,'Ferris Solis','Duis.gravida@tortor.net'),(42,'Victoria Molina','Mauris@morbi.org'),(43,'Jada Vinson','enim.nisl.elementum@posuereenim.co.uk'),(44,'Thomas Dean','Donec.consectetuer@eutellus.co.uk'),(45,'Dean Phelps','volutpat.nunc.sit@Curabitur.org'),(46,'Barrett Ingram','sit.amet.ante@libero.co.uk'),(47,'Nicole Alvarado','vitae.risus.Duis@pede.org'),(48,'Berk Huffman','feugiat@gravidaPraesent.com'),(49,'Courtney Bruce','Mauris.blandit@faucibus.com'),(50,'Abel Faulkner','Nam.nulla.magna@eterosProin.co.uk'),(51,'Desiree Briggs','feugiat@parturientmontes.net'),(52,'Aidan Coffey','faucibus.id.libero@risus.org'),(53,'Christopher Sellers','laoreet@CurabiturdictumPhasellus.co.uk'),(54,'Armando Adkins','Curabitur.egestas@nonenimcommodo.co.uk'),(55,'Haviva Parrish','eget.ipsum.Donec@sollicitudinadipiscing.org'),(56,'Mariko Lowe','orci.luctus@ac.co.uk'),(57,'Paula Gillespie','nunc.In@lorem.co.uk'),(58,'Ella Stark','In.nec@netusetmalesuada.org'),(59,'Serena Powers','luctus@nec.co.uk'),(60,'Macy Noble','condimentum@blanditviverraDonec.co.uk'),(61,'Lyle Hahn','facilisis.vitae.orci@magna.edu'),(62,'Palmer Irwin','non@etpedeNunc.com'),(63,'Baker Simon','Sed.eget.lacus@ligula.edu'),(64,'Nadine Chang','lacus.Ut.nec@consequatdolor.edu'),(65,'Yasir Trujillo','interdum@felisegetvarius.net'),(66,'Bruno Rivas','scelerisque@magnatellusfaucibus.org'),(67,'Ina Holman','porta.elit@eratvolutpat.net'),(68,'Francesca Warren','euismod.in.dolor@rutrum.com'),(69,'Ignacia Wallace','massa.Integer@Aenean.com'),(70,'Burton Gilmore','blandit.mattis@consectetuer.co.uk'),(71,'Eden Finch','posuere.cubilia.Curae@Suspendissecommodo.edu'),(72,'Kennedy Garza','sed.pede.Cum@in.ca'),(73,'Roanna Moss','commodo@fringillaest.edu'),(74,'Shea Buck','ante.dictum.cursus@ut.com'),(75,'Deborah Mcneil','a.mi@maurisMorbi.org'),(76,'Lyle Lamb','Aliquam@Morbimetus.com'),(77,'Rhonda Frye','purus.accumsan.interdum@malesuada.co.uk'),(78,'Shaeleigh Perry','velit.justo.nec@nec.ca'),(79,'Maggie Tyler','at.risus@Fuscemi.co.uk'),(80,'Maggy Swanson','purus.gravida@eu.org'),(81,'Aladdin Russo','non.vestibulum@Aeneanegetmetus.net'),(82,'Anika Nunez','mauris.erat@duiCum.edu'),(83,'Eaton Larson','felis.orci.adipiscing@urnaNuncquis.edu'),(84,'Ivan Bryan','elit.elit@vel.net'),(85,'Odessa Macias','luctus@Aeneaneget.ca'),(86,'Kevin Boyle','posuere.vulputate@Proinnislsem.net'),(87,'Abigail Huff','Ut@Curabiturut.net'),(88,'Kirk Alston','a.aliquet@nuncsed.edu'),(89,'Heidi Adkins','risus@semperauctorMauris.ca'),(90,'Honorato Holloway','nisi.sem@mi.co.uk'),(91,'Cherokee Morse','rutrum@nonmagna.net'),(92,'Aurora Dyer','erat.neque.non@Cum.edu'),(93,'Taylor Villarreal','at@aliquamadipiscing.org'),(94,'Judah Knight','ornare@at.ca'),(95,'Zenia Hicks','vitae@Phaselluselitpede.co.uk'),(96,'Plato Lindsey','enim.Curabitur.massa@pedeCumsociis.com'),(97,'Russell Madden','Etiam@egetvarius.com'),(98,'Oren Mcconnell','et.eros@Phasellusdapibus.edu'),(99,'Barclay Whitney','sem@nonummyipsum.ca'),(100,'Frances Mclaughlin','pede.nonummy.ut@netus.com');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 20:14:20
