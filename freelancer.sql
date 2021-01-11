/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.3.16-MariaDB : Database - mydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mydb`;

/*Table structure for table `proj_biding` */

DROP TABLE IF EXISTS `proj_biding`;

CREATE TABLE `proj_biding` (
  `username` varchar(30) DEFAULT NULL,
  `worker_name` varchar(30) NOT NULL,
  `proj_name` varchar(30) NOT NULL,
  `days` int(10) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  PRIMARY KEY (`worker_name`,`proj_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proj_biding` */

insert  into `proj_biding`(`username`,`worker_name`,`proj_name`,`days`,`amount`) values ('suresh','nithin','food app',5,1000),('owner','nithin','food delivery app',9,8000),('suresh','worker','food app',6,2000);

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `username` varchar(30) NOT NULL,
  `proj_cate` varchar(30) NOT NULL,
  `proj_name` varchar(30) NOT NULL,
  `proj_desc` varchar(100) NOT NULL,
  `budget` int(10) NOT NULL,
  `bdate` date NOT NULL,
  `file_location` varchar(200) DEFAULT NULL,
  UNIQUE KEY `proj_name` (`proj_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `projects` */

insert  into `projects`(`username`,`proj_cate`,`proj_name`,`proj_desc`,`budget`,`bdate`,`file_location`) values ('suresh','mobile_apps','food app','food delivery app',5000,'2020-05-15','uploaded files/d418cc3d08ffe0cfdd6fa394f2b46d05'),('owner','mobile_apps','food delivery app','Food delivery apps are a new rage, from restaurant owners making their own food ordering app for you',10000,'2020-05-17','uploaded files/9be72a97b9402c2044d9b0415cab2e60'),('owner','graphic_design','website design','develop a website with newer tech',5000,'2020-04-14','uploaded files/672aee03865d200e60f58619482626ddWIN_20200117_17_42_34_Pro.jpg');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `utype` varchar(20) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`pwd`,`utype`) values ('','',''),('admin','admin','admin'),('nithin','nithin','worker'),('owner','owner','owner'),('pre','pre','worker'),('raj','raj','worker'),('rakesh','rakesh','owner'),('suresh','suresh','owner'),('worker','worker','worker');

/*Table structure for table `worker_freeze` */

DROP TABLE IF EXISTS `worker_freeze`;

CREATE TABLE `worker_freeze` (
  `username` varchar(30) NOT NULL,
  `worker_name` varchar(30) NOT NULL,
  `proj_name` varchar(30) NOT NULL,
  `to_date` date DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  PRIMARY KEY (`worker_name`,`proj_name`,`username`),
  UNIQUE KEY `proj_name` (`proj_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `worker_freeze` */

insert  into `worker_freeze`(`username`,`worker_name`,`proj_name`,`to_date`,`from_date`) values ('suresh','nithin','food app','2020-05-20','2020-05-15'),('owner','nithin','food delivery app','2020-05-26','2020-05-17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
