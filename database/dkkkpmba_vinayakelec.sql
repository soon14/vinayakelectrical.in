DROP TABLE oc_accubackup;

CREATE TABLE `oc_accubackup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `size` varchar(128) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE oc_address;

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO oc_address VALUES("2","3","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","99","1493","[]");
INSERT INTO oc_address VALUES("12","15","test","test","","test","","test","111111","99","1485","");
INSERT INTO oc_address VALUES("13","16","sss","sss","","sddsd","","ahemdabad","","99","1485","");
INSERT INTO oc_address VALUES("11","13","sss","sss","","sddsd","","ahemdabad","","99","1485","");
INSERT INTO oc_address VALUES("14","17","abc","xyz","xyz company","#1234","j p nagar","bangalore","560078","99","1489","");
INSERT INTO oc_address VALUES("15","18","test","test","test","test","test","test","123456","99","1503","");
INSERT INTO oc_address VALUES("16","19","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","99","1493","");
INSERT INTO oc_address VALUES("17","20","sahil","kumar","","145","145","noida","201301","99","1505","");
INSERT INTO oc_address VALUES("18","21","dfghj","ghnjm,.","ZXCFGHJK","CVBNM,","FVGBNM,","MUMBAI","123456","99","1493","");
INSERT INTO oc_address VALUES("19","22","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","99","1493","");
INSERT INTO oc_address VALUES("20","23","Vishwas","Panke","","Manish Nagar","","Nagpur","","99","1493","");
INSERT INTO oc_address VALUES("21","24","test","test","test","test","test","mumbai","","99","1493","");
INSERT INTO oc_address VALUES("22","25","a","b","","sddsd","","ahemdabad","","99","1479","");
INSERT INTO oc_address VALUES("23","26","abhijit","shinde","","At- Kacharewadi Tal-Mangalwedha","Dist-Solapur","Mangalwedha","413305","99","1493","");
INSERT INTO oc_address VALUES("24","27","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","99","1475","");
INSERT INTO oc_address VALUES("25","28","Paul","M","","Rajajinagar","1st cross","bangalore","","99","1489","");



DROP TABLE oc_api;

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_api VALUES("1","Default","ChRNn1yEcP4STYmSzUhwgshhyVS9Rpc22gup9MGHJmaQWCcMB1n4zBPeChSrgwyTPA4d3dNwb7PnT5Kt6u1l0Jbn8VAqy4mHfdHEYsGVmKtE1n5SWJwn3a9rArLQpIvq3wlfZmL4wHMBzOxGR8qR0SZklRSRnQ8j16mZLu5Hr81yP8CP0PdlN3jloybSfQSvtXesE7VKXL4Xw8wqJuli9xf9sazYnXskcU6POUKjavBUqKvxcmtjX7F6S4OA8sDp","1","2018-01-14 07:33:11","2018-01-14 07:33:11");



DROP TABLE oc_api_ip;

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

INSERT INTO oc_api_ip VALUES("1","1","49.35.88.122");
INSERT INTO oc_api_ip VALUES("2","1","49.35.70.115");
INSERT INTO oc_api_ip VALUES("3","1","49.35.95.137");
INSERT INTO oc_api_ip VALUES("4","1","64.233.173.58");
INSERT INTO oc_api_ip VALUES("5","1","64.233.173.54");
INSERT INTO oc_api_ip VALUES("6","1","64.233.173.56");
INSERT INTO oc_api_ip VALUES("7","1","49.35.119.251");
INSERT INTO oc_api_ip VALUES("8","1","49.35.20.164");
INSERT INTO oc_api_ip VALUES("9","1","49.35.17.244");
INSERT INTO oc_api_ip VALUES("10","1","49.35.12.38");
INSERT INTO oc_api_ip VALUES("11","1","49.35.2.54");
INSERT INTO oc_api_ip VALUES("12","1","49.35.37.167");
INSERT INTO oc_api_ip VALUES("13","1","64.233.173.136");
INSERT INTO oc_api_ip VALUES("14","1","64.233.173.135");
INSERT INTO oc_api_ip VALUES("15","1","49.35.105.143");
INSERT INTO oc_api_ip VALUES("16","1","49.35.11.132");
INSERT INTO oc_api_ip VALUES("17","1","183.87.237.16");
INSERT INTO oc_api_ip VALUES("18","1","49.35.110.187");
INSERT INTO oc_api_ip VALUES("19","1","183.87.237.4");
INSERT INTO oc_api_ip VALUES("20","1","64.233.173.137");
INSERT INTO oc_api_ip VALUES("21","1","66.249.82.221");
INSERT INTO oc_api_ip VALUES("22","1","66.249.82.220");
INSERT INTO oc_api_ip VALUES("23","1","66.249.82.219");
INSERT INTO oc_api_ip VALUES("24","1","115.110.144.225");
INSERT INTO oc_api_ip VALUES("25","1","183.87.237.28");
INSERT INTO oc_api_ip VALUES("26","1","49.35.72.195");
INSERT INTO oc_api_ip VALUES("27","1","49.35.89.234");
INSERT INTO oc_api_ip VALUES("28","1","49.35.80.40");
INSERT INTO oc_api_ip VALUES("29","1","49.35.224.98");
INSERT INTO oc_api_ip VALUES("30","1","49.35.195.215");
INSERT INTO oc_api_ip VALUES("31","1","49.35.244.157");
INSERT INTO oc_api_ip VALUES("32","1","49.35.209.166");
INSERT INTO oc_api_ip VALUES("33","1","49.35.237.127");
INSERT INTO oc_api_ip VALUES("34","1","49.35.213.179");
INSERT INTO oc_api_ip VALUES("35","1","49.35.217.240");
INSERT INTO oc_api_ip VALUES("36","1","49.35.246.180");
INSERT INTO oc_api_ip VALUES("37","1","49.35.242.41");
INSERT INTO oc_api_ip VALUES("38","1","49.35.217.180");
INSERT INTO oc_api_ip VALUES("39","1","49.35.217.210");
INSERT INTO oc_api_ip VALUES("40","1","49.44.87.106");
INSERT INTO oc_api_ip VALUES("41","1","49.35.241.19");
INSERT INTO oc_api_ip VALUES("42","1","43.239.215.235");
INSERT INTO oc_api_ip VALUES("43","1","183.87.237.44");
INSERT INTO oc_api_ip VALUES("44","1","49.35.214.190");
INSERT INTO oc_api_ip VALUES("45","1","183.87.237.8");
INSERT INTO oc_api_ip VALUES("46","1","165.225.106.104");
INSERT INTO oc_api_ip VALUES("47","1","106.193.162.149");
INSERT INTO oc_api_ip VALUES("48","1","183.87.237.10");
INSERT INTO oc_api_ip VALUES("49","1","106.51.77.33");
INSERT INTO oc_api_ip VALUES("50","1","183.87.237.54");
INSERT INTO oc_api_ip VALUES("51","1","157.33.244.66");
INSERT INTO oc_api_ip VALUES("52","1","64.233.173.35");
INSERT INTO oc_api_ip VALUES("53","1","64.233.173.39");
INSERT INTO oc_api_ip VALUES("54","1","64.233.173.41");
INSERT INTO oc_api_ip VALUES("55","1","64.233.173.63");
INSERT INTO oc_api_ip VALUES("56","1","183.87.237.9");
INSERT INTO oc_api_ip VALUES("57","1","183.87.237.48");
INSERT INTO oc_api_ip VALUES("58","1","43.242.176.179");
INSERT INTO oc_api_ip VALUES("59","1","183.87.237.47");
INSERT INTO oc_api_ip VALUES("60","1","188.50.133.191");



DROP TABLE oc_api_session;

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

INSERT INTO oc_api_session VALUES("287","1","31b7e07a980e4b96011561b50f","188.50.133.191","2019-05-12 21:39:12","2019-05-12 21:39:30");
INSERT INTO oc_api_session VALUES("286","1","47c5e5d462c57626dfeecec60d","188.50.133.191","2019-05-12 21:39:03","2019-05-12 21:39:03");
INSERT INTO oc_api_session VALUES("281","1","623bf2e5ce936870679a045ec6","188.50.133.191","2019-05-12 21:17:55","2019-05-12 21:17:55");
INSERT INTO oc_api_session VALUES("282","1","1b2e5017ec342759355d57b9e6","188.50.133.191","2019-05-12 21:18:04","2019-05-12 21:18:04");
INSERT INTO oc_api_session VALUES("283","1","d437e906588e46ad98ac501f7b","188.50.133.191","2019-05-12 21:18:38","2019-05-12 21:18:38");
INSERT INTO oc_api_session VALUES("284","1","8977faf82dee58e704f92e9f00","188.50.133.191","2019-05-12 21:38:35","2019-05-12 21:38:35");
INSERT INTO oc_api_session VALUES("285","1","c3fb23f0ace6f4725abfa5ff50","188.50.133.191","2019-05-12 21:38:43","2019-05-12 21:39:00");



DROP TABLE oc_apibzcc;

CREATE TABLE `oc_apibzcc` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `license_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `license_key` varchar(255) NOT NULL,
  `pgmodule_version` varchar(255) NOT NULL,
  `cms` varchar(255) NOT NULL,
  `cms_version` varchar(255) NOT NULL,
  `ccversion` varchar(255) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `pgmodule_version` (`pgmodule_version`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO oc_apibzcc VALUES("1","free","0","FREE","4.0","opencart","3.0","4.0");



DROP TABLE oc_apptuse;

CREATE TABLE `oc_apptuse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `status` int(8) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_apptuse VALUES("1","0","order@kasturicollection.com","769c7001c006b69675eee31caa74cf5b","1","2018-02-17 15:47:53");



DROP TABLE oc_as_customer_query;

CREATE TABLE `oc_as_customer_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `text` char(128) NOT NULL,
  `choose` char(128) NOT NULL,
  `type` char(128) NOT NULL,
  `type_id` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `date_modify` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_duplicate` (`customer_id`,`text`,`choose`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_as_query;

CREATE TABLE `oc_as_query` (
  `query_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` char(128) NOT NULL,
  `redirect` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `date_modify` datetime NOT NULL,
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `no_duplicate` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO oc_as_query VALUES("1","Legg","","2","2018-04-07 03:21:50");
INSERT INTO oc_as_query VALUES("2","kurt","","1","2018-04-05 17:16:51");
INSERT INTO oc_as_query VALUES("3","Dress","","1","2018-04-05 17:40:33");
INSERT INTO oc_as_query VALUES("4","Legging","","1","2018-04-07 04:48:05");
INSERT INTO oc_as_query VALUES("5","Sl","","1","2018-04-07 04:48:56");
INSERT INTO oc_as_query VALUES("6","","","1","2018-04-07 15:05:14");
INSERT INTO oc_as_query VALUES("7","leggings","","1","2018-04-08 04:03:23");
INSERT INTO oc_as_query VALUES("8","Orange","","2","2018-04-14 17:25:23");



DROP TABLE oc_as_query_results;

CREATE TABLE `oc_as_query_results` (
  `query_results_id` int(11) NOT NULL AUTO_INCREMENT,
  `query_id` int(11) NOT NULL,
  `type` char(128) NOT NULL,
  `type_id` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_modify` datetime NOT NULL,
  PRIMARY KEY (`query_results_id`),
  UNIQUE KEY `no_duplicate` (`query_id`,`type`,`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO oc_as_query_results VALUES("1","1","product","107","2","1","2018-04-07 03:21:50");
INSERT INTO oc_as_query_results VALUES("2","2","product","155","1","1","2018-04-05 17:16:51");
INSERT INTO oc_as_query_results VALUES("3","3","product","75","1","1","2018-04-05 17:40:33");
INSERT INTO oc_as_query_results VALUES("4","4","product","99","1","1","2018-04-07 04:48:05");
INSERT INTO oc_as_query_results VALUES("5","5","product","100","1","1","2018-04-07 04:48:56");
INSERT INTO oc_as_query_results VALUES("6","6","product","160","1","1","2018-04-07 15:05:14");
INSERT INTO oc_as_query_results VALUES("7","7","product","98","1","1","2018-04-08 04:03:23");
INSERT INTO oc_as_query_results VALUES("8","8","product","81","2","1","2018-04-14 17:25:23");



DROP TABLE oc_as_statistic;

CREATE TABLE `oc_as_statistic` (
  `statistic_id` int(11) NOT NULL AUTO_INCREMENT,
  `search` char(128) NOT NULL,
  `select` char(128) NOT NULL,
  `type` char(128) NOT NULL,
  `type_id` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `date_modify` datetime NOT NULL,
  PRIMARY KEY (`statistic_id`),
  UNIQUE KEY `no_duplicate` (`select`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO oc_as_statistic VALUES("1","Legg","Set Of 2  Leggings","product","107","2","2018-04-07 03:21:50");
INSERT INTO oc_as_statistic VALUES("2","kurt","Long Straight Kurti","product","155","1","2018-04-05 17:16:51");
INSERT INTO oc_as_statistic VALUES("3","Dress","Dress Material","product","75","1","2018-04-05 17:40:33");
INSERT INTO oc_as_statistic VALUES("4","Legging","Purple Leggings","product","99","1","2018-04-07 04:48:05");
INSERT INTO oc_as_statistic VALUES("5","Sl","Manisha Slips","product","100","1","2018-04-07 04:48:56");
INSERT INTO oc_as_statistic VALUES("6","","Jeans Top","product","160","1","2018-04-07 15:05:14");
INSERT INTO oc_as_statistic VALUES("7","leggings","Yellow Leggings","product","98","1","2018-04-08 04:03:23");
INSERT INTO oc_as_statistic VALUES("8","Orange","Orange Leggings","product","81","2","2018-04-14 17:25:23");



DROP TABLE oc_attribute;

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute VALUES("1","6","1");
INSERT INTO oc_attribute VALUES("2","6","5");
INSERT INTO oc_attribute VALUES("3","6","3");
INSERT INTO oc_attribute VALUES("4","3","1");
INSERT INTO oc_attribute VALUES("5","3","2");
INSERT INTO oc_attribute VALUES("6","3","3");
INSERT INTO oc_attribute VALUES("7","3","4");
INSERT INTO oc_attribute VALUES("8","3","5");
INSERT INTO oc_attribute VALUES("9","3","6");
INSERT INTO oc_attribute VALUES("10","3","7");
INSERT INTO oc_attribute VALUES("11","3","8");



DROP TABLE oc_attribute_description;

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute_description VALUES("1","1","Description");
INSERT INTO oc_attribute_description VALUES("2","1","No. of Cores");
INSERT INTO oc_attribute_description VALUES("4","1","test 1");
INSERT INTO oc_attribute_description VALUES("5","1","test 2");
INSERT INTO oc_attribute_description VALUES("6","1","test 3");
INSERT INTO oc_attribute_description VALUES("7","1","test 4");
INSERT INTO oc_attribute_description VALUES("8","1","test 5");
INSERT INTO oc_attribute_description VALUES("9","1","test 6");
INSERT INTO oc_attribute_description VALUES("10","1","test 7");
INSERT INTO oc_attribute_description VALUES("11","1","test 8");
INSERT INTO oc_attribute_description VALUES("3","1","Clockspeed");



DROP TABLE oc_attribute_group;

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute_group VALUES("3","2");
INSERT INTO oc_attribute_group VALUES("4","1");
INSERT INTO oc_attribute_group VALUES("5","3");
INSERT INTO oc_attribute_group VALUES("6","4");



DROP TABLE oc_attribute_group_description;

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute_group_description VALUES("3","1","Memory");
INSERT INTO oc_attribute_group_description VALUES("4","1","Technical");
INSERT INTO oc_attribute_group_description VALUES("5","1","Motherboard");
INSERT INTO oc_attribute_group_description VALUES("6","1","Processor");



DROP TABLE oc_banner;

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO oc_banner VALUES("7","Home Page Slideshow","1");



DROP TABLE oc_banner_image;

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

INSERT INTO oc_banner_image VALUES("142","7","1","lmn","","catalog/1.JPG","3");
INSERT INTO oc_banner_image VALUES("140","7","1","abc","","catalog/HomePageSlideShow/3.JPG","1");
INSERT INTO oc_banner_image VALUES("141","7","1","pqr","","catalog/2.JPG","2");



DROP TABLE oc_cart;

CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

INSERT INTO oc_cart VALUES("51","0","10","424cf339ccaa3d3a600b5c912d","80","0","[]","1","2018-10-08 16:49:44");
INSERT INTO oc_cart VALUES("55","0","11","f575951d8139e8f8b0314d0b0a","80","0","[]","1","2018-10-08 17:03:24");
INSERT INTO oc_cart VALUES("57","0","12","82591a325e6264eefa2b800f82","80","0","[]","1","2018-10-08 17:09:54");
INSERT INTO oc_cart VALUES("62","0","13","54e6ca634409b2d62b5a03c3dc","167","0","[]","1","2018-11-03 12:59:36");
INSERT INTO oc_cart VALUES("63","0","13","54e6ca634409b2d62b5a03c3dc","172","0","[]","1","2018-11-03 12:59:37");
INSERT INTO oc_cart VALUES("64","0","13","54e6ca634409b2d62b5a03c3dc","168","0","[]","1","2018-11-03 13:47:05");
INSERT INTO oc_cart VALUES("71","0","14","637166990aff0c9c2b4f86cd65","169","0","[]","1","2018-11-07 03:08:33");
INSERT INTO oc_cart VALUES("75","0","15","e96f31b256da6a3e9e8917d3dc","172","0","[]","1","2018-11-17 05:25:27");
INSERT INTO oc_cart VALUES("78","0","16","25277b9b0dd0868eb9bf3714b4","169","0","[]","1","2018-11-20 12:54:25");
INSERT INTO oc_cart VALUES("92","0","17","7c814ac2dd7414687d26e3d9d9","172","0","[]","1","2018-12-11 05:43:53");
INSERT INTO oc_cart VALUES("104","0","19","688e0b5a466842b0ca42e0c912","170","0","[]","1","2018-12-26 05:20:39");
INSERT INTO oc_cart VALUES("110","0","20","dabd1dbf145292447934212169","169","0","[]","2","2018-12-31 06:56:08");
INSERT INTO oc_cart VALUES("116","0","21","ebc3e1d6069856fabe81254c1f","169","0","[]","1","2019-01-02 05:43:41");
INSERT INTO oc_cart VALUES("122","0","22","688e0b5a466842b0ca42e0c912","168","0","[]","1","2019-01-08 08:50:20");
INSERT INTO oc_cart VALUES("123","0","22","688e0b5a466842b0ca42e0c912","170","0","[]","1","2019-01-15 08:52:27");
INSERT INTO oc_cart VALUES("130","0","23","b4bbc76957dca58512c0418d1d","80","0","[]","2","2019-02-14 09:28:35");
INSERT INTO oc_cart VALUES("135","0","24","31b7e07a980e4b96011561b50f","166","0","[]","1","2019-02-14 10:14:17");
INSERT INTO oc_cart VALUES("139","0","22","688e0b5a466842b0ca42e0c912","166","0","[]","1","2019-02-15 04:14:17");
INSERT INTO oc_cart VALUES("143","0","25","49249cb7022f1a47c243daf5dc","166","0","[]","1","2019-02-16 05:21:31");
INSERT INTO oc_cart VALUES("151","0","26","22c48027d542bb1121b8bf7fa6","80","0","[]","1","2019-02-18 03:57:19");
INSERT INTO oc_cart VALUES("158","0","27","2fbe1e295dd539004d20d1a2cf","166","0","[]","2","2019-08-20 18:08:11");
INSERT INTO oc_cart VALUES("169","0","3","661f1b3baea65d151079dc6454","174","0","[]","3","2020-05-02 05:56:26");
INSERT INTO oc_cart VALUES("172","0","28","25e650e5e87f9ff48d4468a7bf","173","0","[]","1","2020-05-07 07:26:27");



DROP TABLE oc_category;

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO oc_category VALUES("60","","0","1","2","4","0","2018-02-04 08:26:48","2018-10-11 16:43:45");
INSERT INTO oc_category VALUES("20","catalog/JK-SIMRAN-VOL-2-5.jpeg","0","1","1","1","1","2009-01-05 21:49:43","2018-10-08 16:29:24");
INSERT INTO oc_category VALUES("59","","0","1","2","3","0","2018-02-04 08:21:01","2018-10-11 16:43:59");
INSERT INTO oc_category VALUES("33","","0","1","1","2","1","2009-02-03 14:17:55","2018-10-08 16:28:33");



DROP TABLE oc_category_description;

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_description VALUES("59","1","Electrical Hardware","&lt;p&gt;Electrical Hardware&lt;br&gt;&lt;/p&gt;","Electrical Hardware","","");
INSERT INTO oc_category_description VALUES("20","1","LED Indicator","&lt;p&gt;LED Indicator&lt;br&gt;&lt;/p&gt;
INSERT INTO oc_category_description VALUES("33","1","Tube Light","&lt;p&gt;Tube Light&lt;br&gt;&lt;/p&gt;","Tube Light","","");
INSERT INTO oc_category_description VALUES("60","1","Tower Lamp","&lt;p&gt;&lt;font color=&quot;#282c3f&quot; face=&quot;Whitney&quot;&gt;&lt;span style=&quot;font-size: 18px; white-space: nowrap;&quot;&gt;Tower Lamp&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;","Tower Lamp","","");



DROP TABLE oc_category_filter;

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_category_path;

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_path VALUES("20","20","0");
INSERT INTO oc_category_path VALUES("60","60","0");
INSERT INTO oc_category_path VALUES("59","59","0");
INSERT INTO oc_category_path VALUES("33","33","0");



DROP TABLE oc_category_to_layout;

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_to_layout VALUES("20","0","0");
INSERT INTO oc_category_to_layout VALUES("33","0","0");
INSERT INTO oc_category_to_layout VALUES("59","0","0");
INSERT INTO oc_category_to_layout VALUES("60","0","0");



DROP TABLE oc_category_to_store;

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_to_store VALUES("20","0");
INSERT INTO oc_category_to_store VALUES("33","0");
INSERT INTO oc_category_to_store VALUES("59","0");
INSERT INTO oc_category_to_store VALUES("60","0");



DROP TABLE oc_country;

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

INSERT INTO oc_country VALUES("1","Afghanistan","AF","AFG","","0","1");
INSERT INTO oc_country VALUES("2","Albania","AL","ALB","","0","1");
INSERT INTO oc_country VALUES("3","Algeria","DZ","DZA","","0","1");
INSERT INTO oc_country VALUES("4","American Samoa","AS","ASM","","0","1");
INSERT INTO oc_country VALUES("5","Andorra","AD","AND","","0","1");
INSERT INTO oc_country VALUES("6","Angola","AO","AGO","","0","1");
INSERT INTO oc_country VALUES("7","Anguilla","AI","AIA","","0","1");
INSERT INTO oc_country VALUES("8","Antarctica","AQ","ATA","","0","1");
INSERT INTO oc_country VALUES("9","Antigua and Barbuda","AG","ATG","","0","1");
INSERT INTO oc_country VALUES("10","Argentina","AR","ARG","","0","1");
INSERT INTO oc_country VALUES("11","Armenia","AM","ARM","","0","1");
INSERT INTO oc_country VALUES("12","Aruba","AW","ABW","","0","1");
INSERT INTO oc_country VALUES("13","Australia","AU","AUS","","0","1");
INSERT INTO oc_country VALUES("14","Austria","AT","AUT","","0","1");
INSERT INTO oc_country VALUES("15","Azerbaijan","AZ","AZE","","0","1");
INSERT INTO oc_country VALUES("16","Bahamas","BS","BHS","","0","1");
INSERT INTO oc_country VALUES("17","Bahrain","BH","BHR","","0","1");
INSERT INTO oc_country VALUES("18","Bangladesh","BD","BGD","","0","1");
INSERT INTO oc_country VALUES("19","Barbados","BB","BRB","","0","1");
INSERT INTO oc_country VALUES("20","Belarus","BY","BLR","","0","1");
INSERT INTO oc_country VALUES("21","Belgium","BE","BEL","{firstname} {lastname}
INSERT INTO oc_country VALUES("22","Belize","BZ","BLZ","","0","1");
INSERT INTO oc_country VALUES("23","Benin","BJ","BEN","","0","1");
INSERT INTO oc_country VALUES("24","Bermuda","BM","BMU","","0","1");
INSERT INTO oc_country VALUES("25","Bhutan","BT","BTN","","0","1");
INSERT INTO oc_country VALUES("26","Bolivia","BO","BOL","","0","1");
INSERT INTO oc_country VALUES("27","Bosnia and Herzegovina","BA","BIH","","0","1");
INSERT INTO oc_country VALUES("28","Botswana","BW","BWA","","0","1");
INSERT INTO oc_country VALUES("29","Bouvet Island","BV","BVT","","0","1");
INSERT INTO oc_country VALUES("30","Brazil","BR","BRA","","0","1");
INSERT INTO oc_country VALUES("31","British Indian Ocean Territory","IO","IOT","","0","1");
INSERT INTO oc_country VALUES("32","Brunei Darussalam","BN","BRN","","0","1");
INSERT INTO oc_country VALUES("33","Bulgaria","BG","BGR","","0","1");
INSERT INTO oc_country VALUES("34","Burkina Faso","BF","BFA","","0","1");
INSERT INTO oc_country VALUES("35","Burundi","BI","BDI","","0","1");
INSERT INTO oc_country VALUES("36","Cambodia","KH","KHM","","0","1");
INSERT INTO oc_country VALUES("37","Cameroon","CM","CMR","","0","1");
INSERT INTO oc_country VALUES("38","Canada","CA","CAN","","0","1");
INSERT INTO oc_country VALUES("39","Cape Verde","CV","CPV","","0","1");
INSERT INTO oc_country VALUES("40","Cayman Islands","KY","CYM","","0","1");
INSERT INTO oc_country VALUES("41","Central African Republic","CF","CAF","","0","1");
INSERT INTO oc_country VALUES("42","Chad","TD","TCD","","0","1");
INSERT INTO oc_country VALUES("43","Chile","CL","CHL","","0","1");
INSERT INTO oc_country VALUES("44","China","CN","CHN","","0","1");
INSERT INTO oc_country VALUES("45","Christmas Island","CX","CXR","","0","1");
INSERT INTO oc_country VALUES("46","Cocos (Keeling) Islands","CC","CCK","","0","1");
INSERT INTO oc_country VALUES("47","Colombia","CO","COL","","0","1");
INSERT INTO oc_country VALUES("48","Comoros","KM","COM","","0","1");
INSERT INTO oc_country VALUES("49","Congo","CG","COG","","0","1");
INSERT INTO oc_country VALUES("50","Cook Islands","CK","COK","","0","1");
INSERT INTO oc_country VALUES("51","Costa Rica","CR","CRI","","0","1");
INSERT INTO oc_country VALUES("52","Cote D\'Ivoire","CI","CIV","","0","1");
INSERT INTO oc_country VALUES("53","Croatia","HR","HRV","","0","1");
INSERT INTO oc_country VALUES("54","Cuba","CU","CUB","","0","1");
INSERT INTO oc_country VALUES("55","Cyprus","CY","CYP","","0","1");
INSERT INTO oc_country VALUES("56","Czech Republic","CZ","CZE","","0","1");
INSERT INTO oc_country VALUES("57","Denmark","DK","DNK","","0","1");
INSERT INTO oc_country VALUES("58","Djibouti","DJ","DJI","","0","1");
INSERT INTO oc_country VALUES("59","Dominica","DM","DMA","","0","1");
INSERT INTO oc_country VALUES("60","Dominican Republic","DO","DOM","","0","1");
INSERT INTO oc_country VALUES("61","East Timor","TL","TLS","","0","1");
INSERT INTO oc_country VALUES("62","Ecuador","EC","ECU","","0","1");
INSERT INTO oc_country VALUES("63","Egypt","EG","EGY","","0","1");
INSERT INTO oc_country VALUES("64","El Salvador","SV","SLV","","0","1");
INSERT INTO oc_country VALUES("65","Equatorial Guinea","GQ","GNQ","","0","1");
INSERT INTO oc_country VALUES("66","Eritrea","ER","ERI","","0","1");
INSERT INTO oc_country VALUES("67","Estonia","EE","EST","","0","1");
INSERT INTO oc_country VALUES("68","Ethiopia","ET","ETH","","0","1");
INSERT INTO oc_country VALUES("69","Falkland Islands (Malvinas)","FK","FLK","","0","1");
INSERT INTO oc_country VALUES("70","Faroe Islands","FO","FRO","","0","1");
INSERT INTO oc_country VALUES("71","Fiji","FJ","FJI","","0","1");
INSERT INTO oc_country VALUES("72","Finland","FI","FIN","","0","1");
INSERT INTO oc_country VALUES("74","France, Metropolitan","FR","FRA","{firstname} {lastname}
INSERT INTO oc_country VALUES("75","French Guiana","GF","GUF","","0","1");
INSERT INTO oc_country VALUES("76","French Polynesia","PF","PYF","","0","1");
INSERT INTO oc_country VALUES("77","French Southern Territories","TF","ATF","","0","1");
INSERT INTO oc_country VALUES("78","Gabon","GA","GAB","","0","1");
INSERT INTO oc_country VALUES("79","Gambia","GM","GMB","","0","1");
INSERT INTO oc_country VALUES("80","Georgia","GE","GEO","","0","1");
INSERT INTO oc_country VALUES("81","Germany","DE","DEU","{company}
INSERT INTO oc_country VALUES("82","Ghana","GH","GHA","","0","1");
INSERT INTO oc_country VALUES("83","Gibraltar","GI","GIB","","0","1");
INSERT INTO oc_country VALUES("84","Greece","GR","GRC","","0","1");
INSERT INTO oc_country VALUES("85","Greenland","GL","GRL","","0","1");
INSERT INTO oc_country VALUES("86","Grenada","GD","GRD","","0","1");
INSERT INTO oc_country VALUES("87","Guadeloupe","GP","GLP","","0","1");
INSERT INTO oc_country VALUES("88","Guam","GU","GUM","","0","1");
INSERT INTO oc_country VALUES("89","Guatemala","GT","GTM","","0","1");
INSERT INTO oc_country VALUES("90","Guinea","GN","GIN","","0","1");
INSERT INTO oc_country VALUES("91","Guinea-Bissau","GW","GNB","","0","1");
INSERT INTO oc_country VALUES("92","Guyana","GY","GUY","","0","1");
INSERT INTO oc_country VALUES("93","Haiti","HT","HTI","","0","1");
INSERT INTO oc_country VALUES("94","Heard and Mc Donald Islands","HM","HMD","","0","1");
INSERT INTO oc_country VALUES("95","Honduras","HN","HND","","0","1");
INSERT INTO oc_country VALUES("96","Hong Kong","HK","HKG","","0","1");
INSERT INTO oc_country VALUES("97","Hungary","HU","HUN","","0","1");
INSERT INTO oc_country VALUES("98","Iceland","IS","ISL","","0","1");
INSERT INTO oc_country VALUES("99","India","IN","IND","","0","1");
INSERT INTO oc_country VALUES("100","Indonesia","ID","IDN","","0","1");
INSERT INTO oc_country VALUES("101","Iran (Islamic Republic of)","IR","IRN","","0","1");
INSERT INTO oc_country VALUES("102","Iraq","IQ","IRQ","","0","1");
INSERT INTO oc_country VALUES("103","Ireland","IE","IRL","","0","1");
INSERT INTO oc_country VALUES("104","Israel","IL","ISR","","0","1");
INSERT INTO oc_country VALUES("105","Italy","IT","ITA","","0","1");
INSERT INTO oc_country VALUES("106","Jamaica","JM","JAM","","0","1");
INSERT INTO oc_country VALUES("107","Japan","JP","JPN","","0","1");
INSERT INTO oc_country VALUES("108","Jordan","JO","JOR","","0","1");
INSERT INTO oc_country VALUES("109","Kazakhstan","KZ","KAZ","","0","1");
INSERT INTO oc_country VALUES("110","Kenya","KE","KEN","","0","1");
INSERT INTO oc_country VALUES("111","Kiribati","KI","KIR","","0","1");
INSERT INTO oc_country VALUES("112","North Korea","KP","PRK","","0","1");
INSERT INTO oc_country VALUES("113","South Korea","KR","KOR","","0","1");
INSERT INTO oc_country VALUES("114","Kuwait","KW","KWT","","0","1");
INSERT INTO oc_country VALUES("115","Kyrgyzstan","KG","KGZ","","0","1");
INSERT INTO oc_country VALUES("116","Lao People\'s Democratic Republic","LA","LAO","","0","1");
INSERT INTO oc_country VALUES("117","Latvia","LV","LVA","","0","1");
INSERT INTO oc_country VALUES("118","Lebanon","LB","LBN","","0","1");
INSERT INTO oc_country VALUES("119","Lesotho","LS","LSO","","0","1");
INSERT INTO oc_country VALUES("120","Liberia","LR","LBR","","0","1");
INSERT INTO oc_country VALUES("121","Libyan Arab Jamahiriya","LY","LBY","","0","1");
INSERT INTO oc_country VALUES("122","Liechtenstein","LI","LIE","","0","1");
INSERT INTO oc_country VALUES("123","Lithuania","LT","LTU","","0","1");
INSERT INTO oc_country VALUES("124","Luxembourg","LU","LUX","","0","1");
INSERT INTO oc_country VALUES("125","Macau","MO","MAC","","0","1");
INSERT INTO oc_country VALUES("126","FYROM","MK","MKD","","0","1");
INSERT INTO oc_country VALUES("127","Madagascar","MG","MDG","","0","1");
INSERT INTO oc_country VALUES("128","Malawi","MW","MWI","","0","1");
INSERT INTO oc_country VALUES("129","Malaysia","MY","MYS","","0","1");
INSERT INTO oc_country VALUES("130","Maldives","MV","MDV","","0","1");
INSERT INTO oc_country VALUES("131","Mali","ML","MLI","","0","1");
INSERT INTO oc_country VALUES("132","Malta","MT","MLT","","0","1");
INSERT INTO oc_country VALUES("133","Marshall Islands","MH","MHL","","0","1");
INSERT INTO oc_country VALUES("134","Martinique","MQ","MTQ","","0","1");
INSERT INTO oc_country VALUES("135","Mauritania","MR","MRT","","0","1");
INSERT INTO oc_country VALUES("136","Mauritius","MU","MUS","","0","1");
INSERT INTO oc_country VALUES("137","Mayotte","YT","MYT","","0","1");
INSERT INTO oc_country VALUES("138","Mexico","MX","MEX","","0","1");
INSERT INTO oc_country VALUES("139","Micronesia, Federated States of","FM","FSM","","0","1");
INSERT INTO oc_country VALUES("140","Moldova, Republic of","MD","MDA","","0","1");
INSERT INTO oc_country VALUES("141","Monaco","MC","MCO","","0","1");
INSERT INTO oc_country VALUES("142","Mongolia","MN","MNG","","0","1");
INSERT INTO oc_country VALUES("143","Montserrat","MS","MSR","","0","1");
INSERT INTO oc_country VALUES("144","Morocco","MA","MAR","","0","1");
INSERT INTO oc_country VALUES("145","Mozambique","MZ","MOZ","","0","1");
INSERT INTO oc_country VALUES("146","Myanmar","MM","MMR","","0","1");
INSERT INTO oc_country VALUES("147","Namibia","NA","NAM","","0","1");
INSERT INTO oc_country VALUES("148","Nauru","NR","NRU","","0","1");
INSERT INTO oc_country VALUES("149","Nepal","NP","NPL","","0","1");
INSERT INTO oc_country VALUES("150","Netherlands","NL","NLD","","0","1");
INSERT INTO oc_country VALUES("151","Netherlands Antilles","AN","ANT","","0","1");
INSERT INTO oc_country VALUES("152","New Caledonia","NC","NCL","","0","1");
INSERT INTO oc_country VALUES("153","New Zealand","NZ","NZL","","0","1");
INSERT INTO oc_country VALUES("154","Nicaragua","NI","NIC","","0","1");
INSERT INTO oc_country VALUES("155","Niger","NE","NER","","0","1");
INSERT INTO oc_country VALUES("156","Nigeria","NG","NGA","","0","1");
INSERT INTO oc_country VALUES("157","Niue","NU","NIU","","0","1");
INSERT INTO oc_country VALUES("158","Norfolk Island","NF","NFK","","0","1");
INSERT INTO oc_country VALUES("159","Northern Mariana Islands","MP","MNP","","0","1");
INSERT INTO oc_country VALUES("160","Norway","NO","NOR","","0","1");
INSERT INTO oc_country VALUES("161","Oman","OM","OMN","","0","1");
INSERT INTO oc_country VALUES("162","Pakistan","PK","PAK","","0","1");
INSERT INTO oc_country VALUES("163","Palau","PW","PLW","","0","1");
INSERT INTO oc_country VALUES("164","Panama","PA","PAN","","0","1");
INSERT INTO oc_country VALUES("165","Papua New Guinea","PG","PNG","","0","1");
INSERT INTO oc_country VALUES("166","Paraguay","PY","PRY","","0","1");
INSERT INTO oc_country VALUES("167","Peru","PE","PER","","0","1");
INSERT INTO oc_country VALUES("168","Philippines","PH","PHL","","0","1");
INSERT INTO oc_country VALUES("169","Pitcairn","PN","PCN","","0","1");
INSERT INTO oc_country VALUES("170","Poland","PL","POL","","0","1");
INSERT INTO oc_country VALUES("171","Portugal","PT","PRT","","0","1");
INSERT INTO oc_country VALUES("172","Puerto Rico","PR","PRI","","0","1");
INSERT INTO oc_country VALUES("173","Qatar","QA","QAT","","0","1");
INSERT INTO oc_country VALUES("174","Reunion","RE","REU","","0","1");
INSERT INTO oc_country VALUES("175","Romania","RO","ROM","","0","1");
INSERT INTO oc_country VALUES("176","Russian Federation","RU","RUS","","0","1");
INSERT INTO oc_country VALUES("177","Rwanda","RW","RWA","","0","1");
INSERT INTO oc_country VALUES("178","Saint Kitts and Nevis","KN","KNA","","0","1");
INSERT INTO oc_country VALUES("179","Saint Lucia","LC","LCA","","0","1");
INSERT INTO oc_country VALUES("180","Saint Vincent and the Grenadines","VC","VCT","","0","1");
INSERT INTO oc_country VALUES("181","Samoa","WS","WSM","","0","1");
INSERT INTO oc_country VALUES("182","San Marino","SM","SMR","","0","1");
INSERT INTO oc_country VALUES("183","Sao Tome and Principe","ST","STP","","0","1");
INSERT INTO oc_country VALUES("184","Saudi Arabia","SA","SAU","","0","1");
INSERT INTO oc_country VALUES("185","Senegal","SN","SEN","","0","1");
INSERT INTO oc_country VALUES("186","Seychelles","SC","SYC","","0","1");
INSERT INTO oc_country VALUES("187","Sierra Leone","SL","SLE","","0","1");
INSERT INTO oc_country VALUES("188","Singapore","SG","SGP","","0","1");
INSERT INTO oc_country VALUES("189","Slovak Republic","SK","SVK","{firstname} {lastname}
INSERT INTO oc_country VALUES("190","Slovenia","SI","SVN","","0","1");
INSERT INTO oc_country VALUES("191","Solomon Islands","SB","SLB","","0","1");
INSERT INTO oc_country VALUES("192","Somalia","SO","SOM","","0","1");
INSERT INTO oc_country VALUES("193","South Africa","ZA","ZAF","","0","1");
INSERT INTO oc_country VALUES("194","South Georgia &amp; South Sandwich Islands","GS","SGS","","0","1");
INSERT INTO oc_country VALUES("195","Spain","ES","ESP","","0","1");
INSERT INTO oc_country VALUES("196","Sri Lanka","LK","LKA","","0","1");
INSERT INTO oc_country VALUES("197","St. Helena","SH","SHN","","0","1");
INSERT INTO oc_country VALUES("198","St. Pierre and Miquelon","PM","SPM","","0","1");
INSERT INTO oc_country VALUES("199","Sudan","SD","SDN","","0","1");
INSERT INTO oc_country VALUES("200","Suriname","SR","SUR","","0","1");
INSERT INTO oc_country VALUES("201","Svalbard and Jan Mayen Islands","SJ","SJM","","0","1");
INSERT INTO oc_country VALUES("202","Swaziland","SZ","SWZ","","0","1");
INSERT INTO oc_country VALUES("203","Sweden","SE","SWE","{company}
INSERT INTO oc_country VALUES("204","Switzerland","CH","CHE","","0","1");
INSERT INTO oc_country VALUES("205","Syrian Arab Republic","SY","SYR","","0","1");
INSERT INTO oc_country VALUES("206","Taiwan","TW","TWN","","0","1");
INSERT INTO oc_country VALUES("207","Tajikistan","TJ","TJK","","0","1");
INSERT INTO oc_country VALUES("208","Tanzania, United Republic of","TZ","TZA","","0","1");
INSERT INTO oc_country VALUES("209","Thailand","TH","THA","","0","1");
INSERT INTO oc_country VALUES("210","Togo","TG","TGO","","0","1");
INSERT INTO oc_country VALUES("211","Tokelau","TK","TKL","","0","1");
INSERT INTO oc_country VALUES("212","Tonga","TO","TON","","0","1");
INSERT INTO oc_country VALUES("213","Trinidad and Tobago","TT","TTO","","0","1");
INSERT INTO oc_country VALUES("214","Tunisia","TN","TUN","","0","1");
INSERT INTO oc_country VALUES("215","Turkey","TR","TUR","","0","1");
INSERT INTO oc_country VALUES("216","Turkmenistan","TM","TKM","","0","1");
INSERT INTO oc_country VALUES("217","Turks and Caicos Islands","TC","TCA","","0","1");
INSERT INTO oc_country VALUES("218","Tuvalu","TV","TUV","","0","1");
INSERT INTO oc_country VALUES("219","Uganda","UG","UGA","","0","1");
INSERT INTO oc_country VALUES("220","Ukraine","UA","UKR","","0","1");
INSERT INTO oc_country VALUES("221","United Arab Emirates","AE","ARE","","0","1");
INSERT INTO oc_country VALUES("222","United Kingdom","GB","GBR","","1","1");
INSERT INTO oc_country VALUES("223","United States","US","USA","{firstname} {lastname}
INSERT INTO oc_country VALUES("224","United States Minor Outlying Islands","UM","UMI","","0","1");
INSERT INTO oc_country VALUES("225","Uruguay","UY","URY","","0","1");
INSERT INTO oc_country VALUES("226","Uzbekistan","UZ","UZB","","0","1");
INSERT INTO oc_country VALUES("227","Vanuatu","VU","VUT","","0","1");
INSERT INTO oc_country VALUES("228","Vatican City State (Holy See)","VA","VAT","","0","1");
INSERT INTO oc_country VALUES("229","Venezuela","VE","VEN","","0","1");
INSERT INTO oc_country VALUES("230","Viet Nam","VN","VNM","","0","1");
INSERT INTO oc_country VALUES("231","Virgin Islands (British)","VG","VGB","","0","1");
INSERT INTO oc_country VALUES("232","Virgin Islands (U.S.)","VI","VIR","","0","1");
INSERT INTO oc_country VALUES("233","Wallis and Futuna Islands","WF","WLF","","0","1");
INSERT INTO oc_country VALUES("234","Western Sahara","EH","ESH","","0","1");
INSERT INTO oc_country VALUES("235","Yemen","YE","YEM","","0","1");
INSERT INTO oc_country VALUES("237","Democratic Republic of Congo","CD","COD","","0","1");
INSERT INTO oc_country VALUES("238","Zambia","ZM","ZMB","","0","1");
INSERT INTO oc_country VALUES("239","Zimbabwe","ZW","ZWE","","0","1");
INSERT INTO oc_country VALUES("242","Montenegro","ME","MNE","","0","1");
INSERT INTO oc_country VALUES("243","Serbia","RS","SRB","","0","1");
INSERT INTO oc_country VALUES("244","Aaland Islands","AX","ALA","","0","1");
INSERT INTO oc_country VALUES("245","Bonaire, Sint Eustatius and Saba","BQ","BES","","0","1");
INSERT INTO oc_country VALUES("246","Curacao","CW","CUW","","0","1");
INSERT INTO oc_country VALUES("247","Palestinian Territory, Occupied","PS","PSE","","0","1");
INSERT INTO oc_country VALUES("248","South Sudan","SS","SSD","","0","1");
INSERT INTO oc_country VALUES("249","St. Barthelemy","BL","BLM","","0","1");
INSERT INTO oc_country VALUES("250","St. Martin (French part)","MF","MAF","","0","1");
INSERT INTO oc_country VALUES("251","Canary Islands","IC","ICA","","0","1");
INSERT INTO oc_country VALUES("252","Ascension Island (British)","AC","ASC","","0","1");
INSERT INTO oc_country VALUES("253","Kosovo, Republic of","XK","UNK","","0","1");
INSERT INTO oc_country VALUES("254","Isle of Man","IM","IMN","","0","1");
INSERT INTO oc_country VALUES("255","Tristan da Cunha","TA","SHN","","0","1");
INSERT INTO oc_country VALUES("256","Guernsey","GG","GGY","","0","1");
INSERT INTO oc_country VALUES("257","Jersey","JE","JEY","","0","1");



DROP TABLE oc_coupon;

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_coupon VALUES("4","-10% Discount","2222","P","10.0000","0","0","0.0000","2014-01-01","2020-01-01","10","10","0","2009-01-27 13:55:03");
INSERT INTO oc_coupon VALUES("5","Free Shipping","3333","P","0.0000","0","1","100.0000","2014-01-01","2014-02-01","10","10","0","2009-03-14 21:13:53");
INSERT INTO oc_coupon VALUES("6","-10.00 Discount","1111","F","10.0000","0","0","10.0000","2014-01-01","2020-01-01","100000","10000","0","2009-03-14 21:15:18");



DROP TABLE oc_coupon_category;

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_coupon_history;

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_coupon_product;

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_currency;

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO oc_currency VALUES("4","Indian Rupees","INR","Rs ","","2","1.00000000","1","2020-08-18 12:45:08");



DROP TABLE oc_custom_field;

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO oc_custom_field VALUES("1","text","","","account","1","6");
INSERT INTO oc_custom_field VALUES("2","textarea","","","account","1","5");



DROP TABLE oc_custom_field_customer_group;

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_custom_field_customer_group VALUES("1","1","1");
INSERT INTO oc_custom_field_customer_group VALUES("2","1","1");



DROP TABLE oc_custom_field_description;

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_custom_field_description VALUES("1","1","Pin Code");
INSERT INTO oc_custom_field_description VALUES("2","1","Address");



DROP TABLE oc_custom_field_value;

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_custom_field_value_description;

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer;

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer VALUES("3","1","0","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","619849a15a5e03c062e9e1333ec07eb4a116787b","jkiroOVbV","","","1","2","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","49.35.222.9","1","0","","","2018-02-04 06:47:03");
INSERT INTO oc_customer VALUES("15","1","0","1","test","test","test@spam4.me","1234567891","","d37a76a89a25fc48032579c5418c4c2bb19b45a7","x6qJeOfKr","","","0","12","{\"2\":\"test\",\"1\":\"111111\"}","103.56.183.204","1","0","","","2018-11-17 05:25:25");
INSERT INTO oc_customer VALUES("16","1","0","1","sss","sss","abc@gmail.com","+918888888888","","866224169565efca0dfe5c48beb0e160d7c766d4","fLSfz0fgV","","","0","13","{\"2\":\"sddsd\",\"1\":\"380001\"}","103.56.183.204","1","0","","","2018-11-20 12:54:23");
INSERT INTO oc_customer VALUES("17","1","0","1","abc","xyz","dev@fonepaisa.com","9972455816","","b00e257ee2dc3eda3a709242a57e8ba341bb702c","KzqBt4VxQ","","","0","14","{\"2\":\"#1234, J P Nagar,\",\"1\":\"560078\"}","106.200.204.236","1","0","","","2018-12-11 05:43:51");
INSERT INTO oc_customer VALUES("14","1","0","1","Amit","B","kasturicollection2018@gmail.com","08796154725","","678c8eca5994adae988a61091e1553c3b612374b","L1uvzpJHk","","","0","0","{\"2\":\"Baramati\",\"1\":\"413102\"}","183.87.237.4","1","0","","","2018-11-07 03:07:11");
INSERT INTO oc_customer VALUES("18","1","0","1","test","test","test@test.com","1234567890","","78e1d5c53933886639966a204c3c6203b612f704","UiJuqHj8D","","","0","15","{\"2\":\"test\",\"1\":\"123456\"}","122.165.97.83","1","0","","","2018-12-14 11:00:31");
INSERT INTO oc_customer VALUES("19","1","0","1","vnjfvb","dnchbf","nchb@bhbdhb.com","+918989898989","","247de58311941878da570b441563506e9e927120","08wuK8uqP","","","0","16","{\"2\":\"dcnjdvjv\",\"1\":\"401107\"}","14.143.131.62","1","0","","","2018-12-26 05:20:38");
INSERT INTO oc_customer VALUES("20","1","0","1","sahil","kumar","sahilama@gmail.com","09417812345","","72948987371b0e82eaca855f9b070d2732ed2add","LYkYgxKsp","","","0","17","{\"2\":\"145\\n145\",\"1\":\"201301\"}","203.122.13.66","1","0","","","2018-12-31 06:56:07");
INSERT INTO oc_customer VALUES("21","1","0","1","dfghj","ghnjm,.","xyz@telr.com","98745632123","","0514aba5b22f5801b320633854cef205a27df03f","xnY52009g","","","0","18","{\"2\":\"ASDFRGTHYJ\",\"1\":\"400012\"}","106.209.246.54","1","0","","","2019-01-02 05:43:40");
INSERT INTO oc_customer VALUES("22","1","0","1","vnjfvb","dnchbf","test@yahoo.com","+918989898989","","f1ebfdd3a4cc08f9604092dcdc364a0424f2a7ce","GJOLwvNCW","","","0","19","{\"2\":\"dcnjdvjv\",\"1\":\"401107\"}","182.72.67.50","1","0","","","2019-01-08 08:50:19");
INSERT INTO oc_customer VALUES("23","1","0","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","477daa57adc399f86595447fc6f38344922331dc","EmpUCKdUu","","","0","20","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","49.35.142.116","1","0","","","2019-02-14 09:20:36");
INSERT INTO oc_customer VALUES("24","1","0","1","test","test","Test@test.in","78784519897","","c895d1ce6d37e64fab8289b7705ccb5df6429b98","r8saPNqeT","","","0","21","{\"2\":\"Test\",\"1\":\"400005\"}","188.50.133.191","1","0","","","2019-02-14 09:33:12");
INSERT INTO oc_customer VALUES("26","1","0","1","abhijit","shinde","abhijit.shinde22@gmail.com","09860960529","","a07a99d27b14bec7bd81f1c60acdff83bdcc1a5f","4sOjTpT7D","","","0","23","{\"2\":\"At- Kacharewadi Tal-Mangalwedha\\nDist-Solapur\",\"1\":\"413305\"}","64.233.173.146","1","0","","","2019-02-18 03:57:17");
INSERT INTO oc_customer VALUES("25","1","0","1","a","b","a@gmail.com","0123456789","","2b63538b3d70c2be2b71c8c19a9e8771d78904a8","xDBLw2Vdj","","","0","22","{\"2\":\"a\",\"1\":\"380001\"}","103.56.183.206","1","0","","","2019-02-16 05:21:29");
INSERT INTO oc_customer VALUES("27","1","0","1","Fgyhh","Ghhjjj","admin@gmail.com","9999999999","","7d7eb46652cfb0122419270955f61097b8afd3ab","s5tGEON0G","","","0","24","{\"2\":\"Hud\",\"1\":\"497005\"}","124.123.31.89","1","0","","","2019-08-20 18:08:09");
INSERT INTO oc_customer VALUES("28","1","0","1","Paul","M","paulm@gmail.com","+919876543210","","2b8ca9419b288e25a6e37931f8735dbdec56c730","8sW0XRKXk","","","0","25","{\"2\":\"Rajajinagar\\n1st cross\",\"1\":\"560010\"}","52.95.75.2","1","0","","","2020-05-07 07:26:24");



DROP TABLE oc_customer_activity;

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer_affiliate;

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_affiliate VALUES("14","Kasturi Collection","www.kasturicollection.com","NZj0bxYdS7pJsgCzuE7pwYt5iU1JyVvaj2IVZIvAuoBWyox7PwmU84nq2uDI1eYx","5.00","sjsd","cheque","Amit Bhalerao","","","","","","","","1","0000-00-00 00:00:00");



DROP TABLE oc_customer_approval;

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer_group;

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_group VALUES("1","0","1");



DROP TABLE oc_customer_group_description;

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_group_description VALUES("1","1","Default","test");



DROP TABLE oc_customer_history;

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer_ip;

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_ip VALUES("70","3","49.35.11.132","2018-02-04 06:47:10");
INSERT INTO oc_customer_ip VALUES("72","3","183.87.237.4","2018-02-06 03:09:42");
INSERT INTO oc_customer_ip VALUES("73","3","64.233.173.137","2018-02-06 04:23:55");
INSERT INTO oc_customer_ip VALUES("74","3","64.233.173.135","2018-02-06 04:24:02");
INSERT INTO oc_customer_ip VALUES("75","3","64.233.173.136","2018-02-06 04:24:17");
INSERT INTO oc_customer_ip VALUES("76","3","49.35.75.69","2018-02-06 04:25:00");
INSERT INTO oc_customer_ip VALUES("127","3","64.233.173.41","2018-10-17 14:05:46");
INSERT INTO oc_customer_ip VALUES("92","3","183.87.237.45","2018-02-14 17:41:56");
INSERT INTO oc_customer_ip VALUES("118","3","64.233.173.144","2018-10-08 14:12:40");
INSERT INTO oc_customer_ip VALUES("120","3","64.233.173.146","2018-10-08 14:12:59");
INSERT INTO oc_customer_ip VALUES("119","3","157.33.164.232","2018-10-08 14:12:53");
INSERT INTO oc_customer_ip VALUES("106","3","49.35.246.180","2018-02-19 15:50:16");
INSERT INTO oc_customer_ip VALUES("116","3","157.33.163.165","2018-10-06 10:24:41");
INSERT INTO oc_customer_ip VALUES("117","3","64.233.173.145","2018-10-08 14:12:28");
INSERT INTO oc_customer_ip VALUES("112","3","165.225.106.104","2018-03-15 12:40:50");
INSERT INTO oc_customer_ip VALUES("121","3","183.87.237.54","2018-10-08 15:01:02");
INSERT INTO oc_customer_ip VALUES("115","3","183.87.237.10","2018-09-15 09:23:38");
INSERT INTO oc_customer_ip VALUES("126","3","64.233.173.39","2018-10-17 14:05:43");
INSERT INTO oc_customer_ip VALUES("125","3","157.33.244.66","2018-10-16 17:10:49");
INSERT INTO oc_customer_ip VALUES("128","3","157.33.247.209","2018-10-17 14:05:49");
INSERT INTO oc_customer_ip VALUES("129","3","64.233.173.35","2018-10-17 14:05:51");
INSERT INTO oc_customer_ip VALUES("130","3","64.233.173.63","2018-10-18 13:18:40");
INSERT INTO oc_customer_ip VALUES("131","3","157.33.249.71","2018-10-18 13:18:48");
INSERT INTO oc_customer_ip VALUES("132","3","64.233.173.32","2018-10-18 13:18:49");
INSERT INTO oc_customer_ip VALUES("133","3","183.87.237.5","2018-11-03 08:16:05");
INSERT INTO oc_customer_ip VALUES("134","13","217.146.10.210","2018-11-03 12:59:36");
INSERT INTO oc_customer_ip VALUES("135","13","209.58.168.70","2018-11-03 13:32:49");
INSERT INTO oc_customer_ip VALUES("136","13","209.58.168.85","2018-11-03 13:46:52");
INSERT INTO oc_customer_ip VALUES("137","14","183.87.237.4","2018-11-07 03:07:13");
INSERT INTO oc_customer_ip VALUES("138","3","183.87.237.9","2018-11-16 16:34:13");
INSERT INTO oc_customer_ip VALUES("139","15","103.56.183.204","2018-11-17 05:25:27");
INSERT INTO oc_customer_ip VALUES("140","3","49.35.21.28","2018-11-17 06:48:48");
INSERT INTO oc_customer_ip VALUES("141","16","209.58.168.70","2018-11-20 12:54:25");
INSERT INTO oc_customer_ip VALUES("142","16","103.56.183.204","2018-11-20 13:15:12");
INSERT INTO oc_customer_ip VALUES("143","3","157.33.174.134","2018-11-29 12:13:31");
INSERT INTO oc_customer_ip VALUES("144","3","183.87.237.48","2018-11-29 15:27:08");
INSERT INTO oc_customer_ip VALUES("145","17","106.200.204.236","2018-12-11 05:43:53");
INSERT INTO oc_customer_ip VALUES("146","3","49.35.192.12","2018-12-14 10:46:43");
INSERT INTO oc_customer_ip VALUES("147","18","122.165.97.83","2018-12-14 11:00:32");
INSERT INTO oc_customer_ip VALUES("148","3","183.87.237.28","2018-12-19 02:07:30");
INSERT INTO oc_customer_ip VALUES("149","19","14.143.131.62","2018-12-26 05:20:39");
INSERT INTO oc_customer_ip VALUES("150","20","203.122.13.66","2018-12-31 06:56:08");
INSERT INTO oc_customer_ip VALUES("151","21","106.209.246.54","2019-01-02 05:43:41");
INSERT INTO oc_customer_ip VALUES("152","3","183.87.237.47","2019-01-04 16:07:33");
INSERT INTO oc_customer_ip VALUES("153","3","182.72.67.50","2019-01-07 06:36:11");
INSERT INTO oc_customer_ip VALUES("154","3","14.143.131.62","2019-01-07 06:37:32");
INSERT INTO oc_customer_ip VALUES("155","3","49.44.140.5","2019-01-07 13:49:29");
INSERT INTO oc_customer_ip VALUES("156","3","49.35.250.17","2019-01-07 13:49:33");
INSERT INTO oc_customer_ip VALUES("157","22","182.72.67.50","2019-01-08 08:50:20");
INSERT INTO oc_customer_ip VALUES("158","3","183.87.237.63","2019-01-19 16:11:53");
INSERT INTO oc_customer_ip VALUES("159","3","49.35.203.175","2019-02-14 04:43:18");
INSERT INTO oc_customer_ip VALUES("160","3","49.35.236.72","2019-02-14 05:00:57");
INSERT INTO oc_customer_ip VALUES("161","23","117.212.242.96","2019-02-14 09:20:37");
INSERT INTO oc_customer_ip VALUES("162","24","182.72.67.50","2019-02-14 09:33:13");
INSERT INTO oc_customer_ip VALUES("163","24","14.143.131.62","2019-02-14 09:33:13");
INSERT INTO oc_customer_ip VALUES("164","3","49.35.247.185","2019-02-14 09:44:20");
INSERT INTO oc_customer_ip VALUES("165","24","37.1.253.83","2019-02-14 10:10:41");
INSERT INTO oc_customer_ip VALUES("166","3","49.35.206.84","2019-02-14 10:32:42");
INSERT INTO oc_customer_ip VALUES("167","22","14.143.131.62","2019-02-15 04:14:09");
INSERT INTO oc_customer_ip VALUES("168","3","49.35.215.16","2019-02-15 04:31:52");
INSERT INTO oc_customer_ip VALUES("169","3","49.35.214.179","2019-02-15 07:18:25");
INSERT INTO oc_customer_ip VALUES("170","3","49.35.249.39","2019-02-15 07:53:06");
INSERT INTO oc_customer_ip VALUES("171","23","117.212.243.128","2019-02-15 08:23:22");
INSERT INTO oc_customer_ip VALUES("172","3","49.35.193.220","2019-02-15 10:41:34");
INSERT INTO oc_customer_ip VALUES("173","3","49.35.234.240","2019-02-15 15:13:51");
INSERT INTO oc_customer_ip VALUES("174","3","157.33.240.145","2019-02-15 16:56:57");
INSERT INTO oc_customer_ip VALUES("175","25","103.56.183.204","2019-02-16 05:21:30");
INSERT INTO oc_customer_ip VALUES("176","25","103.56.183.206","2019-02-16 05:21:59");
INSERT INTO oc_customer_ip VALUES("177","23","117.212.242.200","2019-02-16 06:57:42");
INSERT INTO oc_customer_ip VALUES("178","23","66.249.88.25","2019-02-16 08:18:36");
INSERT INTO oc_customer_ip VALUES("179","23","66.249.88.29","2019-02-16 08:18:37");
INSERT INTO oc_customer_ip VALUES("180","23","66.249.88.27","2019-02-16 08:18:38");
INSERT INTO oc_customer_ip VALUES("181","3","157.33.193.241","2019-02-18 03:47:39");
INSERT INTO oc_customer_ip VALUES("182","3","106.220.233.52","2019-02-18 03:48:29");
INSERT INTO oc_customer_ip VALUES("183","26","64.233.173.144","2019-02-18 03:57:19");
INSERT INTO oc_customer_ip VALUES("184","26","64.233.173.146","2019-02-18 03:57:19");
INSERT INTO oc_customer_ip VALUES("185","26","64.233.173.145","2019-02-18 03:57:20");
INSERT INTO oc_customer_ip VALUES("186","26","106.220.233.52","2019-02-18 03:57:23");
INSERT INTO oc_customer_ip VALUES("187","23","117.254.218.91","2019-02-18 11:58:04");
INSERT INTO oc_customer_ip VALUES("188","3","117.254.218.91","2019-02-18 12:00:43");
INSERT INTO oc_customer_ip VALUES("189","23","64.233.173.145","2019-02-19 12:19:02");
INSERT INTO oc_customer_ip VALUES("190","23","64.233.173.144","2019-02-19 12:19:13");
INSERT INTO oc_customer_ip VALUES("191","23","49.35.199.7","2019-02-19 12:19:16");
INSERT INTO oc_customer_ip VALUES("192","23","64.233.173.146","2019-02-19 12:19:18");
INSERT INTO oc_customer_ip VALUES("193","23","49.35.241.85","2019-02-19 12:37:48");
INSERT INTO oc_customer_ip VALUES("194","3","49.35.241.85","2019-02-19 12:41:44");
INSERT INTO oc_customer_ip VALUES("195","23","49.35.235.23","2019-02-19 13:04:47");
INSERT INTO oc_customer_ip VALUES("196","3","157.33.224.162","2019-02-20 06:49:28");
INSERT INTO oc_customer_ip VALUES("197","3","157.33.255.44","2019-02-20 08:26:51");
INSERT INTO oc_customer_ip VALUES("198","3","157.33.248.94","2019-02-20 12:18:25");
INSERT INTO oc_customer_ip VALUES("199","23","49.35.148.211","2019-02-20 15:31:59");
INSERT INTO oc_customer_ip VALUES("200","23","49.35.142.116","2019-02-21 10:58:21");
INSERT INTO oc_customer_ip VALUES("201","3","183.87.237.17","2019-05-04 11:13:18");
INSERT INTO oc_customer_ip VALUES("202","3","64.233.173.140","2019-05-04 15:00:55");
INSERT INTO oc_customer_ip VALUES("203","3","64.233.173.138","2019-05-04 15:02:08");
INSERT INTO oc_customer_ip VALUES("204","3","49.35.56.65","2019-05-04 15:02:15");
INSERT INTO oc_customer_ip VALUES("205","3","64.233.173.139","2019-05-04 15:02:16");
INSERT INTO oc_customer_ip VALUES("206","3","188.50.133.191","2019-05-12 21:39:00");
INSERT INTO oc_customer_ip VALUES("207","24","188.50.133.191","2019-05-12 21:39:25");
INSERT INTO oc_customer_ip VALUES("208","3","49.35.54.239","2019-05-29 15:48:47");
INSERT INTO oc_customer_ip VALUES("209","3","64.233.173.141","2019-05-29 17:27:57");
INSERT INTO oc_customer_ip VALUES("210","3","183.87.237.57","2019-05-29 17:28:10");
INSERT INTO oc_customer_ip VALUES("211","3","64.233.173.142","2019-05-29 17:28:12");
INSERT INTO oc_customer_ip VALUES("212","3","103.53.233.34","2019-08-20 16:57:04");
INSERT INTO oc_customer_ip VALUES("213","27","124.123.31.89","2019-08-20 18:08:11");
INSERT INTO oc_customer_ip VALUES("214","27","124.123.31.89","2019-08-20 18:08:11");
INSERT INTO oc_customer_ip VALUES("215","3","183.87.237.62","2020-04-12 04:03:45");
INSERT INTO oc_customer_ip VALUES("216","3","122.162.134.251","2020-04-17 12:13:22");
INSERT INTO oc_customer_ip VALUES("217","3","183.87.237.56","2020-05-02 05:56:26");
INSERT INTO oc_customer_ip VALUES("218","28","52.95.75.2","2020-05-07 07:26:27");
INSERT INTO oc_customer_ip VALUES("219","3","49.35.222.9","2020-06-28 04:24:32");



DROP TABLE oc_customer_login;

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_login VALUES("4","","49.35.37.167","1","2018-02-03 07:23:45","2018-02-03 07:23:45");
INSERT INTO oc_customer_login VALUES("6","","49.35.80.236","1","2018-02-08 12:36:38","2018-02-08 12:36:38");
INSERT INTO oc_customer_login VALUES("7","","183.87.237.45","1","2018-02-14 17:38:04","2018-02-14 17:38:04");
INSERT INTO oc_customer_login VALUES("9","","165.225.106.104","1","2018-03-09 12:26:01","2018-03-09 12:26:01");
INSERT INTO oc_customer_login VALUES("21","sfsadfs","163.172.141.125","1","2018-11-05 05:48:16","2018-11-05 05:48:16");
INSERT INTO oc_customer_login VALUES("11","kasturicollection@gmail.com","165.225.106.104","1","2018-03-15 12:40:00","2018-03-15 12:40:00");
INSERT INTO oc_customer_login VALUES("13","","49.35.246.151","1","2018-03-25 05:48:21","2018-03-25 05:48:21");
INSERT INTO oc_customer_login VALUES("20","amit","183.87.237.5","1","2018-11-03 13:56:32","2018-11-03 13:56:32");
INSERT INTO oc_customer_login VALUES("19","","183.87.237.5","11","2018-11-03 13:54:35","2018-11-05 15:32:03");
INSERT INTO oc_customer_login VALUES("16","amit.bhalerao87@gmai.com","183.87.237.10","1","2018-09-15 09:23:13","2018-09-15 09:23:13");
INSERT INTO oc_customer_login VALUES("18","","183.87.237.10","2","2018-10-03 17:19:43","2018-10-06 07:17:00");
INSERT INTO oc_customer_login VALUES("23","test@test.org","182.72.67.50","1","2019-02-15 06:26:32","2019-02-15 06:26:32");
INSERT INTO oc_customer_login VALUES("26","","49.35.199.7","1","2019-02-19 12:16:16","2019-02-19 12:16:16");
INSERT INTO oc_customer_login VALUES("28","","117.254.218.91","1","2019-02-20 05:40:31","2019-02-20 05:40:31");
INSERT INTO oc_customer_login VALUES("30","davidos777@gmail.com","95.211.224.199","1","2019-04-22 16:12:57","2019-04-22 16:12:57");
INSERT INTO oc_customer_login VALUES("31","amitbaramatica@gmail.com","122.162.134.251","3","2020-04-17 12:11:38","2020-04-17 12:11:54");
INSERT INTO oc_customer_login VALUES("32","gazizaru@sakhpubo.ru","185.143.172.80","2","2020-07-07 18:01:56","2020-07-08 09:44:51");
INSERT INTO oc_customer_login VALUES("33","gazari@sakhpubo.ru","185.143.172.80","2","2020-07-17 15:27:20","2020-07-17 16:10:24");



DROP TABLE oc_customer_online;

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer_reward;

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer_search;

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_search VALUES("1","0","1","0","slips","0","0","0","4","49.35.80.40","2018-02-10 15:08:18");
INSERT INTO oc_customer_search VALUES("2","0","1","0","leggings","0","0","0","8","49.35.80.40","2018-02-10 15:08:29");
INSERT INTO oc_customer_search VALUES("3","0","1","0","Kurtis","0","0","0","0","103.51.153.58","2018-02-14 09:14:17");
INSERT INTO oc_customer_search VALUES("4","0","1","0","leggings","0","0","0","8","49.35.230.144","2018-02-16 15:46:35");
INSERT INTO oc_customer_search VALUES("5","0","1","0","Sari","0","0","0","0","106.79.153.101","2018-02-17 13:18:08");
INSERT INTO oc_customer_search VALUES("6","0","1","0","Sarree","0","0","0","0","106.79.134.215","2018-02-17 13:23:26");
INSERT INTO oc_customer_search VALUES("7","0","1","0","Sarees","0","0","0","0","49.35.34.17","2018-02-17 14:17:26");
INSERT INTO oc_customer_search VALUES("8","0","1","0","Sarees","59","0","0","0","49.35.34.17","2018-02-17 14:17:40");
INSERT INTO oc_customer_search VALUES("9","0","1","0","Sarees","59","0","0","0","49.35.34.17","2018-02-17 14:17:57");
INSERT INTO oc_customer_search VALUES("10","0","1","0","Sarees","0","0","0","0","49.35.34.17","2018-02-17 14:18:16");
INSERT INTO oc_customer_search VALUES("11","0","1","0","Kurtis","0","0","0","0","64.233.173.135","2018-02-17 15:00:03");
INSERT INTO oc_customer_search VALUES("12","0","1","0","Saries","0","0","0","0","106.77.5.117","2018-02-17 17:06:07");
INSERT INTO oc_customer_search VALUES("13","0","1","0","Sagar kunte","0","0","0","0","49.35.26.132","2018-02-17 17:47:06");
INSERT INTO oc_customer_search VALUES("14","0","1","0","Sagar kunte","0","0","0","0","49.35.26.132","2018-02-17 17:47:09");
INSERT INTO oc_customer_search VALUES("15","0","1","0","Shirts","0","0","0","0","103.14.235.183","2018-02-17 17:53:25");
INSERT INTO oc_customer_search VALUES("16","0","1","0","Shirts","0","0","0","0","103.14.235.183","2018-02-17 17:53:32");
INSERT INTO oc_customer_search VALUES("17","0","1","0","Sarees","0","0","0","0","64.233.173.137","2018-02-18 09:35:36");
INSERT INTO oc_customer_search VALUES("18","0","1","0","Kurtis","0","0","0","0","49.44.87.103","2018-02-19 13:42:31");
INSERT INTO oc_customer_search VALUES("19","0","1","0","Kurtis","0","0","0","0","49.44.87.103","2018-02-19 13:42:37");
INSERT INTO oc_customer_search VALUES("20","0","1","0","Legines ","0","0","0","0","49.35.75.225","2018-02-20 04:55:32");
INSERT INTO oc_customer_search VALUES("21","0","1","0","Legines ","0","0","0","0","49.35.75.225","2018-02-20 05:31:36");
INSERT INTO oc_customer_search VALUES("22","0","1","0","Fancy kurtis","0","0","0","0","49.35.64.203","2018-02-28 12:25:08");
INSERT INTO oc_customer_search VALUES("23","0","1","0","Round kurtis","0","0","0","0","49.35.64.203","2018-02-28 12:27:36");
INSERT INTO oc_customer_search VALUES("24","0","1","0","Baalar Dress Material	","0","0","0","7","106.193.162.149","2018-05-25 09:34:31");



DROP TABLE oc_customer_transaction;

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_customer_wishlist;

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_wishlist VALUES("6","85","2018-02-17 17:32:07");



DROP TABLE oc_dam_setting;

CREATE TABLE `oc_dam_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_dam_setting VALUES("1","0","default-setting","{\"name\":\"default-setting\",\"status\":1,\"work_mode\":1,\"main_menu\":{\"version\":\"3.0.2.0\",\"menu_data\":[{\"icon\":\"fa-dashboard\",\"name\":\"Dashboard\",\"lng_name\":\"text_dashboard\",\"href\":\"index.php?route=common\\/dashboard&\",\"children\":[],\"id\":1},{\"icon\":\"fa-tags\",\"lng_name\":\"text_catalog\",\"name\":\"Catalog\",\"href\":\"\",\"children\":{\"1\":{\"icon\":\">>\",\"name\":\"Categories\",\"lng_name\":\"text_category\",\"href\":\"index.php?route=catalog\\/category&\",\"children\":[],\"is_visible\":1,\"id\":3},\"2\":{\"icon\":\">>\",\"name\":\"Products\",\"lng_name\":\"text_product\",\"href\":\"index.php?route=catalog\\/product&\",\"children\":[],\"is_visible\":1,\"id\":4},\"3\":{\"icon\":\">>\",\"name\":\"Recurring Profiles\",\"lng_name\":\"text_recurring\",\"href\":\"index.php?route=catalog\\/recurring&\",\"children\":[],\"is_visible\":1,\"id\":5},\"4\":{\"icon\":\">>\",\"name\":\"Filters\",\"lng_name\":\"text_filter\",\"href\":\"index.php?route=catalog\\/filter&\",\"children\":[],\"is_visible\":1,\"id\":6},\"5\":{\"icon\":\">>\",\"name\":\"Attributes\",\"lng_name\":\"text_attribute\",\"href\":\"\",\"children\":{\"1\":{\"icon\":\">>\",\"name\":\"Attributes\",\"lng_name\":\"text_attribute\",\"href\":\"index.php?route=catalog\\/attribute&\",\"children\":[],\"is_visible\":1,\"id\":8},\"2\":{\"icon\":\">>\",\"name\":\"Attribute Groups\",\"lng_name\":\"text_attribute_group\",\"href\":\"index.php?route=catalog\\/attribute_group&\",\"children\":[],\"is_visible\":1,\"id\":9}},\"is_visible\":1,\"id\":7},\"6\":{\"icon\":\">>\",\"name\":\"Options\",\"lng_name\":\"text_option\",\"href\":\"index.php?route=catalog\\/option&\",\"children\":[],\"is_visible\":1,\"id\":10},\"7\":{\"icon\":\">>\",\"name\":\"Manufacturers\",\"lng_name\":\"text_manufacturer\",\"href\":\"index.php?route=catalog\\/manufacturer&\",\"children\":[],\"is_visible\":1,\"id\":11},\"8\":{\"icon\":\">>\",\"name\":\"Downloads\",\"lng_name\":\"text_download\",\"href\":\"index.php?route=catalog\\/download&\",\"children\":[],\"is_visible\":1,\"id\":12},\"9\":{\"icon\":\">>\",\"name\":\"Reviews\",\"lng_name\":\"text_review\",\"href\":\"index.php?route=catalog\\/review&\",\"children\":[],\"is_visible\":1,\"id\":13},\"10\":{\"icon\":\">>\",\"name\":\"Information\",\"lng_name\":\"text_information\",\"href\":\"index.php?route=catalog\\/information&\",\"children\":[],\"is_visible\":1,\"id\":14}},\"id\":2},{\"icon\":\"fa-puzzle-piece\",\"name\":\"Extensions\",\"lng_name\":\"text_extension\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Marketplace\",\"lng_name\":\"text_marketplace\",\"href\":\"index.php?route=marketplace\\/marketplace&\",\"children\":[],\"is_visible\":1,\"id\":16},{\"icon\":\">>\",\"name\":\"Installer\",\"lng_name\":\"text_installer\",\"href\":\"index.php?route=marketplace\\/installer&\",\"children\":[],\"is_visible\":1,\"id\":17},{\"icon\":\">>\",\"name\":\"Extensions\",\"lng_name\":\"text_extension\",\"href\":\"index.php?route=marketplace\\/extension&\",\"children\":[],\"id\":18},{\"icon\":\">>\",\"name\":\"Modifications\",\"lng_name\":\"text_modification\",\"href\":\"index.php?route=marketplace\\/modification&\",\"children\":[],\"is_visible\":1,\"id\":19},{\"icon\":\">>\",\"name\":\"Events\",\"lng_name\":\"text_event\",\"href\":\"index.php?route=marketplace\\/event&\",\"children\":[],\"is_visible\":1,\"id\":20}],\"id\":15},{\"icon\":\"fa-television\",\"name\":\"Design\",\"lng_name\":\"text_design\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Layouts\",\"lng_name\":\"text_layout\",\"href\":\"index.php?route=design\\/layout&\",\"children\":[],\"is_visible\":1,\"id\":22},{\"icon\":\">>\",\"name\":\"Theme Editor\",\"lng_name\":\"text_theme\",\"href\":\"index.php?route=design\\/theme&\",\"children\":[],\"is_visible\":1,\"id\":23},{\"icon\":\">>\",\"name\":\"Language Editor\",\"lng_name\":\"text_language_editor\",\"href\":\"index.php?route=design\\/translation&\",\"children\":[],\"is_visible\":1,\"id\":24},{\"icon\":\">>\",\"name\":\"Banners\",\"lng_name\":\"text_banner\",\"href\":\"index.php?route=design\\/banner&\",\"children\":[],\"is_visible\":1,\"id\":25},{\"icon\":\">>\",\"name\":\"SEO URL\",\"lng_name\":\"text_seo_url\",\"href\":\"index.php?route=design\\/seo_url&\",\"children\":[],\"is_visible\":1,\"id\":26}],\"id\":21},{\"icon\":\"fa-shopping-cart\",\"name\":\"Sales\",\"lng_name\":\"text_sale\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Orders\",\"lng_name\":\"text_order\",\"href\":\"index.php?route=sale\\/order&\",\"children\":[],\"is_visible\":1,\"id\":28},{\"icon\":\">>\",\"name\":\"Recurring Profiles\",\"lng_name\":\"text_recurring\",\"href\":\"index.php?route=sale\\/recurring&\",\"children\":[],\"is_visible\":1,\"id\":29},{\"icon\":\">>\",\"name\":\"Returns\",\"lng_name\":\"text_return\",\"href\":\"index.php?route=sale\\/return&\",\"children\":[],\"is_visible\":1,\"id\":30},{\"icon\":\">>\",\"name\":\"Gift Vouchers\",\"lng_name\":\"text_voucher\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Gift Vouchers\",\"lng_name\":\"text_voucher\",\"href\":\"index.php?route=sale\\/voucher&\",\"children\":[],\"is_visible\":1,\"id\":32},{\"icon\":\">>\",\"name\":\"Voucher Themes\",\"lng_name\":\"text_voucher_theme\",\"href\":\"index.php?route=sale\\/voucher_theme&\",\"children\":[],\"is_visible\":1,\"id\":33}],\"is_visible\":1,\"id\":31}],\"id\":27},{\"icon\":\"fa-user\",\"name\":\"Customers\",\"lng_name\":\"text_customer\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Customers\",\"lng_name\":\"text_customer\",\"href\":\"index.php?route=customer\\/customer&\",\"children\":[],\"is_visible\":1,\"id\":35},{\"icon\":\">>\",\"name\":\"Customer Groups\",\"lng_name\":\"text_customer_group\",\"href\":\"index.php?route=customer\\/customer_group&\",\"children\":[],\"is_visible\":1,\"id\":36},{\"icon\":\">>\",\"name\":\"Customer Approvals\",\"lng_name\":\"text_customer_approval\",\"href\":\"index.php?route=customer\\/customer_approval&\",\"children\":[],\"is_visible\":1,\"id\":37},{\"icon\":\">>\",\"name\":\"Custom Fields\",\"lng_name\":\"text_custom_field\",\"href\":\"index.php?route=customer\\/custom_field&\",\"children\":[],\"is_visible\":1,\"id\":38}],\"id\":34},{\"icon\":\"fa-share-alt\",\"name\":\"Marketing\",\"lng_name\":\"text_marketing\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Marketing\",\"lng_name\":\"text_marketing\",\"href\":\"index.php?route=marketing\\/marketing&\",\"children\":[],\"is_visible\":1,\"id\":40},{\"icon\":\">>\",\"name\":\"Coupons\",\"lng_name\":\"text_coupon\",\"href\":\"index.php?route=marketing\\/coupon&\",\"children\":[],\"is_visible\":1,\"id\":41},{\"icon\":\">>\",\"name\":\"Mail\",\"lng_name\":\"text_contact\",\"href\":\"index.php?route=marketing\\/contact&\",\"children\":[],\"is_visible\":1,\"id\":42}],\"id\":39},{\"icon\":\"fa-cog\",\"name\":\"System\",\"lng_name\":\"text_system\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Settings\",\"lng_name\":\"text_setting\",\"href\":\"index.php?route=setting\\/store&\",\"children\":[],\"is_visible\":1,\"id\":44},{\"icon\":\">>\",\"name\":\"Users\",\"lng_name\":\"text_users\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Users\",\"lng_name\":\"text_users\",\"href\":\"index.php?route=user\\/user&\",\"children\":[],\"is_visible\":1,\"id\":46},{\"icon\":\">>\",\"name\":\"User Groups\",\"lng_name\":\"text_user_group\",\"href\":\"index.php?route=user\\/user_permission&\",\"children\":[],\"is_visible\":1,\"id\":47},{\"icon\":\">>\",\"name\":\"API\",\"lng_name\":\"text_api\",\"href\":\"index.php?route=user\\/api&\",\"children\":[],\"is_visible\":1,\"id\":48}],\"is_visible\":1,\"id\":45},{\"icon\":\">>\",\"name\":\"Localisation\",\"lng_name\":\"text_localisation\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Store Location\",\"lng_name\":\"text_location\",\"href\":\"index.php?route=localisation\\/location&\",\"children\":[],\"is_visible\":1,\"id\":50},{\"icon\":\">>\",\"name\":\"Languages\",\"lng_name\":\"text_language\",\"href\":\"index.php?route=localisation\\/language&\",\"children\":[],\"is_visible\":1,\"id\":51},{\"icon\":\">>\",\"name\":\"Currencies\",\"lng_name\":\"text_currency\",\"href\":\"index.php?route=localisation\\/currency&\",\"children\":[],\"is_visible\":1,\"id\":52},{\"icon\":\">>\",\"name\":\"Stock Statuses\",\"lng_name\":\"text_stock_status\",\"href\":\"index.php?route=localisation\\/stock_status&\",\"children\":[],\"is_visible\":1,\"id\":53},{\"icon\":\">>\",\"name\":\"Order Statuses\",\"lng_name\":\"text_order_status\",\"href\":\"index.php?route=localisation\\/order_status&\",\"children\":[],\"is_visible\":1,\"id\":54},{\"icon\":\">>\",\"name\":\"Returns\",\"lng_name\":\"text_return\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Return Statuses\",\"lng_name\":\"text_return_status\",\"href\":\"index.php?route=localisation\\/return_status&\",\"children\":[],\"is_visible\":1},{\"icon\":\">>\",\"name\":\"Return Actions\",\"lng_name\":\"text_return_action\",\"href\":\"index.php?route=localisation\\/return_action&\",\"children\":[],\"is_visible\":1},{\"icon\":\">>\",\"name\":\"Return Reasons\",\"lng_name\":\"text_return_reason\",\"href\":\"index.php?route=localisation\\/return_reason&\",\"children\":[],\"is_visible\":1}],\"is_visible\":1,\"id\":55},{\"icon\":\">>\",\"name\":\"Countries\",\"lng_name\":\"text_country\",\"href\":\"index.php?route=localisation\\/country&\",\"children\":[],\"is_visible\":1,\"id\":56},{\"icon\":\">>\",\"name\":\"Zones\",\"lng_name\":\"text_zone\",\"href\":\"index.php?route=localisation\\/zone&\",\"children\":[],\"is_visible\":1,\"id\":57},{\"icon\":\">>\",\"name\":\"Geo Zones\",\"lng_name\":\"text_geo_zone\",\"href\":\"index.php?route=localisation\\/geo_zone&\",\"children\":[],\"is_visible\":1,\"id\":58},{\"icon\":\">>\",\"name\":\"Taxes\",\"lng_name\":\"text_tax\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Taxs Classes\",\"lng_name\":\"text_tax_class\",\"href\":\"index.php?route=localisation\\/tax_class&\",\"children\":[],\"is_visible\":1},{\"icon\":\">>\",\"name\":\"Tax Rates\",\"lng_name\":\"text_tax_rate\",\"href\":\"index.php?route=localisation\\/tax_rate&\",\"children\":[],\"is_visible\":1}],\"id\":59},{\"icon\":\">>\",\"name\":\"Length Classes\",\"lng_name\":\"text_length_class\",\"href\":\"index.php?route=localisation\\/length_class&\",\"children\":[],\"is_visible\":1,\"id\":60},{\"icon\":\">>\",\"name\":\"Weight Classes\",\"lng_name\":\"text_weight_class\",\"href\":\"index.php?route=localisation\\/weight_class&\",\"children\":[],\"is_visible\":1,\"id\":61}],\"is_visible\":1,\"id\":49},{\"icon\":\">>\",\"name\":\"Maintenance\",\"lng_name\":\"text_meintenance\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Backup \\/ Restore\",\"lng_name\":\"text_backup\",\"href\":\"index.php?route=tool\\/backup&\",\"children\":[],\"is_visible\":1,\"id\":63},{\"icon\":\">>\",\"name\":\"Uploads\",\"lng_name\":\"text_upload\",\"href\":\"index.php?route=tool\\/upload&\",\"children\":[],\"is_visible\":1,\"id\":64},{\"icon\":\">>\",\"name\":\"Error Logs\",\"lng_name\":\"text_log\",\"href\":\"index.php?route=tool\\/log&\",\"children\":[],\"is_visible\":1,\"id\":65}],\"is_visible\":1,\"id\":62}],\"id\":43},{\"icon\":\"fa-bar-chart-o\",\"name\":\"Reports\",\"lng_name\":\"text_reports\",\"href\":\"\",\"children\":[{\"icon\":\">>\",\"name\":\"Reports\",\"lng_name\":\"text_reports\",\"href\":\"index.php?route=report\\/report&\",\"children\":[],\"is_visible\":1,\"id\":67},{\"icon\":\">>\",\"name\":\"Who\'s Online\",\"lng_name\":\"text_online\",\"href\":\"index.php?route=report\\/online&\",\"children\":[],\"is_visible\":1,\"id\":68},{\"icon\":\">>\",\"name\":\"Statistics\",\"lng_name\":\"text_statistics\",\"href\":\"index.php?route=report\\/statistics&\",\"children\":[],\"is_visible\":1,\"id\":69}],\"id\":66}]},\"custom_menu\":[{\"id\":\"1\",\"icon\":\"fa-flask\",\"name\":\"Shopunity\",\"custom_route\":false,\"href\":\"index.php?route=extension\\/analytics\\/google&\",\"href_type\":\"route\",\"children\":[],\"sort_order\":0},{\"id\":\"2\",\"icon\":\"fa-euro\",\"name\":\"Dreamvention\",\"custom_route\":\"http:\\/\\/dreamvention.ee\\/\",\"href\":\"http:\\/\\/dreamvention.ee\\/\",\"href_type\":\"direct_link\",\"children\":[],\"sort_order\":0}]}");



DROP TABLE oc_download;

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;




DROP TABLE oc_download_description;

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_event;

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO oc_event VALUES("1","activity_customer_add","catalog/model/account/customer/addCustomer/after","event/activity/addCustomer","1","0");
INSERT INTO oc_event VALUES("2","activity_customer_edit","catalog/model/account/customer/editCustomer/after","event/activity/editCustomer","1","0");
INSERT INTO oc_event VALUES("3","activity_customer_password","catalog/model/account/customer/editPassword/after","event/activity/editPassword","1","0");
INSERT INTO oc_event VALUES("4","activity_customer_forgotten","catalog/model/account/customer/editCode/after","event/activity/forgotten","1","0");
INSERT INTO oc_event VALUES("5","activity_transaction","catalog/model/account/customer/addTransaction/after","event/activity/addTransaction","1","0");
INSERT INTO oc_event VALUES("6","activity_customer_login","catalog/model/account/customer/deleteLoginAttempts/after","event/activity/login","1","0");
INSERT INTO oc_event VALUES("7","activity_address_add","catalog/model/account/address/addAddress/after","event/activity/addAddress","1","0");
INSERT INTO oc_event VALUES("8","activity_address_edit","catalog/model/account/address/editAddress/after","event/activity/editAddress","1","0");
INSERT INTO oc_event VALUES("9","activity_address_delete","catalog/model/account/address/deleteAddress/after","event/activity/deleteAddress","1","0");
INSERT INTO oc_event VALUES("10","activity_affiliate_add","catalog/model/account/customer/addAffiliate/after","event/activity/addAffiliate","1","0");
INSERT INTO oc_event VALUES("11","activity_affiliate_edit","catalog/model/account/customer/editAffiliate/after","event/activity/editAffiliate","1","0");
INSERT INTO oc_event VALUES("12","activity_order_add","catalog/model/checkout/order/addOrderHistory/before","event/activity/addOrderHistory","1","0");
INSERT INTO oc_event VALUES("13","activity_return_add","catalog/model/account/return/addReturn/after","event/activity/addReturn","1","0");
INSERT INTO oc_event VALUES("14","mail_transaction","catalog/model/account/customer/addTransaction/after","mail/transaction","1","0");
INSERT INTO oc_event VALUES("15","mail_forgotten","catalog/model/account/customer/editCode/after","mail/forgotten","1","0");
INSERT INTO oc_event VALUES("16","mail_customer_add","catalog/model/account/customer/addCustomer/after","mail/register","1","0");
INSERT INTO oc_event VALUES("17","mail_customer_alert","catalog/model/account/customer/addCustomer/after","mail/register/alert","1","0");
INSERT INTO oc_event VALUES("18","mail_affiliate_add","catalog/model/account/customer/addAffiliate/after","mail/affiliate","1","0");
INSERT INTO oc_event VALUES("19","mail_affiliate_alert","catalog/model/account/customer/addAffiliate/after","mail/affiliate/alert","1","0");
INSERT INTO oc_event VALUES("20","mail_voucher","catalog/model/checkout/order/addOrderHistory/after","extension/total/voucher/send","1","0");
INSERT INTO oc_event VALUES("21","mail_order_add","catalog/model/checkout/order/addOrderHistory/before","mail/order","1","0");
INSERT INTO oc_event VALUES("22","mail_order_alert","catalog/model/checkout/order/addOrderHistory/before","mail/order/alert","1","0");
INSERT INTO oc_event VALUES("23","statistics_review_add","catalog/model/catalog/review/addReview/after","event/statistics/addReview","1","0");
INSERT INTO oc_event VALUES("24","statistics_return_add","catalog/model/account/return/addReturn/after","event/statistics/addReturn","1","0");
INSERT INTO oc_event VALUES("25","statistics_order_history","catalog/model/checkout/order/addOrderHistory/after","event/statistics/addOrderHistory","1","0");
INSERT INTO oc_event VALUES("26","admin_mail_affiliate_approve","admin/model/customer/customer_approval/approveAffiliate/after","mail/affiliate/approve","1","0");
INSERT INTO oc_event VALUES("27","admin_mail_affiliate_deny","admin/model/customer/customer_approval/denyAffiliate/after","mail/affiliate/deny","1","0");
INSERT INTO oc_event VALUES("28","admin_mail_customer_approve","admin/model/customer/customer_approval/approveCustomer/after","mail/customer/approve","1","0");
INSERT INTO oc_event VALUES("29","admin_mail_customer_deny","admin/model/customer/customer_approval/denyCustomer/after","mail/customer/deny","1","0");
INSERT INTO oc_event VALUES("30","admin_mail_reward","admin/model/customer/customer/addReward/after","mail/reward","1","0");
INSERT INTO oc_event VALUES("31","admin_mail_transaction","admin/model/customer/customer/addTransaction/after","mail/transaction","1","0");
INSERT INTO oc_event VALUES("32","admin_mail_return","admin/model/sale/return/addReturn/after","mail/return","1","0");
INSERT INTO oc_event VALUES("33","admin_mail_forgotten","admin/model/user/user/editCode/after","mail/forgotten","1","0");
INSERT INTO oc_event VALUES("34","amazon_login","catalog/controller/account/logout/after","extension/module/amazon_login/logout","1","0");
INSERT INTO oc_event VALUES("38","d_admin_menu","admin/view/common/column_left/after","extension/module/d_admin_menu/view_column_left_after","1","0");
INSERT INTO oc_event VALUES("39","d_admin_menu","admin/view/common/column_left/before","extension/module/d_admin_menu/view_column_left_before","1","0");
INSERT INTO oc_event VALUES("40","d_admin_menu_script","admin/view/common/header/before","extension/module/d_admin_menu/view_column_left_scripts_before","1","0");
INSERT INTO oc_event VALUES("41","digitcart_admin_tab","admin/view/common/footer/after","extension/module/digitcart_admin_tab/adminViewCommonFooterAfter","1","0");
INSERT INTO oc_event VALUES("42","payment_mastercard_pgs","catalog/controller/checkout/checkout/before","extension/payment/mastercard_pgs/init","1","0");
INSERT INTO oc_event VALUES("43","payment_mastercard_pgs","admin/model/customer/customer/deleteCustomer/before","extension/payment/mastercard_pgs/delete_tokens","1","0");



DROP TABLE oc_extension;

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

INSERT INTO oc_extension VALUES("49","shipping","weight");
INSERT INTO oc_extension VALUES("2","total","shipping");
INSERT INTO oc_extension VALUES("3","total","sub_total");
INSERT INTO oc_extension VALUES("4","total","tax");
INSERT INTO oc_extension VALUES("5","total","total");
INSERT INTO oc_extension VALUES("6","module","banner");
INSERT INTO oc_extension VALUES("7","module","carousel");
INSERT INTO oc_extension VALUES("8","total","credit");
INSERT INTO oc_extension VALUES("10","total","handling");
INSERT INTO oc_extension VALUES("11","total","low_order_fee");
INSERT INTO oc_extension VALUES("12","total","coupon");
INSERT INTO oc_extension VALUES("13","module","category");
INSERT INTO oc_extension VALUES("14","module","account");
INSERT INTO oc_extension VALUES("15","total","reward");
INSERT INTO oc_extension VALUES("16","total","voucher");
INSERT INTO oc_extension VALUES("109","payment","kartpay");
INSERT INTO oc_extension VALUES("56","module","featured");
INSERT INTO oc_extension VALUES("19","module","slideshow");
INSERT INTO oc_extension VALUES("20","theme","default");
INSERT INTO oc_extension VALUES("21","dashboard","activity");
INSERT INTO oc_extension VALUES("22","dashboard","sale");
INSERT INTO oc_extension VALUES("23","dashboard","recent");
INSERT INTO oc_extension VALUES("24","dashboard","order");
INSERT INTO oc_extension VALUES("25","dashboard","online");
INSERT INTO oc_extension VALUES("26","dashboard","map");
INSERT INTO oc_extension VALUES("27","dashboard","customer");
INSERT INTO oc_extension VALUES("28","dashboard","chart");
INSERT INTO oc_extension VALUES("29","report","sale_coupon");
INSERT INTO oc_extension VALUES("31","report","customer_search");
INSERT INTO oc_extension VALUES("32","report","customer_transaction");
INSERT INTO oc_extension VALUES("33","report","product_purchased");
INSERT INTO oc_extension VALUES("34","report","product_viewed");
INSERT INTO oc_extension VALUES("35","report","sale_return");
INSERT INTO oc_extension VALUES("36","report","sale_order");
INSERT INTO oc_extension VALUES("37","report","sale_shipping");
INSERT INTO oc_extension VALUES("38","report","sale_tax");
INSERT INTO oc_extension VALUES("39","report","customer_activity");
INSERT INTO oc_extension VALUES("40","report","customer_order");
INSERT INTO oc_extension VALUES("41","report","customer_reward");
INSERT INTO oc_extension VALUES("42","module","store");
INSERT INTO oc_extension VALUES("43","module","amazon_login");
INSERT INTO oc_extension VALUES("55","payment","ccavenuepay");
INSERT INTO oc_extension VALUES("46","payment","bank_transfer");
INSERT INTO oc_extension VALUES("48","module","amazon_pay");
INSERT INTO oc_extension VALUES("53","module","bestseller");
INSERT INTO oc_extension VALUES("54","shipping","item");
INSERT INTO oc_extension VALUES("57","module","special");
INSERT INTO oc_extension VALUES("58","module","google_hangouts");
INSERT INTO oc_extension VALUES("59","module","latest");
INSERT INTO oc_extension VALUES("60","analytics","google");
INSERT INTO oc_extension VALUES("61","captcha","basic");
INSERT INTO oc_extension VALUES("62","captcha","google");
INSERT INTO oc_extension VALUES("64","payment","cheque");
INSERT INTO oc_extension VALUES("69","module","cart_reminder");
INSERT INTO oc_extension VALUES("68","module","pavquickview");
INSERT INTO oc_extension VALUES("71","module","filter");
INSERT INTO oc_extension VALUES("72","module","hubtalk");
INSERT INTO oc_extension VALUES("73","module","pavuserpopup");
INSERT INTO oc_extension VALUES("74","module","d_ajax_search");
INSERT INTO oc_extension VALUES("75","module","scrollUp");
INSERT INTO oc_extension VALUES("76","module","d_export_import");
INSERT INTO oc_extension VALUES("77","module","outofstocknotification");
INSERT INTO oc_extension VALUES("88","module","digitcart_admin_tab");
INSERT INTO oc_extension VALUES("86","module","d_social_like");
INSERT INTO oc_extension VALUES("87","module","laybuy_layout");
INSERT INTO oc_extension VALUES("85","module","d_admin_menu");
INSERT INTO oc_extension VALUES("89","module","recent_product");
INSERT INTO oc_extension VALUES("90","module","digitcart_buyer_review");
INSERT INTO oc_extension VALUES("91","payment","paytm");
INSERT INTO oc_extension VALUES("92","payment","cashfree");
INSERT INTO oc_extension VALUES("93","payment","pumbolt");
INSERT INTO oc_extension VALUES("94","payment","instamojo");
INSERT INTO oc_extension VALUES("95","payment","paykun");
INSERT INTO oc_extension VALUES("96","payment","razorpay");
INSERT INTO oc_extension VALUES("97","payment","mastercard_pgs");
INSERT INTO oc_extension VALUES("108","module","price_slider");
INSERT INTO oc_extension VALUES("100","payment","qpay");
INSERT INTO oc_extension VALUES("110","module","accubackup");
INSERT INTO oc_extension VALUES("103","payment","partially");
INSERT INTO oc_extension VALUES("104","module","customer_service");
INSERT INTO oc_extension VALUES("105","payment","telr");
INSERT INTO oc_extension VALUES("106","payment","payza");
INSERT INTO oc_extension VALUES("107","payment","paynetz");
INSERT INTO oc_extension VALUES("111","payment","pzopencart");
INSERT INTO oc_extension VALUES("112","payment","tnp");
INSERT INTO oc_extension VALUES("118","payment","payzen");
INSERT INTO oc_extension VALUES("119","payment","fonePaisa");
INSERT INTO oc_extension VALUES("120","payment","paynear");
INSERT INTO oc_extension VALUES("121","payment","bhartipay");
INSERT INTO oc_extension VALUES("122","payment","avantgarde");



DROP TABLE oc_extension_install;

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

INSERT INTO oc_extension_install VALUES("7","0","shipwayopencart30x.ocmod.zip","2018-02-17 13:53:17");
INSERT INTO oc_extension_install VALUES("8","0","pavuserpopup.ocmod.zip","2018-02-17 14:55:09");
INSERT INTO oc_extension_install VALUES("9","0","pavstorelocator.ocmod.zip","2018-02-17 15:03:01");
INSERT INTO oc_extension_install VALUES("10","0","pavquickview.ocmod.zip","2018-02-17 15:16:12");
INSERT INTO oc_extension_install VALUES("11","0","homelink.ocmod.zip","2018-02-17 15:30:48");
INSERT INTO oc_extension_install VALUES("12","0","apptuse.ocmod.zip","2018-02-17 15:34:44");
INSERT INTO oc_extension_install VALUES("13","0","invoicebarcode.ocmod.zip","2018-02-17 15:38:21");
INSERT INTO oc_extension_install VALUES("14","0","notovarnobuyv113020.ocmod.zip","2018-02-17 15:41:03");
INSERT INTO oc_extension_install VALUES("15","0","cartreminderOC3-XV1-2.ocmod.zip","2018-02-17 15:46:18");
INSERT INTO oc_extension_install VALUES("16","0","DisableRightClick.ocmod.zip","2018-02-17 15:56:46");
INSERT INTO oc_extension_install VALUES("17","0","ShowModuleLinkAtLeftMenu.ocmod.zip","2018-02-17 16:01:27");
INSERT INTO oc_extension_install VALUES("18","0","peace.ocmod.zip","2018-02-18 15:04:34");
INSERT INTO oc_extension_install VALUES("19","0","dexportimportcompiledoc3.0.2.0.v2.1.5.ocmod.zip","2018-02-18 15:12:07");
INSERT INTO oc_extension_install VALUES("20","0","2.0.x-2.1.x-OC-logistics.ocmod.zip","2018-02-18 15:20:02");
INSERT INTO oc_extension_install VALUES("21","0","Opencart-Catalog-Product-hide-when-stock-zero.v3-1.0.ocmod.zip","2018-02-18 15:22:36");
INSERT INTO oc_extension_install VALUES("22","0","OC3020adminrecaptcha.ocmod.zip","2018-02-18 15:40:52");
INSERT INTO oc_extension_install VALUES("23","0","twofactorauthentication-admin-3020.ocmod.zip","2018-02-18 15:46:49");
INSERT INTO oc_extension_install VALUES("24","0","twofactorauthentication-admin-3020.ocmod.zip","2018-02-18 15:51:23");
INSERT INTO oc_extension_install VALUES("25","0","ajaxfilter.ocmod.zip","2018-02-20 15:47:01");
INSERT INTO oc_extension_install VALUES("26","0","Opencart-Catalog-Menu-Home-button.v3-1.0.ocmod.zip","2018-02-20 15:51:06");
INSERT INTO oc_extension_install VALUES("27","0","Scrollup3xFree.ocmod.zip","2018-02-20 15:53:47");
INSERT INTO oc_extension_install VALUES("28","0","hubtalkoc30.ocmod.zip","2018-02-20 15:57:49");
INSERT INTO oc_extension_install VALUES("29","0","shipwayopencart30x.ocmod.zip","2018-02-24 06:37:40");
INSERT INTO oc_extension_install VALUES("30","1253879","Live Ajax Search FREE - dajaxsearchcompiledoc3.0.2.0.v6.1.0.ocmod.zip","2018-04-05 17:15:05");
INSERT INTO oc_extension_install VALUES("31","1254813","Hide Account Menu if not Logged - hideaccountmenu.ocmod.zip","2018-04-05 17:17:17");
INSERT INTO oc_extension_install VALUES("32","1251989","Admin Login Captch - OC3020adminrecaptcha.ocmod.zip","2018-04-05 17:19:47");
INSERT INTO oc_extension_install VALUES("33","1252297","Free MOC Add HOME button in menu bar for default template - install-addhome-button-v3.ocmod.zip","2018-04-05 17:22:37");
INSERT INTO oc_extension_install VALUES("34","1252296","Two Factor Authentication for admin panel - twofactorauthentication-admin-30201.ocmod.zip","2018-04-05 17:24:20");
INSERT INTO oc_extension_install VALUES("35","1245158","Export/Import Tool - opencart-3-x-export-import-multilingual-3-20-cloud.ocmod.zip","2018-04-05 17:25:26");
INSERT INTO oc_extension_install VALUES("36","1250796","Pav User Popup Quick Login - Opencart 3 Module - pavuserpopup.ocmod.zip","2018-04-05 17:30:16");
INSERT INTO oc_extension_install VALUES("37","1250406","Out of Stock Notification in Cart Page VQMOD / OCMOD - outofstocknotificationv30xx.ocmod.zip","2018-04-05 17:33:09");
INSERT INTO oc_extension_install VALUES("44","1250767","Social Like FREE (Google+, LinkedIn) - dsociallikecompiledoc3.0.2.0.v3.0.1.ocmod.zip","2018-04-14 14:20:48");
INSERT INTO oc_extension_install VALUES("39","1255068","Best Preloader Loading Page 3.x - PreloaderLoadingPage.ocmod.zip","2018-04-06 03:12:38");
INSERT INTO oc_extension_install VALUES("40","1254391","Admin boxes toggle expand/collapse - Admin boxes expand OC3.x.ocmod.zip","2018-04-06 03:18:52");
INSERT INTO oc_extension_install VALUES("41","1254720","QuickSave for Products, Categories, Manufacturers and Infos - quicksave-3x.ocmod.zip","2018-04-06 03:21:37");
INSERT INTO oc_extension_install VALUES("42","1248806","Admin Menu Editor - dadminmenucompiledoc3.0.2.0.v1.0.6.ocmod.zip","2018-04-06 03:22:51");
INSERT INTO oc_extension_install VALUES("43","1250999","Indian Rupee Symbol (OCMOD) - indianrupeessymbolv30xx.ocmod.zip","2018-04-06 03:25:13");
INSERT INTO oc_extension_install VALUES("45","1250751","Blog Module FREE - dblogmodulecompiledoc3.0.2.0.v3.0.12.ocmod.zip","2018-04-14 14:23:06");
INSERT INTO oc_extension_install VALUES("48","1255135","Beautiful animation add to cart 3.x - animAddCart.ocmod.zip","2018-04-14 14:30:41");
INSERT INTO oc_extension_install VALUES("47","1255232","Admin Order same/detailed email as customer - samecustomeremailtoadmin.ocmod.zip","2018-04-14 14:30:24");
INSERT INTO oc_extension_install VALUES("49","1254159","Remember Active Tabs In Admin - remember-tabs-admin-v1.0-oc3.0-event.ocmod.zip","2018-04-14 14:35:56");
INSERT INTO oc_extension_install VALUES("50","1250387","Recently View Products - recentlyviewedproducts.ocmod.zip","2018-04-14 14:37:57");
INSERT INTO oc_extension_install VALUES("51","1246868","Review form available only for buyers - digitcartbuyerreview3.0.ocmod.zip","2018-04-14 14:41:22");
INSERT INTO oc_extension_install VALUES("52","1255287","Captcha On Admin Login Page - adminrecaptcha3.x-DmitryJ.ocmod.zip","2018-07-20 11:07:29");
INSERT INTO oc_extension_install VALUES("53","1252098","Customer Service - Customer-Service-OC3.0.x.ocmod.zip","2018-07-20 11:10:56");
INSERT INTO oc_extension_install VALUES("54","0","OpencartBOLTPayUmoneyModule.ocmod.zip","2018-10-16 17:07:49");
INSERT INTO oc_extension_install VALUES("57","0","Instamojo-OpenCart-3.x.ocmod.zip","2018-11-03 08:00:43");
INSERT INTO oc_extension_install VALUES("58","0","mastercard_pgs.ocmod.zip","2018-11-05 16:08:01");
INSERT INTO oc_extension_install VALUES("61","0","OpencartMultivendor3Free.ocmod.zip","2018-12-10 07:44:36");
INSERT INTO oc_extension_install VALUES("72","0","PayZen_IN_OpenCart_2.3.x_v3.1.0.ocmod.zip","2019-02-14 09:26:05");
INSERT INTO oc_extension_install VALUES("63","1254811","Partial.ly Payment Plans - partially-v1.0.1oc3.ocmod.zip","2018-12-29 08:43:12");
INSERT INTO oc_extension_install VALUES("64","1252886","Animated Scroll To Top � All Themes - totop3.ocmod.zip","2018-12-29 08:46:48");
INSERT INTO oc_extension_install VALUES("65","1248047","Product - Hide when stock zero - Opencart-Catalog-Product-hide-when-stock-zero.v3-1.0.ocmod.zip","2018-12-29 08:48:30");
INSERT INTO oc_extension_install VALUES("66","0","whatapp-order.ocmod.zip","2019-01-17 16:26:30");
INSERT INTO oc_extension_install VALUES("67","0","priceslider.ocmod.zip","2019-01-17 17:05:18");
INSERT INTO oc_extension_install VALUES("68","0","mainslideshoweffect.ocmod.zip","2019-01-17 17:30:17");
INSERT INTO oc_extension_install VALUES("69","0","ocmod-editor.oc30.ocmod.zip","2019-01-19 16:27:43");
INSERT INTO oc_extension_install VALUES("70","0","whatapp-order.ocmod.zip","2019-01-19 17:23:05");
INSERT INTO oc_extension_install VALUES("71","0","Accubakcup.ocmod.zip","2019-01-20 07:58:50");
INSERT INTO oc_extension_install VALUES("73","0","linksysInfo-opencart2.3-V1.2.0.ocmod.zip","2020-06-17 18:01:20");
INSERT INTO oc_extension_install VALUES("74","0","linksysInfo-opencart2.3-V1.2.0.ocmod.zip","2020-06-17 18:21:55");



DROP TABLE oc_extension_path;

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5402 DEFAULT CHARSET=utf8;

INSERT INTO oc_extension_path VALUES("1","8","admin/controller/extension/module/pavuserpopup.php","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("2","8","catalog/controller/extension/module/pavuserpopup.php","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("3","8","catalog/view/javascript/jquery/pavuserpopup.css","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("4","8","catalog/view/javascript/jquery/pavuserpopup.js","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("5","8","admin/language/en-gb/extension/module/pavuserpopup.php","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("6","8","admin/view/template/extension/module/pavuserpopup.twig","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("7","8","catalog/language/en-gb/extension/module/pavuserpopup.php","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("8","8","catalog/view/theme/default/template/extension/module/pavuserpopup.twig","2018-02-17 14:55:17");
INSERT INTO oc_extension_path VALUES("9","9","image/catalog/cluster-icon.png","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("10","9","image/catalog/marker-close.png","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("11","9","image/catalog/marker-icon.png","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("12","9","admin/model/extension/pavstorelocator","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("13","9","admin/controller/extension/module/pavstorelocator.php","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("14","9","admin/model/extension/pavstorelocator/location.php","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("15","9","catalog/controller/extension/module/pavstorelocator.php","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("16","9","catalog/model/extension/module/pavstorelocator.php","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("17","9","catalog/view/javascript/jquery/infobox.js","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("18","9","catalog/view/javascript/jquery/jquery.fitvids.js","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("19","9","catalog/view/javascript/jquery/markerclusterer.js","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("20","9","catalog/view/javascript/jquery/pavstorelocator.css","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("21","9","catalog/view/javascript/jquery/pavstorelocator.js","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("22","9","catalog/view/javascript/jquery/perfect-scrollbar.jquery.min.js","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("23","9","admin/language/en-gb/extension/module/pavstorelocator.php","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("24","9","admin/view/template/extension/module/pavstorelocator.twig","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("25","9","catalog/language/en-gb/extension/module/pavstorelocator.php","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("26","9","catalog/view/theme/default/template/extension/module/pavstorelocator","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("27","9","catalog/view/theme/default/template/extension/module/pavstorelocator/default.twig","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("28","9","catalog/view/theme/default/template/extension/module/pavstorelocator/horizontal.twig","2018-02-17 15:03:04");
INSERT INTO oc_extension_path VALUES("29","10","admin/controller/extension/module/pavquickview.php","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("30","10","catalog/controller/extension/module/pavquickview.php","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("31","10","catalog/view/javascript/jquery/pavquickview.css","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("32","10","catalog/view/javascript/jquery/pavquickview.js","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("33","10","admin/language/en-gb/extension/module/pavquickview.php","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("34","10","admin/view/template/extension/module/pavquickview.twig","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("35","10","catalog/language/en-gb/extension/module/pavquickview.php","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("36","10","catalog/view/theme/default/template/extension/module/pavquickview.twig","2018-02-17 15:16:15");
INSERT INTO oc_extension_path VALUES("37","12","admin/controller/extension/apptuse.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("38","12","admin/model/extension/apptuse.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("39","12","catalog/controller/extension/apptuse","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("40","12","admin/language/en-gb/extension/apptuse.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("41","12","admin/view/template/extension/apptuse_store.twig","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("42","12","catalog/controller/extension/apptuse/apptuse.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("43","12","catalog/controller/extension/apptuse/cart.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("44","12","catalog/controller/extension/apptuse/product.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("45","12","catalog/controller/extension/apptuse/products.php","2018-02-17 15:34:48");
INSERT INTO oc_extension_path VALUES("46","15","admin/controller/extension/module/cart_reminder.php","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("47","15","catalog/controller/extension/module/cart_reminder.php","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("48","15","admin/language/en-gb/extension/module/cart_reminder.php","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("49","15","admin/view/template/extension/module/cart_reminder.twig","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("50","15","catalog/language/en-gb/extension/module/cart_reminder.php","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("51","15","catalog/view/theme/default/image/cart_reminder_button.png","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("52","15","catalog/view/theme/default/template/extension/module/cart_reminder.twig","2018-02-17 15:46:21");
INSERT INTO oc_extension_path VALUES("53","18","catalog/view/javascript/pace","2018-02-18 15:04:38");
INSERT INTO oc_extension_path VALUES("54","18","catalog/view/javascript/pace/pace.css","2018-02-18 15:04:38");
INSERT INTO oc_extension_path VALUES("55","18","catalog/view/javascript/pace/pace.min.js","2018-02-18 15:04:38");
INSERT INTO oc_extension_path VALUES("56","19","admin/language/english","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("57","19","system/config/d_export_import","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("58","19","system/config/d_export_import.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("59","19","system/library/SpreadsheetReader","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("60","19","system/library/d_shopunity","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("61","19","system/library/xlsxwriter.class.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("62","19","admin/controller/extension/d_export_import","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("63","19","admin/language/english/extension","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("64","19","admin/model/extension/d_export_import","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("65","19","admin/model/extension/d_opencart_patch","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("66","19","admin/model/extension/module","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("67","19","admin/view/javascript/d_export_import","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("68","19","admin/view/javascript/d_riot","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("69","19","catalog/model/extension/d_opencart_patch","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("70","19","catalog/view/javascript/d_riot","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("71","19","system/config/d_export_import/product.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("72","19","system/config/d_export_import/product_3x.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("73","19","system/library/SpreadsheetReader/SpreadsheetReader.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("74","19","system/library/SpreadsheetReader/SpreadsheetReader_CSV.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("75","19","system/library/SpreadsheetReader/SpreadsheetReader_ODS.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("76","19","system/library/SpreadsheetReader/SpreadsheetReader_XLS.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("77","19","system/library/SpreadsheetReader/SpreadsheetReader_XLSX.php","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("78","19","system/library/SpreadsheetReader/XmlIterator","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("79","19","system/library/SpreadsheetReader/php-excel-reader","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("80","19","system/library/d_shopunity/extension","2018-02-18 15:12:12");
INSERT INTO oc_extension_path VALUES("81","19","system/library/d_shopunity/install","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("82","19","system/library/d_shopunity/readme","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("83","19","admin/controller/extension/d_export_import/excel.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("84","19","admin/controller/extension/d_export_import/setting.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("85","19","admin/controller/extension/module/d_export_import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("86","19","admin/language/en-gb/extension/d_export_import","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("87","19","admin/language/en-gb/extension/d_export_import_module","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("88","19","admin/language/english/extension/d_export_import","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("89","19","admin/language/english/extension/d_export_import_module","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("90","19","admin/language/english/extension/module","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("91","19","admin/model/extension/d_export_import/export.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("92","19","admin/model/extension/d_export_import/import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("93","19","admin/model/extension/d_opencart_patch/event.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("94","19","admin/model/extension/d_opencart_patch/extension.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("95","19","admin/model/extension/d_opencart_patch/load.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("96","19","admin/model/extension/d_opencart_patch/modification.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("97","19","admin/model/extension/d_opencart_patch/module.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("98","19","admin/model/extension/d_opencart_patch/setting.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("99","19","admin/model/extension/d_opencart_patch/store.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("100","19","admin/model/extension/d_opencart_patch/url.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("101","19","admin/model/extension/d_opencart_patch/user.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("102","19","admin/model/extension/d_opencart_patch/vqmod.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("103","19","admin/model/extension/module/d_export_import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("104","19","admin/model/extension/module/d_twig_manager.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("105","19","admin/view/javascript/d_export_import/d_export_import.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("106","19","admin/view/javascript/d_export_import/library","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("107","19","admin/view/javascript/d_riot/package.json","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("108","19","admin/view/javascript/d_riot/riot+compiler.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("109","19","admin/view/javascript/d_riot/riot+compiler.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("110","19","admin/view/javascript/d_riot/riot.csp.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("111","19","admin/view/javascript/d_riot/riot.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("112","19","admin/view/javascript/d_riot/riot.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("113","19","admin/view/javascript/d_riot/riotcompiler.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("114","19","admin/view/javascript/d_riot/riotcompiler.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("115","19","admin/view/template/extension/d_export_import","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("116","19","catalog/model/extension/d_opencart_patch/load.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("117","19","catalog/model/extension/d_opencart_patch/user.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("118","19","catalog/view/javascript/d_riot/package.json","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("119","19","catalog/view/javascript/d_riot/riot+compiler.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("120","19","catalog/view/javascript/d_riot/riot+compiler.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("121","19","catalog/view/javascript/d_riot/riot.csp.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("122","19","catalog/view/javascript/d_riot/riot.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("123","19","catalog/view/javascript/d_riot/riot.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("124","19","catalog/view/javascript/d_riot/riotcompiler.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("125","19","catalog/view/javascript/d_riot/riotcompiler.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("126","19","system/library/SpreadsheetReader/XmlIterator/Utf8Filter.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("127","19","system/library/SpreadsheetReader/XmlIterator/XmlIterator.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("128","19","system/library/SpreadsheetReader/php-excel-reader/excel_reader2.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("129","19","system/library/d_shopunity/extension/d_export_import.json","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("130","19","system/library/d_shopunity/extension/d_opencart_patch.json","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("131","19","system/library/d_shopunity/extension/d_riot.json","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("132","19","system/library/d_shopunity/extension/d_twig_manager.json","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("133","19","system/library/d_shopunity/install/d_opencart_patch.xml","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("134","19","system/library/d_shopunity/install/d_twig_manager.xml","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("135","19","system/library/d_shopunity/readme/d_opencart_patch.md","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("136","19","admin/language/en-gb/extension/d_export_import/excel.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("137","19","admin/language/en-gb/extension/d_export_import/export.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("138","19","admin/language/en-gb/extension/d_export_import/import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("139","19","admin/language/en-gb/extension/d_export_import/setting.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("140","19","admin/language/en-gb/extension/d_export_import_module/product.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("141","19","admin/language/en-gb/extension/d_export_import_module/product_3x.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("142","19","admin/language/en-gb/extension/module/d_export_import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("143","19","admin/language/english/extension/d_export_import/excel.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("144","19","admin/language/english/extension/d_export_import/export.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("145","19","admin/language/english/extension/d_export_import/import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("146","19","admin/language/english/extension/d_export_import/setting.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("147","19","admin/language/english/extension/d_export_import_module/product.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("148","19","admin/language/english/extension/d_export_import_module/product_3x.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("149","19","admin/language/english/extension/module/d_export_import.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("150","19","admin/view/javascript/d_export_import/library/jquery.serializejson.min.js","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("151","19","admin/view/template/extension/d_export_import/excel.twig","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("152","19","admin/view/template/extension/d_export_import/partials","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("153","19","admin/view/template/extension/d_export_import/setting.twig","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("154","19","admin/view/template/extension/d_export_import/tags","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("155","19","system/library/template/Twig/Extension/DTwigManager.php","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("156","19","admin/view/template/extension/d_export_import/partials/tabs.twig","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("157","19","admin/view/template/extension/d_export_import/tags/ei_progress.tag","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("158","19","admin/view/template/extension/d_export_import/tags/ei_progress_modal.tag","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("159","19","admin/view/template/extension/d_export_import/tags/ei_setting_modal.tag","2018-02-18 15:12:13");
INSERT INTO oc_extension_path VALUES("160","23","admin/language/nl-nl","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("161","23","system/library/Providers","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("162","23","system/library/TwoFactorAuth.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("163","23","system/library/TwoFactorAuthException.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("164","23","admin/controller/extension/tfa","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("165","23","admin/controller/extension/tfa.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("166","23","admin/controller/extension/tfaauthenticate.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("167","23","admin/language/nl-nl/extension","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("168","23","admin/model/extension/tfa","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("169","23","system/library/Providers/Qr","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("170","23","system/library/Providers/Rng","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("171","23","system/library/Providers/Time","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("172","23","admin/controller/extension/tfa/setup.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("173","23","admin/language/en-gb/extension/tfa","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("174","23","admin/language/nl-nl/extension/tfa","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("175","23","admin/model/extension/tfa/user.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("176","23","admin/view/template/extension/tfa","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("177","23","system/library/Providers/Qr/BaseHTTPQRCodeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("178","23","system/library/Providers/Qr/GoogleQRCodeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("179","23","system/library/Providers/Qr/IQRCodeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("180","23","system/library/Providers/Qr/QRException.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("181","23","system/library/Providers/Qr/QRServerProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("182","23","system/library/Providers/Qr/QRicketProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("183","23","system/library/Providers/Rng/CSRNGProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("184","23","system/library/Providers/Rng/HashRNGProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("185","23","system/library/Providers/Rng/IRNGProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("186","23","system/library/Providers/Rng/MCryptRNGProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("187","23","system/library/Providers/Rng/OpenSSLRNGProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("188","23","system/library/Providers/Rng/RNGException.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("189","23","system/library/Providers/Time/ConvertUnixTimeDotComTimeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("190","23","system/library/Providers/Time/HttpTimeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("191","23","system/library/Providers/Time/ITimeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("192","23","system/library/Providers/Time/LocalMachineTimeProvider.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("193","23","system/library/Providers/Time/TimeException.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("194","23","admin/language/en-gb/extension/tfa/authenticate.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("195","23","admin/language/en-gb/extension/tfa/setup.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("196","23","admin/language/nl-nl/extension/tfa/authenticate.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("197","23","admin/language/nl-nl/extension/tfa/setup.php","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("198","23","admin/view/template/extension/tfa/authenticate.twig","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("199","23","admin/view/template/extension/tfa/setup.twig","2018-02-18 15:46:58");
INSERT INTO oc_extension_path VALUES("200","24","system/library/TwoFactorAuth.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("201","24","system/library/TwoFactorAuthException.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("202","24","admin/controller/extension/tfa.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("203","24","admin/controller/extension/tfaauthenticate.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("204","24","admin/controller/extension/tfa/setup.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("205","24","admin/model/extension/tfa/user.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("206","24","system/library/Providers/Qr/BaseHTTPQRCodeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("207","24","system/library/Providers/Qr/GoogleQRCodeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("208","24","system/library/Providers/Qr/IQRCodeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("209","24","system/library/Providers/Qr/QRException.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("210","24","system/library/Providers/Qr/QRServerProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("211","24","system/library/Providers/Qr/QRicketProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("212","24","system/library/Providers/Rng/CSRNGProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("213","24","system/library/Providers/Rng/HashRNGProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("214","24","system/library/Providers/Rng/IRNGProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("215","24","system/library/Providers/Rng/MCryptRNGProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("216","24","system/library/Providers/Rng/OpenSSLRNGProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("217","24","system/library/Providers/Rng/RNGException.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("218","24","system/library/Providers/Time/ConvertUnixTimeDotComTimeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("219","24","system/library/Providers/Time/HttpTimeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("220","24","system/library/Providers/Time/ITimeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("221","24","system/library/Providers/Time/LocalMachineTimeProvider.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("222","24","system/library/Providers/Time/TimeException.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("223","24","admin/language/en-gb/extension/tfa/authenticate.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("224","24","admin/language/en-gb/extension/tfa/setup.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("225","24","admin/language/nl-nl/extension/tfa/authenticate.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("226","24","admin/language/nl-nl/extension/tfa/setup.php","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("227","24","admin/view/template/extension/tfa/authenticate.twig","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("228","24","admin/view/template/extension/tfa/setup.twig","2018-02-18 15:51:30");
INSERT INTO oc_extension_path VALUES("229","27","admin/view/image/up-arrow10.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("230","27","admin/view/image/up-arrow11.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("231","27","admin/view/image/up-arrow12.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("232","27","admin/view/image/up-arrow13.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("233","27","admin/view/image/up-arrow14.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("234","27","admin/view/image/up-arrow15.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("235","27","admin/view/image/up-arrow16.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("236","27","admin/view/image/up-arrow17.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("237","27","admin/view/image/up-arrow19.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("238","27","admin/view/image/up-arrow2.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("239","27","admin/view/image/up-arrow20.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("240","27","admin/view/image/up-arrow21.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("241","27","admin/view/image/up-arrow22.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("242","27","admin/view/image/up-arrow23.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("243","27","admin/view/image/up-arrow24.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("244","27","admin/view/image/up-arrow25.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("245","27","admin/view/image/up-arrow3.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("246","27","admin/view/image/up-arrow4.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("247","27","admin/view/image/up-arrow5.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("248","27","admin/view/image/up-arrow6.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("249","27","admin/view/image/up-arrow7.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("250","27","admin/view/image/up-arrow8.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("251","27","admin/view/image/up-arrow9.png","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("252","27","admin/controller/extension/module/scrollUp.php","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("253","27","admin/language/en-gb/extension/module/scrollUp.php","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("254","27","admin/view/template/extension/module/scrollUp.twig","2018-02-20 15:53:53");
INSERT INTO oc_extension_path VALUES("255","28","admin/controller/extension/module/hubtalk.php","2018-02-20 15:57:53");
INSERT INTO oc_extension_path VALUES("256","28","catalog/controller/extension/module/hubtalk.php","2018-02-20 15:57:53");
INSERT INTO oc_extension_path VALUES("257","28","admin/language/en-gb/extension/module/hubtalk.php","2018-02-20 15:57:53");
INSERT INTO oc_extension_path VALUES("258","28","admin/view/template/extension/module/hubtalk.twig","2018-02-20 15:57:53");
INSERT INTO oc_extension_path VALUES("259","28","catalog/view/theme/default/template/extension/module/hubtalk.twig","2018-02-20 15:57:53");
INSERT INTO oc_extension_path VALUES("260","30","image/catalog/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("261","30","system/config/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("262","30","system/config/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("263","30","system/config/d_event_manager.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("264","30","system/library/d_simple_html_dom.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("265","30","admin/controller/extension/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("266","30","admin/view/image/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("267","30","admin/view/javascript/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("268","30","admin/view/javascript/d_bootstrap_switch","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("269","30","admin/view/javascript/d_rubaxa_sortable","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("270","30","admin/view/stylesheet/d_bootstrap_extra","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("271","30","catalog/view/javascript/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("272","30","catalog/view/javascript/d_bootstrap_switch","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("273","30","catalog/view/javascript/d_rubaxa_sortable","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("274","30","image/catalog/d_ajax_search/no_image_search.png","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("275","30","system/config/d_ajax_search/product_simple.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("276","30","admin/controller/extension/d_ajax_search/product_simple.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("277","30","admin/controller/extension/module/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("278","30","admin/model/extension/d_opencart_patch/event.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("279","30","admin/model/extension/d_opencart_patch/extension.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("280","30","admin/model/extension/d_opencart_patch/load.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("281","30","admin/model/extension/d_opencart_patch/modification.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("282","30","admin/model/extension/d_opencart_patch/module.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("283","30","admin/model/extension/d_opencart_patch/setting.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("284","30","admin/model/extension/d_opencart_patch/store.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("285","30","admin/model/extension/d_opencart_patch/url.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("286","30","admin/model/extension/d_opencart_patch/user.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("287","30","admin/model/extension/d_opencart_patch/vqmod.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("288","30","admin/model/extension/module/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("289","30","admin/model/extension/module/d_event_manager.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("290","30","admin/model/extension/module/d_twig_manager.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("291","30","admin/view/image/d_ajax_search/d_ajax_search_code_source.png","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("292","30","admin/view/image/d_ajax_search/d_ajax_search_result_dropdown.png","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("293","30","admin/view/javascript/d_ajax_search/d_ajax_search.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("294","30","admin/view/javascript/d_ajax_search/d_design.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("295","30","admin/view/javascript/d_ajax_search/jquery.tinysort.min.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("296","30","admin/view/javascript/d_bootstrap_switch/css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("297","30","admin/view/javascript/d_bootstrap_switch/js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("298","30","admin/view/javascript/d_rubaxa_sortable/jquery.binding.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("299","30","admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("300","30","admin/view/javascript/d_rubaxa_sortable/ng-sortable.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("301","30","admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("302","30","admin/view/javascript/d_rubaxa_sortable/sortable.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("303","30","admin/view/javascript/d_rubaxa_sortable/sortable.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("304","30","admin/view/javascript/d_rubaxa_sortable/sortable.min.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("305","30","admin/view/stylesheet/d_bootstrap_extra/bootstrap.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("306","30","admin/view/template/extension/d_ajax_search","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("307","30","catalog/controller/extension/module/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("308","30","catalog/model/extension/d_opencart_patch/load.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("309","30","catalog/model/extension/d_opencart_patch/user.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("310","30","catalog/model/extension/module/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("311","30","catalog/view/javascript/d_ajax_search/jquery.tinysort.min.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("312","30","catalog/view/javascript/d_bootstrap_switch/css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("313","30","catalog/view/javascript/d_bootstrap_switch/js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("314","30","catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("315","30","catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("316","30","catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("317","30","catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("318","30","catalog/view/javascript/d_rubaxa_sortable/sortable.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("319","30","catalog/view/javascript/d_rubaxa_sortable/sortable.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("320","30","catalog/view/javascript/d_rubaxa_sortable/sortable.min.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("321","30","system/library/d_shopunity/extension/d_ajax_search.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("322","30","system/library/d_shopunity/extension/d_bootstrap_extra.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("323","30","system/library/d_shopunity/extension/d_bootstrap_switch.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("324","30","system/library/d_shopunity/extension/d_event_manager.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("325","30","system/library/d_shopunity/extension/d_opencart_patch.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("326","30","system/library/d_shopunity/extension/d_rubaxa_sortable.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("327","30","system/library/d_shopunity/extension/d_simple_html_dom.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("328","30","system/library/d_shopunity/extension/d_twig_manager.json","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("329","30","system/library/d_shopunity/install/d_ajax_search.xml","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("330","30","system/library/d_shopunity/install/d_opencart_patch.xml","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("331","30","system/library/d_shopunity/install/d_twig_manager.xml","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("332","30","system/library/d_shopunity/readme/d_opencart_patch.md","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("333","30","admin/language/en-gb/extension/module/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("334","30","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("335","30","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("336","30","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("337","30","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("338","30","admin/view/template/extension/d_ajax_search/customer_search_history.twig","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("339","30","admin/view/template/extension/module/d_ajax_search.twig","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("340","30","catalog/language/en-gb/extension/module/d_ajax_search.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("341","30","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("342","30","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("343","30","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("344","30","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("345","30","catalog/view/theme/default/stylesheet/d_ajax_search.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("346","30","catalog/view/theme/default/stylesheet/d_ajax_search_mobile.css","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("347","30","system/library/template/Twig/Extension/DTwigManager.php","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("348","30","catalog/view/theme/default/template/extension/module/d_ajax_search.twig","2018-04-05 17:15:08");
INSERT INTO oc_extension_path VALUES("349","34","admin/language/nl-nl","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("350","34","system/library/TwoFactorAuth.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("351","34","system/library/TwoFactorAuthException.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("352","34","admin/controller/extension/tfa.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("353","34","admin/controller/extension/tfaauthenticate.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("354","34","admin/language/nl-nl/extension","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("355","34","admin/controller/extension/tfa/setup.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("356","34","admin/language/nl-nl/extension/tfa","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("357","34","admin/model/extension/tfa/user.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("358","34","system/library/Providers/Qr/BaseHTTPQRCodeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("359","34","system/library/Providers/Qr/GoogleQRCodeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("360","34","system/library/Providers/Qr/IQRCodeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("361","34","system/library/Providers/Qr/QRException.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("362","34","system/library/Providers/Qr/QRServerProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("363","34","system/library/Providers/Qr/QRicketProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("364","34","system/library/Providers/Rng/CSRNGProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("365","34","system/library/Providers/Rng/HashRNGProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("366","34","system/library/Providers/Rng/IRNGProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("367","34","system/library/Providers/Rng/MCryptRNGProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("368","34","system/library/Providers/Rng/OpenSSLRNGProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("369","34","system/library/Providers/Rng/RNGException.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("370","34","system/library/Providers/Time/ConvertUnixTimeDotComTimeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("371","34","system/library/Providers/Time/HttpTimeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("372","34","system/library/Providers/Time/ITimeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("373","34","system/library/Providers/Time/LocalMachineTimeProvider.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("374","34","system/library/Providers/Time/TimeException.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("375","34","admin/language/en-gb/extension/tfa/authenticate.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("376","34","admin/language/en-gb/extension/tfa/setup.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("377","34","admin/language/nl-nl/extension/tfa/authenticate.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("378","34","admin/language/nl-nl/extension/tfa/setup.php","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("379","34","admin/view/template/extension/tfa/authenticate.twig","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("380","34","admin/view/template/extension/tfa/setup.twig","2018-04-05 17:24:22");
INSERT INTO oc_extension_path VALUES("381","35","system/library/export_import","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("382","35","admin/controller/extension/export_import.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("383","35","admin/model/extension/export_import.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("384","35","admin/view/image/export-import","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("385","35","admin/view/stylesheet/export_import.css","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("386","35","system/library/export_import/Classes","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("387","35","admin/language/en-gb/extension/export_import.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("388","35","admin/view/image/export-import/loading.gif","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("389","35","admin/view/template/extension/export_import.twig","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("390","35","system/library/export_import/Classes/PHPExcel","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("391","35","system/library/export_import/Classes/PHPExcel.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("392","35","system/library/export_import/Classes/PHPExcel/Autoloader.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("393","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("394","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("395","35","system/library/export_import/Classes/PHPExcel/CalcEngine","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("396","35","system/library/export_import/Classes/PHPExcel/Calculation","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("397","35","system/library/export_import/Classes/PHPExcel/Calculation.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("398","35","system/library/export_import/Classes/PHPExcel/Cell","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("399","35","system/library/export_import/Classes/PHPExcel/Cell.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("400","35","system/library/export_import/Classes/PHPExcel/Chart","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("401","35","system/library/export_import/Classes/PHPExcel/Chart.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("402","35","system/library/export_import/Classes/PHPExcel/Comment.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("403","35","system/library/export_import/Classes/PHPExcel/DocumentProperties.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("404","35","system/library/export_import/Classes/PHPExcel/DocumentSecurity.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("405","35","system/library/export_import/Classes/PHPExcel/Exception.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("406","35","system/library/export_import/Classes/PHPExcel/HashTable.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("407","35","system/library/export_import/Classes/PHPExcel/Helper","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("408","35","system/library/export_import/Classes/PHPExcel/IComparable.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("409","35","system/library/export_import/Classes/PHPExcel/IOFactory.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("410","35","system/library/export_import/Classes/PHPExcel/NamedRange.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("411","35","system/library/export_import/Classes/PHPExcel/Reader","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("412","35","system/library/export_import/Classes/PHPExcel/ReferenceHelper.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("413","35","system/library/export_import/Classes/PHPExcel/RichText","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("414","35","system/library/export_import/Classes/PHPExcel/RichText.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("415","35","system/library/export_import/Classes/PHPExcel/Settings.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("416","35","system/library/export_import/Classes/PHPExcel/Shared","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("417","35","system/library/export_import/Classes/PHPExcel/Style","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("418","35","system/library/export_import/Classes/PHPExcel/Style.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("419","35","system/library/export_import/Classes/PHPExcel/Worksheet","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("420","35","system/library/export_import/Classes/PHPExcel/Worksheet.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("421","35","system/library/export_import/Classes/PHPExcel/WorksheetIterator.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("422","35","system/library/export_import/Classes/PHPExcel/Writer","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("423","35","system/library/export_import/Classes/PHPExcel/locale","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("424","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("425","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("426","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("427","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("428","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("429","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("430","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("431","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("432","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("433","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("434","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("435","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("436","35","system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("437","35","system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("438","35","system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("439","35","system/library/export_import/Classes/PHPExcel/Calculation/Database.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("440","35","system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("441","35","system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("442","35","system/library/export_import/Classes/PHPExcel/Calculation/Exception.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("443","35","system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("444","35","system/library/export_import/Classes/PHPExcel/Calculation/Financial.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("445","35","system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("446","35","system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("447","35","system/library/export_import/Classes/PHPExcel/Calculation/Function.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("448","35","system/library/export_import/Classes/PHPExcel/Calculation/Functions.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("449","35","system/library/export_import/Classes/PHPExcel/Calculation/Logical.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("450","35","system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("451","35","system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("452","35","system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("453","35","system/library/export_import/Classes/PHPExcel/Calculation/TextData.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("454","35","system/library/export_import/Classes/PHPExcel/Calculation/Token","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("455","35","system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("456","35","system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("457","35","system/library/export_import/Classes/PHPExcel/Cell/DataType.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("458","35","system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("459","35","system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("460","35","system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("461","35","system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("462","35","system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("463","35","system/library/export_import/Classes/PHPExcel/Chart/Axis.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("464","35","system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("465","35","system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("466","35","system/library/export_import/Classes/PHPExcel/Chart/Exception.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("467","35","system/library/export_import/Classes/PHPExcel/Chart/GridLines.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("468","35","system/library/export_import/Classes/PHPExcel/Chart/Layout.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("469","35","system/library/export_import/Classes/PHPExcel/Chart/Legend.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("470","35","system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("471","35","system/library/export_import/Classes/PHPExcel/Chart/Properties.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("472","35","system/library/export_import/Classes/PHPExcel/Chart/Renderer","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("473","35","system/library/export_import/Classes/PHPExcel/Chart/Title.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("474","35","system/library/export_import/Classes/PHPExcel/Helper/HTML.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("475","35","system/library/export_import/Classes/PHPExcel/Reader/Abstract.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("476","35","system/library/export_import/Classes/PHPExcel/Reader/CSV.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("477","35","system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("478","35","system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("479","35","system/library/export_import/Classes/PHPExcel/Reader/Excel2007","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("480","35","system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("481","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("482","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("483","35","system/library/export_import/Classes/PHPExcel/Reader/Exception.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("484","35","system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("485","35","system/library/export_import/Classes/PHPExcel/Reader/HTML.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("486","35","system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("487","35","system/library/export_import/Classes/PHPExcel/Reader/IReader.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("488","35","system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("489","35","system/library/export_import/Classes/PHPExcel/Reader/SYLK.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("490","35","system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("491","35","system/library/export_import/Classes/PHPExcel/RichText/Run.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("492","35","system/library/export_import/Classes/PHPExcel/RichText/TextElement.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("493","35","system/library/export_import/Classes/PHPExcel/Shared/CodePage.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("494","35","system/library/export_import/Classes/PHPExcel/Shared/Date.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("495","35","system/library/export_import/Classes/PHPExcel/Shared/Drawing.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("496","35","system/library/export_import/Classes/PHPExcel/Shared/Escher","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("497","35","system/library/export_import/Classes/PHPExcel/Shared/Escher.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("498","35","system/library/export_import/Classes/PHPExcel/Shared/Excel5.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("499","35","system/library/export_import/Classes/PHPExcel/Shared/File.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("500","35","system/library/export_import/Classes/PHPExcel/Shared/Font.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("501","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("502","35","system/library/export_import/Classes/PHPExcel/Shared/OLE","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("503","35","system/library/export_import/Classes/PHPExcel/Shared/OLE.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("504","35","system/library/export_import/Classes/PHPExcel/Shared/OLERead.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("505","35","system/library/export_import/Classes/PHPExcel/Shared/PCLZip","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("506","35","system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("507","35","system/library/export_import/Classes/PHPExcel/Shared/String.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("508","35","system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("509","35","system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("510","35","system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("511","35","system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("512","35","system/library/export_import/Classes/PHPExcel/Shared/trend","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("513","35","system/library/export_import/Classes/PHPExcel/Style/Alignment.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("514","35","system/library/export_import/Classes/PHPExcel/Style/Border.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("515","35","system/library/export_import/Classes/PHPExcel/Style/Borders.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("516","35","system/library/export_import/Classes/PHPExcel/Style/Color.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("517","35","system/library/export_import/Classes/PHPExcel/Style/Conditional.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("518","35","system/library/export_import/Classes/PHPExcel/Style/Fill.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("519","35","system/library/export_import/Classes/PHPExcel/Style/Font.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("520","35","system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("521","35","system/library/export_import/Classes/PHPExcel/Style/Protection.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("522","35","system/library/export_import/Classes/PHPExcel/Style/Supervisor.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("523","35","system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("524","35","system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("525","35","system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("526","35","system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("527","35","system/library/export_import/Classes/PHPExcel/Worksheet/Column.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("528","35","system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("529","35","system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("530","35","system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("531","35","system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("532","35","system/library/export_import/Classes/PHPExcel/Worksheet/Drawing","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("533","35","system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("534","35","system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("535","35","system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("536","35","system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("537","35","system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("538","35","system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("539","35","system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("540","35","system/library/export_import/Classes/PHPExcel/Worksheet/Row.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("541","35","system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("542","35","system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("543","35","system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("544","35","system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("545","35","system/library/export_import/Classes/PHPExcel/Writer/Abstract.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("546","35","system/library/export_import/Classes/PHPExcel/Writer/CSV.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("547","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("548","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("549","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("550","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("551","35","system/library/export_import/Classes/PHPExcel/Writer/Exception.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("552","35","system/library/export_import/Classes/PHPExcel/Writer/HTML.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("553","35","system/library/export_import/Classes/PHPExcel/Writer/IWriter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("554","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("555","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("556","35","system/library/export_import/Classes/PHPExcel/Writer/PDF","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("557","35","system/library/export_import/Classes/PHPExcel/Writer/PDF.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("558","35","system/library/export_import/Classes/PHPExcel/locale/bg","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("559","35","system/library/export_import/Classes/PHPExcel/locale/cs","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("560","35","system/library/export_import/Classes/PHPExcel/locale/da","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("561","35","system/library/export_import/Classes/PHPExcel/locale/de","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("562","35","system/library/export_import/Classes/PHPExcel/locale/en","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("563","35","system/library/export_import/Classes/PHPExcel/locale/es","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("564","35","system/library/export_import/Classes/PHPExcel/locale/fi","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("565","35","system/library/export_import/Classes/PHPExcel/locale/fr","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("566","35","system/library/export_import/Classes/PHPExcel/locale/hu","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("567","35","system/library/export_import/Classes/PHPExcel/locale/it","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("568","35","system/library/export_import/Classes/PHPExcel/locale/nl","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("569","35","system/library/export_import/Classes/PHPExcel/locale/no","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("570","35","system/library/export_import/Classes/PHPExcel/locale/pl","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("571","35","system/library/export_import/Classes/PHPExcel/locale/pt","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("572","35","system/library/export_import/Classes/PHPExcel/locale/ru","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("573","35","system/library/export_import/Classes/PHPExcel/locale/sv","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("574","35","system/library/export_import/Classes/PHPExcel/locale/tr","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("575","35","system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("576","35","system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("577","35","system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("578","35","system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("579","35","system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("580","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("581","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("582","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("583","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("584","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("585","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("586","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("587","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("588","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("589","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("590","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("591","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("592","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("593","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("594","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("595","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("596","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("597","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("598","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("599","35","system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("600","35","system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("601","35","system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("602","35","system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("603","35","system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("604","35","system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("605","35","system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("606","35","system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("607","35","system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("608","35","system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("609","35","system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("610","35","system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("611","35","system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("612","35","system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("613","35","system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("614","35","system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("615","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("616","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("617","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("618","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("619","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("620","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("621","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("622","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("623","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("624","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("625","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("626","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("627","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("628","35","system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("629","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("630","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("631","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("632","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("633","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("634","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("635","35","system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("636","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("637","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("638","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("639","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("640","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("641","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("642","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("643","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("644","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("645","35","system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("646","35","system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("647","35","system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("648","35","system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("649","35","system/library/export_import/Classes/PHPExcel/locale/bg/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("650","35","system/library/export_import/Classes/PHPExcel/locale/cs/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("651","35","system/library/export_import/Classes/PHPExcel/locale/cs/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("652","35","system/library/export_import/Classes/PHPExcel/locale/da/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("653","35","system/library/export_import/Classes/PHPExcel/locale/da/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("654","35","system/library/export_import/Classes/PHPExcel/locale/de/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("655","35","system/library/export_import/Classes/PHPExcel/locale/de/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("656","35","system/library/export_import/Classes/PHPExcel/locale/en/uk","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("657","35","system/library/export_import/Classes/PHPExcel/locale/es/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("658","35","system/library/export_import/Classes/PHPExcel/locale/es/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("659","35","system/library/export_import/Classes/PHPExcel/locale/fi/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("660","35","system/library/export_import/Classes/PHPExcel/locale/fi/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("661","35","system/library/export_import/Classes/PHPExcel/locale/fr/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("662","35","system/library/export_import/Classes/PHPExcel/locale/fr/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("663","35","system/library/export_import/Classes/PHPExcel/locale/hu/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("664","35","system/library/export_import/Classes/PHPExcel/locale/hu/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("665","35","system/library/export_import/Classes/PHPExcel/locale/it/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("666","35","system/library/export_import/Classes/PHPExcel/locale/it/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("667","35","system/library/export_import/Classes/PHPExcel/locale/nl/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("668","35","system/library/export_import/Classes/PHPExcel/locale/nl/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("669","35","system/library/export_import/Classes/PHPExcel/locale/no/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("670","35","system/library/export_import/Classes/PHPExcel/locale/no/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("671","35","system/library/export_import/Classes/PHPExcel/locale/pl/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("672","35","system/library/export_import/Classes/PHPExcel/locale/pl/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("673","35","system/library/export_import/Classes/PHPExcel/locale/pt/br","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("674","35","system/library/export_import/Classes/PHPExcel/locale/pt/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("675","35","system/library/export_import/Classes/PHPExcel/locale/pt/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("676","35","system/library/export_import/Classes/PHPExcel/locale/ru/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("677","35","system/library/export_import/Classes/PHPExcel/locale/ru/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("678","35","system/library/export_import/Classes/PHPExcel/locale/sv/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("679","35","system/library/export_import/Classes/PHPExcel/locale/sv/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("680","35","system/library/export_import/Classes/PHPExcel/locale/tr/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("681","35","system/library/export_import/Classes/PHPExcel/locale/tr/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("682","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("683","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("684","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("685","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("686","35","system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("687","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("688","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("689","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("690","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("691","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("692","35","system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("693","35","system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("694","35","system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("695","35","system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("696","35","system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("697","35","system/library/export_import/Classes/PHPExcel/locale/en/uk/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("698","35","system/library/export_import/Classes/PHPExcel/locale/pt/br/config","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("699","35","system/library/export_import/Classes/PHPExcel/locale/pt/br/functions","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("700","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("701","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("702","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("703","35","system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php","2018-04-05 17:25:33");
INSERT INTO oc_extension_path VALUES("704","36","admin/controller/extension/module/pavuserpopup.php","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("705","36","catalog/controller/extension/module/pavuserpopup.php","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("706","36","catalog/view/javascript/jquery/pavuserpopup.css","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("707","36","catalog/view/javascript/jquery/pavuserpopup.js","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("708","36","admin/language/en-gb/extension/module/pavuserpopup.php","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("709","36","admin/view/template/extension/module/pavuserpopup.twig","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("710","36","catalog/language/en-gb/extension/module/pavuserpopup.php","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("711","36","catalog/view/theme/default/template/extension/module/pavuserpopup.twig","2018-04-05 17:30:18");
INSERT INTO oc_extension_path VALUES("712","37","admin/controller/extension/module/outofstocknotification.php","2018-04-05 17:33:11");
INSERT INTO oc_extension_path VALUES("713","37","catalog/language/en-gb/checkout/outofstock.php","2018-04-05 17:33:11");
INSERT INTO oc_extension_path VALUES("714","37","admin/language/en-gb/extension/module/outofstocknotification.php","2018-04-05 17:33:11");
INSERT INTO oc_extension_path VALUES("715","37","admin/view/template/extension/module/outofstocknotification.twig","2018-04-05 17:33:11");
INSERT INTO oc_extension_path VALUES("1440","44","system/config/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1441","44","system/config/d_social_like_metro.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1442","44","admin/view/image/d_social_like","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1443","44","admin/view/javascript/d_bootstrap_colorpicker","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1444","44","admin/view/javascript/d_tinysort","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1445","44","admin/view/stylesheet/d_social_like.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1446","44","catalog/view/javascript/d_bootstrap_colorpicker","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1447","44","catalog/view/javascript/d_tinysort","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1448","44","admin/controller/extension/module/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1449","44","admin/model/extension/d_opencart_patch/event.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1450","44","admin/model/extension/d_opencart_patch/extension.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1451","44","admin/model/extension/d_opencart_patch/load.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1452","44","admin/model/extension/d_opencart_patch/modification.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1453","44","admin/model/extension/d_opencart_patch/module.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1454","44","admin/model/extension/d_opencart_patch/setting.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1455","44","admin/model/extension/d_opencart_patch/store.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1456","44","admin/model/extension/d_opencart_patch/url.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1457","44","admin/model/extension/d_opencart_patch/user.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1458","44","admin/model/extension/d_opencart_patch/vqmod.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1459","44","admin/model/extension/module/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1460","44","admin/model/extension/module/d_twig_manager.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1461","44","admin/view/image/d_social_like/img_1.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1462","44","admin/view/image/d_social_like/img_2.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1463","44","admin/view/javascript/d_bootstrap_colorpicker/css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1464","44","admin/view/javascript/d_bootstrap_colorpicker/img","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1465","44","admin/view/javascript/d_bootstrap_colorpicker/js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1466","44","admin/view/javascript/d_rubaxa_sortable/jquery.binding.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1467","44","admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1468","44","admin/view/javascript/d_rubaxa_sortable/ng-sortable.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1469","44","admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1470","44","admin/view/javascript/d_rubaxa_sortable/sortable.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1471","44","admin/view/javascript/d_rubaxa_sortable/sortable.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1472","44","admin/view/javascript/d_rubaxa_sortable/sortable.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1473","44","admin/view/javascript/d_tinysort/jquery.tinysort.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1474","44","admin/view/javascript/d_tinysort/jquery.tinysort.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1475","44","admin/view/javascript/d_tinysort/tinysort.charorder.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1476","44","admin/view/javascript/d_tinysort/tinysort.charorder.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1477","44","admin/view/javascript/d_tinysort/tinysort.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1478","44","admin/view/javascript/d_tinysort/tinysort.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1479","44","admin/view/stylesheet/d_bootstrap_extra/bootstrap.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1480","44","catalog/controller/extension/module/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1481","44","catalog/model/extension/d_opencart_patch/load.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1482","44","catalog/model/extension/d_opencart_patch/user.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1483","44","catalog/model/extension/module/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1484","44","catalog/view/javascript/d_bootstrap_colorpicker/css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1485","44","catalog/view/javascript/d_bootstrap_colorpicker/img","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1486","44","catalog/view/javascript/d_bootstrap_colorpicker/js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1487","44","catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1488","44","catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1489","44","catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1490","44","catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1491","44","catalog/view/javascript/d_rubaxa_sortable/sortable.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1492","44","catalog/view/javascript/d_rubaxa_sortable/sortable.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1493","44","catalog/view/javascript/d_rubaxa_sortable/sortable.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1494","44","catalog/view/javascript/d_tinysort/jquery.tinysort.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1495","44","catalog/view/javascript/d_tinysort/jquery.tinysort.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1496","44","catalog/view/javascript/d_tinysort/tinysort.charorder.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1497","44","catalog/view/javascript/d_tinysort/tinysort.charorder.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1498","44","catalog/view/javascript/d_tinysort/tinysort.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1499","44","catalog/view/javascript/d_tinysort/tinysort.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1500","44","system/library/d_shopunity/extension/d_bootstrap_colorpicker.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1501","44","system/library/d_shopunity/extension/d_bootstrap_extra.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1502","44","system/library/d_shopunity/extension/d_bootstrap_switch.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1503","44","system/library/d_shopunity/extension/d_opencart_patch.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1504","44","system/library/d_shopunity/extension/d_rubaxa_sortable.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1505","44","system/library/d_shopunity/extension/d_social_like.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1506","44","system/library/d_shopunity/extension/d_tinysort.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1507","44","system/library/d_shopunity/extension/d_twig_manager.json","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1508","44","system/library/d_shopunity/install/d_opencart_patch.xml","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1509","44","system/library/d_shopunity/install/d_twig_manager.xml","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1510","44","system/library/d_shopunity/readme/d_opencart_patch.md","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1511","44","admin/language/en-gb/extension/module/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1512","44","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1513","44","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1514","44","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1515","44","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1516","44","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1517","44","admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1518","44","admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1519","44","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1520","44","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1521","44","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1522","44","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1523","44","admin/view/template/extension/module/d_social_like.twig","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1524","44","catalog/language/en-gb/extension/module/d_social_like.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1525","44","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1526","44","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1527","44","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1528","44","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1529","44","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1530","44","catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1531","44","catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1532","44","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1533","44","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1534","44","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1535","44","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1536","44","catalog/view/theme/default/stylesheet/d_social_like","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1537","44","system/library/template/Twig/Extension/DTwigManager.php","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1538","44","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1539","44","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1540","44","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1541","44","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1542","44","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1543","44","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1544","44","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1545","44","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1546","44","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1547","44","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1548","44","catalog/view/theme/default/stylesheet/d_social_like/d_social_like.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1549","44","catalog/view/theme/default/stylesheet/d_social_like/icons","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1550","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1551","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1552","44","catalog/view/theme/default/template/extension/module/d_social_like.twig","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1553","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square/fonts","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1554","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square/styles.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1555","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard/fonts","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1556","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard/styles.css","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1557","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square/fonts/d-social-like.eot","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1558","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square/fonts/d-social-like.svg","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1559","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square/fonts/d-social-like.ttf","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1560","44","catalog/view/theme/default/stylesheet/d_social_like/icons/square/fonts/d-social-like.woff","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1561","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard/fonts/d-social-like-standard.eot","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1562","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard/fonts/d-social-like-standard.svg","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1563","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard/fonts/d-social-like-standard.ttf","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1564","44","catalog/view/theme/default/stylesheet/d_social_like/icons/standard/fonts/d-social-like-standard.woff","2018-04-14 14:20:50");
INSERT INTO oc_extension_path VALUES("1565","45","image/catalog/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1566","45","system/config/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1567","45","system/config/d_blog_module_demo","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1568","45","system/config/d_blog_module_layout","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1569","45","system/config/d_event_manager.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1570","45","system/config/d_visual_designer_route","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1571","45","system/library/d_simple_html_dom.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1572","45","admin/controller/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1573","45","admin/controller/extension/event","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1574","45","admin/model/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1575","45","admin/view/image/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1576","45","admin/view/javascript/d_bootstrap_bootbox","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1577","45","admin/view/javascript/d_bootstrap_rating","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1578","45","admin/view/javascript/d_fileinput","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1579","45","catalog/controller/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1580","45","catalog/controller/extension/event","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1581","45","catalog/model/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1582","45","catalog/view/javascript/d_bootstrap_bootbox","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1583","45","catalog/view/javascript/d_bootstrap_rating","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1584","45","catalog/view/javascript/d_fileinput","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1585","45","image/catalog/d_blog_module/category","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1586","45","image/catalog/d_blog_module/no_profile_image.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1587","45","image/catalog/d_blog_module/post","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1588","45","image/catalog/d_blog_module/review","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1589","45","system/config/d_ajax_search/blog.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1590","45","system/config/d_blog_module_demo/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1591","45","system/config/d_blog_module_demo/d_blog_module.sql","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1592","45","system/config/d_blog_module_layout/grid.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1593","45","system/config/d_visual_designer_route/d_blog_module_author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1594","45","system/config/d_visual_designer_route/d_blog_module_category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1595","45","system/config/d_visual_designer_route/d_blog_module_post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1596","45","admin/controller/extension/d_ajax_search/blog.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1597","45","admin/controller/extension/d_blog_module/author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1598","45","admin/controller/extension/d_blog_module/author_group.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1599","45","admin/controller/extension/d_blog_module/category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1600","45","admin/controller/extension/d_blog_module/post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1601","45","admin/controller/extension/d_blog_module/review.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1602","45","admin/controller/extension/event/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1603","45","admin/controller/extension/module/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1604","45","admin/language/en-gb/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1605","45","admin/language/en-gb/extension/event","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1606","45","admin/model/extension/d_blog_module/author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1607","45","admin/model/extension/d_blog_module/author_group.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1608","45","admin/model/extension/d_blog_module/category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1609","45","admin/model/extension/d_blog_module/post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1610","45","admin/model/extension/d_blog_module/review.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1611","45","admin/model/extension/d_opencart_patch/event.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1612","45","admin/model/extension/d_opencart_patch/extension.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1613","45","admin/model/extension/d_opencart_patch/load.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1614","45","admin/model/extension/d_opencart_patch/modification.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1615","45","admin/model/extension/d_opencart_patch/module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1616","45","admin/model/extension/d_opencart_patch/setting.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1617","45","admin/model/extension/d_opencart_patch/store.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1618","45","admin/model/extension/d_opencart_patch/url.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1619","45","admin/model/extension/d_opencart_patch/user.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1620","45","admin/model/extension/d_opencart_patch/vqmod.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1621","45","admin/model/extension/module/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1622","45","admin/model/extension/module/d_event_manager.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1623","45","admin/model/extension/module/d_twig_manager.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1624","45","admin/view/image/d_blog_module/welcome.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1625","45","admin/view/image/d_blog_module/welcome.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1626","45","admin/view/javascript/d_bootstrap_bootbox/bootbox.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1627","45","admin/view/javascript/d_bootstrap_bootbox/bootbox.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1628","45","admin/view/javascript/d_bootstrap_rating/bootstrap-rating.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1629","45","admin/view/javascript/d_bootstrap_rating/bootstrap-rating.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1630","45","admin/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1631","45","admin/view/javascript/d_fileinput/CHANGE.md","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1632","45","admin/view/javascript/d_fileinput/LICENSE.md","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1633","45","admin/view/javascript/d_fileinput/bower.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1634","45","admin/view/javascript/d_fileinput/canvas-to-blob.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1635","45","admin/view/javascript/d_fileinput/composer.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1636","45","admin/view/javascript/d_fileinput/css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1637","45","admin/view/javascript/d_fileinput/examples","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1638","45","admin/view/javascript/d_fileinput/fileinput.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1639","45","admin/view/javascript/d_fileinput/fileinput.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1640","45","admin/view/javascript/d_fileinput/img","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1641","45","admin/view/javascript/d_fileinput/js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1642","45","admin/view/javascript/d_fileinput/nuget","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1643","45","admin/view/javascript/d_fileinput/package.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1644","45","admin/view/javascript/d_fileinput/sass","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1645","45","admin/view/javascript/d_fileinput/themes","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1646","45","admin/view/javascript/d_rubaxa_sortable/jquery.binding.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1647","45","admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1648","45","admin/view/javascript/d_rubaxa_sortable/ng-sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1649","45","admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1650","45","admin/view/javascript/d_rubaxa_sortable/sortable.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1651","45","admin/view/javascript/d_rubaxa_sortable/sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1652","45","admin/view/javascript/d_rubaxa_sortable/sortable.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1653","45","admin/view/javascript/d_tinysort/jquery.tinysort.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1654","45","admin/view/javascript/d_tinysort/jquery.tinysort.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1655","45","admin/view/javascript/d_tinysort/tinysort.charorder.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1656","45","admin/view/javascript/d_tinysort/tinysort.charorder.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1657","45","admin/view/javascript/d_tinysort/tinysort.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1658","45","admin/view/javascript/d_tinysort/tinysort.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1659","45","admin/view/template/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1660","45","admin/view/template/extension/event","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1661","45","catalog/controller/extension/d_blog_module/author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1662","45","catalog/controller/extension/d_blog_module/category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1663","45","catalog/controller/extension/d_blog_module/post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1664","45","catalog/controller/extension/d_blog_module/review.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1665","45","catalog/controller/extension/d_blog_module/search.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1666","45","catalog/controller/extension/event/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1667","45","catalog/language/en-gb/extension/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1668","45","catalog/language/en-gb/extension/event","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1669","45","catalog/model/extension/d_blog_module/author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1670","45","catalog/model/extension/d_blog_module/category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1671","45","catalog/model/extension/d_blog_module/post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1672","45","catalog/model/extension/d_blog_module/review.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1673","45","catalog/model/extension/d_opencart_patch/load.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1674","45","catalog/model/extension/d_opencart_patch/user.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1675","45","catalog/model/extension/module/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1676","45","catalog/view/javascript/d_bootstrap_bootbox/bootbox.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1677","45","catalog/view/javascript/d_bootstrap_bootbox/bootbox.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1678","45","catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1679","45","catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1680","45","catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1681","45","catalog/view/javascript/d_fileinput/CHANGE.md","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1682","45","catalog/view/javascript/d_fileinput/LICENSE.md","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1683","45","catalog/view/javascript/d_fileinput/bower.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1684","45","catalog/view/javascript/d_fileinput/canvas-to-blob.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1685","45","catalog/view/javascript/d_fileinput/composer.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1686","45","catalog/view/javascript/d_fileinput/css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1687","45","catalog/view/javascript/d_fileinput/examples","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1688","45","catalog/view/javascript/d_fileinput/fileinput.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1689","45","catalog/view/javascript/d_fileinput/fileinput.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1690","45","catalog/view/javascript/d_fileinput/img","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1691","45","catalog/view/javascript/d_fileinput/js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1692","45","catalog/view/javascript/d_fileinput/nuget","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1693","45","catalog/view/javascript/d_fileinput/package.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1694","45","catalog/view/javascript/d_fileinput/sass","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1695","45","catalog/view/javascript/d_fileinput/themes","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1696","45","catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1697","45","catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1698","45","catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1699","45","catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1700","45","catalog/view/javascript/d_rubaxa_sortable/sortable.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1701","45","catalog/view/javascript/d_rubaxa_sortable/sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1702","45","catalog/view/javascript/d_rubaxa_sortable/sortable.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1703","45","catalog/view/javascript/d_tinysort/jquery.tinysort.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1704","45","catalog/view/javascript/d_tinysort/jquery.tinysort.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1705","45","catalog/view/javascript/d_tinysort/tinysort.charorder.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1706","45","catalog/view/javascript/d_tinysort/tinysort.charorder.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1707","45","catalog/view/javascript/d_tinysort/tinysort.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1708","45","catalog/view/javascript/d_tinysort/tinysort.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1709","45","catalog/view/theme/default/javascript","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1710","45","image/catalog/d_blog_module/category/Photo_blog_11.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1711","45","image/catalog/d_blog_module/category/Photo_blog_12.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1712","45","image/catalog/d_blog_module/category/Photo_blog_13.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1713","45","image/catalog/d_blog_module/category/Photo_blog_14.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1714","45","image/catalog/d_blog_module/category/Photo_blog_15.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1715","45","image/catalog/d_blog_module/category/Photo_blog_16.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1716","45","image/catalog/d_blog_module/category/Photo_blog_17.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1717","45","image/catalog/d_blog_module/category/blog.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1718","45","image/catalog/d_blog_module/post/Photo_blog_1.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1719","45","image/catalog/d_blog_module/post/Photo_blog_10.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1720","45","image/catalog/d_blog_module/post/Photo_blog_2.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1721","45","image/catalog/d_blog_module/post/Photo_blog_3.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1722","45","image/catalog/d_blog_module/post/Photo_blog_4.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1723","45","image/catalog/d_blog_module/post/Photo_blog_5.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1724","45","image/catalog/d_blog_module/post/Photo_blog_6.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1725","45","image/catalog/d_blog_module/post/Photo_blog_7.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1726","45","image/catalog/d_blog_module/post/Photo_blog_8.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1727","45","image/catalog/d_blog_module/post/Photo_blog_9.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1728","45","image/catalog/d_blog_module/post/post-1.jpg","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1729","45","image/catalog/d_blog_module/review/index.html","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1730","45","system/library/d_shopunity/extension/d_blog_module.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1731","45","system/library/d_shopunity/extension/d_bootstrap_bootbox.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1732","45","system/library/d_shopunity/extension/d_bootstrap_colorpicker.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1733","45","system/library/d_shopunity/extension/d_bootstrap_rating.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1734","45","system/library/d_shopunity/extension/d_bootstrap_switch.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1735","45","system/library/d_shopunity/extension/d_event_manager.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1736","45","system/library/d_shopunity/extension/d_fileinput.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1737","45","system/library/d_shopunity/extension/d_opencart_patch.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1738","45","system/library/d_shopunity/extension/d_rubaxa_sortable.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1739","45","system/library/d_shopunity/extension/d_simple_html_dom.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1740","45","system/library/d_shopunity/extension/d_tinysort.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1741","45","system/library/d_shopunity/extension/d_twig_manager.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1742","45","system/library/d_shopunity/extension/d_twig_partial.json","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1743","45","system/library/d_shopunity/install/d_opencart_patch.xml","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1744","45","system/library/d_shopunity/install/d_twig_manager.xml","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1745","45","system/library/d_shopunity/readme/d_opencart_patch.md","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1746","45","admin/language/en-gb/extension/d_blog_module/author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1747","45","admin/language/en-gb/extension/d_blog_module/author_group.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1748","45","admin/language/en-gb/extension/d_blog_module/category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1749","45","admin/language/en-gb/extension/d_blog_module/post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1750","45","admin/language/en-gb/extension/d_blog_module/review.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1751","45","admin/language/en-gb/extension/event/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1752","45","admin/language/en-gb/extension/module/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1753","45","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1754","45","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1755","45","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1756","45","admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1757","45","admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1758","45","admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1759","45","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1760","45","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1761","45","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1762","45","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1763","45","admin/view/javascript/d_fileinput/css/fileinput-rtl.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1764","45","admin/view/javascript/d_fileinput/css/fileinput-rtl.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1765","45","admin/view/javascript/d_fileinput/css/fileinput.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1766","45","admin/view/javascript/d_fileinput/css/fileinput.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1767","45","admin/view/javascript/d_fileinput/examples/index.html","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1768","45","admin/view/javascript/d_fileinput/img/loading-sm.gif","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1769","45","admin/view/javascript/d_fileinput/img/loading.gif","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1770","45","admin/view/javascript/d_fileinput/js/fileinput.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1771","45","admin/view/javascript/d_fileinput/js/fileinput.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1772","45","admin/view/javascript/d_fileinput/js/locales","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1773","45","admin/view/javascript/d_fileinput/js/plugins","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1774","45","admin/view/javascript/d_fileinput/nuget/Package.nuspec","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1775","45","admin/view/javascript/d_fileinput/nuget/build.bat","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1776","45","admin/view/javascript/d_fileinput/sass/fileinput.scss","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1777","45","admin/view/javascript/d_fileinput/themes/explorer","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1778","45","admin/view/javascript/d_fileinput/themes/explorer-fa","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1779","45","admin/view/javascript/d_fileinput/themes/fa","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1780","45","admin/view/javascript/d_fileinput/themes/gly","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1781","45","admin/view/template/extension/d_blog_module/author_form.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1782","45","admin/view/template/extension/d_blog_module/author_group_form.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1783","45","admin/view/template/extension/d_blog_module/author_group_list.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1784","45","admin/view/template/extension/d_blog_module/author_list.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1785","45","admin/view/template/extension/d_blog_module/category_form.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1786","45","admin/view/template/extension/d_blog_module/category_list.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1787","45","admin/view/template/extension/d_blog_module/post_form.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1788","45","admin/view/template/extension/d_blog_module/post_list.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1789","45","admin/view/template/extension/d_blog_module/review_form.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1790","45","admin/view/template/extension/d_blog_module/review_list.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1791","45","admin/view/template/extension/event/d_blog_module.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1792","45","admin/view/template/extension/module/d_blog_module.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1793","45","catalog/language/en-gb/extension/d_blog_module/author.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1794","45","catalog/language/en-gb/extension/d_blog_module/category.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1795","45","catalog/language/en-gb/extension/d_blog_module/post.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1796","45","catalog/language/en-gb/extension/d_blog_module/review.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1797","45","catalog/language/en-gb/extension/d_blog_module/search.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1798","45","catalog/language/en-gb/extension/event/d_blog_module.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1799","45","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1800","45","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1801","45","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1802","45","catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1803","45","catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1804","45","catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1805","45","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1806","45","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1807","45","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1808","45","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1809","45","catalog/view/javascript/d_fileinput/css/fileinput-rtl.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1810","45","catalog/view/javascript/d_fileinput/css/fileinput-rtl.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1811","45","catalog/view/javascript/d_fileinput/css/fileinput.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1812","45","catalog/view/javascript/d_fileinput/css/fileinput.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1813","45","catalog/view/javascript/d_fileinput/examples/index.html","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1814","45","catalog/view/javascript/d_fileinput/img/loading-sm.gif","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1815","45","catalog/view/javascript/d_fileinput/img/loading.gif","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1816","45","catalog/view/javascript/d_fileinput/js/fileinput.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1817","45","catalog/view/javascript/d_fileinput/js/fileinput.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1818","45","catalog/view/javascript/d_fileinput/js/locales","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1819","45","catalog/view/javascript/d_fileinput/js/plugins","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1820","45","catalog/view/javascript/d_fileinput/nuget/Package.nuspec","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1821","45","catalog/view/javascript/d_fileinput/nuget/build.bat","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1822","45","catalog/view/javascript/d_fileinput/sass/fileinput.scss","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1823","45","catalog/view/javascript/d_fileinput/themes/explorer","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1824","45","catalog/view/javascript/d_fileinput/themes/explorer-fa","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1825","45","catalog/view/javascript/d_fileinput/themes/fa","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1826","45","catalog/view/javascript/d_fileinput/themes/gly","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1827","45","catalog/view/theme/default/javascript/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1828","45","catalog/view/theme/default/javascript/partial","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1829","45","catalog/view/theme/default/stylesheet/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1830","45","catalog/view/theme/default/template/d_blog_module","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1831","45","catalog/view/theme/default/template/partial","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1832","45","system/library/template/Twig/Extension/DTwigManager.php","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1833","45","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1834","45","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1835","45","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1836","45","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1837","45","admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1838","45","admin/view/javascript/d_fileinput/js/locales/LANG.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1839","45","admin/view/javascript/d_fileinput/js/locales/ar.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1840","45","admin/view/javascript/d_fileinput/js/locales/az.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1841","45","admin/view/javascript/d_fileinput/js/locales/bg.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1842","45","admin/view/javascript/d_fileinput/js/locales/ca.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1843","45","admin/view/javascript/d_fileinput/js/locales/cr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1844","45","admin/view/javascript/d_fileinput/js/locales/cz.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1845","45","admin/view/javascript/d_fileinput/js/locales/da.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1846","45","admin/view/javascript/d_fileinput/js/locales/de.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1847","45","admin/view/javascript/d_fileinput/js/locales/el.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1848","45","admin/view/javascript/d_fileinput/js/locales/es.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1849","45","admin/view/javascript/d_fileinput/js/locales/et.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1850","45","admin/view/javascript/d_fileinput/js/locales/fa.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1851","45","admin/view/javascript/d_fileinput/js/locales/fi.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1852","45","admin/view/javascript/d_fileinput/js/locales/fr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1853","45","admin/view/javascript/d_fileinput/js/locales/gl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1854","45","admin/view/javascript/d_fileinput/js/locales/hu.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1855","45","admin/view/javascript/d_fileinput/js/locales/id.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1856","45","admin/view/javascript/d_fileinput/js/locales/it.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1857","45","admin/view/javascript/d_fileinput/js/locales/ja.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1858","45","admin/view/javascript/d_fileinput/js/locales/kr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1859","45","admin/view/javascript/d_fileinput/js/locales/kz.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1860","45","admin/view/javascript/d_fileinput/js/locales/nl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1861","45","admin/view/javascript/d_fileinput/js/locales/no.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1862","45","admin/view/javascript/d_fileinput/js/locales/pl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1863","45","admin/view/javascript/d_fileinput/js/locales/pt-BR.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1864","45","admin/view/javascript/d_fileinput/js/locales/pt.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1865","45","admin/view/javascript/d_fileinput/js/locales/ro.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1866","45","admin/view/javascript/d_fileinput/js/locales/ru.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1867","45","admin/view/javascript/d_fileinput/js/locales/sk.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1868","45","admin/view/javascript/d_fileinput/js/locales/sl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1869","45","admin/view/javascript/d_fileinput/js/locales/sv.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1870","45","admin/view/javascript/d_fileinput/js/locales/th.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1871","45","admin/view/javascript/d_fileinput/js/locales/tr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1872","45","admin/view/javascript/d_fileinput/js/locales/uk.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1873","45","admin/view/javascript/d_fileinput/js/locales/vi.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1874","45","admin/view/javascript/d_fileinput/js/locales/zh-TW.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1875","45","admin/view/javascript/d_fileinput/js/locales/zh.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1876","45","admin/view/javascript/d_fileinput/js/plugins/piexif.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1877","45","admin/view/javascript/d_fileinput/js/plugins/piexif.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1878","45","admin/view/javascript/d_fileinput/js/plugins/purify.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1879","45","admin/view/javascript/d_fileinput/js/plugins/purify.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1880","45","admin/view/javascript/d_fileinput/js/plugins/sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1881","45","admin/view/javascript/d_fileinput/js/plugins/sortable.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1882","45","admin/view/javascript/d_fileinput/themes/explorer/theme.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1883","45","admin/view/javascript/d_fileinput/themes/explorer/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1884","45","admin/view/javascript/d_fileinput/themes/explorer/theme.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1885","45","admin/view/javascript/d_fileinput/themes/explorer/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1886","45","admin/view/javascript/d_fileinput/themes/explorer-fa/theme.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1887","45","admin/view/javascript/d_fileinput/themes/explorer-fa/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1888","45","admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1889","45","admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1890","45","admin/view/javascript/d_fileinput/themes/fa/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1891","45","admin/view/javascript/d_fileinput/themes/fa/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1892","45","admin/view/javascript/d_fileinput/themes/gly/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1893","45","admin/view/javascript/d_fileinput/themes/gly/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1894","45","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1895","45","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1896","45","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1897","45","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1898","45","catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1899","45","catalog/view/javascript/d_fileinput/js/locales/LANG.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1900","45","catalog/view/javascript/d_fileinput/js/locales/ar.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1901","45","catalog/view/javascript/d_fileinput/js/locales/az.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1902","45","catalog/view/javascript/d_fileinput/js/locales/bg.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1903","45","catalog/view/javascript/d_fileinput/js/locales/ca.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1904","45","catalog/view/javascript/d_fileinput/js/locales/cr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1905","45","catalog/view/javascript/d_fileinput/js/locales/cz.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1906","45","catalog/view/javascript/d_fileinput/js/locales/da.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1907","45","catalog/view/javascript/d_fileinput/js/locales/de.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1908","45","catalog/view/javascript/d_fileinput/js/locales/el.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1909","45","catalog/view/javascript/d_fileinput/js/locales/es.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1910","45","catalog/view/javascript/d_fileinput/js/locales/et.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1911","45","catalog/view/javascript/d_fileinput/js/locales/fa.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1912","45","catalog/view/javascript/d_fileinput/js/locales/fi.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1913","45","catalog/view/javascript/d_fileinput/js/locales/fr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1914","45","catalog/view/javascript/d_fileinput/js/locales/gl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1915","45","catalog/view/javascript/d_fileinput/js/locales/hu.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1916","45","catalog/view/javascript/d_fileinput/js/locales/id.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1917","45","catalog/view/javascript/d_fileinput/js/locales/it.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1918","45","catalog/view/javascript/d_fileinput/js/locales/ja.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1919","45","catalog/view/javascript/d_fileinput/js/locales/kr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1920","45","catalog/view/javascript/d_fileinput/js/locales/kz.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1921","45","catalog/view/javascript/d_fileinput/js/locales/nl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1922","45","catalog/view/javascript/d_fileinput/js/locales/no.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1923","45","catalog/view/javascript/d_fileinput/js/locales/pl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1924","45","catalog/view/javascript/d_fileinput/js/locales/pt-BR.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1925","45","catalog/view/javascript/d_fileinput/js/locales/pt.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1926","45","catalog/view/javascript/d_fileinput/js/locales/ro.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1927","45","catalog/view/javascript/d_fileinput/js/locales/ru.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1928","45","catalog/view/javascript/d_fileinput/js/locales/sk.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1929","45","catalog/view/javascript/d_fileinput/js/locales/sl.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1930","45","catalog/view/javascript/d_fileinput/js/locales/sv.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1931","45","catalog/view/javascript/d_fileinput/js/locales/th.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1932","45","catalog/view/javascript/d_fileinput/js/locales/tr.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1933","45","catalog/view/javascript/d_fileinput/js/locales/uk.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1934","45","catalog/view/javascript/d_fileinput/js/locales/vi.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1935","45","catalog/view/javascript/d_fileinput/js/locales/zh-TW.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1936","45","catalog/view/javascript/d_fileinput/js/locales/zh.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1937","45","catalog/view/javascript/d_fileinput/js/plugins/piexif.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1938","45","catalog/view/javascript/d_fileinput/js/plugins/piexif.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1939","45","catalog/view/javascript/d_fileinput/js/plugins/purify.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1940","45","catalog/view/javascript/d_fileinput/js/plugins/purify.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1941","45","catalog/view/javascript/d_fileinput/js/plugins/sortable.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1942","45","catalog/view/javascript/d_fileinput/js/plugins/sortable.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1943","45","catalog/view/javascript/d_fileinput/themes/explorer/theme.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1944","45","catalog/view/javascript/d_fileinput/themes/explorer/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1945","45","catalog/view/javascript/d_fileinput/themes/explorer/theme.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1946","45","catalog/view/javascript/d_fileinput/themes/explorer/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1947","45","catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1948","45","catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1949","45","catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1950","45","catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1951","45","catalog/view/javascript/d_fileinput/themes/fa/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1952","45","catalog/view/javascript/d_fileinput/themes/fa/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1953","45","catalog/view/javascript/d_fileinput/themes/gly/theme.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1954","45","catalog/view/javascript/d_fileinput/themes/gly/theme.min.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1955","45","catalog/view/theme/default/javascript/d_blog_module/author.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1956","45","catalog/view/theme/default/javascript/d_blog_module/category.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1957","45","catalog/view/theme/default/javascript/d_blog_module/main.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1958","45","catalog/view/theme/default/javascript/d_blog_module/post.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1959","45","catalog/view/theme/default/javascript/d_blog_module/review.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1960","45","catalog/view/theme/default/javascript/partial/d_address_field.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1961","45","catalog/view/theme/default/javascript/partial/d_custom_field.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1962","45","catalog/view/theme/default/javascript/partial/d_product_sort.js","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1963","45","catalog/view/theme/default/stylesheet/d_blog_module/animate.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1964","45","catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1965","45","catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1966","45","catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.scss","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1967","45","catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1968","45","catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1969","45","catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.scss","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1970","45","catalog/view/theme/default/stylesheet/d_blog_module/theme","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1356","39","catalog/view/javascript/preloader","2018-04-06 03:12:40");
INSERT INTO oc_extension_path VALUES("1357","39","catalog/view/javascript/preloader/loading_page","2018-04-06 03:12:40");
INSERT INTO oc_extension_path VALUES("1358","39","catalog/view/javascript/preloader/loading_page/Preloader_2.gif","2018-04-06 03:12:40");
INSERT INTO oc_extension_path VALUES("1359","39","catalog/view/javascript/preloader/loading_page/modernizr.js","2018-04-06 03:12:40");
INSERT INTO oc_extension_path VALUES("1360","40","admin/view/javascript/como","2018-04-06 03:18:54");
INSERT INTO oc_extension_path VALUES("1361","40","admin/view/javascript/como/como_tools.js","2018-04-06 03:18:54");
INSERT INTO oc_extension_path VALUES("1362","42","system/config/d_admin_menu","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1363","42","system/config/d_event_manager.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1364","42","system/library/d_simple_html_dom.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1365","42","admin/view/javascript/d_admin_menu","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1366","42","admin/view/stylesheet/d_admin_menu","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1367","42","system/config/d_admin_menu/d_admin_menu_201.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1368","42","system/config/d_admin_menu/d_admin_menu_203.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1369","42","system/config/d_admin_menu/d_admin_menu_210.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1370","42","system/config/d_admin_menu/d_admin_menu_230.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1371","42","system/config/d_admin_menu/d_admin_menu_302.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1372","42","admin/controller/extension/module/d_admin_menu.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1373","42","admin/model/extension/d_opencart_patch/event.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1374","42","admin/model/extension/d_opencart_patch/extension.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1375","42","admin/model/extension/d_opencart_patch/load.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1376","42","admin/model/extension/d_opencart_patch/modification.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1377","42","admin/model/extension/d_opencart_patch/module.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1378","42","admin/model/extension/d_opencart_patch/setting.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1379","42","admin/model/extension/d_opencart_patch/store.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1380","42","admin/model/extension/d_opencart_patch/url.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1381","42","admin/model/extension/d_opencart_patch/user.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1382","42","admin/model/extension/d_opencart_patch/vqmod.php","2018-04-06 03:22:53");
INSERT INTO oc_extension_path VALUES("1383","42","admin/model/extension/module/d_admin_menu.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1384","42","admin/model/extension/module/d_event_manager.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1385","42","admin/model/extension/module/d_twig_manager.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1386","42","admin/view/javascript/d_admin_menu/d_admin_menu.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1387","42","admin/view/javascript/d_admin_menu/library","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1388","42","admin/view/stylesheet/d_admin_menu/d_admin_menu.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1389","42","admin/view/stylesheet/d_admin_menu/d_admin_menu_3x.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1390","42","admin/view/stylesheet/d_admin_menu/d_admin_menu_editor.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1391","42","admin/view/stylesheet/d_admin_menu/d_admin_menu_editor.css.map","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1392","42","admin/view/stylesheet/d_admin_menu/d_admin_menu_editor.scss","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1393","42","admin/view/stylesheet/d_admin_menu/library","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1394","42","admin/view/stylesheet/d_bootstrap_extra/bootstrap.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1395","42","catalog/model/extension/d_opencart_patch/load.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1396","42","catalog/model/extension/d_opencart_patch/user.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1397","42","system/library/d_shopunity/extension/d_admin_menu.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1398","42","system/library/d_shopunity/extension/d_bootstrap_extra.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1399","42","system/library/d_shopunity/extension/d_bootstrap_switch.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1400","42","system/library/d_shopunity/extension/d_event_manager.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1401","42","system/library/d_shopunity/extension/d_opencart_patch.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1402","42","system/library/d_shopunity/extension/d_simple_html_dom.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1403","42","system/library/d_shopunity/extension/d_twig_manager.json","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1404","42","system/library/d_shopunity/install/d_admin_menu.xml","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1405","42","system/library/d_shopunity/install/d_opencart_patch.xml","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1406","42","system/library/d_shopunity/install/d_twig_manager.xml","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1407","42","system/library/d_shopunity/readme/d_opencart_patch.md","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1408","42","admin/language/en-gb/extension/module/d_admin_menu.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1409","42","admin/view/javascript/d_admin_menu/library/alertify.min.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1410","42","admin/view/javascript/d_admin_menu/library/fontawesome-iconpicker.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1411","42","admin/view/javascript/d_admin_menu/library/jquery.nestable.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1412","42","admin/view/javascript/d_admin_menu/library/jquery.nestable.nodrag.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1413","42","admin/view/javascript/d_admin_menu/library/serializeObject.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1414","42","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1415","42","admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1416","42","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1417","42","admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1418","42","admin/view/stylesheet/d_admin_menu/library/alertify","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1419","42","admin/view/stylesheet/d_admin_menu/library/fontawesome-iconpicker.min.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1420","42","admin/view/template/extension/module/d_admin_menu","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1421","42","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1422","42","catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1423","42","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1424","42","catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1425","42","system/library/template/Twig/Extension/DTwigManager.php","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1426","42","admin/view/stylesheet/d_admin_menu/library/alertify/alertify.min.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1427","42","admin/view/stylesheet/d_admin_menu/library/alertify/bootstrap-theme.cstm.min.css","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1428","42","admin/view/template/extension/module/d_admin_menu/d_admin_menu.twig","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1429","42","admin/view/template/extension/module/d_admin_menu/d_admin_menu_custom_section.twig","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1430","42","admin/view/template/extension/module/d_admin_menu/d_admin_menu_editor.twig","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1431","42","admin/view/template/extension/module/d_admin_menu/d_admin_menu_standart_section.twig","2018-04-06 03:22:54");
INSERT INTO oc_extension_path VALUES("1432","43","catalog/view/javascript/irsgroup","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1433","43","catalog/view/javascript/irsgroup/ind-font","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1434","43","catalog/view/javascript/irsgroup/ind-font/WebRupee.V2.0.eot","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1435","43","catalog/view/javascript/irsgroup/ind-font/WebRupee.V2.0.svg","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1436","43","catalog/view/javascript/irsgroup/ind-font/WebRupee.V2.0.ttf","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1437","43","catalog/view/javascript/irsgroup/ind-font/WebRupee.V2.0.woff","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1438","43","catalog/view/javascript/irsgroup/ind-font/font.css","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1439","43","catalog/view/javascript/irsgroup/ind-font/inr.js","2018-04-06 03:25:16");
INSERT INTO oc_extension_path VALUES("1971","45","catalog/view/theme/default/template/d_blog_module/author.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1972","45","catalog/view/theme/default/template/d_blog_module/category.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1973","45","catalog/view/theme/default/template/d_blog_module/layout_grid.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1974","45","catalog/view/theme/default/template/d_blog_module/post.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1975","45","catalog/view/theme/default/template/d_blog_module/post_thumb.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1976","45","catalog/view/theme/default/template/d_blog_module/review.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1977","45","catalog/view/theme/default/template/d_blog_module/review_thumb.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1978","45","catalog/view/theme/default/template/d_blog_module/search.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1979","45","catalog/view/theme/default/template/partial/d_account_field.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1980","45","catalog/view/theme/default/template/partial/d_address_field.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1981","45","catalog/view/theme/default/template/partial/d_breadcrumb.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1982","45","catalog/view/theme/default/template/partial/d_button.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1983","45","catalog/view/theme/default/template/partial/d_button_continue.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1984","45","catalog/view/theme/default/template/partial/d_button_submit.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1985","45","catalog/view/theme/default/template/partial/d_custom_field.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1986","45","catalog/view/theme/default/template/partial/d_empty.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1987","45","catalog/view/theme/default/template/partial/d_layout_close.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1988","45","catalog/view/theme/default/template/partial/d_layout_open.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1989","45","catalog/view/theme/default/template/partial/d_name_field.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1990","45","catalog/view/theme/default/template/partial/d_notification.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1991","45","catalog/view/theme/default/template/partial/d_product_sort.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1992","45","catalog/view/theme/default/template/partial/d_product_thumb.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1993","45","catalog/view/theme/default/template/partial/d_rating.twig","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1994","45","catalog/view/theme/default/stylesheet/d_blog_module/theme/default.css","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1995","45","catalog/view/theme/default/stylesheet/d_blog_module/theme/default.css.map","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1996","45","catalog/view/theme/default/stylesheet/d_blog_module/theme/default.scss","2018-04-14 14:23:16");
INSERT INTO oc_extension_path VALUES("1997","49","admin/controller/extension/module/digitcart_admin_tab.php","2018-04-14 14:35:58");
INSERT INTO oc_extension_path VALUES("1998","49","admin/language/en-gb/extension/module/digitcart_admin_tab.php","2018-04-14 14:35:58");
INSERT INTO oc_extension_path VALUES("1999","49","admin/view/template/extension/module/digitcart_admin_tab.twig","2018-04-14 14:35:58");
INSERT INTO oc_extension_path VALUES("2000","50","admin/controller/extension/module/recent_product.php","2018-04-14 14:38:00");
INSERT INTO oc_extension_path VALUES("2001","50","catalog/controller/extension/module/recent_product.php","2018-04-14 14:38:00");
INSERT INTO oc_extension_path VALUES("2002","50","admin/language/en-gb/extension/module/recent_product.php","2018-04-14 14:38:00");
INSERT INTO oc_extension_path VALUES("2003","50","admin/view/template/extension/module/recent_product.twig","2018-04-14 14:38:00");
INSERT INTO oc_extension_path VALUES("2004","50","catalog/language/en-gb/extension/module/recent_product.php","2018-04-14 14:38:00");
INSERT INTO oc_extension_path VALUES("2005","50","catalog/view/theme/default/template/extension/module/recent_product.twig","2018-04-14 14:38:00");
INSERT INTO oc_extension_path VALUES("2006","51","admin/controller/extension/module/digitcart_buyer_review.php","2018-04-14 14:41:24");
INSERT INTO oc_extension_path VALUES("2007","51","admin/language/en-gb/extension/module/digitcart_buyer_review.php","2018-04-14 14:41:24");
INSERT INTO oc_extension_path VALUES("2008","51","admin/view/template/extension/module/digitcart_buyer_review.twig","2018-04-14 14:41:24");
INSERT INTO oc_extension_path VALUES("2009","52","admin/controller/extension/dcaptcha","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2010","52","admin/language/en-gb/Thumbs.db","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2011","52","admin/controller/extension/dcaptcha/basic.php","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2012","52","admin/controller/extension/dcaptcha/google.php","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2013","52","admin/language/en-gb/extension/dcaptcha","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2014","52","admin/view/template/extension/dcaptcha","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2015","52","admin/language/en-gb/extension/dcaptcha/basic.php","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2016","52","admin/language/en-gb/extension/dcaptcha/google.php","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2017","52","admin/view/template/extension/dcaptcha/basic.twig","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2018","52","admin/view/template/extension/dcaptcha/google.twig","2018-07-20 11:07:30");
INSERT INTO oc_extension_path VALUES("2019","53","admin/controller/extension/module/customer_service.php","2018-07-20 11:10:58");
INSERT INTO oc_extension_path VALUES("2020","53","catalog/controller/extension/module/customer_service.php","2018-07-20 11:10:58");
INSERT INTO oc_extension_path VALUES("2021","53","admin/language/en-gb/extension/module/customer_service.php","2018-07-20 11:10:58");
INSERT INTO oc_extension_path VALUES("2022","53","admin/view/template/extension/module/customer_service.twig","2018-07-20 11:10:58");
INSERT INTO oc_extension_path VALUES("2023","53","catalog/language/en-gb/extension/module/customer_service.php","2018-07-20 11:10:58");
INSERT INTO oc_extension_path VALUES("2024","53","catalog/view/theme/default/template/extension/module/customer_service.twig","2018-07-20 11:10:58");
INSERT INTO oc_extension_path VALUES("2025","54","admin/controller/extension/payment/pumbolt.php","2018-10-16 17:07:51");
INSERT INTO oc_extension_path VALUES("2026","54","admin/view/image/payment/payulogo.png","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2027","54","catalog/controller/extension/payment/pumbolt.php","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2028","54","catalog/model/extension/payment/pumbolt.php","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2029","54","admin/language/en-gb/extension/payment/pumbolt.php","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2030","54","admin/view/template/extension/payment/pumbolt.twig","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2031","54","catalog/language/en-gb/extension/payment/pumbolt.php","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2032","54","catalog/view/theme/default/template/extension/payment/pumbolt_cancelled.twig","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2033","54","catalog/view/theme/default/template/extension/payment/pumbolt_failure.twig","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2034","54","catalog/view/theme/default/template/extension/payment/pumbolt_payu.twig","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2035","54","catalog/view/theme/default/template/extension/payment/pumbolt_success.twig","2018-10-16 17:07:52");
INSERT INTO oc_extension_path VALUES("2036","58","admin/controller/extension/payment/mastercard_pgs.php","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2037","58","admin/model/extension/payment/mastercard_pgs.php","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2038","58","admin/view/image/payment/mastercard_pgs.png","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2039","58","catalog/controller/extension/payment/mastercard_pgs.php","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2040","58","catalog/model/extension/payment/mastercard_pgs.php","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2041","58","admin/language/en-gb/extension/payment/mastercard_pgs.php","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2042","58","admin/view/template/extension/payment/mastercard_pgs.twig","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2043","58","admin/view/template/extension/payment/mastercard_pgs_order.twig","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2044","58","admin/view/template/extension/payment/mastercard_pgs_transaction_info.twig","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2045","58","catalog/language/en-gb/extension/payment/mastercard_pgs.php","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2046","58","catalog/view/theme/default/template/extension/payment/mastercard_pgs.twig","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("2047","58","catalog/view/theme/default/template/extension/payment/mastercard_pgs_js.twig","2018-11-05 16:08:02");
INSERT INTO oc_extension_path VALUES("3677","61","admin/language/ar","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3678","61","admin/language/ar-sa","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3679","61","admin/language/de-de","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3680","61","admin/language/es-es","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3681","61","admin/language/fr-fr","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3682","61","admin/language/id-id","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3683","61","admin/language/it-it","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3684","61","admin/language/ja-jp","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3685","61","admin/language/ms-my","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3686","61","admin/language/pt-br","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3687","61","admin/language/ru-ru","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3688","61","admin/language/th-th","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3689","61","admin/language/tl-ph","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3690","61","admin/language/vi-vn","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3691","61","admin/language/zh-cn","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3692","61","admin/language/zh-tw","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3693","61","catalog/language/ar","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3694","61","catalog/language/ar-sa","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3695","61","catalog/language/de-de","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3696","61","catalog/language/english","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3697","61","catalog/language/es-es","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3698","61","catalog/language/fr-fr","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3699","61","catalog/language/id-id","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3700","61","catalog/language/it-it","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3701","61","catalog/language/ja-jp","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3702","61","catalog/language/ms-my","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3703","61","catalog/language/nl-nl","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3704","61","catalog/language/pt-br","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3705","61","catalog/language/ru-ru","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3706","61","catalog/language/th-th","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3707","61","catalog/language/tl-ph","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3708","61","catalog/language/vi-vn","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3709","61","catalog/language/zh-cn","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3710","61","catalog/language/zh-tw","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3711","61","image/catalog/contact_seller.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3712","61","image/catalog/dashboardicon","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3713","61","image/catalog/paypalbutton.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3714","61","image/catalog/purpletree_banner.jpg","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3715","61","admin/controller/extension/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3716","61","admin/language/ar/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3717","61","admin/language/ar/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3718","61","admin/language/ar/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3719","61","admin/language/ar-sa/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3720","61","admin/language/ar-sa/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3721","61","admin/language/ar-sa/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3722","61","admin/language/de-de/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3723","61","admin/language/de-de/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3724","61","admin/language/de-de/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3725","61","admin/language/en-gb/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3726","61","admin/language/english/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3727","61","admin/language/english/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3728","61","admin/language/es-es/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3729","61","admin/language/es-es/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3730","61","admin/language/es-es/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3731","61","admin/language/fr-fr/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3732","61","admin/language/fr-fr/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3733","61","admin/language/fr-fr/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3734","61","admin/language/id-id/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3735","61","admin/language/id-id/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3736","61","admin/language/id-id/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3737","61","admin/language/it-it/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3738","61","admin/language/it-it/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3739","61","admin/language/it-it/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3740","61","admin/language/ja-jp/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3741","61","admin/language/ja-jp/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3742","61","admin/language/ja-jp/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3743","61","admin/language/ms-my/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3744","61","admin/language/ms-my/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3745","61","admin/language/ms-my/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3746","61","admin/language/nl-nl/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3747","61","admin/language/nl-nl/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3748","61","admin/language/pt-br/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3749","61","admin/language/pt-br/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3750","61","admin/language/pt-br/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3751","61","admin/language/ru-ru/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3752","61","admin/language/ru-ru/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3753","61","admin/language/ru-ru/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3754","61","admin/language/th-th/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3755","61","admin/language/th-th/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3756","61","admin/language/th-th/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3757","61","admin/language/tl-ph/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3758","61","admin/language/tl-ph/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3759","61","admin/language/tl-ph/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3760","61","admin/language/vi-vn/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3761","61","admin/language/vi-vn/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3762","61","admin/language/vi-vn/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3763","61","admin/language/zh-cn/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3764","61","admin/language/zh-cn/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3765","61","admin/language/zh-cn/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3766","61","admin/language/zh-tw/customer","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3767","61","admin/language/zh-tw/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3768","61","admin/language/zh-tw/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3769","61","admin/model/extension/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3770","61","catalog/controller/extension/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3771","61","catalog/controller/extension/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3772","61","catalog/language/ar/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3773","61","catalog/language/ar/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3774","61","catalog/language/ar/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3775","61","catalog/language/ar/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3776","61","catalog/language/ar/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3777","61","catalog/language/ar-sa/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3778","61","catalog/language/ar-sa/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3779","61","catalog/language/ar-sa/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3780","61","catalog/language/ar-sa/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3781","61","catalog/language/ar-sa/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3782","61","catalog/language/de-de/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3783","61","catalog/language/de-de/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3784","61","catalog/language/de-de/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3785","61","catalog/language/de-de/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3786","61","catalog/language/de-de/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3787","61","catalog/language/en-gb/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3788","61","catalog/language/en-gb/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3789","61","catalog/language/english/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3790","61","catalog/language/english/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3791","61","catalog/language/english/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3792","61","catalog/language/english/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3793","61","catalog/language/english/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3794","61","catalog/language/es-es/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3795","61","catalog/language/es-es/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3796","61","catalog/language/es-es/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3797","61","catalog/language/es-es/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3798","61","catalog/language/es-es/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3799","61","catalog/language/fr-fr/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3800","61","catalog/language/fr-fr/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3801","61","catalog/language/fr-fr/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3802","61","catalog/language/fr-fr/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3803","61","catalog/language/fr-fr/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3804","61","catalog/language/id-id/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3805","61","catalog/language/id-id/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3806","61","catalog/language/id-id/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3807","61","catalog/language/id-id/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3808","61","catalog/language/id-id/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3809","61","catalog/language/it-it/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3810","61","catalog/language/it-it/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3811","61","catalog/language/it-it/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3812","61","catalog/language/it-it/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3813","61","catalog/language/it-it/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3814","61","catalog/language/ja-jp/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3815","61","catalog/language/ja-jp/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3816","61","catalog/language/ja-jp/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3817","61","catalog/language/ja-jp/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3818","61","catalog/language/ja-jp/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3819","61","catalog/language/ms-my/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3820","61","catalog/language/ms-my/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3821","61","catalog/language/ms-my/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3822","61","catalog/language/ms-my/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3823","61","catalog/language/ms-my/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3824","61","catalog/language/nl-nl/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3825","61","catalog/language/nl-nl/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3826","61","catalog/language/nl-nl/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3827","61","catalog/language/nl-nl/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3828","61","catalog/language/nl-nl/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3829","61","catalog/language/pt-br/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3830","61","catalog/language/pt-br/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3831","61","catalog/language/pt-br/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3832","61","catalog/language/pt-br/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3833","61","catalog/language/pt-br/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3834","61","catalog/language/ru-ru/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3835","61","catalog/language/ru-ru/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3836","61","catalog/language/ru-ru/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3837","61","catalog/language/ru-ru/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3838","61","catalog/language/ru-ru/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3839","61","catalog/language/th-th/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3840","61","catalog/language/th-th/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3841","61","catalog/language/th-th/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3842","61","catalog/language/th-th/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3843","61","catalog/language/th-th/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3844","61","catalog/language/tl-ph/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3845","61","catalog/language/tl-ph/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3846","61","catalog/language/tl-ph/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3847","61","catalog/language/tl-ph/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3848","61","catalog/language/tl-ph/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3849","61","catalog/language/vi-vn/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3850","61","catalog/language/vi-vn/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3851","61","catalog/language/vi-vn/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3852","61","catalog/language/vi-vn/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3853","61","catalog/language/vi-vn/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3854","61","catalog/language/zh-cn/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3855","61","catalog/language/zh-cn/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3856","61","catalog/language/zh-cn/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3857","61","catalog/language/zh-cn/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3858","61","catalog/language/zh-cn/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3859","61","catalog/language/zh-tw/account","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3860","61","catalog/language/zh-tw/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3861","61","catalog/language/zh-tw/common","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3862","61","catalog/language/zh-tw/extension","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3863","61","catalog/language/zh-tw/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3864","61","catalog/model/extension/catalog","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3865","61","catalog/model/extension/localisation","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3866","61","catalog/model/extension/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3867","61","catalog/view/javascript/purpletree","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3868","61","catalog/view/javascript/purpletree_style.js","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3869","61","catalog/view/theme/journal2","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3870","61","image/catalog/dashboardicon/commission.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3871","61","image/catalog/dashboardicon/enquiry.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3872","61","image/catalog/dashboardicon/eye-icon.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3873","61","image/catalog/dashboardicon/icon-prepaid.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3874","61","image/catalog/dashboardicon/invoice.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3875","61","image/catalog/dashboardicon/manage-downloads.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3876","61","image/catalog/dashboardicon/myfinacle.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3877","61","image/catalog/dashboardicon/no_image.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3878","61","image/catalog/dashboardicon/payment.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3879","61","image/catalog/dashboardicon/review-icon-2.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3880","61","image/catalog/dashboardicon/shipping-icon-0.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3881","61","image/catalog/dashboardicon/shipping.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3882","61","image/catalog/dashboardicon/shop.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3883","61","image/catalog/dashboardicon/subscription.png","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3884","61","image/catalog/dashboardicon/view1.jpg","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3885","61","admin/controller/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3886","61","admin/controller/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3887","61","admin/controller/extension/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3888","61","admin/controller/extension/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3889","61","admin/controller/extension/purpletree_multivendor/sellerorders.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3890","61","admin/controller/extension/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3891","61","admin/controller/extension/purpletree_multivendor/sellerreviews.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3892","61","admin/controller/extension/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3893","61","admin/controller/extension/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3894","61","admin/controller/extension/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3895","61","admin/language/ar/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3896","61","admin/language/ar/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3897","61","admin/language/ar/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3898","61","admin/language/ar/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3899","61","admin/language/ar/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3900","61","admin/language/ar/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3901","61","admin/language/ar/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3902","61","admin/language/ar/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3903","61","admin/language/ar/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3904","61","admin/language/ar/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3905","61","admin/language/ar/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3906","61","admin/language/ar/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3907","61","admin/language/ar/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3908","61","admin/language/ar/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3909","61","admin/language/ar/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3910","61","admin/language/ar/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3911","61","admin/language/ar/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3912","61","admin/language/ar/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3913","61","admin/language/ar/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3914","61","admin/language/ar/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3915","61","admin/language/ar/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3916","61","admin/language/ar/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3917","61","admin/language/ar/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3918","61","admin/language/ar-sa/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3919","61","admin/language/ar-sa/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3920","61","admin/language/ar-sa/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3921","61","admin/language/ar-sa/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3922","61","admin/language/ar-sa/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3923","61","admin/language/ar-sa/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3924","61","admin/language/ar-sa/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3925","61","admin/language/ar-sa/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3926","61","admin/language/ar-sa/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3927","61","admin/language/ar-sa/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3928","61","admin/language/ar-sa/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3929","61","admin/language/ar-sa/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3930","61","admin/language/ar-sa/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3931","61","admin/language/ar-sa/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3932","61","admin/language/ar-sa/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3933","61","admin/language/ar-sa/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3934","61","admin/language/ar-sa/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3935","61","admin/language/ar-sa/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3936","61","admin/language/ar-sa/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3937","61","admin/language/ar-sa/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3938","61","admin/language/ar-sa/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3939","61","admin/language/ar-sa/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3940","61","admin/language/ar-sa/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3941","61","admin/language/de-de/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3942","61","admin/language/de-de/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3943","61","admin/language/de-de/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3944","61","admin/language/de-de/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3945","61","admin/language/de-de/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3946","61","admin/language/de-de/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3947","61","admin/language/de-de/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3948","61","admin/language/de-de/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3949","61","admin/language/de-de/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3950","61","admin/language/de-de/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3951","61","admin/language/de-de/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3952","61","admin/language/de-de/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3953","61","admin/language/de-de/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3954","61","admin/language/de-de/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3955","61","admin/language/de-de/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3956","61","admin/language/de-de/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3957","61","admin/language/de-de/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3958","61","admin/language/de-de/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3959","61","admin/language/de-de/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3960","61","admin/language/de-de/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3961","61","admin/language/de-de/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3962","61","admin/language/de-de/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3963","61","admin/language/de-de/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3964","61","admin/language/en-gb/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3965","61","admin/language/en-gb/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3966","61","admin/language/en-gb/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3967","61","admin/language/en-gb/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3968","61","admin/language/en-gb/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3969","61","admin/language/en-gb/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3970","61","admin/language/en-gb/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3971","61","admin/language/en-gb/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3972","61","admin/language/en-gb/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3973","61","admin/language/english/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3974","61","admin/language/english/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3975","61","admin/language/english/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3976","61","admin/language/english/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3977","61","admin/language/english/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3978","61","admin/language/english/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3979","61","admin/language/english/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3980","61","admin/language/english/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3981","61","admin/language/english/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3982","61","admin/language/english/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3983","61","admin/language/english/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3984","61","admin/language/english/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3985","61","admin/language/english/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3986","61","admin/language/english/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3987","61","admin/language/english/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3988","61","admin/language/english/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3989","61","admin/language/english/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3990","61","admin/language/english/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3991","61","admin/language/english/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3992","61","admin/language/english/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3993","61","admin/language/english/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3994","61","admin/language/es-es/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3995","61","admin/language/es-es/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3996","61","admin/language/es-es/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3997","61","admin/language/es-es/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3998","61","admin/language/es-es/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("3999","61","admin/language/es-es/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4000","61","admin/language/es-es/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4001","61","admin/language/es-es/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4002","61","admin/language/es-es/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4003","61","admin/language/es-es/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4004","61","admin/language/es-es/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4005","61","admin/language/es-es/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4006","61","admin/language/es-es/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4007","61","admin/language/es-es/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4008","61","admin/language/es-es/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4009","61","admin/language/es-es/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4010","61","admin/language/es-es/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4011","61","admin/language/es-es/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4012","61","admin/language/es-es/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4013","61","admin/language/es-es/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4014","61","admin/language/es-es/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4015","61","admin/language/es-es/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4016","61","admin/language/es-es/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4017","61","admin/language/fr-fr/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4018","61","admin/language/fr-fr/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4019","61","admin/language/fr-fr/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4020","61","admin/language/fr-fr/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4021","61","admin/language/fr-fr/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4022","61","admin/language/fr-fr/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4023","61","admin/language/fr-fr/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4024","61","admin/language/fr-fr/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4025","61","admin/language/fr-fr/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4026","61","admin/language/fr-fr/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4027","61","admin/language/fr-fr/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4028","61","admin/language/fr-fr/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4029","61","admin/language/fr-fr/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4030","61","admin/language/fr-fr/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4031","61","admin/language/fr-fr/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4032","61","admin/language/fr-fr/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4033","61","admin/language/fr-fr/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4034","61","admin/language/fr-fr/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4035","61","admin/language/fr-fr/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4036","61","admin/language/fr-fr/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4037","61","admin/language/fr-fr/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4038","61","admin/language/fr-fr/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4039","61","admin/language/fr-fr/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4040","61","admin/language/id-id/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4041","61","admin/language/id-id/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4042","61","admin/language/id-id/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4043","61","admin/language/id-id/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4044","61","admin/language/id-id/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4045","61","admin/language/id-id/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4046","61","admin/language/id-id/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4047","61","admin/language/id-id/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4048","61","admin/language/id-id/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4049","61","admin/language/id-id/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4050","61","admin/language/id-id/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4051","61","admin/language/id-id/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4052","61","admin/language/id-id/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4053","61","admin/language/id-id/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4054","61","admin/language/id-id/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4055","61","admin/language/id-id/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4056","61","admin/language/id-id/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4057","61","admin/language/id-id/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4058","61","admin/language/id-id/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4059","61","admin/language/id-id/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4060","61","admin/language/id-id/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4061","61","admin/language/id-id/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4062","61","admin/language/id-id/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4063","61","admin/language/it-it/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4064","61","admin/language/it-it/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4065","61","admin/language/it-it/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4066","61","admin/language/it-it/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4067","61","admin/language/it-it/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4068","61","admin/language/it-it/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4069","61","admin/language/it-it/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4070","61","admin/language/it-it/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4071","61","admin/language/it-it/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4072","61","admin/language/it-it/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4073","61","admin/language/it-it/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4074","61","admin/language/it-it/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4075","61","admin/language/it-it/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4076","61","admin/language/it-it/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4077","61","admin/language/it-it/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4078","61","admin/language/it-it/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4079","61","admin/language/it-it/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4080","61","admin/language/it-it/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4081","61","admin/language/it-it/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4082","61","admin/language/it-it/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4083","61","admin/language/it-it/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4084","61","admin/language/it-it/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4085","61","admin/language/it-it/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4086","61","admin/language/ja-jp/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4087","61","admin/language/ja-jp/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4088","61","admin/language/ja-jp/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4089","61","admin/language/ja-jp/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4090","61","admin/language/ja-jp/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4091","61","admin/language/ja-jp/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4092","61","admin/language/ja-jp/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4093","61","admin/language/ja-jp/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4094","61","admin/language/ja-jp/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4095","61","admin/language/ja-jp/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4096","61","admin/language/ja-jp/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4097","61","admin/language/ja-jp/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4098","61","admin/language/ja-jp/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4099","61","admin/language/ja-jp/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4100","61","admin/language/ja-jp/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4101","61","admin/language/ja-jp/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4102","61","admin/language/ja-jp/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4103","61","admin/language/ja-jp/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4104","61","admin/language/ja-jp/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4105","61","admin/language/ja-jp/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4106","61","admin/language/ja-jp/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4107","61","admin/language/ja-jp/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4108","61","admin/language/ja-jp/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4109","61","admin/language/ms-my/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4110","61","admin/language/ms-my/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4111","61","admin/language/ms-my/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4112","61","admin/language/ms-my/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4113","61","admin/language/ms-my/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4114","61","admin/language/ms-my/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4115","61","admin/language/ms-my/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4116","61","admin/language/ms-my/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4117","61","admin/language/ms-my/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4118","61","admin/language/ms-my/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4119","61","admin/language/ms-my/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4120","61","admin/language/ms-my/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4121","61","admin/language/ms-my/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4122","61","admin/language/ms-my/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4123","61","admin/language/ms-my/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4124","61","admin/language/ms-my/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4125","61","admin/language/ms-my/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4126","61","admin/language/ms-my/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4127","61","admin/language/ms-my/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4128","61","admin/language/ms-my/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4129","61","admin/language/ms-my/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4130","61","admin/language/ms-my/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4131","61","admin/language/ms-my/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4132","61","admin/language/nl-nl/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4133","61","admin/language/nl-nl/extension/Module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4134","61","admin/language/nl-nl/extension/Shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4135","61","admin/language/nl-nl/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4136","61","admin/language/nl-nl/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4137","61","admin/language/nl-nl/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4138","61","admin/language/nl-nl/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4139","61","admin/language/nl-nl/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4140","61","admin/language/nl-nl/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4141","61","admin/language/nl-nl/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4142","61","admin/language/nl-nl/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4143","61","admin/language/nl-nl/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4144","61","admin/language/nl-nl/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4145","61","admin/language/nl-nl/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4146","61","admin/language/nl-nl/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4147","61","admin/language/nl-nl/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4148","61","admin/language/nl-nl/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4149","61","admin/language/nl-nl/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4150","61","admin/language/nl-nl/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4151","61","admin/language/nl-nl/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4152","61","admin/language/nl-nl/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4153","61","admin/language/nl-nl/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4154","61","admin/language/nl-nl/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4155","61","admin/language/pt-br/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4156","61","admin/language/pt-br/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4157","61","admin/language/pt-br/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4158","61","admin/language/pt-br/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4159","61","admin/language/pt-br/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4160","61","admin/language/pt-br/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4161","61","admin/language/pt-br/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4162","61","admin/language/pt-br/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4163","61","admin/language/pt-br/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4164","61","admin/language/pt-br/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4165","61","admin/language/pt-br/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4166","61","admin/language/pt-br/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4167","61","admin/language/pt-br/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4168","61","admin/language/pt-br/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4169","61","admin/language/pt-br/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4170","61","admin/language/pt-br/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4171","61","admin/language/pt-br/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4172","61","admin/language/pt-br/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4173","61","admin/language/pt-br/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4174","61","admin/language/pt-br/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4175","61","admin/language/pt-br/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4176","61","admin/language/pt-br/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4177","61","admin/language/pt-br/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4178","61","admin/language/ru-ru/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4179","61","admin/language/ru-ru/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4180","61","admin/language/ru-ru/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4181","61","admin/language/ru-ru/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4182","61","admin/language/ru-ru/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4183","61","admin/language/ru-ru/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4184","61","admin/language/ru-ru/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4185","61","admin/language/ru-ru/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4186","61","admin/language/ru-ru/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4187","61","admin/language/ru-ru/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4188","61","admin/language/ru-ru/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4189","61","admin/language/ru-ru/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4190","61","admin/language/ru-ru/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4191","61","admin/language/ru-ru/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4192","61","admin/language/ru-ru/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4193","61","admin/language/ru-ru/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4194","61","admin/language/ru-ru/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4195","61","admin/language/ru-ru/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4196","61","admin/language/ru-ru/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4197","61","admin/language/ru-ru/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4198","61","admin/language/ru-ru/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4199","61","admin/language/ru-ru/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4200","61","admin/language/ru-ru/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4201","61","admin/language/th-th/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4202","61","admin/language/th-th/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4203","61","admin/language/th-th/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4204","61","admin/language/th-th/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4205","61","admin/language/th-th/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4206","61","admin/language/th-th/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4207","61","admin/language/th-th/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4208","61","admin/language/th-th/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4209","61","admin/language/th-th/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4210","61","admin/language/th-th/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4211","61","admin/language/th-th/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4212","61","admin/language/th-th/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4213","61","admin/language/th-th/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4214","61","admin/language/th-th/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4215","61","admin/language/th-th/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4216","61","admin/language/th-th/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4217","61","admin/language/th-th/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4218","61","admin/language/th-th/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4219","61","admin/language/th-th/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4220","61","admin/language/th-th/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4221","61","admin/language/th-th/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4222","61","admin/language/th-th/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4223","61","admin/language/th-th/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4224","61","admin/language/tl-ph/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4225","61","admin/language/tl-ph/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4226","61","admin/language/tl-ph/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4227","61","admin/language/tl-ph/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4228","61","admin/language/tl-ph/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4229","61","admin/language/tl-ph/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4230","61","admin/language/tl-ph/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4231","61","admin/language/tl-ph/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4232","61","admin/language/tl-ph/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4233","61","admin/language/tl-ph/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4234","61","admin/language/tl-ph/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4235","61","admin/language/tl-ph/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4236","61","admin/language/tl-ph/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4237","61","admin/language/tl-ph/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4238","61","admin/language/tl-ph/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4239","61","admin/language/tl-ph/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4240","61","admin/language/tl-ph/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4241","61","admin/language/tl-ph/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4242","61","admin/language/tl-ph/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4243","61","admin/language/tl-ph/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4244","61","admin/language/tl-ph/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4245","61","admin/language/tl-ph/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4246","61","admin/language/tl-ph/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4247","61","admin/language/vi-vn/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4248","61","admin/language/vi-vn/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4249","61","admin/language/vi-vn/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4250","61","admin/language/vi-vn/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4251","61","admin/language/vi-vn/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4252","61","admin/language/vi-vn/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4253","61","admin/language/vi-vn/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4254","61","admin/language/vi-vn/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4255","61","admin/language/vi-vn/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4256","61","admin/language/vi-vn/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4257","61","admin/language/vi-vn/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4258","61","admin/language/vi-vn/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4259","61","admin/language/vi-vn/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4260","61","admin/language/vi-vn/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4261","61","admin/language/vi-vn/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4262","61","admin/language/vi-vn/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4263","61","admin/language/vi-vn/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4264","61","admin/language/vi-vn/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4265","61","admin/language/vi-vn/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4266","61","admin/language/vi-vn/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4267","61","admin/language/vi-vn/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4268","61","admin/language/vi-vn/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4269","61","admin/language/vi-vn/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4270","61","admin/language/zh-cn/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4271","61","admin/language/zh-cn/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4272","61","admin/language/zh-cn/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4273","61","admin/language/zh-cn/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4274","61","admin/language/zh-cn/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4275","61","admin/language/zh-cn/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4276","61","admin/language/zh-cn/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4277","61","admin/language/zh-cn/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4278","61","admin/language/zh-cn/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4279","61","admin/language/zh-cn/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4280","61","admin/language/zh-cn/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4281","61","admin/language/zh-cn/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4282","61","admin/language/zh-cn/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4283","61","admin/language/zh-cn/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4284","61","admin/language/zh-cn/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4285","61","admin/language/zh-cn/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4286","61","admin/language/zh-cn/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4287","61","admin/language/zh-cn/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4288","61","admin/language/zh-cn/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4289","61","admin/language/zh-cn/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4290","61","admin/language/zh-cn/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4291","61","admin/language/zh-cn/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4292","61","admin/language/zh-cn/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4293","61","admin/language/zh-tw/customer/ptscustomer.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4294","61","admin/language/zh-tw/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4295","61","admin/language/zh-tw/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4296","61","admin/language/zh-tw/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4297","61","admin/language/zh-tw/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4298","61","admin/language/zh-tw/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4299","61","admin/language/zh-tw/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4300","61","admin/language/zh-tw/purpletree_multivendor/managesubscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4301","61","admin/language/zh-tw/purpletree_multivendor/planinvoicestatus.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4302","61","admin/language/zh-tw/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4303","61","admin/language/zh-tw/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4304","61","admin/language/zh-tw/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4305","61","admin/language/zh-tw/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4306","61","admin/language/zh-tw/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4307","61","admin/language/zh-tw/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4308","61","admin/language/zh-tw/purpletree_multivendor/sellerproducts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4309","61","admin/language/zh-tw/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4310","61","admin/language/zh-tw/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4311","61","admin/language/zh-tw/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4312","61","admin/language/zh-tw/purpletree_multivendor/subcriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4313","61","admin/language/zh-tw/purpletree_multivendor/subscriptionplanInvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4314","61","admin/language/zh-tw/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4315","61","admin/language/zh-tw/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4316","61","admin/model/extension/purpletree_multivendor/categoriescommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4317","61","admin/model/extension/purpletree_multivendor/orderinvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4318","61","admin/model/extension/purpletree_multivendor/sellercontacts.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4319","61","admin/model/extension/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4320","61","admin/model/extension/purpletree_multivendor/stores.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4321","61","admin/model/extension/purpletree_multivendor/upgradedatabase.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4322","61","admin/model/extension/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4323","61","admin/view/template/extension/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4324","61","catalog/controller/extension/account/purpletree_multivendor","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4325","61","catalog/controller/extension/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4326","61","catalog/controller/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4327","61","catalog/language/ar/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4328","61","catalog/language/ar/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4329","61","catalog/language/ar/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4330","61","catalog/language/ar/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4331","61","catalog/language/ar/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4332","61","catalog/language/ar/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4333","61","catalog/language/ar/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4334","61","catalog/language/ar/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4335","61","catalog/language/ar/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4336","61","catalog/language/ar/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4337","61","catalog/language/ar/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4338","61","catalog/language/ar/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4339","61","catalog/language/ar/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4340","61","catalog/language/ar/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4341","61","catalog/language/ar/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4342","61","catalog/language/ar/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4343","61","catalog/language/ar/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4344","61","catalog/language/ar/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4345","61","catalog/language/ar/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4346","61","catalog/language/ar/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4347","61","catalog/language/ar/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4348","61","catalog/language/ar/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4349","61","catalog/language/ar/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4350","61","catalog/language/ar/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4351","61","catalog/language/ar/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4352","61","catalog/language/ar/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4353","61","catalog/language/ar/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4354","61","catalog/language/ar/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4355","61","catalog/language/ar/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4356","61","catalog/language/ar-sa/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4357","61","catalog/language/ar-sa/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4358","61","catalog/language/ar-sa/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4359","61","catalog/language/ar-sa/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4360","61","catalog/language/ar-sa/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4361","61","catalog/language/ar-sa/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4362","61","catalog/language/ar-sa/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4363","61","catalog/language/ar-sa/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4364","61","catalog/language/ar-sa/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4365","61","catalog/language/ar-sa/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4366","61","catalog/language/ar-sa/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4367","61","catalog/language/ar-sa/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4368","61","catalog/language/ar-sa/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4369","61","catalog/language/ar-sa/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4370","61","catalog/language/ar-sa/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4371","61","catalog/language/ar-sa/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4372","61","catalog/language/ar-sa/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4373","61","catalog/language/ar-sa/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4374","61","catalog/language/ar-sa/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4375","61","catalog/language/ar-sa/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4376","61","catalog/language/ar-sa/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4377","61","catalog/language/ar-sa/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4378","61","catalog/language/ar-sa/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4379","61","catalog/language/ar-sa/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4380","61","catalog/language/ar-sa/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4381","61","catalog/language/ar-sa/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4382","61","catalog/language/ar-sa/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4383","61","catalog/language/ar-sa/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4384","61","catalog/language/ar-sa/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4385","61","catalog/language/de-de/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4386","61","catalog/language/de-de/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4387","61","catalog/language/de-de/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4388","61","catalog/language/de-de/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4389","61","catalog/language/de-de/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4390","61","catalog/language/de-de/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4391","61","catalog/language/de-de/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4392","61","catalog/language/de-de/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4393","61","catalog/language/de-de/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4394","61","catalog/language/de-de/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4395","61","catalog/language/de-de/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4396","61","catalog/language/de-de/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4397","61","catalog/language/de-de/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4398","61","catalog/language/de-de/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4399","61","catalog/language/de-de/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4400","61","catalog/language/de-de/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4401","61","catalog/language/de-de/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4402","61","catalog/language/de-de/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4403","61","catalog/language/de-de/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4404","61","catalog/language/de-de/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4405","61","catalog/language/de-de/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4406","61","catalog/language/de-de/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4407","61","catalog/language/de-de/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4408","61","catalog/language/de-de/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4409","61","catalog/language/de-de/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4410","61","catalog/language/de-de/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4411","61","catalog/language/de-de/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4412","61","catalog/language/de-de/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4413","61","catalog/language/de-de/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4414","61","catalog/language/en-gb/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4415","61","catalog/language/en-gb/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4416","61","catalog/language/en-gb/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4417","61","catalog/language/en-gb/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4418","61","catalog/language/en-gb/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4419","61","catalog/language/en-gb/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4420","61","catalog/language/en-gb/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4421","61","catalog/language/en-gb/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4422","61","catalog/language/en-gb/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4423","61","catalog/language/en-gb/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4424","61","catalog/language/en-gb/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4425","61","catalog/language/en-gb/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4426","61","catalog/language/en-gb/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4427","61","catalog/language/en-gb/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4428","61","catalog/language/en-gb/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4429","61","catalog/language/en-gb/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4430","61","catalog/language/english/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4431","61","catalog/language/english/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4432","61","catalog/language/english/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4433","61","catalog/language/english/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4434","61","catalog/language/english/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4435","61","catalog/language/english/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4436","61","catalog/language/english/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4437","61","catalog/language/english/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4438","61","catalog/language/english/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4439","61","catalog/language/english/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4440","61","catalog/language/english/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4441","61","catalog/language/english/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4442","61","catalog/language/english/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4443","61","catalog/language/english/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4444","61","catalog/language/english/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4445","61","catalog/language/english/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4446","61","catalog/language/english/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4447","61","catalog/language/english/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4448","61","catalog/language/english/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4449","61","catalog/language/english/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4450","61","catalog/language/english/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4451","61","catalog/language/english/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4452","61","catalog/language/english/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4453","61","catalog/language/english/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4454","61","catalog/language/english/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4455","61","catalog/language/es-es/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4456","61","catalog/language/es-es/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4457","61","catalog/language/es-es/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4458","61","catalog/language/es-es/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4459","61","catalog/language/es-es/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4460","61","catalog/language/es-es/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4461","61","catalog/language/es-es/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4462","61","catalog/language/es-es/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4463","61","catalog/language/es-es/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4464","61","catalog/language/es-es/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4465","61","catalog/language/es-es/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4466","61","catalog/language/es-es/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4467","61","catalog/language/es-es/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4468","61","catalog/language/es-es/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4469","61","catalog/language/es-es/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4470","61","catalog/language/es-es/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4471","61","catalog/language/es-es/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4472","61","catalog/language/es-es/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4473","61","catalog/language/es-es/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4474","61","catalog/language/es-es/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4475","61","catalog/language/es-es/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4476","61","catalog/language/es-es/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4477","61","catalog/language/es-es/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4478","61","catalog/language/es-es/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4479","61","catalog/language/es-es/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4480","61","catalog/language/es-es/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4481","61","catalog/language/es-es/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4482","61","catalog/language/es-es/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4483","61","catalog/language/es-es/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4484","61","catalog/language/fr-fr/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4485","61","catalog/language/fr-fr/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4486","61","catalog/language/fr-fr/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4487","61","catalog/language/fr-fr/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4488","61","catalog/language/fr-fr/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4489","61","catalog/language/fr-fr/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4490","61","catalog/language/fr-fr/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4491","61","catalog/language/fr-fr/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4492","61","catalog/language/fr-fr/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4493","61","catalog/language/fr-fr/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4494","61","catalog/language/fr-fr/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4495","61","catalog/language/fr-fr/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4496","61","catalog/language/fr-fr/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4497","61","catalog/language/fr-fr/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4498","61","catalog/language/fr-fr/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4499","61","catalog/language/fr-fr/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4500","61","catalog/language/fr-fr/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4501","61","catalog/language/fr-fr/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4502","61","catalog/language/fr-fr/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4503","61","catalog/language/fr-fr/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4504","61","catalog/language/fr-fr/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4505","61","catalog/language/fr-fr/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4506","61","catalog/language/fr-fr/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4507","61","catalog/language/fr-fr/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4508","61","catalog/language/fr-fr/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4509","61","catalog/language/fr-fr/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4510","61","catalog/language/fr-fr/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4511","61","catalog/language/fr-fr/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4512","61","catalog/language/id-id/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4513","61","catalog/language/id-id/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4514","61","catalog/language/id-id/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4515","61","catalog/language/id-id/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4516","61","catalog/language/id-id/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4517","61","catalog/language/id-id/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4518","61","catalog/language/id-id/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4519","61","catalog/language/id-id/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4520","61","catalog/language/id-id/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4521","61","catalog/language/id-id/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4522","61","catalog/language/id-id/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4523","61","catalog/language/id-id/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4524","61","catalog/language/id-id/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4525","61","catalog/language/id-id/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4526","61","catalog/language/id-id/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4527","61","catalog/language/id-id/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4528","61","catalog/language/id-id/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4529","61","catalog/language/id-id/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4530","61","catalog/language/id-id/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4531","61","catalog/language/id-id/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4532","61","catalog/language/id-id/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4533","61","catalog/language/id-id/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4534","61","catalog/language/id-id/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4535","61","catalog/language/id-id/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4536","61","catalog/language/id-id/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4537","61","catalog/language/id-id/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4538","61","catalog/language/id-id/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4539","61","catalog/language/id-id/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4540","61","catalog/language/id-id/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4541","61","catalog/language/it-it/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4542","61","catalog/language/it-it/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4543","61","catalog/language/it-it/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4544","61","catalog/language/it-it/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4545","61","catalog/language/it-it/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4546","61","catalog/language/it-it/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4547","61","catalog/language/it-it/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4548","61","catalog/language/it-it/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4549","61","catalog/language/it-it/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4550","61","catalog/language/it-it/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4551","61","catalog/language/it-it/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4552","61","catalog/language/it-it/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4553","61","catalog/language/it-it/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4554","61","catalog/language/it-it/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4555","61","catalog/language/it-it/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4556","61","catalog/language/it-it/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4557","61","catalog/language/it-it/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4558","61","catalog/language/it-it/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4559","61","catalog/language/it-it/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4560","61","catalog/language/it-it/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4561","61","catalog/language/it-it/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4562","61","catalog/language/it-it/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4563","61","catalog/language/it-it/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4564","61","catalog/language/it-it/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4565","61","catalog/language/it-it/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4566","61","catalog/language/it-it/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4567","61","catalog/language/it-it/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4568","61","catalog/language/it-it/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4569","61","catalog/language/it-it/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4570","61","catalog/language/ja-jp/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4571","61","catalog/language/ja-jp/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4572","61","catalog/language/ja-jp/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4573","61","catalog/language/ja-jp/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4574","61","catalog/language/ja-jp/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4575","61","catalog/language/ja-jp/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4576","61","catalog/language/ja-jp/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4577","61","catalog/language/ja-jp/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4578","61","catalog/language/ja-jp/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4579","61","catalog/language/ja-jp/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4580","61","catalog/language/ja-jp/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4581","61","catalog/language/ja-jp/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4582","61","catalog/language/ja-jp/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4583","61","catalog/language/ja-jp/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4584","61","catalog/language/ja-jp/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4585","61","catalog/language/ja-jp/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4586","61","catalog/language/ja-jp/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4587","61","catalog/language/ja-jp/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4588","61","catalog/language/ja-jp/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4589","61","catalog/language/ja-jp/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4590","61","catalog/language/ja-jp/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4591","61","catalog/language/ja-jp/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4592","61","catalog/language/ja-jp/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4593","61","catalog/language/ja-jp/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4594","61","catalog/language/ja-jp/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4595","61","catalog/language/ja-jp/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4596","61","catalog/language/ja-jp/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4597","61","catalog/language/ja-jp/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4598","61","catalog/language/ja-jp/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4599","61","catalog/language/ms-my/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4600","61","catalog/language/ms-my/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4601","61","catalog/language/ms-my/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4602","61","catalog/language/ms-my/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4603","61","catalog/language/ms-my/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4604","61","catalog/language/ms-my/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4605","61","catalog/language/ms-my/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4606","61","catalog/language/ms-my/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4607","61","catalog/language/ms-my/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4608","61","catalog/language/ms-my/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4609","61","catalog/language/ms-my/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4610","61","catalog/language/ms-my/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4611","61","catalog/language/ms-my/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4612","61","catalog/language/ms-my/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4613","61","catalog/language/ms-my/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4614","61","catalog/language/ms-my/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4615","61","catalog/language/ms-my/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4616","61","catalog/language/ms-my/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4617","61","catalog/language/ms-my/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4618","61","catalog/language/ms-my/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4619","61","catalog/language/ms-my/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4620","61","catalog/language/ms-my/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4621","61","catalog/language/ms-my/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4622","61","catalog/language/ms-my/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4623","61","catalog/language/ms-my/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4624","61","catalog/language/ms-my/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4625","61","catalog/language/ms-my/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4626","61","catalog/language/ms-my/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4627","61","catalog/language/ms-my/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4628","61","catalog/language/nl-nl/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4629","61","catalog/language/nl-nl/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4630","61","catalog/language/nl-nl/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4631","61","catalog/language/nl-nl/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4632","61","catalog/language/nl-nl/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4633","61","catalog/language/nl-nl/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4634","61","catalog/language/nl-nl/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4635","61","catalog/language/nl-nl/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4636","61","catalog/language/nl-nl/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4637","61","catalog/language/nl-nl/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4638","61","catalog/language/nl-nl/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4639","61","catalog/language/nl-nl/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4640","61","catalog/language/nl-nl/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4641","61","catalog/language/nl-nl/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4642","61","catalog/language/nl-nl/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4643","61","catalog/language/nl-nl/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4644","61","catalog/language/nl-nl/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4645","61","catalog/language/nl-nl/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4646","61","catalog/language/nl-nl/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4647","61","catalog/language/nl-nl/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4648","61","catalog/language/nl-nl/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4649","61","catalog/language/nl-nl/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4650","61","catalog/language/nl-nl/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4651","61","catalog/language/nl-nl/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4652","61","catalog/language/nl-nl/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4653","61","catalog/language/nl-nl/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4654","61","catalog/language/nl-nl/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4655","61","catalog/language/nl-nl/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4656","61","catalog/language/nl-nl/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4657","61","catalog/language/pt-br/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4658","61","catalog/language/pt-br/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4659","61","catalog/language/pt-br/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4660","61","catalog/language/pt-br/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4661","61","catalog/language/pt-br/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4662","61","catalog/language/pt-br/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4663","61","catalog/language/pt-br/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4664","61","catalog/language/pt-br/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4665","61","catalog/language/pt-br/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4666","61","catalog/language/pt-br/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4667","61","catalog/language/pt-br/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4668","61","catalog/language/pt-br/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4669","61","catalog/language/pt-br/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4670","61","catalog/language/pt-br/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4671","61","catalog/language/pt-br/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4672","61","catalog/language/pt-br/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4673","61","catalog/language/pt-br/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4674","61","catalog/language/pt-br/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4675","61","catalog/language/pt-br/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4676","61","catalog/language/pt-br/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4677","61","catalog/language/pt-br/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4678","61","catalog/language/pt-br/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4679","61","catalog/language/pt-br/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4680","61","catalog/language/pt-br/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4681","61","catalog/language/pt-br/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4682","61","catalog/language/pt-br/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4683","61","catalog/language/pt-br/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4684","61","catalog/language/pt-br/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4685","61","catalog/language/pt-br/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4686","61","catalog/language/ru-ru/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4687","61","catalog/language/ru-ru/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4688","61","catalog/language/ru-ru/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4689","61","catalog/language/ru-ru/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4690","61","catalog/language/ru-ru/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4691","61","catalog/language/ru-ru/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4692","61","catalog/language/ru-ru/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4693","61","catalog/language/ru-ru/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4694","61","catalog/language/ru-ru/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4695","61","catalog/language/ru-ru/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4696","61","catalog/language/ru-ru/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4697","61","catalog/language/ru-ru/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4698","61","catalog/language/ru-ru/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4699","61","catalog/language/ru-ru/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4700","61","catalog/language/ru-ru/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4701","61","catalog/language/ru-ru/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4702","61","catalog/language/ru-ru/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4703","61","catalog/language/ru-ru/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4704","61","catalog/language/ru-ru/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4705","61","catalog/language/ru-ru/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4706","61","catalog/language/ru-ru/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4707","61","catalog/language/ru-ru/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4708","61","catalog/language/ru-ru/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4709","61","catalog/language/ru-ru/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4710","61","catalog/language/ru-ru/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4711","61","catalog/language/ru-ru/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4712","61","catalog/language/ru-ru/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4713","61","catalog/language/ru-ru/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4714","61","catalog/language/ru-ru/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4715","61","catalog/language/th-th/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4716","61","catalog/language/th-th/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4717","61","catalog/language/th-th/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4718","61","catalog/language/th-th/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4719","61","catalog/language/th-th/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4720","61","catalog/language/th-th/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4721","61","catalog/language/th-th/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4722","61","catalog/language/th-th/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4723","61","catalog/language/th-th/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4724","61","catalog/language/th-th/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4725","61","catalog/language/th-th/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4726","61","catalog/language/th-th/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4727","61","catalog/language/th-th/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4728","61","catalog/language/th-th/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4729","61","catalog/language/th-th/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4730","61","catalog/language/th-th/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4731","61","catalog/language/th-th/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4732","61","catalog/language/th-th/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4733","61","catalog/language/th-th/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4734","61","catalog/language/th-th/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4735","61","catalog/language/th-th/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4736","61","catalog/language/th-th/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4737","61","catalog/language/th-th/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4738","61","catalog/language/th-th/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4739","61","catalog/language/th-th/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4740","61","catalog/language/th-th/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4741","61","catalog/language/th-th/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4742","61","catalog/language/th-th/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4743","61","catalog/language/th-th/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4744","61","catalog/language/tl-ph/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4745","61","catalog/language/tl-ph/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4746","61","catalog/language/tl-ph/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4747","61","catalog/language/tl-ph/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4748","61","catalog/language/tl-ph/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4749","61","catalog/language/tl-ph/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4750","61","catalog/language/tl-ph/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4751","61","catalog/language/tl-ph/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4752","61","catalog/language/tl-ph/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4753","61","catalog/language/tl-ph/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4754","61","catalog/language/tl-ph/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4755","61","catalog/language/tl-ph/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4756","61","catalog/language/tl-ph/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4757","61","catalog/language/tl-ph/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4758","61","catalog/language/tl-ph/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4759","61","catalog/language/tl-ph/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4760","61","catalog/language/tl-ph/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4761","61","catalog/language/tl-ph/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4762","61","catalog/language/tl-ph/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4763","61","catalog/language/tl-ph/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4764","61","catalog/language/tl-ph/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4765","61","catalog/language/tl-ph/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4766","61","catalog/language/tl-ph/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4767","61","catalog/language/tl-ph/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4768","61","catalog/language/tl-ph/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4769","61","catalog/language/tl-ph/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4770","61","catalog/language/tl-ph/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4771","61","catalog/language/tl-ph/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4772","61","catalog/language/tl-ph/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4773","61","catalog/language/vi-vn/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4774","61","catalog/language/vi-vn/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4775","61","catalog/language/vi-vn/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4776","61","catalog/language/vi-vn/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4777","61","catalog/language/vi-vn/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4778","61","catalog/language/vi-vn/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4779","61","catalog/language/vi-vn/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4780","61","catalog/language/vi-vn/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4781","61","catalog/language/vi-vn/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4782","61","catalog/language/vi-vn/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4783","61","catalog/language/vi-vn/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4784","61","catalog/language/vi-vn/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4785","61","catalog/language/vi-vn/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4786","61","catalog/language/vi-vn/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4787","61","catalog/language/vi-vn/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4788","61","catalog/language/vi-vn/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4789","61","catalog/language/vi-vn/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4790","61","catalog/language/vi-vn/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4791","61","catalog/language/vi-vn/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4792","61","catalog/language/vi-vn/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4793","61","catalog/language/vi-vn/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4794","61","catalog/language/vi-vn/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4795","61","catalog/language/vi-vn/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4796","61","catalog/language/vi-vn/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4797","61","catalog/language/vi-vn/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4798","61","catalog/language/vi-vn/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4799","61","catalog/language/vi-vn/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4800","61","catalog/language/vi-vn/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4801","61","catalog/language/vi-vn/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4802","61","catalog/language/zh-cn/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4803","61","catalog/language/zh-cn/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4804","61","catalog/language/zh-cn/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4805","61","catalog/language/zh-cn/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4806","61","catalog/language/zh-cn/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4807","61","catalog/language/zh-cn/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4808","61","catalog/language/zh-cn/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4809","61","catalog/language/zh-cn/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4810","61","catalog/language/zh-cn/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4811","61","catalog/language/zh-cn/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4812","61","catalog/language/zh-cn/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4813","61","catalog/language/zh-cn/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4814","61","catalog/language/zh-cn/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4815","61","catalog/language/zh-cn/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4816","61","catalog/language/zh-cn/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4817","61","catalog/language/zh-cn/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4818","61","catalog/language/zh-cn/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4819","61","catalog/language/zh-cn/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4820","61","catalog/language/zh-cn/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4821","61","catalog/language/zh-cn/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4822","61","catalog/language/zh-cn/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4823","61","catalog/language/zh-cn/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4824","61","catalog/language/zh-cn/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4825","61","catalog/language/zh-cn/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4826","61","catalog/language/zh-cn/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4827","61","catalog/language/zh-cn/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4828","61","catalog/language/zh-cn/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4829","61","catalog/language/zh-cn/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4830","61","catalog/language/zh-cn/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4831","61","catalog/language/zh-tw/account/ptsregister.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4832","61","catalog/language/zh-tw/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4833","61","catalog/language/zh-tw/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4834","61","catalog/language/zh-tw/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4835","61","catalog/language/zh-tw/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4836","61","catalog/language/zh-tw/common/filemanager.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4837","61","catalog/language/zh-tw/extension/module","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4838","61","catalog/language/zh-tw/extension/shipping","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4839","61","catalog/language/zh-tw/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4840","61","catalog/language/zh-tw/purpletree_multivendor/bulkproductupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4841","61","catalog/language/zh-tw/purpletree_multivendor/bulkshippingupload.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4842","61","catalog/language/zh-tw/purpletree_multivendor/commissioninvoice.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4843","61","catalog/language/zh-tw/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4844","61","catalog/language/zh-tw/purpletree_multivendor/downloads.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4845","61","catalog/language/zh-tw/purpletree_multivendor/metals_spot_price.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4846","61","catalog/language/zh-tw/purpletree_multivendor/sellerblogcomment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4847","61","catalog/language/zh-tw/purpletree_multivendor/sellerblogpost.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4848","61","catalog/language/zh-tw/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4849","61","catalog/language/zh-tw/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4850","61","catalog/language/zh-tw/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4851","61","catalog/language/zh-tw/purpletree_multivendor/sellerpayment.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4852","61","catalog/language/zh-tw/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4853","61","catalog/language/zh-tw/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4854","61","catalog/language/zh-tw/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4855","61","catalog/language/zh-tw/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4856","61","catalog/language/zh-tw/purpletree_multivendor/shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4857","61","catalog/language/zh-tw/purpletree_multivendor/storeview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4858","61","catalog/language/zh-tw/purpletree_multivendor/subscriptionplan.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4859","61","catalog/language/zh-tw/purpletree_multivendor/subscriptions.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4860","61","catalog/model/extension/catalog/attribute.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4861","61","catalog/model/extension/catalog/attribute_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4862","61","catalog/model/extension/catalog/download.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4863","61","catalog/model/extension/catalog/filter.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4864","61","catalog/model/extension/catalog/option.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4865","61","catalog/model/extension/catalog/recurring.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4866","61","catalog/model/extension/catalog/seo_url.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4867","61","catalog/model/extension/localisation/length_class.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4868","61","catalog/model/extension/localisation/order_status.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4869","61","catalog/model/extension/localisation/stock_status.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4870","61","catalog/model/extension/localisation/tax_class.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4871","61","catalog/model/extension/localisation/weight_class.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4872","61","catalog/model/extension/purpletree_multivendor/blog_post.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4873","61","catalog/model/extension/purpletree_multivendor/custom_field.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4874","61","catalog/model/extension/purpletree_multivendor/customer_group.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4875","61","catalog/model/extension/purpletree_multivendor/dashboard.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4876","61","catalog/model/extension/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4877","61","catalog/model/extension/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4878","61","catalog/model/extension/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4879","61","catalog/model/extension/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4880","61","catalog/model/extension/purpletree_multivendor/sellerreview.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4881","61","catalog/model/extension/purpletree_multivendor/sellers.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4882","61","catalog/model/extension/purpletree_multivendor/seo_url.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4883","61","catalog/model/extension/purpletree_multivendor/vendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4884","61","catalog/view/javascript/purpletree/bootstrap","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4885","61","catalog/view/javascript/purpletree/common.js","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4886","61","catalog/view/javascript/purpletree/font-awesome","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4887","61","catalog/view/javascript/purpletree/jquery","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4888","61","catalog/view/javascript/purpletree/summernote","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4889","61","catalog/view/theme/journal2/template","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4890","61","admin/language/ar/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4891","61","admin/language/ar/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4892","61","admin/language/ar/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4893","61","admin/language/ar/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4894","61","admin/language/ar/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4895","61","admin/language/ar/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4896","61","admin/language/ar/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4897","61","admin/language/ar-sa/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4898","61","admin/language/ar-sa/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4899","61","admin/language/ar-sa/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4900","61","admin/language/ar-sa/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4901","61","admin/language/ar-sa/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4902","61","admin/language/ar-sa/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4903","61","admin/language/ar-sa/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4904","61","admin/language/de-de/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4905","61","admin/language/de-de/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4906","61","admin/language/de-de/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4907","61","admin/language/de-de/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4908","61","admin/language/de-de/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4909","61","admin/language/de-de/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4910","61","admin/language/de-de/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4911","61","admin/language/en-gb/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4912","61","admin/language/en-gb/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4913","61","admin/language/english/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4914","61","admin/language/english/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4915","61","admin/language/english/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4916","61","admin/language/es-es/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4917","61","admin/language/es-es/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4918","61","admin/language/es-es/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4919","61","admin/language/es-es/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4920","61","admin/language/es-es/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4921","61","admin/language/es-es/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4922","61","admin/language/es-es/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4923","61","admin/language/fr-fr/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4924","61","admin/language/fr-fr/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4925","61","admin/language/fr-fr/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4926","61","admin/language/fr-fr/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4927","61","admin/language/fr-fr/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4928","61","admin/language/fr-fr/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4929","61","admin/language/fr-fr/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4930","61","admin/language/id-id/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4931","61","admin/language/id-id/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4932","61","admin/language/id-id/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4933","61","admin/language/id-id/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4934","61","admin/language/id-id/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4935","61","admin/language/id-id/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4936","61","admin/language/id-id/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4937","61","admin/language/it-it/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4938","61","admin/language/it-it/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4939","61","admin/language/it-it/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4940","61","admin/language/it-it/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4941","61","admin/language/it-it/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4942","61","admin/language/it-it/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4943","61","admin/language/it-it/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4944","61","admin/language/ja-jp/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4945","61","admin/language/ja-jp/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4946","61","admin/language/ja-jp/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4947","61","admin/language/ja-jp/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4948","61","admin/language/ja-jp/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4949","61","admin/language/ja-jp/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4950","61","admin/language/ja-jp/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4951","61","admin/language/ms-my/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4952","61","admin/language/ms-my/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4953","61","admin/language/ms-my/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4954","61","admin/language/ms-my/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4955","61","admin/language/ms-my/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4956","61","admin/language/ms-my/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4957","61","admin/language/ms-my/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4958","61","admin/language/nl-nl/extension/Module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4959","61","admin/language/nl-nl/extension/Module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4960","61","admin/language/nl-nl/extension/Module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4961","61","admin/language/nl-nl/extension/Module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4962","61","admin/language/nl-nl/extension/Module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4963","61","admin/language/nl-nl/extension/Module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4964","61","admin/language/nl-nl/extension/Shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4965","61","admin/language/pt-br/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4966","61","admin/language/pt-br/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4967","61","admin/language/pt-br/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4968","61","admin/language/pt-br/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4969","61","admin/language/pt-br/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4970","61","admin/language/pt-br/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4971","61","admin/language/pt-br/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4972","61","admin/language/ru-ru/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4973","61","admin/language/ru-ru/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4974","61","admin/language/ru-ru/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4975","61","admin/language/ru-ru/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4976","61","admin/language/ru-ru/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4977","61","admin/language/ru-ru/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4978","61","admin/language/ru-ru/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4979","61","admin/language/th-th/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4980","61","admin/language/th-th/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4981","61","admin/language/th-th/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4982","61","admin/language/th-th/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4983","61","admin/language/th-th/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4984","61","admin/language/th-th/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4985","61","admin/language/th-th/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4986","61","admin/language/tl-ph/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4987","61","admin/language/tl-ph/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4988","61","admin/language/tl-ph/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4989","61","admin/language/tl-ph/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4990","61","admin/language/tl-ph/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4991","61","admin/language/tl-ph/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4992","61","admin/language/tl-ph/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4993","61","admin/language/vi-vn/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4994","61","admin/language/vi-vn/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4995","61","admin/language/vi-vn/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4996","61","admin/language/vi-vn/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4997","61","admin/language/vi-vn/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4998","61","admin/language/vi-vn/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("4999","61","admin/language/vi-vn/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5000","61","admin/language/zh-cn/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5001","61","admin/language/zh-cn/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5002","61","admin/language/zh-cn/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5003","61","admin/language/zh-cn/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5004","61","admin/language/zh-cn/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5005","61","admin/language/zh-cn/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5006","61","admin/language/zh-cn/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5007","61","admin/language/zh-tw/extension/module/purpletree_blog.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5008","61","admin/language/zh-tw/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5009","61","admin/language/zh-tw/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5010","61","admin/language/zh-tw/extension/module/purpletree_multivendor.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5011","61","admin/language/zh-tw/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5012","61","admin/language/zh-tw/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5013","61","admin/language/zh-tw/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:41");
INSERT INTO oc_extension_path VALUES("5014","61","admin/view/template/extension/module/purpletree_multivendor.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5015","61","admin/view/template/extension/module/purpletree_sellerpanel.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5016","61","admin/view/template/extension/purpletree_multivendor/categories_commission.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5017","61","admin/view/template/extension/purpletree_multivendor/categories_commissionedit.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5018","61","admin/view/template/extension/purpletree_multivendor/order_info.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5019","61","admin/view/template/extension/purpletree_multivendor/order_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5020","61","admin/view/template/extension/purpletree_multivendor/payment_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5021","61","admin/view/template/extension/purpletree_multivendor/review_form.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5022","61","admin/view/template/extension/purpletree_multivendor/review_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5023","61","admin/view/template/extension/purpletree_multivendor/seller_approvemail.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5024","61","admin/view/template/extension/purpletree_multivendor/seller_order_info.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5025","61","admin/view/template/extension/purpletree_multivendor/seller_product_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5026","61","admin/view/template/extension/purpletree_multivendor/sellercontact_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5027","61","admin/view/template/extension/purpletree_multivendor/sellercontact_view.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5028","61","admin/view/template/extension/purpletree_multivendor/store_form.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5029","61","admin/view/template/extension/purpletree_multivendor/store_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5030","61","admin/view/template/extension/purpletree_multivendor/upgrade_database.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5031","61","admin/view/template/extension/purpletree_multivendor/vendor_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5032","61","catalog/controller/extension/account/purpletree_multivendor/createplanconfirmation.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5033","61","catalog/controller/extension/account/purpletree_multivendor/dashboard.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5034","61","catalog/controller/extension/account/purpletree_multivendor/dashboardicons.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5035","61","catalog/controller/extension/account/purpletree_multivendor/sellercommission.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5036","61","catalog/controller/extension/account/purpletree_multivendor/sellercontact.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5037","61","catalog/controller/extension/account/purpletree_multivendor/sellerorder.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5038","61","catalog/controller/extension/account/purpletree_multivendor/sellerproduct.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5039","61","catalog/controller/extension/account/purpletree_multivendor/sellers.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5040","61","catalog/controller/extension/account/purpletree_multivendor/sellerstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5041","61","catalog/language/ar/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5042","61","catalog/language/ar/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5043","61","catalog/language/ar/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5044","61","catalog/language/ar/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5045","61","catalog/language/ar/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5046","61","catalog/language/ar/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5047","61","catalog/language/ar-sa/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5048","61","catalog/language/ar-sa/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5049","61","catalog/language/ar-sa/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5050","61","catalog/language/ar-sa/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5051","61","catalog/language/ar-sa/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5052","61","catalog/language/ar-sa/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5053","61","catalog/language/de-de/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5054","61","catalog/language/de-de/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5055","61","catalog/language/de-de/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5056","61","catalog/language/de-de/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5057","61","catalog/language/de-de/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5058","61","catalog/language/de-de/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5059","61","catalog/language/en-gb/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5060","61","catalog/language/english/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5061","61","catalog/language/english/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5062","61","catalog/language/es-es/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5063","61","catalog/language/es-es/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5064","61","catalog/language/es-es/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5065","61","catalog/language/es-es/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5066","61","catalog/language/es-es/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5067","61","catalog/language/es-es/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5068","61","catalog/language/fr-fr/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5069","61","catalog/language/fr-fr/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5070","61","catalog/language/fr-fr/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5071","61","catalog/language/fr-fr/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5072","61","catalog/language/fr-fr/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5073","61","catalog/language/fr-fr/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5074","61","catalog/language/id-id/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5075","61","catalog/language/id-id/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5076","61","catalog/language/id-id/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5077","61","catalog/language/id-id/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5078","61","catalog/language/id-id/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5079","61","catalog/language/id-id/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5080","61","catalog/language/it-it/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5081","61","catalog/language/it-it/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5082","61","catalog/language/it-it/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5083","61","catalog/language/it-it/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5084","61","catalog/language/it-it/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5085","61","catalog/language/it-it/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5086","61","catalog/language/ja-jp/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5087","61","catalog/language/ja-jp/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5088","61","catalog/language/ja-jp/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5089","61","catalog/language/ja-jp/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5090","61","catalog/language/ja-jp/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5091","61","catalog/language/ja-jp/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5092","61","catalog/language/ms-my/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5093","61","catalog/language/ms-my/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5094","61","catalog/language/ms-my/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5095","61","catalog/language/ms-my/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5096","61","catalog/language/ms-my/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5097","61","catalog/language/ms-my/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5098","61","catalog/language/nl-nl/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5099","61","catalog/language/nl-nl/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5100","61","catalog/language/nl-nl/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5101","61","catalog/language/nl-nl/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5102","61","catalog/language/nl-nl/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5103","61","catalog/language/nl-nl/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5104","61","catalog/language/pt-br/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5105","61","catalog/language/pt-br/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5106","61","catalog/language/pt-br/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5107","61","catalog/language/pt-br/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5108","61","catalog/language/pt-br/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5109","61","catalog/language/pt-br/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5110","61","catalog/language/ru-ru/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5111","61","catalog/language/ru-ru/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5112","61","catalog/language/ru-ru/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5113","61","catalog/language/ru-ru/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5114","61","catalog/language/ru-ru/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5115","61","catalog/language/ru-ru/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5116","61","catalog/language/th-th/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5117","61","catalog/language/th-th/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5118","61","catalog/language/th-th/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5119","61","catalog/language/th-th/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5120","61","catalog/language/th-th/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5121","61","catalog/language/th-th/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5122","61","catalog/language/tl-ph/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5123","61","catalog/language/tl-ph/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5124","61","catalog/language/tl-ph/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5125","61","catalog/language/tl-ph/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5126","61","catalog/language/tl-ph/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5127","61","catalog/language/tl-ph/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5128","61","catalog/language/vi-vn/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5129","61","catalog/language/vi-vn/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5130","61","catalog/language/vi-vn/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5131","61","catalog/language/vi-vn/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5132","61","catalog/language/vi-vn/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5133","61","catalog/language/vi-vn/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5134","61","catalog/language/zh-cn/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5135","61","catalog/language/zh-cn/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5136","61","catalog/language/zh-cn/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5137","61","catalog/language/zh-cn/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5138","61","catalog/language/zh-cn/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5139","61","catalog/language/zh-cn/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5140","61","catalog/language/zh-tw/extension/module/purpletree_blog.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5141","61","catalog/language/zh-tw/extension/module/purpletree_featuredstore.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5142","61","catalog/language/zh-tw/extension/module/purpletree_latestseller_products.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5143","61","catalog/language/zh-tw/extension/module/purpletree_sellerfeatured.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5144","61","catalog/language/zh-tw/extension/module/purpletree_sellerpanel.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5145","61","catalog/language/zh-tw/extension/shipping/purpletree_shipping.php","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5146","61","catalog/view/javascript/purpletree/bootstrap/css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5147","61","catalog/view/javascript/purpletree/bootstrap/fonts","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5148","61","catalog/view/javascript/purpletree/bootstrap/js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5149","61","catalog/view/javascript/purpletree/font-awesome/css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5150","61","catalog/view/javascript/purpletree/font-awesome/fonts","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5151","61","catalog/view/javascript/purpletree/font-awesome/less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5152","61","catalog/view/javascript/purpletree/font-awesome/scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5153","61","catalog/view/javascript/purpletree/jquery/datetimepicker","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5154","61","catalog/view/javascript/purpletree/jquery/jquery-2.1.1.min.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5155","61","catalog/view/javascript/purpletree/jquery/jquery-2.1.1.min.map","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5156","61","catalog/view/javascript/purpletree/jquery/magnific","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5157","61","catalog/view/javascript/purpletree/jquery/owl-carousel","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5158","61","catalog/view/javascript/purpletree/summernote/font","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5159","61","catalog/view/javascript/purpletree/summernote/lang","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5160","61","catalog/view/javascript/purpletree/summernote/opencart.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5161","61","catalog/view/javascript/purpletree/summernote/plugin","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5162","61","catalog/view/javascript/purpletree/summernote/summernote-image-attributes.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5163","61","catalog/view/javascript/purpletree/summernote/summernote.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5164","61","catalog/view/javascript/purpletree/summernote/summernote.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5165","61","catalog/view/javascript/purpletree/summernote/summernote.min.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5166","61","catalog/view/theme/default/stylesheet/purpletree","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5167","61","catalog/view/theme/journal2/template/account","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5168","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap-theme.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5169","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap-theme.css.map","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5170","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap-theme.min.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5171","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5172","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap.css.map","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5173","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap.min-a.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5174","61","catalog/view/javascript/purpletree/bootstrap/css/bootstrap.min.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5175","61","catalog/view/javascript/purpletree/bootstrap/fonts/glyphicons-halflings-regular.eot","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5176","61","catalog/view/javascript/purpletree/bootstrap/fonts/glyphicons-halflings-regular.svg","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5177","61","catalog/view/javascript/purpletree/bootstrap/fonts/glyphicons-halflings-regular.ttf","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5178","61","catalog/view/javascript/purpletree/bootstrap/fonts/glyphicons-halflings-regular.woff","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5179","61","catalog/view/javascript/purpletree/bootstrap/fonts/glyphicons-halflings-regular.woff2","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5180","61","catalog/view/javascript/purpletree/bootstrap/js/bootstrap.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5181","61","catalog/view/javascript/purpletree/bootstrap/js/bootstrap.min.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5182","61","catalog/view/javascript/purpletree/bootstrap/js/npm.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5183","61","catalog/view/javascript/purpletree/font-awesome/css/font-awesome.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5184","61","catalog/view/javascript/purpletree/font-awesome/css/font-awesome.min.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5185","61","catalog/view/javascript/purpletree/font-awesome/fonts/FontAwesome.otf","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5186","61","catalog/view/javascript/purpletree/font-awesome/fonts/fontawesome-webfont.eot","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5187","61","catalog/view/javascript/purpletree/font-awesome/fonts/fontawesome-webfont.svg","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5188","61","catalog/view/javascript/purpletree/font-awesome/fonts/fontawesome-webfont.ttf","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5189","61","catalog/view/javascript/purpletree/font-awesome/fonts/fontawesome-webfont.woff","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5190","61","catalog/view/javascript/purpletree/font-awesome/fonts/fontawesome-webfont.woff2","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5191","61","catalog/view/javascript/purpletree/font-awesome/less/animated.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5192","61","catalog/view/javascript/purpletree/font-awesome/less/bordered-pulled.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5193","61","catalog/view/javascript/purpletree/font-awesome/less/core.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5194","61","catalog/view/javascript/purpletree/font-awesome/less/fixed-width.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5195","61","catalog/view/javascript/purpletree/font-awesome/less/font-awesome.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5196","61","catalog/view/javascript/purpletree/font-awesome/less/icons.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5197","61","catalog/view/javascript/purpletree/font-awesome/less/larger.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5198","61","catalog/view/javascript/purpletree/font-awesome/less/list.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5199","61","catalog/view/javascript/purpletree/font-awesome/less/mixins.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5200","61","catalog/view/javascript/purpletree/font-awesome/less/path.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5201","61","catalog/view/javascript/purpletree/font-awesome/less/rotated-flipped.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5202","61","catalog/view/javascript/purpletree/font-awesome/less/spinning.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5203","61","catalog/view/javascript/purpletree/font-awesome/less/stacked.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5204","61","catalog/view/javascript/purpletree/font-awesome/less/variables.less","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5205","61","catalog/view/javascript/purpletree/font-awesome/scss/_animated.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5206","61","catalog/view/javascript/purpletree/font-awesome/scss/_bordered-pulled.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5207","61","catalog/view/javascript/purpletree/font-awesome/scss/_core.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5208","61","catalog/view/javascript/purpletree/font-awesome/scss/_fixed-width.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5209","61","catalog/view/javascript/purpletree/font-awesome/scss/_icons.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5210","61","catalog/view/javascript/purpletree/font-awesome/scss/_larger.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5211","61","catalog/view/javascript/purpletree/font-awesome/scss/_list.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5212","61","catalog/view/javascript/purpletree/font-awesome/scss/_mixins.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5213","61","catalog/view/javascript/purpletree/font-awesome/scss/_path.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5214","61","catalog/view/javascript/purpletree/font-awesome/scss/_rotated-flipped.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5215","61","catalog/view/javascript/purpletree/font-awesome/scss/_spinning.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5216","61","catalog/view/javascript/purpletree/font-awesome/scss/_stacked.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5217","61","catalog/view/javascript/purpletree/font-awesome/scss/_variables.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5218","61","catalog/view/javascript/purpletree/font-awesome/scss/font-awesome.scss","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5219","61","catalog/view/javascript/purpletree/jquery/datetimepicker/bootstrap-datetimepicker.min.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5220","61","catalog/view/javascript/purpletree/jquery/datetimepicker/bootstrap-datetimepicker.min.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5221","61","catalog/view/javascript/purpletree/jquery/datetimepicker/moment.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5222","61","catalog/view/javascript/purpletree/jquery/magnific/jquery.magnific-popup.min.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5223","61","catalog/view/javascript/purpletree/jquery/magnific/magnific-popup.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5224","61","catalog/view/javascript/purpletree/jquery/owl-carousel/AjaxLoader.gif","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5225","61","catalog/view/javascript/purpletree/jquery/owl-carousel/grabbing.png","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5226","61","catalog/view/javascript/purpletree/jquery/owl-carousel/owl.carousel.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5227","61","catalog/view/javascript/purpletree/jquery/owl-carousel/owl.carousel.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5228","61","catalog/view/javascript/purpletree/jquery/owl-carousel/owl.carousel.min.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5229","61","catalog/view/javascript/purpletree/jquery/owl-carousel/owl.theme.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5230","61","catalog/view/javascript/purpletree/jquery/owl-carousel/owl.transitions.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5231","61","catalog/view/javascript/purpletree/summernote/font/summernote.eot","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5232","61","catalog/view/javascript/purpletree/summernote/font/summernote.ttf","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5233","61","catalog/view/javascript/purpletree/summernote/font/summernote.woff","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5234","61","catalog/view/javascript/purpletree/summernote/lang/summernote-ar-AR.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5235","61","catalog/view/javascript/purpletree/summernote/lang/summernote-bg-BG.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5236","61","catalog/view/javascript/purpletree/summernote/lang/summernote-ca-ES.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5237","61","catalog/view/javascript/purpletree/summernote/lang/summernote-cs-CZ.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5238","61","catalog/view/javascript/purpletree/summernote/lang/summernote-da-DK.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5239","61","catalog/view/javascript/purpletree/summernote/lang/summernote-de-DE.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5240","61","catalog/view/javascript/purpletree/summernote/lang/summernote-es-ES.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5241","61","catalog/view/javascript/purpletree/summernote/lang/summernote-es-EU.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5242","61","catalog/view/javascript/purpletree/summernote/lang/summernote-fa-IR.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5243","61","catalog/view/javascript/purpletree/summernote/lang/summernote-fi-FI.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5244","61","catalog/view/javascript/purpletree/summernote/lang/summernote-fr-FR.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5245","61","catalog/view/javascript/purpletree/summernote/lang/summernote-he-IL.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5246","61","catalog/view/javascript/purpletree/summernote/lang/summernote-hu-HU.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5247","61","catalog/view/javascript/purpletree/summernote/lang/summernote-id-ID.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5248","61","catalog/view/javascript/purpletree/summernote/lang/summernote-it-IT.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5249","61","catalog/view/javascript/purpletree/summernote/lang/summernote-ja-JP.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5250","61","catalog/view/javascript/purpletree/summernote/lang/summernote-ko-KR.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5251","61","catalog/view/javascript/purpletree/summernote/lang/summernote-lt-LT.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5252","61","catalog/view/javascript/purpletree/summernote/lang/summernote-nb-NO.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5253","61","catalog/view/javascript/purpletree/summernote/lang/summernote-nl-NL.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5254","61","catalog/view/javascript/purpletree/summernote/lang/summernote-pl-PL.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5255","61","catalog/view/javascript/purpletree/summernote/lang/summernote-pt-BR.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5256","61","catalog/view/javascript/purpletree/summernote/lang/summernote-pt-PT.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5257","61","catalog/view/javascript/purpletree/summernote/lang/summernote-ro-RO.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5258","61","catalog/view/javascript/purpletree/summernote/lang/summernote-ru-RU.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5259","61","catalog/view/javascript/purpletree/summernote/lang/summernote-sk-SK.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5260","61","catalog/view/javascript/purpletree/summernote/lang/summernote-sl-SI.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5261","61","catalog/view/javascript/purpletree/summernote/lang/summernote-sr-RS-Latin.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5262","61","catalog/view/javascript/purpletree/summernote/lang/summernote-sr-RS.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5263","61","catalog/view/javascript/purpletree/summernote/lang/summernote-sv-SE.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5264","61","catalog/view/javascript/purpletree/summernote/lang/summernote-th-TH.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5265","61","catalog/view/javascript/purpletree/summernote/lang/summernote-tr-TR.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5266","61","catalog/view/javascript/purpletree/summernote/lang/summernote-uk-UA.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5267","61","catalog/view/javascript/purpletree/summernote/lang/summernote-vi-VN.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5268","61","catalog/view/javascript/purpletree/summernote/lang/summernote-zh-CN.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5269","61","catalog/view/javascript/purpletree/summernote/lang/summernote-zh-TW.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5270","61","catalog/view/javascript/purpletree/summernote/plugin/hello","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5271","61","catalog/view/javascript/purpletree/summernote/plugin/specialchars","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5272","61","catalog/view/theme/default/stylesheet/purpletree/custom-a.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5273","61","catalog/view/theme/default/stylesheet/purpletree/custom.css","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5274","61","catalog/view/theme/default/template/account/purpletree_multivendor","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5275","61","catalog/view/theme/default/template/common/filemanager.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5276","61","catalog/view/theme/journal2/template/account/purpletree_multivendor","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5277","61","catalog/view/javascript/purpletree/summernote/plugin/hello/summernote-ext-hello.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5278","61","catalog/view/javascript/purpletree/summernote/plugin/specialchars/summernote-ext-specialchars.js","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5279","61","catalog/view/theme/default/template/account/purpletree_multivendor/commission_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5280","61","catalog/view/theme/default/template/account/purpletree_multivendor/contactlist.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5281","61","catalog/view/theme/default/template/account/purpletree_multivendor/customer_reply.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5282","61","catalog/view/theme/default/template/account/purpletree_multivendor/customercontactlist.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5283","61","catalog/view/theme/default/template/account/purpletree_multivendor/dashboard.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5284","61","catalog/view/theme/default/template/account/purpletree_multivendor/dashboardicons--.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5285","61","catalog/view/theme/default/template/account/purpletree_multivendor/dashboardicons.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5286","61","catalog/view/theme/default/template/account/purpletree_multivendor/order_history.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5287","61","catalog/view/theme/default/template/account/purpletree_multivendor/order_info.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5288","61","catalog/view/theme/default/template/account/purpletree_multivendor/order_invoice.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5289","61","catalog/view/theme/default/template/account/purpletree_multivendor/order_shipping.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5290","61","catalog/view/theme/default/template/account/purpletree_multivendor/policy.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5291","61","catalog/view/theme/default/template/account/purpletree_multivendor/product_form.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5292","61","catalog/view/theme/default/template/account/purpletree_multivendor/product_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5293","61","catalog/view/theme/default/template/account/purpletree_multivendor/register_alertmail.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5294","61","catalog/view/theme/default/template/account/purpletree_multivendor/register_mail.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5295","61","catalog/view/theme/default/template/account/purpletree_multivendor/review.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5296","61","catalog/view/theme/default/template/account/purpletree_multivendor/reviewlist.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5297","61","catalog/view/theme/default/template/account/purpletree_multivendor/seller_form.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5298","61","catalog/view/theme/default/template/account/purpletree_multivendor/seller_order_list.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5299","61","catalog/view/theme/default/template/account/purpletree_multivendor/seller_reply.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5300","61","catalog/view/theme/default/template/account/purpletree_multivendor/seller_store.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5301","61","catalog/view/theme/default/template/account/purpletree_multivendor/sellercontact.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5302","61","catalog/view/theme/default/template/account/purpletree_multivendor/sellers.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5303","61","catalog/view/theme/default/template/account/purpletree_multivendor/storeview.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5304","61","catalog/view/theme/default/template/extension/module/purpletree_sellerpanel.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5305","61","catalog/view/theme/journal2/template/account/purpletree_multivendor/storeview.twig","2018-12-10 07:44:42");
INSERT INTO oc_extension_path VALUES("5340","63","admin/controller/extension/payment/partially.php","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5341","63","admin/model/extension/payment/partially.php","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5342","63","catalog/controller/extension/payment/partially.php","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5343","63","catalog/model/extension/payment/partially.php","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5344","63","admin/language/en-gb/extension/payment/partially.php","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5345","63","admin/view/template/extension/payment/partially.twig","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5346","63","catalog/language/en-gb/extension/payment/partially.php","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5347","63","catalog/view/theme/default/template/extension/payment/partially.twig","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5348","63","catalog/view/theme/default/template/extension/payment/partially_widget.twig","2018-12-29 08:43:13");
INSERT INTO oc_extension_path VALUES("5349","67","catalog/view/javascript/bootstrap-slider.js","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5350","67","admin/controller/extension/module/price_slider.php","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5351","67","catalog/controller/extension/module/price_slider.php","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5352","67","admin/language/en-gb/extension/module/price_slider.php","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5353","67","admin/view/template/extension/module/price_slider.twig","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5354","67","catalog/language/en-gb/extension/module/price_slider.php","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5355","67","catalog/view/theme/default/stylesheet/bootstrap-slider.css","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5356","67","catalog/view/theme/default/template/extension/module/price_slider.twig","2019-01-17 17:05:20");
INSERT INTO oc_extension_path VALUES("5357","69","admin/controller/extension/modification","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5358","69","admin/model/extension/modification","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5359","69","admin/view/javascript/ace","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5360","69","admin/controller/extension/modification/diff.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5361","69","admin/controller/extension/modification/editor.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5362","69","admin/controller/extension/modification/error_log.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5363","69","admin/controller/extension/modification/files.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5364","69","admin/language/en-gb/extension/modification","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5365","69","admin/language/pt-br/extension/modification","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5366","69","admin/model/extension/modification/editor.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5367","69","admin/view/javascript/ace/diff-patch.min.js","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5368","69","admin/view/javascript/ace/diff.min.css","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5369","69","admin/view/javascript/ace/diff.min.js","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5370","69","admin/view/template/extension/modification","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5371","69","admin/language/en-gb/extension/modification/diff.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5372","69","admin/language/en-gb/extension/modification/editor.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5373","69","admin/language/en-gb/extension/modification/error_log.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5374","69","admin/language/en-gb/extension/modification/files.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5375","69","admin/language/pt-br/extension/modification/diff.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5376","69","admin/language/pt-br/extension/modification/editor.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5377","69","admin/language/pt-br/extension/modification/error_log.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5378","69","admin/language/pt-br/extension/modification/files.php","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5379","69","admin/view/template/extension/modification/diff.twig","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5380","69","admin/view/template/extension/modification/editor.twig","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5381","69","admin/view/template/extension/modification/error_log.twig","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5382","69","admin/view/template/extension/modification/files.twig","2019-01-19 16:27:45");
INSERT INTO oc_extension_path VALUES("5383","71","system/config/accubackup","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5384","71","admin/model/extension/accubackup","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5385","71","admin/view/javascript/accubackup","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5386","71","admin/view/stylesheet/accubackup","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5387","71","admin/view/stylesheet/accubackup.css","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5388","71","system/config/accubackup/accubackup.php","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5389","71","system/config/accubackup/cron.txt","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5390","71","admin/controller/extension/module/accubackup.php","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5391","71","admin/model/extension/accubackup/accubackup.php","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5392","71","admin/view/javascript/accubackup/bootstrap-select.min.js","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5393","71","admin/view/stylesheet/accubackup/bootstrap-select.min.css","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5394","71","catalog/controller/extension/module/accubackup.php","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5395","71","catalog/model/extension/module/accubackup.php","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5396","71","admin/language/en-gb/extension/module/accubackup.php","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5397","71","admin/view/template/extension/module/accubackup","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5398","71","admin/view/template/extension/module/accubackup.twig","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5399","71","admin/view/template/extension/module/accubackup/view_databasebackup.twig","2019-01-20 07:58:55");
INSERT INTO oc_extension_path VALUES("5400","73","admin/controller/extension/module/lpinfo.php","2020-06-17 18:01:22");
INSERT INTO oc_extension_path VALUES("5401","74","admin/controller/extension/module/lpinfo.php","2020-06-17 18:21:57");



DROP TABLE oc_filter;

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_filter_description;

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_filter_group;

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_filter_group_description;

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_geo_zone;

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO oc_geo_zone VALUES("3","UK VAT Zone","UK VAT","2009-01-06 23:26:25","2010-02-26 22:33:24");
INSERT INTO oc_geo_zone VALUES("4","UK Shipping","UK Shipping Zones","2009-06-23 01:14:53","2010-12-15 15:18:13");



DROP TABLE oc_information;

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO oc_information VALUES("3","1","3","1");
INSERT INTO oc_information VALUES("4","1","1","1");
INSERT INTO oc_information VALUES("5","1","4","1");
INSERT INTO oc_information VALUES("6","1","2","1");
INSERT INTO oc_information VALUES("7","1","4","1");
INSERT INTO oc_information VALUES("8","0","0","1");
INSERT INTO oc_information VALUES("9","1","5","1");
INSERT INTO oc_information VALUES("11","1","7","1");



DROP TABLE oc_information_description;

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_information_description VALUES("6","1","Delivery Information","&lt;p align=&quot;justify&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); text-align: justify;&quot;&gt;The shipping charges are not fixed and depend on various factors like nature / category of your product, which location despatched from, gross weight of the product.T&lt;/span&gt;&lt;span style=&quot;color: rgb(102, 102, 102); text-align: justify;&quot;&gt;he shipping charge would reflect on the shopping cart / payment page.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); text-align: justify;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;The average delivery time will be 5-7 working days.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px; vertical-align: baseline; margin-bottom: 20px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 20px; color: rgb(102, 102, 102); text-align: justify;&quot; align=&quot;justify&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;We are committed to delivering your order accurately, in good condition, and always on time promised by our customer care executive or on website or mobile. Below are some more shipping related points:&lt;/font&gt;&lt;/p&gt;&lt;table class=&quot;text-section shipping-policy-table&quot; style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 20px; text-align: justify; background-color: rgb(255, 255, 255);&quot; width=&quot;98%&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; align=&quot;justify&quot;&gt;&lt;tbody&gt;&lt;tr style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; width=&quot;4%&quot; valign=&quot;top&quot; height=&quot;37&quot; align=&quot;right&quot;&gt;&lt;span class=&quot;style5&quot; style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;&amp;nbsp;*&lt;/font&gt;&lt;/span&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;Each order would be shipped only to a single destination address specified at the time of payment for that order. If you wish to ship products to different addresses, you shall need to place multiple orders.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; width=&quot;4%&quot; valign=&quot;top&quot; height=&quot;50&quot; align=&quot;right&quot;&gt;&lt;span class=&quot;style5&quot; style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;&amp;nbsp;*&lt;/font&gt;&lt;/span&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;We make our best efforts to ensure that each item in your order is shipped out within 4-5 working days of the order date. However in some cases, it may take longer, upto 6 or more working days.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; width=&quot;4%&quot; valign=&quot;top&quot; height=&quot;25&quot; align=&quot;right&quot;&gt;&lt;span class=&quot;style5&quot; style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;&amp;nbsp;*&lt;/font&gt;&lt;/span&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;Orders will be shipped out orders on all week days (Monday to Saturday), excluding public holidays.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; vertical-align: baseline; margin: 0px; padding: 0px;&quot;&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; width=&quot;4%&quot; valign=&quot;top&quot; height=&quot;37&quot; align=&quot;right&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/td&gt;&lt;td style=&quot;border: 0px; vertical-align: top; margin: 0px; padding-bottom: 12px;&quot; valign=&quot;top&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;
INSERT INTO oc_information_description VALUES("3","1","Privacy Policy","&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;This document is an electronic record in terms of Information Technology Act, 2000 and rules there under as applicable and the provisions pertaining to electronic records in various statutes as amended by the Information Technology Act, 2000. This electronic record is generated by a computer system and does not require any physical or digital signatures to make the terms of this policy binding.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;At vinayakelectrical.in data protection is a matter of trust and your privacy is very important to us. We use your personal information only in the manner set out in this Privacy Policy. Please read this privacy policy to learn more about our information gathering and dissemination practices.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;The privacy practices of this statement apply to our services available under the domain and sub-domains of vinayakelectrical.in (the &quot;Site&quot;) and apply generally to our parent, affiliates, subsidiaries or joint venture websites. By visiting the Site you agree to be bound by the terms and conditions of this Privacy Policy.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;This Privacy Policy explains how vinayakelectrical.in gathers personal information, classified as mandatory or optional as part of the normal operation of our services; and uses, discloses and protects such information through the Site. This detailed privacy policy enables you to take informed decisions in dealings with us. Our parent, subsidiaries and joint ventures operate under similar privacy practices subject to the requirements of applicable law.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;By registering with vinayakelectrical.in, you acknowledge your acceptance of the terms of this Privacy Policy, expressly consent to our use and disclosure of your personal information in accordance with this Privacy Policy and that any personal information provided by you through vinayakelectrical.in is provided under a lawful contract. This Privacy Policy is incorporated into and subject to the terms of the User Agreement. Note: Our privacy policy is subject to change at any time without notice. To make sure you are aware of any changes, please review this policy periodically.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Your Privacy&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;At vinayakelectrical.in, we are extremely proud of our commitment to protect your privacy. We value your trust in us. We work hard to earn your confidence so that you can enthusiastically use our services and recommend your friends and family to participate in dealing with us. Please read the following policy to understand how your personal information will be treated as you make full use of our Site.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;vinayakelectrical.in Privacy Assurance&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;vinayakelectrical.in promises that we will not sell or rent your personal information to third parties for their marketing purposes without your explicit consent. From time to time we may reveal general statistical information about our Web site and visitors, such as number of visitors, number and type of goods and services purchased, etc. Your trust and confidence are our highest priority.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Information that vinayakelectrical.in collects&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;When you use our Site, we collect and store your personal information. We gather your personal information in order to record, support and facilitate your participation in the activities you select, track your preferences, to provide you with a customized Site experience, to notify you of any updated information and new activities and other related functions offered by vinayakelectrical.in, keep you informed about latest content available on the Site, special offers, and other products and services of Vinayak Electrical, to assist you with customer service or technical support issues, to follow up with you after your visit, to otherwise support your relationship with Vinayak Electrical or to prevent fraud and unlawful use. For the aforesaid purpose, we only collect such personal information that we consider relevant to understand you or your interests.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;In general, you can visit the Site without having to provide your personal information during which time you remain anonymous and at no time can we identify you unless you have an account on the Site and log on with your user name and password. Once you provide your personal information, you are no more anonymous to us. To fully use our Site, you will need to register using our online registration form, where you may be required to provide us with your name, date of birth, contact number, email id, user id, password, residence / place of business information, billing information, shipping information, bank account details and other personal information as indicated on the forms throughout the Site. Further the fields are marked as mandatory or optional. You always have the option to not provide information by choosing not to use a particular service or feature on the Site. You may provide us with your vinayakelectrical.in registered user ID. We may automatically track certain information about you based upon your behavior on our site. We use this information to analyze trends, administer the site, track a user�s movement and gather broad demographic information, to better understand, protect and serve our users. This information is compiled and analyzed on an aggregated basis. This information may include the URL that you just came from (whether this URL is on our site or not), which URL you next go to (whether this URL is on our site or not), your computer browser information, and your IP address.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;We use data collection devices such as &quot;cookies&quot; on certain pages of the Site to help analyze our web page flow, measure promotional effectiveness, and promote trust and safety. &quot;Cookies&quot; are small files which identify your computer to our server as a unique user when you visit certain pages on the Site and they are stored by your Internet browser on your computer\'s hard drive. We offer certain features that are only available through the use of a &quot;cookie&quot;. We also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. Most cookies are &quot;session cookies,&quot; meaning that they are automatically deleted from your hard drive at the end of a session. You are always free to decline our cookies if your browser permits, although in that case you may not be able to use full functionality of the Site. We only use cookies for your convenience in using the Site and not for obtaining or using any other information about you. We do not control the use of cookies by third parties.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If you choose to buy or sell on the Site, we collect information about your buying and selling behavior.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If you are a seller, we also collect some additional information, such as a billing address, banking information other payment instrument details and tracking information from cheques or money orders.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If you choose to post messages on our message boards, chat rooms or other message areas or leave feedback for other users, we retain this information as necessary to resolve disputes, provide customer support and troubleshoot problems as permitted by law.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If you send us personal correspondence, such as emails or letters, or if other users or third parties send us correspondence about your activities or postings on the Site, we may collect such information into a file specific to you.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If you register for the Site on another web site or use a web site providing a service for Vinayak Electrical or a web site that helps facilitates your activity on the Site, that web site may provide personal information about you and your transactions back to us.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Our use of your information&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;We use your personal information to facilitate the services you request. We do not sell, rent, trade or exchange any personally-identifying information of our Users. We may provide your collected information to our affiliates and service providers under contract (such as customer care, data analytics) to support the operation of the Website and our services. To the extent we use your personal information to market to you, we will provide you the ability to opt-out of such uses. We use your personal information to: resolve disputes; troubleshoot problems; help promote safe trading; collect fees owed; measure consumer interest in the services provided by us, inform you about online and offline offers, products, services, and updates; customize your experience; detect and protect us against error, fraud and other criminal activity; enforce our User Agreement, and in general to improve the user experience and make it comparable to other e-commerce websites; and as otherwise described to you at the time of collection. In our efforts to continually improve our product and service offerings, we collect and analyze demographic, profile and usage data about our users\' activity on our Site.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;We use your personal information to improve our platform, improve the Site\'s content and product offerings, prevent or detect fraud or abuses of our website and tailor it to meet your needs, so as to provide you with a smooth, efficient, safe and customized experience while using the Site.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;We may also use your personal information to display contents and services that are targeted to your interests. By accepting the User Agreement and Privacy Policy, you expressly agree to receive this information. If you do not wish to receive these communications, we encourage you to opt out of the receipt of certain communications in your profile under My Account or by clicking unsubscribe any email communication. You may make changes to your profile at any time.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Our Disclosure of your information&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Your personal information is an important part of our business and we are not in the business of selling it to others. vinayakelectrical.in shares your personal information only to categories of persons that are either subject to this Privacy Policy or follow practices at least as protective as those described in this Privacy Policy as more particularly described below:&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Legal Requests&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;We cooperate with law enforcement and regulatory inquiries, as well as other third parties to enforce laws, such as: intellectual property rights, fraud and other rights, to help protect you and the community from bad actors. Therefore, in response to a verified request by law enforcement or other government officials relating to a criminal investigation or alleged illegal activity, we may (and you authorize us to) disclose some of your personal information as is reasonably necessary to respond to subpoenas, court orders, or other legal process. We may disclose personal information to law enforcement offices, third party rights owners, or others in the good faith belief that such disclosure is reasonably necessary to: enforce our Terms or Privacy Policy; respond to claims that an advertisement, posting or other content violates the rights of a third party; or protect the rights, property or personal safety of our users or the general public.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;In all cases, you must give users an opportunity to remove themselves from your database and a chance to review what information you have collected about them. In addition, under no circumstances, except as defined in this Section, can you disclose personally identifiable information about another user to any third party without our consent and the consent of such other user after adequate disclosure.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;vinayakelectrical.in and our users do not tolerate spam. Therefore, without limiting the foregoing, you are not licensed to add a vinayakelectrical.in user-even a user who has purchased an item from you-to your mail list (email or physical mail) without their express consent after adequate disclosure.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;What about children\'s privacy?&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Use of vinayakelectrical.in is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872. If you are under the age of 18, you cannot buy or sell any items on the Site. If you wish to purchase or sell an item on the Site such purchase or sale may be made by your legal guardian or parents who have registered as users of the Site.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Access or change your personally identifiable information&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;To protect your privacy and security, we will verify your identity before granting access or making changes to your personally identifying information. If you have registered your profile on vinayakelectrical.in, your registered user ID and Password are required in order to access your profile information.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Security&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;When you place orders or access your account information, we offer the use of a secure server. The secure server software (SSL) encrypts all information you put in before it is sent to us. Once your information is in our possession we adhere to strict security guidelines in compliance with the (Indian) Information Technology Act, 2000, protecting it against unauthorized access.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Your Consent&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;By using the Site and/ or by providing your information, you acknowledge our use of your personal information in the manner as set out in this Privacy Policy. Any changes to our privacy policy will be communicated through our Web site at least 10 days in advance of implementation. Name and address of the entity collecting and retaining your information shall be the contracting entity stated in the vinayakelectrical.in User Agreement.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Grievance Officer:&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;In accordance with Information Technology Act 2000 and rules made there under, the name and contact details of the Grievance Officer are published on the Site in User Agreement.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;
INSERT INTO oc_information_description VALUES("5","1","Terms &amp; Conditions","&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Use of the Website&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�By accessing the website, you warrant and represent to the website owner that you are legally entitled to do so and to make use of information made available via the website.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Trademarks�&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;The trademarks, names, logos and service marks (collectively �trademarks�) displayed on this website are registered and unregistered trademarks of the website owner. Nothing contained on this website should be construed as granting any license or right to use any trademark without the prior written permission of the website owner.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;External links�&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;External links may be provided for your convenience, but they are beyond the control of the website owner and no representation is made as to their content. Use or reliance on any external links and the content thereon provided is at your own risk.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Warranties�&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;The website owner makes no warranties, representations, statements or guarantees (whether express, implied in law or residual) regarding the website.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Disclaimer of liability&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�The website owner shall not be responsible for and disclaims all liability for any loss, liability, damage (whether direct, indirect or consequential), personal injury or expense of any nature whatsoever which may be suffered by you or any third party (including your company), as a result of or which may be attributable, directly or indirectly, to your access and use of the website, any information contained on the website, your or your company�s personal information or material and information transmitted over our system. In particular, neither the website owner nor any third party or data or content provider shall be liable in any way to you or to any other person, firm or corporation whatsoever for any loss, liability, damage (whether direct or consequential), personal injury or expense of any nature whatsoever arising from any delays, inaccuracies, errors in, or omission of any share price information or the transmission thereof, or for any actions taken in reliance thereon or occasioned thereby or by reason of non-performance or interruption, or termination thereof.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Conflict of terms�&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If there is a conflict or contradiction between the provisions of these website terms and conditions and any other relevant terms and conditions, policies or notices, the other relevant terms and conditions, policies or notices which relate specifically to a particular section or module of the website shall prevail in respect of your use of the relevant section or module of the website.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Severability�&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Any provision of any relevant terms and conditions, policies and notices, which is or becomes unenforceable in any jurisdiction, whether due to being void, invalidity, illegality, unlawfulness or for any reason whatever, shall, in such jurisdiction only and only to the extent that it is so unenforceable, be treated as void and the remaining provisions of any relevant terms and conditions, policies and notices shall remain in full force and effect.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Applicable laws �&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Use of this website shall in all respects be governed by the laws of the state of Maharashtra, regardless of the laws that might be applicable under principles of conflicts of law. The parties agree that the Maharashtra courts located in India, Maharashtra, shall have exclusive jurisdiction over all controversies arising under this agreement and agree that venue is proper in those courts.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; line-height: 1.6; color: rgb(51, 51, 51);&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: italic; text-align: left;&quot;&gt;We as a merchant shall be under no liability whatsoever in respect of any loss or damage arising directly or indirectly out of the decline of authorization for any Transaction, on Account of the Cardholder having exceeded the preset limit mutually agreed by us with our acquiring bank from time to time.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;
INSERT INTO oc_information_description VALUES("7","1","Cancellation Policy","&lt;p&gt;&lt;span style=&quot;line-height: 115%;&quot;&gt;&lt;font color=&quot;#6b6969&quot; face=&quot;Tahoma&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Vinayak Electricals&lt;/span&gt;&lt;/font&gt;&lt;font face=&quot;Tahoma&quot; style=&quot;color: rgb(107, 105, 105); font-size: 14px;&quot;&gt;&amp;nbsp;ensures that your order is safely delivered to you within the
INSERT INTO oc_information_description VALUES("8","1","Returns Policy","&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;You can place a Return request within 10 days of order delivery. However, in case of Damaged/Missing Product, the Return request should be filed within 2 days of delivery.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Return request will be reviewed by Vinayak Electricals.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If required, request will be shared with the merchant for his/her approval.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;After approval, pickup of the product will be arranged through our courier partners.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If our reverse pickup service is not available on your address, we will ask you to dispatch the product.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;After the product is received, it is verified against your claim and accordingly, Replacement or Refund is initiated. Please note that Replacement would depend upon the stock availability.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Process to Return the Product is as follows...&lt;/b&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1) Login to Vinayak Electricals&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2) Navigate to My Account &amp;gt; Order History&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3) Click on the Returns button in front of the Product which you wish to return.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4) Fill up all the details and submit the form.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;b style=&quot;font-size: 14px;&quot;&gt;What do I do if my area does not have a reverse pick up service?&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;If our reverse pickup service is not available at your address, we will ask you to dispatch the product. Return address will be notified to you in a separate email, along with the packaging instructions and required documents.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Please take care of the following-&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Mention the Order number/Delivery Address on the package, before handing it over to the Courier Representative&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Attach courier receipt to email and send it to order@vinayakelectrical.in&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Track your Return Shipment on the Courier Company\'s Website.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;b style=&quot;font-size: 14px;&quot;&gt;How do I track the status of my Return request?&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;/span&gt;&lt;span style=&quot;font-size: 14px; white-space: pre;&quot;&gt;	&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Check the status of your Return at �My Accounts� -&amp;gt; �Returns� Section and click on particular Return ID to view return details.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;�&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;After receiving your Return Request, we will update you on the status i.e. Acceptance/Rejection of Reverse Pickup, Reshipment &amp;amp; Refund.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;","Returns Policy","","");
INSERT INTO oc_information_description VALUES("9","1","Payment Options","&lt;p&gt;&lt;img src=&quot;http://kasturicollection.com/image/catalog/Net-Banking-CCAvenue.jpg&quot; style=&quot;width: 841px;&quot;&gt;&lt;br&gt;&lt;/p&gt;","Payment Options","","");
INSERT INTO oc_information_description VALUES("11","1","Order Tracking","&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); font-size: 18px;&quot;&gt;&lt;a href=&quot;https://shipway.in/the_professional_couriers&quot; style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;P&lt;/a&gt;lease follow below steps to track your order...&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;b&gt;&lt;a href=&quot;https://shipway.in/the_professional_couriers&quot; style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;1&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;) Login to your account&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;b&gt;2) Go to Order History&amp;nbsp;&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;b&gt;3) View the Order&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;4) Go to Order History and Check the Tracking Number in front of status :&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-size: 18px;&quot;&gt;Shipped&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-size: 18px;&quot;&gt;&lt;b&gt;5) Click on below link and enter the Tracking Number.&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://shipway.in/the_professional_couriers&quot; style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Track Your Order&lt;/span&gt;&lt;/b&gt;&lt;/a&gt;&lt;br&gt;&lt;/p&gt;","Order Tracking","","");
INSERT INTO oc_information_description VALUES("4","1","About Us","&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;*** Welcome to Vinayak Electricals ***&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;b style=&quot;text-align: start;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Vinayak Electricals&amp;nbsp;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&amp;nbsp;started in 2018 with an aim of delivering the electrical needs using an Online Platform.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 14px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;Customers can shop using&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;text-align: start;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;VinayakElectricals&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 14px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;Android App, website, and pick from a large collection of LED Lightings,Switches &amp;amp; Sockets,Cables &amp;amp; Wires.&lt;/font&gt;&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 14px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Verdana; color: rgb(51, 51, 51); font-size: 14px;&quot;&gt;We keep enhancing our technology and product assortment to ensure that&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;text-align: start; font-size: 14px;&quot;&gt;Vinayak Electricals&lt;/span&gt;&lt;span style=&quot;text-align: start; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Verdana; color: rgb(51, 51, 51); font-size: 14px;&quot;&gt;&amp;nbsp;is the most delightful shopping experience for everyone.&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;color: rgb(68, 68, 68); margin-top: 20px; margin-bottom: 10px; font-size: 21px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Our Address :&amp;nbsp;&amp;nbsp;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Khandbanagar,Morgoan Road,Baramati-41310&lt;/span&gt;&lt;font face=&quot;Verdana&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2&lt;/span&gt;&lt;/font&gt;&lt;/h3&gt;&lt;h3 style=&quot;color: rgb(68, 68, 68); margin-top: 20px; margin-bottom: 10px; font-size: 21px;&quot;&gt;&lt;font face=&quot;Verdana&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Contact No&amp;nbsp; &amp;nbsp; :&lt;/b&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;8796154725&lt;/span&gt;&lt;/font&gt;&lt;/h3&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 10px;&quot;&gt;&lt;font face=&quot;Verdana&quot; style=&quot;&quot;&gt;&lt;b style=&quot;color: rgb(68, 68, 68); font-size: 14px;&quot;&gt;Email Id&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;:&lt;/b&gt;&lt;font color=&quot;#444444&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt; info@vinayakelectrical.in&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: PTSans-Regular; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;



DROP TABLE oc_information_to_layout;

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_information_to_layout VALUES("3","0","0");
INSERT INTO oc_information_to_layout VALUES("5","0","0");
INSERT INTO oc_information_to_layout VALUES("6","0","0");
INSERT INTO oc_information_to_layout VALUES("4","0","0");
INSERT INTO oc_information_to_layout VALUES("7","0","0");
INSERT INTO oc_information_to_layout VALUES("8","0","0");
INSERT INTO oc_information_to_layout VALUES("9","0","0");
INSERT INTO oc_information_to_layout VALUES("11","0","0");



DROP TABLE oc_information_to_store;

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_information_to_store VALUES("3","0");
INSERT INTO oc_information_to_store VALUES("4","0");
INSERT INTO oc_information_to_store VALUES("5","0");
INSERT INTO oc_information_to_store VALUES("6","0");
INSERT INTO oc_information_to_store VALUES("7","0");
INSERT INTO oc_information_to_store VALUES("8","0");
INSERT INTO oc_information_to_store VALUES("9","0");
INSERT INTO oc_information_to_store VALUES("11","0");



DROP TABLE oc_language;

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_language VALUES("1","English","en-gb","en-US,en_US.UTF-8,en_US,en-gb,english","gb.png","english","1","1");



DROP TABLE oc_layout;

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO oc_layout VALUES("1","Home");
INSERT INTO oc_layout VALUES("2","Product");
INSERT INTO oc_layout VALUES("3","Category");
INSERT INTO oc_layout VALUES("4","Default");
INSERT INTO oc_layout VALUES("5","Manufacturer");
INSERT INTO oc_layout VALUES("6","Account");
INSERT INTO oc_layout VALUES("7","Checkout");
INSERT INTO oc_layout VALUES("8","Contact");
INSERT INTO oc_layout VALUES("9","Sitemap");
INSERT INTO oc_layout VALUES("10","Affiliate");
INSERT INTO oc_layout VALUES("11","Information");
INSERT INTO oc_layout VALUES("12","Compare");
INSERT INTO oc_layout VALUES("13","Search");



DROP TABLE oc_layout_module;

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

INSERT INTO oc_layout_module VALUES("2","4","0","content_top","0");
INSERT INTO oc_layout_module VALUES("3","4","0","content_top","1");
INSERT INTO oc_layout_module VALUES("20","5","0","column_left","2");
INSERT INTO oc_layout_module VALUES("69","10","account","column_right","1");
INSERT INTO oc_layout_module VALUES("108","6","featured.39","column_left","0");
INSERT INTO oc_layout_module VALUES("117","6","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("111","2","featured.38","column_left","0");
INSERT INTO oc_layout_module VALUES("109","6","account","column_right","1");
INSERT INTO oc_layout_module VALUES("118","10","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("146","3","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("120","7","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("121","12","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("122","8","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("123","4","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("143","11","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("126","5","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("127","2","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("128","13","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("129","9","hubtalk","content_bottom","999");
INSERT INTO oc_layout_module VALUES("142","1","slideshow.27","content_top","0");



DROP TABLE oc_layout_route;

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

INSERT INTO oc_layout_route VALUES("78","6","0","account/%");
INSERT INTO oc_layout_route VALUES("17","10","0","affiliate/%");
INSERT INTO oc_layout_route VALUES("112","3","0","product/category");
INSERT INTO oc_layout_route VALUES("96","1","0","common/home");
INSERT INTO oc_layout_route VALUES("80","2","0","product/product");
INSERT INTO oc_layout_route VALUES("110","11","0","information/information");
INSERT INTO oc_layout_route VALUES("23","7","0","checkout/%");
INSERT INTO oc_layout_route VALUES("82","8","0","information/contact");
INSERT INTO oc_layout_route VALUES("32","9","0","information/sitemap");
INSERT INTO oc_layout_route VALUES("34","4","0","");
INSERT INTO oc_layout_route VALUES("45","5","0","product/manufacturer");
INSERT INTO oc_layout_route VALUES("52","12","0","product/compare");
INSERT INTO oc_layout_route VALUES("53","13","0","product/search");



DROP TABLE oc_length_class;

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oc_length_class VALUES("1","1.00000000");
INSERT INTO oc_length_class VALUES("2","10.00000000");
INSERT INTO oc_length_class VALUES("3","0.39370000");



DROP TABLE oc_length_class_description;

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_length_class_description VALUES("1","1","Centimeter","cm");
INSERT INTO oc_length_class_description VALUES("2","1","Millimeter","mm");
INSERT INTO oc_length_class_description VALUES("3","1","Inch","in");



DROP TABLE oc_location;

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `gallery` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;




DROP TABLE oc_manufacturer;

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;




DROP TABLE oc_manufacturer_to_store;

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_marketing;

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;




DROP TABLE oc_mastercard_pgs_token;

CREATE TABLE `oc_mastercard_pgs_token` (
  `mastercard_pgs_token_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `token` char(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`mastercard_pgs_token_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE oc_mastercard_pgs_transaction;

CREATE TABLE `oc_mastercard_pgs_transaction` (
  `mastercard_pgs_transaction_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` char(40) NOT NULL,
  `merchant` char(16) NOT NULL,
  `order_id` int(11) NOT NULL,
  `partnerSolutionId` char(40) NOT NULL,
  `response_gatewayCode` char(15) NOT NULL,
  `result` char(7) NOT NULL,
  `transaction_type` char(20) NOT NULL,
  `transaction_amount` decimal(15,2) NOT NULL,
  `transaction_currency` char(3) NOT NULL,
  `billing_address_city` char(100) NOT NULL,
  `billing_address_company` char(100) NOT NULL,
  `billing_address_country` char(3) NOT NULL,
  `billing_address_postcodeZip` char(10) NOT NULL,
  `billing_address_stateProvince` char(20) NOT NULL,
  `billing_address_street` char(100) NOT NULL,
  `risk_response_gatewayCode` char(15) NOT NULL,
  `risk_response_totalScore` int(11) NOT NULL,
  `version` char(8) NOT NULL,
  `device_browser` char(255) NOT NULL,
  `device_ipAddress` char(15) NOT NULL,
  `timeOfRecord` char(29) NOT NULL,
  `notification_date` datetime NOT NULL,
  PRIMARY KEY (`mastercard_pgs_transaction_id`),
  KEY `transaction_id_order_id` (`transaction_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE oc_modification;

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO oc_modification VALUES("25","36","Pavo User Popup","pavuserpopup","Pavothemes","1.0.0","http://www.pavothemes.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Pavo User Popup</name>\n	<code>pavuserpopup</code>\n	<version>1.0.0</version>\n	<author>Pavothemes</author>\n	<link>http://www.pavothemes.com</link>\n 	\n 	<file path=\"catalog/controller/common/footer.php\">\n        <operation>\n            <search><![CDATA[$data[\'contact\'] = $this->url->link(\'information/contact\');]]></search>\n            <add position=\"before\">\n                <![CDATA[\n               $data[\'user_popup\'] = $this->load->controller(\'extension/module/pavuserpopup\');\n            ]]>\n            </add>\n        </operation>     \n    </file>\n\n    <file path=\"catalog/view/theme/*/template/common/footer.twig\">\n        <operation>\n            <search><![CDATA[</body>]]></search>\n            <add position=\"before\">\n                <![CDATA[\n               {{ user_popup }}\n            ]]>\n            </add>\n        </operation>     \n    </file>\n\n</modification>","1","2018-04-05 17:30:19");
INSERT INTO oc_modification VALUES("2","9","Pavo Store Locator","pavstorelocator","pavothemes","1.0.0","http://www.pavothemes.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Pavo Store Locator</name>\n	<code>pavstorelocator</code>\n	<version>1.0.0</version>\n	<author>pavothemes</author>\n	<link>http://www.pavothemes.com</link>\n	<file path=\"admin/view/template/localisation/location_form.twig\">\n        <operation>\n            <search><![CDATA[ </form>]]></search>\n            <add position=\"before\"><![CDATA[\n					     <div class=\"form-group\">\n				            <label class=\"col-sm-2 control-label\" for=\"input-email\">{{ entry_email }}</label>\n				            <div class=\"col-sm-10\">\n				              <input type=\"text\" name=\"email\" value=\"{{ email }}\" placeholder=\"{{ entry_email }}\" id=\"input-email\" class=\"form-control\" />\n				            </div>\n				          </div>   \n				          <div class=\"form-group\">\n				            <label class=\"col-sm-2 control-label\" for=\"input-video\">{{ entry_video }}</label>\n				            <div class=\"col-sm-10\">\n				              <input type=\"text\" name=\"video\" value=\"{{ video }}\" placeholder=\"{{ entry_video }}\" id=\"input-video\" class=\"form-control\" />\n				            </div>\n				          </div>   \n\n				             <div class=\"table-responsive form-group\">\n				               <label class=\"col-sm-2 control-label\" for=\"input-gallery\">{{ entry_gallery }}</label>\n				                <div class=\"col-sm-10\">\n				                  <table id=\"images\" class=\"table table-striped table-bordered table-hover\">\n				                    <thead>\n				                      <tr>\n				                        <td class=\"text-left\">{{ entry_additional_image }}</td>\n				                        <td class=\"text-right\">{{ entry_sort_order }}</td>\n				                        <td></td>\n				                      </tr>\n				                    </thead>\n				                    <tbody>\n				                    \n				                    {% set image_row = 0 %}\n				                    {% for image in images %}\n				                    <tr id=\"image-row{{ image_row }}\">\n				                      <td class=\"text-left\"><a href=\"\" id=\"thumb-image{{ image_row }}\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ catalog_url }}/image/{{ images[image_row] }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n				                        <input type=\"hidden\" name=\"images[{{ image_row }}]\" value=\"{{ images[image_row] }}\" id=\"input-image{{ image_row }}\" /></td>\n				                   \n				                      <td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n				                    </tr>\n				                    {% set image_row = image_row + 1 %}\n				                    {% endfor %}\n				                      </tbody>\n				                    \n				                    <tfoot>\n				                      <tr>\n				                        <td colspan=\"2\"></td>\n				                        <td class=\"text-left\"><button type=\"button\" onclick=\"addImage();\" data-toggle=\"tooltip\" title=\"{{ button_image_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n				                      </tr>\n				                    </tfoot>\n				                  </table>\n				                </div>\n				              </div>\n\n				           <script type=\"text/javascript\">\n				            var image_row = {{ image_row }};\n\n				            function addImage() {\n				              html  = \'<tr id=\"image-row\' + image_row + \'\">\';\n				              html += \'  <td class=\"text-left\"><a href=\"\" id=\"thumb-image\' + image_row + \'\"data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ placeholder }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a><input type=\"hidden\" name=\"images[\' + image_row + \']\" value=\"\" id=\"input-image\' + image_row + \'\" /></td>\';\n				             \n				              html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n				              html += \'</tr>\';\n\n				              $(\'#images tbody\').append(html);\n\n				              image_row++;\n				            }\n				            </script> \n            ]]></add>\n        </operation>\n    </file>\n     \n     <file path=\"admin/controller/localisation/location.php\">\n\n        <operation>\n            <search><![CDATA[$this->model_localisation_location->addLocation($this->request->post); ]]></search>\n            <add position=\"replace\">\n            	<![CDATA[ $id = $this->model_localisation_location->addLocation($this->request->post);\n            			 $this->load->model(\'extension/pavstorelocator/location\');\n						 $this->model_extension_pavstorelocator_location->edit( $id, $this->request->post );\n            	]]>\n            </add>\n        </operation>    \n        <operation>\n            <search><![CDATA[ 	$this->load->model(\'tool/image\'); ]]></search>\n            <add position=\"before\"><![CDATA[\n				if (isset($this->request->post[\'video\'])) {\n					$data[\'video\'] = $this->request->post[\'video\'];\n				} elseif (!empty($location_info)) {\n					$data[\'video\'] = $location_info[\'video\'];\n				} else {\n					$data[\'video\'] = \'\';\n				}\n\n				if (isset($this->request->post[\'email\'])) {\n					$data[\'email\'] = $this->request->post[\'email\'];\n				} elseif (!empty($location_info)) {\n					$data[\'email\'] = $location_info[\'email\'];\n				} else {\n					$data[\'email\'] = \'\';\n				}\n\n\n				$data[\'catalog_url\'] = HTTP_CATALOG;\n				if (isset($this->request->post[\'email\'])) {\n					$data[\'images\'] = $this->request->post[\'images\'];\n				} elseif (!empty($location_info)) {\n					$data[\'images\'] = explode( \"|\", $location_info[\'gallery\'] );\n				} else {\n					$data[\'images\'] = \'\';\n				}\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[ $this->model_localisation_location->editLocation($this->request->get[\'location_id\'], $this->request->post); ]]></search>\n            <add position=\"after\"><![CDATA[\n            	$this->load->model(\'extension/pavstorelocator/location\');\n				$this->model_extension_pavstorelocator_location->edit( $this->request->get[\'location_id\'], $this->request->post );\n            ]]></add>\n        </operation>    \n    </file>\n\n      <file path=\"admin/language/*/localisation/location.php\">\n     	\n        <operation>\n            <search><![CDATA[$_[\'entry_name\']       = \'Store Name\'; ]]></search>\n            <add position=\"replace\">\n            	<![CDATA[\n            		$_[\'entry_name\']        = \'Location name\';\n            		$_[\'entry_email\']       = \'Email\';\n            		$_[\'entry_video\']       = \'Video\';\n            		$_[\'entry_gallery\']     = \'Gallery\';\n            	]]>\n            </add>\n        </operation>    \n    </file>    \n</modification>","0","2018-02-17 15:03:05");
INSERT INTO oc_modification VALUES("3","10","Pavo QuickView","pavquickview","Pavothemes","1.0.0","http://www.pavothemes.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Pavo QuickView</name>\n	<code>pavquickview</code>\n	<version>1.0.0</version>\n	<author>Pavothemes</author>\n	<link>http://www.pavothemes.com</link>\n	<file path=\"catalog/controller/common/header.php\">\n        <operation>\n            <search><![CDATA[$data[\'title\'] = $this->document->getTitle();]]></search>\n            <add position=\"before\">\n                <![CDATA[\n               $data[\'quickview\'] = $this->load->controller(\'extension/module/pavquickview\');\n            ]]>\n            </add>\n        </operation>     \n    </file>\n</modification>","1","2018-02-17 15:16:15");
INSERT INTO oc_modification VALUES("4","12","Apptuse for OpenCart 3.x","Apptuse for OpenCart 3.x","Apptuse Developer","3.x-3.16","https://apptuse.com","<modification>\n	<name>Apptuse for OpenCart 3.x</name>\n	<code>Apptuse for OpenCart 3.x</code>\n	<version>3.x-3.16</version>\n	<author>Apptuse Developer</author>\n	<link>https://apptuse.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[ $design = array(); ]]></search>\n			<add position=\"before\"><![CDATA[\n			\n				$data[\'menus\'][] = array(\n					\'id\'       => \'menu-apptuse\',\n					\'icon\'	   => \'fa-mobile\', \n					\'name\'	   => $this->language->get(\'apptuse_plugin_name\'),\n					\'href\'     => $this->url->link(\'extension/apptuse\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);	\n		\n\n				\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n				$_[\'apptuse_plugin_name\']   = \'Apptuse\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n","1","2018-02-17 15:34:48");
INSERT INTO oc_modification VALUES("5","13","Invoice Barcode By Kamran","InvoiceBarcodeByKamran","Kamran Adil","1.0","http://aboutme.com/kamrankr","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <code>InvoiceBarcodeByKamran</code>\n    <name>Invoice Barcode By Kamran</name>\n    <version>1.0</version>\n    <author>Kamran Adil</author>\n    <link>http://aboutme.com/kamrankr</link>\n    <!-- This Modification will add the barcode inside opencart invoice -->\n    <file path=\"admin/view/template/sale/order_invoice.twig\">\n        <operation>\n            <search><![CDATA[#{{ order.order_id }}]]></search>\n            <add position=\"after\" offset=\"-1\"><![CDATA[\n              <svg class=\"barcode\" jsbarcode-format=\"CODE128\" jsbarcode-value=\"{{ order.order_id }}\" jsbarcode-textmargin=\"0\" jsbarcode-height=\'25\'></svg>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/sale/order_invoice.twig\">\n        <operation>\n            <search><![CDATA[</html>]]></search>\n            <add position=\"after\" offset=\"0\"><![CDATA[\n              <script src=\"https://cdn.jsdelivr.net/jsbarcode/3.5.8/JsBarcode.all.min.js\"></script>\n              <script type=\"text/javascript\">\n              $(document).ready(function () {\n              JsBarcode(\".barcode\").init();\n              });\n              </script>\n              <style type=\"text/css\">\n              .barcode\n              {\n              	float:right;\n              }\n              </style>\n            ]]></add>\n        </operation>\n    </file>\n\n</modification>\n","1","2018-02-17 15:38:28");
INSERT INTO oc_modification VALUES("6","14","(Replacing the button to buy if there is Not available) ?????? ?","2vHShWq","Slait","3.0.2.0 (11)","https://brandsweb.ru","<modification>
INSERT INTO oc_modification VALUES("7","17","Show Module Link At Left Menu","webocreation_show_module_link_at_left_menu","Rupak Nepali","3.0","https://webocreation.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>
INSERT INTO oc_modification VALUES("8","18","Loading Bar by GrandCMS.com","pace_loading_bar","GrandCMS.com","2016.11.28","http://www.grandcms.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Loading Bar by GrandCMS.com</name>\n  <version>2016.11.28</version>\n  <author>GrandCMS.com</author>\n  <link>http://www.grandcms.com</link>\n  <code>pace_loading_bar</code>\n  <file path=\"catalog/controller/common/header.php\">\n    <operation>\n      <search><![CDATA[public function index() {]]></search>\n      <add position=\"after\"><![CDATA[\n      //progress bar\n      $this->document->addStyle(\'catalog/view/javascript/pace/pace.css\');\n      $this->document->addScript(\'catalog/view/javascript/pace/pace.min.js\');\n      //progress bar end\n      ]]></add>\n    </operation>\n  </file>\n</modification>","1","2018-02-18 15:04:45");
INSERT INTO oc_modification VALUES("10","0","d_twig_manager","d_twig_manager","Dreamvention","2.0.0","http://dreamvention.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            ]]></add>\n        </operation>\n    </file>\n</modification>","1","2018-02-18 15:12:56");
INSERT INTO oc_modification VALUES("46","65","Catalog - Product Hide when stock is empty","mmoc-catalog-hide-on-stock-zero","Peter Maier","3-1.0","http://mig-media.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Catalog - Product Hide when stock is empty</name>\n    <code>mmoc-catalog-hide-on-stock-zero</code>\n    <version>3-1.0</version>\n    <author>Peter Maier</author>\n    <link>http://mig-media.com</link>\n	<file path=\"catalog/model/catalog/product.php\">\n	<operation>\n	    <search><![CDATA[p.status = \'1\']]></search>\n		<add position=\"replace\"><![CDATA[p.status = \'1\' AND p.quantity > 0 ]]></add>\n	</operation>\n	</file>\n</modification>\n","1","2018-12-29 08:48:32");
INSERT INTO oc_modification VALUES("21","32","Admin-Login to add verification code check","AdminRecaptcha","suffixbig","v1.0.0.4 Apply to OPENCART3.0.2.","","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Admin-Login to add verification code check</name>\n	<code>AdminRecaptcha</code>\n	<version>v1.0.0.4 Apply to OPENCART3.0.2.0</version>\n	<link></link>\n	<email>suffixbig@gmail.com</email>\n	<author>suffixbig</author>\n<!--??\n2.3=> 3.0? 3??????????\ngoogle_captcha_status=>captcha_google_status 2?\ngoogle_captcha_key=>captcha_google_key\ngoogle_captcha_secret=>captcha_google_secret\n-->\n    <file path=\"admin/controller/common/login.php\">\n        <operation info=\"Adding sitekey in controller\">\n            <search><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search>\n            <add position=\"before\"><![CDATA[\n$data[\'site_key\'] = \'\';            \nif ($this->config->get(\'captcha_google_status\')) {\n			$this->document->addScript(\'https://www.google.com/recaptcha/api.js\');\n			$data[\'site_key\'] = $this->config->get(\'captcha_google_key\');\n} \n		]]></add>\n        </operation>\n        <operation info=\"adding Error Text\">\n            <search><![CDATA[if (isset($this->session->data[\'success\'])) {]]></search>\n            <add position=\"before\"><![CDATA[if (isset($this->error[\'captcha\'])) {\n			$data[\'error_captcha\'] = $this->error[\'captcha\'];\n		} else {\n			$data[\'error_captcha\'] = \'\';\n		}\n]]></add>\n        </operation>\n        <operation info=\"Adding Validation\">\n        <!--20171123??????????????-->\n            <search><![CDATA[return !$this->error;]]></search>\n            <add position=\"before\"><![CDATA[\n        if ($this->config->get(\'captcha_google_status\')) {\n                $this->load->language(\'extension/captcha/google_captcha\');\n\n                $recaptcha = file_get_contents(\'https://www.google.com/recaptcha/api/siteverify?secret=\' . urlencode($this->config->get(\'captcha_google_secret\')) . \'&response=\' . $this->request->post[\'g-recaptcha-response\'] . \'&remoteip=\' . $this->request->server[\'REMOTE_ADDR\']);\n        \n                $recaptcha = json_decode($recaptcha, true);\n        \n                if ($recaptcha[\'success\']) {\n                    $this->session->data[\'gcapcha\']	= true;\n                } else {\n                    $this->error[\'captcha\'] = $this->language->get(\'error_captcha\');\n                }\n		}\n        ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/en-gb/common/login.php\">\n        <operation>\n            <search><![CDATA[$_[\'button_login\']   = \'Login\';]]></search>\n            <add position=\"after\"><![CDATA[\n            $_[\'entry_captcha\']  = \'Enter the code in the box below\';\n            $_[\'error_captcha\']  = \'Image verification failed, please re-verify\';\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/zh-TW/common/login.php\">\n        <operation>\n            <search><![CDATA[$_[\'button_login\']   = \'??\']]></search>\n            <add position=\"after\"><![CDATA[\n            $_[\'entry_captcha\']  = \'??????????\';\n            $_[\'error_captcha\']  = \'????????????\';\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/login.twig\">\n        <operation info=\"Adding the Captcha Box in template\">\n            <search><![CDATA[<div class=\"text-right\">]]></search>\n            <add position=\"before\"><![CDATA[\n{% if site_key %}\n            <div class=\"form-group\" align=\"center\">\n                <div class=\"g-recaptcha\" data-sitekey=\"{{ site_key }}\"></div>\n                {% if error_captcha %}\n                  <div class=\"text-danger\">{{ error_captcha }}</div>\n                {% endif %}\n            </div>\n{% endif %}\n]]></add>\n        </operation>\n    </file>\n</modification>","1","2018-04-05 17:19:51");
INSERT INTO oc_modification VALUES("23","34","Two Factor Authentication for Open Cart 3 admin panel","gelderblominternet_tfa_ocmod","Gelderblom Internet Solutions","3.0.2.0.1","https://gelderblominternet.nl","<modification>\n    <name>Two Factor Authentication for Open Cart 3 admin panel</name>\n    <version>3.0.2.0.1</version>\n    <link>https://gelderblominternet.nl</link>\n    <author><![CDATA[Gelderblom Internet Solutions]]></author>\n    <code>gelderblominternet_tfa_ocmod</code>\n\n    <file path=\"admin/controller/common/login.php\">\n        <operation>\n            <search><![CDATA[$this->session->data[\'user_token\'] = token(32);]]></search>\n            <add position=\"after\"><![CDATA[\n            if (!isset($this->session->data[\'user_id\']) || $this->session->data[\'user_id\'] == 0 && isset($this->session->data[\'tfa_user_id\']) && $this->session->data[\'tfa_user_id\'] > 0) {\n                $this->response->redirect($this->url->link(\'extension/tfaauthenticate\', \'user_token=\' . $this->session->data[\'user_token\'], true));\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/user/user.php\">\n        <operation>\n            <search><![CDATA[public function editPassword($user_id, $password) {]]></search>\n            <add position=\"before\"><![CDATA[\n            public function editTfa($user_id, $tfa_enable, $shared_secret, $backup_code, $salt) {\n                $this->db->query(\"UPDATE `\" . DB_PREFIX . \"user` SET tfa_enable = \'\" . $this->db->escape($tfa_enable) . \"\', shared_secret = \'\" . $this->db->escape($shared_secret) . \"\', backup_code = \'\" . $this->db->escape(sha1($salt . sha1($salt . sha1($backup_code)))) . \"\' WHERE user_id = \'\" . (int)$user_id . \"\'\");\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/startup/permission.php\">\n        <operation>\n            <search><![CDATA[\'common/dashboard\',]]></search>\n            <add position=\"before\"><![CDATA[\n            \'extension/tfaauthenticate\',\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/startup/login.php\">\n        <operation>\n            <search><![CDATA[\'common/login\',]]></search>\n            <add position=\"before\"><![CDATA[\n            \'extension/tfaauthenticate\',\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/cart/user.php\">\n        <operation>\n            <search><![CDATA[public function login($username, $password) {]]></search>\n            <add position=\"before\"><![CDATA[\n            public function backupcode($user_id, $backup_code) {\n                $user_query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"user WHERE user_id = \'\" . $this->db->escape($user_id) . \"\' AND backup_code = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1(\'\" . $this->db->escape($backup_code) . \"\'))))) AND status = \'1\'\");\n                if ($user_query->num_rows) {\n                    return true;\n                }\n                return false;\n            }\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$this->session->data[\'user_id\'] = $user_query->row[\'user_id\'];]]></search>\n            <add position=\"replace\"><![CDATA[\n            if (isset($user_query->row[\'tfa_enable\']) && $user_query->row[\'tfa_enable\'] == 1) {\n                $this->session->data[\'tfa_user_id\'] = $user_query->row[\'user_id\'];\n            } else {\n                $this->session->data[\'user_id\'] = $user_query->row[\'user_id\'];\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/header.php\">\n        <operation>\n            <search><![CDATA[$data[\'profile\'] = $this->url->link(\'common/profile\', \'user_token=\' . $this->session->data[\'user_token\'], true);]]></search>\n            <add position=\"after\"><![CDATA[\n            $data[\'tfa\'] = $this->url->link(\'extension/tfa/setup\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/en-gb/common/header.php\">\n        <operation>\n            <search><![CDATA[$_[\'text_profile\']]]></search>\n            <add position=\"before\"><![CDATA[\n            $_[\'text_tfa\']       = \'Two Factor Authentication\';\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/nl-nl/common/header.php\">\n        <operation>\n            <search><![CDATA[$_[\'text_profile\']]]></search>\n            <add position=\"before\"><![CDATA[\n            $_[\'text_tfa\']       = \'Twee Factor Authenticatie\';\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[<li><a href=\"{{ profile }}\"><i class=\"fa fa-user-circle-o fa-fw\"></i> {{ text_profile }}</a></li>]]></search>\n            <add position=\"after\"><![CDATA[\n            <li><a href=\"{{ tfa }}\"><i class=\"fa fa-shield fa-fw\"></i> {{ text_tfa }}</a></li>\n            ]]></add>\n        </operation>\n    </file>\n</modification>\n","1","2018-04-05 17:24:23");
INSERT INTO oc_modification VALUES("15","26","Catalog - Menu home button","mmoc-catalog-menu-home-button","Peter Maier","3-1.0","http://mig-media.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Catalog - Menu home button</name>\n    <code>mmoc-catalog-menu-home-button</code>\n    <version>3-1.0</version>\n    <author>Peter Maier</author>\n    <link>http://mig-media.com</link>\n	<file path=\"catalog/view/theme/*/template/common/menu.twig\">\n	  <operation error=\"skip\">\n		<search><![CDATA[<ul class=\"nav navbar-nav\">]]></search>\n		<add position=\"after\"><![CDATA[<li><a href=\"{{ home }}\"><i class=\"fa fa-home\"></i></a></li>]]></add>\n	  </operation>\n	</file>\n</modification>\n","1","2018-02-20 15:51:11");
INSERT INTO oc_modification VALUES("16","27","Scroll to top","ScrollToTop","iExtendLabs , Saqib ashraf","1.0","","<?xml version=\"1.0\" encoding=\"UTF-8\"?>
INSERT INTO oc_modification VALUES("17","28","HubTalk - Live chat","hubtalk","HubTalk","1.0","https://www.hubtalk.com","<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- @version		$Id: install.xml 4993 2017-06-22 21:29:00Z mic $ -->\n<modification>\n	<name>HubTalk - Live chat</name>\n	<code>hubtalk</code>\n	<version>1.0</version>\n    <sver>3.x</sver>\n	<author>HubTalk</author>\n    <authorUrl>https://www.hubtalk.com</authorUrl>\n    <authorEmail>contact@hubtalk.com</authorEmail>\n    <link>https://www.hubtalk.com</link>\n    <date>2017.06.22</date>\n    <description>HubTalk - Live chat for your Opencast shop. https://www.hubtalk.com/integrations/opencart</description>\n</modification>","1","2018-02-20 15:57:54");
INSERT INTO oc_modification VALUES("35","45","d_opencart_patch","d_opencart_patch","Dreamvention","3.x","http://dreamvention.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.x</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>","1","2018-04-14 14:23:17");
INSERT INTO oc_modification VALUES("19","0","d_ajax_search","d_ajax_search","Dreamwention Team","6.0.0","http://www.dreamvention.ee/","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_ajax_search</name>\n    <code>d_ajax_search</code>\n    <description>Live Ajax Search</description>\n    <version>6.0.0</version>\n    <author>Dreamwention Team</author>\n    <link>http://www.dreamvention.ee/</link>\n\n\n        <file path=\"catalog/controller/common/header.php\">\n            <operation error=\"skip\">\n                <search><![CDATA[public function index() {]]></search>\n                <add position=\"after\"><![CDATA[$data[\'d_ajax_search\'] = $this->load->controller(\'extension/module/d_ajax_search\');]]></add>\n            </operation>\n        </file>\n\n        <file path=\"catalog/view/theme/*/template/common/header.tpl\">\n            <operation error=\"skip\">\n                <search regex=\"true\" limit=\"1\"><![CDATA[($)]]></search>\n                <add><![CDATA[<?php echo $d_ajax_search; ?>]]></add>\n            </operation>\n        </file>\n\n\n        <!-- 3.x compatibility START -->\n        <file path=\"catalog/view/theme/*/template/common/header.twig\">\n            <operation error=\"skip\">\n                <search regex=\"true\" limit=\"1\"><![CDATA[($)]]></search>\n                <add><![CDATA[{{ d_ajax_search }}]]></add>\n            </operation>\n        </file>\n        <!-- 3.x compatibility END -->\n\n\n</modification>","1","2018-04-05 17:16:07");
INSERT INTO oc_modification VALUES("20","31","Hide Account Menu IF Not Logged","ajg-hide-account-menu","Alberto Luciano Jara Grados","1.0","ajaragrados@gmail.com","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Hide Account Menu IF Not Logged</name>\n  <code>ajg-hide-account-menu</code>\n  <version>1.0</version>\n  <author>Alberto Luciano Jara Grados</author>\n  <link>ajaragrados@gmail.com</link>\n  <file path=\"catalog/controller/module/account.php|catalog/controller/extension/module/account.php\">\n    <operation>\n      <search><![CDATA[function index() {]]></search>\n        <add trim=\"true\" position=\"after\"><![CDATA[\n                        //---------                            \n                        //@ajg\n                        if (!$this->customer->isLogged()) return false;\n                        //@ajg-end\n                        //---------]]>\n	    </add>\n    </operation>\n  </file>\n</modification>","1","2018-04-05 17:17:20");
INSERT INTO oc_modification VALUES("22","33","Add Home Button","myOpencartHK Add Home Button","myOpencartHK","1.0-v3.0-d20180102","https://shop.myopencart.hk","<?xml version=\"1.0\" encoding=\"UTF-8\"?>
INSERT INTO oc_modification VALUES("24","35","Export/Import Tool (V3.20) for OpenCart 3.x","Export/Import Tool (V3.20) for OpenCart 3.x","mhccorp.com","3.x-3.20","https://www.mhccorp.com","<modification>\n	<name>Export/Import Tool (V3.20) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.20) for OpenCart 3.x</code>\n	<version>3.x-3.20</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n","1","2018-04-05 17:25:34");
INSERT INTO oc_modification VALUES("26","37","Out of Stock Notification","Out_of_Stock_Notification","IRSSOFT","3.0.x.x","http://www.irssoft.com","<modification>
INSERT INTO oc_modification VALUES("38","48","Animation Add Cart","seogroupaddtop","SeoGroup | Dev2Studio","1.0","http://seogroup.pro/","?<modification>
INSERT INTO oc_modification VALUES("37","47","xtensions - Same order email for admin as customer","same_customer_email_to_admin","xtensions","1","https://www.xtensions.in","<modification>\n    <name>xtensions - Same order email for admin as customer</name>\n	<version>1</version>\n	<link>https://www.xtensions.in</link>\n	<author>xtensions</author>\n	<code>same_customer_email_to_admin</code>\n	<file path=\"catalog/controller/mail/order.php\">\n		<operation>\n			<search index=\"0\"><![CDATA[$mail->send();]]></search>\n			<add position=\"after\"><![CDATA[	//xtensions same admin email as customer start\n			$this->sameAdminAlert($order_info,$data);\n			//xtensions same admin email as customer end]]></add>\n		</operation>\n		<operation>\n			<search ><![CDATA[public function add($order_info, $order_status_id, $comment, $notify) {]]></search>\n			<add position=\"before\"><![CDATA[\n	//xtensions same admin email as customer start		\n	public function sameAdminAlert($order_info, $data) {\n		if (in_array(\'order\', (array)$this->config->get(\'config_mail_alert\'))) {\n			$data[\'text_greeting\'] = \'You have a new order!\';\n			\n			$mail = new Mail($this->config->get(\'config_mail_engine\'));\n			$mail->parameter = $this->config->get(\'config_mail_parameter\');\n			$mail->smtp_hostname = $this->config->get(\'config_mail_smtp_hostname\');\n			$mail->smtp_username = $this->config->get(\'config_mail_smtp_username\');\n			$mail->smtp_password = html_entity_decode($this->config->get(\'config_mail_smtp_password\'), ENT_QUOTES, \'UTF-8\');\n			$mail->smtp_port = $this->config->get(\'config_mail_smtp_port\');\n			$mail->smtp_timeout = $this->config->get(\'config_mail_smtp_timeout\');\n			\n			$mail->setTo($this->config->get(\'config_email\'));\n			$mail->setFrom($this->config->get(\'config_email\'));\n			$mail->setSender(html_entity_decode($order_info[\'store_name\'], ENT_QUOTES, \'UTF-8\'));\n			$mail->setSubject(html_entity_decode(\'You have a new order!\', ENT_QUOTES, \'UTF-8\'));\n			$mail->setHtml($this->load->view(\'mail/order_add\', $data));\n			$mail->send();\n			\n			// Send to additional alert emails\n			$emails = explode(\',\', $this->config->get(\'config_mail_alert_email\'));\n			\n			foreach ($emails as $email) {\n				if ($email && filter_var($email, FILTER_VALIDATE_EMAIL)) {\n					$mail->setTo($email);\n					$mail->send();\n				}\n			}\n		}\n	}\n	//xtensions same admin email as customer end\n			]]></add>\n		</operation>\n	</file>	\n</modification>\n\n\n","1","2018-04-14 14:30:27");
INSERT INTO oc_modification VALUES("39","50","Recently Viewed Products","recently_viewed_products","Meldin Xavier","1.0.0","http://www.mxtechweb.com","<?xml version=\"1.0\" encoding=\"UTF-8\" ?>
INSERT INTO oc_modification VALUES("40","51","DigitCart - Review available only for buyer","digitcart_review_available_only_for_buyer","digitcart.ir","1.0","http://digitcart.ir","<?xml version=\"1.0\" encoding=\"UTF-8\"?>
INSERT INTO oc_modification VALUES("28","39","Preloader Page 3.x","loading-page","SeoGroup | Dev2Studio","1.0.0.","http://seogroup.pro","<?xml version=\"1.0\" encoding=\"utf-8\"?>
INSERT INTO oc_modification VALUES("29","40","Como Box with checkboxes expander","como_box_with_checkboxes_expander","cmstory.com","1.0","","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Como Box with checkboxes expander</name>\n    <version>1.0</version>\n    <author>cmstory.com</author>\n    <comment>Box with checkboxes expander</comment>\n    <code>como_box_with_checkboxes_expander</code>\n\n    <file path=\"admin/language/en-gb/en-gb.php\" error=\"skip\">\n        <operation error=\"skip\">\n            <search><![CDATA[// Button]]></search>  \n            <add position=\"after\"><![CDATA[\n$_[\'button_toggleexpand\'] = \'Toggle expanded/collapsed box\';\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/bg/bg.php\" error=\"skip\">\n        <operation error=\"skip\">\n            <search><![CDATA[// Button]]></search>  \n            <add position=\"after\"><![CDATA[\n$_[\'button_toggleexpand\'] = \'?????????? ?????????/????? ????\';\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/catalog/product_form.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'{{ entry_category }}\', \'{{ entry_filter }}\', \'{{ entry_store }}\', \'{{ entry_download }}\', \'{{ entry_related }}\'];\n    $(\'label\').each(function() {\n        if (boxes.indexOf($(this).text()) != -1) {\n            $(this).append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n        }\n    });\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/catalog/category_form.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'{{ entry_filter }}\', \'{{ entry_store }}\'];\n    $(\'label\').each(function() {\n        if (boxes.indexOf($(this).text()) != -1) {\n            $(this).append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n        }\n    });\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/catalog/manufacturer_form.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'{{ entry_store }}\'];\n    $(\'label\').each(function() {\n        if (boxes.indexOf($(this).text()) != -1) {\n            $(this).append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n        }\n    });\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/catalog/information_form.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'{{ entry_store }}\'];\n    $(\'label\').each(function() {\n        if (boxes.indexOf($(this).text()) != -1) {\n            $(this).append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n        }\n    });\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/setting/setting.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'input-process-status\', \'input-complete-status\', \'input-robots\', \'input-encryption\', \'input-file-ext-allowed\', \'input-file-mime-allowed\'];\n    for (i = 0; i < boxes.length; i++) { \n        $(\'label[for=\"\' + boxes[i] + \'\"]\').append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n    }\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/user/user_group_form.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'{{ entry_access }}\', \'{{ entry_modify }}\'];\n    $(\'label\').each(function() {\n        if (boxes.indexOf($(this).text()) != -1) {\n            $(this).append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n        }\n    });\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/extension/module/featured.twig\">\n        <operation error=\"log\">\n            <search><![CDATA[{{ footer }}]]></search>  \n            <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\" src=\"view/javascript/como/como_tools.js\"></script> \n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n    var boxes = [\'input-product\'];\n    for (i = 0; i < boxes.length; i++) { \n        $(\'label[for=\"\' + boxes[i] + \'\"]\').append(\'<br /><button class=\"btn btn-primary btn-xs\" type=\"button\" onclick=\"this.disabled=true;comoToggleBoxExpand(this, event);\" data-toggle=\"tooltip\" title=\"{{ button_toggleexpand }}\"><i class=\"fa fa-caret-down\"></i></button>\');\n    }\n});\n//--></script>\n            ]]></add>\n        </operation>\n    </file>\n</modification>\n","1","2018-04-06 03:18:55");
INSERT INTO oc_modification VALUES("30","41","Quick Save 3x","quicksave-adw","AlexDW","1.02","https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW","<?xml version=\"1.0\" encoding=\"UTF-8\"?>
INSERT INTO oc_modification VALUES("32","43","Indian Rupee Symbol ","Indian Rupee Symbol","IRSSOFT","3.0.x.x","http://www.irssoft.com","<modification>
INSERT INTO oc_modification VALUES("33","0","d_admin_menu","d_admin_menu","Dreamwention Team","1.0.0","http://www.dreamvention.ee/","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_admin_menu</name>\n    <code>d_admin_menu</code>\n    <description>Admin Menu</description>\n    <version>1.0.0</version>\n    <author>Dreamwention Team</author>\n    <link>http://www.dreamvention.ee/</link>\n\n        <!-- 201-220 -->\n        <file path=\"admin/view/template/common/column_left.tpl\">\n            <operation error=\"skip\">\n                <search><![CDATA[<nav id=\"column-left\"><?php echo $profile; ?><?php echo $menu; ?><?php echo $stats; ?></nav>]]></search>\n                <add position=\"replace\"><![CDATA[\n                    <nav id=\"column-left\"><?php echo $profile; ?><?php echo $menu; ?><?php echo (isset($d_admin_menu)) ? $d_admin_menu : \'\'; ?><?php echo $stats; ?></nav>\n                ]]></add>\n            </operation>\n        </file>\n\n        <!-- 230 -->\n        <file path=\"admin/view/template/common/column_left.tpl\">\n            <operation error=\"skip\">\n                <search><![CDATA[<div id=\"stats\">]]></search>\n                <add position=\"before\"><![CDATA[\n                    <?php echo (isset($d_admin_menu)) ? $d_admin_menu : \'\'; ?>\n                ]]></add>\n            </operation>\n        </file>\n\n        <!-- OC 3.x compatibility START -->\n        <file path=\"admin/view/template/common/column_left.twig\">\n            <operation error=\"skip\">\n                <search><![CDATA[<div id=\"stats\">]]></search>\n                <add position=\"before\"><![CDATA[\n                    {{ d_admin_menu }}\n                ]]></add>\n            </operation>\n        </file>\n        <!-- OC 3.x compatibility END -->\n\n</modification>\n","1","2018-04-06 03:26:02");
INSERT INTO oc_modification VALUES("41","52","Admin Login Captcha","Admin Login Captcha","Dmity J djevsajev@gmail.com","3.x","http://dweb.my-board.org","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <code>Admin Login Captcha</code>\n    <name>Admin Login Captcha</name>\n    <version>3.x</version>\n    <author>Dmity J djevsajev@gmail.com</author>\n    <link>http://dweb.my-board.org</link>\n   \n    <file path=\"admin/controller/setting/setting.php\">\n        <operation>  \n            <search trim=\"true\" index=\"0\"><![CDATA[\n                $data[\'captcha_pages\'] = array();\n            ]]>\n            </search>\n            <add position=\"after\" trim=\"false\" offset=\"0\"><![CDATA[\n                $data[\'captcha_pages\'][] = array(\n			\'text\'  => \'Admin Login\',\n			\'value\' => \'admin_login\'\n		);\n                ]]>\n            </add>\n        </operation>\n    </file>\n    \n    <file path=\"admin/controller/common/login.php\">\n        <operation>  \n            <search trim=\"true\" ><![CDATA[\n                $data[\'header\'] = $this->load->controller(\'common/header\');\n            ]]>\n            </search>\n            <add position=\"before\"><![CDATA[\n               // Captcha\n		if ($this->config->get(\'captcha_\' . $this->config->get(\'config_captcha\') . \'_status\') && in_array(\'admin_login\', (array)$this->config->get(\'config_captcha_page\'))) {\n			$data[\'captcha\'] = $this->load->controller(\'extension/dcaptcha/\' . $this->config->get(\'config_captcha\'), $this->error);\n		} else {\n			$data[\'captcha\'] = \'\';\n		}\n                ]]>\n            </add>\n        </operation>\n        <operation>  \n            <search trim=\"true\" ><![CDATA[\n                return !$this->error;\n            ]]>\n            </search>\n            <add position=\"before\"><![CDATA[\n              // Captcha\n		if ($this->config->get(\'captcha_\' . $this->config->get(\'config_captcha\') . \'_status\') && in_array(\'admin_login\', (array)$this->config->get(\'config_captcha_page\'))) {\n			$captcha = $this->load->controller(\'extension/dcaptcha/\' . $this->config->get(\'config_captcha\') . \'/validate\');\n\n			if ($captcha) {\n				$this->error[\'captcha\'] = $captcha;\n			}\n		}\n                ]]>\n            </add>\n        </operation>\n    </file>\n      \n    <file path=\"admin/view/template/common/login.twig\">\n        <operation>\n            <search><![CDATA[\n                <button type=\"submit\" class=\"btn btn-primary\"><i class=\"fa fa-key\"></i> {{ button_login }}</button>\n            ]]></search>\n            <add position=\"before\"><![CDATA[  \n            {{ captcha }}\n           ]]></add>\n		   \n        </operation>\n    </file>\n    \n</modification>\n","1","2018-07-20 11:07:31");
INSERT INTO oc_modification VALUES("51","70","Whatsapp order","whatapp order","Waqar Ansari","1.0","http://localhost/opencart/upload","<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Whatsapp order</name>\n	<code>whatapp order</code>\n	<version>1.0</version>\n	<author>Waqar Ansari</author>\n	<link>http://localhost/opencart/upload</link>\n	\n	<file path=\"admin/language/en-gb/setting/setting.php\">\n		<operation>\n			<search><![CDATA[$_[\'heading_title\']                  = \'Settings\';]]></search>\n			<add position=\"after\"><![CDATA[\n				//Fields \n				$_[\'entry_whatsappno\'] = \'Your/Store Whatsapp Number:*\';\n				$_[\'entry_whatsappno_buttontext\'] = \'Button Text\';\n				$_[\'entry_whatsapp_message\'] = \'Message\';\n				$_[\'entry_whatsapp_showonheader\'] = \'Show on top\';\n				$_[\'entry_whatsapp_showonfooter\'] = \'Show on bottom\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/controller/setting/setting.php\">\n		<operation>\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\n			<add position=\"after\"><![CDATA[\n				//Fields \n				$data[\'entry_whatsappno\'] = $this->language->get(\'entry_whatsappno\');\n				$data[\'entry_whatsappno_buttontext\'] = $this->language->get(\'entry_whatsappno_buttontext\');\n				$data[\'entry_whatsapp_message\'] = $this->language->get(\'entry_whatsapp_message\');\n				$data[\'entry_whatsapp_showonheader\'] = $this->language->get(\'entry_whatsapp_showonheader\');\n				$data[\'entry_whatsapp_showonfooter\'] = $this->language->get(\'entry_whatsapp_showonfooter\');\n				\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'user_token\'] = $this->session->data[\'user_token\'];]]></search>\n			<add position=\"after\"><![CDATA[\n					if (isset($this->request->post[\'config_whatsapp_no\'])) {\n						$data[\'config_whatsapp_no\'] = $this->request->post[\'config_whatsapp_no\'];\n					} else {\n						$data[\'config_whatsapp_no\'] = ($this->config->get(\'config_whatsapp_no\') == \"\")? \"+44123xxxxxx\" : $this->config->get(\'config_whatsapp_no\');\n					}\n					if (isset($this->request->post[\'config_whatsapp_btntext\'])) {\n						$data[\'config_whatsapp_btntext\'] = $this->request->post[\'config_whatsapp_btntext\'];\n					} else {\n						$data[\'config_whatsapp_btntext\'] = ($this->config->get(\'config_whatsapp_btntext\') == \"\")? \"Order On Whatsapp\": $this->config->get(\'config_whatsapp_btntext\');\n					}\n					if (isset($this->request->post[\'config_whatsapp_msg\'])) {\n						$data[\'config_whatsapp_msg\'] = $this->request->post[\'config_whatsapp_msg\'];\n					} else {\n						$data[\'config_whatsapp_msg\'] = ($this->config->get(\'config_whatsapp_msg\') == \"\")? \"Hi, I would like to buy\" : $this->config->get(\'config_whatsapp_msg\');\n					}\n					if (isset($this->request->post[\'config_whatsapp_ontop\'])) {\n						$data[\'config_whatsapp_ontop\'] = $this->request->post[\'config_whatsapp_ontop\'];\n					} else {\n						$data[\'config_whatsapp_ontop\'] = $this->config->get(\'config_whatsapp_ontop\');\n					}\n					if (isset($this->request->post[\'config_whatsapp_onbottom\'])) {\n						$data[\'config_whatsapp_onbottom\'] = $this->request->post[\'config_whatsapp_onbottom\'];\n					} else {\n						$data[\'config_whatsapp_onbottom\'] = $this->config->get(\'config_whatsapp_onbottom\');\n					}\n				]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/setting/setting.twig\">\n		<operation>\n			<search><![CDATA[<li><a href=\"#tab-server\" data-toggle=\"tab\">{{ tab_server }}</a></li>]]></search>\n			<add position=\"after\"><![CDATA[\n			<li><a href=\"#tab-whatsapp\" data-toggle=\"tab\">Whatsapp Order</a></li>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[<div class=\"tab-content\">]]></search>\n			<add position=\"after\"><![CDATA[\n				<div class=\"tab-pane\" id=\"tab-whatsapp\">\n				 <div class=\"form-group\">\n	                <label class=\"col-sm-2 control-label\" for=\"input-meta-title\">{{ entry_whatsappno }}</label>\n	                <div class=\"col-sm-10\">\n	                  <input type=\"text\" name=\"config_whatsapp_no\" value=\"{{ config_whatsapp_no }}\" placeholder=\"{{ config_whatsapp_no }}\" id=\"input-meta-title\" class=\"form-control\" />\n	                </div>\n	              </div>\n	              <div class=\"form-group\">\n	                <label class=\"col-sm-2 control-label\" for=\"input-meta-title\">{{ entry_whatsappno_buttontext }}</label>\n	                <div class=\"col-sm-10\">\n	                  <input type=\"text\" name=\"config_whatsapp_btntext\" value=\"{{ config_whatsapp_btntext }}\" placeholder=\"{{ config_whatsapp_btntext }}\" id=\"input-meta-title\" class=\"form-control\" />\n	                </div>\n	              </div>\n	              <div class=\"form-group\">\n	                <label class=\"col-sm-2 control-label\" for=\"input-meta-title\">{{ entry_whatsapp_message }}</label>\n	                <div class=\"col-sm-10\">\n	                 <textarea name=\"config_whatsapp_msg\" id=\"input-whatsapp-msg\" class=\"form-control\">{{ config_whatsapp_msg}}</textarea>	\n	                </div>\n	              </div>\n	              <div class=\"form-group\">\n	                <label class=\"col-sm-2 control-label\" for=\"input-meta-title\">{{ entry_whatsapp_showonheader }}</label>\n	                <div class=\"col-sm-10\">\n	                	<select name=\"config_whatsapp_ontop\" class=\"form-control\">\n	                		<option>-- Select --</option>\n	                		<option value=\"1\" {{ (config_whatsapp_ontop == 1) ? \'selected\' : \'\' }}>Yes</option>\n	                		<option value=\"0\" {{ (config_whatsapp_ontop == 0) ? \'selected\' : \'\' }}>No</option>\n	                	</select>\n	                </div>\n	              </div>\n	              <div class=\"form-group\">\n	                <label class=\"col-sm-2 control-label\" for=\"input-meta-title\">{{ entry_whatsapp_showonfooter }} </label>\n	                <div class=\"col-sm-10\">\n	                	<select name=\"config_whatsapp_onbottom\" class=\"form-control\">\n	                		<option>-- Select --</option>\n	                		<option value=\"1\" {{ (config_whatsapp_onbottom == 1) ? \'selected\' : \'\' }}>Yes</option>\n	                		<option value=\"0\" {{ (config_whatsapp_onbottom == 0) ? \'selected\' : \'\' }}>No</option>\n	                	</select>\n	                </div>\n	              </div>\n				</div>\n			]]></add>\n		</operation>\n	</file>	\n	<file path=\"catalog/controller/product/product.php\">\n		<operation>\n			<search><![CDATA[$data[\'products\'] = array();]]></search>\n			<add position=\"before\"><![CDATA[\n				$data[\"wa_whatsapp_no\"] = preg_replace(\'/[^A-Za-z0-9\\-]/\', \'\', $this->config->get(\'config_whatsapp_no\'));\n				$data[\"wa_whatsapp_btntext\"] = $this->config->get(\'config_whatsapp_btntext\');\n				$data[\"wa_whatsapp_msg\"] = ($this->config->get(\'config_whatsapp_msg\') == \"\")?\"Hi, I would like to buy\":$this->config->get(\'config_whatsapp_msg\');\n				$data[\"wa_share\"] = urlencode($data[\'share\']);\n				$iphone = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"iPhone\");\n				$android = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"Android\");\n				$palmpre = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"webOS\");\n				$berry =strpos($this->request->server[\'HTTP_USER_AGENT\'],\"BlackBerry\");\n				$ipod =strpos($this->request->server[\'HTTP_USER_AGENT\'],\"iPod\");\n				if ($iphone || $android || $palmpre || $ipod || $berry == true){\n				$data[\"wa_link\"] = \"https://api.whatsapp.com/send?phone\";\n				}else{\n				$data[\"wa_link\"] = \"https://web.whatsapp.com/send?phone\";\n				}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\n		<operation>\n			<search><![CDATA[{{ button_cart }}]]></search>\n			<add position=\"before\"><![CDATA[\n				<a style=\"width:100%;font-size:16px;text-transform:none;background-color:#25d366;border-radius: 400px;margin-top:10px;color:#fff\" class=\"btn  btn-lg btn-block\" id=\"wa_whatsappbtn\" href=\"{{wa_link}}={{wa_whatsapp_no}}&text={{wa_whatsapp_msg}}%20{{heading_title}}%20{{wa_share}}\">  <span class=\"button-cart-text\"> <i class=\"fa fa-whatsapp\"></i> {{wa_whatsapp_btntext}}</span></a>\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/controller/common/header.php\">\n		<operation>\n			<search><![CDATA[$this->load->language(\'common/header\');]]></search>\n			<add position=\"after\"><![CDATA[\n				$data[\"wa_whatsapp_no\"] = preg_replace(\'/[^A-Za-z0-9\\-]/\', \'\', $this->config->get(\'config_whatsapp_no\'));\n				$data[\"wa_whatsapp_btntext\"] = $this->config->get(\'config_whatsapp_btntext\');\n				$data[\"wa_whatsapp_msg\"] = $this->config->get(\'config_whatsapp_msg\');\n				$data[\"wa_whatsapp_ontop\"] = $this->config->get(\'config_whatsapp_ontop\');\n				$iphone = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"iPhone\");\n				$android = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"Android\");\n				$palmpre = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"webOS\");\n				$berry =strpos($this->request->server[\'HTTP_USER_AGENT\'],\"BlackBerry\");\n				$ipod =strpos($this->request->server[\'HTTP_USER_AGENT\'],\"iPod\");\n				if ($iphone || $android || $palmpre || $ipod || $berry == true){\n				$data[\"wa_link\"] = \"https://api.whatsapp.com/send?phone\";\n				}else{\n				$data[\"wa_link\"] = \"https://web.whatsapp.com/send?phone\";\n				}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/view/theme/*/template/common/header.twig\">\n		<operation>\n			<search><![CDATA[{{ telephone }}]]></search>\n			<add position=\"before\"><![CDATA[\n				<li><a href=\"{{wa_link}}={{wa_whatsapp_no}}\" target=\"_blank\"><i class=\"fa fa-whatsapp\"></i> <span class=\"hidden-xs hidden-sm hidden-md\">chat on whatsapp</span></a></li>\n			]]></add>\n		</operation>\n\n	</file>\n	<file path=\"catalog/controller/common/footer.php\">\n		<operation>\n			<search><![CDATA[$this->load->language(\'common/footer\');]]></search>\n			<add position=\"after\"><![CDATA[\n				$data[\"wa_whatsapp_no\"] = preg_replace(\'/[^A-Za-z0-9\\-]/\', \'\', $this->config->get(\'config_whatsapp_no\'));\n				$data[\"wa_whatsapp_btntext\"] = $this->config->get(\'config_whatsapp_btntext\');\n				$data[\"wa_whatsapp_msg\"] = $this->config->get(\'config_whatsapp_msg\');\n				$data[\"wa_whatsapp_onbottom\"] = $this->config->get(\'config_whatsapp_onbottom\');\n				$iphone = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"iPhone\");\n				$android = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"Android\");\n				$palmpre = strpos($this->request->server[\'HTTP_USER_AGENT\'],\"webOS\");\n				$berry =strpos($this->request->server[\'HTTP_USER_AGENT\'],\"BlackBerry\");\n				$ipod =strpos($this->request->server[\'HTTP_USER_AGENT\'],\"iPod\");\n				if ($iphone || $android || $palmpre || $ipod || $berry == true){\n				$data[\"wa_link\"] = \"https://api.whatsapp.com/send?phone\";\n				}else{\n				$data[\"wa_link\"] = \"https://web.whatsapp.com/send?phone\";\n				}\n			]]></add>\n		</operation>\n	</file>\n\n	<file path=\"catalog/view/theme/*/template/common/footer.twig\">\n		<operation>\n			<search><![CDATA[<footer>]]></search>\n			<add position=\"before\"><![CDATA[\n				 \n				 	{% if wa_whatsapp_onbottom == 1 %}\n				 <style>\n				 	.wcf2w_button {\n					    border-radius: 50px!important;\n					    text-align: center!important;\n					    padding: 0px!important;\n					    outline: none!important;\n					    text-decoration: none!important;\n					    border: none!important;\n					    box-shadow: none!important;\n					    position: fixed;\n					    width: 60px;\n					    height: 60px;\n					    margin: 0px!important;\n					    line-height: normal!important;\n					    opacity: 0.9;\n					    z-index: 99999999!important;\n					  }\n					.wcf2w_button:link {\n					    text-decoration: none!important;\n					    outline: none!important;\n					    border: none!important;\n					    box-shadow: none!important;\n					   } \n					  .wcf2w_button i {\n					    font-size: 40px!important;\n					    margin-top: 10px;\n					}    \n				 </style>\n				 <a data-title=\"Contact Us\" href=\"{{wa_link}}={{ wa_whatsapp_no }}\" class=\"  wcf2w_button whatsapp_tooltip\" style=\"right: 20px; bottom: 20px; background-color: #2ecc71; color:#ffffff;\" target=\"_blank\">\n		    	<i class=\"fa fa-whatsapp\"></i>\n		    	</a>\n		    	\n				{% endif %}\n			]]></add>\n		</operation>\n	</file>\n	\n</modification>	","1","2019-01-19 17:23:06");
INSERT INTO oc_modification VALUES("48","67","SmartiApps Price Slider","SmartiApps Price Slider","SmartiApps","3.0.2.0.x","","<?xml version=\"1.0\" encoding=\"UTF-8\"?>
INSERT INTO oc_modification VALUES("49","68","Banner Slider Effect ","Banner_Slider_Effect ","CMSROOM (technologyttech@gmail.com)","3x","","<modification>\n   <code>Banner_Slider_Effect </code>\n   <version>3x</version>\n   <author>CMSROOM (technologyttech@gmail.com)</author>\n   <name>Banner Slider Effect </name>\n   <file path=\"catalog/view/theme/*/template/extension/module/slideshow.twig\">\n      <operation>\n         <search>\n            <![CDATA[autoplayDisableOnInteraction: true,]]>\n         </search>\n         <add  position=\"after\">\n            <![CDATA[effect: \'{{ effect }}\',]]>\n         </add>\n      </operation>\n   </file>\n    <file path=\"catalog/controller/extension/module/slideshow.php\">\n      <operation>\n         <search>\n            <![CDATA[$data[\'module\'] = $module++;]]>\n         </search>\n         <add  position=\"after\">\n            <![CDATA[\n            if(!empty($setting[\'effect\']))\n            {\n            $data[\'effect\'] = $setting[\'effect\']; \n            }\n            \n            ]]>\n         </add>\n      </operation>\n   </file>\n\n   <file path=\"admin/view/template/extension/module/slideshow.twig\">\n      <operation>\n         <search trim=\"true|false\" index=\"1\">\n            <![CDATA[<div class=\"form-group\">]]>\n         </search>\n         <add  position=\"before\" >\n            <![CDATA[   <div class=\"form-group\">\n            <label class=\"col-sm-2 control-label\" for=\"input-status\">{{ \"Effect\" }}</label>\n            <div class=\"col-sm-10\">\n              <select name=\"effect\" id=\"input-status\" class=\"form-control\">\n                {% if effect == \"slide\" %}\n                <option value=\"{{ effect }}\" selected=\"selected\">{{ effect }}</option>\n                {% else %}\n                <option value=\"{{ \"slide\" }}\">{{ \"slide\" }}</option>\n                {% endif %}\n                {% if effect == \"fade\" %}\n                <option value=\"{{ effect }}\" selected=\"selected\">{{ effect }}</option>\n                {% else %}\n                <option value=\"{{ \"fade\" }}\">{{ \"fade\" }}</option>\n                {% endif %}\n                {% if effect == \"cube\" %}\n                <option value=\"{{ effect }}\" selected=\"selected\">{{ effect }}</option>\n                {% else %}\n                <option value=\"{{ \"cube\" }}\">{{ \"cube\" }}</option>\n                {% endif %}\n                {% if effect == \"coverflow\" %}\n                <option value=\"{{ effect }}\" selected=\"selected\">{{ effect }}</option>\n                {% else %}\n                <option value=\"{{ \"coverflow\" }}\">{{ \"coverflow\" }}</option>\n                {% endif %}\n                {% if effect == \"flip\" %}\n                <option value=\"{{ effect }}\" selected=\"selected\">{{ effect }}</option>\n                {% else %}\n                <option value=\"{{ \"flip\" }}\">{{ \"flip\" }}</option>\n                {% endif %}\n              </select>\n            </div>\n          </div>]]>\n         </add>\n      </operation>\n   </file>\n\n   <file path=\"admin/controller/extension/module/slideshow.php\">\n      <operation>\n         <search>\n            <![CDATA[if (isset($this->request->post[\'status\'])) {]]>\n         </search>\n         <add  position=\"before\">\n            <![CDATA[   if (isset($this->request->post[\'effect\'])) {\n      $data[\'effect\'] = $this->request->post[\'effect\'];\n    } elseif (!empty($module_info)) {\n      $data[\'effect\'] = $module_info[\'effect\'];\n    } else {\n      $data[\'effect\'] = \'\';\n    }]]>\n         </add>\n      </operation>\n   </file>\n\n</modification>\n","1","2019-01-17 17:30:19");
INSERT INTO oc_modification VALUES("50","69","OCMOD Editor for OpenCart 3.0","ocmod-editor","OpenCart Brasil","3.2.0","http://www.opencartbrasil.com.br","<?xml version=\"1.0\" encoding=\"utf-8\"?>
INSERT INTO oc_modification VALUES("52","71","Accu Auto Backup","accu_auto_backup","Dhanshree Inc.","1.0.1","http://www.dhanashree.com","<modification>
INSERT INTO oc_modification VALUES("45","64","TO TOP","dotboxtotop","? Dotbox Creative","1.1","http://dotboxcreative.com/","?<modification>



DROP TABLE oc_module;

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

INSERT INTO oc_module VALUES("30","Category","banner","{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("29","Home Page","carousel","{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("34","Featured","featured","{\"name\":\"Featured\",\"product_name\":\"\",\"product\":[\"51\",\"81\",\"76\",\"82\",\"100\",\"73\",\"74\",\"84\",\"85\",\"86\",\"87\",\"88\",\"62\",\"58\",\"54\",\"83\"],\"limit\":\"25\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("27","Home Page","slideshow","{\"name\":\"Home Page\",\"effect\":\"coverflow\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("37","Leggings","featured","{\"name\":\"Leggings\",\"product_name\":\"\",\"product\":[\"82\",\"83\",\"81\",\"80\",\"99\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("32","Best Sellers","bestseller","{\"name\":\"Best Sellers\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("36","Latest","latest","{\"name\":\"Latest\",\"limit\":\"25\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("38","Inner Wear","featured","{\"name\":\"Inner Wear\",\"product_name\":\"\",\"product\":[\"100\"],\"limit\":\"1\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("39","Dress Materials","featured","{\"name\":\"Dress Materials\",\"product_name\":\"\",\"product\":[\"88\"],\"limit\":\"1\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");
INSERT INTO oc_module VALUES("40","Kasturi Collection","d_social_like","{\"name\":\"Kasturi Collection\",\"status\":\"1\",\"social_likes\":{\"google\":{\"enabled\":\"1\",\"sort_order\":\"1\",\"icon_color\":\"#999999\",\"icon_color_active\":\"#dd4b38\",\"background_color\":\"#ffffff\",\"background_color_active\":\"#fcfcfc\",\"width\":\"70\"},\"linkedin\":{\"enabled\":\"1\",\"sort_order\":\"3\",\"icon_color\":\"#999999\",\"icon_color_active\":\"#4487bd\",\"background_color\":\"#ffffff\",\"background_color_active\":\"#fcfcfc\",\"width\":\"105\"}},\"language_id\":\"1\",\"store_id\":\"0\",\"config\":\"d_social_like\",\"url\":\"\",\"view_id\":\"left\",\"design\":{\"icon_theme\":\"square\",\"background_color\":\"#ffffff\",\"border\":\"1\",\"border_color\":\"#848484\",\"box_shadow\":\"1\",\"box_shadow_color\":\"#d7eaf5\",\"border_radius\":\"0\",\"popup_mobile\":\"1\",\"custom_style\":\"\"}}");
INSERT INTO oc_module VALUES("41","Recently Viewed","recent_product","{\"name\":\"Recently Viewed\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}");



DROP TABLE oc_option;

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO oc_option VALUES("1","radio","1");
INSERT INTO oc_option VALUES("2","checkbox","2");
INSERT INTO oc_option VALUES("4","text","3");
INSERT INTO oc_option VALUES("5","select","4");
INSERT INTO oc_option VALUES("6","textarea","5");
INSERT INTO oc_option VALUES("7","file","6");
INSERT INTO oc_option VALUES("8","date","7");
INSERT INTO oc_option VALUES("9","time","8");
INSERT INTO oc_option VALUES("10","datetime","9");
INSERT INTO oc_option VALUES("11","select","10");
INSERT INTO oc_option VALUES("12","date","11");



DROP TABLE oc_option_description;

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_option_description VALUES("1","1","Radio","");
INSERT INTO oc_option_description VALUES("2","1","Checkbox","");
INSERT INTO oc_option_description VALUES("4","1","Text","");
INSERT INTO oc_option_description VALUES("6","1","Textarea","");
INSERT INTO oc_option_description VALUES("8","1","Date","");
INSERT INTO oc_option_description VALUES("7","1","File","");
INSERT INTO oc_option_description VALUES("5","1","Select","");
INSERT INTO oc_option_description VALUES("9","1","Time","");
INSERT INTO oc_option_description VALUES("10","1","Date &amp; Time","");
INSERT INTO oc_option_description VALUES("12","1","Delivery Date","");
INSERT INTO oc_option_description VALUES("11","1","Size","");



DROP TABLE oc_option_value;

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO oc_option_value VALUES("43","1","","3");
INSERT INTO oc_option_value VALUES("32","1","","1");
INSERT INTO oc_option_value VALUES("45","2","","4");
INSERT INTO oc_option_value VALUES("44","2","","3");
INSERT INTO oc_option_value VALUES("42","5","","4");
INSERT INTO oc_option_value VALUES("41","5","","3");
INSERT INTO oc_option_value VALUES("39","5","","1");
INSERT INTO oc_option_value VALUES("40","5","","2");
INSERT INTO oc_option_value VALUES("31","1","","2");
INSERT INTO oc_option_value VALUES("23","2","","1");
INSERT INTO oc_option_value VALUES("24","2","","2");
INSERT INTO oc_option_value VALUES("46","11","","1");
INSERT INTO oc_option_value VALUES("47","11","","2");
INSERT INTO oc_option_value VALUES("48","11","","3");



DROP TABLE oc_option_value_description;

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_option_value_description VALUES("43","1","1","Large");
INSERT INTO oc_option_value_description VALUES("32","1","1","Small");
INSERT INTO oc_option_value_description VALUES("45","1","2","Checkbox 4");
INSERT INTO oc_option_value_description VALUES("44","1","2","Checkbox 3");
INSERT INTO oc_option_value_description VALUES("31","1","1","Medium");
INSERT INTO oc_option_value_description VALUES("42","1","5","Yellow");
INSERT INTO oc_option_value_description VALUES("41","1","5","Green");
INSERT INTO oc_option_value_description VALUES("39","1","5","Red");
INSERT INTO oc_option_value_description VALUES("40","1","5","Blue");
INSERT INTO oc_option_value_description VALUES("23","1","2","Checkbox 1");
INSERT INTO oc_option_value_description VALUES("24","1","2","Checkbox 2");
INSERT INTO oc_option_value_description VALUES("48","1","11","Large");
INSERT INTO oc_option_value_description VALUES("47","1","11","Medium");
INSERT INTO oc_option_value_description VALUES("46","1","11","Small");



DROP TABLE oc_order;

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

INSERT INTO oc_order VALUES("1","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","0","1","Amit","bhalerao","amitbaramatimca@gmail.com","8796154725","","[]","Amit","bhalerao","","Pune","","pune","411041","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Amit","bhalerao","","Pune","","pune","411041","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-14 10:57:07","2018-01-14 10:57:07");
INSERT INTO oc_order VALUES("2","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-14 11:15:01","2018-01-14 11:15:01");
INSERT INTO oc_order VALUES("3","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-14 11:18:39","2018-01-14 11:18:39");
INSERT INTO oc_order VALUES("4","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-14 11:19:13","2018-01-14 11:19:13");
INSERT INTO oc_order VALUES("5","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-14 11:22:19","2018-01-14 11:22:19");
INSERT INTO oc_order VALUES("6","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-14 11:35:07","2018-01-14 11:35:07");
INSERT INTO oc_order VALUES("7","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (Paymate)","paymate","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","106.0000","0","0","0.0000","0","","1","2","USD","1.00000000","183.87.237.12","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-16 15:22:32","2018-01-16 15:22:32");
INSERT INTO oc_order VALUES("8","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","700.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.27.162","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-19 14:29:21","2018-01-19 14:29:21");
INSERT INTO oc_order VALUES("9","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","1350.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.34.165","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-19 14:31:14","2018-01-19 14:31:14");
INSERT INTO oc_order VALUES("10","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","700.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.1","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-01-27 02:58:02","2018-01-27 02:58:02");
INSERT INTO oc_order VALUES("16","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Cash On Delivery","cod","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","1350.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.54","2405:204:930d:ee20:d8f3:5e0b:c8a:80d6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.123 Mobile Safari/537.36","en-US,en;q=0.9","2018-02-01 04:04:27","2018-02-01 04:04:27");
INSERT INTO oc_order VALUES("28","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Cash On Delivery","cod","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","800.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.105.143","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-03 15:30:05","2018-02-03 15:30:05");
INSERT INTO oc_order VALUES("17","0","INV-2018-00","0","Kasturi Collection","http://parbastech.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","1350.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.54","2405:204:930d:ee20:d8f3:5e0b:c8a:80d6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.123 Mobile Safari/537.36","en-US,en;q=0.9","2018-02-01 04:04:33","2018-02-01 04:04:33");
INSERT INTO oc_order VALUES("29","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","800.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.105.143","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-03 15:32:28","2018-02-03 15:32:28");
INSERT INTO oc_order VALUES("22","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","700.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.16.250","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-03 06:24:32","2018-02-03 06:24:32");
INSERT INTO oc_order VALUES("71","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","95.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-US,en;q=0.9","2018-10-06 09:38:05","2018-10-06 09:38:05");
INSERT INTO oc_order VALUES("24","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Cash On Delivery","cod","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","1350.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.105.143","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-03 14:21:18","2018-02-03 14:21:18");
INSERT INTO oc_order VALUES("25","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","1350.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.105.143","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-03 14:21:46","2018-02-03 14:21:46");
INSERT INTO oc_order VALUES("72","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","95.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-US,en;q=0.9","2018-10-06 10:22:43","2018-10-06 10:22:43");
INSERT INTO oc_order VALUES("73","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","95.0000","0","0","0.0000","0","","1","4","INR","1.00000000","157.33.163.165","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-US,en;q=0.9","2018-10-06 10:39:34","2018-10-06 10:39:34");
INSERT INTO oc_order VALUES("37","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","800.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.16","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-04 14:25:21","2018-02-04 14:25:21");
INSERT INTO oc_order VALUES("38","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/kasturicollection/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Bank Transfer","bank_transfer","Amit","Bhalerao","","Shop No 1 Near Wale Hospital","","Mangalwedha","","India","99","Maharashtra","1493","","[]","Flat Shipping Rate","flat.flat","","800.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.16","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-04 14:46:28","2018-02-04 14:46:28");
INSERT INTO oc_order VALUES("43","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\" Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130\",\"1\":\"413102\"}","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","41.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.244.157","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-15 14:49:22","2018-02-15 14:49:22");
INSERT INTO oc_order VALUES("44","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\" Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130\",\"1\":\"413102\"}","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","790.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.244.157","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-15 15:19:59","2018-02-15 15:19:59");
INSERT INTO oc_order VALUES("45","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\" Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130\",\"1\":\"413102\"}","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","790.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.244.157","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-15 15:29:25","2018-02-15 15:29:25");
INSERT INTO oc_order VALUES("49","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","1","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\" Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130\",\"1\":\"413102\"}","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Santosh","Nimajkar","","Deogiri Transport Bhigwan Tal Indapur Dist Pune Pin 413130","","Bhigwan","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","289.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.237.127","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36","en-US,en;q=0.9","2018-02-17 04:44:13","2018-02-17 04:44:13");
INSERT INTO oc_order VALUES("74","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","95.0000","0","0","0.0000","0","","1","4","INR","1.00000000","157.33.163.165","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-US,en;q=0.9","2018-10-06 10:39:59","2018-10-06 10:39:59");
INSERT INTO oc_order VALUES("55","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","9","1","Namrata","Nitnaware","pranam07@gmail.com","09561346606","","{\"2\":\"FLAT NO 1627,MALAVYA COMPLEX\\nVAISHALI NAGAR, Nagpur-440017\",\"1\":\"440017\"}","Namrata","Nitnaware","","Flat no 8,suman prabha society,lane no 10, vanaz,kothrud","","Pune","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Namrata","Nitnaware","","Flat no 8,suman prabha society,lane no 10, vanaz,kothrud","","Pune","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","1140.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.236.115","","Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJ25.93-14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36","en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7","2018-03-15 12:01:40","2018-03-15 12:01:40");
INSERT INTO oc_order VALUES("56","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","9","1","Namrata","Nitnaware","pranam07@gmail.com","09561346606","","{\"2\":\"FLAT NO 1627,MALAVYA COMPLEX\\nVAISHALI NAGAR, Nagpur-440017\",\"1\":\"440017\"}","Namrata","Nitnaware","","Flat no 8,suman prabha society,lane no 10, vanaz,kothrud","","Pune","","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Namrata","Nitnaware","","Flat no 8,suman prabha society,lane no 10, vanaz,kothrud","","Pune","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","1140.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.236.115","","Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJ25.93-14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36","en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7","2018-03-15 12:38:35","2018-03-15 12:38:35");
INSERT INTO oc_order VALUES("57","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","9623000012","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413106\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","1140.0000","0","0","0.0000","0","","1","4","INR","1.00000000","165.225.106.104","204.55.147.7","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36","en-US,en;q=0.9","2018-03-15 12:41:05","2018-03-15 12:41:05");
INSERT INTO oc_order VALUES("75","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","10","1","keyzer","soze","test@gmail.com","09908734803","","{\"2\":\"123 kml\",\"1\":\"560034\"}","keyzer","soze","","123 kml","","Bangalore","","India","99","Bihar","1479","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","keyzer","soze","","123 kml","","Bangalore","","India","99","Bihar","1479","","[]","Per Item Shipping Rate","item.item","","86.0000","0","0","0.0000","0","","1","4","INR","1.00000000","106.51.77.33","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2018-10-08 16:49:55","2018-10-08 16:49:55");
INSERT INTO oc_order VALUES("76","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","86.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.54","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-US,en;q=0.9","2018-10-08 16:51:40","2018-10-08 16:51:40");
INSERT INTO oc_order VALUES("60","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","4","1","Nagesh","Panse","amit.bhalerao87@gmai.com","7276107670","","{\"2\":\"Plot No 177\",\"1\":\"414005\"}","Aboli Chintaman","Kulkarni","","Plot No 177,Navin Gavthan,New Maharani Tarabai Kanya Shale Jawal,Ambika Nagar,Kedgoan","","Ahmednagar","414005","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Aboli Chintaman","Kulkarni","","Plot No 177,Navin Gavthan,New Maharani Tarabai Kanya Shale Jawal,Ambika Nagar,Kedgoan","","Ahmednagar","414005","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","289.0000","0","0","0.0000","0","","1","4","INR","1.00000000","203.189.176.14","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","en-US,en;q=0.9","2018-07-26 11:13:23","2018-07-26 11:13:23");
INSERT INTO oc_order VALUES("61","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","9623000012","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413106\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","1330.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 09:23:50","2018-09-15 09:23:50");
INSERT INTO oc_order VALUES("62","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","9623000012","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413106\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking </br><img src= \"https://www.bluezeal.in/images/cca_bz.png\" />","ccavenuepay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","339.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:20:50","2018-09-15 10:20:50");
INSERT INTO oc_order VALUES("63","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","339.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:24:14","2018-09-15 10:24:14");
INSERT INTO oc_order VALUES("64","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","45.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:29:30","2018-09-15 10:29:30");
INSERT INTO oc_order VALUES("65","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:30:36","2018-09-15 10:30:36");
INSERT INTO oc_order VALUES("66","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:32:52","2018-09-15 10:32:52");
INSERT INTO oc_order VALUES("67","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:33:52","2018-09-15 10:33:52");
INSERT INTO oc_order VALUES("68","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","12.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:35:45","2018-09-15 10:35:45");
INSERT INTO oc_order VALUES("69","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:36:06","2018-09-15 10:36:06");
INSERT INTO oc_order VALUES("70","0","INV-2018-00","0","Kasturi Collection","http://kasturicollection.com/","3","1","Akshay","Suryawanshi","kasturicollection2018@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","324.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.10","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","en-US,en;q=0.9","2018-09-15 10:46:14","2018-09-15 10:46:14");
INSERT INTO oc_order VALUES("77","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","5","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.54","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36","en-US,en;q=0.9","2018-10-08 17:29:40","2018-10-08 17:30:56");
INSERT INTO oc_order VALUES("83","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 08:17:10","2018-11-03 08:17:10");
INSERT INTO oc_order VALUES("81","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PayUmoney BOLT","pumbolt","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","5","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.35","2409:4042:2310:8d25:a8c3:a3d1:9460:d0bc","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36","en-US,en;q=0.9","2018-10-18 13:19:08","2018-11-17 12:14:21");
INSERT INTO oc_order VALUES("82","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 08:16:19","2018-11-03 08:16:19");
INSERT INTO oc_order VALUES("100","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","16","1","sss","sss","abc@gmail.com","+918888888888","","{\"2\":\"sddsd\",\"1\":\"380001\"}","sss","sss","","sddsd","","ahemdabad","","India","99","Gujarat","1485","","[]","PAYKUN","paykun","sss","sss","","sddsd","","ahemdabad","","India","99","Gujarat","1485","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","209.58.168.70","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36","en-US,en;q=0.9","2018-11-20 12:54:50","2018-11-20 12:54:50");
INSERT INTO oc_order VALUES("85","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","13","1","sss","sss","DD@GMAIL.COM","08888888888","","{\"2\":\"sddsd\",\"1\":\"380001\"}","sss","sss","","sddsd","","ahemdabad","","India","99","Gujarat","1485","","[]","InstaMojo","instamojo","sss","sss","","sddsd","","ahemdabad","","India","99","Gujarat","1485","","[]","Per Item Shipping Rate","item.item","","454.0000","0","0","0.0000","0","","1","4","INR","1.00000000","209.58.168.70","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 13:33:16","2018-11-03 13:33:16");
INSERT INTO oc_order VALUES("215","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.142.116","","Mozilla/5.0 (Android 9; Mobile; rv:65.0) Gecko/65.0 Firefox/65.0","en-US,en;q=0.5","2019-02-21 10:58:50","2019-02-21 10:58:50");
INSERT INTO oc_order VALUES("102","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","16","1","sss","sss","abc@gmail.com","+918888888888","","{\"2\":\"sddsd\",\"1\":\"380001\"}","sss","sss","","sddsd","","ahemdabad","","India","99","Gujarat","1485","","[]","PAYKUN","paykun","sss","sss","","sddsd","","ahemdabad","","India","99","Gujarat","1485","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","209.58.168.70","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36","en-US,en;q=0.9","2018-11-20 12:59:05","2018-11-20 12:59:05");
INSERT INTO oc_order VALUES("88","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 13:57:55","2018-11-03 13:57:55");
INSERT INTO oc_order VALUES("89","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 13:58:46","2018-11-03 13:58:46");
INSERT INTO oc_order VALUES("90","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 14:02:10","2018-11-03 14:02:10");
INSERT INTO oc_order VALUES("91","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking (Razorpay)","razorpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-03 14:36:47","2018-11-03 14:36:47");
INSERT INTO oc_order VALUES("92","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-05 15:32:44","2018-11-05 15:32:44");
INSERT INTO oc_order VALUES("93","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.5","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","en-US,en;q=0.9","2018-11-05 15:39:19","2018-11-05 15:39:19");
INSERT INTO oc_order VALUES("94","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","20.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.9","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36","en-US,en;q=0.9","2018-11-16 16:34:27","2018-11-16 16:34:27");
INSERT INTO oc_order VALUES("95","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.9","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36","en-US,en;q=0.9","2018-11-16 16:38:33","2018-11-16 16:38:33");
INSERT INTO oc_order VALUES("96","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","15","1","test","test","test@spam4.me","1234567891","","{\"2\":\"test\",\"1\":\"111111\"}","test","test","","test","","test","111111","India","99","Gujarat","1485","","[]","PAYKUN","paykun","test","test","","test","","test","111111","India","99","Gujarat","1485","","[]","Per Item Shipping Rate","item.item","","401.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.56.183.204","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36","en-US,en;q=0.9,pl;q=0.8,es;q=0.7","2018-11-17 05:26:25","2018-11-17 05:26:25");
INSERT INTO oc_order VALUES("97","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","15","1","test","test","test@spam4.me","1234567891","","{\"2\":\"test\",\"1\":\"111111\"}","test","test","","test","","test","111111","India","99","Gujarat","1485","","[]","PAYKUN","paykun","test","test","","test","","test","111111","India","99","Gujarat","1485","","[]","Per Item Shipping Rate","item.item","","401.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.56.183.204","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36","en-US,en;q=0.9,pl;q=0.8,es;q=0.7","2018-11-17 05:28:12","2018-11-17 05:28:12");
INSERT INTO oc_order VALUES("105","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card / Net Banking (Razorpay)","razorpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.48","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36","en-US,en;q=0.9","2018-12-01 16:33:47","2018-12-01 16:33:47");
INSERT INTO oc_order VALUES("99","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","10.0000","5","0","0.0000","0","","1","4","INR","1.00000000","49.35.21.28","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36","en-US,en;q=0.9","2018-11-17 06:49:45","2018-11-17 12:03:48");
INSERT INTO oc_order VALUES("106","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.48","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36","en-US,en;q=0.9","2018-12-01 16:33:57","2018-12-01 16:33:57");
INSERT INTO oc_order VALUES("107","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","17","1","abc","xyz","dev@fonepaisa.com","9972455816","","{\"2\":\"#1234, J P Nagar,\",\"1\":\"560078\"}","abc","xyz","xyz company","#1234","j p nagar","bangalore","560078","India","99","Karnataka","1489","","[]","Credit Card / Debit Card / Net Banking (Razorpay)","razorpay","abc","xyz","xyz company","#1234","j p nagar","bangalore","560078","India","99","Karnataka","1489","","[]","Per Item Shipping Rate","item.item","","401.0000","0","0","0.0000","0","","1","4","INR","1.00000000","106.200.204.236","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36","en-US,en;q=0.9","2018-12-11 05:44:34","2018-12-11 05:44:34");
INSERT INTO oc_order VALUES("108","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","19","1","vnjfvb","dnchbf","nchb@bhbdhb.com","+918989898989","","{\"2\":\"dcnjdvjv\",\"1\":\"401107\"}","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","301.0000","0","0","0.0000","0","","1","4","INR","1.00000000","14.143.131.62","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-26 05:21:02","2018-12-26 05:21:02");
INSERT INTO oc_order VALUES("109","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card in 3 times","payzen_multi","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.28","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-29 08:22:51","2018-12-29 08:22:51");
INSERT INTO oc_order VALUES("110","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.28","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-29 08:25:26","2018-12-29 08:25:26");
INSERT INTO oc_order VALUES("111","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","20","1","sahil","kumar","sahilama@gmail.com","09417812345","","{\"2\":\"145\\n145\",\"1\":\"201301\"}","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Payment by bank card","payzen","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","203.122.13.66","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-31 12:15:33","2018-12-31 12:15:34");
INSERT INTO oc_order VALUES("112","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","20","1","sahil","kumar","sahilama@gmail.com","09417812345","","{\"2\":\"145\\n145\",\"1\":\"201301\"}","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Payment by bank card","payzen","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","203.122.13.66","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-31 12:16:05","2018-12-31 12:16:05");
INSERT INTO oc_order VALUES("113","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","20","1","sahil","kumar","sahilama@gmail.com","09417812345","","{\"2\":\"145\\n145\",\"1\":\"201301\"}","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Payment by bank card in 3 times","payzen_multi","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","203.122.13.66","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-31 12:16:52","2018-12-31 12:16:52");
INSERT INTO oc_order VALUES("114","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","20","1","sahil","kumar","sahilama@gmail.com","09417812345","","{\"2\":\"145\\n145\",\"1\":\"201301\"}","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Payment by bank card","payzen","sahil","kumar","","145","145","noida","201301","India","99","Uttar Pradesh","1505","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","203.122.13.66","","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2018-12-31 12:17:22","2018-12-31 12:17:22");
INSERT INTO oc_order VALUES("115","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.28","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-01 07:05:44","2019-01-01 07:05:44");
INSERT INTO oc_order VALUES("116","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-04 16:08:01","2019-01-04 16:08:01");
INSERT INTO oc_order VALUES("117","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","159.0000","0","0","0.0000","0","","1","4","INR","1.00000000","14.143.131.62","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-01-07 06:37:32","2019-01-07 06:37:32");
INSERT INTO oc_order VALUES("118","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","159.0000","0","0","0.0000","0","","1","4","INR","1.00000000","14.143.131.62","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-01-07 09:21:02","2019-01-07 09:21:02");
INSERT INTO oc_order VALUES("119","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","159.0000","0","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-01-07 09:41:19","2019-01-07 09:41:19");
INSERT INTO oc_order VALUES("120","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","I\'m","212.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.44.140.5","2405:204:968a:6a89:f845:ca77:8b53:853b","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36","en-US,en;q=0.9","2019-01-07 13:50:10","2019-01-07 13:50:10");
INSERT INTO oc_order VALUES("121","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","22","1","vnjfvb","dnchbf","test@yahoo.com","+918989898989","","{\"2\":\"dcnjdvjv\",\"1\":\"401107\"}","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-08 08:50:44","2019-01-08 08:50:44");
INSERT INTO oc_order VALUES("122","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","265.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.63","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-19 16:12:06","2019-01-19 16:12:06");
INSERT INTO oc_order VALUES("123","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","265.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.63","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-19 16:13:18","2019-01-19 16:13:18");
INSERT INTO oc_order VALUES("124","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","265.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.63","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-19 16:14:02","2019-01-19 16:14:02");
INSERT INTO oc_order VALUES("125","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.63","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-19 16:17:02","2019-01-19 16:17:02");
INSERT INTO oc_order VALUES("126","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.63","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-19 16:17:26","2019-01-19 16:17:26");
INSERT INTO oc_order VALUES("128","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.63","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-01-19 16:31:14","2019-01-19 16:31:14");
INSERT INTO oc_order VALUES("129","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-02-12 16:03:45","2019-02-12 16:03:45");
INSERT INTO oc_order VALUES("130","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36","en-US,en;q=0.9","2019-02-12 16:04:50","2019-02-12 16:04:50");
INSERT INTO oc_order VALUES("131","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-US,en;q=0.9","2019-02-14 02:39:00","2019-02-14 02:39:00");
INSERT INTO oc_order VALUES("132","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card in 3 times","payzen_multi","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-US,en;q=0.9","2019-02-14 02:39:16","2019-02-14 02:39:16");
INSERT INTO oc_order VALUES("133","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:959d:4c35:c698:686d:6d63:87c6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 04:44:25","2019-02-14 04:44:25");
INSERT INTO oc_order VALUES("134","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:959d:4c35:c698:686d:6d63:87c6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 05:01:13","2019-02-14 05:01:13");
INSERT INTO oc_order VALUES("135","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.212.242.96","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-US,en;q=0.9","2019-02-14 09:21:14","2019-02-14 09:21:14");
INSERT INTO oc_order VALUES("136","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.212.242.96","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-US,en;q=0.9","2019-02-14 09:29:13","2019-02-14 09:29:13");
INSERT INTO oc_order VALUES("137","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","24","1","test","test","Test@test.in","78784519897","","{\"2\":\"Test\",\"1\":\"400005\"}","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","14.143.131.62","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-02-14 09:33:36","2019-02-14 09:33:36");
INSERT INTO oc_order VALUES("138","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.247.185","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 09:44:44","2019-02-14 09:44:44");
INSERT INTO oc_order VALUES("139","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","24","1","test","test","Test@test.in","78784519897","","{\"2\":\"Test\",\"1\":\"400005\"}","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","5","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-02-14 10:10:20","2019-02-14 10:10:41");
INSERT INTO oc_order VALUES("140","1","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","24","1","test","test","Test@test.in","78784519897","","{\"2\":\"Test\",\"1\":\"400005\"}","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","5","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-02-14 10:11:28","2019-02-14 10:11:52");
INSERT INTO oc_order VALUES("141","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","24","1","test","test","Test@test.in","78784519897","","{\"2\":\"Test\",\"1\":\"400005\"}","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","test","test","test","test","test","mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8","2019-02-14 10:14:33","2019-02-14 10:14:33");
INSERT INTO oc_order VALUES("142","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.146","2405:204:959d:4c35:c698:686d:6d63:87c6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 10:33:28","2019-02-14 10:33:28");
INSERT INTO oc_order VALUES("143","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2405:204:959d:4c35:c698:686d:6d63:87c6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 10:44:16","2019-02-14 10:44:16");
INSERT INTO oc_order VALUES("144","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2405:204:959d:4c35:c698:686d:6d63:87c6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 10:44:46","2019-02-14 10:44:46");
INSERT INTO oc_order VALUES("145","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2405:204:959d:4c35:c698:686d:6d63:87c6","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 10:45:39","2019-02-14 10:45:39");
INSERT INTO oc_order VALUES("146","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card in 3 times","payzen_multi","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","49.35.206.84","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-14 10:46:51","2019-02-14 10:46:51");
INSERT INTO oc_order VALUES("147","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-14 16:42:30","2019-02-14 16:42:30");
INSERT INTO oc_order VALUES("148","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card in 3 times","payzen_multi","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-14 16:43:11","2019-02-14 16:43:11");
INSERT INTO oc_order VALUES("149","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-14 16:43:51","2019-02-14 16:43:51");
INSERT INTO oc_order VALUES("150","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-14 17:06:49","2019-02-14 17:06:49");
INSERT INTO oc_order VALUES("151","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-14 17:12:32","2019-02-14 17:12:32");
INSERT INTO oc_order VALUES("152","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0","en-US,en;q=0.5","2019-02-14 17:16:48","2019-02-14 17:16:48");
INSERT INTO oc_order VALUES("153","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","22","1","vnjfvb","dnchbf","test@yahoo.com","+918989898989","","{\"2\":\"dcnjdvjv\",\"1\":\"401107\"}","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","407.0000","0","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-15 04:14:56","2019-02-15 04:14:56");
INSERT INTO oc_order VALUES("154","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.215.16","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 04:32:08","2019-02-15 04:32:08");
INSERT INTO oc_order VALUES("155","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card in 3 times","payzen_multi","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.215.16","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 04:32:45","2019-02-15 04:32:45");
INSERT INTO oc_order VALUES("156","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.215.16","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 04:34:11","2019-02-15 04:34:11");
INSERT INTO oc_order VALUES("157","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","22","1","vnjfvb","dnchbf","test@yahoo.com","+918989898989","","{\"2\":\"dcnjdvjv\",\"1\":\"401107\"}","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Payment by bank card in 3 times","payzen_multi","vnjfvb","dnchbf","mbhbfhb","dcnjdvjv","","Mumbai","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","407.0000","0","0","0.0000","0","","1","4","INR","1.00000000","182.72.67.50","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-15 05:55:25","2019-02-15 05:55:25");
INSERT INTO oc_order VALUES("158","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.214.179","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 07:23:22","2019-02-15 07:23:22");
INSERT INTO oc_order VALUES("159","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:959d:4c35:a60c:772d:6b32:8327","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 07:53:15","2019-02-15 07:53:15");
INSERT INTO oc_order VALUES("161","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:959d:4c35:a60c:772d:6b32:8327","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 07:54:29","2019-02-15 07:54:29");
INSERT INTO oc_order VALUES("162","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.146","2405:204:959d:4c35:a60c:772d:6b32:8327","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 07:56:38","2019-02-15 07:56:38");
INSERT INTO oc_order VALUES("163","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:959d:4c35:a60c:772d:6b32:8327","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 07:57:27","2019-02-15 07:57:27");
INSERT INTO oc_order VALUES("164","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Paytm Wallet","paytm","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:959d:4c35:a60c:772d:6b32:8327","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 07:58:00","2019-02-15 07:58:00");
INSERT INTO oc_order VALUES("165","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.212.243.128","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-15 08:24:02","2019-02-15 08:24:02");
INSERT INTO oc_order VALUES("166","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","59.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.146","2405:204:959d:4c35:a60c:772d:6b32:8327","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-15 15:14:11","2019-02-15 15:14:11");
INSERT INTO oc_order VALUES("167","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","fonePaisa(Pay using all wallets/cards/bank accounts)","fonePaisa","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","62.0000","0","0","0.0000","0","","1","4","INR","1.00000000","157.33.240.145","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-15 16:57:16","2019-02-15 16:57:16");
INSERT INTO oc_order VALUES("168","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","25","1","a","b","a@gmail.com","0123456789","","{\"2\":\"a\",\"1\":\"380001\"}","a","b","","sddsd","","ahemdabad","","India","99","Bihar","1479","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","a","b","","sddsd","","ahemdabad","","India","99","Bihar","1479","","[]","Per Item Shipping Rate","item.item","","53.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.56.183.206","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-16 05:22:00","2019-02-16 05:22:00");
INSERT INTO oc_order VALUES("170","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-16 06:53:46","2019-02-16 06:53:46");
INSERT INTO oc_order VALUES("171","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-16 06:55:02","2019-02-16 06:55:02");
INSERT INTO oc_order VALUES("172","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-16 06:56:37","2019-02-16 06:56:37");
INSERT INTO oc_order VALUES("173","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.212.242.200","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-16 06:58:04","2019-02-16 06:58:04");
INSERT INTO oc_order VALUES("174","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko","en-US","2019-02-16 06:59:56","2019-02-16 06:59:56");
INSERT INTO oc_order VALUES("175","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","66.249.88.27","117.212.242.200","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-16 08:19:04","2019-02-16 08:19:04");
INSERT INTO oc_order VALUES("176","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.146","2409:4042:2306:60c4:2a81:4a8a:d2c5:208d","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.105 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-18 03:47:54","2019-02-18 03:47:54");
INSERT INTO oc_order VALUES("177","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2401:4900:36cc:3f0:2:1:f173:7a45","Mozilla/5.0 (Linux; Android 7.0; Moto C Plus) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.105 Mobile Safari/537.36","en-US,en;q=0.9,mr;q=0.8,hi;q=0.7,ro;q=0.6,ne;q=0.5","2019-02-18 03:48:50","2019-02-18 03:48:50");
INSERT INTO oc_order VALUES("178","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","26","1","abhijit","shinde","abhijit.shinde22@gmail.com","09860960529","","{\"2\":\"At- Kacharewadi Tal-Mangalwedha\\nDist-Solapur\",\"1\":\"413305\"}","abhijit","shinde","","At- Kacharewadi Tal-Mangalwedha","Dist-Solapur","Mangalwedha","413305","India","99","Maharashtra","1493","","[]","KartPay","kartpay","abhijit","shinde","","At- Kacharewadi Tal-Mangalwedha","Dist-Solapur","Mangalwedha","413305","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","Ok","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.146","2401:4900:36cc:3f0:2:1:f173:7a45","Mozilla/5.0 (Linux; Android 7.0; Moto C Plus) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.105 Mobile Safari/537.36","en-US,en;q=0.9,mr;q=0.8,hi;q=0.7,ro;q=0.6,ne;q=0.5","2019-02-18 03:57:58","2019-02-18 03:57:58");
INSERT INTO oc_order VALUES("179","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-18 12:02:11","2019-02-18 12:02:11");
INSERT INTO oc_order VALUES("180","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-18 12:04:21","2019-02-18 12:04:21");
INSERT INTO oc_order VALUES("181","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-18 12:06:10","2019-02-18 12:06:10");
INSERT INTO oc_order VALUES("182","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-18 12:09:44","2019-02-18 12:09:44");
INSERT INTO oc_order VALUES("183","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-18 12:14:45","2019-02-18 12:14:45");
INSERT INTO oc_order VALUES("184","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-18 12:16:02","2019-02-18 12:16:02");
INSERT INTO oc_order VALUES("185","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-18 12:17:09","2019-02-18 12:17:09");
INSERT INTO oc_order VALUES("186","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-18 12:22:16","2019-02-18 12:22:16");
INSERT INTO oc_order VALUES("187","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","fonePaisa(Pay using all wallets/cards/bank accounts)","fonePaisa","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-18 12:23:09","2019-02-18 12:23:09");
INSERT INTO oc_order VALUES("188","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-18 12:23:29","2019-02-18 12:23:29");
INSERT INTO oc_order VALUES("189","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-19 04:49:30","2019-02-19 04:49:30");
INSERT INTO oc_order VALUES("190","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-19 04:52:26","2019-02-19 04:52:26");
INSERT INTO oc_order VALUES("191","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-19 04:53:12","2019-02-19 04:53:12");
INSERT INTO oc_order VALUES("192","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-19 04:54:33","2019-02-19 04:54:33");
INSERT INTO oc_order VALUES("193","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-19 05:11:48","2019-02-19 05:11:48");
INSERT INTO oc_order VALUES("194","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-19 05:15:13","2019-02-19 05:15:13");
INSERT INTO oc_order VALUES("195","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-19 05:15:54","2019-02-19 05:15:54");
INSERT INTO oc_order VALUES("196","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-19 08:35:36","2019-02-19 08:35:36");
INSERT INTO oc_order VALUES("197","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:9507:a7:bc9b:4723:8edb:863e","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-19 12:19:30","2019-02-19 12:19:30");
INSERT INTO oc_order VALUES("198","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2405:204:9507:a7:bc9b:4723:8edb:863e","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-19 12:23:21","2019-02-19 12:23:21");
INSERT INTO oc_order VALUES("199","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.144","2405:204:9507:a7:bc9b:4723:8edb:863e","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-19 12:38:25","2019-02-19 12:38:25");
INSERT INTO oc_order VALUES("200","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2405:204:9507:a7:bc9b:4723:8edb:863e","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-19 12:41:58","2019-02-19 12:41:58");
INSERT INTO oc_order VALUES("201","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.241.85","","Mozilla/5.0 (Android 9; Mobile; rv:65.0) Gecko/65.0 Firefox/65.0","en-US,en;q=0.5","2019-02-19 12:53:32","2019-02-19 12:53:32");
INSERT INTO oc_order VALUES("202","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","9.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.145","2405:204:9507:a7:bc9b:4723:8edb:863e","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-19 12:56:58","2019-02-19 12:56:58");
INSERT INTO oc_order VALUES("203","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.235.23","","Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36","en-US,en;q=0.9,hi;q=0.8,mr;q=0.7","2019-02-19 13:05:06","2019-02-19 13:05:06");
INSERT INTO oc_order VALUES("204","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-20 05:43:19","2019-02-20 05:43:19");
INSERT INTO oc_order VALUES("205","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-20 05:43:45","2019-02-20 05:43:45");
INSERT INTO oc_order VALUES("206","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-20 06:42:54","2019-02-20 06:42:54");
INSERT INTO oc_order VALUES("207","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","117.254.218.91","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65","en-US,en;q=0.9","2019-02-20 06:44:25","2019-02-20 06:44:25");
INSERT INTO oc_order VALUES("208","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","157.33.224.162","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.105 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-20 06:51:48","2019-02-20 06:51:48");
INSERT INTO oc_order VALUES("209","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","157.33.255.44","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.105 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-20 08:27:33","2019-02-20 08:27:33");
INSERT INTO oc_order VALUES("210","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","157.33.248.94","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.105 Mobile Safari/537.36","en-US,en;q=0.9","2019-02-20 12:19:14","2019-02-20 12:19:14");
INSERT INTO oc_order VALUES("211","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","23","1","Vishwas","Panke","vishwas@kartpay.com","8857835721","","{\"2\":\"Manish Nagar\",\"1\":\"440015\"}","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Vishwas","Panke","","Manish Nagar","","Nagpur","","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.148.211","","Mozilla/5.0 (Android 9; Mobile; rv:65.0) Gecko/65.0 Firefox/65.0","en-US,en;q=0.5","2019-02-20 15:32:27","2019-02-20 15:32:27");
INSERT INTO oc_order VALUES("212","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-21 05:02:12","2019-02-21 05:02:12");
INSERT INTO oc_order VALUES("213","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-21 05:04:02","2019-02-21 05:04:02");
INSERT INTO oc_order VALUES("214","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","2","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.47","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36","en-US,en;q=0.9","2019-02-21 05:05:18","2019-02-21 05:06:10");
INSERT INTO oc_order VALUES("216","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.17","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36","en-US,en;q=0.9","2019-05-04 11:13:38","2019-05-04 11:13:38");
INSERT INTO oc_order VALUES("217","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.54.239","","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36","en-US,en;q=0.9","2019-05-29 15:50:12","2019-05-29 15:50:12");
INSERT INTO oc_order VALUES("218","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PayUmoney BOLT","pumbolt","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","1","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.142","183.87.237.57","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36","en-US,en;q=0.9","2019-05-29 17:28:24","2019-05-29 17:28:25");
INSERT INTO oc_order VALUES("219","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.140","183.87.237.57","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36","en-US,en;q=0.9","2019-05-29 17:29:42","2019-05-29 17:29:42");
INSERT INTO oc_order VALUES("220","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.140","183.87.237.57","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36","en-US,en;q=0.9","2019-05-29 17:30:07","2019-05-29 17:30:07");
INSERT INTO oc_order VALUES("221","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","7","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.142","183.87.237.57","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36","en-US,en;q=0.9","2019-05-29 17:31:06","2019-05-29 17:31:29");
INSERT INTO oc_order VALUES("222","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","fonePaisa(Pay using all wallets/cards/bank accounts)","fonePaisa","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","64.233.173.141","183.87.237.57","Mozilla/5.0 (Linux; Android 7.1.2; Micromax HS2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36","en-US,en;q=0.9","2019-05-29 17:31:55","2019-05-29 17:31:55");
INSERT INTO oc_order VALUES("223","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-20 16:57:23","2019-08-20 16:57:23");
INSERT INTO oc_order VALUES("224","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-20 16:57:36","2019-08-20 16:57:36");
INSERT INTO oc_order VALUES("225","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","fonePaisa(Pay using all wallets/cards/bank accounts)","fonePaisa","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-20 16:57:42","2019-08-20 16:57:42");
INSERT INTO oc_order VALUES("226","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PayUmoney BOLT","pumbolt","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","1","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-20 16:57:52","2019-08-20 16:57:52");
INSERT INTO oc_order VALUES("227","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-20 16:58:00","2019-08-20 16:58:00");
INSERT INTO oc_order VALUES("228","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-20 16:59:10","2019-08-20 16:59:10");
INSERT INTO oc_order VALUES("229","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","27","1","Fgyhh","Ghhjjj","admin@gmail.com","9999999999","","{\"2\":\"Hud\",\"1\":\"497005\"}","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Payswiff - Omni Channel transaction solution","paynear","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","124.123.31.89","","Mozilla/5.0 (Linux; Android 7.0; SM-G610F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.101 Mobile Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8,hi;q=0.7","2019-08-20 18:08:32","2019-08-20 18:08:32");
INSERT INTO oc_order VALUES("230","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","27","1","Fgyhh","Ghhjjj","admin@gmail.com","9999999999","","{\"2\":\"Hud\",\"1\":\"497005\"}","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","PayUmoney BOLT","pumbolt","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Per Item Shipping Rate","item.item","","106.0000","1","0","0.0000","0","","1","4","INR","1.00000000","124.123.31.89","","Mozilla/5.0 (Linux; Android 7.0; SM-G610F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.101 Mobile Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8,hi;q=0.7","2019-08-20 18:09:19","2019-08-20 18:09:19");
INSERT INTO oc_order VALUES("231","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","27","1","Fgyhh","Ghhjjj","admin@gmail.com","9999999999","","{\"2\":\"Hud\",\"1\":\"497005\"}","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Payswiff - Omni Channel transaction solution","paynear","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","124.123.31.89","","Mozilla/5.0 (Linux; Android 7.0; SM-G610F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.101 Mobile Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8,hi;q=0.7","2019-08-20 18:09:31","2019-08-20 18:09:31");
INSERT INTO oc_order VALUES("232","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","27","1","Fgyhh","Ghhjjj","admin@gmail.com","9999999999","","{\"2\":\"Hud\",\"1\":\"497005\"}","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Payswiff - Omni Channel transaction solution","paynear","Fgyhh","Ghhjjj","","Hud","","Hydgrr","","India","99","Andaman and Nicobar Islands","1475","","[]","Per Item Shipping Rate","item.item","","106.0000","0","0","0.0000","0","","1","4","INR","1.00000000","124.123.31.89","","Mozilla/5.0 (Linux; Android 7.0; SM-G610F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.101 Mobile Safari/537.36","en-GB,en-US;q=0.9,en;q=0.8,hi;q=0.7","2019-08-20 18:10:02","2019-08-20 18:10:02");
INSERT INTO oc_order VALUES("233","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-24 12:36:07","2019-08-24 12:36:07");
INSERT INTO oc_order VALUES("234","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36","en-US,en;q=0.9","2019-08-24 12:45:25","2019-08-24 12:45:25");
INSERT INTO oc_order VALUES("235","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36","en-US,en;q=0.9","2019-09-01 05:17:42","2019-09-01 05:17:42");
INSERT INTO oc_order VALUES("236","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36","en-US,en;q=0.9","2019-09-01 05:38:24","2019-09-01 05:38:24");
INSERT INTO oc_order VALUES("237","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36","en-US,en;q=0.9","2019-09-01 05:40:54","2019-09-01 05:40:54");
INSERT INTO oc_order VALUES("238","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","3.0000","0","0","0.0000","0","","1","4","INR","1.00000000","103.53.233.34","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36","en-US,en;q=0.9","2019-09-01 05:42:36","2019-09-01 05:42:36");
INSERT INTO oc_order VALUES("239","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","fonePaisa(Pay using all wallets/cards/bank accounts)","fonePaisa","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-12 04:03:57","2020-04-12 04:03:57");
INSERT INTO oc_order VALUES("240","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-12 04:04:40","2020-04-12 04:04:40");
INSERT INTO oc_order VALUES("241","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","KartPay","kartpay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-12 04:04:58","2020-04-12 04:04:58");
INSERT INTO oc_order VALUES("242","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","paynear","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-12 04:05:08","2020-04-12 04:05:08");
INSERT INTO oc_order VALUES("243","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PayUmoney BOLT","pumbolt","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","1","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-12 04:05:15","2020-04-12 04:05:16");
INSERT INTO oc_order VALUES("244","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 12:22:03","2020-04-17 12:22:03");
INSERT INTO oc_order VALUES("245","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","fonePaisa(Pay using all wallets/cards/bank accounts)","fonePaisa","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 12:22:09","2020-04-17 12:22:09");
INSERT INTO oc_order VALUES("246","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 12:22:31","2020-04-17 12:22:31");
INSERT INTO oc_order VALUES("247","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payswiff - Omni Channel transaction solution","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 12:22:54","2020-04-17 12:22:54");
INSERT INTO oc_order VALUES("248","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (BhartiPay)","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 12:24:23","2020-04-17 12:24:23");
INSERT INTO oc_order VALUES("249","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (BhartiPay)","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","122.162.134.251","122.162.134.251","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 12:40:18","2020-04-17 12:40:18");
INSERT INTO oc_order VALUES("250","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (BhartiPay)","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","122.162.134.251","122.162.134.251","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 14:56:29","2020-04-17 14:56:29");
INSERT INTO oc_order VALUES("251","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (BhartiPay)","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","4.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 14:56:54","2020-04-17 14:56:54");
INSERT INTO oc_order VALUES("252","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (BhartiPay)","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","15","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.62","183.87.237.62","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36","en-US,en;q=0.9","2020-04-17 14:59:30","2020-04-17 15:00:49");
INSERT INTO oc_order VALUES("253","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Credit Card / Debit Card (BhartiPay)","bhartipay","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","2.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.56","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36","en-US,en;q=0.9","2020-05-02 05:57:50","2020-05-02 05:57:50");
INSERT INTO oc_order VALUES("254","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","AvantGarde Payments","avantgarde","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","4.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.56","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36","en-US,en;q=0.9","2020-05-05 04:18:09","2020-05-05 04:18:09");
INSERT INTO oc_order VALUES("255","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","AvantGarde Payments","avantgarde","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","4.0000","0","0","0.0000","0","","1","4","INR","1.00000000","183.87.237.56","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36","en-US,en;q=0.9","2020-05-05 04:20:47","2020-05-05 04:20:47");
INSERT INTO oc_order VALUES("256","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","28","1","Paul","M","paulm@gmail.com","+919876543210","","{\"2\":\"Rajajinagar\\n1st cross\",\"1\":\"560010\"}","Paul","M","","Rajajinagar","1st cross","bangalore","","India","99","Karnataka","1489","","[]","Card/Net Banking/Wallet/UPI - CashFree","cashfree","Paul","M","","Rajajinagar","1st cross","bangalore","","India","99","Karnataka","1489","","[]","Per Item Shipping Rate","item.item","","601.0000","0","0","0.0000","0","","1","4","INR","1.00000000","52.95.75.2","","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36","en-US,en;q=0.9","2020-05-07 07:27:13","2020-05-07 07:27:13");
INSERT INTO oc_order VALUES("257","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","InstaMojo","instamojo","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.222.9","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36","en-US,en;q=0.9","2020-06-28 04:24:54","2020-06-28 04:24:54");
INSERT INTO oc_order VALUES("258","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","PAYKUN","paykun","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.222.9","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36","en-US,en;q=0.9","2020-06-28 04:25:23","2020-06-28 04:25:23");
INSERT INTO oc_order VALUES("259","0","INV-2018-00","0","Vinayak Electricals","http://vinayakelectrical.in/","3","1","Amit","Bhalerao","amitbaramatimca@gmail.com","8796154725","","{\"2\":\"Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway,Indapur\",\"1\":\"413102\"}","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Payment by bank card","payzen","Akshay","Suryawanshi","","Sonai Petrolium Service,Hingangoan,Pune-Solapur Highway","","Indapur","413106","India","99","Maharashtra","1493","","[]","Per Item Shipping Rate","item.item","","6.0000","0","0","0.0000","0","","1","4","INR","1.00000000","49.35.222.9","","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36","en-US,en;q=0.9","2020-06-28 04:25:35","2020-06-28 04:25:35");



DROP TABLE oc_order_history;

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_history VALUES("115","99","5","1","","2018-11-17 12:03:48");
INSERT INTO oc_order_history VALUES("108","81","1","0","Default order status before payment.","2018-10-18 13:19:09");
INSERT INTO oc_order_history VALUES("109","81","2","1","orderId: 81\nTransaction Id: 7549418725\n","2018-10-18 13:21:25");
INSERT INTO oc_order_history VALUES("120","81","5","1","","2018-11-17 12:14:21");
INSERT INTO oc_order_history VALUES("114","99","15","0","<span style=\"padding: 5px;border-radius: 50%;background: #577949;height: 5px;display: inline-block;\"></span><span style=\"margin-left: 4px;\">Paykun Payment Id => 78774-44830-78654-19855</span>","2018-11-17 06:51:10");
INSERT INTO oc_order_history VALUES("101","77","5","0","Payment Received","2018-10-08 17:30:56");
INSERT INTO oc_order_history VALUES("127","139","5","1","Action successfully completed (00).","2019-02-14 10:10:41");
INSERT INTO oc_order_history VALUES("128","140","5","1","Action successfully completed (00).","2019-02-14 10:11:52");
INSERT INTO oc_order_history VALUES("131","214","2","0","","2019-02-21 05:06:10");
INSERT INTO oc_order_history VALUES("136","218","1","0","Default order status before payment.","2019-05-29 17:28:25");
INSERT INTO oc_order_history VALUES("137","221","7","0","Action canceled (17).","2019-05-29 17:31:29");
INSERT INTO oc_order_history VALUES("138","226","1","0","Default order status before payment.","2019-08-20 16:57:52");
INSERT INTO oc_order_history VALUES("139","230","1","0","Default order status before payment.","2019-08-20 18:09:19");
INSERT INTO oc_order_history VALUES("140","243","1","0","Default order status before payment.","2020-04-12 04:05:16");
INSERT INTO oc_order_history VALUES("141","252","15","0","","2020-04-17 15:00:49");



DROP TABLE oc_order_option;

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_order_product;

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_product VALUES("1","1","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("2","2","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("3","3","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("4","4","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("5","5","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("6","6","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("7","7","40","iPhone","product 11","1","101.0000","101.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("8","8","50","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("9","9","50","Baalar Dress Material","Baalar Dress Material","2","650.0000","1300.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("10","10","51","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("17","16","50","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("34","29","51","Baalar Dress Material","Baalar Dress Material","1","750.0000","750.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("18","16","51","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("19","17","50","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("20","17","51","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("79","72","80","Wipro Tejas 5W LED Bulb","White Leggings","1","85.0000","85.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("25","22","50","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("78","71","80","Wipro Tejas 5W LED Bulb","White Leggings","1","85.0000","85.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("27","24","50","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("28","24","51","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("29","25","50","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("30","25","51","Baalar Dress Material","Baalar Dress Material","1","650.0000","650.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("43","38","50","Baalar Dress Material","Baalar Dress Material","1","750.0000","750.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("42","37","50","Baalar Dress Material","Baalar Dress Material","1","750.0000","750.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("80","73","80","Wipro Tejas 5W LED Bulb","White Leggings","1","85.0000","85.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("81","74","80","Wipro Tejas 5W LED Bulb","White Leggings","1","85.0000","85.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("49","43","50","Baalar Dress Material","Baalar Dress Material","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("50","44","54","Baalar Dress Material","Baalar Dress Material","1","750.0000","750.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("51","45","54","Baalar Dress Material","Baalar Dress Material","1","750.0000","750.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("55","49","81","Orange Leggings","Orange Leggings","1","249.0000","249.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("61","55","74","Dress Material","Dress Material","1","1100.0000","1100.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("62","56","74","Dress Material","Dress Material","1","1100.0000","1100.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("63","57","76","Dress Material","Dress Material","1","1100.0000","1100.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("82","75","80"," 8MM LED INDICATOR (LENCE)","White Leggings","1","85.0000","85.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("66","60","83","Yellow  Leggings","Yellow  Leggings","1","249.0000","249.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("67","61","76","Dress Material","Dress Material","1","1100.0000","1100.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("68","61","100","Manisha Slips ","Manisha Slips ","1","150.0000","150.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("69","62","80","White Leggings","White Leggings","1","299.0000","299.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("70","63","80","White Leggings","White Leggings","1","299.0000","299.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("71","64","80","White Leggings","White Leggings","1","5.0000","5.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("72","65","80","White Leggings","White Leggings","1","5.0000","5.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("73","66","80","White Leggings","White Leggings","1","5.0000","5.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("74","67","80","White Leggings","White Leggings","1","5.0000","5.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("75","68","80","White Leggings","White Leggings","2","5.0000","10.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("76","69","80","White Leggings","White Leggings","1","5.0000","5.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("77","70","80","White Leggings","White Leggings","1","299.0000","299.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("83","76","80"," 8MM LED INDICATOR (LENCE)","White Leggings","1","85.0000","85.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("84","77","80"," 8MM LED INDICATOR (LENCE)","White Leggings","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("91","83","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("89","81","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("90","82","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("113","100","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("94","85","167"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("95","85","172","CTL_150MM","CTL_150MM","1","400.0000","400.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("118","105","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("251","215","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("115","102","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("119","106","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("101","88","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("102","89","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("103","90","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("104","91","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("105","92","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("106","93","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("107","94","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","9.0000","18.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("108","95","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("109","96","172","CTL_150MM","CTL_150MM","1","400.0000","400.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("110","97","172","CTL_150MM","CTL_150MM","1","400.0000","400.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("120","107","172","CTL_150MM","CTL_150MM","1","400.0000","400.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("112","99","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","9.0000","9.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("121","108","170","MINI LED TUBE LIGHT 150MM","8MM LED INDICATOR (LENCE)","1","300.0000","300.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("122","109","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("123","110","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("124","111","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("125","112","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("126","113","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("127","114","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("128","115","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("129","116","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("130","117","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("131","117","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("132","118","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("133","118","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("134","119","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("135","119","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("136","120","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("137","120","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("138","121","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("139","122","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("140","122","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","52.0000","156.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("141","123","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("142","123","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","52.0000","156.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("143","124","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("144","124","169"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","52.0000","156.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("145","125","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("146","126","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("148","128","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("149","129","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("150","130","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("151","131","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("152","132","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("153","133","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("154","134","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("155","135","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("156","136","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("157","137","167"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("158","138","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("159","139","167"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("160","140","167"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("161","141","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("162","142","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("163","143","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("164","144","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("165","145","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("166","146","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("167","147","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("168","148","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("169","149","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("170","150","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("171","151","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("172","152","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("173","153","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("174","153","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("175","153","170","MINI LED TUBE LIGHT 150MM","8MM LED INDICATOR (LENCE)","1","300.0000","300.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("176","154","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("177","154","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("178","155","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("179","155","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("180","156","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("181","156","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("182","157","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("183","157","168"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("184","157","170","MINI LED TUBE LIGHT 150MM","8MM LED INDICATOR (LENCE)","1","300.0000","300.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("185","158","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("186","158","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("187","159","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("188","159","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("191","161","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("192","161","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("193","162","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("194","162","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("195","163","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("196","163","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("197","164","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("198","164","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("199","165","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("200","166","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("201","166","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("202","167","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("203","167","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("204","168","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","52.0000","52.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("206","170","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("207","171","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("208","172","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("209","173","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("210","174","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("211","175","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("212","176","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("213","177","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("214","178","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("215","179","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("216","180","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("217","181","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("218","182","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("219","183","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("220","184","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("221","185","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("222","186","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("223","187","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("224","188","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("225","189","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("226","190","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("227","191","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("228","192","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("229","193","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("230","194","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("231","195","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("232","196","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("233","197","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("234","198","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("235","199","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("236","200","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("237","201","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("238","202","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","3","2.0000","6.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("239","203","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("240","204","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("241","205","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("242","206","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("243","207","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("244","208","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("245","209","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("246","210","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("247","211","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("248","212","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("249","213","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("250","214","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("252","216","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("253","217","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("254","218","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("255","219","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("256","220","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("257","221","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("258","222","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("259","223","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("260","224","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("261","225","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("262","226","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("263","227","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("264","228","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("265","229","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("266","230","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("267","231","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("268","232","166"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","52.0000","104.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("269","233","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("270","234","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("271","235","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("272","236","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("273","237","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("274","238","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","1","2.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("275","239","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("276","240","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("277","241","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("278","242","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("279","243","80"," 8MM LED INDICATOR (LENCE)","8MM LED INDICATOR (LENCE)","2","2.0000","4.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("280","244","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("281","245","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("282","246","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("283","247","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("284","248","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("285","249","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("286","250","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("287","251","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","2","1.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("288","252","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("289","253","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","1","1.0000","1.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("290","254","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","2","1.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("291","255","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","2","1.0000","2.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("292","256","173","CTL_300MM","CTL_300MM","1","600.0000","600.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("293","257","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","3","1.0000","3.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("294","258","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","3","1.0000","3.0000","0.0000","0");
INSERT INTO oc_order_product VALUES("295","259","174","8MM LED INDICATOR (LENCE)1","8MM LED INDICATOR (LENCE)1","3","1.0000","3.0000","0.0000","0");



DROP TABLE oc_order_recurring;

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_order_recurring_transaction;

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_order_shipment;

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_order_status;

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_status VALUES("2","1","Processing");
INSERT INTO oc_order_status VALUES("3","1","Shipped");
INSERT INTO oc_order_status VALUES("7","1","Canceled");
INSERT INTO oc_order_status VALUES("5","1","Complete");
INSERT INTO oc_order_status VALUES("8","1","Denied");
INSERT INTO oc_order_status VALUES("9","1","Canceled Reversal");
INSERT INTO oc_order_status VALUES("10","1","Failed");
INSERT INTO oc_order_status VALUES("11","1","Refunded");
INSERT INTO oc_order_status VALUES("12","1","Reversed");
INSERT INTO oc_order_status VALUES("13","1","Chargeback");
INSERT INTO oc_order_status VALUES("1","1","Pending");
INSERT INTO oc_order_status VALUES("16","1","Voided");
INSERT INTO oc_order_status VALUES("15","1","Processed");
INSERT INTO oc_order_status VALUES("14","1","Expired");



DROP TABLE oc_order_total;

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=778 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_total VALUES("1","1","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("2","1","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("3","1","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("4","2","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("5","2","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("6","2","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("7","3","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("8","3","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("9","3","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("10","4","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("11","4","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("12","4","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("13","5","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("14","5","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("15","5","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("16","6","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("17","6","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("18","6","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("19","7","sub_total","Sub-Total","101.0000","1");
INSERT INTO oc_order_total VALUES("20","7","shipping","Flat Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("21","7","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("22","8","sub_total","Sub-Total","650.0000","1");
INSERT INTO oc_order_total VALUES("23","8","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("24","8","total","Total","700.0000","9");
INSERT INTO oc_order_total VALUES("25","9","sub_total","Sub-Total","1300.0000","1");
INSERT INTO oc_order_total VALUES("26","9","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("27","9","total","Total","1350.0000","9");
INSERT INTO oc_order_total VALUES("28","10","sub_total","Sub-Total","650.0000","1");
INSERT INTO oc_order_total VALUES("29","10","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("30","10","total","Total","700.0000","9");
INSERT INTO oc_order_total VALUES("50","16","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("87","29","total","Total","800.0000","9");
INSERT INTO oc_order_total VALUES("86","29","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("49","16","sub_total","Sub-Total","1300.0000","1");
INSERT INTO oc_order_total VALUES("85","29","sub_total","Sub-Total","750.0000","1");
INSERT INTO oc_order_total VALUES("51","16","total","Total","1350.0000","9");
INSERT INTO oc_order_total VALUES("52","17","sub_total","Sub-Total","1300.0000","1");
INSERT INTO oc_order_total VALUES("53","17","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("54","17","total","Total","1350.0000","9");
INSERT INTO oc_order_total VALUES("212","71","shipping","Per Item Shipping Rate","10.0000","3");
INSERT INTO oc_order_total VALUES("211","71","sub_total","Sub-Total","85.0000","1");
INSERT INTO oc_order_total VALUES("67","22","sub_total","Sub-Total","650.0000","1");
INSERT INTO oc_order_total VALUES("68","22","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("69","22","total","Total","700.0000","9");
INSERT INTO oc_order_total VALUES("215","72","shipping","Per Item Shipping Rate","10.0000","3");
INSERT INTO oc_order_total VALUES("214","72","sub_total","Sub-Total","85.0000","1");
INSERT INTO oc_order_total VALUES("73","24","sub_total","Sub-Total","1300.0000","1");
INSERT INTO oc_order_total VALUES("74","24","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("75","24","total","Total","1350.0000","9");
INSERT INTO oc_order_total VALUES("76","25","sub_total","Sub-Total","1300.0000","1");
INSERT INTO oc_order_total VALUES("77","25","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("78","25","total","Total","1350.0000","9");
INSERT INTO oc_order_total VALUES("109","37","sub_total","Sub-Total","750.0000","1");
INSERT INTO oc_order_total VALUES("213","71","total","Total","95.0000","9");
INSERT INTO oc_order_total VALUES("110","37","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("111","37","total","Total","800.0000","9");
INSERT INTO oc_order_total VALUES("112","38","sub_total","Sub-Total","750.0000","1");
INSERT INTO oc_order_total VALUES("113","38","shipping","Flat Shipping Rate","50.0000","3");
INSERT INTO oc_order_total VALUES("114","38","total","Total","800.0000","9");
INSERT INTO oc_order_total VALUES("217","73","sub_total","Sub-Total","85.0000","1");
INSERT INTO oc_order_total VALUES("216","72","total","Total","95.0000","9");
INSERT INTO oc_order_total VALUES("127","43","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("128","43","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("129","43","total","Total","41.0000","9");
INSERT INTO oc_order_total VALUES("130","44","sub_total","Sub-Total","750.0000","1");
INSERT INTO oc_order_total VALUES("131","44","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("132","44","total","Total","790.0000","9");
INSERT INTO oc_order_total VALUES("133","45","sub_total","Sub-Total","750.0000","1");
INSERT INTO oc_order_total VALUES("134","45","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("135","45","total","Total","790.0000","9");
INSERT INTO oc_order_total VALUES("220","74","sub_total","Sub-Total","85.0000","1");
INSERT INTO oc_order_total VALUES("146","49","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("147","49","total","Total","289.0000","9");
INSERT INTO oc_order_total VALUES("145","49","sub_total","Sub-Total","249.0000","1");
INSERT INTO oc_order_total VALUES("219","73","total","Total","95.0000","9");
INSERT INTO oc_order_total VALUES("218","73","shipping","Per Item Shipping Rate","10.0000","3");
INSERT INTO oc_order_total VALUES("163","55","sub_total","Sub-Total","1100.0000","1");
INSERT INTO oc_order_total VALUES("164","55","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("165","55","total","Total","1140.0000","9");
INSERT INTO oc_order_total VALUES("166","56","sub_total","Sub-Total","1100.0000","1");
INSERT INTO oc_order_total VALUES("167","56","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("168","56","total","Total","1140.0000","9");
INSERT INTO oc_order_total VALUES("169","57","sub_total","Sub-Total","1100.0000","1");
INSERT INTO oc_order_total VALUES("170","57","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("171","57","total","Total","1140.0000","9");
INSERT INTO oc_order_total VALUES("222","74","total","Total","95.0000","9");
INSERT INTO oc_order_total VALUES("221","74","shipping","Per Item Shipping Rate","10.0000","3");
INSERT INTO oc_order_total VALUES("178","60","sub_total","Sub-Total","249.0000","1");
INSERT INTO oc_order_total VALUES("179","60","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("180","60","total","Total","289.0000","9");
INSERT INTO oc_order_total VALUES("181","61","sub_total","Sub-Total","1250.0000","1");
INSERT INTO oc_order_total VALUES("182","61","shipping","Per Item Shipping Rate","80.0000","3");
INSERT INTO oc_order_total VALUES("183","61","total","Total","1330.0000","9");
INSERT INTO oc_order_total VALUES("184","62","sub_total","Sub-Total","299.0000","1");
INSERT INTO oc_order_total VALUES("185","62","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("186","62","total","Total","339.0000","9");
INSERT INTO oc_order_total VALUES("187","63","sub_total","Sub-Total","299.0000","1");
INSERT INTO oc_order_total VALUES("188","63","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("189","63","total","Total","339.0000","9");
INSERT INTO oc_order_total VALUES("190","64","sub_total","Sub-Total","5.0000","1");
INSERT INTO oc_order_total VALUES("191","64","shipping","Per Item Shipping Rate","40.0000","3");
INSERT INTO oc_order_total VALUES("192","64","total","Total","45.0000","9");
INSERT INTO oc_order_total VALUES("193","65","sub_total","Sub-Total","5.0000","1");
INSERT INTO oc_order_total VALUES("194","65","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("195","65","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("196","66","sub_total","Sub-Total","5.0000","1");
INSERT INTO oc_order_total VALUES("197","66","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("198","66","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("199","67","sub_total","Sub-Total","5.0000","1");
INSERT INTO oc_order_total VALUES("200","67","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("201","67","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("202","68","sub_total","Sub-Total","10.0000","1");
INSERT INTO oc_order_total VALUES("203","68","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("204","68","total","Total","12.0000","9");
INSERT INTO oc_order_total VALUES("205","69","sub_total","Sub-Total","5.0000","1");
INSERT INTO oc_order_total VALUES("206","69","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("207","69","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("208","70","sub_total","Sub-Total","299.0000","1");
INSERT INTO oc_order_total VALUES("209","70","shipping","Per Item Shipping Rate","25.0000","3");
INSERT INTO oc_order_total VALUES("210","70","total","Total","324.0000","9");
INSERT INTO oc_order_total VALUES("223","75","sub_total","Sub-Total","85.0000","1");
INSERT INTO oc_order_total VALUES("224","75","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("225","75","total","Total","86.0000","9");
INSERT INTO oc_order_total VALUES("226","76","sub_total","Sub-Total","85.0000","1");
INSERT INTO oc_order_total VALUES("227","76","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("228","76","total","Total","86.0000","9");
INSERT INTO oc_order_total VALUES("229","77","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("230","77","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("231","77","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("244","82","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("242","81","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("243","81","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("241","81","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("245","82","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("246","82","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("247","83","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("248","83","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("249","83","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("299","100","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("298","100","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("253","85","sub_total","Sub-Total","452.0000","1");
INSERT INTO oc_order_total VALUES("254","85","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("255","85","total","Total","454.0000","9");
INSERT INTO oc_order_total VALUES("645","215","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("644","215","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("300","100","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("643","215","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("262","88","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("263","88","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("264","88","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("265","89","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("266","89","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("267","89","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("268","90","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("269","90","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("270","90","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("271","91","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("272","91","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("273","91","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("274","92","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("275","92","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("276","92","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("277","93","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("278","93","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("279","93","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("280","94","sub_total","Sub-Total","18.0000","1");
INSERT INTO oc_order_total VALUES("281","94","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("282","94","total","Total","20.0000","9");
INSERT INTO oc_order_total VALUES("283","95","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("284","95","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("285","95","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("286","96","sub_total","Sub-Total","400.0000","1");
INSERT INTO oc_order_total VALUES("287","96","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("288","96","total","Total","401.0000","9");
INSERT INTO oc_order_total VALUES("289","97","sub_total","Sub-Total","400.0000","1");
INSERT INTO oc_order_total VALUES("290","97","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("291","97","total","Total","401.0000","9");
INSERT INTO oc_order_total VALUES("305","102","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("304","102","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("295","99","sub_total","Sub-Total","9.0000","1");
INSERT INTO oc_order_total VALUES("296","99","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("297","99","total","Total","10.0000","9");
INSERT INTO oc_order_total VALUES("306","102","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("314","105","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("313","105","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("315","105","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("316","106","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("317","106","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("318","106","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("319","107","sub_total","Sub-Total","400.0000","1");
INSERT INTO oc_order_total VALUES("320","107","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("321","107","total","Total","401.0000","9");
INSERT INTO oc_order_total VALUES("322","108","sub_total","Sub-Total","300.0000","1");
INSERT INTO oc_order_total VALUES("323","108","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("324","108","total","Total","301.0000","9");
INSERT INTO oc_order_total VALUES("325","109","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("326","109","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("327","109","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("328","110","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("329","110","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("330","110","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("331","111","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("332","111","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("333","111","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("334","112","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("335","112","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("336","112","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("337","113","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("338","113","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("339","113","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("340","114","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("341","114","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("342","114","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("343","115","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("344","115","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("345","115","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("346","116","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("347","116","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("348","116","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("349","117","sub_total","Sub-Total","156.0000","1");
INSERT INTO oc_order_total VALUES("350","117","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("351","117","total","Total","159.0000","9");
INSERT INTO oc_order_total VALUES("352","118","sub_total","Sub-Total","156.0000","1");
INSERT INTO oc_order_total VALUES("353","118","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("354","118","total","Total","159.0000","9");
INSERT INTO oc_order_total VALUES("355","119","sub_total","Sub-Total","156.0000","1");
INSERT INTO oc_order_total VALUES("356","119","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("357","119","total","Total","159.0000","9");
INSERT INTO oc_order_total VALUES("358","120","sub_total","Sub-Total","208.0000","1");
INSERT INTO oc_order_total VALUES("359","120","shipping","Per Item Shipping Rate","4.0000","3");
INSERT INTO oc_order_total VALUES("360","120","total","Total","212.0000","9");
INSERT INTO oc_order_total VALUES("361","121","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("362","121","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("363","121","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("364","122","sub_total","Sub-Total","260.0000","1");
INSERT INTO oc_order_total VALUES("365","122","shipping","Per Item Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("366","122","total","Total","265.0000","9");
INSERT INTO oc_order_total VALUES("367","123","sub_total","Sub-Total","260.0000","1");
INSERT INTO oc_order_total VALUES("368","123","shipping","Per Item Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("369","123","total","Total","265.0000","9");
INSERT INTO oc_order_total VALUES("370","124","sub_total","Sub-Total","260.0000","1");
INSERT INTO oc_order_total VALUES("371","124","shipping","Per Item Shipping Rate","5.0000","3");
INSERT INTO oc_order_total VALUES("372","124","total","Total","265.0000","9");
INSERT INTO oc_order_total VALUES("373","125","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("374","125","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("375","125","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("376","126","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("377","126","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("378","126","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("382","128","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("383","128","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("384","128","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("385","129","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("386","129","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("387","129","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("388","130","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("389","130","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("390","130","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("391","131","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("392","131","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("393","131","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("394","132","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("395","132","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("396","132","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("397","133","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("398","133","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("399","133","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("400","134","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("401","134","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("402","134","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("403","135","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("404","135","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("405","135","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("406","136","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("407","136","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("408","136","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("409","137","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("410","137","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("411","137","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("412","138","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("413","138","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("414","138","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("415","139","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("416","139","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("417","139","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("418","140","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("419","140","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("420","140","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("421","141","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("422","141","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("423","141","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("424","142","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("425","142","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("426","142","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("427","143","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("428","143","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("429","143","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("430","144","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("431","144","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("432","144","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("433","145","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("434","145","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("435","145","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("436","146","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("437","146","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("438","146","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("439","147","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("440","147","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("441","147","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("442","148","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("443","148","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("444","148","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("445","149","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("446","149","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("447","149","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("448","150","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("449","150","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("450","150","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("451","151","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("452","151","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("453","151","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("454","152","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("455","152","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("456","152","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("457","153","sub_total","Sub-Total","404.0000","1");
INSERT INTO oc_order_total VALUES("458","153","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("459","153","total","Total","407.0000","9");
INSERT INTO oc_order_total VALUES("460","154","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("461","154","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("462","154","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("463","155","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("464","155","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("465","155","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("466","156","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("467","156","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("468","156","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("469","157","sub_total","Sub-Total","404.0000","1");
INSERT INTO oc_order_total VALUES("470","157","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("471","157","total","Total","407.0000","9");
INSERT INTO oc_order_total VALUES("472","158","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("473","158","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("474","158","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("475","159","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("476","159","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("477","159","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("481","161","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("482","161","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("483","161","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("484","162","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("485","162","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("486","162","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("487","163","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("488","163","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("489","163","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("490","164","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("491","164","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("492","164","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("493","165","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("494","165","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("495","165","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("496","166","sub_total","Sub-Total","56.0000","1");
INSERT INTO oc_order_total VALUES("497","166","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("498","166","total","Total","59.0000","9");
INSERT INTO oc_order_total VALUES("499","167","sub_total","Sub-Total","58.0000","1");
INSERT INTO oc_order_total VALUES("500","167","shipping","Per Item Shipping Rate","4.0000","3");
INSERT INTO oc_order_total VALUES("501","167","total","Total","62.0000","9");
INSERT INTO oc_order_total VALUES("502","168","sub_total","Sub-Total","52.0000","1");
INSERT INTO oc_order_total VALUES("503","168","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("504","168","total","Total","53.0000","9");
INSERT INTO oc_order_total VALUES("508","170","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("509","170","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("510","170","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("511","171","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("512","171","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("513","171","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("514","172","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("515","172","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("516","172","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("517","173","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("518","173","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("519","173","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("520","174","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("521","174","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("522","174","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("523","175","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("524","175","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("525","175","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("526","176","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("527","176","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("528","176","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("529","177","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("530","177","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("531","177","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("532","178","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("533","178","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("534","178","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("535","179","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("536","179","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("537","179","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("538","180","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("539","180","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("540","180","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("541","181","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("542","181","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("543","181","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("544","182","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("545","182","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("546","182","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("547","183","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("548","183","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("549","183","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("550","184","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("551","184","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("552","184","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("553","185","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("554","185","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("555","185","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("556","186","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("557","186","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("558","186","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("559","187","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("560","187","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("561","187","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("562","188","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("563","188","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("564","188","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("565","189","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("566","189","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("567","189","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("568","190","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("569","190","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("570","190","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("571","191","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("572","191","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("573","191","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("574","192","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("575","192","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("576","192","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("577","193","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("578","193","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("579","193","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("580","194","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("581","194","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("582","194","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("583","195","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("584","195","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("585","195","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("586","196","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("587","196","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("588","196","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("589","197","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("590","197","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("591","197","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("592","198","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("593","198","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("594","198","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("595","199","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("596","199","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("597","199","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("598","200","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("599","200","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("600","200","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("601","201","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("602","201","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("603","201","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("604","202","sub_total","Sub-Total","6.0000","1");
INSERT INTO oc_order_total VALUES("605","202","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("606","202","total","Total","9.0000","9");
INSERT INTO oc_order_total VALUES("607","203","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("608","203","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("609","203","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("610","204","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("611","204","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("612","204","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("613","205","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("614","205","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("615","205","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("616","206","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("617","206","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("618","206","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("619","207","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("620","207","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("621","207","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("622","208","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("623","208","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("624","208","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("625","209","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("626","209","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("627","209","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("628","210","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("629","210","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("630","210","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("631","211","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("632","211","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("633","211","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("634","212","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("635","212","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("636","212","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("637","213","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("638","213","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("639","213","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("640","214","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("641","214","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("642","214","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("646","216","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("647","216","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("648","216","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("649","217","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("650","217","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("651","217","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("652","218","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("653","218","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("654","218","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("655","219","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("656","219","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("657","219","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("658","220","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("659","220","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("660","220","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("661","221","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("662","221","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("663","221","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("664","222","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("665","222","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("666","222","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("667","223","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("668","223","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("669","223","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("670","224","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("671","224","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("672","224","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("673","225","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("674","225","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("675","225","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("676","226","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("677","226","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("678","226","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("679","227","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("680","227","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("681","227","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("682","228","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("683","228","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("684","228","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("685","229","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("686","229","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("687","229","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("688","230","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("689","230","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("690","230","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("691","231","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("692","231","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("693","231","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("694","232","sub_total","Sub-Total","104.0000","1");
INSERT INTO oc_order_total VALUES("695","232","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("696","232","total","Total","106.0000","9");
INSERT INTO oc_order_total VALUES("697","233","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("698","233","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("699","233","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("700","234","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("701","234","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("702","234","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("703","235","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("704","235","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("705","235","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("706","236","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("707","236","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("708","236","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("709","237","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("710","237","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("711","237","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("712","238","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("713","238","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("714","238","total","Total","3.0000","9");
INSERT INTO oc_order_total VALUES("715","239","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("716","239","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("717","239","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("718","240","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("719","240","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("720","240","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("721","241","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("722","241","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("723","241","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("724","242","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("725","242","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("726","242","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("727","243","sub_total","Sub-Total","4.0000","1");
INSERT INTO oc_order_total VALUES("728","243","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("729","243","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("730","244","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("731","244","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("732","244","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("733","245","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("734","245","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("735","245","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("736","246","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("737","246","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("738","246","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("739","247","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("740","247","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("741","247","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("742","248","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("743","248","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("744","248","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("745","249","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("746","249","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("747","249","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("748","250","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("749","250","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("750","250","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("751","251","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("752","251","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("753","251","total","Total","4.0000","9");
INSERT INTO oc_order_total VALUES("754","252","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("755","252","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("756","252","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("757","253","sub_total","Sub-Total","1.0000","1");
INSERT INTO oc_order_total VALUES("758","253","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("759","253","total","Total","2.0000","9");
INSERT INTO oc_order_total VALUES("760","254","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("761","254","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("762","254","total","Total","4.0000","9");
INSERT INTO oc_order_total VALUES("763","255","sub_total","Sub-Total","2.0000","1");
INSERT INTO oc_order_total VALUES("764","255","shipping","Per Item Shipping Rate","2.0000","3");
INSERT INTO oc_order_total VALUES("765","255","total","Total","4.0000","9");
INSERT INTO oc_order_total VALUES("766","256","sub_total","Sub-Total","600.0000","1");
INSERT INTO oc_order_total VALUES("767","256","shipping","Per Item Shipping Rate","1.0000","3");
INSERT INTO oc_order_total VALUES("768","256","total","Total","601.0000","9");
INSERT INTO oc_order_total VALUES("769","257","sub_total","Sub-Total","3.0000","1");
INSERT INTO oc_order_total VALUES("770","257","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("771","257","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("772","258","sub_total","Sub-Total","3.0000","1");
INSERT INTO oc_order_total VALUES("773","258","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("774","258","total","Total","6.0000","9");
INSERT INTO oc_order_total VALUES("775","259","sub_total","Sub-Total","3.0000","1");
INSERT INTO oc_order_total VALUES("776","259","shipping","Per Item Shipping Rate","3.0000","3");
INSERT INTO oc_order_total VALUES("777","259","total","Total","6.0000","9");



DROP TABLE oc_order_voucher;

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_product;

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `metal` int(1) NOT NULL DEFAULT 0,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `price_extra_type` int(1) NOT NULL DEFAULT 0,
  `price_extra` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

INSERT INTO oc_product VALUES("80","0","8MM LED INDICATOR (LENCE)","","","","","","","","0","6","catalog/LEDBulbs/aaa.JPG","0","1","2.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","133","2018-02-10 06:34:29","2019-01-13 15:08:18");
INSERT INTO oc_product VALUES("166","0","8MM LED INDICATOR (LENCE)","","","","","","","","2","6","catalog/LEDBulbs/1.JPG","0","1","52.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","80","2018-10-11 16:27:03","2018-10-11 16:29:07");
INSERT INTO oc_product VALUES("167","0","8MM LED INDICATOR (LENCE)","","","","","","","","2","6","catalog/LEDBulbs/3.JPG","0","1","52.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","96","2018-10-11 16:29:33","2018-10-11 16:31:38");
INSERT INTO oc_product VALUES("168","0","8MM LED INDICATOR (LENCE)","","","","","","","","4","6","catalog/LEDBulbs/5.JPG","0","1","52.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","86","2018-10-11 16:31:58","2018-10-11 16:33:25");
INSERT INTO oc_product VALUES("169","0","8MM LED INDICATOR (LENCE)","","","","","","","","4","6","catalog/LEDBulbs/7.JPG","0","1","52.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","113","2018-10-11 16:33:45","2018-10-11 16:34:19");
INSERT INTO oc_product VALUES("170","0","8MM LED INDICATOR (LENCE)","","","","","","","","4","6","catalog/TubeLight/1.JPG","0","1","300.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","143","2018-10-11 16:37:31","2018-10-11 16:38:35");
INSERT INTO oc_product VALUES("171","0","8MM LED INDICATOR (LENCE)","","","","","","","","4","6","catalog/TubeLight/2.JPG","0","1","400.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","113","2018-10-11 16:38:49","2018-10-11 16:39:42");
INSERT INTO oc_product VALUES("172","0","CTL_150MM","","","","","","","","4","6","catalog/TubeLight/3.JPG","0","1","400.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","128","2018-10-11 16:39:57","2018-10-11 16:40:31");
INSERT INTO oc_product VALUES("173","0","CTL_300MM","","","","","","","","4","6","catalog/TubeLight/4.JPG","0","1","600.0000","0","0.0000","0","0","2018-02-10","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","128","2018-10-11 16:40:44","2018-10-11 16:43:10");
INSERT INTO oc_product VALUES("174","0","8MM LED INDICATOR (LENCE)1","","","","","","","","10","6","catalog/LEDBulbs/6.JPG","0","1","1.0000","0","0.0000","0","0","2020-04-17","0.00000000","1","0.00000000","0.00000000","0.00000000","1","1","1","1","1","15","2020-04-17 12:00:46","2020-04-17 12:00:46");



DROP TABLE oc_product_attribute;

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_product_description;

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_description VALUES("173","1","CTL_300MM","&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;&lt;h2 class=&quot;project-title&quot; style=&quot;font-size: 1.28571em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; letter-spacing: 2px; text-transform: uppercase; color: rgb(244, 197, 69); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;CTL_300mm&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Voltage :&lt;/strong&gt;&amp;nbsp;24V DC and 230V AC&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Power Consumption :&lt;/strong&gt;&amp;nbsp;2.5 to 3 watt&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Application :&lt;/strong&gt;&amp;nbsp;control panel, General light, Canopy tube lights&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Mounting :&lt;/strong&gt;&amp;nbsp;Both end 4 mm screw mounting&lt;/p&gt;&lt;/h2&gt;&lt;/div&gt;","","CTL_300MM","","");
INSERT INTO oc_product_description VALUES("172","1","CTL_150MM","&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;&lt;h2 class=&quot;project-title&quot; style=&quot;font-size: 1.28571em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; letter-spacing: 2px; text-transform: uppercase; color: rgb(244, 197, 69); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;MTL-2835-250&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Voltage :&lt;/strong&gt;12, 24V DC and 110, 230V AC&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Application :&lt;/strong&gt;&amp;nbsp;control panel, General light, Canopy tube lights&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Power Consumption :&lt;/strong&gt;&amp;nbsp;5 to 6 watt&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Mounting :&lt;/strong&gt;&amp;nbsp;Both end 4 mm screw mounting&lt;/p&gt;&lt;/h2&gt;&lt;/div&gt;","","CTL_150MM","","");
INSERT INTO oc_product_description VALUES("166","1"," 8MM LED INDICATOR (LENCE)","&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;Features&lt;/div&gt;&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;&lt;h2 class=&quot;project-title&quot; style=&quot;font-size: 1.28571em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; letter-spacing: 2px; text-transform: uppercase; color: rgb(244, 197, 69); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;8MM LED INDICATOR&lt;/h2&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;Cat log no. : DSS-1-8SD&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;strong&gt;Voltage :&lt;/strong&gt;&amp;nbsp;12, 24V AC/DC, 110/230V AC&lt;/p&gt;&lt;strong style=&quot;color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; font-size: 13px; background-color: rgb(33, 33, 33);&quot;&gt;&lt;/strong&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;strong&gt;Application :&lt;/strong&gt;&amp;nbsp;Mimic control Panel&lt;/p&gt;&lt;strong style=&quot;color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; font-size: 13px; background-color: rgb(33, 33, 33);&quot;&gt;&lt;/strong&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;strong&gt;Color :&amp;nbsp;&lt;/strong&gt;(Red &amp;amp; Green) AND (Yellow &amp;amp; Green)&lt;/p&gt;&lt;/div&gt;",""," 8MM LED INDICATOR (LENCE)","","");
INSERT INTO oc_product_description VALUES("171","1","MINI LED TUBE LIGHT 250MM","&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;&lt;h2 class=&quot;project-title&quot; style=&quot;font-size: 1.28571em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; letter-spacing: 2px; text-transform: uppercase; color: rgb(244, 197, 69); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;MTL-2835-250&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Voltage :&lt;/strong&gt;12, 24V DC and 110, 230V AC&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Application :&lt;/strong&gt;&amp;nbsp;control panel, General light, Canopy tube lights&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Power Consumption :&lt;/strong&gt;&amp;nbsp;5 to 6 watt&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;strong style=&quot;font-size: 13px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none;&quot;&gt;&lt;strong&gt;Mounting :&lt;/strong&gt;&amp;nbsp;Both end 4 mm screw mounting&lt;/p&gt;&lt;/h2&gt;&lt;/div&gt;",""," 8MM LED INDICATOR (LENCE)","","");
INSERT INTO oc_product_description VALUES("80","1"," 8MM LED INDICATOR (LENCE)","&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;Features&lt;/div&gt;&lt;div class=&quot;title&quot; style=&quot;margin: 0px; outline: none; padding: 0px 4px 3px; color: rgb(39, 38, 38); font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;table-wrapper&quot; style=&quot;margin: 0px; outline: none; padding: 0px; color: rgb(119, 119, 119);&quot;&gt;&lt;h2 class=&quot;project-title&quot; style=&quot;font-size: 1.28571em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; letter-spacing: 2px; text-transform: uppercase; color: rgb(244, 197, 69); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;8MM LED INDICATOR (LENCE)&lt;/h2&gt;&lt;p class=&quot;project-subtotle&quot; style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;Cat log no. : DSS-1-8R&lt;/p&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;strong&gt;Voltage :&lt;/strong&gt;&amp;nbsp;12,24V AC/DC, 110/230V AC&lt;/p&gt;&lt;strong style=&quot;color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;/strong&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;strong&gt;Application :&lt;/strong&gt;&amp;nbsp;Mimic control Panel&lt;/p&gt;&lt;strong style=&quot;color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;/strong&gt;&lt;p style=&quot;font-size: 1.14286em; line-height: 2; color: rgb(255, 255, 255); font-family: Verdana, Geneva, sans-serif; background-color: rgb(33, 33, 33);&quot;&gt;&lt;strong&gt;Color :&amp;nbsp;&lt;/strong&gt;Red, Yellow, Green, Amber,Clear, Blue &amp;amp; Dual(R &amp;amp; G)&lt;/p&gt;&lt;/div&gt;","","Wipro Tejas 5W LED Bulb","","");
INSERT INTO oc_product_description VALUES("174","1","8MM LED INDICATOR (LENCE)1","&lt;p&gt;8MM LED INDICATOR (LENCE)1&lt;br&gt;&lt;/p&gt;","","8MM LED INDICATOR (LENCE)1","","");



DROP TABLE oc_product_discount;

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;




DROP TABLE oc_product_filter;

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE oc_product_image;

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2516 DEFAULT CHARSET=utf8;










