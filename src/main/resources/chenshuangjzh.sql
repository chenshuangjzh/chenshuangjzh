/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.21-log : Database - chenshuangjzh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chenshuangjzh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chenshuangjzh`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `publish` varchar(200) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nowcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`id`,`code`,`name`,`author`,`publish`,`total`,`nowcount`) values (1,'ISBN8859-1','HeadFirst Java','Tom','BBP',3,2);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_name` varchar(200) DEFAULT NULL,
  `upload_time` varchar(200) DEFAULT NULL,
  `size` bigint(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `hash` varchar(200) DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`picture_name`,`upload_time`,`size`,`width`,`height`,`hash`,`mime_type`) values (1,'IMG_4236.jpeg','461780-08-05 23:11:44',7125539,NULL,NULL,'ll37P9LK9PuTb7nJpz3wGfFEkbxA','image/jpeg'),(2,'IMG_4237.jpeg','461780-08-20 14:07:42',7002420,NULL,NULL,'loqWnEQHmriEIrbTKmjERaxExdYp','image/jpeg'),(3,'IMG_4238.jpeg','461780-09-06 01:58:25',7185925,NULL,NULL,'ltbjMBvbmriMj8MzJ5cL57MyVG5u','image/jpeg'),(4,'IMG_4239.jpeg','461780-09-20 19:53:42',7223259,NULL,NULL,'lnK2mrW5DoXu05geAtb6SQ-P8OnW','image/jpeg'),(5,'IMG_4240.jpeg','461780-10-04 22:47:44',7002736,NULL,NULL,'llDAc7eE1fbYjXlsOuUa6bGTP10u','image/jpeg'),(6,'IMG_4241.jpeg','461780-10-21 13:46:59',8669538,NULL,NULL,'lqotsXcs4OqQmnxfkjluIWZ2k3N8','image/jpeg'),(7,'IMG_4242.jpeg','461780-11-10 05:39:18',9470368,NULL,NULL,'lvWzjgDSsRU5E3sx9evAppL5SbeJ','image/jpeg'),(8,'IMG_4244.jpeg','461780-12-05 10:28:00',8983834,NULL,NULL,'lvXQr-JcmgvVYAe7gpddSRBzOcs2','image/jpeg'),(9,'IMG_4246.jpeg','461781-01-08 16:24:00',10605627,NULL,NULL,'ljMwZPiTHbaRyJemSt3lOJpbvHrT','image/jpeg'),(10,'IMG_4247.jpeg','461781-01-28 09:47:25',8965014,NULL,NULL,'lnOkoIC4xXp-fk4jRJaW_95Vtngu','image/jpeg'),(11,'IMG_4248.jpeg','461781-03-08 01:53:43',10189189,NULL,NULL,'ltCmdscxXqcgec6e4r8fH0VOSFR-','image/jpeg'),(12,'IMG_4250.jpeg','461781-03-29 20:02:11',6892763,NULL,NULL,'lmDZfXnjO9lV6jNSHxtqL5FSgZfE','image/jpeg'),(13,'IMG_4251.jpeg','461781-04-28 16:05:29',10227207,NULL,NULL,'lm2Iwt2m5Owqrv4N_nF1OJ4-8ic0','image/jpeg'),(14,'IMG_4252.jpeg','461781-05-30 06:50:24',9385688,NULL,NULL,'li_mj7eC1j2X1plvKNLSa5Ej2vZz','image/jpeg'),(15,'IMG_4253.jpeg','461781-06-27 04:44:19',11064522,NULL,NULL,'lhImLW698nOehpT_VXi6bY29s6lO','image/jpeg'),(16,'IMG_4254.jpeg','461781-07-27 05:58:57',9995539,NULL,NULL,'lpt0opEAjTEcQcZLyrUNn053oGjp','image/jpeg'),(17,'IMG_4256.jpeg','461781-08-26 07:22:26',10570630,NULL,NULL,'li8_xlZUI9fCkFAp8lTOFPvCkK_j','image/jpeg'),(18,'IMG_4258.jpeg','461781-09-17 04:21:10',10858773,NULL,NULL,'lmtYC_I0MHjres9qFJvQherlfWBi','image/jpeg'),(19,'IMG_4259.jpeg','461781-10-06 18:14:31',9520911,NULL,NULL,'lt5CjGCsJD4pgxOlqRoLUE_FURt3','image/jpeg'),(20,'IMG_4262.jpeg','461781-10-24 17:54:36',9841020,NULL,NULL,'ljq8Y1ct8mNnaHqIf_HKvh0OeOVp','image/jpeg'),(21,'IMG_4263.jpeg','461781-11-14 23:44:30',10841867,NULL,NULL,'lm0psJ_s6NQTxeDdqxH69lsP4UMy','image/jpeg'),(22,'IMG_4264.jpeg','461781-12-03 15:19:56',10167623,NULL,NULL,'lvkZEF4-nuQbEFm51GqZtkjl-OJn','image/jpeg'),(23,'IMG_4265.jpeg','461781-12-24 12:51:58',10891673,NULL,NULL,'lleXxq6pedBTyO1GZGifr8z_tkLu','image/jpeg'),(24,'IMG_4266.jpeg','461782-01-15 16:25:30',9565280,NULL,NULL,'lju826Dbn7VTkRtxYaiLzYVcnNBe','image/jpeg'),(25,'IMG_4270.jpeg','461782-02-01 00:19:15',7217816,NULL,NULL,'lkAOvfG8mMhUE5oofZloVRWgOBda','image/jpeg'),(26,'IMG_4272.jpeg','461782-02-23 23:27:48',7494803,NULL,NULL,'lvV2NwxfespxtqEJ5RJ5vBigYbOP','image/jpeg'),(27,'IMG_4273.jpeg','461782-03-15 16:19:22',7492303,NULL,NULL,'lqRM9lPDWubEOFER5WWCGDvWKKRV','image/jpeg'),(28,'IMG_4274.jpeg','461782-04-11 05:14:45',8101032,NULL,NULL,'lnRmtLQjplMo2Ea5yCpvOCsLwPiS','image/jpeg'),(29,'IMG_4275.jpeg','461782-05-02 12:54:45',7671127,NULL,NULL,'lvZ9tYELAvMZuJqcx7y4Y3nnwPDF','image/jpeg'),(30,'IMG_4278.jpeg','461782-05-23 01:38:53',6614949,NULL,NULL,'lm_koFWTjl4lgV-NyFs5qtKYhYp5','image/jpeg'),(31,'IMG_4279.jpeg','461782-06-06 05:13:13',5996779,NULL,NULL,'ls-WqtP0rScIW5GoXlA9iz-ri_af','image/jpeg'),(32,'IMG_4280.jpeg','461782-06-27 09:15:30',6397234,NULL,NULL,'ln5vOUeBzDyqnc7WgZmiKvdeZYAH','image/jpeg'),(33,'IMG_4281.jpeg','461782-07-14 05:54:26',5946502,NULL,NULL,'lmEgMtuWEHxb4C7A1E_7EmoB-o9y','image/jpeg'),(34,'IMG_4282.jpeg','461782-07-29 06:20:14',5461594,NULL,NULL,'lmjgrW-sqs73TYWtSBxPfbwMT-9I','image/jpeg'),(35,'IMG_4283.jpeg','461782-08-11 19:50:13',5961576,NULL,NULL,'lu34ZpEkP6Y6L8kwU7KhQpE2thQd','image/jpeg'),(36,'IMG_4284.jpeg','461782-08-28 08:33:43',5073332,NULL,NULL,'lht9Qo7Qm_Fhr7USBYo5y8ToDUHH','image/jpeg'),(37,'IMG_4285.jpeg','461782-09-23 09:28:59',7122064,NULL,NULL,'lvH1ecW0KGC7NFJl0UFYX5LJz2np','image/jpeg'),(38,'IMG_4286.jpeg','461782-10-11 21:09:01',5140591,NULL,NULL,'lkjj0TAn7jU0cG9dT-oXESKgYAOz','image/jpeg'),(39,'IMG_4287.jpeg','461782-11-03 18:30:42',6682590,NULL,NULL,'lsoJSLcUbMofKgSuR1C2fbbZNMsM','image/jpeg'),(40,'IMG_4288.jpeg','461782-11-23 04:26:24',6504694,NULL,NULL,'ljXoAZ5gtDUAXLVZdA05GsCU4L3a','image/jpeg'),(41,'IMG_4289.jpeg','461782-12-16 15:37:35',5905175,NULL,NULL,'liPitjIslNl1DGoe_Bn7z269uYZi','image/jpeg'),(42,'IMG_4290.jpeg','461783-01-05 20:32:06',5881123,NULL,NULL,'liyjA9Q2RNKqtQfiMdHVsQW4PeDL','image/jpeg'),(43,'IMG_4291.jpeg','461783-01-24 17:32:30',5462803,NULL,NULL,'lrgC_8Cvs-ZJks2kOyxdtntanU-1','image/jpeg'),(44,'IMG_4293.jpeg','461783-02-13 00:09:49',5335351,NULL,NULL,'ls8fc8CLAFWu2WdxskTwEt7V4-AA','image/jpeg'),(45,'IMG_4295.jpeg','461783-03-15 10:24:49',6964577,NULL,NULL,'lllCVx4iN0dPgu4x4UlXPEVHl9cw','image/jpeg'),(46,'IMG_4296.jpeg','461783-04-08 14:03:51',7160678,NULL,NULL,'lrVWPSFL3Zleogj9jPDSpw4zV5Et','image/jpeg'),(47,'IMG_4297.jpeg','461783-04-26 00:18:07',5180569,NULL,NULL,'lqvE_VxkwCw63mPV4ricsYhbe8ie','image/jpeg'),(48,'IMG_4298.jpeg','461783-05-19 01:52:54',6742075,NULL,NULL,'ltOIRUMoFQ1evrJc7C6fC9vqJ9ra','image/jpeg'),(49,'IMG_4299.jpeg','461783-06-13 09:46:30',6539281,NULL,NULL,'lh4T6HkUssUr32bdR2kFuGP3zEVI','image/jpeg'),(50,'IMG_4300.jpeg','461783-07-08 15:44:45',6593004,NULL,NULL,'loKPuo1E-vqVQq6MXFYntSMyuuJE','image/jpeg'),(51,'IMG_4302.jpeg','461783-08-01 09:46:19',7153324,NULL,NULL,'lghTYk0j3sg2c2EBJu5ofeyFvlcM','image/jpeg'),(52,'IMG_4303.jpeg','461783-08-22 05:23:43',6809311,NULL,NULL,'lmZ5SnbUa5fD7uw8TytjPiCKEYC6','image/jpeg'),(53,'IMG_4304.jpeg','461783-09-07 19:12:52',4951826,NULL,NULL,'loVjyuRtbm9MsdR27uhc1MMf4O4_','image/jpeg'),(54,'IMG_4305.jpeg','461783-10-02 19:08:15',5976917,NULL,NULL,'lrWzwCgwMhpKsH8iVntvpM7g3_U5','image/jpeg'),(55,'IMG_4306.jpeg','461783-10-24 10:40:26',6011269,NULL,NULL,'ljsARuS-dqUD99bQKZJ7j66utFWi','image/jpeg'),(56,'IMG_4307.jpeg','461783-11-12 19:54:48',5674175,NULL,NULL,'llCblkItsb_nJe5aS_0pHkJ0-lCp','image/jpeg'),(57,'IMG_4308.jpeg','461783-11-28 20:47:23',5708649,NULL,NULL,'lqOFOu3_9M-0Xa4vnljaxPh0zoK8','image/jpeg'),(58,'IMG_4309.jpeg','461783-12-10 16:41:38',5015693,NULL,NULL,'lhMpz9Mp84pPJO4uX2G1HKpf9HJW','image/jpeg'),(59,'IMG_4310.jpeg','461783-12-20 01:51:40',3824768,NULL,NULL,'Fh37kHK3_sARhT8J2jRhMLjviFmW','image/jpeg'),(60,'IMG_4311.jpeg','461784-01-04 06:33:04',5234283,NULL,NULL,'lni6DMK1HsAOnkU4Om4XF47yk9XA','image/jpeg'),(61,'IMG_4312.jpeg','461784-01-21 10:13:54',3914227,NULL,NULL,'FnOBCKlsPmiPbzCUnaI2iTtmK58O','image/jpeg'),(62,'IMG_4313.jpeg','461784-02-16 02:22:20',4773945,NULL,NULL,'lnafX4RohDlUzRFdH8XOSGQihoUy','image/jpeg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
