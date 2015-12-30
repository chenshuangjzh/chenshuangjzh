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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`picture_name`,`upload_time`,`size`,`width`,`height`,`hash`,`mime_type`) values (63,'IMG_4236.jpeg','2015-12-25 13:41:30',7125539,5184,3456,'ll37P9LK9PuTb7nJpz3wGfFEkbxA','image/jpeg'),(64,'IMG_4237.jpeg','2015-12-25 13:43:37',7002420,3456,5184,'loqWnEQHmriEIrbTKmjERaxExdYp','image/jpeg'),(65,'IMG_4238.jpeg','2015-12-25 13:45:59',7185925,5184,3456,'ltbjMBvbmriMj8MzJ5cL57MyVG5u','image/jpeg'),(66,'IMG_4239.jpeg','2015-12-25 13:48:07',7223259,5184,3456,'lnK2mrW5DoXu05geAtb6SQ-P8OnW','image/jpeg'),(67,'IMG_4240.jpeg','2015-12-25 13:50:09',7002736,3456,5184,'llDAc7eE1fbYjXlsOuUa6bGTP10u','image/jpeg'),(68,'IMG_4241.jpeg','2015-12-25 13:52:32',8669538,3456,5184,'lqotsXcs4OqQmnxfkjluIWZ2k3N8','image/jpeg'),(69,'IMG_4242.jpeg','2015-12-25 13:55:22',9470368,3456,5184,'lvWzjgDSsRU5E3sx9evAppL5SbeJ','image/jpeg'),(70,'IMG_4244.jpeg','2015-12-25 13:59:00',8983834,3456,5184,'lvXQr-JcmgvVYAe7gpddSRBzOcs2','image/jpeg'),(71,'IMG_4246.jpeg','2015-12-25 14:03:56',10605627,5184,3456,'ljMwZPiTHbaRyJemSt3lOJpbvHrT','image/jpeg'),(72,'IMG_4247.jpeg','2015-12-25 14:06:46',8965014,3456,5184,'lnOkoIC4xXp-fk4jRJaW_95Vtngu','image/jpeg'),(73,'IMG_4248.jpeg','2015-12-25 14:12:20',10189189,5184,3456,'ltCmdscxXqcgec6e4r8fH0VOSFR-','image/jpeg'),(74,'IMG_4250.jpeg','2015-12-25 14:15:28',6892763,3456,5184,'lmDZfXnjO9lV6jNSHxtqL5FSgZfE','image/jpeg'),(75,'IMG_4251.jpeg','2015-12-25 14:19:46',10227207,5184,3456,'lm2Iwt2m5Owqrv4N_nF1OJ4-8ic0','image/jpeg'),(76,'IMG_4252.jpeg','2015-12-25 14:24:19',9385688,3456,5184,'li_mj7eC1j2X1plvKNLSa5Ej2vZz','image/jpeg'),(77,'IMG_4253.jpeg','2015-12-25 14:28:20',11064522,5184,3456,'lhImLW698nOehpT_VXi6bY29s6lO','image/jpeg'),(78,'IMG_4254.jpeg','2015-12-25 14:32:40',9995539,5184,3456,'lpt0opEAjTEcQcZLyrUNn053oGjp','image/jpeg'),(79,'IMG_4256.jpeg','2015-12-25 14:37:00',10570630,5184,3456,'li8_xlZUI9fCkFAp8lTOFPvCkK_j','image/jpeg'),(80,'IMG_4258.jpeg','2015-12-25 14:40:09',10858773,5184,3456,'lmtYC_I0MHjres9qFJvQherlfWBi','image/jpeg'),(81,'IMG_4259.jpeg','2015-12-25 14:42:58',9520911,5184,3456,'lt5CjGCsJD4pgxOlqRoLUE_FURt3','image/jpeg'),(82,'IMG_4262.jpeg','2015-12-25 14:45:33',9841020,5184,3456,'ljq8Y1ct8mNnaHqIf_HKvh0OeOVp','image/jpeg'),(83,'IMG_4263.jpeg','2015-12-25 14:48:37',10841867,5184,3456,'lm0psJ_s6NQTxeDdqxH69lsP4UMy','image/jpeg'),(84,'IMG_4264.jpeg','2015-12-25 14:51:18',10167623,3456,5184,'lvkZEF4-nuQbEFm51GqZtkjl-OJn','image/jpeg'),(85,'IMG_4265.jpeg','2015-12-25 14:54:19',10891673,5184,3456,'lleXxq6pedBTyO1GZGifr8z_tkLu','image/jpeg'),(86,'IMG_4266.jpeg','2015-12-25 14:57:30',9565280,5184,3456,'lju826Dbn7VTkRtxYaiLzYVcnNBe','image/jpeg'),(87,'IMG_4270.jpeg','2015-12-25 14:59:51',7217816,3456,5184,'lkAOvfG8mMhUE5oofZloVRWgOBda','image/jpeg'),(88,'IMG_4272.jpeg','2015-12-25 15:03:09',7494803,3456,5184,'lvV2NwxfespxtqEJ5RJ5vBigYbOP','image/jpeg'),(89,'IMG_4273.jpeg','2015-12-25 15:06:00',7492303,3456,5184,'lqRM9lPDWubEOFER5WWCGDvWKKRV','image/jpeg'),(90,'IMG_4274.jpeg','2015-12-25 15:09:49',8101032,3456,5184,'lnRmtLQjplMo2Ea5yCpvOCsLwPiS','image/jpeg'),(91,'IMG_4275.jpeg','2015-12-25 15:12:53',7671127,3456,5184,'lvZ9tYELAvMZuJqcx7y4Y3nnwPDF','image/jpeg'),(92,'IMG_4278.jpeg','2015-12-25 15:15:50',6614949,3456,5184,'lm_koFWTjl4lgV-NyFs5qtKYhYp5','image/jpeg'),(93,'IMG_4279.jpeg','2015-12-25 15:17:53',5996779,5184,3456,'ls-WqtP0rScIW5GoXlA9iz-ri_af','image/jpeg'),(94,'IMG_4280.jpeg','2015-12-25 15:20:56',6397234,3456,5184,'ln5vOUeBzDyqnc7WgZmiKvdeZYAH','image/jpeg'),(95,'IMG_4281.jpeg','2015-12-25 15:23:21',5946502,5184,3456,'lmEgMtuWEHxb4C7A1E_7EmoB-o9y','image/jpeg'),(96,'IMG_4282.jpeg','2015-12-25 15:25:31',5461594,3456,5184,'lmjgrW-sqs73TYWtSBxPfbwMT-9I','image/jpeg'),(97,'IMG_4283.jpeg','2015-12-25 15:27:28',5961576,3456,5184,'lu34ZpEkP6Y6L8kwU7KhQpE2thQd','image/jpeg'),(98,'IMG_4284.jpeg','2015-12-25 15:29:51',5073332,3456,5184,'lht9Qo7Qm_Fhr7USBYo5y8ToDUHH','image/jpeg'),(99,'IMG_4285.jpeg','2015-12-25 15:33:36',7122064,3456,5184,'lvH1ecW0KGC7NFJl0UFYX5LJz2np','image/jpeg'),(100,'IMG_4286.jpeg','2015-12-25 15:36:16',5140591,5184,3456,'lkjj0TAn7jU0cG9dT-oXESKgYAOz','image/jpeg'),(101,'IMG_4287.jpeg','2015-12-25 15:39:34',6682590,3456,5184,'lsoJSLcUbMofKgSuR1C2fbbZNMsM','image/jpeg'),(102,'IMG_4288.jpeg','2015-12-25 15:42:21',6504694,3456,5184,'ljXoAZ5gtDUAXLVZdA05GsCU4L3a','image/jpeg'),(103,'IMG_4289.jpeg','2015-12-25 15:45:44',5905175,5184,3456,'liPitjIslNl1DGoe_Bn7z269uYZi','image/jpeg'),(104,'IMG_4290.jpeg','2015-12-25 15:48:39',5881123,5184,3456,'liyjA9Q2RNKqtQfiMdHVsQW4PeDL','image/jpeg'),(105,'IMG_4291.jpeg','2015-12-25 15:51:22',5462803,3456,5184,'lrgC_8Cvs-ZJks2kOyxdtntanU-1','image/jpeg'),(106,'IMG_4293.jpeg','2015-12-25 15:54:08',5335351,3456,5184,'ls8fc8CLAFWu2WdxskTwEt7V4-AA','image/jpeg'),(107,'IMG_4295.jpeg','2015-12-25 15:58:31',6964577,3456,5184,'lllCVx4iN0dPgu4x4UlXPEVHl9cw','image/jpeg'),(108,'IMG_4296.jpeg','2015-12-25 16:02:00',7160678,3456,5184,'lrVWPSFL3Zleogj9jPDSpw4zV5Et','image/jpeg'),(109,'IMG_4297.jpeg','2015-12-25 16:04:30',5180569,5184,3456,'lqvE_VxkwCw63mPV4ricsYhbe8ie','image/jpeg'),(110,'IMG_4298.jpeg','2015-12-25 16:07:50',6742075,3456,5184,'ltOIRUMoFQ1evrJc7C6fC9vqJ9ra','image/jpeg'),(111,'IMG_4299.jpeg','2015-12-25 16:11:28',6539281,3456,5184,'lh4T6HkUssUr32bdR2kFuGP3zEVI','image/jpeg'),(112,'IMG_4300.jpeg','2015-12-25 16:15:07',6593004,3456,5184,'loKPuo1E-vqVQq6MXFYntSMyuuJE','image/jpeg'),(113,'IMG_4302.jpeg','2015-12-25 16:18:32',7153324,3456,5184,'lghTYk0j3sg2c2EBJu5ofeyFvlcM','image/jpeg'),(114,'IMG_4303.jpeg','2015-12-25 16:21:32',6809311,3456,5184,'lmZ5SnbUa5fD7uw8TytjPiCKEYC6','image/jpeg'),(115,'IMG_4304.jpeg','2015-12-25 16:23:55',4951826,5184,3456,'loVjyuRtbm9MsdR27uhc1MMf4O4_','image/jpeg'),(116,'IMG_4305.jpeg','2015-12-25 16:27:31',5976917,5184,3456,'lrWzwCgwMhpKsH8iVntvpM7g3_U5','image/jpeg'),(117,'IMG_4306.jpeg','2015-12-25 16:30:38',6011269,3456,5184,'ljsARuS-dqUD99bQKZJ7j66utFWi','image/jpeg'),(118,'IMG_4307.jpeg','2015-12-25 16:33:25',5674175,3456,5184,'llCblkItsb_nJe5aS_0pHkJ0-lCp','image/jpeg'),(119,'IMG_4308.jpeg','2015-12-25 16:35:44',5708649,3456,5184,'lqOFOu3_9M-0Xa4vnljaxPh0zoK8','image/jpeg'),(120,'IMG_4309.jpeg','2015-12-25 16:37:26',5015693,3456,5184,'lhMpz9Mp84pPJO4uX2G1HKpf9HJW','image/jpeg'),(121,'IMG_4310.jpeg','2015-12-25 16:38:47',3824768,5184,3456,'Fh37kHK3_sARhT8J2jRhMLjviFmW','image/jpeg'),(122,'IMG_4311.jpeg','2015-12-25 16:40:58',5234283,3456,5184,'lni6DMK1HsAOnkU4Om4XF47yk9XA','image/jpeg'),(123,'IMG_4312.jpeg','2015-12-25 16:43:27',3914227,5184,3456,'FnOBCKlsPmiPbzCUnaI2iTtmK58O','image/jpeg'),(124,'IMG_4313.jpeg','2015-12-25 16:47:09',4773945,NULL,NULL,'lnafX4RohDlUzRFdH8XOSGQihoUy','image/jpeg');

/*Table structure for table `whisper` */

DROP TABLE IF EXISTS `whisper`;

CREATE TABLE `whisper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `create_time` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `whisper` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
