# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             asi_db
# Server version:       5.0.45-community-nt
# Server OS:            Win32
# Target-Compatibility: Same as source server (MySQL 5.0.45-community-nt)
# max_allowed_packet:   1048576
# HeidiSQL version:     3.1 RC1 Revision: 1064
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0*/;


#
# Database structure for database 'asi_db'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `asi_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `asi_db`;


#
# Table structure for table 'appuser'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `appuser` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `question` varchar(255) default NULL,
  `answer` varchar(255) default NULL,
  `userrole` varchar(255) default NULL,
  `createdon` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedon` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'appuser'
#

/*!40000 ALTER TABLE `appuser` DISABLE KEYS*/;
LOCK TABLES `appuser` WRITE;
REPLACE INTO `appuser` (`id`, `guid`, `username`, `password`, `question`, `answer`, `userrole`, `createdon`, `createdby`, `modifiedon`, `modifiedby`, `active`) VALUES
	(1,'1f09aefe-545c-438d-a72d-a1232bf54ecb','admin','admin','What is your pet name ?','sunny','admin','2013-03-03 16:16:32',1,'2013-03-03 16:16:32',1,1),
	(9,'834d390c-a866-440a-b282-fb6df6c7f0f9','1111','SAI159372013',NULL,NULL,'student','2013-03-17 08:28:08',1,'2013-03-17 08:28:08',1,1),
	(10,'fb01beeb-1f78-4d60-afb6-9045d483b985','111','SAI286222013',NULL,NULL,'student','2013-03-17 11:00:34',1,'2013-03-17 11:00:34',1,1),
	(11,'3811d7df-7ac1-40e0-b706-c859acf5d059','1112','SAI287752013',NULL,NULL,'student','2013-03-19 10:14:26',1,'2013-03-19 10:14:26',1,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `appuser` ENABLE KEYS*/;


#
# Table structure for table 'department'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `department` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `deptname` varchar(255) default NULL,
  `deptcode` varchar(255) default NULL,
  `createdon` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedon` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'department'
#

/*!40000 ALTER TABLE `department` DISABLE KEYS*/;
LOCK TABLES `department` WRITE;
REPLACE INTO `department` (`id`, `guid`, `deptname`, `deptcode`, `createdon`, `createdby`, `modifiedon`, `modifiedby`, `active`) VALUES
	(1,'93d843ea-d7ad-478f-a3ce-1303b7ee760a','Computer Science Engineering','CSE',NULL,NULL,NULL,NULL,NULL),
	(2,'56aaf6be-97a0-471b-9146-1b4bfbd5182b','Master of Computer Applications','MCA',NULL,NULL,NULL,NULL,NULL),
	(3,'a645f218-af7b-4ff1-aa82-71581a2e151e','Ecectronics Engineering','ECE',NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `department` ENABLE KEYS*/;


#
# Table structure for table 'faculty'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `faculty` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `facultyName` varchar(255) default NULL,
  `departmentName` varchar(255) default NULL,
  `departmentCode` varchar(50) default NULL,
  `email` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `createdOn` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedOn` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'faculty'
#

/*!40000 ALTER TABLE `faculty` DISABLE KEYS*/;
LOCK TABLES `faculty` WRITE;
REPLACE INTO `faculty` (`id`, `guid`, `facultyName`, `departmentName`, `departmentCode`, `email`, `mobile`, `createdOn`, `createdby`, `modifiedOn`, `modifiedby`, `active`) VALUES
	(1,'9fb4a6f1-5272-4898-a1b2-8be8346188be','Kiran Kumar','Computer Science Engineering','CSE','kiran@gmail.com','9848584518',NULL,NULL,NULL,NULL,NULL),
	(2,'6237768c-6e38-40f8-8c0c-2333d9548456','Sudarsan','Master of Computer Applications','MCA','sudarsan.a@live.com','9676534400',NULL,NULL,NULL,NULL,NULL),
	(3,'76768a1a-b352-4290-8efd-d42eb865d188','Ravi','Ecectronics Engineering','ECE','ravi@gmail.com','9676534400',NULL,NULL,NULL,NULL,NULL),
	(4,'a67cbff5-e005-4f22-9490-d5795d1cf0e7','Kumar','Computer Science Engineering','CSE','kumar@gmail.com','9676534400',NULL,NULL,NULL,NULL,NULL),
	(5,'bb6fd392-8502-4b30-8694-cc4c16ab9a26','Manoj','Computer Science Engineering','CSE','manoj@gmail.com','9676534400',NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `faculty` ENABLE KEYS*/;


#
# Table structure for table 'facultymap'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `facultymap` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `subjectName` varchar(255) default NULL,
  `subjectCode` varchar(255) default NULL,
  `departmentName` varchar(255) default NULL,
  `departmentCode` varchar(50) default NULL,
  `year` varchar(255) default NULL,
  `semister` varchar(255) default NULL,
  `facultyname` varchar(255) default NULL,
  `createdOn` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedOn` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'facultymap'
#

/*!40000 ALTER TABLE `facultymap` DISABLE KEYS*/;
LOCK TABLES `facultymap` WRITE;
REPLACE INTO `facultymap` (`id`, `guid`, `subjectName`, `subjectCode`, `departmentName`, `departmentCode`, `year`, `semister`, `facultyname`, `createdOn`, `createdby`, `modifiedOn`, `modifiedby`, `active`) VALUES
	(1,'9c5dfa14-ecd8-4b93-bcda-0d0299e03de5','Java','JAVA','Computer Science Engineering','CSE','Year - I','1','Kiran Kumar',NULL,NULL,NULL,NULL,NULL),
	(2,'f34dfc62-21ff-426b-826c-dafb98a09807','Oracle','ORA','Master of Computer Applications','MCA','Year - I','1','Sudarsan',NULL,NULL,NULL,NULL,NULL),
	(3,'ee71818f-962c-424e-b7ec-8452fb339232','Digitial Electronics','DE','Ecectronics Engineering','ECE','Year - I','1','Ravi',NULL,NULL,NULL,NULL,NULL),
	(4,'05bc64bf-32de-46f4-8eff-b4da4e9303ad','Object Oriented Programming','OOP','Computer Science Engineering','CSE','Year - I','1','Sudarsan',NULL,NULL,NULL,NULL,NULL),
	(5,'6fc26069-d16f-4af7-9cf3-b56066db7d9e','Software Engineering','SE','Computer Science Engineering','CSE','Year - I','1','Kumar',NULL,NULL,NULL,NULL,NULL),
	(6,'19c9c786-613b-45e4-8520-315091c02845','Digital Electronics','DE','Computer Science Engineering','CSE','Year - I','1','Manoj',NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `facultymap` ENABLE KEYS*/;


#
# Table structure for table 'feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `feedback` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `subjectName` varchar(255) default NULL,
  `subjectCode` varchar(255) default NULL,
  `departmentName` varchar(255) default NULL,
  `departmentCode` varchar(50) default NULL,
  `year` varchar(255) default NULL,
  `semister` varchar(255) default NULL,
  `studentId` varchar(255) default NULL,
  `facultyName` varchar(255) default NULL,
  `feedBackTotal` varchar(255) default NULL,
  `createdOn` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedOn` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'feedback'
#

/*!40000 ALTER TABLE `feedback` DISABLE KEYS*/;
LOCK TABLES `feedback` WRITE;
REPLACE INTO `feedback` (`id`, `guid`, `subjectName`, `subjectCode`, `departmentName`, `departmentCode`, `year`, `semister`, `studentId`, `facultyName`, `feedBackTotal`, `createdOn`, `createdby`, `modifiedOn`, `modifiedby`, `active`) VALUES
	(1,'619fd1d2-b587-4d65-b97c-14508b00de42','Java','JAVA','Computer Science Engineering','CSE','Year - I','1','111','Kiran Kumar','28',NULL,NULL,NULL,NULL,1),
	(2,'5195bd6b-02ea-4785-8108-1ae12977fb43','Java','JAVA','Computer Science Engineering','CSE','Year - I','1','1111','Kiran Kumar','18',NULL,NULL,NULL,NULL,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS*/;


#
# Table structure for table 'student'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `student` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `subjectName` varchar(255) default NULL,
  `subjectCode` varchar(255) default NULL,
  `departmentName` varchar(255) default NULL,
  `departmentCode` varchar(50) default NULL,
  `year` varchar(255) default NULL,
  `semister` varchar(255) default NULL,
  `studentId` varchar(255) default NULL,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `createdOn` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedOn` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'student'
#

/*!40000 ALTER TABLE `student` DISABLE KEYS*/;
LOCK TABLES `student` WRITE;
REPLACE INTO `student` (`id`, `guid`, `subjectName`, `subjectCode`, `departmentName`, `departmentCode`, `year`, `semister`, `studentId`, `firstName`, `lastName`, `email`, `mobile`, `address`, `createdOn`, `createdby`, `modifiedOn`, `modifiedby`, `active`) VALUES
	(8,'39b30635-9c69-4133-a257-5a54af5eb522','Object Oriented Programming','OOP','Computer Science Engineering','CSE','Year - I','1','1111','assad','sadsad','adssadsads','342343242','sdfdsfdsf','2013-03-17 08:28:08',1,'2013-03-17 08:28:08',1,1),
	(9,'06d0bbe8-a1fb-4410-99ca-450b525ac9a6','Object Oriented Programming','OOP','Computer Science Engineering','CSE','Year - I','1','111','sadsad','asdsad','zarvis.a@gmail.com','9676534400','sddsfdsfds','2013-03-17 11:00:34',1,'2013-03-17 11:00:34',1,1),
	(10,'14c41a9d-7dfb-431f-b13c-c1117f9c87dc','Java','JAVA','Computer Science Engineering','CSE','Year - I','1','1112','Sudarsan','A','zarvis.a@gmail.com','9676534400','TestTest','2013-03-19 10:14:26',1,'2013-03-19 10:14:26',1,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `student` ENABLE KEYS*/;


#
# Table structure for table 'subject'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `subject` (
  `id` int(10) NOT NULL auto_increment,
  `guid` varchar(255) NOT NULL,
  `subjectName` varchar(255) default NULL,
  `subjectCode` varchar(255) default NULL,
  `departmentName` varchar(255) default NULL,
  `departmentCode` varchar(50) default NULL,
  `year` varchar(255) default NULL,
  `semister` varchar(255) default NULL,
  `createdOn` datetime default NULL,
  `createdby` int(10) default NULL,
  `modifiedOn` datetime default NULL,
  `modifiedby` int(10) default NULL,
  `active` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'subject'
#

/*!40000 ALTER TABLE `subject` DISABLE KEYS*/;
LOCK TABLES `subject` WRITE;
REPLACE INTO `subject` (`id`, `guid`, `subjectName`, `subjectCode`, `departmentName`, `departmentCode`, `year`, `semister`, `createdOn`, `createdby`, `modifiedOn`, `modifiedby`, `active`) VALUES
	(1,'a870c27e-d2b7-4d47-8fef-2b14f2a4a951','Java','JAVA','Computer Science Engineering','CSE','Year - I','1',NULL,NULL,NULL,NULL,NULL),
	(2,'d1906b12-ef37-41bf-9c3d-d3d15f0c92fd','Oracle','ORA','Master of Computer Applications','MCA','Year - I','1',NULL,NULL,NULL,NULL,NULL),
	(3,'884ea625-a2c4-420a-bc7e-37adc7065b27','Object Oriented Programming','OOP','Computer Science Engineering','CSE','Year - I','1',NULL,NULL,NULL,NULL,NULL),
	(4,'7c77c5aa-1c44-4c96-b4c1-c6064749748a','Digitial Electronics','DE','Ecectronics Engineering','ECE','Year - I','1',NULL,NULL,NULL,NULL,NULL),
	(5,'50c097ef-b143-48a5-9c60-d6f48435a403','Software Engineering','SE','Computer Science Engineering','CSE','Year - I','1',NULL,NULL,NULL,NULL,NULL),
	(6,'bdee8ed9-d60a-401d-a870-a338a258d8c2','Digital Electronics','DE','Computer Science Engineering','CSE','Year - I','1',NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `subject` ENABLE KEYS*/;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS*/;
