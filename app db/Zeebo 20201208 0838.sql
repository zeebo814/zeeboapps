-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.10-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema zeebo_mobile
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ zeebo_mobile;
USE zeebo_mobile;

--
-- Table structure for table `zeebo_mobile`.`ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `zeebo_id` varchar(100) NOT NULL default '',
  `business_id` varchar(100) NOT NULL default '',
  `ad_id` int(11) NOT NULL default '0',
  `account_id` varchar(100) NOT NULL default '',
  `image` varchar(100) NOT NULL default '',
  `start_date` varchar(100) NOT NULL default '',
  `end_date` varchar(100) NOT NULL default '',
  `budget` varchar(100) NOT NULL default '',
  `city_list` varchar(100) NOT NULL default '',
  `gender` varchar(100) NOT NULL default '',
  `age_from` varchar(100) NOT NULL default '',
  `age_to` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`ads`
--

/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`appoinments`
--

DROP TABLE IF EXISTS `appoinments`;
CREATE TABLE `appoinments` (
  `package_id` varchar(100) NOT NULL default '',
  `business_id` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default '',
  `staff_id` varchar(100) NOT NULL default '',
  `description` varchar(100) NOT NULL default '',
  `date` varchar(100) NOT NULL default '',
  `time` varchar(100) NOT NULL default '',
  `special_note` varchar(100) NOT NULL default '',
  `appoinment_number` int(11) NOT NULL auto_increment,
  `accept_reject_remarks` varchar(100) NOT NULL default '',
  `appoinment_status` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`appoinment_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`appoinments`
--

/*!40000 ALTER TABLE `appoinments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appoinments` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `business_id` int(11) NOT NULL auto_increment,
  `zeebo_id` varchar(100) NOT NULL default '',
  `zeebo_account_id` varchar(100) NOT NULL default '',
  `business_name` varchar(100) NOT NULL default '',
  `registration_no` varchar(100) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `mobile_no` varchar(100) NOT NULL default '',
  `land_no` varchar(100) NOT NULL default '',
  `business_img` varchar(100) NOT NULL default '',
  `business_status` varchar(100) NOT NULL default '',
  `main_city` varchar(100) NOT NULL default '',
  `near_city` varchar(100) NOT NULL default '',
  `map_location` varchar(100) NOT NULL default '',
  `about_business` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`business_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`business`
--

/*!40000 ALTER TABLE `business` DISABLE KEYS */;
/*!40000 ALTER TABLE `business` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `ad_id` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default '',
  `comment` varchar(100) NOT NULL default '',
  `like_count` varchar(100) NOT NULL default '',
  `dislike_count` varchar(100) NOT NULL default '',
  `comment_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`common_gallery`
--

DROP TABLE IF EXISTS `common_gallery`;
CREATE TABLE `common_gallery` (
  `image_id` int(11) NOT NULL auto_increment,
  `business_id` varchar(100) NOT NULL default '',
  `image` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`common_gallery`
--

/*!40000 ALTER TABLE `common_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_gallery` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`favorite`
--

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `business_id` varchar(100) NOT NULL default '',
  `user_id` varchar(100) NOT NULL default '',
  `fav_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`fav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`favorite`
--

/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `main_category_id` varchar(100) NOT NULL default '',
  `sub_category_id` varchar(100) NOT NULL default '',
  `image` varchar(100) NOT NULL default '',
  `business_id` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default '',
  `image_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`gallery`
--

/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE `logins` (
  `mobile_no` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `status` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`mobile_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`logins`
--

/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`package_pricing`
--

DROP TABLE IF EXISTS `package_pricing`;
CREATE TABLE `package_pricing` (
  `category_id` varchar(100) NOT NULL default '',
  `sub_category_id` varchar(100) NOT NULL default '',
  `business_id` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`package_pricing`
--

/*!40000 ALTER TABLE `package_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_pricing` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`packages_type`
--

DROP TABLE IF EXISTS `packages_type`;
CREATE TABLE `packages_type` (
  `category_id` varchar(100) NOT NULL default '',
  `sub_category` varchar(100) NOT NULL default '',
  `sub_category_id` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`sub_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`packages_type`
--

/*!40000 ALTER TABLE `packages_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages_type` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `review_count` varchar(100) NOT NULL default '',
  `avarage` varchar(100) NOT NULL default '',
  `last_update` varchar(100) NOT NULL default '',
  `business_staff_id` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`reviews`
--

/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `zeebo_id` varchar(100) NOT NULL default '',
  `business_id` varchar(100) NOT NULL default '',
  `status` varchar(100) NOT NULL default '',
  `designation` varchar(100) NOT NULL default '',
  `registration_no` varchar(100) NOT NULL default '',
  `profile_pic` varchar(100) NOT NULL default '',
  `staff_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`staff`
--

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE `sub_categories` (
  `category_id` varchar(100) NOT NULL default '',
  `sub_category` varchar(100) NOT NULL default '',
  `sub_category_id` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`sub_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`sub_categories`
--

/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`system_users`
--

DROP TABLE IF EXISTS `system_users`;
CREATE TABLE `system_users` (
  `zeebo_id` int(11) NOT NULL auto_increment,
  `user_id` varchar(100) NOT NULL default '',
  `first_name` varchar(100) NOT NULL default '',
  `last_name` varchar(100) NOT NULL default '',
  `contact_no` varchar(100) NOT NULL default '',
  `city` varchar(100) NOT NULL default '',
  `near_city` varchar(100) NOT NULL default '',
  `user_type` varchar(100) NOT NULL default '',
  `user_status` varchar(100) NOT NULL default '',
  `gender` varchar(100) NOT NULL default '',
  `dob` varchar(100) NOT NULL default '',
  `prof_pic` varchar(100) NOT NULL default '',
  `cover_pic` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`zeebo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`system_users`
--

/*!40000 ALTER TABLE `system_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_users` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`transaction_history`
--

DROP TABLE IF EXISTS `transaction_history`;
CREATE TABLE `transaction_history` (
  `transaction_id` varchar(100) NOT NULL default '',
  `zeebo_id` varchar(100) NOT NULL default '',
  `transaction_type` varchar(100) NOT NULL default '',
  `amount` varchar(100) NOT NULL default '',
  `date` varchar(100) NOT NULL default '',
  `time` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`transaction_history`
--

/*!40000 ALTER TABLE `transaction_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_history` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL default '0',
  `sender_zeebo_id` varchar(100) NOT NULL default '',
  `reciver_zeebo_id` varchar(100) NOT NULL default '',
  `transaction_no` varchar(100) NOT NULL default '',
  `item_code` varchar(100) NOT NULL default '',
  `reason` varchar(100) NOT NULL default '',
  `transation_status` varchar(100) NOT NULL default '',
  `date` varchar(100) NOT NULL default '',
  `time` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`transactions`
--

/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`verification`
--

DROP TABLE IF EXISTS `verification`;
CREATE TABLE `verification` (
  `verification_id` int(11) NOT NULL auto_increment,
  `zeebo_id` varchar(100) NOT NULL default '',
  `attempt` varchar(100) NOT NULL default '',
  `verification_no` varchar(100) NOT NULL default '',
  `verification_status` varchar(100) NOT NULL default '',
  `date` varchar(100) NOT NULL default '',
  `time` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`verification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`verification`
--

/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;


--
-- Table structure for table `zeebo_mobile`.`zeebo_bank_account`
--

DROP TABLE IF EXISTS `zeebo_bank_account`;
CREATE TABLE `zeebo_bank_account` (
  `zeebo_id` varchar(100) NOT NULL default '',
  `current_balance` varchar(100) NOT NULL default '',
  `status` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`zeebo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zeebo_mobile`.`zeebo_bank_account`
--

/*!40000 ALTER TABLE `zeebo_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `zeebo_bank_account` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
