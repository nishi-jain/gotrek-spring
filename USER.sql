/*
SQLyog Ultimate v8.55 
MySQL - 5.5.40 : Database - user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`user` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `user`;

/*Table structure for table `newuser` */

DROP TABLE IF EXISTS `newuser`;

CREATE TABLE `newuser` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(40) NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `uc_Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `newuser` */

insert  into `newuser`(`User_id`,`Username`,`Email`,`Password`) values (5,'nish','workspot@hotmail.com','pass'),(6,'nishi','nishi.jain@hotmail.com','hasgdhjgg'),(7,'nimmi','nimmii.jain@hotmail.com','dfsdfsfsf'),(8,'appi','appi.garg@gmail.com','jdhajkshdak'),(10,'sanjoli','sanjoli.jain@gmail.com','ashgahj'),(13,'rachit','rachit.gg@gmail.com','sdfsfsdf'),(14,'ashu','ashu.dhawan@compro.com','compro'),(15,'ashi','ashi.jain@hotmail.com','compro'),(16,'vartika sinha','sinha.vartika11@gmail.com','mani20sha_sil'),(18,'vartika sinha','sinha.vartika12@gmail.com','mani20sha_sil'),(19,'12','sanjoli@gmail.com','sdafasdfas'),(20,'','',''),(21,'s','sada@hotmail.com','as'),(22,'anu','anu.nagra@comprotechnologies.com','kamal'),(23,'anu','anunagra84@gmail.com','kamal'),(24,'sanjoli','sanjoli.jain@hotmail.com','password'),(25,'vartika sinha','reachvartika11@gmail.com','mani20'),(26,'nish','reachvartika12@gmail.com','mani20'),(27,'nish','reachvartika13@gmail.com','mani29'),(28,'Anu','anunagra841@gmail.com','kamal');

/*Table structure for table `trek_info` */

DROP TABLE IF EXISTS `trek_info`;

CREATE TABLE `trek_info` (
  `trek_id` int(11) NOT NULL AUTO_INCREMENT,
  `trek_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `meetup_point` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `Notes` varchar(500) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `treksummary` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`trek_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `trek_info` */

insert  into `trek_info`(`trek_id`,`trek_name`,`start_date`,`end_date`,`meetup_point`,`category`,`Notes`,`img_url`,`treksummary`) values (1,'Rajmanchi','2014-11-29','2014-11-30','Karjat','music',NULL,'/resources/images/t17','PMT: Trek to Rajmachi on 29th - 30th Nov 14.'),(2,'Peb Fort','2014-11-26','2014-11-30','Peb Fort','spiritual',NULL,'/resources/images/t18','PMT: Trek to Peb Fort on 26th Oct 14.'),(3,'Netrani island','2015-01-24','2015-01-26','Island meetup','adventure',NULL,'/resources/images/t19','PMT: Scuba Diving Special Visit to Netrani Island,on 24th January to 26th January 2015.'),(4,'Dudhsagar waterfall','2015-01-17','2015-01-18','Island meetup','nature lover',NULL,'/resources/images/t20','PMT:Trek to Dudhsagar Waterfall Top on 17th and 18th January 2015'),(6,'Rishikesh','2015-06-23','2015-06-29','NewDelhi','music','dsafsdfsa',NULL,'Hills and Mountain in the arms of nature'),(7,'Rishikesh','2015-06-23','2015-06-29','NewDelhi','music','dsafsdfsa',NULL,'Hills and Mountain in the arms of nature'),(11,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','JHFAUIHFJDASHFJSFIJASODFHASUJHFUAS','/resources/images/null','Sunset and site seeing'),(12,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','sdjhfasdljfklasdja','/resources/images/null','Sunset and site seeing'),(13,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','hsdkfawhh','/resources/images/null','Sunset and site seeing'),(14,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','djfhlaeurhsdjkalskjtdiou','/resources/images/null','Sunset and site seeing'),(15,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','fgsdfgsdgsdf','/resources/images/null','Sunset and site seeing'),(16,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','sjdfkhlawuershj','/resources/images/null','Sunset and site seeing'),(17,'Nainital','2015-06-23','2015-06-29','NewDelhi','M','DKLFJAKSLUJJSDKFJS;FOIEPIRPWEOW','/resources/images/null','Sunset and site seeing'),(18,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','dsfskaj;ieeuijs','/resources/images/null','Sunset and site seeing'),(19,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','kaljfalhdguersjsdkl','/resources/images/null','Sunset and site seeing'),(20,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','dsfsfdsdfgsrfgdfd','/resources/images/null','Sunset and site seeing'),(21,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','sdkfhsieeurskldjsl;k','/resources/images/null','Sunset and site seeing'),(22,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','akdfjsidsksd;roi','/resources/images/null','Sunset and site seeing'),(23,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','jlksdfail;uierkas;l','/resources/images/null','Sunset and site seeing'),(24,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','DJKFHLUERIISDFPSFIDE','/resources/images/null','Sunset and site seeing'),(25,'Nainital','2015-06-23','2015-06-29','NewDelhi','music','SJDKHFIUAWEIORUOPSDFSOUF','/resources/images/null','Sunset and site seeing');

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `ROLE` varchar(25) DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_EmailID` (`ROLE`,`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`first`,`Email`,`Password`,`ROLE`) values (6,'Nishi Jain','workspot1992@gmail.com','475e8ebbc3cf5681ff90434de138d7f18c559473','user'),(8,'vartika','vartika.sinha11@gmail.com','adcedd0652b832a11f28dcd7efc91b83c3bf85ee','user'),(9,'Rachit ','rachit.gulati@comprotechnologies.com','7a7aacc9176f00cbd78135ae301fdfd47075061b','user'),(10,'Sanjoli Jain','sanjoli_jain@ymail.com','23670b650a8c70171d5f3497448d9fff04485ca3','user'),(11,'Ashi','Ashi_jain@gmail.com','2e06a74af46bb2ef5acbecff46de4ec0fde725d0','user'),(12,'Ankush','Ankush.garg@gmail.com','a2437485f71a3d24313c46379dfcd915044c1b82','user'),(13,'jyoti','jyoti.bhandari@gmail.com','7735107062de9358b5edc6c41cfc9b4fc1e62937','user'),(14,'Sahil','sahil.gupta@comprotechnologies.com','0920bfc483fe5a1f87a66cca1fab8cd0976e58e9','user');

/*Table structure for table `usertrek_xref` */

DROP TABLE IF EXISTS `usertrek_xref`;

CREATE TABLE `usertrek_xref` (
  `xref_id` int(11) NOT NULL AUTO_INCREMENT,
  `trek_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Admin',
  PRIMARY KEY (`xref_id`),
  UNIQUE KEY `unkqkey` (`trek_id`,`user_id`),
  KEY `trekuser_xref_ibfk_3` (`user_id`),
  CONSTRAINT `trekuser_xref_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trekuser_xref_ibfk_4` FOREIGN KEY (`trek_id`) REFERENCES `trek_info` (`trek_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usertrek_xref` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
