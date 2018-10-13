/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.20-log : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bname` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `isbn` varchar(20) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bname`,`author`,`publisher`,`isbn`,`price`) values ('白夜行','东野圭吾','吉林出版社','121231',30.5),('活着','余华','长江出版社','221133',30),('时间简史','霍金','吉林出版社','332211',48),('java','sun','吉林出版社','445566',26.5);

/*Table structure for table `readers` */

DROP TABLE IF EXISTS `readers`;

CREATE TABLE `readers` (
  `userName` varchar(20) DEFAULT NULL,
  `password1` varchar(12) DEFAULT NULL,
  `answer` varchar(30) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `readers` */

insert  into `readers`(`userName`,`password1`,`answer`,`email`,`phone`) values ('add','123456','aad','760971884@qq.com',1310010325),('wzz','654321','舞蹈','24659876@qq.com',1775461235);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uname` varchar(20) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `user` */

insert  into `user`(`uname`,`password`) values ('admin','123456');

/*Table structure for table `userbook` */

DROP TABLE IF EXISTS `userbook`;

CREATE TABLE `userbook` (
  `bname` varchar(20) DEFAULT NULL,
  `author` varchar(15) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `isbn` varchar(12) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `userbook` */

insert  into `userbook`(`bname`,`author`,`publisher`,`isbn`,`price`) values ('时间简史','霍金','吉林出版社','332211',48),('时间简史','霍金','吉林出版社','332211',48),('白夜行','东野圭吾','吉林出版社','121231',30.5),('白夜行','东野圭吾','吉林出版社','121231',30.5),('活着','余华','长江出版社','221133',30);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
