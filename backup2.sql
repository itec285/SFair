-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: praxis
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.12.04.1

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
-- Table structure for table `award_awards`
--

DROP TABLE IF EXISTS `award_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sponsors_id` int(10) unsigned NOT NULL DEFAULT '0',
  `award_types_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `criteria` text NOT NULL,
  `description` text NOT NULL,
  `presenter` varchar(128) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `excludefromac` tinyint(1) NOT NULL DEFAULT '0',
  `cwsfaward` tinyint(1) NOT NULL DEFAULT '0',
  `self_nominate` enum('yes','no') NOT NULL DEFAULT 'yes',
  `schedule_judges` enum('yes','no') NOT NULL DEFAULT 'yes',
  `external_identifier` varchar(32) DEFAULT NULL,
  `external_postback` varchar(128) DEFAULT NULL,
  `external_additional_materials` tinyint(1) NOT NULL,
  `external_register_winners` tinyint(1) NOT NULL,
  `award_source_fairs_id` int(10) unsigned DEFAULT NULL,
  `per_fair` enum('no','yes') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `award_sponsors_id` (`sponsors_id`),
  KEY `award_types_id` (`award_types_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_awards`
--

LOCK TABLES `award_awards` WRITE;
/*!40000 ALTER TABLE `award_awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_awards_projectcategories`
--

DROP TABLE IF EXISTS `award_awards_projectcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_awards_projectcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_awards_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projectcategories_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `award_awards_id` (`award_awards_id`),
  KEY `projectcategories_id` (`projectcategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_awards_projectcategories`
--

LOCK TABLES `award_awards_projectcategories` WRITE;
/*!40000 ALTER TABLE `award_awards_projectcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_awards_projectcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_awards_projectdivisions`
--

DROP TABLE IF EXISTS `award_awards_projectdivisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_awards_projectdivisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_awards_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projectdivisions_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `award_awards_id` (`award_awards_id`),
  KEY `projectdivisions_id` (`projectdivisions_id`),
  KEY `year` (`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_awards_projectdivisions`
--

LOCK TABLES `award_awards_projectdivisions` WRITE;
/*!40000 ALTER TABLE `award_awards_projectdivisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_awards_projectdivisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_prizes`
--

DROP TABLE IF EXISTS `award_prizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_prizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_awards_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `scholarship` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `prize` varchar(128) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `excludefromac` tinyint(1) NOT NULL DEFAULT '0',
  `trophystudentkeeper` tinyint(1) NOT NULL DEFAULT '0',
  `trophystudentreturn` tinyint(1) NOT NULL DEFAULT '0',
  `trophyschoolkeeper` tinyint(1) NOT NULL DEFAULT '0',
  `trophyschoolreturn` tinyint(1) NOT NULL DEFAULT '0',
  `external_identifier` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `award_awards_id` (`award_awards_id`),
  KEY `year` (`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_prizes`
--

LOCK TABLES `award_prizes` WRITE;
/*!40000 ALTER TABLE `award_prizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_prizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_types`
--

DROP TABLE IF EXISTS `award_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_types` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_types`
--

LOCK TABLES `award_types` WRITE;
/*!40000 ALTER TABLE `award_types` DISABLE KEYS */;
INSERT INTO `award_types` VALUES (1,'Divisional',1,-1),(2,'Special',2,-1),(3,'Interdisciplinary',3,-1),(4,'Grand',5,-1),(5,'Other',4,-1),(1,'Divisional',1,2018),(2,'Special',2,2018),(3,'Interdisciplinary',3,2018),(4,'Grand',5,2018),(5,'Other',4,2018);
/*!40000 ALTER TABLE `award_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `dt` datetime NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `showlogo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,'index.html','0000-00-00 00:00:00','en','','Welcome to the online registration and management system for the fair.  Using the links on the left the public can register as a participant or register as a judge. \r\n\r\nThe committee can use the Fair Administration link to manage the fair, see who\'s registered, generate reports, etc.  \r\n\r\nThe SFIAB configuration link is for the committee webmaster to manage the configuration of the Science Fair In A Box for the fair.\r\n',1);
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committees`
--

DROP TABLE IF EXISTS `committees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `committees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `ord` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committees`
--

LOCK TABLES `committees` WRITE;
/*!40000 ALTER TABLE `committees` DISABLE KEYS */;
/*!40000 ALTER TABLE `committees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committees_link`
--

DROP TABLE IF EXISTS `committees_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `committees_link` (
  `committees_id` int(10) unsigned NOT NULL DEFAULT '0',
  `users_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL DEFAULT '',
  `ord` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committees_link`
--

LOCK TABLES `committees_link` WRITE;
/*!40000 ALTER TABLE `committees_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `committees_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `var` varchar(64) NOT NULL DEFAULT '',
  `val` text NOT NULL,
  `category` varchar(64) NOT NULL DEFAULT '',
  `type` enum('','yesno','number','text','enum','multisel','language','theme') NOT NULL,
  `type_values` tinytext NOT NULL,
  `ord` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `var` (`var`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('fairname','','Global','','',100,'Name of the fair',-1),('default_language','en','Global','language','',200,'The default language if no language has yet been specified',-1),('minstudentsperproject','1','Participant Registration','number','',1200,'The minimum number of students that can work on a project (usually 1)',-1),('maxstudentsperproject','2','Participant Registration','number','',1300,'The maximum number of students that can work on a project (Usually 2)',-1),('mingrade','7','Participant Registration','number','',800,'The minimum school grade that can enter a project',-1),('maxgrade','12','Participant Registration','number','',900,'The maximum school grade that can enter a project',-1),('minage','10','Participant Registration','number','',600,'The minimum age of the students',-1),('maxage','21','Participant Registration','number','',700,'The maximum age of the students',-1),('maxmentorsperproject','5','Participant Registration','number','',1100,'The maximum number of mentors that can help with a project',-1),('minmentorsperproject','0','Participant Registration','number','',1000,'The minimum number of mentors that can help with a project (usually 0)',-1),('usedivisionselector','yes','Participant Registration','yesno','',3000,'Specify whether to use the division selector flowchart questions to help decide on the division',-1),('minjudgeage','21','Judge Registration','','',400,'The minimum age that a person must be in order to be a judge.',-1),('maxjudgeage','100','Judge Registration','','',500,'The maximum age that a person can be in order to be a judge',-1),('participant_student_foodreq','yes','Participant Registration','yesno','',2500,'Ask for students special food requirements. Should be \'Yes\' if you plan on providing food to the students.',-1),('regfee','','Participant Registration','number','',300,'Registration Fee',-1),('regfee_per','student','Participant Registration','enum','student=Student|project=Project',400,'Registration fee is per student, or per project?',-1),('project_num_format','CDN','Global','','',600,'Project Numbering Format: C=Category ID, c=Category shortform, D=Division ID, d=Division shortform, N, N1, N2, ..., N9=intra division digit sequence number, zero padded to 1-9 digits, or 2 digits if just N is used. X, X1, X2, ..., N9=global sequence number, zero padded to 1-9 digits, or 3 digits if just X is used.',-1),('committee_publiclayout','<tr><td>   <b>name</b></td><td>title</td><td>email</td></tr>','Global','','',500,'The layout (html table row) used to display the committee members on the public committee page',-1),('judges_password_expiry_days','365','Judge Registration','','',300,'Judges passwords expire and they are forced to choose a new one after this many days. (0 for no expiry)',-1),('maxspecialawardsperproject','7','Participant Registration','number','',1400,'The maximum number of self-nominated special awards a project can sign-up for',-1),('specialawardnomination','date','Participant Registration','enum','none=None|date=By Date|registration=With Registration',2900,'Select when students may self nominate for special awards.<br> <ul><li><b>None</b> - Students may not self-nominate for special awards. <li><b>By Date</b> - Between specific dates, specified in the \"Important Dates\" section. <li><b>With Registration</b> - During the same time as registration is open. </ul> ',-1),('fairmanageremail','','Global','','',300,'The email address of the \'fair manager\'.  Any important emails etc generated by the system will be sent here',-1),('participant_registration_type','open','Participant Registration','enum','open=Open|singlepassword=Single Password|schoolpassword=School Password|invite=Invite|openorinvite=Open or Invite',100,'The type of Participant Registration to use',-1),('judge_registration_type','open','Judge Registration','enum','open=Open|singlepassword=Single Password|invite=Invite',100,'The type of Judge Registration to use',-1),('participant_registration_singlepassword','','Participant Registration','','',200,'The single password to use for participant registration if participant_registration_type is singlepassword.  Leave blank if not using singlepassword participant registration',-1),('judge_registration_singlepassword','','Judge Registration','','',200,'The single password to use for judge registration if judge_registration_type is singlepassword.  Leave blank if not using singlepassword judge registration',-1),('participant_student_tshirt','no','Participant Registration','yesno','',2600,'Ask for students their T-Shirt size',-1),('participant_project_summary_wordmax','100','Participant Registration','number','',1800,'The maximum number of words acceptable in the project summary',-1),('filterdivisionbycategory','no','Global','yesno','',400,'Allows for the setup of different divisions for each category',-1),('participant_student_personal','yes','Participant Registration','yesno','',1500,'Collect personal information about the students, such as phone number, address, gender, etc.',-1),('max_projects_per_team','7','Judge Scheduler','','',400,'The maximum number of projects that a judging team can judge.',-1),('times_judged','1','Judge Scheduler','','',500,'The number of times each project must be judged by different judging teams.',-1),('min_judges_per_team','3','Judge Scheduler','','',200,'The minimum number of judges that can be on a judging team.',-1),('max_judges_per_team','3','Judge Scheduler','','',300,'The maximum number of judges that can be on a judging team.',-1),('effort','10000','Judge Scheduler','enum','100=Low|1000=Medium|10000=High',100,'This controls how long and hard the judge scheduler will look for a scheduling solution. Low effort will finish almost instantly but give a very poor result. High effort can take several tens of minutes to run, but it gives a very good solution.',-1),('project_status','payment_pending','Judge Scheduler','enum','open=Open|payment_pending=Payment Pending|complete=Complete',600,'The status a project must have to be considered eligible for judge scheduling. ',-1),('DBVERSION','171','Special','','',0,'',0),('fiscal_yearend','','Fundraising','text','',200,'Your organization\'s fiscal year end. Specified in format MM-DD. Must be set in order for the Fundraising Module to function.',-1),('participant_mentor','yes','Participant Registration','yesno','',1700,'Ask for mentorship information',-1),('participant_project_title_charmax','100','Participant Registration','number','',2000,'The maximum number of characters acceptable in the project title (Max 255)',-1),('participant_project_table','yes','Participant Registration','yesno','',2300,'Ask if the project requires a table',-1),('participant_project_electricity','yes','Participant Registration','yesno','',2400,'Ask if the project requires electricity',-1),('tours_enable','no','Tours','yesno','',0,'Enable the \"tours\" module.  Set to \"yes\" to allow participants to select tours',-1),('tours_choices_min','1','Tours','','',100,'Minimum number of tours a participant must select',-1),('tours_choices_max','3','Tours','','',200,'Maximum number of tours a participant may select',-1),('scheduler_enable_sa_scheduling','no','Judge Scheduler','yesno','',900,'Allow the scheduler to automatically create a judging team for each special award, and assigned unused divisional judges to special awards.',-1),('participant_student_tshirt_cost','0.00','Participant Registration','number','',2700,'The cost of each T-Shirt. If this is non-zero, a \"None\" option is added to the T-Shirt size selection box, and a note is added indicating the cost of each T-Shirt',-1),('regfee_show_info','no','Participant Registration','yesno','',500,'Show a breakdown of the total Registration Fee calculation on the main student registration page',-1),('specialawardnomination_aftersignatures','yes','Participant Registration','yesno','',2800,'Does the signature page need to be received BEFORE students are allowed to self nominate for special awards?',-1),('judges_specialaward_enable','no','Judge Registration','yesno','',1000,'Allow judges to specify their special award judging preferences (in addition to the divisional judging preferences)',-1),('judges_specialaward_only_enable','no','Judge Registration','yesno','',1100,'Allow judges to specify that they are a judge for a specific special award.  If a judge selects this, it disables their divisional preference selection entirely',-1),('judges_specialaward_min','1','Judge Registration','number','',1200,'Minimum number of special awards a judge must select when specifying special award preferences',-1),('judges_specialaward_max','6','Judge Registration','number','',1300,'Maximum number of special awards a judge must select when specifying special award preferences',-1),('participant_student_pronunciation','no','Participant Registration','yesno','',1600,'Ask the student for a pronunciation key for their name (for award ceremonies)',-1),('projects_per_special_award_judge','20','Judge Scheduler','number','',1000,'The maximum number of projects that each special awards judge can judge.',-1),('volunteer_password_expiry_days','365','Volunteer Registration','number','',300,'Volunteer passwords expire and they are forced to choose a new one after this many days. (0 for no expiry)',-1),('volunteer_enable','no','Volunteer Registration','yesno','',100,'Allow Volunteers to create accounts and sign up for volunteer positions (positions are configurable in the admin section)',-1),('volunteer_personal_fields','phonehome,phonecell,org','Volunteer Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',500,'Personal Information to ask for on the Volunteer personal information page (in addition to Name and Email)',-1),('volunteer_personal_required','','Volunteer Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',600,'Required Personal Information on the Volunteer personal information page (Name and Email is always required)',-1),('committee_personal_fields','phonehome,phonecell,phonework,fax,org','Committee Members','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',500,'Personal Information to ask for on the Committee Member profile page (in addition to Name and Email)',-1),('committee_personal_required','','Committee Members','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',600,'Required Personal Information on the Committee Member profile page (Name and Email is always required)',-1),('volunteer_registration_type','open','Volunteer Registration','enum','open=Open|singlepassword=Single Password|invite=Invite',150,'The type of Volunteer Registration to use',-1),('volunteer_registration_singlepassword','','Volunteer Registration','text','',160,'The single password to use if using Single Password Volunteer Registration (the option above this one). Ignored if not using Single Password volunteer registration.',-1),('reports_show_unawarded_awards','yes','Reports','yesno','',100,'Display awards that were not awarded in the Award Ceremony script.',-1),('reports_show_unawarded_prizes','yes','Reports','yesno','',200,'Display prizes that were not awarded in the Award Ceremony script.',-1),('participant_project_summary_wordmin','0','Participant Registration','number','',1900,'The minimum number of words acceptable in the project summary',-1),('tours_assigner_activity','Done','Tour Assigner','','',99999,'',0),('tours_assigner_percent','-1','Tour Assigner','','',99999,'',0),('tours_assigner_effort','10000','Tour Assigner','enum','100=Low|1000=Medium|10000=High',99999,'This controls how long and hard the tour assigner will look for a quality solution. Low effort will finish almost instantly but give a very poor result. High effort can take several minutes to run, but it gives a very good solution. ',-1),('project_sort_format','','Global','text','',610,'Project Sorting Format. This format will be used to sort the projects on lists and in reports. Use the same letters as the Project Number Format (C, D, N, etc.). If left blank, the project number format will also be used to sort the projects.',-1),('winners_show_prize_amounts','yes','Global','yesno','',700,'Show the dollar amounts of the cash/scholarship prizes on the publicly viewable winners page.',-1),('participant_short_title_charmax','50','Participant Registration','number','',2200,'The maximum number of characters acceptable in the short project title (Max 255)',-1),('participant_short_title_enable','no','Participant Registration','yesno','',2100,'Ask the participants for a short project title as well as their full title.',-1),('participant_regfee_items_enable','no','Participant Registration','yesno','',2750,'Ask the participants for registration fee item options.  Enabling this item also enables a Registration Fee Item Manager in the Administration section.  Use this manager to add optional registration items (that have a fee) for a student to select.',-1),('judge_scheduler_percent','-1','Judge Scheduler','','',99999,'',0),('judge_scheduler_activity','Done','Judge Scheduler','','',99999,'',0),('provincestate','Province','Localization','enum','Province=Province|State=State',100,'Use Province or State?',-1),('postalzip','Postal Code','Localization','enum','Postal Code=Postal Code|Zip Code=Zip Code',110,'Use Postal Code or Zip Code?',-1),('theme','default','Global','theme','theme',850,'Theme for colours',-1),('dateformat','Y-m-d','Localization','text','',200,'Date format (<a href=\"http://www.php.net/manual/en/function.date.php\" target=\"_blank\">formatting options</a>)',-1),('timeformat','H:i:s','Localization','text','',210,'Time format (<a href=\"http://www.php.net/manual/en/function.date.php\" target=\"_blank\">formatting options</a>)',-1),('country','CA','Localization','text','',90,'Country code (<a href=\"http://www.iso.org/iso/country_codes/iso_3166_code_lists/english_country_names_and_code_elements.htm\" target=\"_blank\">look up 2 letter code</a>)',-1),('sponsor_personal_fields','phonecell,phonework,fax,org','Sponsors','multisel','salutation=Salutation|sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',500,'Personal Information to ask for on the Sponsor Contact profile page (in addition to Name and Email)',-1),('sponsor_personal_required','','Sponsors','multisel','salutation=Salutation|sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',600,'Required Personal Information on the Sponsor Contact profile page (Name and Email is always required)',-1),('judges_availability_enable','no','Judge Registration','yesno','',950,'Allow judges to specify their time availability on the fair day based on the defined judging rounds/timeslots. The scheduler will then use this judge availability data when assigning judges to teams and projects.',-1),('judge_personal_fields','phonehome,phonecell,phonework,org,address,city,province,lang','Judge Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',500,'Personal Information to ask for on the Judge personal information page (in addition to Name and Email)',-1),('judge_personal_required','phonehome,address,city,province','Judge Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',600,'Required Personal Information on the Judge personal information page (Name and Email is always required)',-1),('theme_icons','icons_default','Global','theme','icons',860,'Icon set',-1),('fairs_allow_login','no','Science Fairs','yesno','',200,'Allow feeder fairs to login an enter stats and winners.  If set to \'no\', they will only be able to download and upload awards using the SFIAB award download/upload mechanism.',-1),('fairs_name','Science','Feeder Fairs','text','',300,'What level the feeder fairs are.  For example, \'School\' , \'Regional\', or just \'Science\' for a generic \'Science Fair\'',-1),('fairs_enable','no','Science Fairs','yesno','',100,'Enable the Science Fair.  Science Fairs can download awards tagged as \'downloadable\', and can upload winners of those awards directly into this system (optionally creating accounts for all students).  There are also options to collect stats from these fairs.',-1),('FISCALYEAR','2010','Special','','',0,'The current fiscal year that the fundraising module is using',0),('registered_charity','no','Fundraising','yesno','',100,'Is your organization a registered charity?',-1),('charity_number','','Fundraising','text','',200,'Charity Registration Number',-1),('emailqueue_lock','','Special','','',0,'The current lock datetime of the email sending queue, or empty if not locked',0),('reports_show_criteria','no','Reports','yesno','',300,'Display criteria for each award in the Award Ceremony script.',-1),('FAIRYEAR','2018','Special','','',0,'',0),('SFIABDIRECTORY','/sfiab','Special','','',0,'',0),('charity_number','','Fundraising','text','',200,'Charity Registration Number',2018),('committee_personal_fields','phonehome,phonecell,phonework,fax,org','Committee Members','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',500,'Personal Information to ask for on the Committee Member profile page (in addition to Name and Email)',2018),('committee_personal_required','','Committee Members','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',600,'Required Personal Information on the Committee Member profile page (Name and Email is always required)',2018),('committee_publiclayout','<tr><td>   <b>name</b></td><td>title</td><td>email</td></tr>','Global','','',500,'The layout (html table row) used to display the committee members on the public committee page',2018),('country','CA','Localization','text','',90,'Country code (<a href=\"http://www.iso.org/iso/country_codes/iso_3166_code_lists/english_country_names_and_code_elements.htm\" target=\"_blank\">look up 2 letter code</a>)',2018),('dateformat','Y-m-d','Localization','text','',200,'Date format (<a href=\"http://www.php.net/manual/en/function.date.php\" target=\"_blank\">formatting options</a>)',2018),('default_language','en','Global','language','',200,'The default language if no language has yet been specified',2018),('effort','10000','Judge Scheduler','enum','100=Low|1000=Medium|10000=High',100,'This controls how long and hard the judge scheduler will look for a scheduling solution. Low effort will finish almost instantly but give a very poor result. High effort can take several tens of minutes to run, but it gives a very good solution.',2018),('fairmanageremail','daveerickson@shaw.ca','Global','','',300,'The email address of the \'fair manager\'.  Any important emails etc generated by the system will be sent here',2018),('fairname','RegionalScienceFair','Global','','',100,'Name of the fair',2018),('fairs_allow_login','no','Science Fairs','yesno','',200,'Allow feeder fairs to login an enter stats and winners.  If set to \'no\', they will only be able to download and upload awards using the SFIAB award download/upload mechanism.',2018),('fairs_enable','no','Science Fairs','yesno','',100,'Enable the Science Fair.  Science Fairs can download awards tagged as \'downloadable\', and can upload winners of those awards directly into this system (optionally creating accounts for all students).  There are also options to collect stats from these fairs.',2018),('fairs_name','Science','Feeder Fairs','text','',300,'What level the feeder fairs are.  For example, \'School\' , \'Regional\', or just \'Science\' for a generic \'Science Fair\'',2018),('filterdivisionbycategory','no','Global','yesno','',400,'Allows for the setup of different divisions for each category',2018),('fiscal_yearend','','Fundraising','text','',200,'Your organization\'s fiscal year end. Specified in format MM-DD. Must be set in order for the Fundraising Module to function.',2018),('judges_availability_enable','no','Judge Registration','yesno','',950,'Allow judges to specify their time availability on the fair day based on the defined judging rounds/timeslots. The scheduler will then use this judge availability data when assigning judges to teams and projects.',2018),('judges_password_expiry_days','365','Judge Registration','','',300,'Judges passwords expire and they are forced to choose a new one after this many days. (0 for no expiry)',2018),('judges_specialaward_enable','no','Judge Registration','yesno','',1000,'Allow judges to specify their special award judging preferences (in addition to the divisional judging preferences)',2018),('judges_specialaward_max','6','Judge Registration','number','',1300,'Maximum number of special awards a judge must select when specifying special award preferences',2018),('judges_specialaward_min','1','Judge Registration','number','',1200,'Minimum number of special awards a judge must select when specifying special award preferences',2018),('judges_specialaward_only_enable','no','Judge Registration','yesno','',1100,'Allow judges to specify that they are a judge for a specific special award.  If a judge selects this, it disables their divisional preference selection entirely',2018),('judge_personal_fields','phonehome,phonecell,phonework,org,address,city,province,lang','Judge Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',500,'Personal Information to ask for on the Judge personal information page (in addition to Name and Email)',2018),('judge_personal_required','phonehome,address,city,province','Judge Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',600,'Required Personal Information on the Judge personal information page (Name and Email is always required)',2018),('judge_registration_singlepassword','','Judge Registration','','',200,'The single password to use for judge registration if judge_registration_type is singlepassword.  Leave blank if not using singlepassword judge registration',2018),('judge_registration_type','open','Judge Registration','enum','open=Open|singlepassword=Single Password|invite=Invite',100,'The type of Judge Registration to use',2018),('maxage','21','Participant Registration','number','',700,'The maximum age of the students',2018),('maxgrade','12','Participant Registration','number','',900,'The maximum school grade that can enter a project',2018),('maxjudgeage','100','Judge Registration','','',500,'The maximum age that a person can be in order to be a judge',2018),('maxmentorsperproject','5','Participant Registration','number','',1100,'The maximum number of mentors that can help with a project',2018),('maxspecialawardsperproject','7','Participant Registration','number','',1400,'The maximum number of self-nominated special awards a project can sign-up for',2018),('maxstudentsperproject','2','Participant Registration','number','',1300,'The maximum number of students that can work on a project (Usually 2)',2018),('max_judges_per_team','3','Judge Scheduler','','',300,'The maximum number of judges that can be on a judging team.',2018),('max_projects_per_team','7','Judge Scheduler','','',400,'The maximum number of projects that a judging team can judge.',2018),('minage','10','Participant Registration','number','',600,'The minimum age of the students',2018),('mingrade','7','Participant Registration','number','',800,'The minimum school grade that can enter a project',2018),('minjudgeage','21','Judge Registration','','',400,'The minimum age that a person must be in order to be a judge.',2018),('minmentorsperproject','0','Participant Registration','number','',1000,'The minimum number of mentors that can help with a project (usually 0)',2018),('minstudentsperproject','1','Participant Registration','number','',1200,'The minimum number of students that can work on a project (usually 1)',2018),('min_judges_per_team','3','Judge Scheduler','','',200,'The minimum number of judges that can be on a judging team.',2018),('participant_mentor','yes','Participant Registration','yesno','',1700,'Ask for mentorship information',2018),('participant_project_electricity','yes','Participant Registration','yesno','',2400,'Ask if the project requires electricity',2018),('participant_project_summary_wordmax','100','Participant Registration','number','',1800,'The maximum number of words acceptable in the project summary',2018),('participant_project_summary_wordmin','0','Participant Registration','number','',1900,'The minimum number of words acceptable in the project summary',2018),('participant_project_table','yes','Participant Registration','yesno','',2300,'Ask if the project requires a table',2018),('participant_project_title_charmax','100','Participant Registration','number','',2000,'The maximum number of characters acceptable in the project title (Max 255)',2018),('participant_regfee_items_enable','no','Participant Registration','yesno','',2750,'Ask the participants for registration fee item options.  Enabling this item also enables a Registration Fee Item Manager in the Administration section.  Use this manager to add optional registration items (that have a fee) for a student to select.',2018),('participant_registration_singlepassword','','Participant Registration','','',200,'The single password to use for participant registration if participant_registration_type is singlepassword.  Leave blank if not using singlepassword participant registration',2018),('participant_registration_type','open','Participant Registration','enum','open=Open|singlepassword=Single Password|schoolpassword=School Password|invite=Invite|openorinvite=Open or Invite',100,'The type of Participant Registration to use',2018),('participant_short_title_charmax','50','Participant Registration','number','',2200,'The maximum number of characters acceptable in the short project title (Max 255)',2018),('participant_short_title_enable','no','Participant Registration','yesno','',2100,'Ask the participants for a short project title as well as their full title.',2018),('participant_student_foodreq','yes','Participant Registration','yesno','',2500,'Ask for students special food requirements. Should be \'Yes\' if you plan on providing food to the students.',2018),('participant_student_personal','yes','Participant Registration','yesno','',1500,'Collect personal information about the students, such as phone number, address, gender, etc.',2018),('participant_student_pronunciation','no','Participant Registration','yesno','',1600,'Ask the student for a pronunciation key for their name (for award ceremonies)',2018),('participant_student_tshirt','no','Participant Registration','yesno','',2600,'Ask for students their T-Shirt size',2018),('participant_student_tshirt_cost','0.00','Participant Registration','number','',2700,'The cost of each T-Shirt. If this is non-zero, a \"None\" option is added to the T-Shirt size selection box, and a note is added indicating the cost of each T-Shirt',2018),('postalzip','Postal Code','Localization','enum','Postal Code=Postal Code|Zip Code=Zip Code',110,'Use Postal Code or Zip Code?',2018),('projects_per_special_award_judge','20','Judge Scheduler','number','',1000,'The maximum number of projects that each special awards judge can judge.',2018),('project_num_format','CDN','Global','','',600,'Project Numbering Format: C=Category ID, c=Category shortform, D=Division ID, d=Division shortform, N, N1, N2, ..., N9=intra division digit sequence number, zero padded to 1-9 digits, or 2 digits if just N is used. X, X1, X2, ..., N9=global sequence number, zero padded to 1-9 digits, or 3 digits if just X is used.',2018),('project_sort_format','','Global','text','',610,'Project Sorting Format. This format will be used to sort the projects on lists and in reports. Use the same letters as the Project Number Format (C, D, N, etc.). If left blank, the project number format will also be used to sort the projects.',2018),('project_status','payment_pending','Judge Scheduler','enum','open=Open|payment_pending=Payment Pending|complete=Complete',600,'The status a project must have to be considered eligible for judge scheduling. ',2018),('provincestate','Province','Localization','enum','Province=Province|State=State',100,'Use Province or State?',2018),('regfee','','Participant Registration','number','',300,'Registration Fee',2018),('regfee_per','student','Participant Registration','enum','student=Student|project=Project',400,'Registration fee is per student, or per project?',2018),('regfee_show_info','no','Participant Registration','yesno','',500,'Show a breakdown of the total Registration Fee calculation on the main student registration page',2018),('registered_charity','no','Fundraising','yesno','',100,'Is your organization a registered charity?',2018),('reports_show_criteria','no','Reports','yesno','',300,'Display criteria for each award in the Award Ceremony script.',2018),('reports_show_unawarded_awards','yes','Reports','yesno','',100,'Display awards that were not awarded in the Award Ceremony script.',2018),('reports_show_unawarded_prizes','yes','Reports','yesno','',200,'Display prizes that were not awarded in the Award Ceremony script.',2018),('scheduler_enable_sa_scheduling','no','Judge Scheduler','yesno','',900,'Allow the scheduler to automatically create a judging team for each special award, and assigned unused divisional judges to special awards.',2018),('specialawardnomination','date','Participant Registration','enum','none=None|date=By Date|registration=With Registration',2900,'Select when students may self nominate for special awards.<br> <ul><li><b>None</b> - Students may not self-nominate for special awards. <li><b>By Date</b> - Between specific dates, specified in the \"Important Dates\" section. <li><b>With Registration</b> - During the same time as registration is open. </ul> ',2018),('specialawardnomination_aftersignatures','yes','Participant Registration','yesno','',2800,'Does the signature page need to be received BEFORE students are allowed to self nominate for special awards?',2018),('sponsor_personal_fields','phonecell,phonework,fax,org','Sponsors','multisel','salutation=Salutation|sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',500,'Personal Information to ask for on the Sponsor Contact profile page (in addition to Name and Email)',2018),('sponsor_personal_required','','Sponsors','multisel','salutation=Salutation|sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province',600,'Required Personal Information on the Sponsor Contact profile page (Name and Email is always required)',2018),('theme','default','Global','theme','theme',850,'Theme for colours',2018),('theme_icons','icons_default','Global','theme','icons',860,'Icon set',2018),('timeformat','H:i:s','Localization','text','',210,'Time format (<a href=\"http://www.php.net/manual/en/function.date.php\" target=\"_blank\">formatting options</a>)',2018),('times_judged','1','Judge Scheduler','','',500,'The number of times each project must be judged by different judging teams.',2018),('tours_assigner_effort','10000','Tour Assigner','enum','100=Low|1000=Medium|10000=High',99999,'This controls how long and hard the tour assigner will look for a quality solution. Low effort will finish almost instantly but give a very poor result. High effort can take several minutes to run, but it gives a very good solution. ',2018),('tours_choices_max','3','Tours','','',200,'Maximum number of tours a participant may select',2018),('tours_choices_min','1','Tours','','',100,'Minimum number of tours a participant must select',2018),('tours_enable','no','Tours','yesno','',0,'Enable the \"tours\" module.  Set to \"yes\" to allow participants to select tours',2018),('usedivisionselector','yes','Participant Registration','yesno','',3000,'Specify whether to use the division selector flowchart questions to help decide on the division',2018),('volunteer_enable','no','Volunteer Registration','yesno','',100,'Allow Volunteers to create accounts and sign up for volunteer positions (positions are configurable in the admin section)',2018),('volunteer_password_expiry_days','365','Volunteer Registration','number','',300,'Volunteer passwords expire and they are forced to choose a new one after this many days. (0 for no expiry)',2018),('volunteer_personal_fields','phonehome,phonecell,org','Volunteer Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',500,'Personal Information to ask for on the Volunteer personal information page (in addition to Name and Email)',2018),('volunteer_personal_required','','Volunteer Registration','multisel','sex=Gender|phonehome=Home Phone|phonework=Work Phone|phonecell=Cell Phone|fax=Fax|org=Organization|birthdate=Birthdate|lang=Preferred Language|address=Address and PostalCode|city=City|province=Province|firstaid=First Aid and CPR',600,'Required Personal Information on the Volunteer personal information page (Name and Email is always required)',2018),('volunteer_registration_singlepassword','','Volunteer Registration','text','',160,'The single password to use if using Single Password Volunteer Registration (the option above this one). Ignored if not using Single Password volunteer registration.',2018),('volunteer_registration_type','open','Volunteer Registration','enum','open=Open|singlepassword=Single Password|invite=Invite',150,'The type of Volunteer Registration to use',2018),('winners_show_prize_amounts','yes','Global','yesno','',700,'Show the dollar amounts of the cash/scholarship prizes on the publicly viewable winners page.',2018);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `code` varchar(2) NOT NULL,
  `country` varchar(64) NOT NULL,
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AF','AFGHANISTAN'),('AX','ÅLAND ISLANDS'),('AL','ALBANIA'),('DZ','ALGERIA'),('AS','AMERICAN SAMOA'),('AD','ANDORRA'),('AO','ANGOLA'),('AI','ANGUILLA'),('AQ','ANTARCTICA'),('AG','ANTIGUA AND BARBUDA'),('AR','ARGENTINA'),('AM','ARMENIA'),('AW','ARUBA'),('AU','AUSTRALIA'),('AT','AUSTRIA'),('AZ','AZERBAIJAN'),('BS','BAHAMAS'),('BH','BAHRAIN'),('BD','BANGLADESH'),('BB','BARBADOS'),('BY','BELARUS'),('BE','BELGIUM'),('BZ','BELIZE'),('BJ','BENIN'),('BM','BERMUDA'),('BT','BHUTAN'),('BO','BOLIVIA'),('BA','BOSNIA AND HERZEGOVINA'),('BW','BOTSWANA'),('BV','BOUVET ISLAND'),('BR','BRAZIL'),('IO','BRITISH INDIAN OCEAN TERRITORY'),('BN','BRUNEI DARUSSALAM'),('BG','BULGARIA'),('BF','BURKINA FASO'),('BI','BURUNDI'),('KH','CAMBODIA'),('CM','CAMEROON'),('CA','CANADA'),('CV','CAPE VERDE'),('KY','CAYMAN ISLANDS'),('CF','CENTRAL AFRICAN REPUBLIC'),('TD','CHAD'),('CL','CHILE'),('CN','CHINA'),('CX','CHRISTMAS ISLAND'),('CC','COCOS (KEELING) ISLANDS'),('CO','COLOMBIA'),('KM','COMOROS'),('CG','CONGO'),('CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE'),('CK','COOK ISLANDS'),('CR','COSTA RICA'),('CI','CÔTE D\'IVOIRE'),('HR','CROATIA'),('CU','CUBA'),('CY','CYPRUS'),('CZ','CZECH REPUBLIC'),('DK','DENMARK'),('DJ','DJIBOUTI'),('DM','DOMINICA'),('DO','DOMINICAN REPUBLIC'),('EC','ECUADOR'),('EG','EGYPT'),('SV','EL SALVADOR'),('GQ','EQUATORIAL GUINEA'),('ER','ERITREA'),('EE','ESTONIA'),('ET','ETHIOPIA'),('FK','FALKLAND ISLANDS (MALVINAS)'),('FO','FAROE ISLANDS'),('FJ','FIJI'),('FI','FINLAND'),('FR','FRANCE'),('GF','FRENCH GUIANA'),('PF','FRENCH POLYNESIA'),('TF','FRENCH SOUTHERN TERRITORIES'),('GA','GABON'),('GM','GAMBIA'),('GE','GEORGIA'),('DE','GERMANY'),('GH','GHANA'),('GI','GIBRALTAR'),('GR','GREECE'),('GL','GREENLAND'),('GD','GRENADA'),('GP','GUADELOUPE'),('GU','GUAM'),('GT','GUATEMALA'),('GG','GUERNSEY'),('GN','GUINEA'),('GW','GUINEA-BISSAU'),('GY','GUYANA'),('HT','HAITI'),('HM','HEARD ISLAND AND MCDONALD ISLANDS'),('VA','HOLY SEE (VATICAN CITY STATE)'),('HN','HONDURAS'),('HK','HONG KONG'),('HU','HUNGARY'),('IS','ICELAND'),('IN','INDIA'),('ID','INDONESIA'),('IR','IRAN, ISLAMIC REPUBLIC OF'),('IQ','IRAQ'),('IE','IRELAND'),('IM','ISLE OF MAN'),('IL','ISRAEL'),('IT','ITALY'),('JM','JAMAICA'),('JP','JAPAN'),('JE','JERSEY'),('JO','JORDAN'),('KZ','KAZAKHSTAN'),('KE','KENYA'),('KI','KIRIBATI'),('KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF'),('KR','KOREA, REPUBLIC OF'),('KW','KUWAIT'),('KG','KYRGYZSTAN'),('LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC'),('LV','LATVIA'),('LB','LEBANON'),('LS','LESOTHO'),('LR','LIBERIA'),('LY','LIBYAN ARAB JAMAHIRIYA'),('LI','LIECHTENSTEIN'),('LT','LITHUANIA'),('LU','LUXEMBOURG'),('MO','MACAO'),('MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'),('MG','MADAGASCAR'),('MW','MALAWI'),('MY','MALAYSIA'),('MV','MALDIVES'),('ML','MALI'),('MT','MALTA'),('MH','MARSHALL ISLANDS'),('MQ','MARTINIQUE'),('MR','MAURITANIA'),('MU','MAURITIUS'),('YT','MAYOTTE'),('MX','MEXICO'),('FM','MICRONESIA, FEDERATED STATES OF'),('MD','MOLDOVA, REPUBLIC OF'),('MC','MONACO'),('MN','MONGOLIA'),('ME','MONTENEGRO'),('MS','MONTSERRAT'),('MA','MOROCCO'),('MZ','MOZAMBIQUE'),('MM','MYANMAR'),('NA','NAMIBIA'),('NR','NAURU'),('NP','NEPAL'),('NL','NETHERLANDS'),('AN','NETHERLANDS ANTILLES'),('NC','NEW CALEDONIA'),('NZ','NEW ZEALAND'),('NI','NICARAGUA'),('NE','NIGER'),('NG','NIGERIA'),('NU','NIUE'),('NF','NORFOLK ISLAND'),('MP','NORTHERN MARIANA ISLANDS'),('NO','NORWAY'),('OM','OMAN'),('PK','PAKISTAN'),('PW','PALAU'),('PS','PALESTINIAN TERRITORY, OCCUPIED'),('PA','PANAMA'),('PG','PAPUA NEW GUINEA'),('PY','PARAGUAY'),('PE','PERU'),('PH','PHILIPPINES'),('PN','PITCAIRN'),('PL','POLAND'),('PT','PORTUGAL'),('PR','PUERTO RICO'),('QA','QATAR'),('RE','REUNION'),('RO','ROMANIA'),('RU','RUSSIAN FEDERATION'),('RW','RWANDA'),('BL','SAINT BARTHÉLEMY'),('SH','SAINT HELENA'),('KN','SAINT KITTS AND NEVIS'),('LC','SAINT LUCIA'),('MF','SAINT MARTIN'),('PM','SAINT PIERRE AND MIQUELON'),('VC','SAINT VINCENT AND THE GRENADINES'),('WS','SAMOA'),('SM','SAN MARINO'),('ST','SAO TOME AND PRINCIPE'),('SA','SAUDI ARABIA'),('SN','SENEGAL'),('RS','SERBIA'),('SC','SEYCHELLES'),('SL','SIERRA LEONE'),('SG','SINGAPORE'),('SK','SLOVAKIA'),('SI','SLOVENIA'),('SB','SOLOMON ISLANDS'),('SO','SOMALIA'),('ZA','SOUTH AFRICA'),('GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),('ES','SPAIN'),('LK','SRI LANKA'),('SD','SUDAN'),('SR','SURINAME'),('SJ','SVALBARD AND JAN MAYEN'),('SZ','SWAZILAND'),('SE','SWEDEN'),('CH','SWITZERLAND'),('SY','SYRIAN ARAB REPUBLIC'),('TW','TAIWAN, PROVINCE OF CHINA'),('TJ','TAJIKISTAN'),('TZ','TANZANIA, UNITED REPUBLIC OF'),('TH','THAILAND'),('TL','TIMOR-LESTE'),('TG','TOGO'),('TK','TOKELAU'),('TO','TONGA'),('TT','TRINIDAD AND TOBAGO'),('TN','TUNISIA'),('TR','TURKEY'),('TM','TURKMENISTAN'),('TC','TURKS AND CAICOS ISLANDS'),('TV','TUVALU'),('UG','UGANDA'),('UA','UKRAINE'),('AE','UNITED ARAB EMIRATES'),('GB','UNITED KINGDOM'),('US','UNITED STATES'),('UM','UNITED STATES MINOR OUTLYING ISLANDS'),('UY','URUGUAY'),('UZ','UZBEKISTAN'),('VU','VANUATU'),('VE','VENEZUELA'),('VN','VIET NAM'),('VG','VIRGIN ISLANDS, BRITISH'),('VI','VIRGIN ISLANDS, U.S.'),('WF','WALLIS AND FUTUNA'),('EH','WESTERN SAHARA'),('YE','YEMEN'),('ZM','ZAMBIA'),('ZW','ZIMBABWE');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(64) NOT NULL DEFAULT '',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` VALUES (1,'0000-00-00 00:00:00','fairdate','Date of the fair',-1),(2,'0000-00-00 00:00:00','regopen','Registration system opens',-1),(3,'0000-00-00 00:00:00','regclose','Registration system closes',-1),(4,'0000-00-00 00:00:00','postparticipants','Registered participants are posted on the website',-1),(5,'0000-00-00 00:00:00','postwinners','Winners are posted on the website',-1),(6,'0000-00-00 00:00:00','judgeregopen','Judges registration opens',-1),(7,'0000-00-00 00:00:00','judgeregclose','Judges registration closes',-1),(8,'0000-00-00 00:00:00','specawardregopen','Special Awards self-nomination opens',-1),(9,'0000-00-00 00:00:00','specawardregclose','Special Awards self-nomination closes',-1),(10,'0000-00-00 00:00:00','judgescheduleavailable','Judge assignments and schedule are available to judges',-1),(11,'2018-03-24 08:00:00','fairdate','Date of the fair',2018),(12,'2018-02-01 12:00:00','regopen','Registration system opens',2018),(13,'2018-03-24 00:00:00','regclose','Registration system closes',2018),(14,'2018-03-18 12:00:00','postparticipants','Registered participants are posted on the website',2018),(15,'2018-03-24 15:00:00','postwinners','Winners are posted on the website',2018),(16,'2018-03-01 12:00:00','judgeregopen','Judges registration opens',2018),(17,'2018-03-24 09:00:00','judgeregclose','Judges registration closes',2018),(18,'2018-03-11 00:00:00','specawardregopen','Special Awards self-nomination opens',2018),(19,'2018-03-24 00:00:00','specawardregclose','Special Awards self-nomination closes',2018),(20,'2018-03-22 12:00:00','judgescheduleavailable','Judge assignments and schedule are available to judges',2018);
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `sel_category` varchar(128) NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailqueue`
--

DROP TABLE IF EXISTS `emailqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailqueue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `val` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `users_uid` int(11) NOT NULL,
  `from` varchar(128) NOT NULL,
  `subject` text CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `bodyhtml` text CHARACTER SET utf8 NOT NULL,
  `type` enum('system','user','fundraising') NOT NULL,
  `fundraising_campaigns_id` int(11) DEFAULT NULL,
  `started` datetime NOT NULL,
  `finished` datetime DEFAULT NULL,
  `numtotal` int(11) NOT NULL,
  `numsent` int(11) NOT NULL,
  `numfailed` int(11) NOT NULL DEFAULT '0',
  `numbounced` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailqueue`
--

LOCK TABLES `emailqueue` WRITE;
/*!40000 ALTER TABLE `emailqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailqueue_recipients`
--

DROP TABLE IF EXISTS `emailqueue_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailqueue_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emailqueue_id` int(10) unsigned NOT NULL,
  `toemail` varchar(128) NOT NULL,
  `toname` varchar(128) NOT NULL,
  `replacements` text CHARACTER SET utf8 NOT NULL,
  `sent` datetime DEFAULT NULL,
  `result` enum('ok','failed','cancelled','bounced') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailqueue_recipients`
--

LOCK TABLES `emailqueue_recipients` WRITE;
/*!40000 ALTER TABLE `emailqueue_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailqueue_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `val` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `from` varchar(128) NOT NULL DEFAULT '',
  `subject` text CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `bodyhtml` text CHARACTER SET utf8 NOT NULL,
  `type` enum('system','user','fundraising') NOT NULL DEFAULT 'system',
  `fundraising_campaigns_id` int(10) unsigned DEFAULT NULL,
  `lastsent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'register_participants_resend_regnum','Participant Registration - Resend Registration Number','Resend the password to the participant if they submit a \'forgot regnum\' request','','Registration for [FAIRNAME]','We have received a request for the retrieval of your registration number from this email address.  Please find your existing registration number below\r\n\r\nRegistration Number: [REGNUM]\r\n','','system',NULL,NULL),(2,'new_participant','New Participant','Email that new participants receive when they are added to the system','','Registration for [FAIRNAME]','A new registration account has been created for you.  To access your registration account, please enter the following registration number into the registration website:\r\n\r\nEmail Address: [EMAIL]\r\nRegistration Number: [REGNUM]\r\n','','system',NULL,NULL),(5,'register_participants_received','Participant Registration - Form Received','Sent to the participant when the admin flags their signature form as received','','Registration for [FAIRNAME] Complete','Dear [FIRSTNAME],\r\nYour registration for the [FAIRNAME] is now complete.\r\nYour project number is [PROJECTNUMBER].  Please write down your project number and bring it with you to the fair in order to expedite the check-in process.\r\n\r\nSincerely,\r\n [FAIRNAME]','','system',NULL,NULL),(6,'register_participants_paymentpending','Participant Registration - Payment Pending','Sent to the participant when the admin flags their signature form as received but payment pending','','Registration for [FAIRNAME] Not Complete - Payment Pending','Dear [FIRSTNAME],\r\nYour registration for the [FAIRNAME] is not yet complete.  We received your registration form however it was missing the required registration fee.  Please send the required registration fee in aso soon as possible in order to complete your registration.\r\n\r\nYour project number is [PROJECTNUMBER].  Please write down your project number and bring it with you to the fair in order to expedite the check-in process.\r\n\r\nSincerely,\r\n [FAIRNAME]','','system',NULL,NULL),(7,'volunteer_welcome','Volunteer Registration - Welcome','Welcome email sent to a volunteer after they have registered for the first time. This email includes their temporary password.','','Volunteer Registration for [FAIRNAME]','Thank you for registering as a volunteer at our fair. Please find your temporary password below. After logging in for the first time you will be prompted to change your password.\n\nVolunteer Email Address: [EMAIL]\nVolunteer Password: [PASSWORD]','','system',NULL,NULL),(8,'volunteer_recover_password','Volunteer Registration - Recover Password','Recover the password for a volunteer if they submit a \'forgot password\' request','','Volunteer Registration for [FAIRNAME]','We have received a request for the recovery of your password from this email address. Please find your new password below:\n\nVolunteer Email Address: [EMAIL]\nVolunteer Password: [PASSWORD] ','','system',NULL,NULL),(9,'committee_recover_password','Committee Members - Recover Password','Recover the password for a committee member if they submit a \'forgot password\' request','','Committee Member for [FAIRNAME]','We have received a request for the recovery of your password from this email address. Please find your new password below:\n\nCommittee Member Email Address: [EMAIL]\nCommittee Member Password: [PASSWORD] ','','system',NULL,NULL),(10,'volunteer_new_invite','Volunteers - New Volunteer Invitation','This is sent to a new volunteer when they are invited using the invite volunteers administration section, only available when the Volunteer Registration Type is set to Invite','','Volunteer Registration for [FAIRNAME]','You have been invited to be a volunteer for the [FAIRNAME].  An account has been created for you to login with and complete your information.  You can login to the volunteer registration site with:\n\nEmail Address: [EMAIL]\nPassword: [PASSWORD]\n\nYou can change your password once you login.','','system',NULL,NULL),(11,'volunteer_add_invite','Volunteers - Add Volunteer Invitation','This is sent to existing users when they are invited using the invite volunteers administration section, only available when the Volunteer Registration Type is set to Invite','','Volunteer Registration for [FAIRNAME]','The role of volunteer for the [FAIRNAME] has been added to your account by a committee member.  When you login again, there will be a [Switch Roles] link in the upper right hand area of the page.  Clicking on [Switch Roles] will let you switch between being a Volunteer and your other roles without needing to logout.\n','','system',NULL,NULL),(12,'judge_recover_password','Judges - Recover Password','Recover the password for a judge if they submit a \'forgot password\' request','','Password Recovery for [FAIRNAME]','We have received a request for the recovery of your password from this email address. Please find your new password below:\n\nJudge Email Address: [EMAIL]\nJudge Password: [PASSWORD] ','','system',NULL,NULL),(13,'judge_welcome','Judges - Welcome','Welcome email sent to a judge after they have registered for the first time. This email includes their temporary password.','','Judge Registration for [FAIRNAME]','Thank you for registering as a judge at our fair. Please find your temporary password below. After logging in for the first time you will be prompted to change your password.\n\nJudge Email Address: [EMAIL]\nJudge Password: [PASSWORD]','','system',NULL,NULL),(14,'judge_new_invite','Judges - New Judge Invitation','This is sent to a new judge when they are invited using the invite users  administration option.','','Judge Registration for [FAIRNAME]','You have been invited to be a judge for the [FAIRNAME].  An account has been created for you to login with and complete your information.  You can login to the judge registration site with:\n\nEmail Address: [EMAIL]\nPassword: [PASSWORD]\nYou can change your password once you login.','','system',NULL,NULL),(15,'judge_add_invite','Judges - Add Judge Invitation','This is sent to existing users when they are invited using the invite users administration option.','','Judge Registration for [FAIRNAME]','The role of judge for the [FAIRNAME] has been added to your account by a committee member.  When you login again, there will be a [Switch Roles] link in the upper right hand area of the page.  Clicking on [Switch Roles] will let you switch between being a Judge and your other roles without needing to logout.\n','','system',NULL,NULL),(16,'judge_activate_reminder','Judges - Activation Reminder','This is sent to existing judges who have not yet activated their account for the current fair year.','','Judge Registration for [FAIRNAME]','This message is to let you know that Judge registration for the [FAIRNAME] is now open.  If you would like to participate in the fair this year please log in to the registration site using your email address ([EMAIL]) an\n','','system',NULL,NULL),(17,'volunteer_activate_reminder','Volunteer Registration - Activation Reminder','This is sent to existing volunteers who have not yet activated their account for the current fair year.','','Volunteer Registration for [FAIRNAME]','This message is to let you know that Volunteer registration for the [FAIRNAME] is now open.  If you would like to participate in the fair this year please log in to the registration site using your email address ([EMAIL]).\n','','system',NULL,NULL),(18,'fundraising_thankyou_template','Fundraising Thank You Template','Fundraising thank you template to be used to send thank you emails to individual sponsor/donors once a donation is received','','Thank You for your Contribution','Dear [FIRSTNAME],\r\n\r\nThank you for your contribution to the [FAIRNAME]\r\n\r\nSincerely,\r\n [FAIRNAME] Committee\r\n','','system',NULL,NULL);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergencycontact`
--

DROP TABLE IF EXISTS `emergencycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emergencycontact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrations_id` int(10) unsigned NOT NULL DEFAULT '0',
  `students_id` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(64) NOT NULL DEFAULT '',
  `lastname` varchar(64) NOT NULL DEFAULT '',
  `relation` varchar(64) NOT NULL DEFAULT '',
  `phone1` varchar(32) NOT NULL DEFAULT '',
  `phone2` varchar(32) NOT NULL DEFAULT '',
  `phone3` varchar(32) NOT NULL DEFAULT '',
  `phone4` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergencycontact`
--

LOCK TABLES `emergencycontact` WRITE;
/*!40000 ALTER TABLE `emergencycontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `emergencycontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibithall`
--

DROP TABLE IF EXISTS `exhibithall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibithall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `type` enum('wall','exhibithall','project') NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `w` float NOT NULL,
  `h` float NOT NULL,
  `orientation` int(11) NOT NULL,
  `exhibithall_id` int(11) NOT NULL,
  `floornumber` int(11) NOT NULL,
  `divs` tinytext NOT NULL,
  `cats` tinytext NOT NULL,
  `has_electricity` enum('no','yes') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibithall`
--

LOCK TABLES `exhibithall` WRITE;
/*!40000 ALTER TABLE `exhibithall` DISABLE KEYS */;
/*!40000 ALTER TABLE `exhibithall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fairs`
--

DROP TABLE IF EXISTS `fairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `abbrv` varchar(16) NOT NULL,
  `type` enum('feeder','sfiab','ysc') NOT NULL,
  `url` tinytext NOT NULL,
  `website` tinytext NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `enable_stats` enum('no','yes') NOT NULL,
  `enable_awards` enum('no','yes') NOT NULL,
  `enable_winners` enum('no','yes') NOT NULL,
  `gather_stats` set('participation','schools_ext','minorities','guests','sffbc_misc','info','next_chair','scholarships','delegates') NOT NULL,
  `catmap` tinytext NOT NULL,
  `divmap` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fairs`
--

LOCK TABLES `fairs` WRITE;
/*!40000 ALTER TABLE `fairs` DISABLE KEYS */;
INSERT INTO `fairs` VALUES (1,'Youth Science Ontario','YSO','ysc','http://www.scitechontario.org/awarddownloader/index.php','http://www.scitechontario.org/awarddownloader/help.php','','','no','yes','yes','','',''),(2,'Youth Science Canada','YSC','ysc','https://secure.ysf-fsj.ca/awarddownloader/index.php','http://apps.ysf-fsj.ca/awarddownloader/help.php','','','yes','yes','yes','','','');
/*!40000 ALTER TABLE `fairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fairs_awards_link`
--

DROP TABLE IF EXISTS `fairs_awards_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fairs_awards_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fairs_id` int(11) NOT NULL,
  `award_awards_id` int(11) NOT NULL,
  `download_award` enum('no','yes') NOT NULL,
  `upload_winners` enum('no','yes') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fairs_awards_link`
--

LOCK TABLES `fairs_awards_link` WRITE;
/*!40000 ALTER TABLE `fairs_awards_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `fairs_awards_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fairs_stats`
--

DROP TABLE IF EXISTS `fairs_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fairs_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fairs_id` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `address` text NOT NULL,
  `budget` float NOT NULL DEFAULT '0',
  `ysf_affiliation_complete` enum('Y','N') NOT NULL DEFAULT 'Y',
  `charity` tinytext NOT NULL,
  `male_1` int(11) NOT NULL DEFAULT '0',
  `male_4` int(11) NOT NULL DEFAULT '0',
  `male_7` int(11) NOT NULL DEFAULT '0',
  `male_9` int(11) NOT NULL DEFAULT '0',
  `male_11` int(11) NOT NULL DEFAULT '0',
  `female_1` int(11) NOT NULL DEFAULT '0',
  `female_4` int(11) NOT NULL DEFAULT '0',
  `female_7` int(11) NOT NULL DEFAULT '0',
  `female_9` int(11) NOT NULL DEFAULT '0',
  `female_11` int(11) NOT NULL DEFAULT '0',
  `projects_1` int(11) NOT NULL DEFAULT '0',
  `projects_4` int(11) NOT NULL DEFAULT '0',
  `projects_7` int(11) NOT NULL DEFAULT '0',
  `projects_9` int(11) NOT NULL DEFAULT '0',
  `projects_11` int(11) NOT NULL DEFAULT '0',
  `students_total` int(11) NOT NULL,
  `schools_total` int(11) NOT NULL,
  `schools_active` int(11) NOT NULL,
  `students_public` int(11) NOT NULL,
  `schools_public` int(11) NOT NULL DEFAULT '0',
  `students_private` int(11) NOT NULL,
  `schools_private` int(11) NOT NULL DEFAULT '0',
  `schools_districts` int(11) NOT NULL DEFAULT '0',
  `studentsvisiting` int(11) NOT NULL DEFAULT '0',
  `publicvisiting` int(11) NOT NULL DEFAULT '0',
  `firstnations` int(11) NOT NULL DEFAULT '0',
  `students_atrisk` int(11) NOT NULL DEFAULT '0',
  `schools_atrisk` int(11) NOT NULL,
  `teacherssupporting` int(11) NOT NULL DEFAULT '0',
  `increasedinterest` int(11) NOT NULL DEFAULT '0',
  `consideringcareer` int(11) NOT NULL DEFAULT '0',
  `committee_members` int(11) NOT NULL,
  `judges` int(11) NOT NULL,
  `next_chair_name` varchar(128) NOT NULL DEFAULT '',
  `next_chair_email` varchar(64) NOT NULL,
  `next_chair_hphone` varchar(32) NOT NULL DEFAULT '',
  `next_chair_bphone` varchar(32) NOT NULL DEFAULT '',
  `next_chair_fax` varchar(32) NOT NULL DEFAULT '',
  `scholarships` text NOT NULL,
  `delegate1` varchar(64) NOT NULL DEFAULT '',
  `delegate2` varchar(64) NOT NULL DEFAULT '',
  `delegate3` varchar(64) NOT NULL DEFAULT '',
  `delegate4` varchar(64) NOT NULL DEFAULT '',
  `delegate1_email` tinytext NOT NULL,
  `delegate2_email` tinytext NOT NULL,
  `delegate3_email` tinytext NOT NULL,
  `delegate4_email` tinytext NOT NULL,
  `delegate1_size` enum('small','medium','large','xlarge') NOT NULL DEFAULT 'small',
  `delegate2_size` enum('small','medium','large','xlarge') NOT NULL DEFAULT 'small',
  `delegate3_size` enum('small','medium','large','xlarge') NOT NULL DEFAULT 'small',
  `delegate4_size` enum('small','medium','large','xlarge') NOT NULL DEFAULT 'small',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fairs_stats`
--

LOCK TABLES `fairs_stats` WRITE;
/*!40000 ALTER TABLE `fairs_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `fairs_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraising_campaigns`
--

DROP TABLE IF EXISTS `fundraising_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundraising_campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `followupdate` date DEFAULT NULL,
  `active` enum('no','yes') NOT NULL,
  `target` int(11) NOT NULL,
  `fundraising_goal` varchar(32) NOT NULL,
  `filterparameters` varchar(255) DEFAULT NULL,
  `fiscalyear` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraising_campaigns`
--

LOCK TABLES `fundraising_campaigns` WRITE;
/*!40000 ALTER TABLE `fundraising_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundraising_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraising_campaigns_users_link`
--

DROP TABLE IF EXISTS `fundraising_campaigns_users_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundraising_campaigns_users_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fundraising_campaigns_id` int(10) unsigned NOT NULL,
  `users_uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraising_campaigns_users_link`
--

LOCK TABLES `fundraising_campaigns_users_link` WRITE;
/*!40000 ALTER TABLE `fundraising_campaigns_users_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundraising_campaigns_users_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraising_donations`
--

DROP TABLE IF EXISTS `fundraising_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundraising_donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sponsors_id` int(11) DEFAULT NULL,
  `fundraising_goal` varchar(32) NOT NULL,
  `fundraising_campaigns_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `status` enum('pending','confirmed','received') NOT NULL,
  `probability` int(11) NOT NULL,
  `fiscalyear` int(11) NOT NULL DEFAULT '0',
  `thanked` enum('no','yes') NOT NULL DEFAULT 'no',
  `receiptrequired` enum('no','yes') NOT NULL,
  `receiptsent` enum('no','yes') NOT NULL,
  `datereceived` date DEFAULT NULL,
  `supporttype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraising_donations`
--

LOCK TABLES `fundraising_donations` WRITE;
/*!40000 ALTER TABLE `fundraising_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundraising_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraising_donor_levels`
--

DROP TABLE IF EXISTS `fundraising_donor_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundraising_donor_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(64) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `description` text NOT NULL,
  `fiscalyear` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraising_donor_levels`
--

LOCK TABLES `fundraising_donor_levels` WRITE;
/*!40000 ALTER TABLE `fundraising_donor_levels` DISABLE KEYS */;
INSERT INTO `fundraising_donor_levels` VALUES (1,'Bronze',100,499,'',-1),(2,'Silver',500,999,'',-1),(3,'Gold',1000,10000,'',-1);
/*!40000 ALTER TABLE `fundraising_donor_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraising_donor_logs`
--

DROP TABLE IF EXISTS `fundraising_donor_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundraising_donor_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sponsors_id` int(11) NOT NULL,
  `dt` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `log` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `fundraising_campaigns_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraising_donor_logs`
--

LOCK TABLES `fundraising_donor_logs` WRITE;
/*!40000 ALTER TABLE `fundraising_donor_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundraising_donor_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraising_goals`
--

DROP TABLE IF EXISTS `fundraising_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundraising_goals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goal` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `system` enum('no','yes') NOT NULL DEFAULT 'no',
  `budget` int(10) unsigned NOT NULL DEFAULT '0',
  `fiscalyear` int(11) NOT NULL DEFAULT '0',
  `deadline` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`goal`,`fiscalyear`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraising_goals`
--

LOCK TABLES `fundraising_goals` WRITE;
/*!40000 ALTER TABLE `fundraising_goals` DISABLE KEYS */;
INSERT INTO `fundraising_goals` VALUES (1,'sfgeneral','Science Fair - General Funds','General funds donated to the science fair may be allocated as the science fair organizers see fit.','yes',0,-1,'0000-00-00'),(2,'sfawards','Science Fair - Awards','Award Sponsorships are provided to allow an sponsor/donor to give a specific award.','yes',0,-1,'0000-00-00');
/*!40000 ALTER TABLE `fundraising_goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_availability`
--

DROP TABLE IF EXISTS `judges_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_availability`
--

LOCK TABLES `judges_availability` WRITE;
/*!40000 ALTER TABLE `judges_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_jdiv`
--

DROP TABLE IF EXISTS `judges_jdiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_jdiv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jdiv_id` int(11) NOT NULL DEFAULT '0',
  `projectdivisions_id` int(11) NOT NULL DEFAULT '0',
  `projectcategories_id` int(11) NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_jdiv`
--

LOCK TABLES `judges_jdiv` WRITE;
/*!40000 ALTER TABLE `judges_jdiv` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_jdiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_schedulerconfig`
--

DROP TABLE IF EXISTS `judges_schedulerconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_schedulerconfig` (
  `var` varchar(64) NOT NULL DEFAULT '',
  `val` text NOT NULL,
  `description` text NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `var` (`var`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_schedulerconfig`
--

LOCK TABLES `judges_schedulerconfig` WRITE;
/*!40000 ALTER TABLE `judges_schedulerconfig` DISABLE KEYS */;
INSERT INTO `judges_schedulerconfig` VALUES ('num_times_judged','3','The number of times that each project must be judged (by different judging teams)',-1),('num_timeslots','20','The number of timeslots available during the judging period',-1),('max_projects_per_team','5','The maximum number of projects that a team can judge',-1),('min_judges_per_team','2','The minimum number of judges that should be on a judging team',-1),('max_judges_per_team','4','The maximum number of judges that should be on a judging team',-1);
/*!40000 ALTER TABLE `judges_schedulerconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_specialaward_sel`
--

DROP TABLE IF EXISTS `judges_specialaward_sel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_specialaward_sel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `award_awards_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_specialaward_sel`
--

LOCK TABLES `judges_specialaward_sel` WRITE;
/*!40000 ALTER TABLE `judges_specialaward_sel` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_specialaward_sel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_teams`
--

DROP TABLE IF EXISTS `judges_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `autocreate_type_id` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `num` (`num`,`year`),
  UNIQUE KEY `name` (`name`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_teams`
--

LOCK TABLES `judges_teams` WRITE;
/*!40000 ALTER TABLE `judges_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_teams_awards_link`
--

DROP TABLE IF EXISTS `judges_teams_awards_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_teams_awards_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_awards_id` int(10) unsigned NOT NULL DEFAULT '0',
  `judges_teams_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `award_awards_id` (`award_awards_id`,`judges_teams_id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_teams_awards_link`
--

LOCK TABLES `judges_teams_awards_link` WRITE;
/*!40000 ALTER TABLE `judges_teams_awards_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_teams_awards_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_teams_link`
--

DROP TABLE IF EXISTS `judges_teams_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_teams_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `judges_teams_id` int(11) NOT NULL DEFAULT '0',
  `captain` enum('no','yes') NOT NULL DEFAULT 'no',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_teams_link`
--

LOCK TABLES `judges_teams_link` WRITE;
/*!40000 ALTER TABLE `judges_teams_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_teams_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_teams_timeslots_link`
--

DROP TABLE IF EXISTS `judges_teams_timeslots_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_teams_timeslots_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `judges_teams_id` int(10) unsigned NOT NULL DEFAULT '0',
  `judges_timeslots_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `judges_teams_id` (`judges_teams_id`,`judges_timeslots_id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_teams_timeslots_link`
--

LOCK TABLES `judges_teams_timeslots_link` WRITE;
/*!40000 ALTER TABLE `judges_teams_timeslots_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_teams_timeslots_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_teams_timeslots_projects_link`
--

DROP TABLE IF EXISTS `judges_teams_timeslots_projects_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_teams_timeslots_projects_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `judges_teams_id` int(10) unsigned NOT NULL DEFAULT '0',
  `judges_timeslots_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projects_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `judges_teams_id` (`judges_teams_id`,`judges_timeslots_id`,`projects_id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_teams_timeslots_projects_link`
--

LOCK TABLES `judges_teams_timeslots_projects_link` WRITE;
/*!40000 ALTER TABLE `judges_teams_timeslots_projects_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_teams_timeslots_projects_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges_timeslots`
--

DROP TABLE IF EXISTS `judges_timeslots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judges_timeslots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `round_id` int(11) NOT NULL,
  `type` enum('timeslot','divisional1','divisional2','grand','special') NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `starttime` time NOT NULL DEFAULT '00:00:00',
  `endtime` time NOT NULL DEFAULT '00:00:00',
  `name` tinytext NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges_timeslots`
--

LOCK TABLES `judges_timeslots` WRITE;
/*!40000 ALTER TABLE `judges_timeslots` DISABLE KEYS */;
/*!40000 ALTER TABLE `judges_timeslots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang` char(2) NOT NULL DEFAULT '',
  `langname` varchar(32) NOT NULL DEFAULT '',
  `active` enum('N','Y') NOT NULL DEFAULT 'N',
  UNIQUE KEY `lang` (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('en','English','Y'),('fr','Français','Y');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentors`
--

DROP TABLE IF EXISTS `mentors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrations_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(64) NOT NULL DEFAULT '',
  `lastname` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `organization` varchar(128) NOT NULL DEFAULT '',
  `position` varchar(128) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentors`
--

LOCK TABLES `mentors` WRITE;
/*!40000 ALTER TABLE `mentors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetext`
--

DROP TABLE IF EXISTS `pagetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetext` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `textname` varchar(64) NOT NULL DEFAULT '',
  `textdescription` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `year` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `textname` (`textname`,`year`,`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetext`
--

LOCK TABLES `pagetext` WRITE;
/*!40000 ALTER TABLE `pagetext` DISABLE KEYS */;
INSERT INTO `pagetext` VALUES (1,'register_participants_main_instructions','Participant registration main page instructions','Once all sections are complete, please print the signature page, obtain the required signatures, and mail the signature form, along with any required registration fees to:\r\nInsert address here\r\n\r\nYour forms must be received, post marked by <b>insert date here</b>.  Late entries will not be accepted','0000-00-00 00:00:00',-1,'en'),(3,'register_judge_invite','Judge registration instructions for Invite-Only mode','Thank you for volunteering as a judge for the fair.  Judge registration is by invitation only.  To get started, please contact the chief judge. We will then send you an email with instructions on how to complete your registration. This extra step is only required for first time judges.  We are confident that you will find the experience sufficiently enriching that you will continue to serve as a judge in future years.  Thanks again for your willingness to participate.','2009-10-22 12:56:05',-1,'en'),(4,'register_volunteer_invite','Volunteer registration instructions for Invite-Only mode','Thank you for volunteering for the fair.  Volunteer registration is by invitation only.<br /><br />Please contact the fair and request to be invited as a volunteer.  We will then send you an email with instructions on how to complete your volunteer registration.<br /><br />If you have been invited already, you need to login using the same email address that you were invited with.','0000-00-00 00:00:00',-1,'en'),(5,'schoolaccess','School access login page','Welcome to the School Access Page.  This page allows your school to provide several key pieces of information for the fair, as well as feedback about the schools experience with/at the fair.','0000-00-00 00:00:00',-1,'en'),(6,'register_judge_invite','Judge registration instructions for Invite-Only mode','Thank you for volunteering as a judge for the fair.  Judge registration is by invitation only.  To get started, please contact the chief judge. We will then send you an email with instructions on how to complete your registration. This extra step is only required for first time judges.  We are confident that you will find the experience sufficiently enriching that you will continue to serve as a judge in future years.  Thanks again for your willingness to participate.','0000-00-00 00:00:00',2018,'en'),(7,'register_judge_invite','Judge registration instructions for Invite-Only mode','Thank you for volunteering as a judge for the fair.  Judge registration is by invitation only.  To get started, please contact the chief judge. We will then send you an email with instructions on how to complete your registration. This extra step is only required for first time judges.  We are confident that you will find the experience sufficiently enriching that you will continue to serve as a judge in future years.  Thanks again for your willingness to participate.','0000-00-00 00:00:00',2018,'fr'),(8,'register_participants_main_instructions','Participant registration main page instructions','Once all sections are complete, please print the signature page, obtain the required signatures, and mail the signature form, along with any required registration fees to:\r\nInsert address here\r\n\r\nYour forms must be received, post marked by <b>insert date here</b>.  Late entries will not be accepted','0000-00-00 00:00:00',2018,'en'),(9,'register_participants_main_instructions','Participant registration main page instructions','Once all sections are complete, please print the signature page, obtain the required signatures, and mail the signature form, along with any required registration fees to:\r\nInsert address here\r\n\r\nYour forms must be received, post marked by <b>insert date here</b>.  Late entries will not be accepted','0000-00-00 00:00:00',2018,'fr'),(10,'register_volunteer_invite','Volunteer registration instructions for Invite-Only mode','Thank you for volunteering for the fair.  Volunteer registration is by invitation only.<br /><br />Please contact the fair and request to be invited as a volunteer.  We will then send you an email with instructions on how to complete your volunteer registration.<br /><br />If you have been invited already, you need to login using the same email address that you were invited with.','0000-00-00 00:00:00',2018,'en'),(11,'register_volunteer_invite','Volunteer registration instructions for Invite-Only mode','Thank you for volunteering for the fair.  Volunteer registration is by invitation only.<br /><br />Please contact the fair and request to be invited as a volunteer.  We will then send you an email with instructions on how to complete your volunteer registration.<br /><br />If you have been invited already, you need to login using the same email address that you were invited with.','0000-00-00 00:00:00',2018,'fr'),(12,'schoolaccess','School access login page','Welcome to the School Access Page.  This page allows your school to provide several key pieces of information for the fair, as well as feedback about the schools experience with/at the fair.','0000-00-00 00:00:00',2018,'en'),(13,'schoolaccess','School access login page','Welcome to the School Access Page.  This page allows your school to provide several key pieces of information for the fair, as well as feedback about the schools experience with/at the fair.','0000-00-00 00:00:00',2018,'fr');
/*!40000 ALTER TABLE `pagetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_specialawards_link`
--

DROP TABLE IF EXISTS `project_specialawards_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_specialawards_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_awards_id` int(10) unsigned DEFAULT '0',
  `projects_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_specialawards_link`
--

LOCK TABLES `project_specialawards_link` WRITE;
/*!40000 ALTER TABLE `project_specialawards_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_specialawards_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcategories`
--

DROP TABLE IF EXISTS `projectcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcategories` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(64) NOT NULL DEFAULT '',
  `category_shortform` char(3) NOT NULL DEFAULT '',
  `mingrade` tinyint(4) NOT NULL DEFAULT '0',
  `maxgrade` tinyint(4) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcategories`
--

LOCK TABLES `projectcategories` WRITE;
/*!40000 ALTER TABLE `projectcategories` DISABLE KEYS */;
INSERT INTO `projectcategories` VALUES (3,'Intermediate','Int',9,10,2018),(2,'Junior ','Jnr',7,8,2018),(1,'Elementary','Ele',4,6,2018),(4,'Senior','Sen',11,12,2018);
/*!40000 ALTER TABLE `projectcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcategoriesdivisions_link`
--

DROP TABLE IF EXISTS `projectcategoriesdivisions_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcategoriesdivisions_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `projectdivisions_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projectcategories_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcategoriesdivisions_link`
--

LOCK TABLES `projectcategoriesdivisions_link` WRITE;
/*!40000 ALTER TABLE `projectcategoriesdivisions_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectcategoriesdivisions_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectdivisions`
--

DROP TABLE IF EXISTS `projectdivisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectdivisions` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `division` varchar(64) NOT NULL DEFAULT '',
  `division_shortform` char(3) NOT NULL DEFAULT '',
  `cwsfdivisionid` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectdivisions`
--

LOCK TABLES `projectdivisions` WRITE;
/*!40000 ALTER TABLE `projectdivisions` DISABLE KEYS */;
INSERT INTO `projectdivisions` VALUES (1,'Experiment','Exp',0,2018),(2,'Innovation','Inv',0,2018),(3,'Study','Std',0,2018);
/*!40000 ALTER TABLE `projectdivisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectdivisionsselector`
--

DROP TABLE IF EXISTS `projectdivisionsselector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectdivisionsselector` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `yes` int(10) unsigned NOT NULL DEFAULT '0',
  `yes_type` enum('question','division') NOT NULL DEFAULT 'question',
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `no_type` enum('question','division') NOT NULL DEFAULT 'question',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectdivisionsselector`
--

LOCK TABLES `projectdivisionsselector` WRITE;
/*!40000 ALTER TABLE `projectdivisionsselector` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectdivisionsselector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrations_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projectnumber` varchar(16) DEFAULT NULL,
  `projectsort` varchar(16) DEFAULT NULL,
  `projectnumber_seq` int(11) NOT NULL,
  `projectsort_seq` int(11) NOT NULL,
  `floornumber` int(11) NOT NULL,
  `projectcategories_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projectdivisions_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cwsfdivisionid` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `shorttitle` varchar(255) NOT NULL,
  `summarycountok` tinyint(1) NOT NULL DEFAULT '1',
  `summary` text NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  `req_electricity` enum('no','yes') NOT NULL DEFAULT 'no',
  `req_table` enum('no','yes') NOT NULL DEFAULT 'yes',
  `req_special` varchar(128) NOT NULL DEFAULT '',
  `language` char(2) NOT NULL DEFAULT '',
  `fairs_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectsubdivisions`
--

DROP TABLE IF EXISTS `projectsubdivisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectsubdivisions` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(11) unsigned NOT NULL DEFAULT '0',
  `projectdivisions_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subdivision` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectsubdivisions`
--

LOCK TABLES `projectsubdivisions` WRITE;
/*!40000 ALTER TABLE `projectsubdivisions` DISABLE KEYS */;
INSERT INTO `projectsubdivisions` VALUES (1,2018,1,'Biotechnology & Pharmaceutical Sciences'),(2,2018,1,'Computing and Information Technology'),(3,2018,1,'Earth and Environmental Sciences'),(4,2018,1,'Engineering'),(5,2018,1,'Health Sciences'),(6,2018,1,'Life Sciences'),(7,2018,1,'Physical and Mathematical Sciences'),(8,2018,1,'Automotive'),(9,2018,1,'Environmental Innovation'),(10,2018,2,'Biotechnology & Pharmaceutical Sciences'),(11,2018,2,'Computing and Information Technology'),(12,2018,2,'Earth and Environmental Sciences'),(13,2018,2,'Engineering'),(14,2018,2,'Health Sciences'),(15,2018,2,'Life Sciences'),(16,2018,2,'Physical and Mathematical Sciences'),(17,2018,2,'Automotive'),(18,2018,2,'Environmental Innovation'),(19,2018,3,'Biotechnology & Pharmaceutical Sciences'),(20,2018,3,'Computing and Information Technology'),(21,2018,3,'Earth and Environmental Sciences'),(22,2018,3,'Engineering'),(23,2018,3,'Health Sciences'),(24,2018,3,'Life Sciences'),(25,2018,3,'Physical and Mathematical Sciences'),(26,2018,3,'Automotive'),(27,2018,3,'Environmental Innovation');
/*!40000 ALTER TABLE `projectsubdivisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `code` char(2) NOT NULL DEFAULT '',
  `province` varchar(32) NOT NULL DEFAULT '',
  `countries_code` varchar(2) NOT NULL,
  UNIQUE KEY `countries_code` (`countries_code`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES ('AB','Alberta','CA'),('BC','British Columbia','CA'),('MB','Manitoba','CA'),('NB','New Brunswick','CA'),('NF','Newfoundland and Labrador','CA'),('NT','Northwest Territories','CA'),('NS','Nova Scotia','CA'),('NU','Nunavut','CA'),('ON','Ontario','CA'),('PE','Prince Edward Island','CA'),('QC','Québec','CA'),('SK','Saskatchewan','CA'),('YK','Yukon Territory','CA'),('AL','Alabama','US'),('AK','Alaska','US'),('AS','American Samoa','US'),('AZ','Arizona','US'),('AR','Arkansas','US'),('CA','California','US'),('CO','Colorado','US'),('CT','Connecticut','US'),('DE','Delaware','US'),('DC','District of Columbia','US'),('FM','Federated States of Micronesia','US'),('FL','Florida','US'),('GA','Georgia','US'),('GU','Guam','US'),('HI','Hawaii','US'),('ID','Idaho','US'),('IL','Illinois','US'),('IN','Indiana','US'),('IA','Iowa','US'),('KS','Kansas','US'),('KY','Kentucky','US'),('LA','Louisiana','US'),('ME','Maine','US'),('MH','Marshall Islands','US'),('MD','Maryland','US'),('MA','Massachusetts','US'),('MI','Michigan','US'),('MN','Minnesota','US'),('MS','Mississippi','US'),('MO','Missouri','US'),('MT','Montana','US'),('NE','Nebraska','US'),('NV','Nevada','US'),('NH','New Hampshire','US'),('NJ','New Jersey','US'),('NM','New Mexico','US'),('NY','New York','US'),('NC','North Carolina','US'),('ND','North Dakota','US'),('MP','Northern Mariana Islands','US'),('OH','Ohio','US'),('OK','Oklahoma','US'),('OR','Oregon','US'),('PW','Palau','US'),('PA','Pennsylvania','US'),('PR','Puerto Rico','US'),('RI','Rhode Island','US'),('SC','South Carolina','US'),('SD','South Dakota','US'),('TN','Tennessee','US'),('TX','Texas','US'),('UT','Utah','US'),('VT','Vermont','US'),('VI','Virgin Islands','US'),('VA','Virginia','US'),('WA','Washington','US'),('WV','West Virginia','US'),('WI','Wisconsin','US'),('WY','Wyoming','US');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_answers`
--

DROP TABLE IF EXISTS `question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `questions_id` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_answers`
--

LOCK TABLES `question_answers` WRITE;
/*!40000 ALTER TABLE `question_answers` DISABLE KEYS */;
INSERT INTO `question_answers` VALUES (1,4,16,'yes');
/*!40000 ALTER TABLE `question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL DEFAULT '0',
  `section` varchar(32) NOT NULL DEFAULT '',
  `db_heading` varchar(64) NOT NULL DEFAULT '',
  `question` text NOT NULL,
  `type` enum('check','yesno','int','text') NOT NULL DEFAULT 'check',
  `required` enum('no','yes') NOT NULL DEFAULT 'yes',
  `ord` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (14,-1,'judgereg','Attending Lunch','Will you be attending the Judge\'s Lunch?','yesno','yes',4),(16,2018,'judgereg','Attending Lunch','Will you be attending the Judge\'s Breakfast?','yesno','yes',1),(17,2018,'judgereg','Experience','Have you judged a science fair in the past?','yesno','yes',2),(18,2018,'judgereg','Judge','How many times have you judged science fairs previously?','int','no',3),(19,2018,'judgereg','Prep done?','Have you read the judge\'s preparation as found at http://cwsf.youthscience.ca/judging-canada-wide-science-fair-0 ?','check','yes',4);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regfee_items`
--

DROP TABLE IF EXISTS `regfee_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regfee_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `cost` float NOT NULL,
  `per` enum('student','project') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regfee_items`
--

LOCK TABLES `regfee_items` WRITE;
/*!40000 ALTER TABLE `regfee_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `regfee_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regfee_items_link`
--

DROP TABLE IF EXISTS `regfee_items_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regfee_items_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) NOT NULL,
  `regfee_items_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regfee_items_link`
--

LOCK TABLES `regfee_items_link` WRITE;
/*!40000 ALTER TABLE `regfee_items_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `regfee_items_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` varchar(8) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `emailcontact` varchar(64) DEFAULT NULL,
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','open','paymentpending','complete') NOT NULL DEFAULT 'new',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `year` int(11) NOT NULL DEFAULT '0',
  `nummentors` tinyint(4) DEFAULT NULL,
  `schools_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_report_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `desc` tinytext NOT NULL,
  `creator` varchar(128) NOT NULL DEFAULT '',
  `type` enum('student','judge','award','committee','school','volunteer','tour','fair','fundraising') CHARACTER SET utf8 NOT NULL DEFAULT 'student',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,1,'Student+Project -- Sorted by Last Name','Student Name, Project Number and Title, Category, Division short form sorted by Last Name','The Grant Brothers','student'),(2,2,'Student+Project -- Sorted by Project Number','Student Name, Project Number and Title, Category sorted by Project Number','The Grant Brothers','student'),(3,3,'Student+Project -- Grouped by Category','Student Name, Project Number and Title sorted by Last Name, grouped by Category','The Grant Brothers','student'),(4,4,'Student+Project -- School Names sorted by Last Name','Student Name, Project Num, School Name sorted by Last Name','The Grant Brothers','student'),(5,5,'Student+Project -- Grouped by School sorted by Last Name','Student Name, Project Number and Name sorted by Last Name, grouped by School Name','The Grant Brothers','student'),(6,6,'Teacher -- Name and School Info sorted by Teacher Name','Teacher, School Info sorted by Teacher Name','The Grant Brothers','student'),(7,7,'Teacher -- Names and Contact for each Student by School','Student Name, Teacher Name, Teacher Email, School Phone and Fax grouped by School Name with Addresses','The Grant Brothers','student'),(8,8,'Awards -- Special Awards Nominations Data','listing of special award nominations for each project, lots of data for excel so you can slice and dice (and check additional requirements)','Ceddy','student'),(9,9,'Check-in Lists','List of students and partners, project number and name, division, registration fees, tshirt size, sorted by project number, grouped by age category','The Grant Brothers','student'),(10,10,'Student+Project -- Student (and Partner) grouped by School','Student Pairs, Project Name/Num Grouped by School','The Grant Brothers','student'),(11,11,'Student+Project -- Grouped by School sorted by Project Number','Individual Students, Project Name/Num Grouped by School','The Grant Brothers','student'),(12,12,'Student -- T-Shirt List by School','Individual Students, Project Num, TShirt, Grouped by School','The Grant Brothers','student'),(13,13,'Media -- Program Guide','Project Number, Both student names, and Project Title, grouped by School','The Grant Brothers','student'),(14,14,'Projects -- Titles and Grades from each School','Project Name/Num, Grade Grouped by School','The Grant Brothers','student'),(15,15,'Media -- Award Winners List','Project Number, Student Name and Contact info, by each Award','The Grant Brothers','student'),(16,16,'Projects -- Logistical Display Requirements','Project Number, Students, Electricity, Table, and special needs','The Grant Brothers','student'),(17,17,'Emergency Contact Information','Emergency Contact Names, Relationship, and Phone Numbers for each student.','The Grant Brothers','student'),(18,18,'Student -- Grouped by Grade and Gender (YSF Stats)','A list of students grouped by Grade and Gender.  A quick way to total up the info for the YSF regional stats page.','The Grant Brothers','student'),(19,19,'Student+Project -- Grouped by School, 1 per page','Both students names grouped by school, each school list begins on a new page.','The Grant Brothers','student'),(20,20,'Judges -- Sorted by Last Name','A list of judge contact info, sorted by last name','The Grant Brothers','judge'),(21,21,'Judges -- Judging Teams','A list of all the judges, sorted by team number.','The Grant Brothers','judge'),(22,22,'Awards -- Grouped by Judging Team','List of each judging team, and the awards they are judging','The Grant Brothers','award'),(23,23,'Awards -- Judging Teams grouped by Award','A list of each award, and the judging teams that will assign it','The Grant Brothers','award'),(24,24,'Labels -- School Mailing Addresses','School Mailing Addresses ONLY for schools attached to registered students (NOT ALL SCHOOLS) with a blank spot for the teacher\'s name, since each student apparently spells their teacher\'s name differently.','The Grant Brothers','student'),(25,25,'Labels -- Student Name and Project Number','Just the students names and project name/number on a label.','The Grant Brothers','student'),(26,26,'Name Tags -- Students','Name Tags for Students','The Grant Brothers','student'),(27,27,'Name Tags -- Judges','Name Tags for Judges','The Grant Brothers','judge'),(28,28,'Name Tags -- Committee Members','Name Tags for Committee Members','The Grant Brothers','committee'),(29,29,'Labels -- Project Identification (for judging sheets)','Project identification labels for judging sheets','The Grant Brothers','student'),(30,30,'Labels -- Table Labels','Labels to go on each table, fullpage landscape version','The Grant Brothers','student'),(31,31,'Awards -- Special Awards Nominations','Special award nominations for each project, grouped by special award, one award per page.','The Grant Brothers','student'),(32,32,'Student+Project -- Grouped by School Board ID','Student Name, Project Number and Name sorted by Last Name, grouped by School Board ID','The Grant Brothers','student'),(33,33,'Certificates -- Participation Certificates','A certificate template for each student with name, project name, fair name, and project number at the bottom','The Grant Brothers','student'),(34,34,'Labels -- Table Labels (small)','Labels to go on each table','The Grant Brothers','student'),(35,35,'School -- All Schools','List of all schools in the database. Name, address, principal and phone.','The Grant Brothers','school'),(36,36,'School -- Access Codes','List of access codes and registration passwords for all schools in the database.','The Grant Brothers','school'),(37,37,'Awards -- Award Sponsor Information','Sponsor information for each award with the primary contact.  This is a large report so the default format is CSV.','The Grant Brothers','award'),(38,38,'Tours -- All Tour Information','A listing of just the tours and all related info, no student assignments or anything.','The Grant Brothers','tour'),(39,39,'Tours -- Available Tours','A list of just the tour names and numbers for fair day','The Grant Brothers','tour'),(40,40,'Tours -- Student Emergency Contact Information','Emergency contact information for each tour, each tour starting on a new page.','The Grant Brothers','student'),(41,41,'Tours -- Student Tour Assignments','Participant and Tour Assignments, grouped by age category, sorted by project number','The Grant Brothers','student'),(42,42,'Winners -- Award Ceremony Presentation Data','A CSV dump of all the winners and their prizes.  Useful for importing into an award ceremony presentation, or a document.','The Grant Brothers','student'),(43,43,'T-Shirt Size Count','A list of tshirt sizes (the blank entry is those students who have selected \"none\"), and the number of tshirts of each size.','The Grant Brothers','student'),(44,44,'Labels -- Table Labels (with special award nominations)','Labels for each project.  This report includes the first 5 projects the students have self-nominated for.  There are boxes for judges to initial too.  We realize that each fair may have a different number of projects.  This reports serves as an example of','The Grant Brothers','student'),(45,45,'School -- All school information for SFIAB CSV import','Generates a CSV file that can be used by another SFIAB to import the school list','The Grant Brothers','school'),(46,46,'Feeder Fairs -- All Stats','All feeder fair statistics in CSV','The Grant Brothers','fair'),(47,47,'Labels -- Fundraising Campaign Mailing Labels','Mailing labels for all the contacts attached to a fundraising campaign','The Grant Brothers','fundraising');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_committee`
--

DROP TABLE IF EXISTS `reports_committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_committee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `reports_id` int(11) NOT NULL,
  `category` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `format` varchar(64) NOT NULL,
  `stock` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_committee`
--

LOCK TABLES `reports_committee` WRITE;
/*!40000 ALTER TABLE `reports_committee` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports_committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_items`
--

DROP TABLE IF EXISTS `reports_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reports_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('col','sort','group','distinct','option','filter') NOT NULL DEFAULT 'col',
  `ord` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) NOT NULL DEFAULT '',
  `value` varchar(64) NOT NULL DEFAULT '',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `w` float NOT NULL DEFAULT '0',
  `h` float NOT NULL DEFAULT '0',
  `lines` float NOT NULL DEFAULT '0',
  `face` enum('','bold') NOT NULL DEFAULT '',
  `fontname` varchar(32) NOT NULL,
  `fontstyle` set('bold','italic','underline','strikethrough') NOT NULL,
  `fontsize` float NOT NULL,
  `align` varchar(64) NOT NULL DEFAULT 'vtop center',
  `valign` enum('top','middle','bottom') NOT NULL,
  `on_overflow` enum('truncate','...','scale') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=660 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_items`
--

LOCK TABLES `reports_items` WRITE;
/*!40000 ALTER TABLE `reports_items` DISABLE KEYS */;
INSERT INTO `reports_items` VALUES (1,1,'col',5,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(2,1,'col',4,'div','',0,0,0,0,0,'','','',0,'center','top','truncate'),(3,1,'sort',0,'last_name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(4,2,'col',3,'category','',0,0,0,0,0,'','','',0,'center','top','truncate'),(5,2,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(6,2,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(7,3,'col',3,'div','',0,0,0,0,0,'','','',0,'center','top','truncate'),(8,4,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(9,3,'sort',0,'last_name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(10,3,'group',0,'category','',0,0,0,0,0,'','','',0,'center','top','truncate'),(11,4,'col',3,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(12,4,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(13,4,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(14,4,'sort',0,'last_name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(15,5,'col',3,'category','',0,0,0,0,0,'','','',0,'center','top','truncate'),(16,5,'col',4,'div','',0,0,0,0,0,'','','',0,'center','top','truncate'),(17,5,'sort',0,'last_name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(18,5,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(19,6,'col',2,'school_phone','',0,0,0,0,0,'','','',0,'center','top','truncate'),(20,6,'col',1,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(21,6,'col',0,'teacher','',0,0,0,0,0,'','','',0,'center','top','truncate'),(22,6,'sort',0,'teacher','',0,0,0,0,0,'','','',0,'center','top','truncate'),(23,6,'distinct',0,'teacher','',0,0,0,0,0,'','','',0,'center','top','truncate'),(24,11,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(25,11,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(26,11,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(27,7,'col',5,'school_fax','',0,0,0,0,0,'','','',0,'center','top','truncate'),(28,7,'col',4,'school_phone','',0,0,0,0,0,'','','',0,'center','top','truncate'),(29,7,'col',3,'teacheremail','',0,0,0,0,0,'','','',0,'center','top','truncate'),(30,7,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(31,9,'col',6,'div','',0,0,0,0,0,'','','',0,'center','top','truncate'),(32,9,'col',5,'tshirt','',0,0,0,0,0,'','','',0,'center','top','truncate'),(33,9,'col',3,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(34,9,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(35,9,'group',0,'category','',0,0,0,0,0,'','','',0,'center','top','truncate'),(36,9,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(37,10,'col',2,'partner','',0,0,0,0,0,'','','',0,'center','top','truncate'),(38,10,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(39,10,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(40,10,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(41,10,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(42,10,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(43,2,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(44,11,'col',4,'div','',0,0,0,0,0,'','','',0,'center','top','truncate'),(45,11,'col',3,'category','',0,0,0,0,0,'','','',0,'center','top','truncate'),(46,11,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(47,11,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(48,12,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(49,12,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(50,12,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(51,12,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(52,13,'col',1,'bothnames','',0,0,0,0,0,'','','',0,'center','top','truncate'),(53,13,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(54,13,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(55,13,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(56,13,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(57,14,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(58,14,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(59,14,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(60,14,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(61,15,'col',5,'postal','',0,0,0,0,0,'','','',0,'center','top','truncate'),(62,15,'col',4,'province','',0,0,0,0,0,'','','',0,'center','top','truncate'),(63,15,'col',3,'city','',0,0,0,0,0,'','','',0,'center','top','truncate'),(64,15,'col',2,'address','',0,0,0,0,0,'','','',0,'center','top','truncate'),(65,15,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(66,15,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(67,15,'group',0,'awards','',0,0,0,0,0,'','','',0,'center','top','truncate'),(68,1,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'center','top','truncate'),(69,1,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(70,1,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(71,1,'col',3,'category','',0,0,0,0,0,'','','',0,'center','top','truncate'),(72,1,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(73,3,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(74,3,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(75,3,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(76,9,'col',4,'partner','',0,0,0,0,0,'','','',0,'center','top','truncate'),(77,9,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(78,9,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(79,9,'col',1,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(80,9,'option',1,'group_new_page','yes',0,0,0,0,0,'','','',0,'center','top','truncate'),(81,5,'col',5,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(82,5,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(83,5,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(84,3,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(85,4,'col',2,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(86,7,'col',2,'teacher','',0,0,0,0,0,'','','',0,'center','top','truncate'),(87,7,'group',1,'schooladdr','',0,0,0,0,0,'','','',0,'center','top','truncate'),(88,7,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(89,11,'col',5,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(90,2,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(91,2,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(92,2,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(93,12,'col',2,'tshirt','',0,0,0,0,0,'','','',0,'center','top','truncate'),(94,12,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(95,7,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(96,12,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(97,12,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(98,7,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(99,7,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(100,7,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(101,15,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(102,15,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(103,15,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(104,15,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(105,13,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(106,13,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(107,13,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(108,13,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(109,14,'col',1,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(110,14,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(111,14,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(112,14,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(113,16,'col',3,'req_table','',0,0,0,0,0,'','','',0,'','top','truncate'),(114,16,'col',2,'req_elec','',0,0,0,0,0,'','','',0,'','top','truncate'),(115,16,'col',1,'title','',0,0,0,0,0,'','','',0,'','top','truncate'),(116,16,'group',0,'category','',0,0,0,0,0,'','','',0,'','top','truncate'),(117,16,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(118,16,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(119,16,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(120,16,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(121,16,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(122,17,'col',4,'emerg_phone','',0,0,0,0,0,'','','',0,'','top','truncate'),(123,17,'col',3,'emerg_relation','',0,0,0,0,0,'','','',0,'','top','truncate'),(124,17,'col',2,'emerg_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(125,17,'sort',0,'last_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(126,7,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(127,14,'col',2,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(128,17,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(129,6,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(130,6,'col',3,'school_fax','',0,0,0,0,0,'','','',0,'center','top','truncate'),(131,17,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(132,17,'col',1,'name','',0,0,0,0,0,'','','',0,'','top','truncate'),(133,6,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(134,6,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(135,9,'col',0,'paid','',0,0,0,0,0,'','','',0,'center','top','truncate'),(136,1,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(137,2,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(138,3,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(139,3,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(140,4,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(141,4,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(142,10,'col',3,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(143,10,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(144,10,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(145,10,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(146,5,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(147,5,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(148,5,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(149,5,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(150,11,'col',2,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(151,11,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(152,11,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(153,18,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(154,18,'col',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(155,18,'col',2,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(156,18,'group',0,'grade_str','',0,0,0,0,0,'','','',0,'center','top','truncate'),(157,18,'group',1,'gender','',0,0,0,0,0,'','','',0,'center','top','truncate'),(158,18,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(159,18,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(160,18,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(161,18,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(162,3,'col',4,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(163,1,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(164,2,'col',4,'div','',0,0,0,0,0,'','','',0,'center','top','truncate'),(165,2,'col',5,'grade','',0,0,0,0,0,'','','',0,'center','top','truncate'),(166,19,'col',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(167,19,'col',1,'title','',0,0,0,0,0,'','','',0,'center','top','truncate'),(168,19,'col',2,'bothnames','',0,0,0,0,0,'','','',0,'center','top','truncate'),(169,19,'group',0,'school','',0,0,0,0,0,'','','',0,'center','top','truncate'),(170,19,'sort',0,'pn','',0,0,0,0,0,'','','',0,'center','top','truncate'),(171,19,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(172,19,'option',1,'group_new_page','yes',0,0,0,0,0,'','','',0,'center','top','truncate'),(173,19,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(174,21,'sort',1,'namefl','',0,0,0,0,0,'','','',0,'center','top','truncate'),(175,21,'col',1,'team','',0,0,0,0,0,'','','',0,'center','top','truncate'),(176,21,'col',2,'captain','',0,0,0,0,0,'','','',0,'center','top','truncate'),(177,21,'col',3,'namefl','',0,0,0,0,0,'','','',0,'center','top','truncate'),(178,21,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(179,20,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(180,20,'col',4,'complete','',0,0,0,0,0,'','','',0,'center','top','truncate'),(181,20,'col',0,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(182,20,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(183,20,'sort',0,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(184,20,'col',1,'email','',0,0,0,0,0,'','','',0,'center','top','truncate'),(185,20,'col',2,'phone_home','',0,0,0,0,0,'','','',0,'center','top','truncate'),(186,20,'col',3,'phone_work','',0,0,0,0,0,'','','',0,'center','top','truncate'),(187,20,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(188,21,'sort',0,'teamnum','',0,0,0,0,0,'','','',0,'center','top','truncate'),(189,21,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(190,21,'col',0,'teamnum','',0,0,0,0,0,'','','',0,'center','top','truncate'),(191,21,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(192,22,'col',1,'type','',0,0,0,0,0,'','','',0,'center','top','truncate'),(193,22,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'center','top','truncate'),(194,22,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(195,22,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(196,22,'group',0,'judgeteamnum','',0,0,0,0,0,'','','',0,'center','top','truncate'),(197,22,'col',0,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(198,22,'group',1,'judgeteamname','',0,0,0,0,0,'','','',0,'center','top','truncate'),(199,23,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'center','top','truncate'),(200,23,'col',1,'judgeteamname','',0,0,0,0,0,'','','',0,'center','top','truncate'),(201,23,'group',0,'type','',0,0,0,0,0,'','','',0,'center','top','truncate'),(202,23,'sort',0,'judgeteamnum','',0,0,0,0,0,'','','',0,'center','top','truncate'),(203,23,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'center','top','truncate'),(204,23,'group',1,'name','',0,0,0,0,0,'','','',0,'center','top','truncate'),(205,23,'col',0,'judgeteamnum','',0,0,0,0,0,'','','',0,'center','top','truncate'),(206,23,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'center','top','truncate'),(207,16,'col',4,'req_special','',0,0,0,0,0,'','','',0,'','top','truncate'),(208,16,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(209,16,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(210,16,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(211,16,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(212,16,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(213,17,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(214,25,'option',6,'stock','5164',0,0,0,0,0,'','','',0,'','top','truncate'),(215,25,'option',5,'label_logo','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(216,24,'col',2,'school_city_prov','',5,50,95,8,1,'','','',0,'left','top','truncate'),(217,24,'col',1,'school_address','',5,40,95,16,2,'','','',0,'left','top','truncate'),(218,24,'col',0,'school','',5,5,95,16,2,'','','',0,'left','top','truncate'),(219,24,'option',6,'stock','5164',0,0,0,0,0,'','','',0,'','top','truncate'),(220,24,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(221,24,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(222,24,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(223,24,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(224,24,'sort',0,'school','',0,0,0,0,0,'','','',0,'','top','truncate'),(225,25,'col',4,'school','',1,90,98,5,1,'','','',0,'center','top','truncate'),(226,24,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(227,24,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(228,25,'option',4,'label_fairname','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(229,25,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(230,25,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(231,25,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(232,25,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(233,25,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(234,8,'col',7,'nom_awards','',0,0,0,0,0,'','','',0,'','top','truncate'),(235,25,'col',3,'categorydivision','',1,80,98,12,2,'','','',0,'center','top','truncate'),(236,25,'col',2,'pn','',1,68,98,8,1,'','','',0,'center','top','truncate'),(237,27,'sort',0,'namefl','',0,0,0,0,0,'','','',0,'','top','truncate'),(238,25,'col',1,'title','',1,35,98,27,3,'','','',0,'center','top','truncate'),(239,25,'col',0,'namefl','',5,5,90,28,2,'','','',0,'center','top','truncate'),(240,26,'col',2,'categorydivision','',1,70,98,14,2,'','','',0,'center','top','truncate'),(241,26,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(242,26,'option',6,'stock','nametag',0,0,0,0,0,'','','',0,'','top','truncate'),(243,26,'option',5,'label_logo','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(244,26,'option',4,'label_fairname','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(245,26,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(246,26,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(247,26,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(248,26,'col',1,'title','',1,35,98,27,3,'','','',0,'center','top','truncate'),(249,26,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(250,26,'col',0,'namefl','',5,5,90,28,2,'bold','','',0,'center','top','truncate'),(251,27,'col',1,'static_text','Judge',1,40,98,10,1,'','','',0,'center','top','truncate'),(252,27,'col',0,'namefl','',1,15,98,24,2,'bold','','',0,'center','top','truncate'),(253,27,'option',4,'label_fairname','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(254,27,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(255,27,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(256,27,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(257,27,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(258,28,'col',1,'static_text','Committee',1,40,98,10,1,'','','',0,'center','top','truncate'),(259,28,'col',0,'name','',1,15,98,24,2,'bold','','',0,'center','top','truncate'),(260,28,'sort',0,'name','',0,0,0,0,0,'','','',0,'','top','truncate'),(261,28,'option',4,'label_fairname','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(262,28,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(263,28,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(264,28,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(265,28,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(266,30,'option',6,'stock','fullpage_landscape',0,0,0,0,0,'','','',0,'','top','truncate'),(267,29,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(268,29,'col',1,'categorydivision','',1,30,98,18,1,'','','',0,'left','top','truncate'),(269,8,'col',6,'school_city','',0,0,0,0,0,'','','',0,'','top','truncate'),(270,29,'col',0,'pn','',1,5,98,20,1,'','','',0,'left','top','truncate'),(271,29,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(272,29,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(273,29,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(274,29,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(275,29,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(276,29,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(277,30,'col',3,'categorydivision','',1,85,98,5,1,'','','',0,'center','top','truncate'),(278,30,'col',2,'pn','',1,20,98,35,1,'','','',0,'center','top','truncate'),(279,30,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(280,30,'option',4,'label_fairname','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(281,30,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(282,30,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(283,30,'col',1,'title','',1,5,98,15,3,'','','',0,'center','top','truncate'),(284,30,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(285,31,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(286,8,'col',5,'birthdate','',0,0,0,0,0,'','','',0,'','top','truncate'),(287,8,'col',4,'gender','',0,0,0,0,0,'','','',0,'','top','truncate'),(288,31,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(289,31,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(290,31,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(291,31,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(292,31,'col',5,'age','',0,0,0,0,0,'','','',0,'','top','truncate'),(293,31,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(294,17,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(295,31,'option',1,'group_new_page','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(296,31,'col',4,'gender','',0,0,0,0,0,'','','',0,'','top','truncate'),(297,31,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(298,31,'col',3,'grade','',0,0,0,0,0,'','','',0,'','top','truncate'),(299,31,'group',0,'nom_awards','',0,0,0,0,0,'','','',0,'','top','truncate'),(300,32,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(301,32,'col',4,'school','',0,0,0,0,0,'','','',0,'','top','truncate'),(302,32,'col',3,'grade','',0,0,0,0,0,'','','',0,'','top','truncate'),(303,32,'col',2,'title','',0,0,0,0,0,'','','',0,'','top','truncate'),(304,32,'group',0,'school_board','',0,0,0,0,0,'','','',0,'','top','truncate'),(305,32,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(306,32,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(307,32,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(308,32,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(309,32,'option',1,'group_new_page','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(310,32,'col',1,'name','',0,0,0,0,0,'','','',0,'','top','truncate'),(311,32,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(312,32,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(313,32,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(314,17,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(315,17,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(316,17,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(317,17,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(318,31,'col',2,'namefl','',0,0,0,0,0,'','','',0,'','top','truncate'),(319,31,'col',1,'title','',0,0,0,0,0,'','','',0,'','top','truncate'),(320,31,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(321,33,'col',5,'static_text','Chair',5,85,30,2,1,'','','',0,'center','top','truncate'),(322,33,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(323,8,'col',2,'namefl','',0,0,0,0,0,'','','',0,'','top','truncate'),(324,8,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(325,33,'col',6,'static_text','Chief Judge',60,85,30,2,1,'','','',0,'center','top','truncate'),(326,33,'col',4,'fair_year','',5,25,30,6,1,'','','',0,'center','top','truncate'),(327,33,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(328,33,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(329,33,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(330,33,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(331,33,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(332,33,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(333,33,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(334,33,'col',3,'pn','',3,97,94,1,1,'','','',0,'right','top','truncate'),(335,33,'col',0,'fair_name','',1,36,98,4,1,'','','',0,'center','top','truncate'),(336,33,'col',1,'namefl','',1,56,98,8,2,'','','',0,'center','top','truncate'),(337,33,'col',2,'title','',1,65,98,12,3,'','','',0,'center','top','truncate'),(338,24,'col',3,'school_postal','',5,60,95,8,1,'','','',0,'left','top','truncate'),(339,30,'col',0,'bothnames','',1,70,98,10,2,'','','',0,'center','top','truncate'),(340,30,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(341,26,'col',3,'pn','',1,85,98,8,1,'','','',0,'center','top','truncate'),(342,27,'col',2,'organization','',1,70,98,16,2,'','','',0,'center','top','truncate'),(343,27,'option',5,'label_logo','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(344,27,'option',6,'stock','nametag',0,0,0,0,0,'','','',0,'','top','truncate'),(345,27,'filter',0,'complete','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(346,28,'col',2,'organization','',1,70,98,16,2,'','','',0,'center','top','truncate'),(347,28,'option',5,'label_logo','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(348,28,'option',6,'stock','nametag',0,0,0,0,0,'','','',0,'','top','truncate'),(349,29,'col',2,'title','',1,55,98,40,2,'','','',0,'left','top','truncate'),(350,29,'option',6,'stock','5161',0,0,0,0,0,'','','',0,'','top','truncate'),(351,30,'option',5,'label_logo','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(352,30,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(353,8,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(354,8,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(355,8,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(356,8,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(357,8,'col',3,'grade','',0,0,0,0,0,'','','',0,'','top','truncate'),(358,8,'col',1,'title','',0,0,0,0,0,'','','',0,'','top','truncate'),(359,8,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(360,8,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(361,8,'option',0,'type','csv',0,0,0,0,0,'','','',0,'','top','truncate'),(362,8,'sort',0,'nom_awards','',0,0,0,0,0,'','','',0,'','top','truncate'),(363,8,'sort',1,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(364,34,'col',3,'categorydivision','',1,85,98,7,1,'','','',0,'center','top','truncate'),(365,34,'col',2,'pn','',1,20,98,35,1,'','','',0,'center','top','truncate'),(366,34,'col',1,'title','',1,5,98,24,3,'','','',0,'center','top','truncate'),(367,34,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(368,34,'option',4,'label_fairname','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(369,34,'option',3,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(370,34,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(371,34,'col',0,'bothnames','',1,70,98,14,2,'','','',0,'center','top','truncate'),(372,34,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(373,34,'option',5,'label_logo','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(374,34,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(375,34,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(376,34,'option',6,'stock','5164',0,0,0,0,0,'','','',0,'','top','truncate'),(377,35,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(378,35,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(379,35,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(380,35,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(381,35,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(382,35,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(383,35,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(384,35,'col',0,'school','',0,0,0,0,0,'','','',0,'','top','truncate'),(385,35,'col',1,'schooladdr','',0,0,0,0,0,'','','',0,'','top','truncate'),(386,35,'col',2,'school_principal','',0,0,0,0,0,'','','',0,'','top','truncate'),(387,35,'col',3,'school_phone','',0,0,0,0,0,'','','',0,'','top','truncate'),(388,35,'sort',0,'school','',0,0,0,0,0,'','','',0,'','top','truncate'),(389,36,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(390,36,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(391,36,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(392,36,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(393,36,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(394,36,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(395,36,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(396,36,'col',0,'school','',0,0,0,0,0,'','','',0,'','top','truncate'),(397,36,'col',1,'school_city','',0,0,0,0,0,'','','',0,'','top','truncate'),(398,36,'col',2,'school_accesscode','',0,0,0,0,0,'','','',0,'','top','truncate'),(399,36,'col',3,'school_registration_password','',0,0,0,0,0,'','','',0,'','top','truncate'),(400,36,'col',4,'school_board','',0,0,0,0,0,'','','',0,'','top','truncate'),(401,36,'sort',0,'school','',0,0,0,0,0,'','','',0,'','top','truncate'),(402,37,'option',0,'type','csv',0,0,0,0,0,'','','',0,'','top','truncate'),(403,37,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(404,37,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(405,37,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(406,37,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(407,37,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(408,37,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(409,37,'col',0,'name','',0,0,0,0,0,'','','',0,'','top','truncate'),(410,37,'col',1,'sponsor_organization','',0,0,0,0,0,'','','',0,'','top','truncate'),(411,37,'col',2,'sponsor_phone','',0,0,0,0,0,'','','',0,'','top','truncate'),(412,37,'col',3,'sponsor_fax','',0,0,0,0,0,'','','',0,'','top','truncate'),(413,37,'col',4,'sponsor_address','',0,0,0,0,0,'','','',0,'','top','truncate'),(414,37,'col',5,'sponsor_city','',0,0,0,0,0,'','','',0,'','top','truncate'),(415,37,'col',6,'sponsor_province','',0,0,0,0,0,'','','',0,'','top','truncate'),(416,37,'col',7,'sponsor_postal','',0,0,0,0,0,'','','',0,'','top','truncate'),(417,37,'col',8,'sponsor_notes','',0,0,0,0,0,'','','',0,'','top','truncate'),(419,37,'col',10,'pcontact_salutation','',0,0,0,0,0,'','','',0,'','top','truncate'),(420,37,'col',11,'pcontact_namefl','',0,0,0,0,0,'','','',0,'','top','truncate'),(421,37,'col',12,'pcontact_position','',0,0,0,0,0,'','','',0,'','top','truncate'),(422,37,'col',13,'pcontact_email','',0,0,0,0,0,'','','',0,'','top','truncate'),(423,37,'col',14,'pcontact_hphone','',0,0,0,0,0,'','','',0,'','top','truncate'),(424,37,'col',15,'pcontact_wphone','',0,0,0,0,0,'','','',0,'','top','truncate'),(425,37,'col',16,'pcontact_cphone','',0,0,0,0,0,'','','',0,'','top','truncate'),(426,37,'col',17,'pcontact_fax','',0,0,0,0,0,'','','',0,'','top','truncate'),(427,37,'col',18,'pcontact_notes','',0,0,0,0,0,'','','',0,'','top','truncate'),(428,37,'sort',0,'name','',0,0,0,0,0,'','','',0,'','top','truncate'),(429,38,'option',0,'type','csv',0,0,0,0,0,'','','',0,'','top','truncate'),(430,38,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(431,38,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(432,38,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(433,38,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(434,38,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(435,38,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(436,38,'col',0,'tour_num','',0,0,0,0,0,'','','',0,'','top','truncate'),(437,38,'col',1,'tour_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(438,38,'col',2,'tour_capacity','',0,0,0,0,0,'','','',0,'','top','truncate'),(439,38,'col',3,'tour_mingrade','',0,0,0,0,0,'','','',0,'','top','truncate'),(440,38,'col',4,'tour_maxgrade','',0,0,0,0,0,'','','',0,'','top','truncate'),(441,38,'col',5,'tour_desc','',0,0,0,0,0,'','','',0,'','top','truncate'),(442,38,'col',6,'tour_location','',0,0,0,0,0,'','','',0,'','top','truncate'),(443,38,'col',7,'tour_contact','',0,0,0,0,0,'','','',0,'','top','truncate'),(444,38,'sort',0,'tour_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(445,39,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(446,39,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(447,39,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(448,39,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(449,39,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(450,39,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(451,39,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(452,39,'col',0,'tour_num','',0,0,0,0,0,'','','',0,'','top','truncate'),(453,39,'col',1,'tour_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(454,39,'sort',0,'tour_id','',0,0,0,0,0,'','','',0,'','top','truncate'),(455,40,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(456,40,'option',1,'group_new_page','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(457,40,'option',2,'allow_multiline','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(458,40,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(459,40,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(460,40,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(461,40,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(462,40,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(463,40,'col',1,'namefl','',0,0,0,0,0,'','','',0,'','top','truncate'),(464,40,'col',2,'emerg_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(465,40,'col',3,'emerg_relation','',0,0,0,0,0,'','','',0,'','top','truncate'),(466,40,'col',4,'emerg_phone','',0,0,0,0,0,'','','',0,'','top','truncate'),(467,40,'group',0,'tour_assign_numname','',0,0,0,0,0,'','','',0,'','top','truncate'),(468,40,'sort',0,'last_name','',0,0,0,0,0,'','','',0,'','top','truncate'),(469,41,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(470,41,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(471,41,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(472,41,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(473,41,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(474,41,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(475,41,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(476,41,'col',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(477,41,'col',1,'namefl','',0,0,0,0,0,'','','',0,'','top','truncate'),(478,41,'col',2,'tour_assign_numname','',0,0,0,0,0,'','','',0,'','top','truncate'),(479,41,'group',0,'category','',0,0,0,0,0,'','','',0,'','top','truncate'),(480,41,'sort',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(481,19,'distinct',0,'pn','',0,0,0,0,0,'','','',0,'','top','truncate'),(482,42,'option',0,'type','csv',0,0,0,0,0,'','','',0,'','top','truncate'),(483,42,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(484,42,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(485,42,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(486,42,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(487,42,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(488,42,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(489,42,'col',0,'division','',0,0,0,0,1,'','','',0,'','top','truncate'),(490,42,'col',1,'fr_division','',0,0,0,0,1,'','','',0,'','top','truncate'),(491,42,'col',2,'category','',0,0,0,0,1,'','','',0,'','top','truncate'),(492,42,'col',3,'fr_category','',0,0,0,0,1,'','','',0,'','top','truncate'),(493,42,'col',4,'award_name','',0,0,0,0,1,'','','',0,'','top','truncate'),(494,42,'col',5,'award_prize_name','',0,0,0,0,1,'','','',0,'','top','truncate'),(495,42,'col',6,'award_prize_cash','',0,0,0,0,1,'','','',0,'','top','truncate'),(496,42,'col',7,'award_prize_scholarship','',0,0,0,0,1,'','','',0,'','top','truncate'),(497,42,'col',8,'award_prize_value','',0,0,0,0,1,'','','',0,'','top','truncate'),(498,42,'col',9,'pn','',0,0,0,0,1,'','','',0,'','top','truncate'),(499,42,'col',10,'title','',0,0,0,0,1,'','','',0,'','top','truncate'),(500,42,'col',11,'namefl','',0,0,0,0,1,'','','',0,'','top','truncate'),(501,42,'col',12,'partnerfl','',0,0,0,0,1,'','','',0,'','top','truncate'),(502,42,'col',13,'school','',0,0,0,0,1,'','','',0,'','top','truncate'),(503,42,'col',14,'school_city','',0,0,0,0,1,'','','',0,'','top','truncate'),(504,42,'col',15,'school_province','',0,0,0,0,1,'','','',0,'','top','truncate'),(505,42,'col',16,'school_board','',0,0,0,0,1,'','','',0,'','top','truncate'),(506,42,'col',17,'school_postal','',0,0,0,0,1,'','','',0,'','top','truncate'),(507,42,'sort',0,'order','',0,0,0,0,1,'','','',0,'','top','truncate'),(508,42,'distinct',0,'pn','',0,0,0,0,1,'','','',0,'','top','truncate'),(509,42,'filter',0,'award_excludefromac','no',0,0,0,0,1,'','','',0,'','top','truncate'),(510,43,'option',0,'type','pdf',0,0,0,0,0,'','','',0,'','top','truncate'),(511,43,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(512,43,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(513,43,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(514,43,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(515,43,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(516,43,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(517,43,'col',0,'tshirt','',0,0,0,0,1,'','','',0,'','top','truncate'),(518,43,'col',1,'special_tshirt_count','',0,0,0,0,1,'','','',0,'','top','truncate'),(519,43,'sort',0,'tshirt','',0,0,0,0,1,'','','',0,'','top','truncate'),(520,43,'filter',0,'tshirt','none',5,0,0,0,1,'','','',0,'','top','truncate'),(521,44,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(522,44,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(523,44,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(524,44,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(525,44,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(526,44,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(527,44,'option',6,'stock','letter_4up',0,0,0,0,0,'','','',0,'','top','truncate'),(528,44,'col',0,'pn','',5,5,30,5,1,'','','',0,'','top','truncate'),(529,44,'col',1,'nom_awards_name_1','',5,45,50,10,3,'','','',0,'','top','truncate'),(530,44,'col',2,'nom_awards_name_2','',5,56,50,10,3,'','','',0,'','top','truncate'),(531,44,'col',3,'nom_awards_name_3','',5,67,50,10,3,'','','',0,'','top','truncate'),(532,44,'col',4,'nom_awards_name_4','',5,78,50,10,3,'','','',0,'','top','truncate'),(533,44,'col',5,'nom_awards_name_5','',5,89,50,10,3,'','','',0,'','top','truncate'),(534,44,'col',6,'static_text','Judge 1',5,22,30,4,1,'','','',0,'','top','truncate'),(535,44,'col',7,'static_text','Judge 2',5,34,30,4,1,'','','',0,'','top','truncate'),(536,44,'col',8,'static_text','Safety Check',42,6,12,6,2,'','','',0,'','top','truncate'),(537,44,'col',9,'static_text','Judges: Please initial box when judging of project is complete',70,23,28,12,4,'','','',0,'','top','truncate'),(538,44,'col',10,'static_box','',0,0,100,100,1,'','','',0,'','top','truncate'),(539,44,'col',11,'static_box','',55,5,40,8,1,'','','',0,'','top','truncate'),(540,44,'col',12,'static_box','',22,20,40,8,1,'','','',0,'','top','truncate'),(541,44,'col',13,'static_box','',22,32,40,8,1,'','','',0,'','top','truncate'),(542,44,'col',14,'static_box','',55,46,40,8,1,'','','',0,'','top','truncate'),(543,44,'col',15,'static_box','',55,57,40,8,1,'','','',0,'','top','truncate'),(544,44,'col',16,'static_box','',55,68,40,8,1,'','','',0,'','top','truncate'),(545,44,'col',17,'static_box','',55,79,40,8,1,'','','',0,'','top','truncate'),(546,44,'col',18,'static_box','',55,90,40,8,1,'','','',0,'','top','truncate'),(547,44,'col',19,'static_box','',0,15,100,27,1,'','','',0,'','top','truncate'),(548,44,'sort',0,'pn','',0,0,0,0,1,'','','',0,'','top','truncate'),(549,44,'distinct',0,'pn','',0,0,0,0,1,'','','',0,'','top','truncate'),(550,45,'option',0,'type','csv',0,0,0,0,0,'','','',0,'','top','truncate'),(551,45,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(552,45,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(553,45,'option',3,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(554,45,'option',4,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(555,45,'option',5,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(556,45,'option',6,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(557,45,'col',0,'school','',0,0,0,0,1,'','','',0,'','top','truncate'),(558,45,'col',1,'school_lang','',0,0,0,0,1,'','','',0,'','top','truncate'),(559,45,'col',2,'school_level','',0,0,0,0,1,'','','',0,'','top','truncate'),(560,45,'col',3,'school_board','',0,0,0,0,1,'','','',0,'','top','truncate'),(561,45,'col',4,'school_district','',0,0,0,0,1,'','','',0,'','top','truncate'),(562,45,'col',5,'school_phone','',0,0,0,0,1,'','','',0,'','top','truncate'),(563,45,'col',6,'school_fax','',0,0,0,0,1,'','','',0,'','top','truncate'),(564,45,'col',7,'school_address','',0,0,0,0,1,'','','',0,'','top','truncate'),(565,45,'col',8,'school_city','',0,0,0,0,1,'','','',0,'','top','truncate'),(566,45,'col',9,'school_province','',0,0,0,0,1,'','','',0,'','top','truncate'),(567,45,'col',10,'school_postal','',0,0,0,0,1,'','','',0,'','top','truncate'),(568,45,'col',11,'school_principal','',0,0,0,0,1,'','','',0,'','top','truncate'),(569,45,'col',12,'school_email','',0,0,0,0,1,'','','',0,'','top','truncate'),(570,45,'col',13,'school_sh','',0,0,0,0,1,'','','',0,'','top','truncate'),(571,45,'col',14,'school_shemail','',0,0,0,0,1,'','','',0,'','top','truncate'),(572,45,'col',15,'school_shphone','',0,0,0,0,1,'','','',0,'','top','truncate'),(573,45,'col',16,'school_accesscode','',0,0,0,0,1,'','','',0,'','top','truncate'),(574,45,'col',17,'school_registration_password','',0,0,0,0,1,'','','',0,'','top','truncate'),(575,45,'col',18,'school_project_limit','',0,0,0,0,1,'','','',0,'','top','truncate'),(576,45,'col',19,'school_project_limit_per','',0,0,0,0,1,'','','',0,'','top','truncate'),(577,46,'option',0,'type','csv',0,0,0,0,0,'','','',0,'','top','truncate'),(578,46,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(579,46,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(580,46,'option',3,'fit_columns','no',0,0,0,0,0,'','','',0,'','top','truncate'),(581,46,'option',4,'label_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(582,46,'option',5,'field_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(583,46,'option',6,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(584,46,'option',7,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(585,46,'option',8,'stock','fullpage',0,0,0,0,0,'','','',0,'','top','truncate'),(586,46,'col',0,'fair_name','',0,0,0,0,1,'','','',0,' ','top','truncate'),(587,46,'col',1,'fairstats_year','',0,0,0,0,1,'','','',0,' ','top','truncate'),(588,46,'col',2,'fairstats_start_date','',0,0,0,0,1,'','','',0,' ','top','truncate'),(589,46,'col',3,'fairstats_end_date','',0,0,0,0,1,'','','',0,' ','top','truncate'),(590,46,'col',4,'fairstats_budget','',0,0,0,0,1,'','','',0,' ','top','truncate'),(591,46,'col',5,'fairstats_address','',0,0,0,0,1,'','','',0,' ','top','truncate'),(592,46,'col',6,'fairstats_ysf_affiliation_complete','',0,0,0,0,1,'','','',0,' ','top','truncate'),(593,46,'col',7,'fairstats_charity','',0,0,0,0,1,'','','',0,' ','top','truncate'),(594,46,'col',8,'fairstats_scholarships','',0,0,0,0,1,'','','',0,' ','top','truncate'),(595,46,'col',9,'fairstats_male_1','',0,0,0,0,1,'','','',0,' ','top','truncate'),(596,46,'col',10,'fairstats_male_4','',0,0,0,0,1,'','','',0,' ','top','truncate'),(597,46,'col',11,'fairstats_male_7','',0,0,0,0,1,'','','',0,' ','top','truncate'),(598,46,'col',12,'fairstats_male_9','',0,0,0,0,1,'','','',0,' ','top','truncate'),(599,46,'col',13,'fairstats_male_11','',0,0,0,0,1,'','','',0,' ','top','truncate'),(600,46,'col',14,'fairstats_female_1','',0,0,0,0,1,'','','',0,' ','top','truncate'),(601,46,'col',15,'fairstats_female_4','',0,0,0,0,1,'','','',0,' ','top','truncate'),(602,46,'col',16,'fairstats_female_7','',0,0,0,0,1,'','','',0,' ','top','truncate'),(603,46,'col',17,'fairstats_female_9','',0,0,0,0,1,'','','',0,' ','top','truncate'),(604,46,'col',18,'fairstats_female_11','',0,0,0,0,1,'','','',0,' ','top','truncate'),(605,46,'col',19,'fairstats_projects_1','',0,0,0,0,1,'','','',0,' ','top','truncate'),(606,46,'col',20,'fairstats_projects_4','',0,0,0,0,1,'','','',0,' ','top','truncate'),(607,46,'col',21,'fairstats_projects_7','',0,0,0,0,1,'','','',0,' ','top','truncate'),(608,46,'col',22,'fairstats_projects_9','',0,0,0,0,1,'','','',0,' ','top','truncate'),(609,46,'col',23,'fairstats_projects_11','',0,0,0,0,1,'','','',0,' ','top','truncate'),(610,46,'col',24,'fairstats_firstnations','',0,0,0,0,1,'','','',0,' ','top','truncate'),(611,46,'col',25,'fairstats_students_atrisk','',0,0,0,0,1,'','','',0,' ','top','truncate'),(612,46,'col',26,'fairstats_schools_atrisk','',0,0,0,0,1,'','','',0,' ','top','truncate'),(613,46,'col',27,'fairstats_students_total','',0,0,0,0,1,'','','',0,' ','top','truncate'),(614,46,'col',28,'fairstats_schools_total','',0,0,0,0,1,'','','',0,' ','top','truncate'),(615,46,'col',29,'fairstats_schools_active','',0,0,0,0,1,'','','',0,' ','top','truncate'),(616,46,'col',30,'fairstats_students_public','',0,0,0,0,1,'','','',0,' ','top','truncate'),(617,46,'col',31,'fairstats_schools_public','',0,0,0,0,1,'','','',0,' ','top','truncate'),(618,46,'col',32,'fairstats_students_private','',0,0,0,0,1,'','','',0,' ','top','truncate'),(619,46,'col',33,'fairstats_schools_private','',0,0,0,0,1,'','','',0,' ','top','truncate'),(620,46,'col',34,'fairstats_schools_districts','',0,0,0,0,1,'','','',0,' ','top','truncate'),(621,46,'col',35,'fairstats_studentsvisiting','',0,0,0,0,1,'','','',0,' ','top','truncate'),(622,46,'col',36,'fairstats_publicvisiting','',0,0,0,0,1,'','','',0,' ','top','truncate'),(623,46,'col',37,'fairstats_teacherssupporting','',0,0,0,0,1,'','','',0,' ','top','truncate'),(624,46,'col',38,'fairstats_increasedinterest','',0,0,0,0,1,'','','',0,' ','top','truncate'),(625,46,'col',39,'fairstats_consideringcareer','',0,0,0,0,1,'','','',0,' ','top','truncate'),(626,46,'col',40,'fairstats_committee_members','',0,0,0,0,1,'','','',0,' ','top','truncate'),(627,46,'col',41,'fairstats_judges','',0,0,0,0,1,'','','',0,' ','top','truncate'),(628,46,'col',42,'fairstats_next_chair_name','',0,0,0,0,1,'','','',0,' ','top','truncate'),(629,46,'col',43,'fairstats_next_chair_email','',0,0,0,0,1,'','','',0,' ','top','truncate'),(630,46,'col',44,'fairstats_next_chair_hphone','',0,0,0,0,1,'','','',0,' ','top','truncate'),(631,46,'col',45,'fairstats_next_chair_bphone','',0,0,0,0,1,'','','',0,' ','top','truncate'),(632,46,'col',46,'fairstats_next_chair_fax','',0,0,0,0,1,'','','',0,' ','top','truncate'),(633,46,'col',47,'fairstats_delegate1','',0,0,0,0,1,'','','',0,' ','top','truncate'),(634,46,'col',48,'fairstats_delegate1_email','',0,0,0,0,1,'','','',0,' ','top','truncate'),(635,46,'col',49,'fairstats_delegate1_size','',0,0,0,0,1,'','','',0,' ','top','truncate'),(636,46,'col',50,'fairstats_delegate2','',0,0,0,0,1,'','','',0,' ','top','truncate'),(637,46,'col',51,'fairstats_delegate2_email','',0,0,0,0,1,'','','',0,' ','top','truncate'),(638,46,'col',52,'fairstats_delegate2_size','',0,0,0,0,1,'','','',0,' ','top','truncate'),(639,46,'col',53,'fairstats_delegate3','',0,0,0,0,1,'','','',0,' ','top','truncate'),(640,46,'col',54,'fairstats_delegate3_email','',0,0,0,0,1,'','','',0,' ','top','truncate'),(641,46,'col',55,'fairstats_delegate3_size','',0,0,0,0,1,'','','',0,' ','top','truncate'),(642,46,'col',56,'fairstats_delegate4','',0,0,0,0,1,'','','',0,' ','top','truncate'),(643,46,'col',57,'fairstats_delegate4_email','',0,0,0,0,1,'','','',0,' ','top','truncate'),(644,46,'col',58,'fairstats_delegate4_size','',0,0,0,0,1,'','','',0,' ','top','truncate'),(645,46,'sort',0,'fair_name','',0,0,0,0,1,'','','',0,' ','top','truncate'),(646,47,'option',0,'type','label',0,0,0,0,0,'','','',0,'','top','truncate'),(647,47,'option',1,'group_new_page','no',0,0,0,0,0,'','','',0,'','top','truncate'),(648,47,'option',2,'allow_multiline','no',0,0,0,0,0,'','','',0,'','top','truncate'),(649,47,'option',3,'fit_columns','no',0,0,0,0,0,'','','',0,'','top','truncate'),(650,47,'option',4,'label_box','yes',0,0,0,0,0,'','','',0,'','top','truncate'),(651,47,'option',5,'field_box','no',0,0,0,0,0,'','','',0,'','top','truncate'),(652,47,'option',6,'label_fairname','no',0,0,0,0,0,'','','',0,'','top','truncate'),(653,47,'option',7,'label_logo','no',0,0,0,0,0,'','','',0,'','top','truncate'),(654,47,'option',8,'stock','5163',0,0,0,0,0,'','','',0,'','top','truncate'),(655,47,'col',0,'namefl','',5,5,95,12,1,'','','',0,'left vcenter','top','truncate'),(656,47,'col',1,'address','',5,30,95,24,2,'','','',0,'left vcenter','top','truncate'),(657,47,'col',2,'city_prov','',5,60,95,12,1,'','','',0,'left vcenter','top','truncate'),(658,47,'col',3,'postal','',5,80,95,12,1,'','','',0,'left vcenter','top','truncate'),(659,47,'col',4,'user_filter','',99,99,1,1,1,'','','',0,'center vcenter','top','truncate');
/*!40000 ALTER TABLE `reports_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safety`
--

DROP TABLE IF EXISTS `safety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safety` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrations_id` int(10) unsigned NOT NULL DEFAULT '0',
  `safetyquestions_id` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` varchar(32) NOT NULL DEFAULT '',
  `year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safety`
--

LOCK TABLES `safety` WRITE;
/*!40000 ALTER TABLE `safety` DISABLE KEYS */;
/*!40000 ALTER TABLE `safety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safetyquestions`
--

DROP TABLE IF EXISTS `safetyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safetyquestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  `question` text NOT NULL,
  `type` enum('check','yesno') NOT NULL DEFAULT 'check',
  `required` enum('no','yes') NOT NULL DEFAULT 'yes',
  `ord` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safetyquestions`
--

LOCK TABLES `safetyquestions` WRITE;
/*!40000 ALTER TABLE `safetyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `safetyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school` varchar(64) NOT NULL DEFAULT '',
  `schoollang` char(2) NOT NULL DEFAULT '',
  `schoollevel` varchar(32) NOT NULL DEFAULT '',
  `board` varchar(64) NOT NULL DEFAULT '',
  `district` varchar(64) NOT NULL DEFAULT '',
  `phone` varchar(16) NOT NULL DEFAULT '',
  `fax` varchar(16) NOT NULL DEFAULT '',
  `address` varchar(64) NOT NULL DEFAULT '',
  `city` varchar(32) NOT NULL DEFAULT '',
  `province_code` char(2) NOT NULL DEFAULT '',
  `postalcode` varchar(7) NOT NULL DEFAULT '',
  `designate` enum('','public','independent','home') CHARACTER SET utf8 NOT NULL,
  `principal` varchar(64) NOT NULL DEFAULT '',
  `principal_uid` int(11) DEFAULT NULL,
  `sciencehead_uid` int(11) DEFAULT NULL,
  `schoolemail` varchar(128) NOT NULL DEFAULT '',
  `sciencehead` varchar(64) NOT NULL DEFAULT '',
  `scienceheademail` varchar(128) NOT NULL DEFAULT '',
  `scienceheadphone` varchar(32) NOT NULL DEFAULT '',
  `accesscode` varchar(32) NOT NULL DEFAULT '',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  `junior` tinyint(4) NOT NULL DEFAULT '0',
  `intermediate` tinyint(4) NOT NULL DEFAULT '0',
  `senior` tinyint(4) NOT NULL DEFAULT '0',
  `registration_password` varchar(32) NOT NULL DEFAULT '',
  `projectlimit` int(10) NOT NULL DEFAULT '0',
  `projectlimitper` enum('total','agecategory') NOT NULL DEFAULT 'total',
  `atrisk` enum('no','yes') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'Connaught School','en','Elementary Schools','Medicine Hat Public School Division','76',' (403) 526-2392','','601 - 1st Ave SW,Medicine Hat, AB T1A 4Y7','Medicine Hat','AB',' T1A 4L','public','',6,NULL,'','','','','',2018,NULL,0,0,0,'',0,'','no'),(2,'Crestwood School','en','Elementary Schools','Medicine Hat Public School Division','76',' (403) 527-2257','','2300 - 19th Avenue SE','Medicine Hat','AB',' T1A 3X','public','',7,NULL,'','','','','',2018,NULL,0,0,0,'',0,'','no'),(3,'Alexandra Middle School ','en','Middle Schools','Medicine Hat Public School Division','76',' (403) 527-8571','','477 6th Street SE','Medicine Hat','',' T1A 1H','public','',8,NULL,'','','','','',2018,NULL,0,0,0,'',0,'','no'),(4,'Monsignor McCoy High School','en','High School','Medicine Hat Catholic Board of Education ','39','403-527-8161','403-527-8209','202-8th Street NE','Medicine Hat','AB',' T1A 5R','independent','',9,10,'','','','','666',2018,NULL,0,0,0,'',0,'','no');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signaturepage`
--

DROP TABLE IF EXISTS `signaturepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signaturepage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `use` tinyint(4) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signaturepage`
--

LOCK TABLES `signaturepage` WRITE;
/*!40000 ALTER TABLE `signaturepage` DISABLE KEYS */;
INSERT INTO `signaturepage` VALUES (1,'exhibitordeclaration',1,'The following section is to be read and signed by the exhibitor(s).\r\n\r\nI/We certify that:\r\n - The preparation of this project is mainly my/our own work.\r\n - I/We have read the rules and regulations and agree to abide by them.\r\n - I/We agree agree that the decision of the judges will be final.'),(2,'parentdeclaration',1,'The following is to be read and signed by the exhibitor(s) parent(s)/guardian(s).\r\nAs a parent/guardian I certify to the best of my knowledge and believe the information contained in this application is correct, and the project is the work of the student.  I also understand that the material used in the project is the responsibility of the student and that neither the school, the teacher, nor the regional fair can be held responsible for loss, damage, or theft, however caused. I further understand that all exhibits entered must be left on display until the end of the Fair. If my son/daughter does not remove the exhibit at the end of the Fair, the fair organizers or the owner of the exhibition hall cannot be responsible for the disposal of the exhibit.\r\n\r\nIf my son/daughter is awarded the honour of having his/her exhibit chosen for presentation at the Canada-Wide Science Fair, I consent to having him/her journey to the Fair, and will not hold the Fair responsible for any accident or mishap to the student or the exhibit.'),(3,'teacherdeclaration',0,'The following section is to be read and signed by the teacher.\r\n\r\nI certify that:\r\n - The preparation of this project is mainly the student(s)\' own work.\r\n - The student(s) have read the rules and regulations and agree to abide by them.\r\n - I agree that the decision of the judges will be final.'),(4,'postamble',0,'Please send the signed signature form and any required payment to: \n\n[Insert Address Here]'),(5,'regfee',0,'');
/*!40000 ALTER TABLE `signaturepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `tollfree` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  `address` varchar(128) NOT NULL DEFAULT '',
  `address2` varchar(128) NOT NULL,
  `city` varchar(64) NOT NULL DEFAULT '',
  `province_code` char(2) NOT NULL DEFAULT '',
  `postalcode` varchar(8) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `donationpolicyurl` varchar(255) NOT NULL,
  `fundingselectiondate` date DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `waiveraccepted` enum('no','yes') NOT NULL DEFAULT 'no',
  `donortype` enum('organization','individual') NOT NULL DEFAULT 'organization',
  `proposalsubmissiondate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrations_id` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(64) NOT NULL DEFAULT '',
  `lastname` varchar(64) NOT NULL DEFAULT '',
  `pronunciation` varchar(64) NOT NULL DEFAULT '',
  `sex` enum('male','female') DEFAULT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(64) NOT NULL DEFAULT '',
  `province` varchar(32) NOT NULL DEFAULT '',
  `postalcode` varchar(8) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dateofbirth` date NOT NULL DEFAULT '0000-00-00',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `year` int(11) NOT NULL DEFAULT '0',
  `schools_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fairs_id` int(11) NOT NULL,
  `tshirt` varchar(32) NOT NULL DEFAULT 'medium',
  `medicalalert` varchar(255) NOT NULL DEFAULT '',
  `foodreq` varchar(255) NOT NULL DEFAULT '',
  `teachername` varchar(64) NOT NULL DEFAULT '',
  `teacheremail` varchar(128) NOT NULL DEFAULT '',
  `webfirst` enum('no','yes') NOT NULL DEFAULT 'yes',
  `weblast` enum('no','yes') NOT NULL DEFAULT 'yes',
  `webphoto` enum('no','yes') NOT NULL DEFAULT 'yes',
  `namecheck_complete` enum('no','yes') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `num` varchar(16) NOT NULL,
  `description` text NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `grade_min` int(11) NOT NULL DEFAULT '7',
  `grade_max` int(11) NOT NULL DEFAULT '12',
  `contact` tinytext NOT NULL,
  `location` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours_choice`
--

DROP TABLE IF EXISTS `tours_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tours_choice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `students_id` int(10) unsigned NOT NULL DEFAULT '0',
  `registrations_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tour_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours_choice`
--

LOCK TABLES `tours_choice` WRITE;
/*!40000 ALTER TABLE `tours_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tours_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `lang` char(2) NOT NULL DEFAULT '',
  `strmd5` varchar(32) NOT NULL DEFAULT '',
  `str` text NOT NULL,
  `val` text NOT NULL,
  `argsdesc` text,
  PRIMARY KEY (`strmd5`),
  UNIQUE KEY `lang` (`lang`,`strmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `types` set('student','judge','committee','volunteer','fair','sponsor','principal','teacher','parent','mentor','alumni') NOT NULL,
  `salutation` varchar(8) NOT NULL,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('male','female') DEFAULT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `passwordset` date DEFAULT NULL,
  `oldpassword` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL DEFAULT '',
  `year` int(11) NOT NULL,
  `phonehome` varchar(32) NOT NULL DEFAULT '',
  `phonework` varchar(32) NOT NULL DEFAULT '',
  `phonecell` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `organization` varchar(64) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL,
  `lang` varchar(2) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(64) NOT NULL DEFAULT '',
  `address2` varchar(64) NOT NULL DEFAULT '',
  `city` varchar(64) NOT NULL DEFAULT '',
  `province` varchar(32) NOT NULL DEFAULT '',
  `postalcode` varchar(8) NOT NULL DEFAULT '',
  `firstaid` enum('no','yes') NOT NULL DEFAULT 'no',
  `cpr` enum('no','yes') NOT NULL DEFAULT 'no',
  `deleted` enum('no','yes') NOT NULL DEFAULT 'no',
  `deleteddatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`year`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'fair','','','',NULL,'kvGbxRTM','5kyYcbBAmf4Y','0000-00-00','','',0,'','','','','','0000-00-00','','2009-10-22 12:56:09','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(2,2,'fair','','','',NULL,'k5HPLPGm','EUuqF2J5HbGD','0000-00-00','','',0,'','','','','','0000-00-00','','2009-10-22 12:56:09','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(3,3,'committee','','Superuser','Account',NULL,'daveerickson@shaw.ca','ChiefJudge001','2017-09-02','vvmwD9U6E6Vj','daveerickson@shaw.ca',0,'','','','','','0000-00-00','','2017-09-02 13:16:03','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(4,3,'judge,committee','','Superuser','Account','','daveerickson@shaw.ca','ChiefJudge001','2017-09-02','vvmwD9U6E6Vj','daveerickson@shaw.ca',2018,'403-488-9662','403-544-4048','403-594-3473','','DRDC','0000-00-00','en','2017-09-02 13:16:03','2017-11-21 19:23:09','1280 4 Ave','','Dunmore','AB','T1B 0J8','no','no','no',NULL),(5,5,'fair','','','',NULL,'seab.sciencefair@gmail.com','AMPfAtZccYnG','0000-00-00','','seab.sciencefair@gmail.com',2018,'','','','','','0000-00-00','','2017-09-02 14:31:19','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(6,6,'principal','','Mrs.','Deni Neigum',NULL,'*Mrs.Deni NeigumEqfqKXFZ','ez565tBGtn33','0000-00-00','','',2018,'','','','','','0000-00-00','','2017-09-03 12:45:27','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(7,7,'principal','','Mr.','Cody Edwards ',NULL,'*Mr.Cody Edwards 92Duy9JW','DHJ3s7r5nQu9','0000-00-00','','',2018,'','','','','','0000-00-00','','2017-09-03 12:48:00','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(8,8,'principal','','Ms.','Keri Gust',NULL,'*Ms.Keri GustZrPH4wwJ','Ryh6PdgFQ6Wm','0000-00-00','','',2018,'','','','','','0000-00-00','','2017-09-03 13:24:43','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(9,9,'principal','','Bauche,','Paul ',NULL,'*Bauche,Paul YUtQPnmb','Xkz69exhhBmB','0000-00-00','','Paul.Bauche@mhcbe.ab.ca',2018,'','','','','','0000-00-00','','2017-09-03 14:37:32','0000-00-00 00:00:00','','','','','','no','no','no',NULL),(10,10,'teacher','','Michelle','Christensen',NULL,'Michelle.Christensen@mhcbe.ab.ca','EB6c9DydweRL','0000-00-00','','Michelle.Christensen@mhcbe.ab.ca',2018,'','403-527-8161','','','','0000-00-00','','2017-09-03 14:37:32','0000-00-00 00:00:00','','','','','','no','no','no',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_alumni`
--

DROP TABLE IF EXISTS `users_alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_alumni` (
  `users_id` int(11) NOT NULL,
  `alumni_active` enum('no','yes') NOT NULL,
  `alumni_complete` enum('no','yes') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_alumni`
--

LOCK TABLES `users_alumni` WRITE;
/*!40000 ALTER TABLE `users_alumni` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_committee`
--

DROP TABLE IF EXISTS `users_committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_committee` (
  `users_id` int(11) NOT NULL,
  `committee_active` enum('no','yes') NOT NULL DEFAULT 'no',
  `committee_complete` enum('no','yes') NOT NULL DEFAULT 'no',
  `emailprivate` varchar(128) NOT NULL,
  `ord` int(11) NOT NULL,
  `displayemail` enum('no','yes') NOT NULL DEFAULT 'no',
  `access_admin` enum('no','yes') NOT NULL DEFAULT 'no',
  `access_config` enum('no','yes') NOT NULL DEFAULT 'no',
  `access_super` enum('no','yes') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_committee`
--

LOCK TABLES `users_committee` WRITE;
/*!40000 ALTER TABLE `users_committee` DISABLE KEYS */;
INSERT INTO `users_committee` VALUES (3,'yes','no','daveerickson@shaw.ca',0,'no','yes','yes','yes'),(4,'yes','no','daveerickson@shaw.ca',0,'no','yes','yes','yes');
/*!40000 ALTER TABLE `users_committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_fair`
--

DROP TABLE IF EXISTS `users_fair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_fair` (
  `users_id` int(11) NOT NULL DEFAULT '0',
  `fair_active` enum('no','yes') NOT NULL DEFAULT 'no',
  `fair_complete` enum('no','yes') NOT NULL DEFAULT 'no',
  `fairs_id` int(11) NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_fair`
--

LOCK TABLES `users_fair` WRITE;
/*!40000 ALTER TABLE `users_fair` DISABLE KEYS */;
INSERT INTO `users_fair` VALUES (1,'yes','no',1),(2,'yes','no',2),(5,'yes','no',0);
/*!40000 ALTER TABLE `users_fair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_judge`
--

DROP TABLE IF EXISTS `users_judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_judge` (
  `users_id` int(11) NOT NULL,
  `judge_active` enum('no','yes') NOT NULL DEFAULT 'no',
  `judge_complete` enum('no','yes') NOT NULL DEFAULT 'no',
  `years_school` tinyint(4) NOT NULL,
  `years_regional` tinyint(4) NOT NULL,
  `years_national` tinyint(4) NOT NULL,
  `willing_chair` enum('yes','no') NOT NULL DEFAULT 'no',
  `special_award_only` enum('yes','no') NOT NULL DEFAULT 'no',
  `cat_prefs` tinytext NOT NULL,
  `div_prefs` tinytext NOT NULL,
  `divsub_prefs` tinytext NOT NULL,
  `languages` tinytext NOT NULL,
  `highest_psd` tinytext NOT NULL,
  `expertise_other` tinytext NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_judge`
--

LOCK TABLES `users_judge` WRITE;
/*!40000 ALTER TABLE `users_judge` DISABLE KEYS */;
INSERT INTO `users_judge` VALUES (4,'yes','yes',4,0,0,'yes','no','a:3:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}','','','a:1:{i:0;s:2:\"en\";}','Master\'s Science',''),(0,'no','no',0,0,0,'no','no','','','','','','');
/*!40000 ALTER TABLE `users_judge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_mentor`
--

DROP TABLE IF EXISTS `users_mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_mentor` (
  `users_id` int(11) NOT NULL,
  `mentor_active` enum('no','yes') NOT NULL,
  `mentor_complete` enum('no','yes') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_mentor`
--

LOCK TABLES `users_mentor` WRITE;
/*!40000 ALTER TABLE `users_mentor` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_parent`
--

DROP TABLE IF EXISTS `users_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_parent` (
  `users_id` int(11) NOT NULL,
  `parent_active` enum('no','yes') NOT NULL,
  `parent_complete` enum('no','yes') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_parent`
--

LOCK TABLES `users_parent` WRITE;
/*!40000 ALTER TABLE `users_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_principal`
--

DROP TABLE IF EXISTS `users_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_principal` (
  `users_id` int(11) NOT NULL,
  `principal_active` enum('no','yes') NOT NULL,
  `principal_complete` enum('no','yes') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_principal`
--

LOCK TABLES `users_principal` WRITE;
/*!40000 ALTER TABLE `users_principal` DISABLE KEYS */;
INSERT INTO `users_principal` VALUES (6,'no','no'),(7,'no','no'),(8,'no','no'),(9,'no','no');
/*!40000 ALTER TABLE `users_principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_sponsor`
--

DROP TABLE IF EXISTS `users_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_sponsor` (
  `users_id` int(11) NOT NULL DEFAULT '0',
  `sponsors_id` int(11) NOT NULL DEFAULT '0',
  `sponsor_complete` enum('no','yes') NOT NULL DEFAULT 'no',
  `sponsor_active` enum('no','yes') NOT NULL DEFAULT 'no',
  `primary` enum('no','yes') NOT NULL DEFAULT 'no',
  `position` varchar(64) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_sponsor`
--

LOCK TABLES `users_sponsor` WRITE;
/*!40000 ALTER TABLE `users_sponsor` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teacher`
--

DROP TABLE IF EXISTS `users_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_teacher` (
  `users_id` int(11) NOT NULL,
  `teacher_active` enum('no','yes') NOT NULL,
  `teacher_complete` enum('no','yes') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teacher`
--

LOCK TABLES `users_teacher` WRITE;
/*!40000 ALTER TABLE `users_teacher` DISABLE KEYS */;
INSERT INTO `users_teacher` VALUES (10,'no','no');
/*!40000 ALTER TABLE `users_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_volunteer`
--

DROP TABLE IF EXISTS `users_volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_volunteer` (
  `users_id` int(11) NOT NULL,
  `volunteer_active` enum('no','yes') NOT NULL DEFAULT 'no',
  `volunteer_complete` enum('no','yes') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_volunteer`
--

LOCK TABLES `users_volunteer` WRITE;
/*!40000 ALTER TABLE `users_volunteer` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer_positions`
--

DROP TABLE IF EXISTS `volunteer_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volunteer_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `desc` text NOT NULL,
  `meet_place` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer_positions`
--

LOCK TABLES `volunteer_positions` WRITE;
/*!40000 ALTER TABLE `volunteer_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `volunteer_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer_positions_signup`
--

DROP TABLE IF EXISTS `volunteer_positions_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volunteer_positions_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `volunteer_positions_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer_positions_signup`
--

LOCK TABLES `volunteer_positions_signup` WRITE;
/*!40000 ALTER TABLE `volunteer_positions_signup` DISABLE KEYS */;
/*!40000 ALTER TABLE `volunteer_positions_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winners`
--

DROP TABLE IF EXISTS `winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `awards_prizes_id` int(10) unsigned NOT NULL DEFAULT '0',
  `projects_id` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  `fairs_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `awards_prizes_id` (`awards_prizes_id`,`projects_id`,`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winners`
--

LOCK TABLES `winners` WRITE;
/*!40000 ALTER TABLE `winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `winners` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-21 20:24:47
