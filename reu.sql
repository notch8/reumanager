-- MySQL dump 10.13  Distrib 5.6.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: reu_development
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) DEFAULT NULL,
  `image_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
INSERT INTO `refinery_images` VALUES (1,'image/jpeg','uf.jpg',21983,260,195,'2013/01/20/00_51_03_500_uf.jpg',NULL,'2013-01-20 08:51:03','2013-01-20 08:51:03'),(2,'image/jpeg','surf.jpg',16852,260,195,'2013/01/20/00_55_35_414_surf.jpg',NULL,'2013-01-20 08:55:35','2013-01-20 08:55:35'),(3,'image/jpeg','efore.jpg',15789,260,195,'2013/01/20/01_12_59_341_efore.jpg',NULL,'2013-01-20 09:12:59','2013-01-20 09:12:59'),(4,'image/jpeg','be.jpg',15552,195,146,'2013/01/20/15_40_24_185_be.jpg',NULL,'2013-01-20 23:40:24','2013-01-20 23:40:24');
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_f9716c4215584edbca2557e32706a5ae084a15ef` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (18,18,'en','','2012-11-06 01:20:15','2012-11-06 01:20:15'),(20,20,'en','<div class=\"inner\">\r\n<div class=\"tour_dots\">\r\n  <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/dashboard.png\" />\r\n  <span class=\"badge badge-inverse badge1\">1</span>\r\n  <span class=\"badge badge-inverse badge2\">2</span>\r\n  <span class=\"badge badge-inverse badge3\">3</span>\r\n  <span class=\"badge badge-inverse badge4\">4</span>\r\n</div>\r\n\r\n<ul class=\"pizazz\">\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">1</span> Application Overview</h3>\r\n    <p>Get an overview of the status of all your online applicants</p>\r\n  </li>\r\n\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">2</span> Archive Past Projects</h3>\r\n    <p>Archive your past projects online</p>\r\n  </li>\r\n\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">3</span> Customize Your Website</h3>\r\n    <p>Customize various text snippets used throughout your website</p>\r\n  </li>\r\n\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">4</span> Application Status</h3>\r\n    <p>View applications based on current status</p>\r\n  </li>\r\n</ul>\r\n</div>','2012-11-13 05:09:18','2013-01-01 02:41:18'),(21,21,'en','<div class=\"inner\">\r\n<p>Want to learn even more about how REU Manager works? &#160;&#160;&#160;<a href=\"https://iem.ucsd.edu/redmine/projects/nsfreu/wiki\" class=\"btn btn-large btn-success\">Take a look at our wiki</a>\r\n</p>\r\n\r\n</div>','2012-11-13 05:09:18','2013-01-24 21:18:38'),(22,22,'en','\r\n<h2>The Basics</h2>\r\n<p>Students create an account linked to their email address and complete their application online.  The application can be saved and therefore completed over a period of time.  The online forms are validated by the software to assure that the data is accurate, complete, and entered within the application\'s time frame.  A recommendation request is sent upon completion of the student portion of the form.  The recommendation is entered online and completes the application process for the student.</p>\r\n\r\n<div class=\"inner\"><hr class=\"clear\" /></div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"span6\">\r\n        <h2>Customize</h2>\r\n        <p>Basic text snippets and settings are customizable by non-technical staff via a web interface. Those with basic web development experience (HTML/CSS) can further customize the look and feel of the application by modifying its template system.</p>\r\n    </div>\r\n    <div class=\"span6\">\r\n       <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/settings.png\" />\r\n    </div>\r\n<div class=\"span12\"><div class=\"inner\"><hr class=\"clear\" /></div>\r\n</div>\r\n    <div class=\"span6\">\r\n        <h2>Application Evaluation</h2>\r\n        <p>Applications can be reviewed online and offline.  Admin privileges can be granted to those involved in the review process.  The online interface allows for basic filtering and sorting.  The filtered data can then be exported to your favorite spreadsheet application or to a PDF file.</p>\r\n    </div>\r\n    <div class=\"span6\">\r\n        <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/app.png\" />\r\n    </div>\r\n<div class=\"span12\"><div class=\"inner\"><hr class=\"clear\" /></div>\r\n</div>\r\n    <div class=\"span6\">\r\n        <h2>Applicant Notifications</h2>\r\n        <p>Basic notifications are sent during each step of the application process.  Students may also login at any time for a status update or to resend their recommendation request.</p>\r\n    </div>\r\n    <div class=\"span6\">\r\n        <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/notification.png\" />\r\n    </div>    \r\n</div>\r\n','2012-11-13 05:09:18','2013-01-01 02:41:18'),(23,23,'en','<div class=\"inner\">\r\n<div class=\"tour_dots\">\r\n<img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/dashboard.png\" />\r\n</div>\r\n\r\n<div class=\"pizazz\">\r\n<h2>Application Management</h2>\r\n<p>Effortlessly manage hundreds of online applications. The REU manager automates the process from start to finish.</p>\r\n\r\n<h2>Less Fuss, More Function</h2>\r\n<p>Cut the fat out of your workflow. No more paper, no postal mail, no scanning. Completely digital (unless you want a printout)</p>      \r\n</div>\r\n</div>','2012-11-17 05:46:25','2013-01-02 23:04:30'),(24,24,'en','<div class=\"inner\">\r\n<a href=\"https://reumanager.com/demo\" class=\"btn btn-large btn-success pull-right\">Try REU Manager for free</a>\r\n<p>REU manager will simplify your workflow so you can do the job you were hired to do</p>\r\n</div>','2012-11-17 05:47:06','2012-12-30 18:21:53'),(25,25,'en','<div class=\"row\"> \r\n    <div class=\"span4\"> \r\n        <div class=\"inner\"> \r\n            <h5><em class=\"icon-home\"></em> Everything Organized Online</h5> <p>Avoid paper cuts and don\'t let anything \"get lost in the mail\". &#160;We consolidate everything in one place.</p>\r\n        </div>\r\n    </div> \r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n            <h5><em class=\"icon-tag\"></em> Filter Candidates</h5>\r\n            <p>Admin users can search and filter&#160;candidates&#160;by specific criteria.</p>\r\n        </div>\r\n    </div>\r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n            <h5><em class=\"icon-envelope\"></em>Automatic Notifications</h5>\r\n            <p>Applicants are kept in the loop from start to finish. &#160;Email notifications are sent throughout each step of the application process.</p>\r\n        </div>\r\n    </div> \r\n    <div class=\"span12\">\r\n        <div class=\"inner\"><hr class=\"clear\" /></div>\r\n    </div>\r\n    <div class=\"span4\"> <div class=\"inner\"> <h5><em class=\"icon-print\"></em> Export To Various Formats</h5> <p>Your application data can be exported to PDF or spreadsheet format.</p>\r\n    </div>\r\n</div>\r\n<div class=\"span4\"><div class=\"inner\"><h5><em class=\"icon-ok-sign\"></em> Pick Applicants</h5> <p>You and other faculty may select applicants using the online system.&#160;</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><em class=\"icon-refresh\"></em>\r\nBackup and Reset</h5> <p>You data is automatically backed up and can be reset for each application year.</p> </div> </div> </div> \r\n<div class=\"inner\"> <h3>Whether your program is large or small, REU Manager strives to be the most efficient solution for your application process</h3>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"span4\"> \r\n        <div class=\"inner\">\r\n            <a href=\"https://reumanager.com/uf\">\r\n                <img src=\"/system/images/BAhbBlsHOgZmSSIjMjAxMy8wMS8yMC8wMF81MV8wM181MDBfdWYuanBnBjoGRVQ/uf.jpg\" title=\"UF\" alt=\"UF\" width=\"260\" height=\"195\" />\r\n                <p class=\"text-align-center\">UF Materials Science and Engineering REU in Infrastructure Materials</p>\r\n            </a>\r\n        </div>\r\n    </div> \r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n            <a href=\"https://reumanager.com/surf\">\r\n                <img src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMy8wMS8yMC8wMF81NV8zNV80MTRfc3VyZi5qcGcGOgZFVA/surf.jpg\" title=\"Surf\" alt=\"Surf\" width=\"260\" height=\"195\" />\r\n                <p class=\"text-align-center\">UCSD Scripps Student Undergraduate Research Experience (SURF)</p>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    \r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n          <a href=\"https://reumanager.com/be\">\r\n              <img src=\"/system/images/BAhbBlsHOgZmSSIjMjAxMy8wMS8yMC8xNV80MF8yNF8xODVfYmUuanBnBjoGRVQ/be.jpg\" title=\"efore\" alt=\"efore\" width=\"260\" height=\"195\" />\r\n              <p class=\"text-align-center\">UCSD Bioengineering REU in Regenerative Medicine, Multi-Scale Bioengineering, and Systems Biology</p>\r\n          </a>\r\n        </div>\r\n    </div>\r\n</div>','2012-11-17 05:47:06','2013-06-10 23:50:47'),(26,26,'en','<div class=\"row\">\r\n    <div class=\"span6\">\r\n        <div class=\"well\">\r\n          <h3>Hosted Version</h3>\r\n          <p>We offer the application as a software as a service (SaaS) for those without the technical staff to support the free version. The initial set-up fee of <span class=\"alert-success\">$750</span> includes:</p>\r\n\r\n\r\n          <ul>\r\n            <li>A fully functional online application management system specific to your REU site. Explore the <a class=\"alert-info\" href=\"https://reumanager.com/demo\">Live Demo</a> for more details</li>\r\n            <li>Hosting on a secure server for one year</li>\r\n            <li>Customer support via email for one year</li>\r\n            <li>An archive of your applicant data after you application deadline</li>\r\n        </ul>\r\n        \r\n        <hr />\r\n        \r\n        <p>For each subsequent application cycle, a maintenance fee of <span class=\"alert-success\">$350</span> will be charged for the above services plus one free hour of developer support for customization of your application\'s look and feel.</p>\r\n       \r\n               <hr /> \r\n\r\n        <h4>Additional Development and Customization</h4>\r\n        <p>One hour of tech support is included in the base cost of the hosted application, however, you are welcome to design the application to your liking.  We can match your university\'s graphical templates or add additional questions and steps to the application process. Additional support will be charges a rate of $100 per hour.</p>\r\n</div>\r\n    </div>\r\n    <div class=\"span6\">\r\n        <div class=\"well\">\r\n          <h3>Free Version</h3>\r\n<p>We offer access to our <a class=\"alert-info\" href=\"https://github.com/notch8/reumanager\">source code</a> for those with technical staff interested in hosting the application on their own.  It must be noted that a considerable amount of effort must go into securing the student data in order to prevent theft or data loss.  Failure to comply to FERPA standards or properly secure one\'s application may damage your university\'s reputation or even result in fines.</p>\r\n<p>The web application is built using Ruby on Rails and can be hosted using the operating system of your choice. Further instructions can be found on our <a class=\"alert-info\" href=\"https://iem.ucsd.edu/redmine/projects/nsfreu/wiki\" title=\"https://iem.ucsd.edu/redmine/projects/nsfreu/wiki\">support site</a>.\r\n</p>\r\n</div>\r\n    </div>\r\n</div>','2012-11-17 08:20:48','2016-01-05 00:27:51'),(27,27,'en','<div class=\"inner\">\r\n<p>Do you have questions? &#160;Would you like to to sign up for our service? &#160;&#160;&#160;&#160;<a href=\"mailto:crystal@notch8.com\" class=\"btn btn-large btn-success\">Contact us for more info</a>\r\n</p>\r\n\r\n</div>','2012-11-17 08:20:48','2016-01-05 00:27:10'),(28,28,'en','<div class=\"inner\"><h2>Included in the Hosted Setup</h2>\r\n</div>\r\n<div class=\"row\"> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">1</span> Customized Online Application\r\n</h5>\r\n<p>One hour of support is included to customize questions on your application and the look and feel of your website.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">2</span> Secure Hosting and Data</h5>\r\n<p>Your data is safe with us.  Our website is hosted securely and&#160;backed up daily to an offsite facilty.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">3</span>\r\nOnline Support</h5> <p>Our staff is ready to help with any questions you may have. &#160;We can also further customize the application as you see fit.</p> </div>\r\n</div>\r\n\r\n<div class=\"span12\"><div class=\"inner\"><hr class=\"clear\" />\r\n</div>\r\n</div>\r\n<div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">4</span>&#160;Support 1000\'s of applications</h5> <p>Our system can handle 1000\'s of applications allowing you to focus where you\'re needed most.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">5</span> Consolidated Data</h5> <p>We keep all of your application data in one place that is easily accessible for you and your fellow faculty members. This data can be exported at the application\'s end and reset for the next application year.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">6</span>\r\nLatest Updates</h5> <p>We are constantly improving the performance and adding features where necessary. &#160;The hosted version inherits these updates as soon as their deemed ready by our development team.</p> </div> </div> </div>','2012-11-17 08:20:48','2016-01-05 00:23:41'),(29,29,'en','','2012-11-19 06:05:50','2012-11-19 06:05:50'),(30,30,'en','<div class=\"inner\">\r\n<a href=\"https://reu.ucsd.edu/demo\" class=\"btn btn-large btn-success pull-right\">Try REU Manager for free</a>\r\n<p>REU manager will simplify your workflow so you can do the job you were hired to do</p>\r\n</div>','2012-11-19 06:05:50','2012-11-19 06:05:50'),(31,31,'en','','2012-11-19 06:05:50','2012-11-19 06:05:50'),(32,32,'en','','2013-01-02 05:43:35','2013-01-02 05:44:02'),(33,33,'en','<h2>Sorry, there was a problem...</h2>\r\n<p>The page you requested was not found.</p>\r\n<p><a href=\"/\">Return to the home page</a>\r\n</p>','2013-01-02 05:43:35','2013-01-02 05:44:02'),(34,34,'en','','2013-01-02 05:43:35','2013-01-02 05:43:35'),(35,35,'en','','2013-01-02 18:24:57','2013-01-02 18:24:57'),(36,36,'en','','2013-01-02 18:24:57','2013-01-02 18:24:57'),(37,37,'en','','2013-01-02 18:24:57','2013-01-02 18:24:57');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (18,5,'Side Body','',0,'2012-11-06 01:20:15','2012-11-19 06:10:07'),(20,4,'Top','<div class=\"inner\">\r\n<div class=\"tour_dots\">\r\n  <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/dashboard.png\" />\r\n  <span class=\"badge badge-inverse badge1\">1</span>\r\n  <span class=\"badge badge-inverse badge2\">2</span>\r\n  <span class=\"badge badge-inverse badge3\">3</span>\r\n  <span class=\"badge badge-inverse badge4\">4</span>\r\n</div>\r\n\r\n<ul class=\"pizazz\">\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">1</span> Application Overview</h3>\r\n    <p>Get an overview of the status of all your online applicants</p>\r\n  </li>\r\n\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">2</span> Archive Past Projects</h3>\r\n    <p>Archive your past projects online</p>\r\n  </li>\r\n\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">3</span> Customize Your Website</h3>\r\n    <p>Customize various text snippets used throughout your website</p>\r\n  </li>\r\n\r\n  <li>\r\n    <h3><span class=\"badge badge-inverse\">4</span> Application Status</h3>\r\n    <p>View applications based on current status</p>\r\n  </li>\r\n</ul>\r\n</div>',0,'2012-11-13 05:09:18','2013-01-24 21:18:38'),(21,4,'Middle','<div class=\"inner\">\r\n<p>Want to learn even more about how REU Manager works? &#160;&#160;&#160;<a href=\"https://iem.ucsd.edu/redmine/projects/nsfreu/wiki\" class=\"btn btn-large btn-success\">Take a look at our wiki</a>\r\n</p>\r\n\r\n</div>',1,'2012-11-13 05:09:18','2013-01-24 21:18:38'),(22,4,'Bottom','\r\n<h2>The Basics</h2>\r\n<p>Students create an account linked to their email address and complete their application online.  The application can be saved and therefore completed over a period of time.  The online forms are validated by the software to assure that the data is accurate, complete, and entered within the application\'s time frame.  A recommendation request is sent upon completion of the student portion of the form.  The recommendation is entered online and completes the application process for the student.</p>\r\n\r\n<div class=\"inner\"><hr class=\"clear\" /></div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"span6\">\r\n        <h2>Customize</h2>\r\n        <p>Basic text snippets and settings are customizable by non-technical staff via a web interface. Those with basic web development experience (HTML/CSS) can further customize the look and feel of the application by modifying its template system.</p>\r\n    </div>\r\n    <div class=\"span6\">\r\n       <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/settings.png\" />\r\n    </div>\r\n<div class=\"span12\"><div class=\"inner\"><hr class=\"clear\" /></div>\r\n</div>\r\n    <div class=\"span6\">\r\n        <h2>Application Evaluation</h2>\r\n        <p>Applications can be reviewed online and offline.  Admin privileges can be granted to those involved in the review process.  The online interface allows for basic filtering and sorting.  The filtered data can then be exported to your favorite spreadsheet application or to a PDF file.</p>\r\n    </div>\r\n    <div class=\"span6\">\r\n        <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/app.png\" />\r\n    </div>\r\n<div class=\"span12\"><div class=\"inner\"><hr class=\"clear\" /></div>\r\n</div>\r\n    <div class=\"span6\">\r\n        <h2>Applicant Notifications</h2>\r\n        <p>Basic notifications are sent during each step of the application process.  Students may also login at any time for a status update or to resend their recommendation request.</p>\r\n    </div>\r\n    <div class=\"span6\">\r\n        <img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/notification.png\" />\r\n    </div>    \r\n</div>\r\n',2,'2012-11-13 05:09:18','2013-01-24 21:18:38'),(23,1,'Top','<div class=\"inner\">\r\n<div class=\"tour_dots\">\r\n<img alt=\"Dashboard\" class=\"screenshot\" src=\"/assets/dashboard.png\" />\r\n</div>\r\n\r\n<div class=\"pizazz\">\r\n<h2>Application Management</h2>\r\n<p>Effortlessly manage hundreds of online applications. The REU manager automates the process from start to finish.</p>\r\n\r\n<h2>Less Fuss, More Function</h2>\r\n<p>Cut the fat out of your workflow. No more paper, no postal mail, no scanning. Completely digital (unless you want a printout)</p>      \r\n</div>\r\n</div>',0,'2012-11-17 05:46:25','2013-06-10 23:50:47'),(24,1,'Middle','<div class=\"inner\">\r\n<a href=\"https://reumanager.com/demo\" class=\"btn btn-large btn-success pull-right\">Try REU Manager for free</a>\r\n<p>REU manager will simplify your workflow so you can do the job you were hired to do</p>\r\n</div>',1,'2012-11-17 05:47:06','2013-06-10 23:50:47'),(25,1,'Bottom','<div class=\"row\"> \r\n    <div class=\"span4\"> \r\n        <div class=\"inner\"> \r\n            <h5><em class=\"icon-home\"></em> Everything Organized Online</h5> <p>Avoid paper cuts and don\'t let anything \"get lost in the mail\". &#160;We consolidate everything in one place.</p>\r\n        </div>\r\n    </div> \r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n            <h5><em class=\"icon-tag\"></em> Filter Candidates</h5>\r\n            <p>Admin users can search and filter&#160;candidates&#160;by specific criteria.</p>\r\n        </div>\r\n    </div>\r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n            <h5><em class=\"icon-envelope\"></em>Automatic Notifications</h5>\r\n            <p>Applicants are kept in the loop from start to finish. &#160;Email notifications are sent throughout each step of the application process.</p>\r\n        </div>\r\n    </div> \r\n    <div class=\"span12\">\r\n        <div class=\"inner\"><hr class=\"clear\" /></div>\r\n    </div>\r\n    <div class=\"span4\"> <div class=\"inner\"> <h5><em class=\"icon-print\"></em> Export To Various Formats</h5> <p>Your application data can be exported to PDF or spreadsheet format.</p>\r\n    </div>\r\n</div>\r\n<div class=\"span4\"><div class=\"inner\"><h5><em class=\"icon-ok-sign\"></em> Pick Applicants</h5> <p>You and other faculty may select applicants using the online system.&#160;</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><em class=\"icon-refresh\"></em>\r\nBackup and Reset</h5> <p>You data is automatically backed up and can be reset for each application year.</p> </div> </div> </div> \r\n<div class=\"inner\"> <h3>Whether your program is large or small, REU Manager strives to be the most efficient solution for your application process</h3>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"span4\"> \r\n        <div class=\"inner\">\r\n            <a href=\"https://reumanager.com/uf\">\r\n                <img src=\"/system/images/BAhbBlsHOgZmSSIjMjAxMy8wMS8yMC8wMF81MV8wM181MDBfdWYuanBnBjoGRVQ/uf.jpg\" title=\"UF\" alt=\"UF\" width=\"260\" height=\"195\" />\r\n                <p class=\"text-align-center\">UF Materials Science and Engineering REU in Infrastructure Materials</p>\r\n            </a>\r\n        </div>\r\n    </div> \r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n            <a href=\"https://reumanager.com/surf\">\r\n                <img src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMy8wMS8yMC8wMF81NV8zNV80MTRfc3VyZi5qcGcGOgZFVA/surf.jpg\" title=\"Surf\" alt=\"Surf\" width=\"260\" height=\"195\" />\r\n                <p class=\"text-align-center\">UCSD Scripps Student Undergraduate Research Experience (SURF)</p>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    \r\n    <div class=\"span4\">\r\n        <div class=\"inner\">\r\n          <a href=\"https://reumanager.com/be\">\r\n              <img src=\"/system/images/BAhbBlsHOgZmSSIjMjAxMy8wMS8yMC8xNV80MF8yNF8xODVfYmUuanBnBjoGRVQ/be.jpg\" title=\"efore\" alt=\"efore\" width=\"260\" height=\"195\" />\r\n              <p class=\"text-align-center\">UCSD Bioengineering REU in Regenerative Medicine, Multi-Scale Bioengineering, and Systems Biology</p>\r\n          </a>\r\n        </div>\r\n    </div>\r\n</div>',2,'2012-11-17 05:47:06','2013-06-10 23:50:47'),(26,3,'Top','<div class=\"row\">\r\n    <div class=\"span6\">\r\n        <div class=\"well\">\r\n          <h3>Hosted Version</h3>\r\n          <p>We offer the application as a software as a service (SaaS) for those without the technical staff to support the free version. The initial set-up fee of <span class=\"alert-success\">$750</span> includes:</p>\r\n\r\n\r\n          <ul>\r\n            <li>A fully functional online application management system specific to your REU site. Explore the <a class=\"alert-info\" href=\"https://reumanager.com/demo\">Live Demo</a> for more details</li>\r\n            <li>Hosting on a secure server for one year</li>\r\n            <li>Customer support via email for one year</li>\r\n            <li>An archive of your applicant data after you application deadline</li>\r\n        </ul>\r\n        \r\n        <hr />\r\n        \r\n        <p>For each subsequent application cycle, a maintenance fee of <span class=\"alert-success\">$350</span> will be charged for the above services plus one free hour of developer support for customization of your application\'s look and feel.</p>\r\n       \r\n               <hr /> \r\n\r\n        <h4>Additional Development and Customization</h4>\r\n        <p>One hour of tech support is included in the base cost of the hosted application, however, you are welcome to design the application to your liking.  We can match your university\'s graphical templates or add additional questions and steps to the application process. Additional support will be charges a rate of $100 per hour.</p>\r\n</div>\r\n    </div>\r\n    <div class=\"span6\">\r\n        <div class=\"well\">\r\n          <h3>Free Version</h3>\r\n<p>We offer access to our <a class=\"alert-info\" href=\"https://github.com/notch8/reumanager\">source code</a> for those with technical staff interested in hosting the application on their own.  It must be noted that a considerable amount of effort must go into securing the student data in order to prevent theft or data loss.  Failure to comply to FERPA standards or properly secure one\'s application may damage your university\'s reputation or even result in fines.</p>\r\n<p>The web application is built using Ruby on Rails and can be hosted using the operating system of your choice. Further instructions can be found on our <a class=\"alert-info\" href=\"https://iem.ucsd.edu/redmine/projects/nsfreu/wiki\" title=\"https://iem.ucsd.edu/redmine/projects/nsfreu/wiki\">support site</a>.\r\n</p>\r\n</div>\r\n    </div>\r\n</div>',0,'2012-11-17 08:20:48','2016-01-05 00:27:51'),(27,3,'Middle','<div class=\"inner\">\r\n<p>Do you have questions? &#160;Would you like to to sign up for our service? &#160;&#160;&#160;&#160;<a href=\"mailto:crystal@notch8.com\" class=\"btn btn-large btn-success\">Contact us for more info</a>\r\n</p>\r\n\r\n</div>',1,'2012-11-17 08:20:48','2016-01-05 00:27:51'),(28,3,'Bottom','<div class=\"inner\"><h2>Included in the Hosted Setup</h2>\r\n</div>\r\n<div class=\"row\"> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">1</span> Customized Online Application\r\n</h5>\r\n<p>One hour of support is included to customize questions on your application and the look and feel of your website.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">2</span> Secure Hosting and Data</h5>\r\n<p>Your data is safe with us.  Our website is hosted securely and&#160;backed up daily to an offsite facilty.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">3</span>\r\nOnline Support</h5> <p>Our staff is ready to help with any questions you may have. &#160;We can also further customize the application as you see fit.</p> </div>\r\n</div>\r\n\r\n<div class=\"span12\"><div class=\"inner\"><hr class=\"clear\" />\r\n</div>\r\n</div>\r\n<div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">4</span>&#160;Support 1000\'s of applications</h5> <p>Our system can handle 1000\'s of applications allowing you to focus where you\'re needed most.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">5</span> Consolidated Data</h5> <p>We keep all of your application data in one place that is easily accessible for you and your fellow faculty members. This data can be exported at the application\'s end and reset for the next application year.</p> </div> </div> <div class=\"span4\"> <div class=\"inner\"> <h5><span class=\"badge badge-inverse\">6</span>\r\nLatest Updates</h5> <p>We are constantly improving the performance and adding features where necessary. &#160;The hosted version inherits these updates as soon as their deemed ready by our development team.</p> </div> </div> </div>',2,'2012-11-17 08:20:48','2016-01-05 00:27:51'),(29,5,'Top','',1,'2012-11-19 06:05:50','2012-11-19 06:10:07'),(30,5,'Middle','<div class=\"inner\">\r\n<a href=\"https://reu.ucsd.edu/demo\" class=\"btn btn-large btn-success pull-right\">Try REU Manager for free</a>\r\n<p>REU manager will simplify your workflow so you can do the job you were hired to do</p>\r\n</div>',2,'2012-11-19 06:05:50','2012-11-19 06:10:07'),(31,5,'Bottom','',3,'2012-11-19 06:05:50','2012-11-19 06:10:07'),(32,2,'Top','',0,'2013-01-02 05:43:35','2013-01-02 05:44:02'),(33,2,'Middle','<h2>Sorry, there was a problem...</h2>\r\n<p>The page you requested was not found.</p>\r\n<p><a href=\"/\">Return to the home page</a>\r\n</p>',1,'2013-01-02 05:43:35','2013-01-02 05:44:02'),(34,2,'Bottom','',2,'2013-01-02 05:43:35','2013-01-02 05:44:02'),(35,6,'Top','',0,'2013-01-02 18:24:57','2013-01-02 18:24:57'),(36,6,'Middle','',1,'2013-01-02 18:24:57','2013-01-02 18:24:57'),(37,6,'Bottom','',2,'2013-01-02 18:24:57','2013-01-02 18:24:57');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `custom_slug` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_d079468f88bff1c6ea81573a0d019ba8bf5c2902` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','Home',NULL,'','home','2012-11-04 04:12:46','2012-11-05 05:52:39'),(2,2,'en','Page not found',NULL,'','page-not-found','2012-11-04 04:12:46','2013-01-02 05:43:35'),(3,3,'en','Pricing & Signup',NULL,'','pricing-signup','2012-11-04 04:12:46','2012-11-05 06:53:32'),(4,4,'en','Tour',NULL,'','tour','2012-11-05 05:53:05','2012-11-05 06:53:20'),(5,5,'en','Support',NULL,'','support','2012-11-06 01:20:15','2012-11-06 01:20:15'),(6,6,'en','Demo',NULL,'','demo','2013-01-02 18:24:57','2013-01-02 18:24:57');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) DEFAULT NULL,
  `menu_match` varchar(255) DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) DEFAULT NULL,
  `layout_template` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'home',0,'/','^/$',0,0,0,1,4,0,NULL,NULL,'2012-11-04 04:12:46','2013-06-10 23:50:47'),(2,1,NULL,'page-not-found',0,'','^/404$',0,0,0,2,3,1,NULL,NULL,'2012-11-04 04:12:46','2013-01-02 05:44:02'),(3,NULL,NULL,'pricing-signup',1,'',NULL,1,0,0,7,8,0,NULL,NULL,'2012-11-04 04:12:46','2016-01-05 00:27:51'),(4,NULL,NULL,'tour',1,'',NULL,1,0,0,5,6,0,NULL,NULL,'2012-11-05 05:53:05','2013-01-24 21:18:38'),(5,NULL,NULL,'support',1,'https://iem.ucsd.edu/redmine/projects/nsfreu/wiki',NULL,1,0,0,11,12,0,NULL,NULL,'2012-11-06 01:20:15','2012-11-19 06:10:07'),(6,NULL,NULL,'demo',1,'/demo',NULL,1,0,0,9,10,0,NULL,NULL,'2013-01-02 18:24:57','2013-01-02 18:24:57');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles`
--

DROP TABLE IF EXISTS `refinery_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles`
--

LOCK TABLES `refinery_roles` WRITE;
/*!40000 ALTER TABLE `refinery_roles` DISABLE KEYS */;
INSERT INTO `refinery_roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `refinery_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles_users`
--

DROP TABLE IF EXISTS `refinery_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_refinery_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_refinery_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles_users`
--

LOCK TABLES `refinery_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_roles_users` DISABLE KEYS */;
INSERT INTO `refinery_roles_users` VALUES (1,1),(2,1),(1,2),(3,2);
/*!40000 ALTER TABLE `refinery_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_user_plugins`
--

DROP TABLE IF EXISTS `refinery_user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_refinery_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_refinery_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_user_plugins`
--

LOCK TABLES `refinery_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_user_plugins` DISABLE KEYS */;
INSERT INTO `refinery_user_plugins` VALUES (1,1,'refinery_users',4),(2,1,'refinery_dashboard',0),(3,1,'refinery_images',2),(4,1,'refinery_files',1),(5,1,'refinery_pages',3),(6,2,'refinery_dashboard',0),(7,2,'refinery_files',1),(8,2,'refinery_images',2),(9,2,'refinery_pages',3),(10,2,'refinery_users',4),(11,3,'refinery_core',0),(12,3,'refinery_dialogs',1),(13,3,'refinery_dashboard',2),(14,3,'refinery_i18n',3),(15,3,'refinery_users',4),(16,3,'refinery_images',5),(17,3,'refinery_files',6),(18,3,'refinery_pages',7);
/*!40000 ALTER TABLE `refinery_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_users`
--

DROP TABLE IF EXISTS `refinery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_users`
--

LOCK TABLES `refinery_users` WRITE;
/*!40000 ALTER TABLE `refinery_users` DISABLE KEYS */;
INSERT INTO `refinery_users` VALUES (1,'jgrevich','jgrevich@ucsd.edu','$2a$10$0EVJReSOVlr8IyLuEDDI3OlICaicz4ZAC7RZwbHuNgIfN9xlgEXoO','2013-06-10 23:40:42','2012-12-30 18:20:27','207.225.131.142','98.155.91.244',4,NULL,NULL,NULL,'2012-11-04 04:14:35','2013-06-10 23:40:42'),(2,'vpoola','vpoola88@gmail.com','$2a$10$pggc74J3OSZ9WxfaamOdDuM3lDMXNt8BFzM42UwW6UxjtgC21OlRm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-01-21 00:00:34','2013-01-21 00:00:34'),(3,'bonnie','bonnie@notch8.com','$2a$10$fNpwsrli8peyWgo639.gZeg/7Q5W2oJ03Qy445eeujjxxY5I0TVD2','2016-01-05 00:07:09','2016-01-05 00:07:09','127.0.0.1','127.0.0.1',1,NULL,NULL,NULL,'2016-01-05 00:07:00','2016-01-05 00:07:09');
/*!40000 ALTER TABLE `refinery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20121104040553'),('20121104040554'),('20121104040555'),('20121104040556'),('20121104040557');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) DEFAULT NULL,
  `browser_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation','NSF REU Manager - An Online Application System','nsfreu, reu, application, online, research, experience, undergraduates, apply','REU manager will simplify your workflow so you can do the job you were hired to do. One can effortlessly manage hundreds of online applications. The REU manager automates the process from start to finish. Cut the fat out of your workflow. No more paper, no postal mail, no scanning. Completely digital (unless you want a printout).','2012-11-04 04:12:46','2013-01-04 01:15:39'),(2,2,'Refinery::Page::Translation','','','','2012-11-04 04:12:46','2013-01-02 05:43:35'),(3,3,'Refinery::Page::Translation','','','','2012-11-04 04:12:46','2012-11-04 06:05:07'),(4,4,'Refinery::Page::Translation','','nsfreu, reu, application, online, research, experience, undergraduates, apply','REU manager will simplify your workflow so you can do the job you were hired to do. One can effortlessly manage hundreds of online applications. The REU manager automates the process from start to finish. Cut the fat out of your workflow. No more paper, no postal mail, no scanning. Completely digital (unless you want a printout).','2012-11-05 05:53:05','2013-01-04 01:44:46'),(5,5,'Refinery::Page::Translation','','','','2012-11-06 01:20:15','2012-11-06 01:20:15'),(6,6,'Refinery::Page::Translation','','','','2013-01-02 18:24:57','2013-01-02 18:24:57');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-06 17:16:16
