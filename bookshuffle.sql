use db_bookshuffle;
-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_bookshuffle
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `assigned_roles`
--

DROP TABLE IF EXISTS `assigned_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_index` (`user_id`),
  KEY `assigned_roles_role_id_index` (`role_id`),
  CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_roles`
--

LOCK TABLES `assigned_roles` WRITE;
/*!40000 ALTER TABLE `assigned_roles` DISABLE KEYS */;
INSERT INTO `assigned_roles` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `assigned_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `comments_user_id_index` (`user_id`),
  KEY `comments_post_id_index` (`post_id`),
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Lorem ipsum dolor sit amet, mutat utinam nonumy ea mel.','2014-11-03 15:54:18','2014-11-03 15:54:18'),(2,1,1,'Lorem ipsum dolor sit amet, sale ceteros liberavisse duo ex, nam mazim maiestatis dissentiunt no. Iusto nominavi cu sed, has.','2014-11-03 15:54:18','2014-11-03 15:54:18'),(3,1,1,'Et consul eirmod feugait mel! Te vix iuvaret feugiat repudiandae. Solet dolore lobortis mei te, saepe habemus imperdiet ex vim. Consequat signiferumque per no, ne pri erant vocibus invidunt te.','2014-11-03 15:54:18','2014-11-03 15:54:18'),(4,1,2,'Lorem ipsum dolor sit amet, mutat utinam nonumy ea mel.','2014-11-03 15:54:18','2014-11-03 15:54:18'),(5,1,2,'Lorem ipsum dolor sit amet, sale ceteros liberavisse duo ex, nam mazim maiestatis dissentiunt no. Iusto nominavi cu sed, has.','2014-11-03 15:54:18','2014-11-03 15:54:18'),(6,1,3,'Lorem ipsum dolor sit amet, mutat utinam nonumy ea mel.','2014-11-03 15:54:18','2014-11-03 15:54:18');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2013_02_05_024934_confide_setup_users_table',1),('2013_02_05_043505_create_posts_table',1),('2013_02_05_044505_create_comments_table',1),('2013_02_08_031702_entrust_setup_tables',1),('2013_05_21_024934_entrust_permissions',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reminders`
--

DROP TABLE IF EXISTS `password_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reminders`
--

LOCK TABLES `password_reminders` WRITE;
/*!40000 ALTER TABLE `password_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_role_permission_id_role_id_unique` (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,6,2);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  UNIQUE KEY `permissions_display_name_unique` (`display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'manage_blogs','manage blogs'),(2,'manage_posts','manage posts'),(3,'manage_comments','manage comments'),(4,'manage_users','manage users'),(5,'manage_roles','manage roles'),(6,'post_comment','post comment');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `posts_user_id_index` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Lorem ipsum dolor sit amet','lorem-ipsum-dolor-sit-amet','In mea autem etiam menandri, quot elitr vim ei, eos semper disputationi id? Per facer appetere eu, duo et animal maiestatis. Omnesque invidunt mnesarchum ex mel, vis no case senserit dissentias. Te mei minimum singulis inimicus, ne labores accusam necessitatibus vel, vivendo nominavi ne sed. Posidonium scriptorem consequuntur cum ex? Posse fabulas iudicabit in nec, eos cu electram forensibus, pro ei commodo tractatos reformidans. Qui eu lorem augue alterum, eos in facilis pericula mediocritatem?\n\nEst hinc legimus oporteat in. Sit ei melius delicatissimi. Duo ex qualisque adolescens! Pri cu solum aeque. Aperiri docendi vituperatoribus has ea!\n\nSed ut ludus perfecto sensibus, no mea iisque facilisi. Choro tation melius et mea, ne vis nisl insolens. Vero autem scriptorem cu qui? Errem dolores no nam, mea tritani platonem id! At nec tantas consul, vis mundi petentium elaboraret ex, mel appareat maiestatis at.\n\nSed et eros concludaturque. Mel ne aperiam comprehensam! Ornatus delicatissimi eam ex, sea an quidam tritani placerat? Ad eius iriure consequat eam, mazim temporibus conclusionemque eum ex.\n\nTe amet sumo usu, ne autem impetus scripserit duo, ius ei mutat labore inciderint! Id nulla comprehensam his? Ut eam deleniti argumentum, eam appellantur definitionem ad. Pro et purto partem mucius!\n\nCu liber primis sed, esse evertitur vis ad. Ne graeco maiorum mea! In eos nostro docendi conclusionemque. Ne sit audire blandit tractatos? An nec dicam causae meliore, pro tamquam offendit efficiendi ut.\n\nTe dicta sadipscing nam, denique albucius conclusionemque ne usu, mea eu euripidis philosophia! Qui at vivendo efficiendi! Vim ex delenit blandit oportere, in iriure placerat cum. Te cum meis altera, ius ex quis veri.\n\nMutat propriae eu has, mel ne veri bonorum tincidunt. Per noluisse sensibus honestatis ut, stet singulis ea eam, his dicunt vivendum mediocrem ei. Ei usu mutat efficiantur, eum verear aperiam definitiones an! Simul dicam instructior ius ei. Cu ius facer doming cotidieque! Quot principes eu his, usu vero dicat an.\n\nEx dicta perpetua qui, pericula intellegam scripserit id vel. Id fabulas ornatus necessitatibus mel. Prompta dolorem appetere ea has. Vel ad expetendis instructior!\n\nTe his dolorem adversarium? Pri eu rebum viris, tation molestie id pri. Mel ei stet inermis dissentias. Sed ea dolorum detracto vituperata. Possit oportere similique cu nec, ridens animal quo ex?','meta_title1','meta_description1','meta_keywords1','2014-11-03 15:54:18','2014-11-03 15:54:18'),(2,1,'Vivendo suscipiantur vim te vix','vivendo-suscipiantur-vim-te-vix','In mea autem etiam menandri, quot elitr vim ei, eos semper disputationi id? Per facer appetere eu, duo et animal maiestatis. Omnesque invidunt mnesarchum ex mel, vis no case senserit dissentias. Te mei minimum singulis inimicus, ne labores accusam necessitatibus vel, vivendo nominavi ne sed. Posidonium scriptorem consequuntur cum ex? Posse fabulas iudicabit in nec, eos cu electram forensibus, pro ei commodo tractatos reformidans. Qui eu lorem augue alterum, eos in facilis pericula mediocritatem?\n\nEst hinc legimus oporteat in. Sit ei melius delicatissimi. Duo ex qualisque adolescens! Pri cu solum aeque. Aperiri docendi vituperatoribus has ea!\n\nSed ut ludus perfecto sensibus, no mea iisque facilisi. Choro tation melius et mea, ne vis nisl insolens. Vero autem scriptorem cu qui? Errem dolores no nam, mea tritani platonem id! At nec tantas consul, vis mundi petentium elaboraret ex, mel appareat maiestatis at.\n\nSed et eros concludaturque. Mel ne aperiam comprehensam! Ornatus delicatissimi eam ex, sea an quidam tritani placerat? Ad eius iriure consequat eam, mazim temporibus conclusionemque eum ex.\n\nTe amet sumo usu, ne autem impetus scripserit duo, ius ei mutat labore inciderint! Id nulla comprehensam his? Ut eam deleniti argumentum, eam appellantur definitionem ad. Pro et purto partem mucius!\n\nCu liber primis sed, esse evertitur vis ad. Ne graeco maiorum mea! In eos nostro docendi conclusionemque. Ne sit audire blandit tractatos? An nec dicam causae meliore, pro tamquam offendit efficiendi ut.\n\nTe dicta sadipscing nam, denique albucius conclusionemque ne usu, mea eu euripidis philosophia! Qui at vivendo efficiendi! Vim ex delenit blandit oportere, in iriure placerat cum. Te cum meis altera, ius ex quis veri.\n\nMutat propriae eu has, mel ne veri bonorum tincidunt. Per noluisse sensibus honestatis ut, stet singulis ea eam, his dicunt vivendum mediocrem ei. Ei usu mutat efficiantur, eum verear aperiam definitiones an! Simul dicam instructior ius ei. Cu ius facer doming cotidieque! Quot principes eu his, usu vero dicat an.\n\nEx dicta perpetua qui, pericula intellegam scripserit id vel. Id fabulas ornatus necessitatibus mel. Prompta dolorem appetere ea has. Vel ad expetendis instructior!\n\nTe his dolorem adversarium? Pri eu rebum viris, tation molestie id pri. Mel ei stet inermis dissentias. Sed ea dolorum detracto vituperata. Possit oportere similique cu nec, ridens animal quo ex?','meta_title2','meta_description2','meta_keywords2','2014-11-03 15:54:18','2014-11-03 15:54:18'),(3,1,'In iisque similique reprimique eum','in-iisque-similique-reprimique-eum','In mea autem etiam menandri, quot elitr vim ei, eos semper disputationi id? Per facer appetere eu, duo et animal maiestatis. Omnesque invidunt mnesarchum ex mel, vis no case senserit dissentias. Te mei minimum singulis inimicus, ne labores accusam necessitatibus vel, vivendo nominavi ne sed. Posidonium scriptorem consequuntur cum ex? Posse fabulas iudicabit in nec, eos cu electram forensibus, pro ei commodo tractatos reformidans. Qui eu lorem augue alterum, eos in facilis pericula mediocritatem?\n\nEst hinc legimus oporteat in. Sit ei melius delicatissimi. Duo ex qualisque adolescens! Pri cu solum aeque. Aperiri docendi vituperatoribus has ea!\n\nSed ut ludus perfecto sensibus, no mea iisque facilisi. Choro tation melius et mea, ne vis nisl insolens. Vero autem scriptorem cu qui? Errem dolores no nam, mea tritani platonem id! At nec tantas consul, vis mundi petentium elaboraret ex, mel appareat maiestatis at.\n\nSed et eros concludaturque. Mel ne aperiam comprehensam! Ornatus delicatissimi eam ex, sea an quidam tritani placerat? Ad eius iriure consequat eam, mazim temporibus conclusionemque eum ex.\n\nTe amet sumo usu, ne autem impetus scripserit duo, ius ei mutat labore inciderint! Id nulla comprehensam his? Ut eam deleniti argumentum, eam appellantur definitionem ad. Pro et purto partem mucius!\n\nCu liber primis sed, esse evertitur vis ad. Ne graeco maiorum mea! In eos nostro docendi conclusionemque. Ne sit audire blandit tractatos? An nec dicam causae meliore, pro tamquam offendit efficiendi ut.\n\nTe dicta sadipscing nam, denique albucius conclusionemque ne usu, mea eu euripidis philosophia! Qui at vivendo efficiendi! Vim ex delenit blandit oportere, in iriure placerat cum. Te cum meis altera, ius ex quis veri.\n\nMutat propriae eu has, mel ne veri bonorum tincidunt. Per noluisse sensibus honestatis ut, stet singulis ea eam, his dicunt vivendum mediocrem ei. Ei usu mutat efficiantur, eum verear aperiam definitiones an! Simul dicam instructior ius ei. Cu ius facer doming cotidieque! Quot principes eu his, usu vero dicat an.\n\nEx dicta perpetua qui, pericula intellegam scripserit id vel. Id fabulas ornatus necessitatibus mel. Prompta dolorem appetere ea has. Vel ad expetendis instructior!\n\nTe his dolorem adversarium? Pri eu rebum viris, tation molestie id pri. Mel ei stet inermis dissentias. Sed ea dolorum detracto vituperata. Possit oportere similique cu nec, ridens animal quo ex?','meta_title3','meta_description3','meta_keywords3','2014-11-03 15:54:18','2014-11-03 15:54:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rltb_book_previews`
--

DROP TABLE IF EXISTS `rltb_book_previews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rltb_book_previews` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) NOT NULL,
  `PreviewUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `fk_BookId_book_previews` (`BookId`),
  CONSTRAINT `fk_BookId_book_previews` FOREIGN KEY (`BookId`) REFERENCES `tb_book` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rltb_book_previews`
--

LOCK TABLES `rltb_book_previews` WRITE;
/*!40000 ALTER TABLE `rltb_book_previews` DISABLE KEYS */;
/*!40000 ALTER TABLE `rltb_book_previews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rltb_user_book`
--

DROP TABLE IF EXISTS `rltb_user_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rltb_user_book` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `fk_UserId_user_book` (`UserId`),
  KEY `fk_BookId_user_book` (`BookId`),
  CONSTRAINT `fk_BookId_user_book` FOREIGN KEY (`BookId`) REFERENCES `tb_book` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_UserId_user_book` FOREIGN KEY (`UserId`) REFERENCES `tb_user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rltb_user_book`
--

LOCK TABLES `rltb_user_book` WRITE;
/*!40000 ALTER TABLE `rltb_user_book` DISABLE KEYS */;
INSERT INTO `rltb_user_book` VALUES (206,2,597),(207,2,597),(208,2,597),(209,2,1),(210,2,1),(211,2,1),(212,2,2),(213,2,605);
/*!40000 ALTER TABLE `rltb_user_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2014-11-03 15:54:18','2014-11-03 15:54:18'),(2,'comment','2014-11-03 15:54:18','2014-11-03 15:54:18');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_book`
--

DROP TABLE IF EXISTS `tb_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_book` (
  `BookId` int(11) NOT NULL AUTO_INCREMENT,
  `BookTitle` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `PublisherName` varchar(45) NOT NULL,
  `GenreName` varchar(45) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `ItemCaption` longtext,
  `Contents` longtext,
  `CommentScore` double DEFAULT NULL,
  `ItemUrl` varchar(255) NOT NULL,
  `ImgUrl` varchar(255) DEFAULT NULL,
  `PreviewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`BookId`),
  UNIQUE KEY `BookId_UNIQUE` (`BookId`)
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_book`
--

LOCK TABLES `tb_book` WRITE;
/*!40000 ALTER TABLE `tb_book` DISABLE KEYS */;
INSERT INTO `tb_book` VALUES (1,'HTML＆CSS標準デザイン講座','草野あけみ','翔泳社','HTML,インターネット・WEBデザイン,電気工学,工学','9784798129679','ＨＴＭＬ＆ＣＳＳの基本文法からスタートして、現場のワークフローに沿ったサイト制作までを詳しく解説。プロが教える「実習」＋「講義」の全３０レッスン。','',4.6,'http://books.rakuten.co.jp/rb/12241104/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/9679/9784798129679.jpg?_ex=64x64',6),(2,'現場でかならず使われているCSSデザインのメソッド','北川貴清/窪木博士','エムディエヌコーポレーション','電気工学,工学','9784844363682','３テーマ別に、実際のウェブ制作でよく使用される表現に絞り込んで、スタイルシートのデザインアイデアを多数紹介。現在主流となっているデザインや技術、逆に主流でないデザインや技術といったものを明記。現在の実際のサイト制作でよく使われていて、なおかつ今風のサイトデザインにすることができるＣＳＳのアイデアブック。','',5,'http://books.rakuten.co.jp/rb/12480893/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3682/9784844363682.jpg?_ex=64x64',6),(595,'プログラミングコンテストチャレンジブック第2版','秋葉拓哉/岩田陽一','マイナビ','その他','9784839941062','プログラミングコンテストの問題を通してアルゴリズムのしくみや考え方を楽しく習得。世界トップレベルの著者たちがコンテストで得た知識やノウハウを難易度別にまとめました。現役プログラマだけでなくプログラマを目指している方にもぜひ読んでいたただきたい１冊。','None',4,'http://books.rakuten.co.jp/rb/11531089/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1062/9784839941062.jpg?_ex=64x64',5),(596,'現場で通用する力を身につけるiPhoneアプリ開発の教科書','森巧尚','マイナビ','運輸・交通・通信','9784839948290','Ｘｃｏｄｅ５によるｉＯＳ７対応アプリの作り方のコツとスキルを基本からしっかりマスター。サンプル５２個＋Ｔｉｐｓ多数紹介！','None',3.4,'http://books.rakuten.co.jp/rb/12649121/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/8290/9784839948290.jpg?_ex=64x64',18),(597,'現場で通用する力を身につけるNode．jsの教科書','掌田津耶乃','マイナビ','その他','9784839950699','','None',2.5,'http://books.rakuten.co.jp/rb/12712929/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0699/9784839950699.jpg?_ex=64x64',17),(598,'世界で闘うプロダクトマネジャーになるための本','ゲイル・ラークマン・マクダウェル/ジャッキー・バヴァロ','マイナビ','その他','9784839951771','ＩＴ系トップ企業のプロダクトマネジメント職に就く方法を詳しく解説。プロダクトマネジャー（ＰＭ）職に就くために必要な経験とその活かし方、面接対策をマスター。見積り・行動・ケース・技術に関する質問とその答え方。自分の「売り込み方」を取り上げます。','None',3.1,'http://books.rakuten.co.jp/rb/12883045/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1771/9784839951771.jpg?_ex=64x64',15),(599,'やさしくはじめるiPhoneアプリ開発の学校','森巧尚','マイナビ','運輸・交通・通信','9784839951979','簡単なゲームアプリを作りながら、しっかり学ぼう！プログラミングははじめて、という人でも安心。サンプルアプリを作りながら、「先生」に教わっている感覚でしっかり楽しく学習できます。サンプルコードがダウンロードできます。','None',3,'http://books.rakuten.co.jp/rb/12852911/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1979/9784839951979.jpg?_ex=64x64',17),(600,'SwiftではじめるiPhone（アイフォーン）アプリ開発の教科書','森巧尚','マイナビ','運輸・交通・通信','9784839953539','新しいプログラム言語Ｓｗｉｆｔで、ｉＰｈｏｎｅアプリ開発をはじめよう！「ｉＰｈｏｎｅアプリの作り方」＋「Ｘｃｏｄｅの使い方」＋「Ｓｗｉｆｔ言語によるプログラミング」がまとめて習得できる、本格派入門書！','None',3.7,'http://books.rakuten.co.jp/rb/12970552/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3539/9784839953539.jpg?_ex=64x64',19),(601,'スッキリわかるJava入門','中山清喬/国本大悟','インプレスジャパン','Java','9784844330868','','None',4.75,'http://books.rakuten.co.jp/rb/11371400/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0868/9784844330868.jpg?_ex=64x64',7),(602,'スッキリわかるJava入門（実践編）','中山清喬','インプレスジャパン','Java','9784844332763','各種ＡＰＩからツール、パターン、アジャイルまで。テスト・デバッグの手法や、チームでの開発に必要なツールの使い方などがやさしく学べる。','None',4,'http://books.rakuten.co.jp/rb/11887842/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2763/9784844332763.jpg?_ex=64x64',6),(603,'Web制作者のためのSublime　Textの教科書','上野正大/杉本淳','インプレスジャパン','インターネットセキュリティ','9784844335672','劇的にコーディング作業がはかどる！基本設定から特撰パッケージまで、この一冊で完全網羅。便利な対訳付きメニュー一覧、使いやすくするための環境設定のほか、筆者が実際にインストールしているパッケージを８０本解説！バージョン３＆２対応。','None',4.8,'http://books.rakuten.co.jp/rb/12693973/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5672/9784844335672.jpg?_ex=64x64',4),(604,'Web制作者のためのCSS設計の教科書','谷拓樹','インプレス','電気工学','9784844336358','予測しやすい、保守しやすい、最利用しやすい、拡張しやすいーコンポーネントやＣＳＳプリプロセッサを意識した設計・管理の実践など、「ちゃんとＣＳＳを書く」ためのプロの考え方を徹底解説！','None',4.3,'http://books.rakuten.co.jp/rb/12845305/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6358/9784844336358.jpg?_ex=64x64',4),(605,'現場のプロが教えるWeb制作の最新常識','井村圭介/久保知己','エムディエヌコーポレーション','電気工学','9784844363989','ＨＴＭＬ５・ＣＳＳ３・マルチデバイス時代におけるＷｅｂデザインの手法と技術。いま、仕事の現場をにぎわせている新しい手法、ツール、トレンドをまとめて解説！！','None',4,'http://books.rakuten.co.jp/rb/12625491/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3989/9784844363989.jpg?_ex=64x64',7),(606,'HTML5完全読本','','エムディエヌコーポレーション','電気工学','9784844364016','','None',5,'http://books.rakuten.co.jp/rb/12658626/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4016/9784844364016.jpg?_ex=64x64',7),(607,'小学生・中学生でもできるiPhoneアプリ開発','泉直樹/清水豊','エムディエヌコーポレーション','プログラミング入門','9784844364306','','None',4,'http://books.rakuten.co.jp/rb/12829995/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4306/9784844364306.jpg?_ex=64x64',6),(608,'たのしいSwiftプログラミング','木下誠','ビー・エヌ・エヌ新社','その他','9784861009495','「自分でもアプリを作ってみたい！」と思っているプログラミング未経験者に向けて、Ａｐｐｌｅの新しいプログラミング言語「Ｓｗｉｆｔ」を使ったｉＰｈｏｎｅアプリ開発の最初の第一歩を、Ｍａｃ／ｉＯＳ開発の第一人者が、わかりやすく、たのしく、語りかけながら解説。','None',3.7,'http://books.rakuten.co.jp/rb/12986117/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/9495/9784861009495.jpg?_ex=64x64',5),(609,'おとなの入門書簡単！タブレットfor　Android','','インターナショナル・ラグジュアリー・メデ','その他','9784865091632','','None',5,'http://books.rakuten.co.jp/rb/12854763/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1632/9784865091632.jpg?_ex=64x64',6),(610,'iPhone6かんたんパーフェクトガイド','','インターナショナル・ラグジュアリー・メデ','その他','9784865092066','','None',4.5,'http://books.rakuten.co.jp/rb/12950435/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2066/9784865092066.jpg?_ex=64x64',6),(611,'リーダブルコード','ダスティン・ボズウェル/トレバー・フォシェ','オライリー・ジャパン','その他','9784873115658','コードは理解しやすくなければならない。本書はこの原則を日々のコーディングの様々な場面に当てはめる方法を紹介する。名前の付け方、コメントの書き方など表面上の改善について。コードを動かすための制御フロー、論理式、変数などループとロジックについて。またコードを再構成するための方法。さらにテストの書き方などについて、楽しいイラストと共に説明する。日本語版ではＲｕｂｙやｇｒｏｏｎｇａのコミッタとしても著名な須藤功平氏による解説を収録。','None',5,'http://books.rakuten.co.jp/rb/11753651/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5658/9784873115658.jpg?_ex=64x64',8),(612,'Nodeクックブック','デビッド・マーク・クレメンツ/和田祐一郎','オライリー・ジャパン','その他','9784873116068','本書は、Ｎｏｄｅ．ｊｓを使っての簡単なＷｅｂサーバの構築にはじまり、Ｗｅｂアプリケーションやコマンドラインアプリケーションの構築、そして自作Ｎｏｄｅモジュールの開発までをスムーズに学習できるように構成しています。ＭｙＳＱＬやＭｏｎｇｏＤＢ、ＣｏｕｃｈＤＢ、Ｒｅｄｉｓといった各種データベースとのインタフェイスや、ＷｅｂＳｏｃｋｅｔの組み込み方、ＳＭＴＰなどのプロトコルとのインタフェイスといった基本的な事項を学びます。さらにデータストリームの処理方法やセキュリティを考慮した実装、そして開発したアプリケーションを本番環境で動作させるまでのさまざまなレシピを掲載しています。','None',4,'http://books.rakuten.co.jp/rb/12221765/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6068/9784873116068.jpg?_ex=64x64',7),(613,'Lean　UX','ジェフ・ゴーセルフ/ジョシュ・セイデン','オライリー・ジャパン','その他','9784873116617','本書はリーンスタートアップの手法をＵＸ（ユーザエクスペリエンス）に応用させたものです。構築・計測・学習ループをＵＸデザインに応用することによって、最適なデザインに最短で到達する方法を解説します。開発者やプロダクトマネージャ、マーケティング担当者などデザイナーではない人と透明性のあるコラボレーションが可能になり、部門や領域横断的なチームでも大きな効果を発揮します。エクスペリエンスのデザインに重点を置くことで、プロジェクトの効率化を実現する本書は、デザイナーはもちろん、その他ＵＸに関わるすべての人に必携の一冊です。２０１３Ｊｏｌｔ　Ａｗａｒｄｓ　Ｔｈｅ　Ｂｅｓｔ　Ｂｏｏｋｓ受賞。','None',3.7,'http://books.rakuten.co.jp/rb/12644871/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6617/9784873116617.jpg?_ex=64x64',12),(614,'実践Android　Developer　Tools','マイク・ウルフソン/長尾高弘','オライリー・ジャパン','運輸・交通・通信','9784873116709','本書は、Ａｎｄｒｏｉｄアプリケーションの開発に欠かせないＡｎｄｒｏｉｄ　Ｄｅｖｅｌｏｐｅｒ　Ｔｏｏｌｓ（ＡＤＴ）とその関連ツールについて、基礎から実践的な開発テクニックまでを解説しています。Ａｎｄｒｏｉｄの開発ツールであるＡＤＴの効果的な使い方を学ぶことで、開発プロセスが楽になり、コードの品質が上がり、その結果、より磨かれた堅牢な製品を生み出せるようになります。また、Ａｎｄｒｏｉｄ　ＳｔｕｄｉｏやＧｒａｄｌｅについても章を設けて解説しています。Ａｎｄｒｏｉｄ開発者必携の書籍です。','None',3.8,'http://books.rakuten.co.jp/rb/12752838/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6709/9784873116709.jpg?_ex=64x64',21),(615,'シングルページWebアプリケーション','マイケル・Ｓ．ミコウスキー/ジョシュ・Ｃ．ポウエル','オライリー・ジャパン','電気工学','9784873116730','クライアントでＪａｖａＳｃｒｉｐｔを使ったＳＰＡを採用するだけでなく、ＷｅｂサーバにＮｏｄｅ．ｊｓ、データベースにＭｏｎｇｏＤＢを使うことで、フロントエンドからバックエンドまでエンドツーエンドのＪａｖａＳｃｒｉｐｔ　ＳＰＡの仕組みと開発方法について詳しく解説。','None',5,'http://books.rakuten.co.jp/rb/12790590/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6730/9784873116730.jpg?_ex=64x64',24),(616,'Python文法詳解','石本敦夫','オライリー・ジャパン','その他','9784873116884','最新のＰｙｔｈｏｎを深く理解し、使いこなすために必要な基礎を伝授！プログラミング言語としてのＰｙｔｈｏｎの文法や、組み込みのオブジェクトに焦点を絞って解説。入門書やチュートリアルではあまり触られない、Ｐｙｔｈｏｎの内部や仕組みに関するトピックも盛り込んだ。','None',3.9,'http://books.rakuten.co.jp/rb/12937517/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6884/9784873116884.jpg?_ex=64x64',24),(617,'モダンWeb','ピーター・ガストン/牧野聡','オライリー・ジャパン','電気工学','9784873116921','Ｗｅｂの最新技術動向を鋭く切り取り、わかりやすく解説したのが本書です。近年脚光を浴びているレスポンシブＷｅｂのためのＣＳＳをはじめ、位置情報やバッテリーの状態を取得するためのＡＰＩ、プラグインに頼らないマルチメディア再生などを紹介します。さらに、近い将来に普及するであろう注目のＷｅｂコンポーネント技術についてもいち早く解説します。','None',5,'http://books.rakuten.co.jp/rb/12928944/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6921/9784873116921.jpg?_ex=64x64',15),(618,'アンダースタンディングコンピュテーション','トム・スチュアート/笹田耕一','オライリー・ジャパン','その他','9784873116976','計算理論をＲｕｂｙでわかりやすく紹介！難しい数学の知識を利用せず、Ｒｕｂｙを使って実際にプログラムを作りながら解説。まつもとゆきひろ氏による「日本語版まえがき」を収録。','None',3.2,'http://books.rakuten.co.jp/rb/12937520/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6976/9784873116976.jpg?_ex=64x64',21),(619,'実践機械学習システム','ウィリ・リチャート/ルイス・ペドロ・コエーリョ','オライリー・ジャパン','その他','9784873116983','本書は、実際に手を動かしながら機械学習システムを作成し、機械学習のエッセンスを身につけることを目的とした機械学習システムの実践的な解説書です。「データといかに向き合うか」という視点から、生データを通してパターンを見つける方法を解説していきます。Ｐｙｔｈｏｎと機械学習の基本、ライブラリの使い方に続いて、具体的な例を通して、データセット、モデル化、レコメンドとその改良、音声や画像の処理といった、より重要な問題について解説。また、オープンソースのツールやライブラリを使いながら、テキストや画像、音声に対して機械学習の手法をどのように適用するかを学び、さらに機械学習技術について、評価の方法や、それぞれを比較して最適なものを選択する方法について学びます。','None',3.3,'http://books.rakuten.co.jp/rb/12987916/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6983/9784873116983.jpg?_ex=64x64',24),(620,'データサイエンス講義','レイチェル・シャット/キャシー・オニール','オライリー・ジャパン','数学','9784873117010','本書では、データサイエンスを行う上で、どのようなプロセスが必要か、データサイエンティストとしてはどのようなスキルセットが必要で、どのような思考方法を選択する必要があるのかを実例を多数示しながら紹介します。Ｇｏｏｇｌｅ、Ｍｉｃｒｏｓｏｆｔ、Ｆａｃｅｂｏｏｋをはじめとした有名企業で使われているアルゴリズムや分析手法の紹介など、興味深い話題や事例も豊富に収録しています。内容の幅が広く、データサイエンティストの参考になるトピックが満載の一冊です。','None',3.1,'http://books.rakuten.co.jp/rb/12987918/','http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7010/9784873117010.jpg?_ex=64x64',21);
/*!40000 ALTER TABLE `tb_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'user','user'),(2,'user','user');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@example.org','$2y$10$IqGtt3Ps3C9mwGf0GlZyUOEns0jSMH3k6dIdrvTd3rwEtmCwwrTgS','71ded7c34efd3df03b9083a3818d3d0b','WFgSjYa7kSZnXoXmBA9oKXoxUQkibSmqXQ0EY34aWZACYjBr1YnRIWoYiEje',1,'2014-11-03 15:54:17','2014-11-04 12:02:19'),(2,'user','user@example.org','$2y$10$roJNLpVY0LFVdS8DuiW/hu8W78l7PFDbGVeJubP0zbxAje3u5HzAm','5147450fdd2d6b394f9e195cfe912753','apfKmEmXyzo9FRY3GY3vATSrZ4NjaIYGf5WC1Px09wqB1HbwkvzKjAWmrPN0',1,'2014-11-03 15:54:17','2014-11-05 00:33:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-07 10:12:16
