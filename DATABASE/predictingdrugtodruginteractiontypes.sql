/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.52-log : Database - predictingdrugtodruginteractiontypes
*********************************************************************
Server version : 5.5.52-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `predictingdrugtodruginteractiontypes`;

USE `predictingdrugtodruginteractiontypes`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add client register_ model',7,'add_clientregister_model'),(20,'Can change client register_ model',7,'change_clientregister_model'),(21,'Can delete client register_ model',7,'delete_clientregister_model'),(22,'Can add client posts_ model',8,'add_clientposts_model'),(23,'Can change client posts_ model',8,'change_clientposts_model'),(24,'Can delete client posts_ model',8,'delete_clientposts_model'),(25,'Can add review_ model',9,'add_review_model'),(26,'Can change review_ model',9,'change_review_model'),(27,'Can delete review_ model',9,'delete_review_model');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'Remote_User','clientposts_model'),(7,'Remote_User','clientregister_model'),(9,'Remote_User','review_model'),(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'Remote_User','0001_initial','2024-06-04 07:09:44'),(2,'Remote_User','0002_clientposts_model','2024-06-04 07:09:45'),(3,'Remote_User','0003_clientposts_model_usefulcounts','2024-06-04 07:10:10'),(4,'Remote_User','0004_auto_20190429_1027','2024-06-04 07:10:11'),(5,'Remote_User','0005_clientposts_model_dislikes','2024-06-04 07:10:11'),(6,'Remote_User','0006_review_model','2024-06-04 07:10:11'),(7,'Remote_User','0007_clientposts_model_names','2024-06-04 07:10:35'),(8,'contenttypes','0001_initial','2024-06-04 07:10:35'),(9,'auth','0001_initial','2024-06-04 07:10:35'),(10,'admin','0001_initial','2024-06-04 07:10:35'),(11,'admin','0002_logentry_remove_auto_add','2024-06-04 07:10:35'),(12,'contenttypes','0002_remove_content_type_name','2024-06-04 07:10:35'),(13,'auth','0002_alter_permission_name_max_length','2024-06-04 07:10:36'),(14,'auth','0003_alter_user_email_max_length','2024-06-04 07:10:36'),(15,'auth','0004_alter_user_username_opts','2024-06-04 07:10:36'),(16,'auth','0005_alter_user_last_login_null','2024-06-04 07:10:36'),(17,'auth','0006_require_contenttypes_0002','2024-06-04 07:10:36'),(18,'auth','0007_alter_validators_add_error_messages','2024-06-04 07:10:36'),(19,'auth','0008_alter_user_username_max_length','2024-06-04 07:10:36'),(20,'sessions','0001_initial','2024-06-04 07:10:36');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo','YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=','2020-02-21 08:52:28'),('14z63ouq423azof04qzl2cl91ytthlfv','eyJ1c2VyaWQiOjF9:1oE6b8:3caV9rQf0v24gXfvozY2K6zz4lTjty52oqgRHzLhpyw','2022-08-03 10:06:30'),('1ejvkirpm7393inxp6uf1a508oikhj57','eyJ1c2VyaWQiOjV9:1oE9H0:QVd_yVIuOIdaeHkWo0CMd53O_s5B5euyq1e3LiWaVH8','2022-08-03 12:57:54'),('1xjz27rwgvs42tk5n2orhya2ldkf1g6t','eyJ1c2VyaWQiOjV9:1mxOMK:l85z54bTor61HOnj7pdZjPhbnbt7ikf5Nm258dN2DTc','2021-12-29 07:05:52'),('433r3935ayuofmn2dsemavaw9y2iucg2','MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=','2024-06-18 07:51:10'),('49qo7iki5uxczhyymi8ka7dnh6a2wva5','MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9','2019-05-08 09:19:45'),('4df7s82pddaszour6twx23d86058ppjq','ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=','2020-11-23 11:49:21'),('4io28d085qjfib7a5s2qbhc8qp4wfiva','eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk','2021-08-17 12:44:40'),('4x6b78w9rfcn34v650kd2j7oij6atr8p','Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=','2019-12-27 12:07:42'),('5qviifb1blstlo4lfe7r5kc1o5n9u0x8','eyJ1c2VyaWQiOjR9:1pIUNw:OT9DY2nv2yp_cjPRqHJJxVbHTeCKxyIBUJ4ENzqPVZk','2023-02-02 12:51:16'),('5y97pqoww8mp6uea9671pdkzka2qantt','eyJ1c2VyaWQiOjJ9:1oeFf3:esCWcmLwNAX25uOIzIxUsmI5nal6A8Q8Nk1MTI657xI','2022-10-14 13:02:37'),('6235pjzaab4rkdpf7z473pl7jcnaglfk','eyJ1c2VyaWQiOjF9:1oDk63:-6bic4A3ThrswjtGZVXTnXx2dpiFpK_FtFDDtpAsCEw','2022-08-02 10:04:55'),('6mizyqlykom1hx0e8a29bxksdry4vjmy','eyJ1c2VyaWQiOjR9:1mxNx3:w_8CPNB2edZIGdqb1qOMty5QV64ojOuzomD7t4d5bBY','2021-12-29 06:39:45'),('7ixdamflp4fqyjecn17bd7xfbsi7eowq','eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8','2021-08-20 12:58:37'),('8qmbdltsgrgnjn6iauluy132dqfoifjk','eyJ1c2VyaWQiOjF9:1qvG4M:Dctp42pR6bQFRrorH359DFiwtMFQ9SMDUsdP0L3zWkM','2023-11-07 11:59:34'),('9eqxsh2vnry12u2z9t4sl6amij2te9jt','eyJ1c2VyaWQiOjJ9:1oE8nk:cDDqaEZRW7Nf6SKwUt6tIvJEdEy2qvTQzIrG8zvVQgQ','2022-08-03 12:27:40'),('9vom7mmn5muyoiy8nytc9mxown1q1g2b','eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI','2021-08-24 12:55:19'),('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w','OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=','2019-05-09 11:00:08'),('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8','eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s','2021-08-18 13:36:19'),('ct13q5fpn94zvnij8ekixwzcky2imc5e','YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=','2019-05-14 11:44:10'),('e07j4duysh402dedtomm8icctvs9ljgy','MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9','2019-05-09 06:08:12'),('fuirwtsxsfxeojownr7tm1lymoapsath','eyJ1c2VyaWQiOjR9:1mb0uA:DWlnrgNFE2I8DeVkRQmZU1y_F_U4e0WgMqypgwqdUQ0','2021-10-28 13:36:18'),('gqoltjcusvbrdp6rnsgf7gfvbp231q4k','eyJ1c2VyaWQiOjJ9:1qvGM7:HIMrFo6KwYdS-MtxywHXlvwHXsaKCP-_X6O55pwx0Mo','2023-11-07 12:17:55'),('hbv74sg6w6e4wp89vq807vw0xhkh5s1h','MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=','2020-01-10 07:40:38'),('hhng09zqax1cp3cmlx5np2pbc4fcbtw1','eyJ1c2VyaWQiOjExfQ:1mauzr:WoxSa_ktUEv37bMIXB5udKc6qLwi2Xgdg61oSSMEPgo','2021-10-28 07:17:47'),('hhtt48je70l9nzw6dee4ocuxxm9blqej','NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=','2019-05-09 10:12:38'),('hj1muto4ffqaex29c3dz409vpv04say1','eyJ1c2VyaWQiOjIyfQ:1mavzk:CaUXoPZsk_YT0c367vmF36p-YAOYuclPwJBiS1ZGbtw','2021-10-28 08:21:44'),('hsb5814on7cph0wvy0yls67ca94ngcq3','eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA','2021-08-20 13:15:17'),('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c','eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4','2021-08-24 10:48:34'),('ic3hqykgws5iy6fz5ns6h6f921jbjzmt','eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY','2021-01-25 12:26:35'),('iz6wcyx97x1w6mpfc51g1tj72z2xghfn','eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY','2021-01-19 12:19:07'),('jiqsf7wcjkeflnrveo04dcvo9uzu7cj5','eyJ1c2VyaWQiOjIyfQ:1maymY:2zgrkbwuf5-70r47-IcbfFKsYD5fnN-ja0Ol9zN-93Y','2021-10-28 11:20:18'),('jpkxxiej4bdjin5tpdjm0xqhdooexz9o','eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI','2021-08-18 11:00:48'),('k7dyn4irgrj5wb4jucb4po527iw724dp','eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4','2021-01-29 07:49:40'),('nngl051zfznuaskxefsif0qb1hajqhot','eyJ1c2VyaWQiOjF9:1qvFSZ:e-IfZhtlQVzfZ0osrzRMcDksAbz6NZxjOoTj6gkJJ_k','2023-11-07 11:20:31'),('o7x1vhluuypdfmgv7fmv6nohgfn5ub55','NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9','2020-01-02 12:51:55'),('os18h41un322wchse9u209dxhtqorakj','eyJ1c2VyaWQiOjF9:1oeEjr:ydW4ycYYYvPnN--vYGJfZ4p8xyz-vWDM6xht_kvgKYc','2022-10-14 12:03:31'),('psdjoq42u7lfqwfodftic5x6z9ij34nk','eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM','2021-08-16 12:39:10'),('qnaolidvfx6bu9ra3uyqvkgva7bv92f1','OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=','2019-05-14 05:34:50'),('qorsfjf8ub7601ehr291ro3n4zzw5v3e','eyJ1c2VyaWQiOjEwfQ:1mFxUi:mMQom1btf6GfJPfFt2WuX_hLtfJbWwVROmb-AlhxjHw','2021-08-31 11:43:00'),('r9qk0kd407g591hugz99fhps8zofh69s','eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg','2021-08-20 11:13:38'),('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo','eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I','2021-01-26 12:46:09'),('svek3zssev4yp2ajplstd6qclfi5f91t','eyJ1c2VyaWQiOjN9:1pIT48:xw9_Qtt4Mlc7vmejuo3-nKyydpNOuwgdkvRv46JjO9I','2023-02-02 11:26:44'),('tejgl09oettnyva23kqdbns5nfz5g8ug','OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=','2019-05-09 11:19:24'),('u5icgvq3qt5nthdlv99go3r804ccghbo','MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9','2019-05-09 06:00:13'),('vfofeqf70uwf4jrhib6xsetde58lny3f','eyJ1c2VyaWQiOjIxfQ:1mFyou:QX_iGY3-VB7aToxcER8lL5h0PrRrYCaY5Hf2pQrqePo','2021-08-31 13:07:56'),('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic','eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M','2021-02-03 12:33:50'),('zak6z5x81xrpe7i51cmt7915z9k4u9dr','eyJ1c2VyaWQiOjJ9:1oE8wD:IeKP_1qUF_y8Q45zkh2iCL19BYap1vlukPPO2L08s3Q','2022-08-03 12:36:25'),('zega5sz46ivu1tb1o1mtmg3v2ysxog1w','eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY','2021-01-13 07:20:00');

/*Table structure for table `remote_user_clientposts_model` */

DROP TABLE IF EXISTS `remote_user_clientposts_model`;

CREATE TABLE `remote_user_clientposts_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tdesc` varchar(300) NOT NULL,
  `uname1` varchar(300) NOT NULL,
  `topics` varchar(300) NOT NULL,
  `sanalysis` varchar(300) NOT NULL,
  `senderstatus` varchar(300) NOT NULL,
  `ratings` int(11) NOT NULL,
  `userId_id` int(11) NOT NULL,
  `uname2` int(11) NOT NULL,
  `uses` varchar(100) NOT NULL,
  `tname` varchar(50) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Remote_User_clientpo_userId_id_12cefab2_fk_Remote_Us` (`userId_id`),
  CONSTRAINT `Remote_User_clientpo_userId_id_12cefab2_fk_Remote_Us` FOREIGN KEY (`userId_id`) REFERENCES `remote_user_clientregister_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remote_user_clientposts_model` */

/*Table structure for table `remote_user_clientregister_model` */

DROP TABLE IF EXISTS `remote_user_clientregister_model`;

CREATE TABLE `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phoneno` varchar(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `remote_user_clientregister_model` */

insert  into `remote_user_clientregister_model`(`id`,`username`,`email`,`password`,`phoneno`,`country`,`state`,`city`,`gender`,`address`) values (1,'sandeep','sandeep@gmail.com','sandeep','9888765654','india','telangana','warangal','Male','Prakash Nagar Hyderabad');

/*Table structure for table `remote_user_detection_accuracy` */

DROP TABLE IF EXISTS `remote_user_detection_accuracy`;

CREATE TABLE `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `remote_user_detection_accuracy` */

insert  into `remote_user_detection_accuracy`(`id`,`names`,`ratio`) values (13,'Deep Neural Network (DNN)','86.46647470176882'),(14,'SVM','83.54586589880707'),(15,'Logistic Regression','79.3089263677499'),(16,'Gradient Boosting Classifier','51.54257507198684');

/*Table structure for table `remote_user_detection_ratio` */

DROP TABLE IF EXISTS `remote_user_detection_ratio`;

CREATE TABLE `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `remote_user_detection_ratio` */

insert  into `remote_user_detection_ratio`(`id`,`names`,`ratio`) values (18,'No Safety','50.0'),(19,'Safety','50.0');

/*Table structure for table `remote_user_predict_safety` */

DROP TABLE IF EXISTS `remote_user_predict_safety`;

CREATE TABLE `remote_user_predict_safety` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fid` varchar(300) NOT NULL,
  `Drug1_Name` varchar(300) NOT NULL,
  `Drug1_Condition` varchar(300) NOT NULL,
  `Drug2_Name` varchar(300) NOT NULL,
  `Drug2_Condition` varchar(300) NOT NULL,
  `Patient_Gender` varchar(300) NOT NULL,
  `Patient_Age` varchar(300) NOT NULL,
  `Area` varchar(300) NOT NULL,
  `Drug1_To_Drug2_Response` varchar(300) NOT NULL,
  `Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `remote_user_predict_safety` */

insert  into `remote_user_predict_safety`(`id`,`Fid`,`Drug1_Name`,`Drug1_Condition`,`Drug2_Name`,`Drug2_Condition`,`Patient_Gender`,`Patient_Age`,`Area`,`Drug1_To_Drug2_Response`,`Prediction`) values (2,'10.42.0.42-104.254.66.16-49960-80-6','Cephalexin','Skin or Soft Tissue Infection','Belbuca','Chronic Pain','F','50','Jeevan Bhima Nagar, Bangalore','Bad','No Safety'),(3,'10.42.0.211-10.42.0.1-61631-53-17','Oxycodone','Chronic Pain','Focalin XR','ADHD','F','40','Indiranagar, Bangalore','Good','Safety'),(4,'151.101.1.140-10.42.0.151-80-58680-6','Adipex-P','Weight Loss','Amphetamine / dextroamphetamine','ADHD','M','60','Brigade Road, Bangalore','Bad','No Safety'),(5,'173.194.208.188-10.42.0.42-5228-36098-6','Nucynta','Pain','Zovia','Birth Control','M','40','Indiranagar, Bangalore','Good','Safety'),(6,'10.42.0.151-23.208.147.183-60966-443-6','Buprenorphine','Chronic Pain','Polyethylene glycol 3350 with electrolytes','Bowel Preparation','M','35','Indiranagar, Bangalore','Bad','No Safety'),(7,'10.42.0.42-123.125.115.164-53727-443-6','NuvaRing','Birth Control','Lexapro','Generalized Anxiety Disorde','M','40','Indiranagar, Bangalore','Good','Safety'),(8,'180.149.136.194-10.42.0.42-80-49179-6','Pregabalin','ibromyalgia','Ethinyl estradiol / norethindrone','Endometriosis','F','40','Indiranagar, Bangalore','Good','Safety');

/*Table structure for table `remote_user_review_model` */

DROP TABLE IF EXISTS `remote_user_review_model`;

CREATE TABLE `remote_user_review_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `ureview` varchar(100) NOT NULL,
  `tname` varchar(300) NOT NULL,
  `suggestion` varchar(300) NOT NULL,
  `dt` varchar(300) NOT NULL,
  `sanalysis` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remote_user_review_model` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
