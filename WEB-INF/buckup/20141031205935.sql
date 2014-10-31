JEECMS_BACKUP_SET FOREIGN_KEY_CHECKS = 0;
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_acquisition;
JEECMS_BACKUP_CREATE TABLE `jc_acquisition` (
  `acquisition_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `acq_name` varchar(50) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `start_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `end_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `status` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������(0:������������������������������������������������������;1:������������������������������������������������������;2:������������������������������������������������������)',
  `curr_num` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `curr_item` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `total_item` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `pause_time` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������(������������������������������������������������������)',
  `page_encoding` varchar(20) NOT NULL default 'GBK' COMMENT '������������������������������������������������������������������������������������������������������������',
  `plan_list` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `dynamic_addr` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `dynamic_start` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `dynamic_end` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `linkset_start` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `linkset_end` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `link_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `link_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `title_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `title_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `keywords_start` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `keywords_end` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `description_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `description_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `content_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `content_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `pagination_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `pagination_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `queue` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������',
  `repeat_check_type` varchar(20) NOT NULL default 'NONE' COMMENT '������������������������������������������������������������������������������������������������������������',
  `img_acqu` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content_prefix` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������url',
  `img_prefix` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������url',
  `view_start` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `view_end` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `view_id_start` varchar(255) default NULL COMMENT 'id������������������������������������������������������',
  `view_id_end` varchar(255) default NULL COMMENT 'id������������������������������������������������������',
  `view_link` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `releaseTime_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `releaseTime_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `author_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `author_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `origin_start` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `origin_end` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `releaseTime_format` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`acquisition_id`),
  KEY `fk_jc_acquisition_channel` (`channel_id`),
  KEY `fk_jc_acquisition_contenttype` (`type_id`),
  KEY `fk_jc_acquisition_site` (`site_id`),
  KEY `fk_jc_acquisition_user` (`user_id`),
  CONSTRAINT `fk_jc_acquisition_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`),
  CONSTRAINT `fk_jc_acquisition_contenttype` FOREIGN KEY (`type_id`) REFERENCES `jc_content_type` (`type_id`),
  CONSTRAINT `fk_jc_acquisition_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_acquisition_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_acquisition` VALUES(2,1,40,1,1,'新浪社会与法栏目','2013-09-23 17:29:08.0','2013-09-23 17:29:31.0',0,0,0,0,100,'gb2312','','http://roll.finance.sina.com.cn/finance/jj4/jjdt/index_[page].shtml',7,300,'<ul class=\"list_009\">','<div class=\"hs01\"></div>','<li><a href=\"','\" target=\"_blank\">','<title>','_基金动态_新浪财经_新浪网</title>',null,null,'','','<!-- 正文内容 begin -->','<!-- publish_helper_end -->',null,null,0,'NONE',0,'','','','','','','','','','','','','','');
JEECMS_BACKUP_ INSERT INTO `jc_acquisition` VALUES(3,1,13,1,1,'社会与法律','2013-09-23 17:29:33.0','2013-09-23 17:29:47.0',0,0,0,0,500,'GBK','http://roll.news.sina.com.cn/news/shxw/fz-shyf/index.shtml','',2,10,'<ul class=\"list_009\">','<div class=\"hs01\"></div>','<li><a href=\"','\" target=\"_blank\">','<title>','_新浪新闻</title>',null,null,'<meta name=description content=\"','<meta name=\"sudameta\" content=\"sinaog:0\" />','<!-- 正文内容 begin -->','<!-- publish_helper_end -->',null,null,0,'NONE',1,'','','','','','','','','','','','','','yyyy-MM-dd HH:mm:ss');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_acquisition_history;
JEECMS_BACKUP_CREATE TABLE `jc_acquisition_history` (
  `history_id` int(11) NOT NULL auto_increment,
  `channel_url` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `content_url` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `title` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `description` varchar(20) NOT NULL default '' COMMENT '������������������������������������������������������',
  `acquisition_id` int(11) default NULL COMMENT '���������������������������������������������������������������������������������',
  `content_id` int(11) default NULL COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`history_id`),
  KEY `fk_acquisition_history_acquisition` (`acquisition_id`),
  CONSTRAINT `fk_jc_history_acquisition` FOREIGN KEY (`acquisition_id`) REFERENCES `jc_acquisition` (`acquisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_acquisition_temp;
JEECMS_BACKUP_CREATE TABLE `jc_acquisition_temp` (
  `temp_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) default NULL,
  `channel_url` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `content_url` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `title` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `percent` int(3) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `description` varchar(20) NOT NULL default '' COMMENT '������������������������������������������������������',
  `seq` int(3) NOT NULL default '0' COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`temp_id`),
  KEY `fk_jc_temp_site` (`site_id`),
  CONSTRAINT `fk_jc_temp_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_advertising;
JEECMS_BACKUP_CREATE TABLE `jc_advertising` (
  `advertising_id` int(11) NOT NULL auto_increment,
  `adspace_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `ad_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `category` varchar(50) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `ad_code` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `ad_weight` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `display_count` bigint(20) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `click_count` bigint(20) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `start_time` date default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `end_time` date default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_enabled` char(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`advertising_id`),
  KEY `fk_jc_advertising_site` (`site_id`),
  KEY `fk_jc_space_advertising` (`adspace_id`),
  CONSTRAINT `fk_jc_advertising_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_space_advertising` FOREIGN KEY (`adspace_id`) REFERENCES `jc_advertising_space` (`adspace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_advertising` VALUES(1,1,1,'banner','image',null,1,127,0,null,null,'1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising` VALUES(2,2,1,'通栏广告1','image',null,1,123,2,null,null,'1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising` VALUES(3,3,1,'视频广告上','image',null,1,0,0,null,null,'1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising` VALUES(4,4,1,'视频广告下','image',null,1,0,0,null,null,'1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising` VALUES(5,5,1,'留言板本周热点广告','image',null,1,0,0,null,null,'1');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_advertising_attr;
JEECMS_BACKUP_CREATE TABLE `jc_advertising_attr` (
  `advertising_id` int(11) NOT NULL,
  `attr_name` varchar(50) NOT NULL COMMENT '������������������������������������������������������',
  `attr_value` varchar(255) default NULL COMMENT '���������������������������',
  KEY `fk_jc_params_advertising` (`advertising_id`),
  CONSTRAINT `fk_jc_params_advertising` FOREIGN KEY (`advertising_id`) REFERENCES `jc_advertising` (`advertising_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(1,'image_title','查看JEECMS官方网站');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(1,'image_url','/r/cms/www/red/img/banner.gif');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(1,'image_target','_blank');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(1,'image_link','http://www.jeecms.com');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(1,'image_width','735');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(1,'image_height','70');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(2,'image_title','JEECMS官方网站');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(2,'image_url','/r/cms/www/red/img/banner1.jpg');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(2,'image_target','_blank');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(2,'image_link','http://www.jeecms.com');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(2,'image_width','960');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(2,'image_height','60');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(3,'image_height','89');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(3,'image_link','http://');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(3,'image_target','_blank');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(3,'image_url','/u/cms/www/201112/17144805im1p.jpg');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(3,'image_width','980');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(4,'image_height','90');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(4,'image_link','http://');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(4,'image_target','_blank');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(4,'image_url','/u/cms/www/201112/17145028j3bj.jpg');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(4,'image_width','980');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(5,'image_height','109');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(5,'image_link','http://3x.jeecms.com');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(5,'image_target','_blank');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(5,'image_url','/u/cms/www/201112/18155751wi1k.gif');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_attr` VALUES(5,'image_width','215');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_advertising_space;
JEECMS_BACKUP_CREATE TABLE `jc_advertising_space` (
  `adspace_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `ad_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `is_enabled` char(1) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`adspace_id`),
  KEY `fk_jc_adspace_site` (`site_id`),
  CONSTRAINT `fk_jc_adspace_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_advertising_space` VALUES(1,1,'页头banner','全站页头banner','1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_space` VALUES(2,1,'通栏广告','页面中间通栏广告','1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_space` VALUES(3,1,'视频广告上','','1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_space` VALUES(4,1,'视频广告下','','1');
JEECMS_BACKUP_ INSERT INTO `jc_advertising_space` VALUES(5,1,'留言板本周热点广告','','1');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_channel;
JEECMS_BACKUP_CREATE TABLE `jc_channel` (
  `channel_id` int(11) NOT NULL auto_increment,
  `model_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `site_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `parent_id` int(11) default NULL COMMENT '���������������������������������������������������������������������������������ID',
  `channel_path` varchar(30) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `lft` int(11) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������',
  `rgt` int(11) NOT NULL default '2' COMMENT '���������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `has_content` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_display` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`channel_id`),
  KEY `fk_jc_channel_model` (`model_id`),
  KEY `fk_jc_channel_parent` (`parent_id`),
  KEY `fk_jc_channel_site` (`site_id`),
  CONSTRAINT `fk_jc_channel_model` FOREIGN KEY (`model_id`) REFERENCES `jc_model` (`model_id`),
  CONSTRAINT `fk_jc_channel_parent` FOREIGN KEY (`parent_id`) REFERENCES `jc_channel` (`channel_id`),
  CONSTRAINT `fk_jc_channel_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(1,1,1,null,'news',1,12,1,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(9,4,1,null,'download',13,22,4,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(10,2,1,null,'about',23,24,10,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(13,1,1,1,'shehui',2,3,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(14,1,1,1,'review',4,5,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(15,1,1,1,'photo',6,7,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(37,4,1,9,'system',14,15,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(38,4,1,9,'network',16,17,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(39,4,1,9,'media',18,19,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(40,1,1,1,'jjsd',8,9,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(41,1,1,1,'cjbd',10,11,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(42,5,1,null,'picture',25,32,2,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(43,5,1,42,'wyty',26,27,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(44,5,1,42,'mrzx',28,29,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(45,5,1,42,'whxy',30,31,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(46,6,1,null,'veido',33,34,3,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(57,4,1,9,'syzs',20,21,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(58,1,1,null,'wldc',35,36,7,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(59,8,1,null,'job',37,38,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(62,10,1,null,'szll',39,48,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(64,11,1,null,'zsjy',49,60,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(65,11,1,64,'bkszs',50,51,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(66,11,1,64,'yjszs',52,53,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(67,11,1,64,'lxszs',54,55,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(68,11,1,64,'bksjy',56,57,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(69,11,1,64,'yjsjy',58,59,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(70,12,1,null,'rcpy',61,68,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(71,12,1,70,'bkspy',62,63,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(72,12,1,70,'yjspy',64,65,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(73,12,1,70,'wsxx',66,67,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(75,13,1,null,'xyxw',69,78,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(76,13,1,75,'zxtz',70,71,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(77,13,1,75,'xwtt',72,73,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(78,13,1,75,'bksdt',74,75,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(79,13,1,75,'yjsdt',76,77,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(80,14,1,null,'xzzx',79,90,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(81,14,1,80,'wjxz',80,81,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(82,14,1,80,'jsscdzl',82,83,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(83,14,1,80,'yxbylw',84,85,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(84,14,1,80,'lqbds',86,87,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(85,14,1,80,'mapgis',88,89,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(86,10,1,62,'tpjs',40,41,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(87,10,1,62,'js',42,43,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(88,10,1,62,'fjs',44,45,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(89,10,1,62,'jiangshi',46,47,10,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_channel` VALUES(90,16,1,null,'zygk',91,92,10,1,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_channel_attr;
JEECMS_BACKUP_CREATE TABLE `jc_channel_attr` (
  `channel_id` int(11) NOT NULL,
  `attr_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������',
  `attr_value` varchar(255) default NULL COMMENT '���������������������������',
  KEY `fk_jc_attr_channel` (`channel_id`),
  CONSTRAINT `fk_jc_attr_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_channel_ext;
JEECMS_BACKUP_CREATE TABLE `jc_channel_ext` (
  `channel_id` int(11) NOT NULL,
  `channel_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `final_step` tinyint(4) default '2' COMMENT '������������������������������������������������������������������������������������������������������������',
  `after_check` tinyint(4) default NULL COMMENT '���������������������������������������������������������������������������������(1:������������������������������������������������������������������������������������������������������������������������������������������������������������������;2:���������������������������������������������������������������������������������������������������������������������������������������;3:���������������������������������������������������������������������������������������������������������������������������������������)',
  `is_static_channel` char(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_static_content` char(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_access_by_dir` char(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_list_child` char(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `page_size` int(11) NOT NULL default '20' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `channel_rule` varchar(150) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content_rule` varchar(150) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `link` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `tpl_channel` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `tpl_content` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `title_img` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������',
  `content_img` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������',
  `has_title_img` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `has_content_img` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `title_img_width` int(11) NOT NULL default '139' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `title_img_height` int(11) NOT NULL default '139' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content_img_width` int(11) NOT NULL default '310' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content_img_height` int(11) NOT NULL default '310' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `comment_control` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������(0:������������������������������������������������������;1:������������������������������������������������������;2:������������������������������������������������������)',
  `allow_updown` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������(true:������������������������������������������������������;false:������������������������������������������������������)',
  `is_blank` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `title` varchar(255) default NULL COMMENT 'TITLE',
  `keywords` varchar(255) default NULL COMMENT 'KEYWORDS',
  `description` varchar(255) default NULL COMMENT 'DESCRIPTION',
  PRIMARY KEY  (`channel_id`),
  CONSTRAINT `fk_jc_ext_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(1,'新闻',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'新闻资讯','新闻资讯','新闻资讯');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(9,'下载',null,null,'0','0','1','0',20,null,null,null,null,null,null,null,0,0,139,139,310,310,0,1,0,'下载中心','下载中心','下载中心');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(10,'关于我们',null,null,'0','0','1','0',20,null,null,null,null,null,null,null,0,0,139,139,310,310,0,1,0,'关于我们','关于我们','关于我们');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(13,'社会热点',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目_子栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'社会热点','社会热点','社会热点');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(14,'时事评论',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目_子栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'时事评论','时事评论','时事评论');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(15,'图片新闻',null,null,'0','0','1','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目_子栏目.html','/WEB-INF/t/cms/www/red/content/作品内容.html',null,null,1,0,139,139,310,310,0,1,0,'图片新闻','图片新闻','图片新闻');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(37,'系统软件',null,null,'0','0','1','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载栏目_二级.html',null,null,null,1,1,48,48,139,98,0,1,0,'系统软件','系统软件','系统软件');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(38,'网络游戏',null,null,'0','0','1','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载栏目_二级.html',null,null,null,1,1,48,48,139,98,0,1,0,'网络游戏','网络工具','网络游戏');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(39,'媒体工具',null,null,'0','0','1','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载栏目_二级.html',null,null,null,1,1,48,48,139,98,0,1,0,'媒体工具','媒体工具','媒体工具');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(40,'基金视点',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目_子栏目.html','/WEB-INF/t/cms/www/red/content/新闻内容.html',null,null,0,0,139,139,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(41,'财经报道',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目_子栏目.html','/WEB-INF/t/cms/www/red/content/新闻内容.html',null,null,0,0,139,139,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(42,'图库',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/图库栏目.html','/WEB-INF/t/cms/www/red/content/图库内容.html',null,null,0,0,139,139,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(43,'娱乐图集',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/图库栏目_子栏目.html','/WEB-INF/t/cms/www/red/content/图库内容.html',null,null,1,0,67,50,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(44,'娱乐新闻',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/图库栏目_子栏目.html','/WEB-INF/t/cms/www/red/content/图库内容.html',null,null,0,0,139,139,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(45,'文化校园',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/图库栏目_子栏目.html','/WEB-INF/t/cms/www/red/content/图库内容.html',null,null,0,0,139,139,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(46,'视频',null,null,'0','0','0','0',20,null,null,null,null,null,null,null,0,0,139,139,310,310,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(57,'实用助手',null,null,'0','0','1','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载栏目.html','/WEB-INF/t/cms/www/red/content/下载内容.html',null,null,1,1,48,48,180,120,0,1,0,null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(58,'网络调查',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/新闻栏目_网络调查.html',null,null,null,0,0,139,139,310,310,0,1,0,'网络调查','网络调查','网络调查');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(59,'招聘',null,null,'0','0','0','0',20,null,null,null,null,null,null,null,0,0,139,139,310,310,0,1,0,'招聘','招聘','招聘');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(62,'师资力量',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/师资力量栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'师资力量','师资力量','师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(64,'招生就业',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/招生就业栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'招生就业','招生就业','招生就业');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(65,'本科生招生',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/招生就业栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'本科生招生','本科生招生','本科生招生');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(66,'研究生招生',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/招生就业栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'研究生招生','研究生招生','研究生招生');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(67,'留学生招生',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/招生就业栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'留学生招生','留学生招生','留学生招生');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(68,'本科生就业',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/招生就业栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'本科生就业','本科生就业','本科生就业');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(69,'研究生就业',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/招生就业栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'研究生就业','研究生就业','研究生就业');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(70,'人才培养',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/人才培养栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'人才培养','人才培养','人才培养');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(71,'本科生培养',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/人才培养栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'本科生培养','本科生培养','本科生培养');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(72,'研究生培养',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/人才培养栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'研究生培养','研究生培养','研究生培养');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(73,'网上学习',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/人才培养栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'网上学习','网上学习','网上学习');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(75,'学院新闻',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'学院新闻','学院新闻','学院新闻');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(76,'最新通知',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'最新通知','最新通知','最新通知');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(77,'新闻头条',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'新闻头条','新闻头条','新闻头条');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(78,'本科生动态',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'本科生动态','本科生动态','本科生动态');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(79,'研究生动态',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'研究生动态','研究生动态','研究生动态');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(80,'下载中心',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载中心栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'下载中心','下载中心','下载中心');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(81,'文件下载',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html',null,null,null,0,0,139,139,310,310,0,1,0,'文件下载','文件下载','文件下载');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(82,'教师上传的资料',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html',null,null,null,0,0,139,139,310,310,0,1,0,'教师上传的资料','教师上传的资料','教师上传的资料');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(83,'优秀毕业论文',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html',null,null,null,0,0,139,139,310,310,0,1,0,'优秀毕业论文','优秀毕业论文','优秀毕业论文');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(84,'蓝桥杯大赛',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html',null,null,null,0,0,139,139,310,310,0,1,0,'蓝桥杯大赛','蓝桥杯大赛','蓝桥杯大赛');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(85,'MapGis二次开发大赛',null,null,'0','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html',null,null,null,0,0,139,139,310,310,0,1,0,'MapGis二次开发大赛','MapGis二次开发大赛','MapGis二次开发大赛');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(86,'特聘教授',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/师资力量栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'特聘教授','特聘教授','特聘教授');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(87,'教授',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/师资力量栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'教授','教授','教授');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(88,'副教授',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/师资力量栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'副教授','副教授','副教授');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(89,'讲师',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/师资力量栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'讲师','讲师','讲师');
JEECMS_BACKUP_ INSERT INTO `jc_channel_ext` VALUES(90,'专业概况',null,null,'1','0','0','0',20,null,null,null,'/WEB-INF/t/cms/www/red/channel/专业概况栏目.html',null,null,null,0,0,139,139,310,310,0,1,0,'专业概况','专业概况','专业概况');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_channel_model;
JEECMS_BACKUP_CREATE TABLE `jc_channel_model` (
  `channel_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL COMMENT '������������������������������������������������������id',
  `tpl_content` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`channel_id`,`priority`),
  KEY `fk_jc_model_channel_m` (`model_id`),
  CONSTRAINT `fk_jc_channel_model_c` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`),
  CONSTRAINT `fk_jc_model_channel_m` FOREIGN KEY (`model_id`) REFERENCES `jc_model` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,3,'',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,4,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,5,'/WEB-INF/t/cms/www/red/content/图库内容_延迟.html',3);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,6,'',4);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,7,'',5);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(1,8,'',6);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(13,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(13,5,'/WEB-INF/t/cms/www/red/content/图库内容_延迟.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(13,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(14,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(14,5,'/WEB-INF/t/cms/www/red/content/图库内容_延迟.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(14,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(15,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(15,5,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/图库内容_延迟.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(15,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(40,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(40,5,'/WEB-INF/t/cms/www/red/content/图库内容_延迟.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(40,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(41,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(41,5,'/WEB-INF/t/cms/www/red/content/图库内容_延迟.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(41,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(43,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(43,5,'',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(43,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(44,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(44,5,'',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(44,6,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(45,1,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(45,3,'',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(45,5,'',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(45,6,'',3);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(59,8,'',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(62,10,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/师资力量内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(64,11,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(65,11,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(66,11,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(67,11,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(68,11,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(69,11,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(70,12,'/WEB-INF/t/cms/www/red/content/人才培养内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(71,12,'/WEB-INF/t/cms/www/red/content/人才培养内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(72,12,'/WEB-INF/t/cms/www/red/content/人才培养内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(73,12,'/WEB-INF/t/cms/www/red/content/人才培养内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(75,13,'/WEB-INF/t/cms/www/red/content/学院新闻内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(76,5,'/WEB-INF/t/cms/www/red/content/图库内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(76,6,'/WEB-INF/t/cms/www/red/content/视频内容.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(76,13,'/WEB-INF/t/cms/www/red/content/学院新闻内容.html',2);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(77,13,'/WEB-INF/t/cms/www/red/content/学院新闻内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(78,13,'/WEB-INF/t/cms/www/red/content/学院新闻内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(79,13,'/WEB-INF/t/cms/www/red/content/学院新闻内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(80,14,'/WEB-INF/t/cms/www/red/content/下载中心内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(81,14,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/下载中心内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(82,14,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/下载中心内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(83,14,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/下载中心内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(84,14,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/下载中心内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(85,14,'/WEB-INF/t/cms/www/WEB-INF/t/cms/www/red/content/下载中心内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(86,10,'/WEB-INF/t/cms/www/red/content/师资力量内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(87,10,'/WEB-INF/t/cms/www/red/content/师资力量内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(88,10,'/WEB-INF/t/cms/www/red/content/师资力量内容.html',0);
JEECMS_BACKUP_ INSERT INTO `jc_channel_model` VALUES(89,10,'/WEB-INF/t/cms/www/red/content/师资力量内容.html',0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_channel_txt;
JEECMS_BACKUP_CREATE TABLE `jc_channel_txt` (
  `channel_id` int(11) NOT NULL,
  `txt` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `txt1` longtext COMMENT '������������������������������������������������������������������������������������������������������������1',
  `txt2` longtext COMMENT '������������������������������������������������������������������������������������������������������������2',
  `txt3` longtext COMMENT '������������������������������������������������������������������������������������������������������������3',
  PRIMARY KEY  (`channel_id`),
  CONSTRAINT `fk_jc_txt_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_channel_txt` VALUES(10,'<p><font size=\"2\">&nbsp;&nbsp;&nbsp; JEECMS是JavaEE版网站管理系统（Java Enterprise Edition Content Manage System）的简称。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;Java凭借其强大、稳定、安全、高效等多方面的优势，一直是企业级应用的首选。在国外基于JavaEE技术的CMS已经发展的相当成熟，但授权费昂贵，一般需几十万一套；而国内在这方面一直比较薄弱，至今没有一款基于JavaEE技术的开源免费CMS产品。这次我们本着&quot;大气开源，诚信图强&quot;的原则将我们开发的这套JEECMS系统源码完全公布，希望能为国内JavaEE技术的发展尽自己的一份力量。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;JEECMS使用目前java主流技术架构：hibernate3+spring3+freemarker。AJAX使用jquery和json实现。视图层并没有使用传统的 JSP技术，而是使用更为专业、灵活、高效freemarker。 数据库使用MYSQL，并可支持orcale、DB2、SQLServer等主流数据库。应用服务器使用tomcat，并支持其他weblogic、 websphere等应用服务器。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;JEECMS并不是一个只追求技术之先进，而不考虑用户实际使用的象牙塔CMS。系统的设计宗旨就是从用户的需求出发，提供最便利、合理的使用方式，懂html就能建站，从设计上满足搜索引擎优化，最小性能消耗满足小网站要求、可扩展群集满足大网站需要。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;很多人觉得java、jsp难掌握，技术门槛高。jeecms具有强大的模板机制。所有前台页面均由模板生成，通过在线编辑模板轻松调整页面显示。模板内容不涉及任何java和jsp技术，只需掌握html语法和jeecms标签即可完成动态网页制作。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;强大、灵活的标签。提供两种风格的标签，一种风格的标签封装了大量互联网上常见的显示样式，通过调整参数就可实现文章列表、图文混排、图文滚动、跑马灯、焦点图等效果。这种标签的优势在于页面制作简单、效率高，对js、css、html不够精通和希望快速建站的用户非常适用。并且各种效果的内容不使用js生成，对搜索引擎非常友好。另一种风格的标签只负责读取数据，由用户自己控制显示内容和显示方式，想到什么就能做到什么，对于技术能力高和追求个性化的用户，可谓如鱼得水。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;采用完全生成静态页面技术，加快页面访问速度，提升搜索引擎友好性；采用扁平的、可自定义的路径结构。对于有特别需求者，可自定义页面后缀，如.php,.asp,.aspx等。</font></p>\r\n<p><font size=\"2\">&nbsp;&nbsp;&nbsp;&nbsp;站群设计，对于大型的网站，往往需要通过次级域名建立子站群，各个子站后台管理权限可以分离，程序和附件分离，前台用户实现单点登录，大规模网站轻松建设。</font></p>',null,null,null);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_channel_user;
JEECMS_BACKUP_CREATE TABLE `jc_channel_user` (
  `channel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`channel_id`,`user_id`),
  KEY `fk_jc_channel_user` (`user_id`),
  CONSTRAINT `fk_jc_channel_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_user_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_chnl_group_contri;
JEECMS_BACKUP_CREATE TABLE `jc_chnl_group_contri` (
  `channel_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`channel_id`,`group_id`),
  KEY `fk_jc_channel_group_c` (`group_id`),
  CONSTRAINT `fk_jc_channel_group_c` FOREIGN KEY (`group_id`) REFERENCES `jc_group` (`group_id`),
  CONSTRAINT `fk_jc_group_channel_c` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(62,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(64,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(65,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(66,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(67,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(68,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(69,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(70,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(71,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(72,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(73,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(75,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(76,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(77,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(78,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(79,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(86,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(87,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(88,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(89,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(90,1);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(62,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(64,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(65,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(66,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(67,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(68,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(69,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(70,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(71,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(72,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(73,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(75,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(76,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(77,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(78,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(79,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(86,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(87,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(88,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(89,2);
JEECMS_BACKUP_ INSERT INTO `jc_chnl_group_contri` VALUES(90,2);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_chnl_group_view;
JEECMS_BACKUP_CREATE TABLE `jc_chnl_group_view` (
  `channel_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`channel_id`,`group_id`),
  KEY `fk_jc_channel_group_v` (`group_id`),
  CONSTRAINT `fk_jc_channel_group_v` FOREIGN KEY (`group_id`) REFERENCES `jc_group` (`group_id`),
  CONSTRAINT `fk_jc_group_channel_v` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_comment;
JEECMS_BACKUP_CREATE TABLE `jc_comment` (
  `comment_id` int(11) NOT NULL auto_increment,
  `comment_user_id` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������ID',
  `reply_user_id` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������ID',
  `content_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `site_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `create_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `reply_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `ups` smallint(6) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `downs` smallint(6) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `is_recommend` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_checked` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`comment_id`),
  KEY `fk_jc_comment_content` (`content_id`),
  KEY `fk_jc_comment_reply` (`reply_user_id`),
  KEY `fk_jc_comment_site` (`site_id`),
  KEY `fk_jc_comment_user` (`comment_user_id`),
  CONSTRAINT `fk_jc_comment_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`),
  CONSTRAINT `fk_jc_comment_reply` FOREIGN KEY (`reply_user_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_comment_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_comment_user` FOREIGN KEY (`comment_user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_comment_ext;
JEECMS_BACKUP_CREATE TABLE `jc_comment_ext` (
  `comment_id` int(11) NOT NULL,
  `ip` varchar(50) default NULL COMMENT 'IP������������������������������������������������������',
  `text` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `reply` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  KEY `fk_jc_ext_comment` (`comment_id`),
  CONSTRAINT `fk_jc_ext_comment` FOREIGN KEY (`comment_id`) REFERENCES `jc_comment` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_config;
JEECMS_BACKUP_CREATE TABLE `jc_config` (
  `config_id` int(11) NOT NULL,
  `context_path` varchar(20) default '/JeeCms' COMMENT '������������������������������������������������������������������������������������������������������������',
  `servlet_point` varchar(20) default NULL COMMENT 'Servlet���������������������������������������������������������������������������������',
  `port` int(11) default NULL COMMENT '������������������������������������������������������',
  `db_file_uri` varchar(50) NOT NULL default '/dbfile.svl?n=' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_upload_to_db` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `def_img` varchar(255) NOT NULL default '/JeeCms/r/cms/www/default/no_picture.gif' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `login_url` varchar(255) NOT NULL default '/login.jspx' COMMENT '������������������������������������������������������������������������������������������������������������',
  `process_url` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_on` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_width` int(11) NOT NULL default '120' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_height` int(11) NOT NULL default '120' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_image` varchar(100) default '/r/cms/www/watermark.png' COMMENT '������������������������������������������������������������������������������������������������������������',
  `mark_content` varchar(100) NOT NULL default 'www.jeecms.com' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_size` int(11) NOT NULL default '20' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_color` varchar(10) NOT NULL default '#FF0000' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `mark_alpha` int(11) NOT NULL default '50' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������0-100���������������������������',
  `mark_position` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������(0-5)',
  `mark_offset_x` int(11) NOT NULL default '0' COMMENT 'x���������������������������������������������������������������������������������������������������������������������������������������',
  `mark_offset_y` int(11) NOT NULL default '0' COMMENT 'y���������������������������������������������������������������������������������������������������������������������������������������',
  `count_clear_time` date NOT NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `count_copy_time` datetime NOT NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `download_code` varchar(32) NOT NULL default 'jeecms' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������md5���������������������������������������������������������������������������������',
  `download_time` int(11) NOT NULL default '12' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `email_host` varchar(50) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `email_encoding` varchar(20) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `email_username` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `email_password` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `email_personal` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `email_validate` tinyint(1) default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_config` VALUES(1,'/xg',null,8088,'/dbfile.svl?n=',0,'/r/cms/www/no_picture.gif','/login.jspx',null,1,120,120,'/r/cms/www/watermark.png','www.jeecms.com',20,'#FF0000',50,1,0,0,'2014-10-31','2014-10-31 20:02:57.0','jeecms',12,null,null,null,null,null,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_config_attr;
JEECMS_BACKUP_CREATE TABLE `jc_config_attr` (
  `config_id` int(11) NOT NULL,
  `attr_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������',
  `attr_value` varchar(255) default NULL COMMENT '���������������������������',
  KEY `fk_jc_attr_config` (`config_id`),
  CONSTRAINT `fk_jc_attr_config` FOREIGN KEY (`config_id`) REFERENCES `jc_config` (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_config_attr` VALUES(1,'password_min_len','3');
JEECMS_BACKUP_ INSERT INTO `jc_config_attr` VALUES(1,'username_reserved','');
JEECMS_BACKUP_ INSERT INTO `jc_config_attr` VALUES(1,'register_on','true');
JEECMS_BACKUP_ INSERT INTO `jc_config_attr` VALUES(1,'member_on','true');
JEECMS_BACKUP_ INSERT INTO `jc_config_attr` VALUES(1,'username_min_len','3');
JEECMS_BACKUP_ INSERT INTO `jc_config_attr` VALUES(1,'version','jeecmsv5.0-f');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content;
JEECMS_BACKUP_CREATE TABLE `jc_content` (
  `content_id` int(11) NOT NULL auto_increment,
  `channel_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `user_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `type_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `model_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `site_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `sort_date` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `top_level` tinyint(4) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `has_title_img` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_recommend` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `status` tinyint(4) NOT NULL default '2' COMMENT '������������������������������������������������������(0:������������������������������������������������������;1:���������������������������������������������������������������������������������;2:������������������������������������������������������������������������������������������������������������;3:���������������������������������������������������������������������������������)',
  `views_day` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `comments_day` smallint(6) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `downloads_day` smallint(6) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `ups_day` smallint(6) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  PRIMARY KEY  (`content_id`),
  KEY `fk_jc_content_site` (`site_id`),
  KEY `fk_jc_content_type` (`type_id`),
  KEY `fk_jc_content_user` (`user_id`),
  KEY `fk_jc_contentchannel` (`channel_id`),
  KEY `fk_jc_content_model` (`model_id`),
  CONSTRAINT `fk_jc_contentchannel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`),
  CONSTRAINT `fk_jc_content_model` FOREIGN KEY (`model_id`) REFERENCES `jc_model` (`model_id`),
  CONSTRAINT `fk_jc_content_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_content_type` FOREIGN KEY (`type_id`) REFERENCES `jc_content_type` (`type_id`),
  CONSTRAINT `fk_jc_content_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(467,59,1,1,8,1,'2013-08-15 16:00:53.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(468,59,1,1,8,1,'2013-08-15 16:37:01.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(469,59,1,1,8,1,'2013-08-15 16:39:13.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(471,59,1,1,8,1,'2013-08-15 16:41:11.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(472,59,1,1,8,1,'2013-08-15 16:42:01.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(555,65,1,1,11,1,'2014-03-27 14:04:37.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(556,66,1,1,11,1,'2014-03-27 14:38:28.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(557,67,1,1,11,1,'2014-03-27 14:45:34.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(558,73,1,1,12,1,'2014-03-27 15:06:40.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(559,76,1,1,13,1,'2014-03-27 15:45:24.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(560,81,1,1,14,1,'2014-03-27 17:06:09.0',0,0,0,2,0,0,4,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(561,77,1,2,13,1,'2014-03-28 15:44:28.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(562,77,1,2,13,1,'2014-03-28 15:47:41.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(563,78,1,1,13,1,'2014-03-28 16:56:26.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(564,79,1,1,13,1,'2014-03-28 16:56:46.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(567,86,1,1,10,1,'2014-03-28 20:08:08.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(568,87,1,1,10,1,'2014-03-28 20:12:50.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(569,78,1,1,13,1,'2014-03-30 09:38:34.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(570,78,1,1,13,1,'2014-03-30 09:47:15.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(571,78,1,1,13,1,'2014-03-30 09:47:32.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(572,78,1,1,13,1,'2014-03-30 09:47:49.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(573,78,1,1,13,1,'2014-03-30 09:48:04.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(574,78,1,1,13,1,'2014-03-30 09:48:45.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(575,78,1,1,13,1,'2014-03-30 09:49:07.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(576,78,1,1,13,1,'2014-03-30 09:49:26.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(577,78,1,1,13,1,'2014-03-30 09:49:58.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(578,88,1,1,10,1,'2014-03-30 10:48:25.0',0,0,0,2,0,0,4,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(579,82,1,1,14,1,'2014-03-30 11:28:01.0',0,0,0,2,1,0,2,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(580,77,1,1,13,1,'2014-03-30 11:30:59.0',0,0,0,2,0,0,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(581,86,1,1,10,1,'2014-03-30 22:26:34.0',0,0,0,2,1,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content` VALUES(582,76,1,1,13,1,'2014-10-24 19:42:49.0',0,0,0,2,0,0,0,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_attachment;
JEECMS_BACKUP_CREATE TABLE `jc_content_attachment` (
  `content_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `attachment_path` varchar(255) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `attachment_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `filename` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������',
  `download_count` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  KEY `fk_jc_attachment_content` (`content_id`),
  CONSTRAINT `fk_jc_attachment_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(560,0,'/u/cms/www/201403/2717062885s4.jpg','Hydrangeas.jpg','Hydrangeas.jpg',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(579,0,'/u/cms/www/201403/30112759a3iy.jpg','Chrysanthemum.jpg','Chrysanthemum.jpg',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(580,0,'/u/cms/www/201403/301130453d5u.docx','2013腾讯实习生招聘笔试题目.docx','2013腾讯实习生招聘笔试题目.docx',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(578,0,'/u/cms/www/201403/30160855qq71.docx','2013腾讯实习生招聘笔试题目.docx','2013腾讯实习生招聘笔试题目.docx',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(578,1,'/u/cms/www/201403/30161702egad.pdf','基于ORACLE_EJB的汉字模糊同音查询的实现_杨建刚.pdf','基于ORACLE_EJB的汉字模糊同音查询的实现_杨建刚.pdf',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(578,2,'/u/cms/www/201403/30161703liqx.pdf','基于汉语拼音的模糊查询及其在图书馆管理系统中的应用.pdf','基于汉语拼音的模糊查询及其在图书馆管理系统中的应用.pdf',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(578,3,'/u/cms/www/201403/30161704iz92.caj','基于神经网络的拼音汉字转换.caj','基于神经网络的拼音汉字转换.caj',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(578,4,'/u/cms/www/201403/3016170464l3.pdf','利用句法_语义循环递归网络实现汉语拼音_汉字转换.pdf','利用句法_语义循环递归网络实现汉语拼音_汉字转换.pdf',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_attachment` VALUES(578,5,'/u/cms/www/201403/301617056s48.pdf','中文歧义研究25年_以_中文信息学报_论文为例.pdf','中文歧义研究25年_以_中文信息学报_论文为例.pdf',0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_attr;
JEECMS_BACKUP_CREATE TABLE `jc_content_attr` (
  `content_id` int(11) NOT NULL,
  `attr_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������',
  `attr_value` varchar(255) default NULL COMMENT '���������������������������',
  KEY `fk_jc_attr_content` (`content_id`),
  CONSTRAINT `fk_jc_attr_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'category','java高级工程师');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'nature','全职');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'nums','1-3人');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'hasmanage','不要求');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'workplace','南昌');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'experience','5年以上');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'salary','8000+');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'education','本科');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(467,'deadline','2013-09-15');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'category','java工程师');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'nature','全职');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'nums','1-3人');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'hasmanage','不要求');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'workplace','南昌');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'experience','3年以上');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'salary','6000-8000');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'education','本科');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(468,'deadline','2013-11-15');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'category','项目主管');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'nature','全职');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'nums','1-3人');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'hasmanage','要求');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'workplace','南昌');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'experience','4年以上');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'salary','6000-8000');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'education','本科');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(469,'deadline','2013-11-15');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'category','测试人员');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'nature','全职');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'nums','1-3人');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'hasmanage','不要求');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'workplace','南昌');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'experience','1年以内');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'salary','3000-5000');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'education','专科');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(471,'deadline','');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'category','技术支持');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'nature','全职');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'nums','1-3人');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'hasmanage','不要求');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'workplace','南昌');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'experience','1年以内');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'salary','2000-3000');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'education','专科');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(472,'deadline','2013-09-15');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(560,'softType','文档');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'Email','s_j1123@126.com');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'kyjhj','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'xm','韩顺平');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'grjs','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'xb','男');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'yjfx','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'lxfs','18064097981');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(567,'zjkc','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'Email','s_j1123@126.com');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'kyjhj','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'xm','方芳');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'grjs','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'xb','女');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'yjfx','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'lxfs','18064097981');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(568,'zjkc','java');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'Email','s_j1123@126.com');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'kyjhj','h');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'xm','柳恒健');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'grjs','html5');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'xb','男');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'yjfx','html5');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'lxfs','sj1123');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(578,'zjkc','html5tml');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(579,'softType','');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'Email','sb');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'kyjhj','sb');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'xm','晨练');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'grjs','sb');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'xb','女');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'yjfx','sb');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'lxfs','sb');
JEECMS_BACKUP_ INSERT INTO `jc_content_attr` VALUES(581,'zjkc','sb');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_channel;
JEECMS_BACKUP_CREATE TABLE `jc_content_channel` (
  `channel_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY  (`channel_id`,`content_id`),
  KEY `fk_jc_channel_content` (`content_id`),
  CONSTRAINT `fk_jc_channel_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`),
  CONSTRAINT `fk_jc_content_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(59,467);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(59,468);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(59,469);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(59,471);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(59,472);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(65,555);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(66,556);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(67,557);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(73,558);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(76,559);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(81,560);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(77,561);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(77,562);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,563);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(79,564);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(86,567);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(87,568);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,569);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,570);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,571);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,572);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,573);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,574);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,575);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,576);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(78,577);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(88,578);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(82,579);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(77,580);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(86,581);
JEECMS_BACKUP_ INSERT INTO `jc_content_channel` VALUES(76,582);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_check;
JEECMS_BACKUP_CREATE TABLE `jc_content_check` (
  `content_id` int(11) NOT NULL,
  `check_step` tinyint(4) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `check_opinion` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_rejected` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `reviewer` int(11) default NULL COMMENT '���������������������������������������������������������������������������������',
  `check_date` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`content_id`),
  KEY `fk_jc_content_check_user` (`reviewer`),
  CONSTRAINT `fk_jc_check_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`),
  CONSTRAINT `fk_jc_content_check_user` FOREIGN KEY (`reviewer`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(467,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(468,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(469,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(471,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(472,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(555,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(556,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(557,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(558,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(559,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(560,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(561,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(562,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(563,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(564,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(567,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(568,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(569,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(570,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(571,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(572,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(573,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(574,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(575,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(576,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(577,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(578,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(579,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(580,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(581,2,null,0,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_check` VALUES(582,2,null,0,null,null);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_count;
JEECMS_BACKUP_CREATE TABLE `jc_content_count` (
  `content_id` int(11) NOT NULL,
  `views` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `views_month` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `views_week` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `views_day` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `comments` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `comments_month` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `comments_week` smallint(6) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `comments_day` smallint(6) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `downloads` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `downloads_month` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `downloads_week` smallint(6) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `downloads_day` smallint(6) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `ups` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `ups_month` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `ups_week` smallint(6) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `ups_day` smallint(6) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `downs` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  PRIMARY KEY  (`content_id`),
  CONSTRAINT `fk_jc_count_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(467,52,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(468,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(469,14,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(471,11,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(472,138,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(555,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(556,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(557,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(558,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(559,5,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(560,10,3,0,0,0,0,0,0,4,4,1,4,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(561,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(562,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(563,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(564,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(567,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(568,19,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(569,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(570,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(571,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(572,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(573,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(574,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(575,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(576,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(577,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(578,10,2,2,2,0,0,0,0,5,5,1,5,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(579,3,2,1,1,0,0,0,0,2,2,1,2,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(580,3,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(581,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_count` VALUES(582,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_ext;
JEECMS_BACKUP_CREATE TABLE `jc_content_ext` (
  `content_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL COMMENT '������������������������������������������������������',
  `short_title` varchar(150) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `author` varchar(100) default NULL COMMENT '������������������������������������������������������',
  `origin` varchar(100) default NULL COMMENT '������������������������������������������������������',
  `origin_url` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `release_date` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `media_path` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `media_type` varchar(20) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `title_color` varchar(10) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_bold` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `title_img` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `content_img` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `type_img` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `link` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `tpl_content` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `need_regenerate` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`content_id`),
  CONSTRAINT `fk_jc_ext_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(467,'JAVA架构师',null,null,null,null,null,'2013-08-15 16:00:53.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(468,'中级java工程师',null,null,null,null,null,'2013-08-15 16:37:01.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(469,'java项目主管',null,null,null,null,null,'2013-08-15 16:39:13.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(471,'测试工程师',null,null,null,null,null,'2013-08-15 16:41:11.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(472,'技术支持',null,null,null,null,null,'2013-08-15 16:42:01.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(555,'2015年信息工程学院本科生招生计划','招生计划','孙佳',null,null,'京华时报讯 由人民出版社出版的《朱镕基上海讲话实录》于8月12日向全国发行。昨天，人民出版社常务副社长任超做客中新网时介绍...','2014-03-27 14:04:37.0','/u/cms/www/201403/27140501l0vl.jpg','FLASH','#FF0000',1,null,null,null,null,'/WEB-INF/t/cms/www/red/content/招生就业内容.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(556,'研究生招生','研究生招生','xdc',null,null,'本报深度记者 朱洪蕾\r\n“短时间内杀了七条命，那么多警察，竟然抓不到我，老天助我也，看来我还要继续作案杀人!”湖南武冈少年刘洋(化名)安然地坐在网吧里的电脑前敲出这句话。','2014-03-27 14:38:28.0','/u/cms/www/201403/27143803kmte.jpg','FLASH','#FF0000',1,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(557,'留学生招生',null,'frank',null,null,'这一切让人感到无法理解。在后来的庭审中，休庭后，法庭特意邀请心理咨询师对二人分别进行心理评估。','2014-03-27 14:45:34.0',null,'FLASH',null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(558,'中国地质大学课件资源网  ',null,null,null,null,null,'2014-03-27 15:06:40.0',null,null,null,0,null,null,null,'http://course.cug.edu.cn/','/WEB-INF/t/cms/www/red/content/人才培养内容.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(559,'最新通知',null,null,null,null,'海外网3月27日电（记者 李宁） 记者获悉，27日下午在吉隆坡世贸中心（PWTC）的马方例行新闻发布会取消。昨天（26日）马来西亚代交通部长称，今天（27日）马航将单独举行发布会，但也不明原因取消了。','2014-03-27 15:45:24.0','/u/cms/www/201403/27154341qsro.jpg','FLV',null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(560,'文件你懂的',null,'frank',null,null,'有用的资料','2014-03-27 17:06:09.0',null,null,'#FF0000',0,null,null,null,null,'/WEB-INF/t/cms/www/red/content/下载中心内容.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(561,'新闻头条',null,null,null,null,null,'2014-03-28 15:44:28.0',null,null,null,0,null,null,'/u/cms/www/201403/28154404u6f0.jpg',null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(562,'头条2',null,null,null,null,null,'2014-03-28 15:47:41.0',null,null,null,0,null,null,'/u/cms/www/201403/28154730e7xo.jpg',null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(563,'本科生动态',null,null,null,null,null,'2014-03-28 16:56:26.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(564,'研究生动态',null,null,null,null,null,'2014-03-28 16:56:46.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(567,'特聘教授',null,null,null,null,null,'2014-03-28 20:08:08.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(568,'教授',null,null,null,null,null,'2014-03-28 20:12:50.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(569,'本科生动态本科生动态本科生动态本科生动态本科生动态本科生动态',null,null,null,null,null,'2014-03-30 09:38:34.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(570,'动态1',null,null,null,null,null,'2014-03-30 09:47:15.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(571,'动态2',null,null,null,null,null,'2014-03-30 09:47:32.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(572,'动态3',null,null,null,null,null,'2014-03-30 09:47:49.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(573,'动态42222','动态4',null,null,null,null,'2014-03-30 09:48:04.0',null,null,'#FF0000',1,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(574,'动态5',null,null,null,null,null,'2014-03-30 09:48:45.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(575,'动态6',null,null,null,null,null,'2014-03-30 09:49:07.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(576,'动态7',null,null,null,null,null,'2014-03-30 09:49:26.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(577,'动态7',null,null,null,null,null,'2014-03-30 09:49:58.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(578,'柳恒健',null,null,null,null,null,'2014-03-30 10:48:25.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(579,'教师上传的资历料',null,null,null,null,null,'2014-03-30 11:28:01.0',null,null,null,0,null,null,null,null,'/WEB-INF/t/cms/www/red/content/下载中心内容.html',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(580,'新闻头条',null,null,null,null,null,'2014-03-30 11:30:59.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(581,'cl',null,null,null,null,null,'2014-03-30 22:26:34.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_ INSERT INTO `jc_content_ext` VALUES(582,'2015年毕业生信息采集',null,null,null,null,null,'2014-10-24 19:42:49.0',null,null,null,0,null,null,null,null,null,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_group_view;
JEECMS_BACKUP_CREATE TABLE `jc_content_group_view` (
  `content_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`content_id`,`group_id`),
  KEY `fk_jc_content_group_v` (`group_id`),
  CONSTRAINT `fk_jc_content_group_v` FOREIGN KEY (`group_id`) REFERENCES `jc_group` (`group_id`),
  CONSTRAINT `fk_jc_group_content_v` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_picture;
JEECMS_BACKUP_CREATE TABLE `jc_content_picture` (
  `content_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `img_path` varchar(100) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`content_id`,`priority`),
  CONSTRAINT `fk_jc_picture_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_tag;
JEECMS_BACKUP_CREATE TABLE `jc_content_tag` (
  `tag_id` int(11) NOT NULL auto_increment,
  `tag_name` varchar(50) NOT NULL COMMENT 'tag������������������������������������������������������',
  `ref_counter` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`tag_id`),
  UNIQUE KEY `ak_tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS������������������������������������������������������TAG';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(1,'2011',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(2,'中国',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(9,'机构',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(16,'基金',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(52,'调控',0);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(55,'测试',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(64,'java',3);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(65,'架构师',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(66,'中级',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(67,'工程师',2);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(68,'项目',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(69,'主管',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(72,'技术支持',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(467,'计划',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(478,'本科生',8);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(479,'招生',3);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(480,'2015年',2);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(481,'信息',2);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(482,'工程学院',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(483,'研究生',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(484,'留学生',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(485,'中国地质',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(486,'大学',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(487,'课件',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(488,'资源网',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(489,'最新',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(490,'通知',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(491,'新闻',2);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(492,'头条',3);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(493,'2',2);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(494,'动态',9);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(499,'特聘',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(500,'教授',2);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(502,'柳',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(503,'恒',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(504,'健',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(505,'42222',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(506,'cl',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(507,'毕业生',1);
JEECMS_BACKUP_ INSERT INTO `jc_content_tag` VALUES(508,'采集',1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_topic;
JEECMS_BACKUP_CREATE TABLE `jc_content_topic` (
  `content_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY  (`content_id`,`topic_id`),
  KEY `fk_jc_content_topic` (`topic_id`),
  CONSTRAINT `fk_jc_content_topic` FOREIGN KEY (`topic_id`) REFERENCES `jc_topic` (`topic_id`),
  CONSTRAINT `fk_jc_topic_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_txt;
JEECMS_BACKUP_CREATE TABLE `jc_content_txt` (
  `content_id` int(11) NOT NULL,
  `txt` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `txt1` longtext COMMENT '������������������������������������������������������������������������������������������������������������1',
  `txt2` longtext COMMENT '������������������������������������������������������������������������������������������������������������2',
  `txt3` longtext COMMENT '������������������������������������������������������������������������������������������������������������3',
  PRIMARY KEY  (`content_id`),
  CONSTRAINT `fk_jc_txt_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(467,'<p>1.五年以上J2EE开发的相关工作经验。 2.精通Java语言及各种主流框架如Hibernate,Spring,Structs等。 3.精通BS软件开发的相关技术，如HTML，XML，JavaScript等。 4.有独立设计软件的能力，能独立思考并解决问题。 5.思维敏捷，计算机理论基础知识扎实。 6.身体健康，能适应工作压力。 7.全日制本科以上学历。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(468,'<p>岗位职责：</p>\r\n<p>1、 参与系统的需求调研和需求分析，撰写相关技术文档;</p>\r\n<p>2、 搭建系统开发环境，完成系统框架和核心代码的实现;</p>\r\n<p>3、 项目概要设计、详细设计、开发计划等的编制并实施;</p>\r\n<p>岗位要求：</p>\r\n<p>1、 计算机软件及相关专业; 3年以上实际JAVA项目开发实施工作经验;</p>\r\n<p>2、 具有丰富J2EE架构设计经验;精通java编程、设计模式和组件技术，熟悉关系型数据库，精通通讯协议，和面向对象思想;</p>\r\n<p>3、 熟悉软件技术文档的编写;具备良好的文档编制习惯和代码书写规范;</p>\r\n<p>4、 熟悉各种Java应用服务器的使用;熟悉LINUX，UNIX操作系统;</p>\r\n<p>5、 思路清晰，善于思考，能独立分析和解决问题;</p>\r\n<p>6、责任心强，具备良好的团队合作精神和承受压力的能力。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(469,'<p><strong>岗位职责：</strong></p>\r\n<p>1.负责公司B/S产品的整合、设计和开发及维护工作。</p>\r\n<p>2.主导项目需求分析、设计、开发及实施工作。</p>\r\n<p>3.团队管理及培训，用户沟通协调，质量和进度的控制。</p>\r\n<p>4.负责软件开发过程中各种技术规范和标准流程的改进。</p>\r\n<p>5.参与产品的的项目规划工作，制定具体的项目实施方案。</p>\r\n<p>6.优化项目并完成产品化整合。</p>\r\n<p><strong>职位要求：</strong></p>\r\n<p>1.精通Servlet、 EJB、WebService等J2EE规范，有领导多个B/S项目开发的经验;</p>\r\n<p>2.熟练掌控Seam、Hibernate、Spring、Struts2等常见框架及工具，具有3年以上实际应用经验;</p>\r\n<p>3.熟悉JavaScript、Json、Ajax、XML、JQuery各种模板引擎等相关技术优先;</p>\r\n<p>4.熟悉Mysql、Oracle等数据库应用和管理，掌握数据库设计和视图、函数、存储过程等编写，有Linux管理经验优先;</p>\r\n<p>5.较好的需求分析能力和文档编写能力，有招投标文档编写经验者优先;</p>\r\n<p>6.良好口头表达能力和业务学习能力，工作积极主动且具有良好的团队合作精神。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(471,'<p>1、熟悉一种以上编程语言，如：C/C++;</p>\r\n<p>2、有一段时间的软件测试工作经验;</p>\r\n<p>3、熟悉测试流程，规范;</p>\r\n<p>4、能够根据项目的需求，良好的书写测试用例;</p>\r\n<p>5、熟悉一种以上测试工具;</p>\r\n<p>6、热爱测试工作，、细心、有耐心，学习能力强，有团队合作精神。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(472,'<p>岗位</p>\r\n<p>1、负责公司产品安装、调试、维修、演示;</p>\r\n<p>2、协助解决用户在产品使用过程中遇到的问题，组织公司技术人员提供支持;</p>\r\n<p>3、撰写产品文档及数据分析报告;</p>\r\n<p>4、根据用户需求、结合产品功能提供合适的解决方法。</p>\r\n<p>任职资格</p>\r\n<p>1、电子及通信工程相关专业，大专以上学历;</p>\r\n<p>2、两年以上相关工作经验;</p>\r\n<p>3、逻辑分析能力强，条理性强，有一定的讲解能力;</p>\r\n<p>4、熟悉电烙铁、示波器、万用表等设备;</p>\r\n<p>5、善于沟通,表达力强，责任心强，灵活自信,应变能力强;</p>\r\n<p>6、具备良好的职业道德和职业习惯，能适应出差。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(555,'<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">首印110万册全发出</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\">任超透露，《朱镕基上海讲话实录》首印110万册全部批发出去。截至前天，实际销售已达65万册。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\">任超介绍，朱镕基退休后共出版三本书，均由人民出版社出版。其中，《朱镕基答记者问》2009年出版，首印25万册，发行当日再次加印，半个月后，印数达百万。而《朱镕基讲话实录》2011年出版，首印50万套，一个多月内售罄。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\">任超说，由于前两本书出版社对销量的估计不足，首印偏少，造成了一段时间市场脱销，此次为充分地满足读者的需求，所以做出了首印110万册的决定。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">朱镕基要求尊重原貌</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">任超介绍，该书出版过程中，朱镕基非常注意听取大家意见，1000余本样书多送给中央领导同志、有关专家及当时和他在上海共事过的同事征求意见。而朱镕基同志本人则要求实事求是，如实呈现当时的一些情况。</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">任超透露，朱镕基同志对自己所写的文章都是认真地思考，每篇文章他都要过。他要求尊重原貌，如实呈现当时的一些情况，是怎么回事就怎么回事，实事求是。任超说，朱镕基曾说过，&ldquo;如果人家拿着我的录音和我书里面的内容对不上，这不好&rdquo;。</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px; text-indent: 2em;\">任超介绍，他跟朱镕基身边的一个工作人员了解到一个小故事。这本书里面，最后一篇文章是关于街道工作的，有专家提出来，这篇文章可不可以不说了。但是朱镕基认为街道工作是社会管理工作的一个非常重要的基础性工作，这篇要发表，就把这一篇报道出来了。</p>\r\n<p>[NextPage][/NextPage]</p>\r\n<div class=\"newsCon\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; width: 649.890625px; line-height: 24px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica;\">\r\n\t<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; text-indent: 2em;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">领导人出书将增多</strong></p>\r\n\t<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; text-indent: 2em;\">近年来，我国多位退休领导人都不止一次出版了自己的专著。对此，任超表示，这是一个好事，表明更加开放，更加透明。同时，党和国家领导人处理问题的方法带有普遍性意义，读者可以从中悟到一些东西。&ldquo;过去我们对党中央的一些决策部署和过程不一定很了解，现在通过一些著述，我们可以比较清晰地看到一些决策的脉络。&rdquo;</p>\r\n\t<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; text-indent: 2em;\">任超认为，今后领导人出书可能会越来越多，大家以后也会习以为常。</p>\r\n\t<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; text-indent: 2em;\">京华时报记者张然 综合中新社</p>\r\n\t<div>&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(556,'<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">而在游戏开始前的半年，两个少年都还坐在学校里，身上并没有显露丝毫邪恶的印迹。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">刘洋和付云强曾经是同班同学，同住一个宿舍的上下铺让他俩有了更多的共同话题，相似的家庭背景让两人有了共同的语言。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">刘洋出生于1994年，付云强比他还小一岁。父母常年在外打工，刘洋从小就跟着外公外婆长大，只在暑假的时候，才会去爷爷奶奶家住一段时间，与父母相处的时间就更少了。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">付云强的家里还要困难，母亲患有眼疾，经常看不清东西，村里人背后就叫她&ldquo;瞎子&rdquo;，没法出去打工，挣钱的任务就交给了付云强的父亲和姐姐。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">即便如此，两个家庭都希望孩子能考上大学，用知识来改变生活。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">刘洋的成绩曾经在班里名列前茅，还是老师眼里的乖孩子和小才子，作文写得好，画也画得好。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">眼看着初中要读完了，一切却都变了。他的一个叔叔和疼爱他的奶奶接连去世，刘洋深受打击，他常想&ldquo;为什么好人不长寿&rdquo;，他的心思也跟着变了，上大学不再是追求的目标。初三下学期，刘洋开始迷恋于上网，经常课也不上就泡在网吧里。幸亏之前的学习底子还比较牢固，顺利帮助他升入高中。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">在高中，刘洋遇到了付云强。付云强有些孤僻，不怎么喜欢跟别人交流，老是心事重重，即便老师问他，他也不愿意多说。</p>\r\n<p>[NextPage][/NextPage]</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">经常上网的刘洋高中成绩一路下滑，甚至受到了老师的劝退。父母觉得是自己没照顾好他，就把他接到身边，希望他能好好读书，但刘洋依然我行我素。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">付云强的成绩一直垫底，眼见考大学无望，家里又不富裕，跟父亲商量后，2012年过完春节后不久，他就辍学到外地打工去了。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">2012年8月的一天，两个少年又在网上相遇。彼时的刘洋正拿着从家里偷来的几百元钱，泡在县城的网吧里，而不是按学校的要求乖乖呆在学校里补课。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">半年未见，付云强聊起了自己的打工生活。他认为，外面的世界很精彩，但是通过打工赚大钱实在太难了。两人在网上一拍即合，决定结伴儿出走，跟电影里演的黑社会一样，通过不正当的手段弄钱花。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">不几天，付云强怀揣打工挣来的几百块钱回到了武冈，一来就先给拮据的刘洋买了一堆吃的，让他改善生活。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">两人坐下来商量，打工赚钱不好赚，还经常有人拖欠工资，想要赚钱的话，抢劫才是最快捷的方式。考虑到两人都不高，而且身形偏瘦，在城里抢劫肯定不易下手，就把视线转向了农村。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">说干就干，付云强买来两把刀，8月21日，两人冒冒失失地到武冈市湾头镇的张某家里打劫。张某夫妇声称没钱，只给了两人90多块钱。一怒之下，他们对着夫妇俩刺了数刀，夫妇俩当场殒命。其实付云强一开始还不想杀人，但怕刘洋说他不够义气，就合力制造了这场血案。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(557,'<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">这一切让人感到无法理解。在后来的庭审中，休庭后，法庭特意邀请心理咨询师对二人分别进行心理评估。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">在与心理咨询师沟通后，两人才开始意识到自己的错误。社会调查员通过跟两人接触，认为两人都是留守儿童，父母关爱不够，最后走错路，很大程度上应归结于整个社会的大环境。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">在被看押期间，刘洋对自己之前的行为写了一些感受，在感受中，他提到，&ldquo;过去不会思考别人，只会想到自己&rdquo;，&ldquo;自己的冲动做法，害了这么多家庭&rdquo;，&ldquo;不管如何，都无法弥补了&rdquo;。</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\">确实无法弥补，在一审被判死刑后，刘洋会很快走到生命的尽头;付云强被判无期，以后的日子可能都得在监狱里度过了。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(559,'<p><strong style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">海外网3月27日电</strong><span style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">（记者 李宁）&nbsp;记者获悉，27日下午在吉隆坡世贸中心（PWTC）的马方例行新闻发布会取消。昨天（26日）马来西亚代交通部长称，今天（27日）马航将单独举行发布会，但也不明原因取消了。</span><strong style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">海外网3月27日电</strong><span style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">（记者 李宁）&nbsp;记者获悉，27日下午在吉隆坡世贸中心（PWTC）的马方例行新闻发布会取消。昨天（26日）马来西亚代交通部长称，今天（27日）马航将单独举行发布会，但也不明原因取消了。</span><strong style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">海外网3月27日电</strong><span style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">（记者 李宁）&nbsp;记者获悉，27日下午在吉隆坡世贸中心（PWTC）的马方例行新闻发布会取消。昨天（26日）马来西亚代交通部长称，今天（27日）马航将单独举行发布会，但也不明原因取消了。</span><strong style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">海外网3月27日电</strong><span style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; line-height: 28px; text-indent: 28px;\">（记者 李宁）&nbsp;记者获悉，27日下午在吉隆坡世贸中心（PWTC）的马方例行新闻发布会取消。昨天（26日）马来西亚代交通部长称，今天（27日）马航将单独举行发布会，但也不明原因取消了。</span></p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(560,'<table align=\"center\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\" style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; border-collapse: collapse; border-spacing: 0px; color: rgb(18, 46, 103); font-family: Arial, Tahoma, \'hiragino sans gb\', Helvetica; line-height: 24px;\" width=\"99%\">\r\n\t<tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">\r\n\t\t<tr style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">\r\n\t\t\t<td bgcolor=\"#F3F3F3\" class=\"jobDescription\" style=\"margin: auto; padding: 0px; border: 0px; outline: 0px; background-color: rgb(248, 248, 248); line-height: 30px; font-weight: bold; text-indent: 10px;\">\r\n\t\t\t\t&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent;\">\r\n\t\t\t<td align=\"left\" class=\"jobAbout\" style=\"margin: auto; padding: 5px 0px; border: 0px; outline: 0px; background-color: transparent; width: 643px; color: rgb(113, 113, 113);\">\r\n\t\t\t\t<ul class=\"blocklist\" style=\"margin: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; background-color: transparent; list-style: none none;\">\r\n\t\t\t\t\t<li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; list-style: none;\">\r\n\t\t\t\t\t\t1、推荐使用迅雷等下载工具下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。</li>\r\n\t\t\t\t\t<li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; list-style: none;\">\r\n\t\t\t\t\t\t2、如果该软件不能下载，请留言报告错误,谢谢合作。</li>\r\n\t\t\t\t\t<li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; list-style: none;\">\r\n\t\t\t\t\t\t3、下载本站资源时，如果遇到服务器忙暂不能下载的情况，请过一段时间重试。</li>\r\n\t\t\t\t\t<li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; list-style: none;\">\r\n\t\t\t\t\t\t4、如果您有任何意见或建议，欢迎给我们留言，我们将提供更多 、更好的资源。</li>\r\n\t\t\t\t\t<li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; list-style: none;\">\r\n\t\t\t\t\t\t5、本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版</li>\r\n\t\t\t\t</ul>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(567,'<p><img alt=\"\" src=\"/u/cms/www/201403/28200734m7am.jpg\" style=\"width: 280px; height: 210px;\" /></p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(568,'<p><img alt=\"\" src=\"/u/cms/www/201403/28201216s6lg.jpg\" style=\"width: 307px; height: 230px;\" /></p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(573,'<p style=\"border: 0px; margin: 0px 0px 7px; padding: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 15px; letter-spacing: 0.44999998807907104px; line-height: 26px; text-indent: 30px;\">2014年3月6日，信息工程学院在东区信工学术报告厅召开2014年新学期工作布置会，部署2014年学院重点工作。学院全体院领导及老师参加了会议。</p>\r\n<p style=\"border: 0px; margin: 0px 0px 7px; padding: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 15px; letter-spacing: 0.44999998807907104px; line-height: 26px; text-indent: 30px;\">会议由院党委副书记许德华主持。</p>\r\n<p style=\"border: 0px; margin: 0px 0px 7px; padding: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 15px; letter-spacing: 0.44999998807907104px; line-height: 26px; text-indent: 30px;\">首先是院长谢忠老师发言，他指出，今年是贯彻落实党的十八届三中全会精神、全面深化改革的第一年，是全面完成&ldquo;十二五&rdquo;规划目标任务的关键之年。今年工作的总体要求是深入学习贯彻党的十八大和十八届二中、三中全会精神，深入学习贯彻习近平总书记系列重要讲话精神，进一步明确学院发展的方向和思路，统筹兼顾、突出重点，攻坚克难，狠抓落实。</p>\r\n<p style=\"border: 0px; margin: 0px 0px 7px; padding: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 15px; letter-spacing: 0.44999998807907104px; line-height: 26px; text-indent: 30px;\">谢忠院长强调，学院各部门各专业要做好2014年的各项工作，在教学与人才培养方面双管齐下，切实提高课堂教学质量。以专业建设为核心，继续加强本科教学质量。加强国家级工程实践教育中心、学院实验教学中心等教学平台建设，提高学生实践创新能力。突出抓好十八大精神和十八届三中全会精神的学习贯彻。加强研究生招生宣传，稳步提高研究生生源质量，开展学院&ldquo;十二五&rdquo;规划完成情况自查，对未落实或推进不好的项目进行分析，妥善处理长远规划和当前工作的关系。</p>\r\n<p style=\"border: 0px; margin: 0px 0px 7px; padding: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 15px; letter-spacing: 0.44999998807907104px; line-height: 26px; text-indent: 30px;\">随后，副院长<a href=\"http://www.baidu.com\">刘修国</a>、胡友建、周顺平分别发言，就各自分管的主要工作，从2014年新学期的本科生教学、科研工作、学科建设和研究生工作等方面进行工作布置和说明；院党委副书记许德华传达了2014年教育系统党风廉政建设工作暨全国治理教育乱收费部际联席会视频会议精神，并强调了党员应加强与学生、老师之间的联系，公布了院领导联系老师谈话名单。</p>\r\n<p style=\"border: 0px; margin: 0px 0px 7px; padding: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 15px; letter-spacing: 0.44999998807907104px; line-height: 26px; text-indent: 30px;\">最后，院工会主席吴北平老师针对2014年学院的文体活动和相关工会工作进行了布置和说明。</p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(578,'<p><img alt=\"\" src=\"/u/cms/www/201403/30104900e5ok.jpg\" style=\"width: 280px; height: 210px;\" /></p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(581,'<p><img alt=\"\" src=\"/u/cms/www/201403/3022261675s4.jpg\" style=\"width: 307px; height: 230px;\" /></p>\r\n',null,null,null);
JEECMS_BACKUP_ INSERT INTO `jc_content_txt` VALUES(582,'<p>请广大2015届毕业生做好毕业准备工作！</p>\r\n<p><a href=\"http://xgxy.cug.edu.cn/wp-content/uploads/2014/06/111-600x357.jpg\"><img alt=\"\" src=\"http://xgxy.cug.edu.cn/wp-content/uploads/2014/06/111-600x357.jpg\" style=\"width: 600px; height: 357px;\" /></a></p>\r\n',null,null,null);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_content_type;
JEECMS_BACKUP_CREATE TABLE `jc_content_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL COMMENT '������������������������������������������������������',
  `img_width` int(11) default NULL COMMENT '���������������������������������������������������������������������������������',
  `img_height` int(11) default NULL COMMENT '���������������������������������������������������������������������������������',
  `has_image` tinyint(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_disabled` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_content_type` VALUES(1,'普通',100,100,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_type` VALUES(2,'图文',143,98,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_type` VALUES(3,'焦点',280,200,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_content_type` VALUES(4,'头条',0,0,0,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_contenttag;
JEECMS_BACKUP_CREATE TABLE `jc_contenttag` (
  `content_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  KEY `fk_jc_content_tag` (`tag_id`),
  KEY `fk_jc_tag_content` (`content_id`),
  CONSTRAINT `fk_jc_content_tag` FOREIGN KEY (`tag_id`) REFERENCES `jc_content_tag` (`tag_id`),
  CONSTRAINT `fk_jc_tag_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(467,64,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(467,65,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(468,66,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(468,64,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(468,67,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(469,64,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(469,68,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(469,69,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(471,55,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(471,67,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(472,72,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(555,480,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(555,481,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(555,482,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(555,478,3);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(555,479,4);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(555,467,5);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(556,483,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(556,479,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(557,484,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(557,479,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(558,485,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(558,486,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(558,487,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(558,488,3);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(559,489,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(559,490,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(561,491,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(561,492,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(562,492,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(562,493,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(563,478,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(563,494,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(567,499,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(567,500,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(568,500,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,478,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,494,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,478,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,494,3);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,478,4);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,494,5);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,478,6);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,494,7);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,478,8);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,494,9);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,478,10);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(569,494,11);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(571,494,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(571,493,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(573,494,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(573,505,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(578,502,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(578,503,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(578,504,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(580,491,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(580,492,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(581,506,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(582,480,0);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(582,507,1);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(582,481,2);
JEECMS_BACKUP_ INSERT INTO `jc_contenttag` VALUES(582,508,3);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_dictionary;
JEECMS_BACKUP_CREATE TABLE `jc_dictionary` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT 'name',
  `value` varchar(255) NOT NULL COMMENT 'value',
  `type` varchar(255) NOT NULL COMMENT 'type',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(1,'1-20人','1-20人','scale');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(2,'20-50人','20-50人','scale');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(3,'50-10人','50-10人','scale');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(4,'100人以上','100人以上','scale');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(5,'私企','私企','nature');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(6,'股份制','股份制','nature');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(7,'国企','国企','nature');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(8,'互联网','互联网','industry');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(9,'房地产','房地产','industry');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(10,'加工制造','加工制造','industry');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(11,'服务行业','服务行业','industry');
JEECMS_BACKUP_ INSERT INTO `jc_dictionary` VALUES(12,'政府机构','政府机构','nature');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_file;
JEECMS_BACKUP_CREATE TABLE `jc_file` (
  `file_path` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `file_name` varchar(255) default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `file_isvalid` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `content_id` int(11) default NULL COMMENT '������������������������������������������������������id',
  PRIMARY KEY  (`file_path`),
  KEY `fk_jc_file_content` (`content_id`),
  CONSTRAINT `fk_jc_file_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/13104201642h.jpg','mv1.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/13164348ounp.jpg','mv.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/13181233l0sx.jpg','mv.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/13181255db1i.jpg','mv.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14152458fy5b.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14152611izbp.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14152611lngy.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/141530071jwc.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14153007q6u1.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/141543541ogv.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/141543547ho5.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14154515q4ai.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14154625jcco.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/1415573813s2.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14155738vhab.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14160353thjr.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/1416062229ht.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14160723hi9b.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/141608146au0.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14160814zzjp.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14160903ierl.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14161725esyh.txt','linux启动oracle和tomcat.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/jeecmsv5/u/cms/www/201308/14161727h1du.txt','bug.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171410455sqq.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17141056zbjl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17141320s4xy.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17141341je98.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171415447op5.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17141604lrhh.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17144805im1p.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17145028j3bj.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171545290lr9.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17161125k5kt.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171611397af9.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171612286b6w.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17161242nbqp.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171612535rhr.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17161324z8jn.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17165616uvy4.','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17165616uvy4.swf','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17171653nfp8.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/171717039zq7.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17171709jdjw.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/17171716ivqv.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/18155751wi1k.gif','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190837201odl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19090536qbxp.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19090946s78x.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19092939oy7r.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093226mevs.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093508z0je.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093530anjq.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093534pbhx.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093538klmo.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093544rdou.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190935502lvi.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093742dmvl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190938494dpy.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093849begu.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093854n45u.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093857hrzl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093900wjkf.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093911o5g2.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19093953zqpx.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094122mc5z.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094240v28v.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094329a5xa.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094332tbdx.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190943347cma.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094339inmu.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190943477255.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094508jfde.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190945185h1l.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190946273j5i.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094631wo80.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190947003jp4.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190947311x4l.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094831t9hq.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1909485814nz.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190949019o6w.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094903k37i.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094907y45o.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190949132edb.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19094951qk1a.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190949521eei.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095026h3ca.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095103kcpr.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190952289wxr.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095231lcq8.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095231picz.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095234gz2e.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095237hsr4.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095244lvkp.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190953537bvn.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095401xwwr.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/190954435nww.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095533hv75.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095559cx9e.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095711di9x.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095824t0mi.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095858mdri.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19095940zkzo.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100045xs61.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100130dqrl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191002428q2p.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100427q41v.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100730yqkm.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100732rbr3.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100735jhtm.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100738xu07.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19100819q0nh.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101258cu07.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101300vgo6.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191013028ees.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101306te5g.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101310nlax.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101405vhee.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191016542zol.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191016566066.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1910170103if.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101705pqim.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101815my5b.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191018173g5w.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19101820duyo.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1910182468l0.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191019506xu1.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19102057h28j.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1910215201yl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191026320f2y.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19102634814r.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19102637g8wu.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191026405ljl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1910271036lr.gif','',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19102719hx2v.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1910294695ky.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19102949nry1.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191029525wi9.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191029566nps.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103035b3ll.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103318bgac.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191033227v2n.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103325i7eh.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103329ra1y.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103403xlfg.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191035531l49.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103555yzl9.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103559ef8r.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19103603lu7z.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191036587tik.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191047224mmx.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191116447msi.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111647quq9.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191116504sdn.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111654zbf8.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111756gll3.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111932a9xv.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111935140r.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111938y8xu.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19111941j2ox.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112136dax2.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112139m5p5.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112142aniu.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191121451voq.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112223q81f.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191124260dyw.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112428i5di.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112431i6yl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191124347he2.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112511nfma.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112627baql.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112630rnkd.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19112633k9hl.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1911263840lw.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191127127do2.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113108a4tf.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113111l3z3.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113114xqvt.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113119mokz.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113155zjrt.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191133047hli.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113306vsom.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1911330905lu.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191133124ekg.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113349wi0o.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113455w6da.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113458qtv5.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113500lodt.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113504ak3b.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113545y1n3.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1911384005xa.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113842vbep.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191138453a05.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19113849s58m.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191139257lag.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114055fyqx.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191140578xaj.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114100zis1.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114104hajf.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191141333snd.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191143031z9j.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114305b0sj.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114309f164.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114312te0u.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19114342fmb2.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19115528h893.zip','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19134858biqw.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19135339f6l6.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19135949d13f.zip','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191408344rwj.gif','',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19141012lh2q.gif','',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19141139noa7.png','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19141255yrfb.gif','',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19141401rp2d.gif','',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191415078pzs.gif','',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/1914272808rj.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19151533k5ey.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19154302hxkg.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19154430myw1.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191545434coc.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19154549gc3w.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19154650hare.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19155032l0ql.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19155034wvyj.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19155038k2do.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191550415nco.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191553100g34.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19155314sxs8.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/19155317zg9k.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201112/191553207vdb.jpg','',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/09151507n6i1.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/09152518pzoq.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/09152931cgps.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/091552426die.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/0915541140xt.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/09160120meel.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/091602465aop.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/09174523xkvt.jpg','2.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/09174527lkok.jpg','1.jpg',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/24102446b7al.jpg','18152708v6mc.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/24102503z9wj.jpg','23095102fzo0.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201309/26150136kryi.txt','dfd.txt',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/26200922j6es.jpg','Chrysanthemum.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/262010020lrj.jpg','/u/cms/www/201403/262010020lrj.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/26201357mzhq.jpg','Koala.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/26201542sfwe.jpg','Koala.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/26201605phlb.jpg','Koala.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/26201612xqoc.jpg','Koala.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/26202035bchw.jpg','Koala.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/27140501l0vl.jpg','/u/cms/www/201403/27140501l0vl.jpg',1,555);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/27143803kmte.jpg','/u/cms/www/201403/27143803kmte.jpg',1,556);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/27154341qsro.jpg','/u/cms/www/201403/27154341qsro.jpg',1,559);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/27170621p4gq.jpg','Hydrangeas.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/2717062885s4.jpg','Hydrangeas.jpg',1,560);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/28154404u6f0.jpg','Chrysanthemum.jpg',1,561);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/28154730e7xo.jpg','Lighthouse.jpg',1,562);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/28160741g7vn.png','ddzy.png',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/281610268xff.png','ddzy.png',1,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30112751h73v.jpg','Chrysanthemum.jpg',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30112759a3iy.jpg','Chrysanthemum.jpg',1,579);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30113035z9xb.docx','2013腾讯实习生招聘笔试题目.docx',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/301130453d5u.docx','2013腾讯实习生招聘笔试题目.docx',1,580);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30145442we59.docx','2013腾讯实习生招聘笔试题目.docx',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/301608446m8p.docx','2013腾讯实习生招聘笔试题目.docx',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30160855qq71.docx','2013腾讯实习生招聘笔试题目.docx',1,578);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161619cco1.pdf','基于汉语拼音的模糊查询及其在图书馆管理系统中的应用.pdf',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161619ug12.pdf','基于ORACLE_EJB的汉字模糊同音查询的实现_杨建刚.pdf',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/301616206cea.caj','基于神经网络的拼音汉字转换.caj',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161620benq.pdf','中文歧义研究25年_以_中文信息学报_论文为例.pdf',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161620pcmq.pdf','利用句法_语义循环递归网络实现汉语拼音_汉字转换.pdf',0,null);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161702egad.pdf','基于ORACLE_EJB的汉字模糊同音查询的实现_杨建刚.pdf',1,578);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161703liqx.pdf','基于汉语拼音的模糊查询及其在图书馆管理系统中的应用.pdf',1,578);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/3016170464l3.pdf','利用句法_语义循环递归网络实现汉语拼音_汉字转换.pdf',1,578);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/30161704iz92.caj','基于神经网络的拼音汉字转换.caj',1,578);
JEECMS_BACKUP_ INSERT INTO `jc_file` VALUES('/u/cms/www/201403/301617056s48.pdf','中文歧义研究25年_以_中文信息学报_论文为例.pdf',1,578);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_friendlink;
JEECMS_BACKUP_CREATE TABLE `jc_friendlink` (
  `friendlink_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `friendlinkctg_id` int(11) NOT NULL,
  `site_name` varchar(150) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `domain` varchar(255) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `logo` varchar(150) default NULL COMMENT '������������������������������������������������������',
  `email` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `views` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_enabled` char(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`friendlink_id`),
  KEY `fk_jc_ctg_friendlink` (`friendlinkctg_id`),
  KEY `fk_jc_friendlink_site` (`site_id`),
  CONSTRAINT `fk_jc_ctg_friendlink` FOREIGN KEY (`friendlinkctg_id`) REFERENCES `jc_friendlink_ctg` (`friendlinkctg_id`),
  CONSTRAINT `fk_jc_friendlink_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_friendlink` VALUES(1,1,2,'地大主页','http://www.cug.edu.cn/new/','/u/cms/www/201403/28160741g7vn.png','s_j1123@126.com','',2,'1',10);
JEECMS_BACKUP_ INSERT INTO `jc_friendlink` VALUES(2,1,2,'地大教务处','http://jwc.cug.edu.cn/','/u/cms/www/201403/281610268xff.png','','',0,'1',10);
JEECMS_BACKUP_ INSERT INTO `jc_friendlink` VALUES(3,1,1,'信工学院','http://xgxy.cug.edu.cn/',null,'','',3,'1',10);
JEECMS_BACKUP_ INSERT INTO `jc_friendlink` VALUES(4,1,1,'地大官方论坛','http://bbs.cug.edu.cn/',null,'','',0,'1',10);
JEECMS_BACKUP_ INSERT INTO `jc_friendlink` VALUES(5,1,1,'朴实','http://pustone.com/',null,'','',3,'1',10);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_friendlink_ctg;
JEECMS_BACKUP_CREATE TABLE `jc_friendlink_ctg` (
  `friendlinkctg_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `friendlinkctg_name` varchar(50) NOT NULL COMMENT '������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`friendlinkctg_id`),
  KEY `fk_jc_friendlinkctg_site` (`site_id`),
  CONSTRAINT `fk_jc_friendlinkctg_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_friendlink_ctg` VALUES(1,1,'文字链接',1);
JEECMS_BACKUP_ INSERT INTO `jc_friendlink_ctg` VALUES(2,1,'品牌专区（图片链接）',2);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_group;
JEECMS_BACKUP_CREATE TABLE `jc_group` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `need_captcha` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `need_check` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `allow_per_day` int(11) NOT NULL default '4096' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������KB',
  `allow_max_file` int(11) NOT NULL default '1024' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������KB',
  `allow_suffix` varchar(255) default 'jpg,jpeg,gif,png,bmp' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_reg_def` tinyint(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_group` VALUES(1,'普通会员',10,1,1,4096,1024,'jpg,jpeg,gif,png,bmp',1);
JEECMS_BACKUP_ INSERT INTO `jc_group` VALUES(2,'高级组',10,1,1,0,0,'',0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_guestbook;
JEECMS_BACKUP_CREATE TABLE `jc_guestbook` (
  `guestbook_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `guestbookctg_id` int(11) NOT NULL,
  `member_id` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `admin_id` int(11) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `ip` varchar(50) NOT NULL COMMENT '������������������������������������������������������IP',
  `create_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `replay_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_checked` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_recommend` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`guestbook_id`),
  KEY `fk_jc_ctg_guestbook` (`guestbookctg_id`),
  KEY `fk_jc_guestbook_admin` (`admin_id`),
  KEY `fk_jc_guestbook_member` (`member_id`),
  KEY `fk_jc_guestbook_site` (`site_id`),
  CONSTRAINT `fk_jc_ctg_guestbook` FOREIGN KEY (`guestbookctg_id`) REFERENCES `jc_guestbook_ctg` (`guestbookctg_id`),
  CONSTRAINT `fk_jc_guestbook_admin` FOREIGN KEY (`admin_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_guestbook_member` FOREIGN KEY (`member_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_guestbook_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_guestbook` VALUES(1,1,1,1,null,'0:0:0:0:0:0:0:1','2014-03-26 22:58:57.0',null,0,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_guestbook_ctg;
JEECMS_BACKUP_CREATE TABLE `jc_guestbook_ctg` (
  `guestbookctg_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `ctg_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`guestbookctg_id`),
  KEY `fk_jc_guestbookctg_site` (`site_id`),
  CONSTRAINT `fk_jc_guestbookctg_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_guestbook_ctg` VALUES(1,1,'普通',1,'普通留言');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_guestbook_ext;
JEECMS_BACKUP_CREATE TABLE `jc_guestbook_ext` (
  `guestbook_id` int(11) NOT NULL,
  `title` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `content` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `reply` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `email` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `phone` varchar(100) default NULL COMMENT '������������������������������������������������������',
  `qq` varchar(50) default NULL COMMENT 'QQ',
  KEY `fk_jc_ext_guestbook` (`guestbook_id`),
  CONSTRAINT `fk_jc_ext_guestbook` FOREIGN KEY (`guestbook_id`) REFERENCES `jc_guestbook` (`guestbook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_guestbook_ext` VALUES(1,'sfdsfdsfdsfds',null,null,null,null,null);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_job_apply;
JEECMS_BACKUP_CREATE TABLE `jc_job_apply` (
  `job_apply_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '������������������������������������������������������id',
  `content_id` int(11) NOT NULL COMMENT '������������������������������������������������������id',
  `apply_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`job_apply_id`),
  KEY `fk_jc_job_apply_user` (`user_id`),
  KEY `fk_jc_job_apply_content` (`content_id`),
  CONSTRAINT `fk_jc_job_apply_content` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`),
  CONSTRAINT `fk_jc_job_apply_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_job_apply` VALUES(3,1,471,'2013-08-19 10:25:40.0');
JEECMS_BACKUP_ INSERT INTO `jc_job_apply` VALUES(4,1,467,'2013-08-21 10:10:13.0');
JEECMS_BACKUP_ INSERT INTO `jc_job_apply` VALUES(5,1,469,'2013-08-21 19:04:15.0');
JEECMS_BACKUP_ INSERT INTO `jc_job_apply` VALUES(6,1,471,'2013-08-21 19:04:25.0');
JEECMS_BACKUP_ INSERT INTO `jc_job_apply` VALUES(7,1,472,'2013-09-14 13:33:38.0');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_keyword;
JEECMS_BACKUP_CREATE TABLE `jc_keyword` (
  `keyword_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) default NULL COMMENT '������������������������������������������������������ID',
  `keyword_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `url` varchar(255) NOT NULL COMMENT '������������������������������������������������������',
  `is_disabled` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`keyword_id`),
  KEY `fk_jc_keyword_site` (`site_id`),
  CONSTRAINT `fk_jc_keyword_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_keyword` VALUES(1,null,'内容管理系统','<a href=\"http://www.jeecms.com/\" target=\"_blank\">内容管理系统</a>',0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_log;
JEECMS_BACKUP_CREATE TABLE `jc_log` (
  `log_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `site_id` int(11) default NULL,
  `category` int(11) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `log_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `ip` varchar(50) default NULL COMMENT 'IP������������������������������������������������������',
  `url` varchar(255) default NULL COMMENT 'URL������������������������������������������������������',
  `title` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `content` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`log_id`),
  KEY `fk_jc_log_site` (`site_id`),
  KEY `fk_jc_log_user` (`user_id`),
  CONSTRAINT `fk_jc_log_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_log_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(1,1,null,1,'2014-03-26 19:15:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(2,1,1,3,'2014-03-26 19:17:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=10;name=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(3,1,1,3,'2014-03-26 19:26:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=62;title=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(4,1,1,3,'2014-03-26 19:27:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=548;title=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(5,1,1,3,'2014-03-26 19:29:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(6,1,1,3,'2014-03-26 19:29:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(7,1,1,3,'2014-03-26 19:31:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=549;title=师资力量2');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(8,1,1,3,'2014-03-26 19:32:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=62;name=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(9,1,1,3,'2014-03-26 19:33:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(10,1,1,3,'2014-03-26 19:33:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(11,1,1,3,'2014-03-26 19:33:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=550;title=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(12,1,1,3,'2014-03-26 19:33:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(13,1,1,3,'2014-03-26 19:34:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(14,1,1,3,'2014-03-26 19:39:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=62;name=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(15,1,1,3,'2014-03-26 19:41:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=551;title=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(16,1,null,1,'2014-03-26 19:42:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(17,1,1,3,'2014-03-26 19:43:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(18,1,1,3,'2014-03-26 19:44:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(19,1,1,3,'2014-03-26 19:44:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(20,1,1,3,'2014-03-26 19:47:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(21,1,1,3,'2014-03-26 19:51:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(22,1,1,3,'2014-03-26 19:51:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(23,1,1,3,'2014-03-26 19:53:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(24,1,null,1,'2014-03-26 19:54:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(25,1,1,3,'2014-03-26 19:55:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=551;title=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(26,1,1,3,'2014-03-26 19:55:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(27,1,1,3,'2014-03-26 19:56:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(28,1,1,3,'2014-03-26 19:56:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=62;name=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(29,1,1,3,'2014-03-26 19:57:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=552;title=樊文有');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(30,1,1,3,'2014-03-26 19:57:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=552;title=樊文有');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(31,1,1,3,'2014-03-26 19:58:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(32,1,1,3,'2014-03-26 19:58:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(33,1,1,3,'2014-03-26 19:58:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(34,1,1,3,'2014-03-26 19:59:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(35,1,1,3,'2014-03-26 20:00:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(36,1,1,3,'2014-03-26 20:00:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(37,1,1,3,'2014-03-26 20:00:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(38,1,1,3,'2014-03-26 20:01:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(39,1,1,3,'2014-03-26 20:01:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(40,1,1,3,'2014-03-26 20:01:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(41,1,1,3,'2014-03-26 20:20:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=552;title=樊文有');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(42,1,1,3,'2014-03-26 20:23:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(43,1,1,3,'2014-03-26 20:24:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(44,1,1,3,'2014-03-26 20:24:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(45,1,1,3,'2014-03-26 20:24:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(46,1,1,3,'2014-03-26 20:25:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(47,1,1,3,'2014-03-26 20:25:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(48,1,1,3,'2014-03-26 20:26:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=552;title=樊文有');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(49,1,1,3,'2014-03-26 20:27:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(50,1,1,3,'2014-03-26 20:27:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(51,1,1,3,'2014-03-26 20:27:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(52,1,1,3,'2014-03-26 20:28:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(53,1,1,3,'2014-03-26 20:28:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(54,1,1,3,'2014-03-26 20:29:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(55,1,1,3,'2014-03-26 20:30:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(56,1,1,3,'2014-03-26 20:30:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(57,1,1,3,'2014-03-26 20:30:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(58,1,1,3,'2014-03-26 20:33:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(59,1,1,3,'2014-03-26 20:33:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(60,1,1,3,'2014-03-26 20:33:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(61,1,1,3,'2014-03-26 20:33:47.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(62,1,1,3,'2014-03-26 20:39:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(63,1,1,3,'2014-03-26 20:39:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(64,1,1,3,'2014-03-26 20:39:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(65,1,1,3,'2014-03-26 20:40:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(66,1,1,3,'2014-03-26 20:43:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=552;title=樊文有');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(67,1,1,3,'2014-03-26 20:49:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=552;title=樊文有');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(68,1,1,3,'2014-03-26 20:50:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(69,1,1,3,'2014-03-26 20:50:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(70,1,1,3,'2014-03-26 20:51:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(71,1,1,3,'2014-03-26 20:52:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(72,1,1,3,'2014-03-26 20:52:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(73,1,1,3,'2014-03-26 20:52:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(74,1,1,3,'2014-03-26 20:52:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(75,1,1,3,'2014-03-26 20:52:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(76,1,1,3,'2014-03-26 20:56:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=553;title=下登城');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(77,1,1,3,'2014-03-26 20:57:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=553;title=下登城');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(78,1,1,3,'2014-03-26 21:02:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(79,1,1,3,'2014-03-26 21:03:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(80,1,1,3,'2014-03-26 21:03:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(81,1,1,3,'2014-03-26 21:04:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(82,1,1,3,'2014-03-26 21:05:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(83,1,1,3,'2014-03-26 21:05:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(84,1,1,3,'2014-03-26 21:06:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(85,1,1,3,'2014-03-26 21:06:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(86,1,1,3,'2014-03-26 21:06:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(87,1,1,3,'2014-03-26 21:08:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(88,1,1,3,'2014-03-26 21:08:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(89,1,1,3,'2014-03-26 21:08:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头搜索栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(90,1,1,3,'2014-03-26 21:09:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(91,1,1,3,'2014-03-26 21:09:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(92,1,1,3,'2014-03-26 21:09:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(93,1,1,3,'2014-03-26 21:10:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(94,1,1,3,'2014-03-26 21:11:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(95,1,1,3,'2014-03-26 21:11:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(96,1,1,3,'2014-03-26 22:40:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(97,1,1,3,'2014-03-26 22:44:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(98,1,1,3,'2014-03-26 22:46:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(99,1,1,3,'2014-03-26 22:46:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(100,1,null,1,'2014-03-26 22:48:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(101,1,1,3,'2014-03-26 22:50:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(102,1,1,3,'2014-03-26 22:52:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(103,1,1,3,'2014-03-26 22:52:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(104,1,1,3,'2014-03-26 22:52:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(105,1,1,3,'2014-03-26 22:53:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(106,1,1,3,'2014-03-26 22:53:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(107,1,1,3,'2014-03-26 22:55:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(108,1,1,3,'2014-03-26 22:55:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(109,1,1,3,'2014-03-26 22:55:47.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(110,1,1,3,'2014-03-26 22:56:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头搜索栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(111,1,1,3,'2014-03-26 22:57:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(112,1,1,3,'2014-03-26 22:57:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(113,1,1,3,'2014-03-26 22:57:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(114,1,1,3,'2014-03-26 22:58:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(115,1,null,1,'2014-03-27 07:48:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(116,1,1,3,'2014-03-27 07:49:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(117,1,1,3,'2014-03-27 07:49:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(118,1,1,3,'2014-03-27 07:49:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(119,1,1,3,'2014-03-27 07:51:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板类别页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(120,1,1,3,'2014-03-27 07:51:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板类别页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(121,1,1,3,'2014-03-27 07:51:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板详情页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(122,1,1,3,'2014-03-27 07:52:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页脚信息栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(123,1,1,3,'2014-03-27 07:53:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页脚信息栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(124,1,1,3,'2014-03-27 07:53:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页脚信息栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(125,1,1,3,'2014-03-27 07:53:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页脚信息栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(126,1,1,3,'2014-03-27 07:53:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页脚信息栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(127,1,null,1,'2014-03-27 10:43:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(128,1,1,3,'2014-03-27 10:47:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/data/o_delete_single.do','删除资源','filename=/WEB-INF/buckup/20140327104621.sql');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(129,1,null,1,'2014-03-27 10:49:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(130,1,1,3,'2014-03-27 10:51:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(131,1,1,3,'2014-03-27 10:51:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(132,1,1,3,'2014-03-27 10:51:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(133,1,1,3,'2014-03-27 10:51:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(134,1,1,3,'2014-03-27 10:54:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=11;name=招生就业');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(135,1,1,3,'2014-03-27 10:58:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=64;title=招生就业');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(136,1,1,3,'2014-03-27 11:00:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=本科生招生栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(137,1,1,3,'2014-03-27 11:01:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=本科生招生内容');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(138,1,1,3,'2014-03-27 11:05:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=64;name=招生就业');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(139,1,1,3,'2014-03-27 11:06:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=65;title=本科生招生');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(140,1,1,3,'2014-03-27 11:18:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=66;title=研究生招生');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(141,1,1,3,'2014-03-27 11:19:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=67;title=留学生招生');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(142,1,1,3,'2014-03-27 11:20:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=68;title=本科生就业');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(143,1,1,3,'2014-03-27 11:21:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=69;title=研究生就业');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(144,1,1,3,'2014-03-27 11:23:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=554;title=本科生招生');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(145,1,null,1,'2014-03-27 11:28:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(146,1,1,3,'2014-03-27 11:29:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(147,1,1,3,'2014-03-27 11:29:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(148,1,1,3,'2014-03-27 11:30:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(149,1,1,3,'2014-03-27 13:48:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(150,1,1,3,'2014-03-27 13:50:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/site_config/o_base_update.do','站点基本设置',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(151,1,1,3,'2014-03-27 13:59:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(152,1,1,3,'2014-03-27 14:01:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(153,1,1,3,'2014-03-27 14:02:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(154,1,1,3,'2014-03-27 14:05:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=555;title=2015年信息工程学院本科生招生计划');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(155,1,1,3,'2014-03-27 14:06:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=555;title=2015年信息工程学院本科生招生计划');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(156,1,1,3,'2014-03-27 14:07:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/招生就业内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(157,1,1,3,'2014-03-27 14:08:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/招生就业内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(158,1,1,3,'2014-03-27 14:11:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/新闻栏目_子栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(159,1,1,3,'2014-03-27 14:15:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(160,1,1,3,'2014-03-27 14:16:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(161,1,1,3,'2014-03-27 14:16:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(162,1,1,3,'2014-03-27 14:17:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(163,1,1,3,'2014-03-27 14:17:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(164,1,1,3,'2014-03-27 14:19:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(165,1,1,3,'2014-03-27 14:20:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(166,1,1,3,'2014-03-27 14:21:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(167,1,1,3,'2014-03-27 14:21:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(168,1,1,3,'2014-03-27 14:21:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(169,1,1,3,'2014-03-27 14:21:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(170,1,1,3,'2014-03-27 14:22:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(171,1,1,3,'2014-03-27 14:23:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(172,1,1,3,'2014-03-27 14:23:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(173,1,1,3,'2014-03-27 14:23:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(174,1,1,3,'2014-03-27 14:24:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(175,1,1,3,'2014-03-27 14:25:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(176,1,1,3,'2014-03-27 14:25:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(177,1,1,3,'2014-03-27 14:27:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(178,1,1,3,'2014-03-27 14:28:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(179,1,1,3,'2014-03-27 14:30:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(180,1,1,3,'2014-03-27 14:32:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(181,1,1,3,'2014-03-27 14:33:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(182,1,1,3,'2014-03-27 14:35:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(183,1,1,3,'2014-03-27 14:38:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=556;title=研究生招生');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(184,1,1,3,'2014-03-27 14:45:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=557;title=留学生招生');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(185,1,1,3,'2014-03-27 14:49:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=12;name=人才培养');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(186,1,1,3,'2014-03-27 14:52:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=70;title=人才培养');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(187,1,1,3,'2014-03-27 14:53:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=人才培养栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(188,1,1,3,'2014-03-27 14:54:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=人才培养内容');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(189,1,1,3,'2014-03-27 14:55:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=70;name=人才培养');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(190,1,1,3,'2014-03-27 14:56:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=71;title=本科生培养');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(191,1,1,3,'2014-03-27 14:56:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=72;title=研究生培养');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(192,1,1,3,'2014-03-27 14:57:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=73;title=网上学习');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(193,1,1,3,'2014-03-27 14:58:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/人才培养栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(194,1,1,3,'2014-03-27 14:59:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/人才培养栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(195,1,1,3,'2014-03-27 15:00:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(196,1,1,3,'2014-03-27 15:01:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(197,1,1,3,'2014-03-27 15:01:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(198,1,1,3,'2014-03-27 15:02:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(199,1,1,3,'2014-03-27 15:02:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(200,1,1,3,'2014-03-27 15:03:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(201,1,1,3,'2014-03-27 15:06:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=558;title=中国地质大学课件资源网  ');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(202,1,1,3,'2014-03-27 15:10:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(203,1,1,3,'2014-03-27 15:11:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(204,1,1,3,'2014-03-27 15:11:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(205,1,1,3,'2014-03-27 15:17:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=学院新闻栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(206,1,1,3,'2014-03-27 15:18:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=招生就业内容');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(207,1,1,3,'2014-03-27 15:19:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_delete_single.do','删除模板','filename=/WEB-INF/t/cms/www/red/content/教学信息内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(208,1,1,3,'2014-03-27 15:26:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=学院新闻栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(209,1,1,3,'2014-03-27 15:28:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=学院新闻内容');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(210,1,1,3,'2014-03-27 15:29:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/招生就业内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(211,1,1,3,'2014-03-27 15:30:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/招生就业内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(212,1,1,3,'2014-03-27 15:30:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(213,1,1,3,'2014-03-27 15:31:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(214,1,1,3,'2014-03-27 15:32:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=13;name=学院新闻');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(215,1,1,3,'2014-03-27 15:35:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=74;title=最新通知');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(216,1,1,3,'2014-03-27 15:36:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_delete.do','删除栏目','id=74;title=最新通知');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(217,1,1,3,'2014-03-27 15:37:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=75;title=学院新闻');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(218,1,1,3,'2014-03-27 15:39:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=76;title=最新通知');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(219,1,1,3,'2014-03-27 15:40:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=77;title=学院新闻');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(220,1,1,3,'2014-03-27 15:41:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=78;title=本科生动态');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(221,1,1,3,'2014-03-27 15:42:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=79;title=研究生动态');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(222,1,1,3,'2014-03-27 15:45:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=559;title=最新通知');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(223,1,1,3,'2014-03-27 15:47:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=77;name=新闻头条');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(224,1,1,3,'2014-03-27 15:48:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(225,1,1,3,'2014-03-27 15:58:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=下载中心栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(226,1,1,3,'2014-03-27 15:58:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_delete_single.do','删除模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(227,1,1,3,'2014-03-27 16:00:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(228,1,1,3,'2014-03-27 16:01:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(229,1,1,3,'2014-03-27 16:02:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(230,1,1,3,'2014-03-27 16:02:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(231,1,1,3,'2014-03-27 16:03:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(232,1,1,3,'2014-03-27 16:04:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=下载中心栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(233,1,1,3,'2014-03-27 16:05:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=下载中心栏目_二级');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(234,1,1,3,'2014-03-27 16:05:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=下载中心内容');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(235,1,1,3,'2014-03-27 16:06:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=14;name=下载中心');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(236,1,1,3,'2014-03-27 16:18:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=15;name=下载中心');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(237,1,1,3,'2014-03-27 16:18:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_delete.do','删除模型','id=15;name=下载中心');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(238,1,1,3,'2014-03-27 16:19:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=80;title=下载中心');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(239,1,1,3,'2014-03-27 16:21:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(240,1,1,3,'2014-03-27 16:22:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(241,1,1,3,'2014-03-27 16:24:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(242,1,1,3,'2014-03-27 16:24:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(243,1,1,3,'2014-03-27 16:25:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(244,1,1,3,'2014-03-27 16:25:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(245,1,1,3,'2014-03-27 16:26:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(246,1,1,3,'2014-03-27 16:27:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(247,1,1,3,'2014-03-27 16:29:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(248,1,1,3,'2014-03-27 16:32:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=81;title=文件下载');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(249,1,1,3,'2014-03-27 16:32:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=82;title=教师上传的资料');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(250,1,1,3,'2014-03-27 16:33:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=83;title=优秀毕业论文');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(251,1,1,3,'2014-03-27 16:34:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=84;title=蓝桥杯大赛');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(252,1,1,3,'2014-03-27 16:35:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=85;title=MapGis二次开发大赛');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(253,1,1,3,'2014-03-27 16:37:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(254,1,1,3,'2014-03-27 16:37:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(255,1,1,3,'2014-03-27 16:39:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(256,1,1,3,'2014-03-27 16:41:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(257,1,1,3,'2014-03-27 16:42:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(258,1,1,3,'2014-03-27 16:43:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(259,1,1,3,'2014-03-27 16:46:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(260,1,1,3,'2014-03-27 16:46:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(261,1,1,3,'2014-03-27 16:48:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(262,1,1,3,'2014-03-27 16:48:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(263,1,1,3,'2014-03-27 16:51:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(264,1,1,3,'2014-03-27 16:51:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(265,1,1,3,'2014-03-27 16:57:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(266,1,1,3,'2014-03-27 17:01:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(267,1,1,3,'2014-03-27 17:02:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(268,1,1,3,'2014-03-27 17:02:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(269,1,1,3,'2014-03-27 17:02:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(270,1,1,3,'2014-03-27 17:03:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(271,1,1,3,'2014-03-27 17:07:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=560;title=文件你懂的');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(272,1,1,3,'2014-03-27 17:09:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(273,1,1,3,'2014-03-27 17:10:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(274,1,1,3,'2014-03-27 17:13:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(275,1,1,3,'2014-03-27 17:13:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(276,1,1,3,'2014-03-27 17:16:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(277,1,1,3,'2014-03-27 17:16:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(278,1,1,3,'2014-03-27 17:17:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(279,1,1,3,'2014-03-27 17:17:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(280,1,1,3,'2014-03-27 17:21:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(281,1,1,3,'2014-03-27 17:22:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(282,1,1,3,'2014-03-27 17:22:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(283,1,1,3,'2014-03-27 17:25:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(284,1,1,3,'2014-03-27 17:27:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(285,1,1,3,'2014-03-27 17:29:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=81;name=文件下载');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(286,1,1,3,'2014-03-27 17:30:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=82;name=教师上传的资料');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(287,1,1,3,'2014-03-27 17:30:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=83;name=优秀毕业论文');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(288,1,1,3,'2014-03-27 17:30:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=84;name=蓝桥杯大赛');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(289,1,1,3,'2014-03-27 17:30:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=85;name=MapGis二次开发大赛');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(290,1,1,3,'2014-03-27 17:31:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(291,1,1,3,'2014-03-27 17:34:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(292,1,1,3,'2014-03-27 17:34:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(293,1,1,3,'2014-03-27 17:35:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(294,1,1,3,'2014-03-27 17:35:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(295,1,1,3,'2014-03-27 17:36:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(296,1,1,3,'2014-03-27 17:36:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(297,1,1,3,'2014-03-27 17:37:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载中心内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(298,1,1,3,'2014-03-27 17:38:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载中心内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(299,1,1,3,'2014-03-27 17:39:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载中心内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(300,1,1,3,'2014-03-27 17:39:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载中心内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(301,1,null,1,'2014-03-27 18:39:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(302,1,1,3,'2014-03-27 18:56:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(303,1,1,3,'2014-03-27 18:57:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(304,1,1,3,'2014-03-27 18:58:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/留言板首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(305,1,1,3,'2014-03-27 18:59:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/招生就业内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(306,1,1,3,'2014-03-27 19:00:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/招生就业内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(307,1,1,3,'2014-03-27 19:07:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(308,1,1,3,'2014-03-27 19:07:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(309,1,1,3,'2014-03-27 19:07:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(310,1,1,3,'2014-03-27 19:08:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(311,1,1,3,'2014-03-27 19:09:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(312,1,1,3,'2014-03-27 19:11:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(313,1,1,3,'2014-03-27 19:16:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(314,1,1,3,'2014-03-27 19:17:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(315,1,1,3,'2014-03-27 19:18:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(316,1,1,3,'2014-03-27 19:18:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(317,1,1,3,'2014-03-27 19:20:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(318,1,1,3,'2014-03-27 19:22:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(319,1,1,3,'2014-03-27 19:23:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(320,1,1,3,'2014-03-27 19:23:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页_页头.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(321,1,1,3,'2014-03-27 19:23:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(322,1,1,3,'2014-03-27 19:24:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(323,1,1,3,'2014-03-27 19:25:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(324,1,1,3,'2014-03-27 19:25:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(325,1,1,3,'2014-03-27 19:26:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(326,1,1,3,'2014-03-27 19:26:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(327,1,1,3,'2014-03-27 19:28:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(328,1,1,3,'2014-03-27 19:29:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(329,1,1,3,'2014-03-27 19:29:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(330,1,1,3,'2014-03-27 19:29:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(331,1,1,3,'2014-03-27 19:32:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(332,null,null,2,'2014-03-28 15:10:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录失败','username=sun');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(333,1,null,1,'2014-03-28 15:10:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(334,1,1,3,'2014-03-28 15:11:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/标志和搜索.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(335,1,1,3,'2014-03-28 15:13:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/标志和搜索.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(336,1,1,3,'2014-03-28 15:16:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头搜索栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(337,1,1,3,'2014-03-28 15:17:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头搜索栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(338,1,1,3,'2014-03-28 15:18:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头搜索栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(339,1,1,3,'2014-03-28 15:19:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/搜索结果页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(340,1,1,3,'2014-03-28 15:20:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/搜索结果页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(341,1,1,3,'2014-03-28 15:20:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/搜索结果页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(342,1,1,3,'2014-03-28 15:21:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/special/搜索结果页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(343,1,1,3,'2014-03-28 15:21:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(344,1,1,3,'2014-03-28 15:26:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(345,1,1,3,'2014-03-28 15:26:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(346,1,1,3,'2014-03-28 15:27:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(347,1,1,3,'2014-03-28 15:28:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(348,1,1,3,'2014-03-28 15:34:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(349,1,1,3,'2014-03-28 15:39:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(350,1,1,3,'2014-03-28 15:39:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(351,1,1,3,'2014-03-28 15:44:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=561;title=新闻头条');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(352,1,1,3,'2014-03-28 15:46:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_update.do','修改栏目','id=77;name=新闻头条');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(353,1,1,3,'2014-03-28 15:47:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=562;title=头条2');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(354,1,1,3,'2014-03-28 15:49:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(355,1,1,3,'2014-03-28 15:49:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(356,1,1,3,'2014-03-28 15:51:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(357,1,1,3,'2014-03-28 15:51:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(358,1,1,3,'2014-03-28 15:51:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(359,1,1,3,'2014-03-28 15:52:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(360,1,1,3,'2014-03-28 15:52:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(361,1,1,3,'2014-03-28 15:53:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(362,1,1,3,'2014-03-28 15:54:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(363,1,1,3,'2014-03-28 15:55:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(364,1,1,3,'2014-03-28 15:58:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(365,1,1,3,'2014-03-28 15:59:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(366,1,1,3,'2014-03-28 16:00:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(367,1,1,3,'2014-03-28 16:02:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(368,1,1,3,'2014-03-28 16:03:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(369,1,1,3,'2014-03-28 16:05:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=1;name=JEECMS官网');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(370,1,1,3,'2014-03-28 16:05:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=2;name=JEEBBS论坛');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(371,1,1,3,'2014-03-28 16:05:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=3;name=京东商城');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(372,1,1,3,'2014-03-28 16:05:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=4;name=当当网');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(373,1,1,3,'2014-03-28 16:05:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=5;name=亚马逊');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(374,1,1,3,'2014-03-28 16:05:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=6;name=ihush');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(375,1,1,3,'2014-03-28 16:05:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=7;name=名品打折');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(376,1,1,3,'2014-03-28 16:05:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_delete.do','删除友情链接','id=8;name=优品');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(377,1,1,3,'2014-03-28 16:09:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_save.do','增加友情链接','id=1;name=地大主页');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(378,1,1,3,'2014-03-28 16:10:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_save.do','增加友情链接','id=2;name=地大教务处');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(379,1,1,3,'2014-03-28 16:12:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_save.do','增加友情链接','id=3;name=信工学院');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(380,1,1,3,'2014-03-28 16:13:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_save.do','增加友情链接','id=4;name=地大官方论坛');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(381,1,1,3,'2014-03-28 16:13:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/friendlink/o_save.do','增加友情链接','id=5;name=朴实');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(382,1,1,3,'2014-03-28 16:20:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(383,1,1,3,'2014-03-28 16:22:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(384,1,1,3,'2014-03-28 16:22:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(385,1,1,3,'2014-03-28 16:23:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(386,1,1,3,'2014-03-28 16:23:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(387,1,1,3,'2014-03-28 16:23:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(388,1,1,3,'2014-03-28 16:24:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(389,1,1,3,'2014-03-28 16:24:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(390,1,1,3,'2014-03-28 16:26:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(391,1,1,3,'2014-03-28 16:27:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(392,1,1,3,'2014-03-28 16:28:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(393,1,1,3,'2014-03-28 16:29:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(394,1,1,3,'2014-03-28 16:29:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(395,1,1,3,'2014-03-28 16:30:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(396,1,1,3,'2014-03-28 16:30:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(397,1,1,3,'2014-03-28 16:31:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(398,1,1,3,'2014-03-28 16:31:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(399,1,1,3,'2014-03-28 16:32:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(400,1,1,3,'2014-03-28 16:32:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(401,1,1,3,'2014-03-28 16:32:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(402,1,1,3,'2014-03-28 16:33:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(403,1,1,3,'2014-03-28 16:34:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(404,1,1,3,'2014-03-28 16:35:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(405,1,1,3,'2014-03-28 16:35:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(406,1,1,3,'2014-03-28 16:35:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(407,1,1,3,'2014-03-28 16:36:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(408,1,1,3,'2014-03-28 16:37:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(409,1,1,3,'2014-03-28 16:37:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(410,1,1,3,'2014-03-28 16:37:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(411,1,1,3,'2014-03-28 16:38:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(412,1,1,3,'2014-03-28 16:38:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(413,1,1,3,'2014-03-28 16:40:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(414,1,1,3,'2014-03-28 16:40:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(415,1,1,3,'2014-03-28 16:40:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(416,1,1,3,'2014-03-28 16:41:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(417,1,1,3,'2014-03-28 16:41:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(418,1,1,3,'2014-03-28 16:42:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(419,1,1,3,'2014-03-28 16:43:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(420,1,1,3,'2014-03-28 16:43:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(421,1,1,3,'2014-03-28 16:43:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(422,1,1,3,'2014-03-28 16:43:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(423,1,1,3,'2014-03-28 16:43:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(424,1,1,3,'2014-03-28 16:45:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(425,1,1,3,'2014-03-28 16:46:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(426,1,1,3,'2014-03-28 16:47:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(427,1,1,3,'2014-03-28 16:48:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(428,1,1,3,'2014-03-28 16:49:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(429,1,1,3,'2014-03-28 16:50:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(430,1,1,3,'2014-03-28 16:50:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(431,1,1,3,'2014-03-28 16:51:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(432,1,1,3,'2014-03-28 16:53:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(433,1,1,3,'2014-03-28 16:53:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(434,1,1,3,'2014-03-28 16:54:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(435,1,1,3,'2014-03-28 16:54:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(436,1,1,3,'2014-03-28 16:56:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=563;title=本科生动态');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(437,1,1,3,'2014-03-28 16:56:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=564;title=研究生动态');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(438,1,1,3,'2014-03-28 16:57:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(439,1,1,3,'2014-03-28 16:58:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(440,1,1,3,'2014-03-28 16:58:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(441,1,1,3,'2014-03-28 16:59:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(442,1,1,3,'2014-03-28 16:59:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(443,1,1,3,'2014-03-28 17:00:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(444,1,1,3,'2014-03-28 17:00:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(445,1,1,3,'2014-03-28 17:01:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(446,1,1,3,'2014-03-28 17:01:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(447,1,null,1,'2014-03-28 17:02:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(448,1,1,3,'2014-03-28 17:07:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=565;title=方芳');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(449,1,1,3,'2014-03-28 17:10:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(450,1,1,3,'2014-03-28 17:12:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=566;title=师资力量');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(451,1,null,1,'2014-03-28 19:43:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(452,1,1,3,'2014-03-28 19:43:47.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(453,1,1,3,'2014-03-28 19:44:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(454,1,1,3,'2014-03-28 19:44:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(455,1,1,3,'2014-03-28 19:45:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(456,1,1,3,'2014-03-28 19:45:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(457,1,1,3,'2014-03-28 19:45:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(458,1,1,3,'2014-03-28 19:46:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(459,1,1,3,'2014-03-28 19:46:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(460,1,1,3,'2014-03-28 19:46:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(461,1,1,3,'2014-03-28 19:47:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(462,1,1,3,'2014-03-28 19:47:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(463,1,1,3,'2014-03-28 19:48:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(464,1,1,3,'2014-03-28 19:48:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(465,1,1,3,'2014-03-28 19:52:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(466,1,1,3,'2014-03-28 19:52:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(467,1,1,3,'2014-03-28 19:53:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(468,1,1,3,'2014-03-28 19:53:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(469,1,1,3,'2014-03-28 19:54:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(470,1,1,3,'2014-03-28 19:54:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(471,1,1,3,'2014-03-28 19:54:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(472,1,1,3,'2014-03-28 19:55:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(473,1,1,3,'2014-03-28 19:55:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(474,1,1,3,'2014-03-28 19:55:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(475,1,1,3,'2014-03-28 19:56:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(476,1,1,3,'2014-03-28 19:57:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(477,1,1,3,'2014-03-28 19:57:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(478,1,1,3,'2014-03-28 19:57:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(479,1,1,3,'2014-03-28 19:59:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(480,1,1,3,'2014-03-28 20:00:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(481,1,1,3,'2014-03-28 20:00:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(482,1,1,3,'2014-03-28 20:00:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(483,1,1,3,'2014-03-28 20:01:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=86;title=特聘教授');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(484,1,1,3,'2014-03-28 20:02:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=87;title=教授');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(485,1,1,3,'2014-03-28 20:03:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=88;title=副教授');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(486,1,1,3,'2014-03-28 20:03:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=89;title=讲师');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(487,1,1,3,'2014-03-28 20:05:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(488,1,1,3,'2014-03-28 20:05:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(489,1,1,3,'2014-03-28 20:05:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(490,1,1,3,'2014-03-28 20:08:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=567;title=特聘教授');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(491,1,1,3,'2014-03-28 20:09:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(492,1,1,3,'2014-03-28 20:09:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(493,1,1,3,'2014-03-28 20:10:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(494,1,1,3,'2014-03-28 20:12:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=568;title=教授');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(495,1,null,1,'2014-03-30 09:36:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(496,1,1,3,'2014-03-30 09:38:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=569;title=本科生动态本科生动态本科生动态本科生动态本科生动态本科生动态');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(497,1,1,3,'2014-03-30 09:39:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(498,1,1,3,'2014-03-30 09:39:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(499,1,1,3,'2014-03-30 09:39:51.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(500,1,1,3,'2014-03-30 09:41:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(501,1,1,3,'2014-03-30 09:42:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(502,1,1,3,'2014-03-30 09:47:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=570;title=动态1');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(503,1,1,3,'2014-03-30 09:47:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=571;title=动态2');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(504,1,1,3,'2014-03-30 09:47:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=572;title=动态3');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(505,1,1,3,'2014-03-30 09:48:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=573;title=动态4');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(506,1,1,3,'2014-03-30 09:48:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=574;title=动态5');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(507,1,1,3,'2014-03-30 09:49:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=575;title=动态6');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(508,1,1,3,'2014-03-30 09:49:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=576;title=动态7');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(509,1,1,3,'2014-03-30 09:49:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=577;title=动态7');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(510,1,1,3,'2014-03-30 09:50:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(511,1,1,3,'2014-03-30 09:50:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(512,1,1,3,'2014-03-30 09:52:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(513,1,1,3,'2014-03-30 09:52:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(514,1,1,3,'2014-03-30 09:55:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_save.do','增加模型','id=16;name=专业概况');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(515,1,1,3,'2014-03-30 10:01:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_save.do','增加模板','filename=专业概况栏目');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(516,1,1,3,'2014-03-30 10:04:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/model/o_update.do','修改模型','id=16;name=专业概况');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(517,1,1,3,'2014-03-30 10:04:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/channel/o_save.do','增加栏目','id=90;title=专业概况');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(518,1,1,3,'2014-03-30 10:05:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/页头导航栏.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(519,1,1,3,'2014-03-30 10:06:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(520,1,1,3,'2014-03-30 10:07:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(521,1,1,3,'2014-03-30 10:09:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(522,1,1,3,'2014-03-30 10:09:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(523,1,1,3,'2014-03-30 10:10:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(524,1,1,3,'2014-03-30 10:10:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(525,1,1,3,'2014-03-30 10:10:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(526,1,1,3,'2014-03-30 10:10:38.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(527,1,1,3,'2014-03-30 10:11:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(528,1,1,3,'2014-03-30 10:11:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(529,1,1,3,'2014-03-30 10:12:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(530,1,1,3,'2014-03-30 10:12:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(531,1,1,3,'2014-03-30 10:12:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(532,1,1,3,'2014-03-30 10:12:47.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(533,1,1,3,'2014-03-30 10:12:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(534,1,1,3,'2014-03-30 10:48:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=578;title=柳恒健');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(535,1,1,3,'2014-03-30 10:49:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=578;title=柳恒健');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(536,1,1,3,'2014-03-30 10:57:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(537,1,1,3,'2014-03-30 11:02:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(538,1,1,3,'2014-03-30 11:13:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(539,1,1,3,'2014-03-30 11:13:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(540,1,1,3,'2014-03-30 11:14:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(541,1,1,3,'2014-03-30 11:15:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(542,1,1,3,'2014-03-30 11:15:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(543,1,1,3,'2014-03-30 11:16:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(544,1,1,3,'2014-03-30 11:16:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(545,1,1,3,'2014-03-30 11:17:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(546,1,1,3,'2014-03-30 11:19:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(547,1,1,3,'2014-03-30 11:20:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(548,1,1,3,'2014-03-30 11:20:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目_二级.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(549,1,1,3,'2014-03-30 11:23:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(550,1,1,3,'2014-03-30 11:23:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(551,1,1,3,'2014-03-30 11:25:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(552,1,1,3,'2014-03-30 11:25:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(553,1,1,3,'2014-03-30 11:26:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(554,1,1,3,'2014-03-30 11:26:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(555,1,1,3,'2014-03-30 11:28:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=579;title=教师上传的资历料');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(556,1,1,3,'2014-03-30 11:30:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=580;title=新闻头条');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(557,1,null,1,'2014-03-30 14:46:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(558,1,1,3,'2014-03-30 14:48:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(559,1,1,3,'2014-03-30 14:49:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(560,1,1,3,'2014-03-30 15:36:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=573;title=动态4');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(561,1,1,3,'2014-03-30 15:38:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=573;title=动态4');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(562,1,1,3,'2014-03-30 15:39:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=573;title=动态42222');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(563,1,1,3,'2014-03-30 15:40:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=573;title=动态42222');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(564,1,1,3,'2014-03-30 15:46:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(565,1,1,3,'2014-03-30 15:46:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员中心页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(566,1,1,3,'2014-03-30 15:58:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(567,1,1,3,'2014-03-30 15:58:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(568,1,1,3,'2014-03-30 16:08:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=578;title=柳恒健');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(569,1,1,3,'2014-03-30 16:09:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(570,1,1,3,'2014-03-30 16:10:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(571,1,1,3,'2014-03-30 16:13:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(572,1,1,3,'2014-03-30 16:14:47.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(573,1,1,3,'2014-03-30 16:14:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(574,1,1,3,'2014-03-30 16:15:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(575,1,1,3,'2014-03-30 16:15:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(576,1,1,3,'2014-03-30 16:15:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(577,1,1,3,'2014-03-30 16:17:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(578,1,1,3,'2014-03-30 16:18:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(579,1,1,3,'2014-03-30 16:18:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(580,1,1,3,'2014-03-30 16:18:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/学院新闻内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(581,1,1,3,'2014-03-30 16:18:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(582,1,1,3,'2014-03-30 16:19:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(583,1,1,3,'2014-03-30 16:19:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_update.do','修改文章','id=578;title=柳恒健');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(584,1,null,1,'2014-03-30 22:25:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(585,1,1,3,'2014-03-30 22:26:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/content/o_save.do','增加文章','id=581;title=cl');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(586,1,null,1,'2014-04-02 08:39:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(587,1,null,1,'2014-04-02 08:42:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(588,1,1,3,'2014-04-02 08:43:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员登录页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(589,1,null,1,'2014-04-02 08:59:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(590,1,null,1,'2014-04-02 09:00:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(591,1,1,3,'2014-04-02 09:01:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(592,1,1,3,'2014-04-02 09:01:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(593,1,1,3,'2014-04-02 09:02:23.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(594,1,1,3,'2014-04-02 09:02:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(595,1,1,3,'2014-04-02 09:02:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(596,1,1,3,'2014-04-02 09:03:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(597,1,1,3,'2014-04-02 09:03:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员注册页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(598,1,null,1,'2014-04-02 09:04:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(599,1,1,3,'2014-04-02 09:04:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员登录页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(600,1,null,1,'2014-04-02 09:07:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(601,1,1,3,'2014-04-02 09:07:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员登录页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(602,1,1,3,'2014-04-02 09:08:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员登录页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(603,1,null,1,'2014-04-02 09:09:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(604,1,1,3,'2014-04-02 09:10:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/密码重置页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(605,1,1,3,'2014-04-02 09:10:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/密码重置页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(606,1,1,3,'2014-04-02 09:10:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/密码重置页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(607,1,1,3,'2014-04-02 09:11:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/密码重置页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(608,1,null,1,'2014-04-02 09:11:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(609,1,1,3,'2014-04-02 09:12:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/找回密码输入页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(610,1,1,3,'2014-04-02 09:12:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/找回密码输入页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(611,1,1,3,'2014-04-02 09:12:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/找回密码输入页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(612,1,1,3,'2014-04-02 09:13:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/找回密码输入页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(613,1,null,1,'2014-04-02 09:14:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(614,1,1,3,'2014-04-02 09:15:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/member/会员登录页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(615,1,null,1,'2014-04-02 09:16:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(616,1,1,3,'2014-04-02 09:17:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(617,1,1,3,'2014-04-02 09:20:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(618,1,1,3,'2014-04-02 09:21:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(619,1,1,3,'2014-04-02 09:22:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(620,1,1,3,'2014-04-02 09:22:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(621,1,1,3,'2014-04-02 09:23:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(622,1,1,3,'2014-04-02 09:23:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(623,1,1,3,'2014-04-02 09:23:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(624,1,1,3,'2014-04-02 09:23:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(625,1,1,3,'2014-04-02 09:24:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(626,1,1,3,'2014-04-02 09:25:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(627,1,1,3,'2014-04-02 09:25:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(628,1,1,3,'2014-04-02 09:25:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(629,1,1,3,'2014-04-02 09:27:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(630,1,1,3,'2014-04-02 09:27:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(631,1,1,3,'2014-04-02 09:27:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(632,1,1,3,'2014-04-02 09:27:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(633,1,1,3,'2014-04-02 09:28:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(634,1,1,3,'2014-04-02 09:28:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(635,1,1,3,'2014-04-02 09:28:58.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(636,1,1,3,'2014-04-02 09:29:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(637,1,1,3,'2014-04-02 09:29:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(638,1,1,3,'2014-04-02 09:30:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(639,1,1,3,'2014-04-02 09:30:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(640,1,1,3,'2014-04-02 09:30:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(641,1,1,3,'2014-04-02 09:31:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(642,1,1,3,'2014-04-02 09:31:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(643,1,1,3,'2014-04-02 09:31:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(644,1,1,3,'2014-04-02 09:31:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(645,1,1,3,'2014-04-02 09:32:29.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(646,1,1,3,'2014-04-02 09:32:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(647,1,1,3,'2014-04-02 09:33:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(648,1,1,3,'2014-04-02 09:33:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(649,1,1,3,'2014-04-02 09:33:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(650,1,1,3,'2014-04-02 09:33:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(651,1,1,3,'2014-04-02 09:34:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(652,1,1,3,'2014-04-02 09:35:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(653,1,1,3,'2014-04-02 09:37:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(654,1,1,3,'2014-04-02 09:38:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(655,1,1,3,'2014-04-02 09:40:00.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(656,1,1,3,'2014-04-02 09:41:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(657,1,1,3,'2014-04-02 09:44:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(658,1,1,3,'2014-04-02 10:00:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(659,1,1,3,'2014-04-02 10:00:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(660,1,1,3,'2014-04-02 10:01:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(661,1,1,3,'2014-04-02 10:01:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(662,1,1,3,'2014-04-02 10:02:10.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(663,1,1,3,'2014-04-02 10:02:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(664,1,1,3,'2014-04-02 10:02:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(665,1,1,3,'2014-04-02 10:02:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(666,1,1,3,'2014-04-02 10:04:19.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(667,1,1,3,'2014-04-02 10:04:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(668,1,1,3,'2014-04-02 10:04:53.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(669,1,1,3,'2014-04-02 10:06:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(670,1,1,3,'2014-04-02 10:06:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(671,1,1,3,'2014-04-02 10:06:36.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(672,1,1,3,'2014-04-02 10:06:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(673,1,1,3,'2014-04-02 10:10:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/下载中心内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(674,1,1,3,'2014-04-02 10:12:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(675,1,1,3,'2014-04-02 10:13:05.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(676,1,1,3,'2014-04-02 10:13:11.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(677,1,1,3,'2014-04-02 10:13:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(678,1,1,3,'2014-04-02 10:13:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(679,1,1,3,'2014-04-02 10:14:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(680,1,1,3,'2014-04-02 10:14:18.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(681,1,1,3,'2014-04-02 10:14:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(682,1,1,3,'2014-04-02 10:15:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(683,1,1,3,'2014-04-02 10:15:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(684,1,1,3,'2014-04-02 10:15:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(685,1,1,3,'2014-04-02 10:16:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(686,1,1,3,'2014-04-02 10:18:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(687,1,1,3,'2014-04-02 10:19:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(688,1,1,3,'2014-04-02 10:19:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(689,1,1,3,'2014-04-02 10:19:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(690,1,1,3,'2014-04-02 10:19:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(691,1,1,3,'2014-04-02 10:20:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(692,1,1,3,'2014-04-02 10:20:52.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(693,1,1,3,'2014-04-02 10:21:15.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(694,1,1,3,'2014-04-02 10:21:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(695,1,1,3,'2014-04-02 10:21:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(696,1,1,3,'2014-04-02 10:23:20.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(697,1,1,3,'2014-04-02 10:25:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(698,1,1,3,'2014-04-02 10:25:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(699,1,1,3,'2014-04-02 10:26:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(700,1,1,3,'2014-04-02 10:31:44.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(701,1,1,3,'2014-04-02 10:31:56.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(702,1,1,3,'2014-04-02 10:32:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(703,1,1,3,'2014-04-02 10:34:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(704,1,1,3,'2014-04-02 10:34:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(705,1,1,3,'2014-04-02 10:37:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(706,1,1,3,'2014-04-02 10:38:34.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(707,1,1,3,'2014-04-02 10:40:14.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(708,1,1,3,'2014-04-02 10:40:24.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(709,1,1,3,'2014-04-02 10:42:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(710,1,1,3,'2014-04-02 10:43:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(711,1,1,3,'2014-04-02 10:44:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(712,1,1,3,'2014-04-02 10:44:16.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(713,1,1,3,'2014-04-02 10:45:02.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(714,1,1,3,'2014-04-02 10:45:54.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(715,1,1,3,'2014-04-02 10:46:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(716,1,1,3,'2014-04-02 10:46:33.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(717,1,1,3,'2014-04-02 10:47:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(718,1,1,3,'2014-04-02 10:47:32.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(719,1,1,3,'2014-04-02 10:47:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(720,1,1,3,'2014-04-02 10:48:26.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(721,1,1,3,'2014-04-02 10:49:41.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(722,1,1,3,'2014-04-02 10:50:09.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(723,1,1,3,'2014-04-02 10:51:06.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(724,1,1,3,'2014-04-02 10:51:27.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(725,1,1,3,'2014-04-02 10:51:39.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(726,1,1,3,'2014-04-02 10:52:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(727,1,1,3,'2014-04-02 10:52:57.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(728,1,1,3,'2014-04-02 10:53:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(729,1,1,3,'2014-04-02 10:53:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(730,1,1,3,'2014-04-02 10:54:04.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(731,1,1,3,'2014-04-02 10:55:17.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(732,1,1,3,'2014-04-02 10:56:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(733,1,1,3,'2014-04-02 11:02:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(734,1,1,3,'2014-04-02 11:02:55.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(735,1,1,3,'2014-04-02 11:03:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(736,1,1,3,'2014-04-02 11:03:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(737,1,1,3,'2014-04-02 11:03:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(738,1,1,3,'2014-04-02 11:04:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(739,1,1,3,'2014-04-02 11:04:40.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(740,1,1,3,'2014-04-02 11:04:46.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(741,1,1,3,'2014-04-02 11:05:03.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(742,1,1,3,'2014-04-02 11:05:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(743,1,1,3,'2014-04-02 11:05:49.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(744,1,1,3,'2014-04-02 11:06:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(745,1,1,3,'2014-04-02 11:06:21.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(746,1,1,3,'2014-04-02 11:06:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(747,1,1,3,'2014-04-02 11:06:48.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(748,1,1,3,'2014-04-02 11:07:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(749,1,1,3,'2014-04-02 11:07:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(750,1,1,3,'2014-04-02 11:07:25.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(751,1,1,3,'2014-04-02 11:07:45.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(752,1,1,3,'2014-04-02 11:08:08.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(753,1,1,3,'2014-04-02 11:08:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(754,1,1,3,'2014-04-02 11:08:59.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(755,1,1,3,'2014-04-02 11:09:22.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(756,1,1,3,'2014-04-02 11:10:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(757,1,1,3,'2014-04-02 11:10:37.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(758,1,1,3,'2014-04-02 11:11:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(759,1,1,3,'2014-04-02 11:11:35.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(760,1,1,3,'2014-04-02 11:12:07.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(761,1,1,3,'2014-04-02 11:12:43.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(762,1,1,3,'2014-04-02 11:16:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(763,1,1,3,'2014-04-02 11:17:42.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(764,1,1,3,'2014-04-02 11:18:12.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(765,1,1,3,'2014-04-02 11:18:30.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(766,1,1,3,'2014-04-02 11:19:13.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(767,1,1,3,'2014-04-02 11:19:47.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(768,1,1,3,'2014-04-02 11:23:50.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/图库栏目_子栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(769,1,1,3,'2014-04-02 11:24:01.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/图库栏目_子栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(770,1,1,3,'2014-04-02 11:24:28.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/图库栏目_子栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(771,1,1,3,'2014-04-02 11:25:31.0','0:0:0:0:0:0:0:1','/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/index/首页.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(772,1,null,1,'2014-10-24 19:04:23.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(773,1,null,1,'2014-10-24 19:25:14.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(774,1,null,1,'2014-10-24 19:36:01.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(775,1,1,3,'2014-10-24 19:42:51.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/content/o_save.do','增加文章','id=582;title=2015年毕业生信息采集');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(776,1,null,1,'2014-10-24 19:47:31.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(777,1,1,3,'2014-10-24 19:50:12.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/channel/o_delete.do','删除栏目','id=11;title=国内新闻');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(778,1,1,3,'2014-10-24 19:50:29.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/channel/o_delete.do','删除栏目','id=12;title=国际新闻');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(779,1,null,1,'2014-10-29 15:00:56.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(780,1,1,3,'2014-10-29 15:13:09.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(781,1,1,3,'2014-10-29 15:18:30.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(782,1,1,3,'2014-10-29 15:20:08.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(783,1,1,3,'2014-10-29 15:20:11.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(784,1,1,3,'2014-10-29 15:23:30.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(785,1,1,3,'2014-10-29 15:24:08.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(786,1,1,3,'2014-10-29 15:26:00.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(787,1,1,3,'2014-10-29 15:26:10.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(788,1,1,3,'2014-10-29 15:27:11.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(789,1,1,3,'2014-10-29 15:30:05.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/专业概况栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(790,1,1,3,'2014-10-29 15:34:01.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/include/标志和搜索.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(791,1,null,1,'2014-10-31 19:57:35.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/login.do','登录成功',null);
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(792,1,1,3,'2014-10-31 20:00:06.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(793,1,1,3,'2014-10-31 20:00:12.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/content/师资力量内容.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(794,1,1,3,'2014-10-31 20:10:27.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(795,1,1,3,'2014-10-31 20:15:06.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/师资力量栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(796,1,1,3,'2014-10-31 20:23:39.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/招生就业栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(797,1,1,3,'2014-10-31 20:26:17.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/学院新闻栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(798,1,1,3,'2014-10-31 20:27:21.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/template/o_ajaxUpdate.do','修改模板','filename=/WEB-INF/t/cms/www/red/channel/下载中心栏目.html');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(799,1,1,3,'2014-10-31 20:30:38.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/channel/o_delete.do','删除栏目','id=49;title=null');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(800,1,1,3,'2014-10-31 20:30:38.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/channel/o_delete.do','删除栏目','id=50;title=null');
JEECMS_BACKUP_ INSERT INTO `jc_log` VALUES(801,1,1,3,'2014-10-31 20:30:38.0','0:0:0:0:0:0:0:1','/xg/jeeadmin/jeecms/channel/o_delete.do','删除栏目','id=61;title=电影');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_message;
JEECMS_BACKUP_CREATE TABLE `jc_message` (
  `msg_id` int(11) NOT NULL auto_increment COMMENT '������������������������������������������������������id',
  `msg_title` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������',
  `msg_content` longtext COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `send_time` timestamp NULL default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `msg_send_user` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `msg_receiver_user` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `site_id` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������',
  `msg_status` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������0���������������������������������������������������������������������������������1������������������������������������������������������',
  `msg_box` int(2) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������ 0��������������������������������������������������������������������������������� 1��������������������������������������������������������������������������������� 2��������������������������������������������������������������������������������� 3���������������������������������������������������������������������������������',
  PRIMARY KEY  (`msg_id`),
  KEY `fk_jc_message_user_send` (`msg_send_user`),
  KEY `fk_jc_message_user_receiver` (`msg_receiver_user`),
  KEY `fk_jc_message_site` (`site_id`),
  CONSTRAINT `fk_jc_message_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_message_user_receiver` FOREIGN KEY (`msg_receiver_user`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_message_user_send` FOREIGN KEY (`msg_send_user`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_model;
JEECMS_BACKUP_CREATE TABLE `jc_model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `model_path` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `tpl_channel_prefix` varchar(20) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `tpl_content_prefix` varchar(20) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `title_img_width` int(11) NOT NULL default '139' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `title_img_height` int(11) NOT NULL default '139' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content_img_width` int(11) NOT NULL default '310' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content_img_height` int(11) NOT NULL default '310' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `has_content` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_disabled` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_def` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(1,'新闻','1','新闻栏目','新闻内容',139,139,310,310,1,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(2,'单页','2','单页','',139,139,310,310,2,0,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(3,'作品','3','作品栏目','作品内容',139,139,310,310,3,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(4,'下载','4','下载栏目','下载内容',139,139,310,310,4,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(5,'图库','5','图库栏目','图库内容',139,139,310,310,5,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(6,'视频','6','视频栏目','视频内容',139,139,310,310,10,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(7,'产品','7','产品栏目','产品内容',139,139,310,310,10,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(8,'招聘','job','招聘栏目','招聘内容',139,139,310,310,10,1,1,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(10,'师资力量','szll','师资力量栏目','师资力量内容',139,139,310,310,10,1,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(11,'招生就业','zsjy','招生就业栏目','招生就业内容',139,139,310,310,10,1,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(12,'人才培养','rcpy','人才培养栏目','人才培养内容',139,139,310,310,10,1,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(13,'学院新闻','xyxw','学院新闻栏目','学院新闻内容',139,139,310,310,10,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(14,'下载中心','xzzx','下载中心栏目','下载中心内容',139,139,310,310,10,1,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model` VALUES(16,'专业概况','zygk','专业概况栏目','专业概况内容',139,139,310,310,10,1,0,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_model_item;
JEECMS_BACKUP_CREATE TABLE `jc_model_item` (
  `modelitem_id` int(11) NOT NULL auto_increment,
  `model_id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL COMMENT '������������������������������������������������������',
  `item_label` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `priority` int(11) NOT NULL default '70' COMMENT '������������������������������������������������������������������������������������������������������������',
  `def_value` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������',
  `opt_value` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������',
  `text_size` varchar(20) default NULL COMMENT '������������������������������������������������������',
  `area_rows` varchar(3) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `area_cols` varchar(3) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `help` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `help_position` varchar(1) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `data_type` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_single` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_channel` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_custom` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_display` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`modelitem_id`),
  KEY `fk_jc_item_model` (`model_id`),
  CONSTRAINT `fk_jc_item_model` FOREIGN KEY (`model_id`) REFERENCES `jc_model` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(1,1,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(2,1,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(3,1,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(4,1,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(5,1,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(6,1,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(7,1,'tplContent','选择模型模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(8,1,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(9,1,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(10,1,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(11,1,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(12,1,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(13,1,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(14,1,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(15,1,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(16,1,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(17,1,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(18,1,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(19,1,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(20,1,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(21,1,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(22,1,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(23,1,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(24,1,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(25,1,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(26,1,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(27,1,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(28,1,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(29,1,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(30,1,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(31,1,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(32,1,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(33,1,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(34,1,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(35,1,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(36,1,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(37,1,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(38,1,'attachments','附件',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(39,1,'media','多媒体',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(40,1,'txt','内容',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(42,2,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(43,2,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(44,2,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(45,2,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(46,2,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(47,2,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(48,2,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(49,2,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(50,2,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(51,2,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(52,2,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(53,2,'txt','内容',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(54,3,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(55,3,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(56,3,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(57,3,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(58,3,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(59,3,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(60,3,'tplContent','选择模型模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(61,3,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(62,3,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(63,3,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(64,3,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(65,3,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(66,3,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(67,3,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(68,3,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(69,3,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(70,3,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(73,3,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(74,3,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(75,3,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(76,3,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(77,3,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(78,3,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(79,3,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(80,3,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(81,3,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(82,3,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(83,3,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(84,3,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(85,3,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(86,3,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(87,3,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(88,3,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(89,3,'attachments','附件',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(90,3,'media','多媒体',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(91,3,'txt','内容',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(92,3,'pictures','图片集',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(93,4,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(94,4,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(95,4,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(96,4,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(97,4,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(98,4,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(99,4,'tplContent','选择模型模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(100,4,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(101,4,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(102,4,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(103,4,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(104,4,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(105,4,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(106,4,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(107,4,'channelId','栏目',1,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(108,4,'title','软件名称',2,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(109,4,'shortTitle','软件简称',3,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(110,4,'titleColor','标题颜色',4,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(111,4,'description','摘要',5,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(112,4,'author','发布人',6,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(113,4,'viewGroupIds','浏览权限',7,null,null,null,null,null,null,null,7,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(114,4,'topLevel','固顶级别',8,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(115,4,'releaseDate','发布时间',9,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(116,4,'typeId','内容类型',21,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(117,4,'tplContent','指定模板',22,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(118,4,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(119,4,'attachments','资源上传',11,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(120,4,'txt','软件介绍',20,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(121,4,'softType','软件类型',12,'国产软件','国产软件,国外软件','100','3','30',null,null,6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(123,4,'relatedLink','相关链接',14,'http://','','50','3','30','','',1,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(124,4,'demoUrl','演示地址',15,'http://',null,'60','3','30',null,null,1,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(125,5,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(126,5,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(127,5,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(128,5,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(129,5,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(130,5,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(131,5,'tplContent','选择模型模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(132,5,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(133,5,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(134,5,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(135,5,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(136,5,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(137,5,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(138,5,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(139,5,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(140,5,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(141,5,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(142,5,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(143,5,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(144,5,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(145,5,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(146,5,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(147,5,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(148,5,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(149,5,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(150,5,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(151,5,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(152,5,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(153,5,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(154,5,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(155,5,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(156,5,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(157,5,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(158,5,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(159,5,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(160,5,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(161,5,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(162,5,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(163,5,'pictures','图片集',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(164,6,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(165,6,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(166,6,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(167,6,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(168,6,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(169,6,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(170,6,'tplContent','选择模型模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(171,6,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(172,6,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(173,6,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(174,6,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(175,6,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(176,6,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(177,6,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(178,6,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(179,6,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(180,6,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(181,6,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(182,6,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(183,6,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(184,6,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(185,6,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(186,6,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(187,6,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(188,6,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(189,6,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(190,6,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(191,6,'description','内容简介',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(192,6,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(193,6,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(194,6,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(195,6,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(196,6,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(197,6,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(198,6,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(199,6,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(200,6,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(201,6,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(202,6,'attachments','附件',10,null,null,null,null,null,null,null,1,0,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(203,6,'media','多媒体',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(204,7,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(205,7,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(206,7,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(207,7,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(208,7,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(209,7,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(210,7,'tplContent','选择模型模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(211,7,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(212,7,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(213,7,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(214,7,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(215,7,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(216,7,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(217,7,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(218,7,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(219,7,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(220,7,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(221,7,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(222,7,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(223,7,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(224,7,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(225,7,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(226,7,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(227,7,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(228,7,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(229,7,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(230,7,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(231,7,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(232,7,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(233,7,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(234,7,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(235,7,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(236,7,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(237,7,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(238,7,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(239,7,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(240,7,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(241,7,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(242,7,'txt','内容',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(243,7,'marketprice','市场价',10,null,null,null,'3','30',null,null,3,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(244,7,'price','价格',10,null,null,null,'3','30',null,null,3,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(246,4,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(248,7,'txt1','内容1',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(249,8,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(250,8,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(251,8,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(252,8,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(253,8,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(254,8,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(255,8,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(256,8,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(257,8,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(258,8,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(259,8,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(260,8,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(261,8,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(262,8,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(263,8,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(264,8,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(265,8,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(266,8,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(267,8,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(268,8,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(269,8,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(270,8,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(271,8,'channelId','栏目',1,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(272,8,'title','岗位名称',1,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(275,8,'tagStr','Tag标签',7,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(279,8,'viewGroupIds','浏览权限',8,null,null,null,null,null,null,null,7,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(280,8,'topLevel','固顶级别',7,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(281,8,'releaseDate','发布时间',2,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(282,8,'typeId','内容类型',7,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(283,8,'tplContent','指定模板',8,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(289,8,'txt','职位描述',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(290,8,'deadline','截止日期',2,null,null,null,'3','30','留空永久有效',null,5,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(291,8,'experience','工作经验',3,null,'1年以内,1年以上,2年以上,3年以上,4年以上,5年以上,不限',null,'3','30',null,null,6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(292,8,'education','最低学历',3,'','专科,本科,硕士,不限','','3','30','','',6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(293,8,'salary','职位月薪',4,null,'2000-3000,3000-5000,4000-6000,5000-7000,6000-8000,8000+,面议',null,'3','30',null,null,6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(294,8,'workplace','工作地点',4,'','北京,上海,深圳,广州,重庆,南京,杭州,西安,南昌','','3','30','','',7,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(295,8,'nature','工作性质',5,'','全职,兼职','','3','30','','',8,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(296,8,'hasmanage','管理经验',5,'','要求,不要求','','3','30','','',8,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(297,8,'nums','招聘人数',6,'','1-3人,3-5人,5-10人,若干','','3','30','','',6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(298,8,'category','职位类别',6,null,'项目主管,java高级工程师,java工程师,网页设计师,测试人员,技术支持',null,'3','30',null,null,6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(299,6,'Director','导演',10,null,null,null,'1','2',null,null,1,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(300,6,'Starring','主演',10,null,null,null,'1','30',null,'2',1,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(301,6,'VideoType','视频类型',70,null,'历史,古装,都市,喜剧,悬疑,动作,谍战,伦理,战争,惊悚',null,'3','30',null,null,7,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(302,6,'Video','影片信息',70,null,'正片,预告片',null,'3','30',null,null,6,0,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(303,10,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(304,10,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(305,10,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(306,10,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(307,10,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(308,10,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(309,10,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(310,10,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(311,10,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(312,10,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(313,10,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(314,10,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(315,10,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(316,10,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(317,10,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(318,10,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(319,10,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(320,10,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(321,10,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(322,10,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(323,10,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(324,10,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(325,10,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(326,10,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(327,10,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(328,10,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(329,10,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(330,10,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(331,10,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(332,10,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(334,10,'xm','姓名',70,'','','','3','30','','',1,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(336,10,'lxfs','联系方式',70,'','','','3','30','','',1,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(337,10,'Email','Email',70,'','','','3','30','','',1,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(338,10,'zjkc','主讲课程',70,'','','','3','30','','',4,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(339,10,'yjfx','研究方向',70,'','','','3','30','','',4,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(340,10,'grjs','个人介绍',70,'','','','3','30','','',4,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(341,10,'kyjhj','科研及获奖',70,'','','','3','30','','',4,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(349,10,'xb','性别',70,'','男,女','','3','30','','',8,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(352,10,'txt','您的生活照',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(353,11,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(354,11,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(355,11,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(356,11,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(357,11,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(358,11,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(359,11,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(360,11,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(361,11,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(362,11,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(363,11,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(364,11,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(365,11,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(366,11,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(367,11,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(368,11,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(369,11,'attachments','附件',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(370,11,'media','多媒体',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(371,11,'txt','内容',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(372,11,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(373,11,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(374,11,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(375,11,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(376,11,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(377,11,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(378,11,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(379,11,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(380,11,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(381,11,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(382,11,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(383,11,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(384,11,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(385,11,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(386,11,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(387,11,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(388,11,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(389,11,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(390,11,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(391,11,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(392,11,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(393,12,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(394,12,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(395,12,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(396,12,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(397,12,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(398,12,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(399,12,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(400,12,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(401,12,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(402,12,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(403,12,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(404,12,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(405,12,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(406,12,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(407,12,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(408,12,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(409,12,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(410,12,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(411,12,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(412,12,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(413,12,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(414,12,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(415,12,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(416,12,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(417,12,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(418,12,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(419,12,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(420,12,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(421,12,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(422,12,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(423,12,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(424,12,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(425,12,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(426,12,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(427,12,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(428,12,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(429,12,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(430,12,'attachments','附件',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(431,12,'media','多媒体',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(432,12,'txt','内容',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(433,13,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(434,13,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(435,13,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(436,13,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(437,13,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(438,13,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(439,13,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(440,13,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(441,13,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(442,13,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(443,13,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(444,13,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(445,13,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(446,13,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(447,13,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(448,13,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(449,13,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(450,13,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(451,13,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(452,13,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(453,13,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(454,13,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(455,13,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(456,13,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(457,13,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(458,13,'tagStr','Tag标签',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(459,13,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(460,13,'author','作者',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(461,13,'origin','来源',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(462,13,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(463,13,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(464,13,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(465,13,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(466,13,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(467,13,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(468,13,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(469,13,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(470,13,'attachments','附件',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(471,13,'media','多媒体',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(472,13,'txt','内容',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(473,14,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(474,14,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(475,14,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(476,14,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(477,14,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(478,14,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(479,14,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(480,14,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(481,14,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(482,14,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(483,14,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(484,14,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(485,14,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(486,14,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(487,14,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(488,14,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(489,14,'commentControl','评论',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(490,14,'channelId','栏目',10,null,null,null,null,null,null,null,6,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(491,14,'title','标题',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(492,14,'shortTitle','简短标题',10,null,null,null,null,null,null,null,1,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(493,14,'titleColor','标题颜色',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(494,14,'description','摘要',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(495,14,'author','发布人',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(496,14,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(497,14,'topLevel','固顶级别',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(498,14,'releaseDate','发布时间',10,null,null,null,null,null,null,null,5,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(499,14,'typeId','内容类型',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(500,14,'tplContent','指定模板',10,null,null,null,null,null,null,null,6,0,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(501,14,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(502,14,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(503,14,'attachments','需要上传的资源',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(504,14,'softType','资源类型',70,null,null,null,'3','30',null,null,1,1,0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(505,14,'txt','资源介绍',10,null,null,null,null,null,null,null,4,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(506,14,'typeImg','类型图',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(507,16,'name','栏目名称',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(508,16,'path','访问路径',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(509,16,'title','meta标题',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(510,16,'keywords','meta关键字',10,null,null,null,null,null,null,null,1,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(511,16,'description','meta描述',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(512,16,'tplChannel','栏目模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(513,16,'tplContent','内容模板',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(514,16,'channelStatic','栏目静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(515,16,'contentStatic','内容静态化',10,null,null,null,null,null,null,null,4,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(516,16,'priority','排列顺序',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(517,16,'display','显示',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(518,16,'docImg','文档图片',10,null,null,null,null,null,null,null,8,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(519,16,'finalStep','终审级别',10,null,null,null,null,null,null,null,2,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(520,16,'afterCheck','审核后',10,null,null,null,null,null,null,null,6,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(521,16,'commentControl','评论',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(522,16,'allowUpdown','顶踩',10,null,null,null,null,null,null,null,8,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(523,16,'viewGroupIds','浏览权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(524,16,'contriGroupIds','投稿权限',10,null,null,null,null,null,null,null,7,0,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(525,16,'userIds','管理权限',10,null,null,null,null,null,null,null,7,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(526,16,'link','外部链接',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(527,16,'titleImg','标题图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(528,16,'contentImg','内容图',10,null,null,null,null,null,null,null,1,1,1,0,1);
JEECMS_BACKUP_ INSERT INTO `jc_model_item` VALUES(530,10,'attachments','论文链接附件',10,null,null,null,null,null,null,null,1,1,0,0,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_receiver_message;
JEECMS_BACKUP_CREATE TABLE `jc_receiver_message` (
  `msg_re_id` int(11) NOT NULL auto_increment COMMENT '������������������������������������������������������id',
  `msg_title` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������',
  `msg_content` longtext COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `send_time` timestamp NULL default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `msg_send_user` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `msg_receiver_user` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������',
  `site_id` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������',
  `msg_status` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������0���������������������������������������������������������������������������������1������������������������������������������������������',
  `msg_box` int(2) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������ 0��������������������������������������������������������������������������������� 1��������������������������������������������������������������������������������� 2��������������������������������������������������������������������������������� 3���������������������������������������������������������������������������������',
  `msg_id` int(11) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������id',
  PRIMARY KEY  (`msg_re_id`),
  KEY `jc_receiver_message_user_send` (`msg_send_user`),
  KEY `jc_receiver_message_user_receiver` (`msg_receiver_user`),
  KEY `jc_receiver_message_site` (`site_id`),
  KEY `jc_receiver_message_message` (`msg_re_id`),
  KEY `fk_jc_receiver_message_message` (`msg_id`),
  CONSTRAINT `fk_jc_receiver_message_message` FOREIGN KEY (`msg_id`) REFERENCES `jc_message` (`msg_id`),
  CONSTRAINT `fk_jc_receiver_message_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`),
  CONSTRAINT `fk_jc_receiver_message_user_receiver` FOREIGN KEY (`msg_receiver_user`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_receiver_message_user_send` FOREIGN KEY (`msg_send_user`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_role;
JEECMS_BACKUP_CREATE TABLE `jc_role` (
  `role_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) default NULL,
  `role_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_super` char(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`role_id`),
  KEY `fk_jc_role_site` (`site_id`),
  CONSTRAINT `fk_jc_role_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_role` VALUES(1,null,'管理员',10,'1');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_role_permission;
JEECMS_BACKUP_CREATE TABLE `jc_role_permission` (
  `role_id` int(11) NOT NULL,
  `uri` varchar(100) NOT NULL,
  KEY `fk_jc_permission_role` (`role_id`),
  CONSTRAINT `fk_jc_permission_role` FOREIGN KEY (`role_id`) REFERENCES `jc_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_sensitivity;
JEECMS_BACKUP_CREATE TABLE `jc_sensitivity` (
  `sensitivity_id` int(11) NOT NULL auto_increment,
  `search` varchar(255) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `replacement` varchar(255) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  PRIMARY KEY  (`sensitivity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_sensitivity` VALUES(1,'法论功','***');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site;
JEECMS_BACKUP_CREATE TABLE `jc_site` (
  `site_id` int(11) NOT NULL auto_increment,
  `config_id` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `ftp_upload_id` int(11) default NULL COMMENT '������������������������������������������������������ftp',
  `domain` varchar(50) NOT NULL COMMENT '������������������������������������������������������',
  `site_path` varchar(20) NOT NULL COMMENT '������������������������������������������������������',
  `site_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `short_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `protocol` varchar(20) NOT NULL default 'http://' COMMENT '������������������������������������������������������',
  `dynamic_suffix` varchar(10) NOT NULL default '.jhtml' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `static_suffix` varchar(10) NOT NULL default '.html' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `static_dir` varchar(50) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_index_to_root` char(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_static_index` char(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `locale_admin` varchar(10) NOT NULL default 'zh_CN' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `locale_front` varchar(10) NOT NULL default 'zh_CN' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `tpl_solution` varchar(50) NOT NULL default 'default' COMMENT '������������������������������������������������������������������������������������������������������������',
  `final_step` tinyint(4) NOT NULL default '2' COMMENT '������������������������������������������������������������������������������������������������������������',
  `after_check` tinyint(4) NOT NULL default '2' COMMENT '���������������������������������������������������������������������������������(1:������������������������������������������������������������������������������������������������������������������������������������������������������������������;2:���������������������������������������������������������������������������������������������������������������������������������������;3:���������������������������������������������������������������������������������������������������������������������������������������)',
  `is_relative_path` char(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_recycle_on` char(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `domain_alias` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `domain_redirect` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_master` tinyint(1) default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`site_id`),
  UNIQUE KEY `ak_domain` (`domain`),
  KEY `fk_jc_site_config` (`config_id`),
  KEY `fk_jc_site_upload_ftp` (`ftp_upload_id`),
  CONSTRAINT `fk_jc_site_config` FOREIGN KEY (`config_id`) REFERENCES `jc_config` (`config_id`),
  CONSTRAINT `fk_jc_site_upload_ftp` FOREIGN KEY (`ftp_upload_id`) REFERENCES `jo_ftp` (`ftp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_site` VALUES(1,1,null,'localhost','www','cug空间信息工程系门户','cug空间信息工程系门户','http://','.htm','.html','/zhuzhan','0','0','zh_CN','zh_CN','red',2,1,'1','1','','',0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site_attr;
JEECMS_BACKUP_CREATE TABLE `jc_site_attr` (
  `site_id` int(11) NOT NULL,
  `attr_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������',
  `attr_value` varchar(255) default NULL COMMENT '���������������������������',
  KEY `fk_jc_attr_site` (`site_id`),
  CONSTRAINT `fk_jc_attr_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site_cfg;
JEECMS_BACKUP_CREATE TABLE `jc_site_cfg` (
  `site_id` int(11) NOT NULL,
  `cfg_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������',
  `cfg_value` varchar(255) default NULL COMMENT '���������������������������',
  KEY `fk_jc_cfg_site` (`site_id`),
  CONSTRAINT `fk_jc_cfg_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site_company;
JEECMS_BACKUP_CREATE TABLE `jc_site_company` (
  `site_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `scale` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `nature` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `industry` varchar(1000) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `contact` varchar(500) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `description` text COMMENT '������������������������������������������������������������������������������������������������������������',
  `address` varchar(500) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `longitude` float(5,2) default NULL COMMENT '������������������������������������������������������',
  `latitude` float(4,2) default NULL COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`site_id`),
  CONSTRAINT `fk_jc_company_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_site_company` VALUES(1,'江西金磊科技发展有限公司','20-50人','私企','互联网','电话：0791-86538070　13576281815','<p>江西金磊科技发展有限公司(以下简称金磊科技)成立于2003年，旗下产品JEECMS内容管理系统是国内java开源CMS行业知名度最高、用户量最大的站群管理系统。金磊科技是一家专注java WEB应用软件研发高新技术企业。</p>\r\n<p>金磊科技自2003年成立至今，一直致力研究和应用java技术，2003年成立至2007年，公司专注于政府、财政、烟草和矿业等Java应用软件开发外包业务;2008年开始自主研发并经营JEECMS、JEEBBS、JSPGOU、总枢纽、数据交换系统等专利产品，目前JEECMS系列产品以其强大、稳定、安全、高效、跨平台等多方面的优点，已经广泛应用于政府(部委和省级政府部门、市、县、乡及委办局)、教育科研(大、中、小学及各地方教育局)、电信运营商、金融(证券、保险及银行)、企业(矿业、煤炭、旅游、石油集团及大中型制造类企业)、新闻媒体(报社、网媒)等数字化信息平台建设领域，并获业内一致的好评。</p>\r\n<p>金磊科技视创新和服务为企业生存之本，致力研发高品质软件产品的同时，全心全意服务好客户，尽心尽力为客户创造价值。每一年、每一天，金磊科技都伴随着您一起成长!</p>\r\n','江西省南昌市抚生路669号6栋B座1101',null,null);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site_flow;
JEECMS_BACKUP_CREATE TABLE `jc_site_flow` (
  `flow_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) default NULL,
  `access_ip` varchar(50) NOT NULL default '127.0.0.1' COMMENT '���������������������������������������������������������������������������������ip',
  `access_date` varchar(50) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `access_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `access_page` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������������������������������������������������������������',
  `referer_website` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `referer_page` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `referer_keyword` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `area` varchar(50) default NULL COMMENT '������������������������������������������������������',
  `session_id` varchar(50) NOT NULL default '' COMMENT 'cookie������������������������������������������������������',
  PRIMARY KEY  (`flow_id`),
  KEY `fk_jc_flow_site` (`site_id`),
  CONSTRAINT `fk_jc_flow_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:16:18.0','http：//localhost：8080/','','','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(2,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:27:25.0','http：//localhost：8080/zhuzhan/szll/20140326/548.html','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(3,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:30:00.0','http：//localhost：8080/','','','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(4,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:30:04.0','http：//localhost：8080/zhuzhan/szll/20140326/548.html','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(5,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:30:02.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(6,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:31:15.0','http：//localhost：8080/zhuzhan/szll/20140326/549.html','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(7,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:32:20.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(8,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:33:50.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(9,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:34:36.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(10,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:39:04.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(11,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:39:07.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(12,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:40:39.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(13,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:41:29.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(14,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:41:31.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(15,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:41:30.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(16,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:53:27.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(17,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:53:58.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(18,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:53:43.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','C6FC9A60BD309EC3B05C0E5350A2B2FC');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(19,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:55:06.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(20,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:55:33.0','http：//localhost：8080/zhuzhan/szll/20140326/551.html','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(21,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:57:57.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(22,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:57:59.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(23,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:58:56.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(24,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:59:36.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(25,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:58:58.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(26,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:58:58.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(27,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:59:37.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(28,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:59:37.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(29,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:59:38.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(30,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:59:37.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(31,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:16.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(32,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 19:59:38.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(33,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:18.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(34,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:18.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(35,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:18.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(36,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:17.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(37,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:01:15.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(38,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:17.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(39,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:29.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(40,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:00:28.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(41,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:19:52.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(42,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:19:58.0','http：//localhost：8080/szll/551.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(43,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:21:33.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(44,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:23:59.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(45,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:24:01.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(46,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:24:41.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(47,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:28:21.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(48,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:02.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(49,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:32.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(50,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:31.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(51,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:32.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(52,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:07.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(53,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:08.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(54,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:31.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(55,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:03.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(56,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:30.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(57,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:32.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(58,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:22.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(59,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:30:06.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(60,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:33:19.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(61,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:33:20.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(62,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:33:49.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(63,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:33:49.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(64,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:50:25.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(65,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:52:49.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(66,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:53:31.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(67,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:52:50.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(68,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:53:52.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(69,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:53:32.0','http：//localhost：8080/szll/551.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(70,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:54:00.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(71,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:53:58.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(72,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:54:35.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(73,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:55:10.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(74,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:55:14.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(75,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:56:46.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(76,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:57:11.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(77,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:57:14.0','http：//localhost：8080/szll/553.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(78,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 20:57:23.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(79,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:07:30.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(80,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:07:37.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(81,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:08:20.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(82,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:07:40.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(83,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:08:49.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(84,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:09:30.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(85,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:10:39.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(86,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:09:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(87,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:09:41.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(88,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:09:44.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(89,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:09:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(90,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 21:11:13.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(91,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:41:43.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','8A7803867F90C0D26CAA489AF53FD5F8');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(92,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:55:12.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(93,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:00.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(94,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:55:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(95,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:06.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(96,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:17.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(97,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:12.0','http：//localhost：8080/wldc/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(98,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:08.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(99,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:10.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(100,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:56:46.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(101,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:57:23.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(102,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:57:26.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(103,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:57:46.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(104,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:57:45.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(105,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:57:27.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(106,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:58:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(107,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:57:26.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wldc/index.jhtml','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(108,1,'0:0:0:0:0:0:0:1','2014-3-26','2014-03-26 22:59:04.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','9CB6687A0B33E9A13D396D1489291538');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(109,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:46:00.0','http：//localhost：8080/photo/439.htm','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(110,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:45:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(111,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:46:10.0','http：//localhost：8080/photo/438.htm','http：//localhost：8080','http：//localhost：8080/photo/439.htm','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(112,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:46:14.0','http：//localhost：8080/review/445.htm','http：//localhost：8080','http：//localhost：8080/photo/439.htm','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(113,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:46:21.0','http：//localhost：8080/mrzx/534.htm','http：//localhost：8080','http：//localhost：8080/review/443.htm','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(114,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:46:17.0','http：//localhost：8080/review/443.htm','http：//localhost：8080','http：//localhost：8080/review/445.htm','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(115,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:47:00.0','http：//localhost：8080/review/445.htm','http：//localhost：8080','http：//localhost：8080/review/445.htm','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(116,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:49:59.0','http：//localhost：8080/review/445.htm','http：//localhost：8080','http：//localhost：8080/photo/439.htm','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(117,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:52:59.0','http：//localhost：8080/','','','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(118,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:53:12.0','http：//localhost：8080/','','','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(119,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:53:32.0','http：//localhost：8080/','','','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(120,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:53:00.0','http：//localhost：8080/','','','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(121,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 07:53:24.0','http：//localhost：8080/','','','','\b','DED426FC16F1C836E377D9C12456ABAE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(122,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 10:42:45.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','60D691224F0DFCCACD2A84C247246007');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(123,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 10:42:51.0','http：//localhost：8080/szll/553.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','60D691224F0DFCCACD2A84C247246007');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(124,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 10:42:47.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','60D691224F0DFCCACD2A84C247246007');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(125,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 11:30:50.0','http：//localhost：8080/','','','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(126,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 13:46:32.0','http：//localhost：8080/','','','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(127,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 13:46:39.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(128,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 13:47:11.0','http：//localhost：8080/','','','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(129,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 13:46:43.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(130,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 13:51:32.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(131,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:00:06.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(132,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:00:10.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(133,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:01:32.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(134,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:02:40.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(135,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:05:51.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(136,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:08:09.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(137,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:08:11.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(138,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:09:38.0','http：//localhost：8080/zhuzhan/bkszs/','http：//localhost：8080','http：//localhost：8080/bkszs/555_2.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(139,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:08:13.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(140,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:08:29.0','http：//localhost：8080/zhuzhan/bkszs/','http：//localhost：8080','http：//localhost：8080/bkszs/555_2.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(141,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:08:18.0','http：//localhost：8080/bkszs/555_2.htm','http：//localhost：8080','http：//localhost：8080/bkszs/555.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(142,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:09:47.0','http：//localhost：8080/zhuzhan/zsjy/','http：//localhost：8080','http：//localhost：8080/zhuzhan/bkszs/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(143,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:09:39.0','http：//localhost：8080/zhuzhan/bkszs/','http：//localhost：8080','http：//localhost：8080/bkszs/555_2.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(144,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:09:45.0','http：//localhost：8080/zhuzhan/bkszs/','http：//localhost：8080','http：//localhost：8080/zhuzhan/bkszs/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(145,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:10:34.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(146,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:10:40.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(147,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:10:45.0','http：//localhost：8080/zhuzhan/bkszs/','http：//localhost：8080','http：//localhost：8080/bkszs/555.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(148,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:10:36.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(149,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:11:56.0','http：//localhost：8080/zhuzhan/bkszs/','http：//localhost：8080','http：//localhost：8080/bkszs/555.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(150,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:15:53.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(151,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:15:08.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(152,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:21:54.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(153,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:23:57.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(154,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:25:04.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(155,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:24:05.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(156,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:30:42.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(157,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:30:48.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(158,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:30:44.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(159,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:32:05.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(160,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:44:35.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(161,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:45:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(162,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:44:34.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(163,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:44:32.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(164,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:45:45.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(165,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:46:06.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(166,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:45:54.0','http：//localhost：8080/lxszs/557.htm','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(167,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:46:03.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(168,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:46:07.0','http：//localhost：8080/lxszs/557.htm','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(169,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:45:50.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(170,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:46:01.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(171,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:46:38.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/557.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(172,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 14:45:53.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(173,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:02:51.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(174,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:29.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(175,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:02:58.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(176,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:13.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(177,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:56.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(178,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:55.0','http：//localhost：8080/yjspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/wsxx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(179,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:52.0','http：//localhost：8080/yjspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/wsxx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(180,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:54.0','http：//localhost：8080/wsxx/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(181,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:36.0','http：//localhost：8080/wsxx/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(182,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:04:03.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(183,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:35.0','http：//localhost：8080/yjspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(184,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:03:33.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(185,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:11:45.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(186,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:19:02.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(187,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:11.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(188,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:21:55.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(189,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:18.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(190,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:15.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(191,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(192,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:16.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(193,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:23.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(194,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:17.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(195,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:20:25.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(196,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:29:21.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(197,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:30:30.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(198,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:29:22.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(199,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:42:39.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(200,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:45:42.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(201,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:25.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(202,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:28.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(203,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:50.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(204,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:39.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(205,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:32.0','http：//localhost：8080/yjsdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(206,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:48:25.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(207,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:46.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(208,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:33.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(209,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:30.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(210,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:27.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(211,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:41.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(212,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:46:36.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(213,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:48:34.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(214,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:48:31.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(215,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:48:33.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(216,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:50:05.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(217,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 15:48:35.0','http：//localhost：8080/yjsdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(218,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:19:44.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zxtz/559.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(219,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:19:47.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(220,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:20:17.0','http：//localhost：8080/system/174.htm','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(221,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:20:45.0','http：//localhost：8080/system/174.htm','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(222,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:21:18.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(223,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:22:57.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(224,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:21:40.0','http：//localhost：8080/system/333.htm','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(225,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:21:22.0','http：//localhost：8080/system/174.htm','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(226,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:24:07.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(227,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:24:47.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(228,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:25:26.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(229,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:25:30.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(230,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:25:28.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(231,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:25:56.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(232,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:40.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(233,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:49.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(234,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:50.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(235,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:47.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(236,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:36:08.0','http：//localhost：8080/network/index.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(237,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:58.0','http：//localhost：8080/system/index.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(238,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:43.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(239,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:37:19.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(240,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:35:45.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(241,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:37:50.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(242,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:05.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(243,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:09.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(244,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:08.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(245,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:07.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(246,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:10.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(247,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:37:54.0','http：//localhost：8080/system/index.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(248,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:03.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(249,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:39:42.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(250,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:38:01.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(251,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:15.0','http：//localhost：8080/system/index.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(252,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:42:16.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(253,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:23.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(254,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:33.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(255,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:22.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(256,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:25.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(257,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:26.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(258,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:41:24.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(259,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:12.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(260,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:42:24.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(261,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:42:18.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(262,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:42:20.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(263,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:42:22.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(264,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:42:20.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(265,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:37.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(266,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:17.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(267,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:42.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(268,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:38.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(269,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:16.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(270,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:19.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(271,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:35.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(272,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:18.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(273,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:33.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(274,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:15.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(275,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:40.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(276,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:41.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(277,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:43.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(278,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:36.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(279,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:44:04.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(280,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:53.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(281,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:44:21.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(282,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:48.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(283,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:51.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(284,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:49.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(285,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:43:55.0','http：//localhost：8080/system/174.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(286,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:44:24.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(287,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:16.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(288,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:44:23.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(289,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:44:26.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(290,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:17.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(291,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:26.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(292,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:25.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(293,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:29.0','http：//localhost：8080/system/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(294,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:24.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(295,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:19.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(296,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:21.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(297,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:19.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(298,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:55.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(299,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:24.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(300,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:20.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(301,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:26.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(302,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:58.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(303,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:57.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(304,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:47:00.0','http：//localhost：8080/mapgis/index.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(305,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:47:06.0','http：//localhost：8080/mapgis/index.htm','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(306,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:57.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(307,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:46:56.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(308,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:48:38.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(309,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 16:55:31.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(310,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:01:45.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(311,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:02:57.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(312,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:03:50.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(313,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:13:20.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(314,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:13:42.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(315,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:15.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(316,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:24.0','http：//localhost：8080/system/index.htm','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(317,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:32.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(318,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:21.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(319,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:20.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(320,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:18.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(321,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:17.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(322,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:22.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(323,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:15:19.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(324,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:39.0','http：//localhost：8080/wjxz/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(325,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:35.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(326,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:36.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(327,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:33.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(328,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:12.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(329,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:36.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(330,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:38.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(331,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:16:37.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(332,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:16.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(333,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:18.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(334,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:18:14.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(335,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:19.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(336,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:15.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(337,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:24.0','http：//localhost：8080/system/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(338,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:18.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(339,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:14.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(340,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:14.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(341,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:17:17.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(342,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:21:12.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(343,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:21:39.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(344,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:22:36.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(345,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:21:40.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(346,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:23:08.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(347,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:23:00.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(348,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:25:29.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(349,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:27:07.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(350,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:25:31.0','http：//localhost：8080/wjxz/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(351,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:28:06.0','http：//localhost：8080/wjxz/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(352,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:27:09.0','http：//localhost：8080/wjxz/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(353,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:28:20.0','http：//localhost：8080/wjxz/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(354,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:28:50.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(355,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:31:10.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(356,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:12.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(357,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:34:38.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(358,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:34:37.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(359,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:40.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(360,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:44.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(361,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:53.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(362,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:50.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(363,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:36:34.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(364,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:57.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(365,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:55.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(366,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:48.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(367,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:46.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(368,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:51.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(369,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:35:58.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(370,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:37:02.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(371,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:38:32.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(372,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:39:14.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(373,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:39:16.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(374,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:40:00.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(375,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:40:30.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(376,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 17:40:28.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wjxz/560.htm','','\b','7467154BA7ED153C6E77F2607CB24F8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(377,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 18:55:43.0','http：//localhost：8080/','','','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(378,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 18:59:20.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(379,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 18:59:13.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(380,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:00:01.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(381,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 18:59:11.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(382,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 18:59:17.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(383,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:00:50.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(384,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:01:06.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(385,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:01:04.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(386,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:01:09.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(387,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:01:18.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(388,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:01:21.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(389,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:01:03.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkszs/555.htm','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(390,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:02:05.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(391,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:02:59.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(392,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:02:16.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(393,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:02:07.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(394,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:02:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(395,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:02:13.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(396,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:03.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(397,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:37.0','http：//localhost：8080/login.jspx','http：//localhost：8080','http：//localhost：8080/login.jspx?returnUrl=/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(398,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:15.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(399,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:27.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(400,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:01.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(401,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:13.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(402,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:11.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/556.htm','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(403,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:03:05.0','http：//localhost：8080/yjszs/556.htm','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','CDC82C63473CD3678798E798FD3468DF');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(404,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:05:24.0','http：//localhost：8080/news/index.htm','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(405,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:21:17.0','http：//localhost：8080/zhuzhan/xzzx/','http：//localhost：8080','http：//localhost：8080/member/pwd.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(406,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:26:58.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(407,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:26:46.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(408,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(409,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:26:53.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(410,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:37.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(411,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:07.0','http：//localhost：8080/wsxx/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(412,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:48.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(413,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:42.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(414,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:04.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(415,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:51.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(416,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:44.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(417,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:55.0','http：//localhost：8080/lxszs/557.htm','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(418,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:40.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(419,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:53.0','http：//localhost：8080/yjsjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(420,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:02.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/557.htm','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(421,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:52.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(422,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:50.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(423,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:06.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(424,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:38.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(425,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:54.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsjy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(426,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:27:50.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(427,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:58.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/559.htm','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(428,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:23.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(429,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:14.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(430,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:12.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/wsxx/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(431,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:28:19.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/559.htm','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(432,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:29:33.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(433,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:29:19.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(434,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:29:00.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(435,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:38.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(436,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:02.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(437,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:02.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(438,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:40.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(439,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:41.0','http：//localhost：8080/yjsjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(440,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:58.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(441,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:00.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(442,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:44.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(443,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:59.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(444,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:59.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(445,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:56.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(446,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:06.0','http：//localhost：8080/zhuzhan/xzzx/','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(447,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:57.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(448,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:39.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(449,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:13.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(450,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:42.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsjy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(451,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:43.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(452,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:43.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(453,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:47.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(454,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:30:55.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(455,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:24.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(456,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:21.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(457,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:23.0','http：//localhost：8080/xzzx/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(458,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:31:16.0','http：//localhost：8080/wjxz/index.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(459,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:35.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(460,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:33.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(461,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:37.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(462,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:24.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xzzx/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(463,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:33.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(464,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:39.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(465,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:29.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(466,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:35.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(467,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:27.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(468,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:34.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(469,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:38.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(470,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:31.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(471,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:31.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(472,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:29.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(473,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:33:51.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(474,1,'0:0:0:0:0:0:0:1','2014-3-27','2014-03-27 19:32:28.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','2854AB735AF4FC37F5273B4E680980D0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(475,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:10:16.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(476,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:10:40.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(477,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:13:25.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(478,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:16:25.0','http：//localhost：8080/','','','','\b','63F077E06AE4F791F18360CA5B59932E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(479,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:19:58.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(480,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:20:13.0','http：//localhost：8080/szll/552.htm','http：//localhost：8080','http：//localhost：8080/search.jspx?q=樊文有&channelId=62','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(481,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:21:19.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(482,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:22:08.0','http：//localhost：8080/zhuzhan/szll/','http：//localhost：8080','http：//localhost：8080/search.jspx?q=樊文有&channelId=62','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(483,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:28:09.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(484,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:29:19.0','http：//localhost：8080/gnxw/507.htm','http：//localhost：8080','http：//localhost：8080/','','\b','F6D090E757A15102BEA8A488096A3FA2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(485,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:30:55.0','http：//localhost：8080/world/511.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(486,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:29:33.0','http：//localhost：8080/photo/439.htm','http：//localhost：8080','http：//localhost：8080/gnxw/507.htm','','\b','F6D090E757A15102BEA8A488096A3FA2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(487,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:38:21.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(488,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:39:38.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(489,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:37.0','http：//localhost：8080/','','','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(490,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:46.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(491,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:40.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(492,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:49.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(493,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:42.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(494,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:50.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(495,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:11.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(496,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:44:44.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(497,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:13.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(498,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:35.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(499,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:37.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(500,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:46:15.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(501,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:38.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(502,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:33.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(503,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:45:23.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(504,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:48:28.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(505,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:49:07.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(506,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:48:30.0','http：//localhost：8080/xwtt/561.htm','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(507,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:49:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(508,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:49:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(509,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:49:09.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(510,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:49:54.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(511,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:54:21.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(512,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:56:04.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(513,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 15:58:11.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(514,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:00:50.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(515,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:02:27.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(516,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:03:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(517,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:10:38.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(518,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:12:44.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(519,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:13:58.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(520,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:14:32.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(521,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:20:47.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(522,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:22:12.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(523,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:22:34.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(524,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:23:05.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(525,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:23:37.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(526,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:24:08.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(527,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:23:52.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(528,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:27:16.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(529,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:28:42.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(530,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:29:49.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(531,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:30:24.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(532,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:30:25.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(533,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:31:29.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(534,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:32:16.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(535,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:32:41.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(536,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:32:50.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(537,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:33:23.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(538,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:33:00.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(539,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:32:51.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(540,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:34:28.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(541,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:33:39.0','http：//localhost：8080/gnxw/506.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(542,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:35:19.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(543,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:35:48.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(544,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:35:50.0','http：//localhost：8080/xwtt/561.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(545,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:37:30.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(546,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:36:19.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(547,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:38:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(548,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:38:35.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(549,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:39:08.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(550,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:39:19.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(551,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:39:15.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(552,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:40:55.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(553,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:39:36.0','http：//localhost：8080/xwtt/562.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(554,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:39:32.0','http：//localhost：8080/xwtt/561.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(555,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:41:32.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(556,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:42:06.0','http：//localhost：8080/xwtt/562.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(557,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:43:30.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(558,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:45:33.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(559,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:43:49.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(560,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:47:36.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(561,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:48:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(562,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:49:55.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(563,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:50:44.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(564,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:51:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(565,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:50:51.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(566,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:52:39.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(567,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:52:53.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(568,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:52:41.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(569,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:54:19.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(570,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:52:50.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(571,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:58:12.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(572,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:57:25.0','http：//localhost：8080/yjsdt/564.htm','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(573,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:59:35.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(574,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 16:58:31.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(575,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:00:09.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(576,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:00:32.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(577,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:00:21.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(578,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:00:56.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(579,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:01:30.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(580,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:01:59.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(581,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:02:07.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','22E94E8F05C27D708DE20CA41161DCE2');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(582,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:07:50.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(583,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:08:52.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(584,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:09:11.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(585,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:08:53.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(586,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:09:25.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(587,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:10:11.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(588,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:10:31.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(589,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:12:25.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(590,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:12:29.0','http：//localhost：8080/szll/566.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(591,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 17:14:01.0','http：//localhost：8080/szll/566.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','B1950E21CBB3A68B03D19D0D6E28B887');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(592,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:43:51.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(593,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:44:53.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(594,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:45:49.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(595,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:45:18.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(596,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:46:17.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(597,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:46:29.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(598,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:46:04.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(599,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:47:31.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(600,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:47:56.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(601,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:48:14.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(602,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:48:57.0','http：//localhost：8080/','','','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(603,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 19:52:59.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(604,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:06:33.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(605,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:08:20.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(606,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:10:07.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(607,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:32.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(608,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:23.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(609,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:16.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(610,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:12.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(611,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:32.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(612,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:52.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(613,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:39.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(614,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:46.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(615,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:36.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(616,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:40.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(617,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:36.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(618,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:49.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(619,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:14:02.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(620,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:13:45.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(621,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:14:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(622,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:14:07.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(623,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:14:06.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(624,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:14:06.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(625,1,'0:0:0:0:0:0:0:1','2014-3-28','2014-03-28 20:14:48.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/search.jspx?q=教授&channelId=','','\b','9E8071A7AEE1D517BAB863A29B4D34CA');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(626,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:36:06.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/559.htm','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(627,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:37:28.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(628,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:36:17.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(629,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:36:18.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(630,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:36:09.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(631,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:38:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(632,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:39:21.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(633,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:39:41.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(634,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:39:56.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(635,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:42:31.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(636,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:42:32.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(637,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:42:34.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(638,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:42:53.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/search.jspx?q=教授&channelId=','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(639,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:44:02.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(640,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:45:34.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(641,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:48:11.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(642,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:49:33.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(643,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:50:06.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(644,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:50:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(645,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:51:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(646,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:50:11.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(647,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:52:37.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(648,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 09:58:12.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(649,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:05:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(650,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:07:40.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(651,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:05:45.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(652,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:09:36.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(653,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:10:30.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(654,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:07.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(655,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:11.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(656,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:19.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(657,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:20.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(658,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:08.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(659,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:06.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(660,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:23.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(661,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:10.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(662,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:44.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(663,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:17.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(664,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:09.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(665,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:13.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(666,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:13:03.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','531454CF83A1B09BE9A5F03C77D1C017');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(667,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:44:50.0','http：//localhost：8080/login.jspx','http：//localhost：8080','http：//localhost：8080/register.jspx','','\b','75BD80671141D82659C94BD595F562DD');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(668,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:45:05.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','75BD80671141D82659C94BD595F562DD');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(669,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:45:31.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','75BD80671141D82659C94BD595F562DD');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(670,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:45:44.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/','','\b','75BD80671141D82659C94BD595F562DD');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(671,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:45:54.0','http：//localhost：8080/login.jspx','http：//localhost：8080','http：//localhost：8080/login.jspx?returnUrl=/','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(672,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:46:43.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/login.jspx','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(673,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:49:53.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(674,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:51:16.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(675,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:50:06.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(676,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:52:09.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(677,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:53:28.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(678,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 10:55:36.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(679,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:05:23.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(680,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:08:45.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/560.htm','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(681,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:21.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(682,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:15:15.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(683,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:21.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(684,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:24.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(685,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:31.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(686,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:22.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(687,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:25.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(688,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:25.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(689,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:33.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(690,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:41.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(691,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:42.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(692,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:32.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(693,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:25.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(694,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:24.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(695,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:13:43.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(696,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:15:23.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(697,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:15:17.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(698,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:15:24.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(699,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:16:44.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(700,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:15:15.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(701,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:20:02.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(702,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:20:46.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(703,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:10.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(704,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:25:54.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(705,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:11.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(706,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:02.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(707,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:00.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(708,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:11.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(709,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:02.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(710,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:12.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(711,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:24:10.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(712,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:25:56.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(713,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:25:56.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(714,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:26:49.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(715,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:25:55.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(716,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:26:01.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(717,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:26:19.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(718,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:26:18.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(719,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:25:57.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(720,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:25:56.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(721,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:26:02.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(722,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:28:06.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(723,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:28:49.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(724,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:29:27.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(725,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:29:28.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(726,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:31:06.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(727,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:34:57.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/580.htm','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(728,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:24.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(729,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:23.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(730,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:22.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(731,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:56.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(732,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:24.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(733,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:26.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(734,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:01.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(735,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:23.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(736,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:35:59.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(737,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:02.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(738,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:00.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(739,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:29.0','http：//localhost：8080/bkszs/555.htm','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(740,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:24.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsjy/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(741,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:01.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(742,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:05.0','http：//localhost：8080/yjsjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(743,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:37:16.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/559.htm','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(744,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:42.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(745,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:39.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(746,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 11:36:35.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','411E21B301BA454E3C4D9241A8695C79');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(747,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:45:30.0','http：//localhost：8080/bksdt/570.htm','http：//localhost：8080','http：//localhost：8080/bksdt/569.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(748,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:45:36.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/570.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(749,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:45:57.0','http：//localhost：8080/bksdt/576.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(750,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:25.0','http：//localhost：8080/xyxw/index_2.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(751,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:46:02.0','http：//localhost：8080/bksdt/574.htm','http：//localhost：8080','http：//localhost：8080/bksdt/575.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(752,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:46:00.0','http：//localhost：8080/bksdt/576.htm','http：//localhost：8080','http：//localhost：8080/bksdt/577.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(753,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:46:01.0','http：//localhost：8080/bksdt/575.htm','http：//localhost：8080','http：//localhost：8080/bksdt/576.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(754,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:46:00.0','http：//localhost：8080/bksdt/577.htm','http：//localhost：8080','http：//localhost：8080/bksdt/576.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(755,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:46:03.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/bksdt/574.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(756,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:40.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index_2.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(757,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:48.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(758,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:29.0','http：//localhost：8080/xyxw/index_3.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index_2.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(759,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:32.0','http：//localhost：8080/xyxw/index_2.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index_3.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(760,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:48.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(761,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:48:27.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(762,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:47:41.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(763,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:49:05.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(764,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:52:42.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(765,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 14:59:57.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(766,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:00:04.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(767,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:25.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(768,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:37.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(769,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:44.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(770,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:46.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(771,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:02:15.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(772,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:49.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(773,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:39.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(774,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:01:47.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(775,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:02:47.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(776,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:02:24.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(777,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:02:18.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(778,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:14.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(779,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:11.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(780,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:18.0','http：//localhost：8080/yjsjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(781,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:16.0','http：//localhost：8080/yjszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(782,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:16.0','http：//localhost：8080/lxszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjszs/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(783,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:17.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/lxszs/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(784,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:12.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(785,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:31.0','http：//localhost：8080/wsxx/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(786,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:24.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsjy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(787,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:26.0','http：//localhost：8080/yjsjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(788,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:26.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsjy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(789,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:50.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/wsxx/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(790,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:28.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(791,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:03:25.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(792,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:12:33.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(793,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:12:47.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(794,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:12:57.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(795,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:13:04.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(796,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:12:36.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(797,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:13:01.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(798,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:26:57.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(799,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:28:57.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(800,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:30:49.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(801,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:28:58.0','http：//localhost：8080/wsxx/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(802,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:29:12.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/wsxx/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(803,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:31:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(804,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:16.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(805,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:30:52.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(806,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:31:01.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(807,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:30:53.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(808,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:37.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(809,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:45.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(810,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:48.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(811,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:18.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(812,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:32.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(813,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:26.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(814,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:30.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(815,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:32:34.0','http：//localhost：8080/yjsdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(816,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:14.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(817,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:15.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(818,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:17.0','http：//localhost：8080/yjsdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(819,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:09.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(820,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:10.0','http：//localhost：8080/yjsdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(821,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:19.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(822,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:33:12.0','http：//localhost：8080/yjsdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(823,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:35:49.0','http：//localhost：8080/xwtt/580.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(824,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:35:53.0','http：//localhost：8080/jsscdzl/579.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(825,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:36:23.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/o_update.do','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(826,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:36:00.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/v_list.do','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(827,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:36:36.0','http：//localhost：8080/bksdt/574.htm','http：//localhost：8080','http：//localhost：8080/jeeadmin/jeecms/content/o_update.do','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(828,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:38:22.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(829,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:38:56.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/bksdt/573_2.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(830,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:38:30.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(831,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:38:51.0','http：//localhost：8080/bksdt/573_2.htm','http：//localhost：8080','http：//localhost：8080/bksdt/573.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(832,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:38:23.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(833,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:39:36.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(834,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:40:11.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(835,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:40:22.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(836,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:40:28.0','http：//localhost：8080/bksdt/573.htm','http：//localhost：8080','http：//localhost：8080/bksdt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(837,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:40:15.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(838,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:40:17.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(839,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:41:37.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/bksdt/573.htm','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(840,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:45:16.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(841,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:48:53.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(842,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:57:28.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(843,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:57:22.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(844,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:58:26.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(845,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:58:57.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(846,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:59:28.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(847,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:58:59.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(848,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:00:01.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(849,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 15:59:30.0','http：//localhost：8080/tpjs/567.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(850,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:07:07.0','http：//localhost：8080/','','','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(851,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:10:01.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(852,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:12:22.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(853,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:12:12.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(854,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:12:15.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(855,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:12:25.0','http：//localhost：8080/xwtt/580.htm','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(856,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:14:02.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(857,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:12:14.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(858,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:15:02.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(859,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:14:03.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(860,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:14:05.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(861,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:15:03.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(862,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:15:37.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(863,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:15:15.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(864,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:17:08.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(865,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 16:19:12.0','http：//localhost：8080/fjs/578.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','A4A56235310FD4DC3578BC9AC543958C');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(866,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 17:45:42.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','C22CD953A09D066C6613DD6C93630C63');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(867,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:26.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(868,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:30.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(869,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:28.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(870,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:32.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(871,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:29.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(872,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:30.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(873,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:24:17.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(874,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:26:45.0','http：//localhost：8080/tpjs/581.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(875,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:27:30.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(876,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:27:05.0','http：//localhost：8080/zxtz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(877,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:26:59.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(878,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:27:01.0','http：//localhost：8080/xwtt/580.htm','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(879,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:27:07.0','http：//localhost：8080/zxtz/559.htm','http：//localhost：8080','http：//localhost：8080/zxtz/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(880,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:28:12.0','http：//localhost：8080/login.jspx','http：//localhost：8080','http：//localhost：8080/login.jspx','','\b','366AFFBCBD7C876B757CD0FFDABD735E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(881,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:27:49.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(882,1,'0:0:0:0:0:0:0:1','2014-3-30','2014-03-30 22:27:36.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','110E262A3B5A21E3EE958E73B8646B91');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(883,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 08:41:36.0','http：//localhost：8080/','','','','\b','7ED758D288DCC3C62B7B76EE83A06F7E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(884,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 08:43:32.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/','','\b','EB62ACFD82669DC060FB77B1A24AE0F0');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(885,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 08:41:40.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/','','\b','7ED758D288DCC3C62B7B76EE83A06F7E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(886,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:00:00.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/','','\b','F68329DAB3350C835E14C388BF096D3B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(887,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 08:59:51.0','http：//localhost：8080/','','','','\b','F68329DAB3350C835E14C388BF096D3B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(888,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:03:49.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/register.jspx','','\b','BCD25EA188FC1290A0764DB655C8953A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(889,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:04:48.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/register.jspx','','\b','8D4CFCFB82198FD4138CBEA7E6353674');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(890,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:08:03.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/login.jspx?returnUrl=/','','\b','EF586CFF57F54AECE96C6F67DF993CC9');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(891,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:11:14.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','2E8C439A95BB2084ECA730C146F62A8E');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(892,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:13:51.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/index.jspx','','\b','EE15412AE5A9DBA22F1893C3A82A5136');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(893,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:15:41.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/register.jspx','','\b','1E7777A0DCADCF15DF1F963772A3B93A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(894,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:13:55.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/','','\b','EE15412AE5A9DBA22F1893C3A82A5136');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(895,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:16:32.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(896,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:15:44.0','http：//localhost：8080/?locale=zh_CN','http：//localhost：8080','http：//localhost：8080/?locale=zh_CN','','\b','1E7777A0DCADCF15DF1F963772A3B93A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(897,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:17:45.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(898,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:21:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(899,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:21:56.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(900,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:22:29.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(901,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:23:56.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(902,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:24:51.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(903,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:25:20.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(904,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:25:22.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(905,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:25:59.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(906,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:25:49.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(907,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:26:16.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(908,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:27:07.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(909,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:27:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(910,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:27:27.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(911,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:27:37.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(912,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:28:08.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(913,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:28:27.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(914,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:28:41.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(915,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:29:17.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(916,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:29:00.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(917,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:29:31.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(918,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:30:07.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(919,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:29:34.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(920,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:30:48.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(921,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:31:24.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(922,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:31:50.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(923,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:31:58.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(924,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:31:35.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(925,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:32:31.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(926,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:32:48.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(927,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:33:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(928,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:33:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(929,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:33:44.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(930,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:36:00.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(931,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:34:04.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(932,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:37:16.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(933,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:38:23.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(934,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:40:05.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(935,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:41:22.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(936,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:51:02.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/member/forgot_password.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(937,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:59:42.0','http：//localhost：8080/xwtt/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(938,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 09:59:45.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(939,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:00:18.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(940,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:02:58.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(941,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:02:40.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(942,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:04:34.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(943,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:05:18.0','http：//localhost：8080/zygk/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(944,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:05:00.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/xwtt/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(945,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:06:14.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(946,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:05:21.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(947,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:06:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(948,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:06:38.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(949,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:06:29.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(950,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:06:52.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/zygk/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(951,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:07:40.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(952,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:07:44.0','http：//localhost：8080/yjspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(953,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:07:56.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(954,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:31.0','http：//localhost：8080/szll/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(955,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:07:44.0','http：//localhost：8080/wsxx/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjspy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(956,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:07:43.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(957,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:59.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(958,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:48.0','http：//localhost：8080/bksjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(959,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:50.0','http：//localhost：8080/yjsjy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bksjy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(960,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:56.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkspy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(961,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:41.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(962,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:09.0','http：//localhost：8080/yxbylw/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(963,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:51.0','http：//localhost：8080/bkszs/index.jhtml','http：//localhost：8080','http：//localhost：8080/yjsjy/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(964,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:35.0','http：//localhost：8080/js/568.htm','http：//localhost：8080','http：//localhost：8080/szll/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(965,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:00.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(966,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:08:54.0','http：//localhost：8080/bkspy/index.jhtml','http：//localhost：8080','http：//localhost：8080/bkszs/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(967,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:10.0','http：//localhost：8080/lqbds/index.jhtml','http：//localhost：8080','http：//localhost：8080/yxbylw/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(968,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:20.0','http：//localhost：8080/wjxz/560.htm','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(969,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:12.0','http：//localhost：8080/mapgis/index.jhtml','http：//localhost：8080','http：//localhost：8080/lqbds/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(970,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:10:56.0','http：//localhost：8080/wjxz/560.htm＃ping','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(971,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:17.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/xyxw/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(972,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:09:15.0','http：//localhost：8080/xyxw/index.jhtml','http：//localhost：8080','http：//localhost：8080/mapgis/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(973,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:11:26.0','http：//localhost：8080/wjxz/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(974,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:11:27.0','http：//localhost：8080/jsscdzl/index.jhtml','http：//localhost：8080','http：//localhost：8080/wjxz/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(975,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:11:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(976,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:11:30.0','http：//localhost：8080/jsscdzl/579.htm','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(977,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:13:13.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(978,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:13:36.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(979,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:13:54.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(980,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:14:20.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(981,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:14:44.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(982,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:14:03.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(983,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:15:20.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(984,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:16:06.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(985,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:15:32.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/guestbook.jspx','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(986,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:18:03.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(987,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:19:34.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(988,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:19:54.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(989,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:20:27.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(990,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:20:54.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(991,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:21:25.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(992,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:23:24.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(993,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:21:43.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(994,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:25:08.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(995,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:31:33.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(996,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:31:59.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(997,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:32:10.0','http：//localhost：8080/','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(998,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:34:30.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(999,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:37:47.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1000,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:40:28.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1001,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:44:21.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1002,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:45:05.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1003,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:46:05.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1004,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:46:47.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1005,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:47:45.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1006,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:48:33.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1007,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:49:21.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1008,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:49:54.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1009,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:49:44.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1010,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:50:11.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1011,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:51:09.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1012,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:51:41.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1013,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:52:27.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1014,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:52:59.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1015,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:53:52.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1016,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:53:25.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1017,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:56:12.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1018,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:56:16.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1019,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 10:56:47.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1020,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:02:16.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1021,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:02:57.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1022,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:03:09.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1023,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:03:35.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1024,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:04:25.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1025,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:05:05.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1026,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:05:28.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1027,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:06:10.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1028,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:06:39.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1029,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:06:51.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1030,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:07:30.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1031,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:07:15.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1032,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:07:04.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1033,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:07:48.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1034,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:08:12.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1035,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:08:44.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1036,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:09:25.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1037,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:10:06.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1038,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:10:40.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1039,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:11:37.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1040,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:11:03.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1041,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:12:24.0','http：//localhost：8080/bksdt/index.jhtml','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1042,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:17:05.0','http：//localhost：8080/mrzx/535.htm','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1043,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:18:15.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1044,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:17:16.0','http：//localhost：8080/mrzx/529.htm','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1045,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:18:33.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1046,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:19:16.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1047,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:20:11.0','http：//localhost：8080/mrzx/530.htm','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1048,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:24:33.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1049,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:24:35.0','http：//localhost：8080/mrzx/535.htm','http：//localhost：8080','http：//localhost：8080/','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1050,1,'0:0:0:0:0:0:0:1','2014-4-2','2014-04-02 11:25:39.0','http：//localhost：8080/＃','http：//localhost：8080','http：//localhost：8080/jsscdzl/index.jhtml','','\b','AA1F3F35E858D852CC8879739D4D1F9B');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1051,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:06:57.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1052,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:06:51.0','http：//localhost：8088/xg/','','','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1053,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:05.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1054,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:11.0','http：//localhost：8088/xg/bksdt/570.htm','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1055,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:27.0','http：//localhost：8088/xg/bksdt/575.htm','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1056,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:02.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1057,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:49.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1058,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:47.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1059,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:51.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1060,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:44.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1061,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:58.0','http：//localhost：8088/xg/xzzx/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/guestbook.jspx','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1062,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:52.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1063,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:07:37.0','http：//localhost：8088/xg/rcpy/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1064,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:10:05.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/xzzx/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1065,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:11:48.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1066,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:11:52.0','http：//localhost：8088/xg/js/568.htm','http：//localhost：8088','http：//localhost：8088/xg/szll/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1067,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:12:20.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1068,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:15:23.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1069,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:18:18.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1070,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:21:27.0','http：//localhost：8088/xg/yjszs/556.htm','http：//localhost：8088','http：//localhost：8088/xg/zsjy/index.jhtml','','\b','B6A6862E4BE09354EC530A6ED8DAF0DE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1071,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:37:47.0','http：//localhost：8088/xg/bksdt/570.htm','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_list.do','','\b','10BEF9A5273285726A43750F4281524D');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1072,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:43:05.0','http：//localhost：8088/xg/zxtz/582.htm','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_list.do?cid=76','','\b','10BEF9A5273285726A43750F4281524D');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1073,1,'127.0.0.1','2014-10-24','2014-10-24 19:43:33.0','http：//127.0.0.1：8088/xg/xwtt/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','5881649D19D804C38C7D6CAA4E1B6DCE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1074,1,'127.0.0.1','2014-10-24','2014-10-24 19:43:19.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/manager/html/start?path=/xg&org.apache.catalina.filters.CSRF_NONCE=385ED5CECE095DE132BD109B17F22474','','本机地址','5881649D19D804C38C7D6CAA4E1B6DCE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1075,1,'127.0.0.1','2014-10-24','2014-10-24 19:43:38.0','http：//127.0.0.1：8088/xg/xyxw/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','5881649D19D804C38C7D6CAA4E1B6DCE');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1076,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:46:06.0','http：//localhost：8088/xg/zygk/index.jhtml','','','','\b','10BEF9A5273285726A43750F4281524D');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1077,1,'0:0:0:0:0:0:0:1','2014-10-24','2014-10-24 19:47:17.0','http：//localhost：8088/xg/?locale=zh_CN','http：//localhost：8088','http：//localhost：8088/xg/zxtz/582.htm','','\b','10BEF9A5273285726A43750F4281524D');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1078,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:02:21.0','http：//localhost：8088/xg/','','','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1079,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:10:23.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1080,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:14:59.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/＃','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1081,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:15:29.0','http：//localhost：8088/xg/zygk/index.jhtml','','','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1082,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:18:36.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/＃','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1083,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:19:25.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/＃','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1084,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:20:16.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/＃','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1085,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:23:37.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/＃','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1086,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:26:15.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/＃','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1087,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:27:23.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1088,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:05.0','http：//localhost：8088/xg/','','','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1089,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:37.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1090,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:34.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1091,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:32.0','http：//localhost：8088/xg/','','','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1092,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:39.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1093,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:44.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1094,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:56.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1095,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:46.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1096,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:42.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1097,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:34:47.0','http：//localhost：8088/xg/zygk/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1098,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:35:08.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/zygk/index.jhtml','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1099,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:43:34.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/top.do','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1100,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:43:48.0','http：//localhost：8088/xg/rcpy/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1101,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:43:55.0','http：//localhost：8088/xg/xyxw/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1102,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:43:54.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1103,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:43:42.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1104,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:44:07.0','http：//localhost：8088/xg/szll/index.jhtml','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1105,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 15:43:51.0','http：//localhost：8088/xg/','http：//localhost：8088','http：//localhost：8088/xg/','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1106,1,'0:0:0:0:0:0:0:1','2014-10-29','2014-10-29 16:27:17.0','http：//localhost：8088/xg/','','','','\b','4F973BCFB5ADBE50C1F9C3860DFB8F1A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1107,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:33.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1108,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:24.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1109,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:30.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1110,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:29.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1111,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:36.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1112,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:27.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1113,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:26.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1114,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:28.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1115,1,'127.0.0.1','2014-10-31','2014-10-31 19:50:21.0','http：//127.0.0.1：8088/xg/','','','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1116,1,'127.0.0.1','2014-10-31','2014-10-31 19:56:48.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1117,1,'127.0.0.1','2014-10-31','2014-10-31 19:57:05.0','http：//127.0.0.1：8088/xg/xzzx/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1118,1,'127.0.0.1','2014-10-31','2014-10-31 19:56:49.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1119,1,'127.0.0.1','2014-10-31','2014-10-31 19:57:01.0','http：//127.0.0.1：8088/xg/xyxw/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1120,1,'127.0.0.1','2014-10-31','2014-10-31 19:57:52.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1121,1,'127.0.0.1','2014-10-31','2014-10-31 19:56:54.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1122,1,'127.0.0.1','2014-10-31','2014-10-31 19:56:58.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1123,1,'127.0.0.1','2014-10-31','2014-10-31 19:57:00.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1124,1,'127.0.0.1','2014-10-31','2014-10-31 19:57:10.0','http：//127.0.0.1：8088/xg/jsscdzl/579.htm','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/xzzx/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1125,1,'127.0.0.1','2014-10-31','2014-10-31 19:58:51.0','http：//127.0.0.1：8088/xg/rcpy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1126,1,'127.0.0.1','2014-10-31','2014-10-31 19:58:02.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1127,1,'127.0.0.1','2014-10-31','2014-10-31 19:57:55.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1128,1,'127.0.0.1','2014-10-31','2014-10-31 19:59:18.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1129,1,'127.0.0.1','2014-10-31','2014-10-31 19:59:48.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1130,1,'127.0.0.1','2014-10-31','2014-10-31 19:58:56.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/rcpy/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1131,1,'127.0.0.1','2014-10-31','2014-10-31 20:00:18.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1132,1,'127.0.0.1','2014-10-31','2014-10-31 20:00:17.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/rcpy/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1133,1,'127.0.0.1','2014-10-31','2014-10-31 20:01:48.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1134,1,'0:0:0:0:0:0:0:1','2014-10-31','2014-10-31 20:02:57.0','http：//localhost：8088/xg/tpjs/581.htm?','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_view.do?id=581&cid=62&pageNo=&queryTitle=&queryInputUsername=&queryTopLevel=false&queryRecommend=false&queryTypeId=&queryStatus=&queryOrderBy=0','','\b','AE3BCF99DDF8A3C96BB8CCF2A39E0AC5');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1135,1,'0:0:0:0:0:0:0:1','2014-10-31','2014-10-31 20:04:00.0','http：//localhost：8088/xg/fjs/578.htm','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_list.do','','\b','AE3BCF99DDF8A3C96BB8CCF2A39E0AC5');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1136,1,'127.0.0.1','2014-10-31','2014-10-31 20:10:34.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1137,1,'127.0.0.1','2014-10-31','2014-10-31 20:11:25.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1138,1,'127.0.0.1','2014-10-31','2014-10-31 20:10:49.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1139,1,'127.0.0.1','2014-10-31','2014-10-31 20:10:41.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','','','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1140,1,'127.0.0.1','2014-10-31','2014-10-31 20:10:45.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1141,1,'127.0.0.1','2014-10-31','2014-10-31 20:11:41.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1142,1,'127.0.0.1','2014-10-31','2014-10-31 20:11:40.0','http：//127.0.0.1：8088/xg/','','','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1143,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:25.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1144,1,'127.0.0.1','2014-10-31','2014-10-31 20:11:27.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1145,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:43.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1146,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:41.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1147,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:29.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1148,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:38.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1149,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:47.0','http：//127.0.0.1：8088/xg/zygk/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1150,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:35.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1151,1,'127.0.0.1','2014-10-31','2014-10-31 20:14:15.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1152,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:50.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1153,1,'127.0.0.1','2014-10-31','2014-10-31 20:12:30.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1154,1,'127.0.0.1','2014-10-31','2014-10-31 20:15:13.0','http：//127.0.0.1：8088/xg/szll/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zygk/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1155,1,'127.0.0.1','2014-10-31','2014-10-31 20:16:32.0','http：//127.0.0.1：8088/xg/js/568.htm','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1156,1,'127.0.0.1','2014-10-31','2014-10-31 20:15:42.0','http：//127.0.0.1：8088/xg/fjs/578.htm','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1157,1,'0:0:0:0:0:0:0:1','2014-10-31','2014-10-31 20:17:35.0','http：//localhost：8088/xg/js/568.htm','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_list.do?cid=87','','\b','AE3BCF99DDF8A3C96BB8CCF2A39E0AC5');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1158,1,'0:0:0:0:0:0:0:1','2014-10-31','2014-10-31 20:18:19.0','http：//localhost：8088/xg/fjs/578.htm','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_list.do?cid=88','','\b','AE3BCF99DDF8A3C96BB8CCF2A39E0AC5');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1159,1,'0:0:0:0:0:0:0:1','2014-10-31','2014-10-31 20:17:53.0','http：//localhost：8088/xg/fjs/578.htm','http：//localhost：8088','http：//localhost：8088/xg/jeeadmin/jeecms/content/v_list.do?cid=88','','\b','AE3BCF99DDF8A3C96BB8CCF2A39E0AC5');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1160,1,'127.0.0.1','2014-10-31','2014-10-31 20:19:21.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1161,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:04.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1162,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:44.0','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/szll/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1163,1,'127.0.0.1','2014-10-31','2014-10-31 20:24:08.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/yjsjy/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1164,1,'127.0.0.1','2014-10-31','2014-10-31 20:24:03.0','http：//127.0.0.1：8088/xg/rcpy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/yjsjy/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1165,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:46.0','http：//127.0.0.1：8088/xg/yjszs/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zsjy/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1166,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:49.0','http：//127.0.0.1：8088/xg/yjsjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/bksjy/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1167,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:49.0','http：//127.0.0.1：8088/xg/bksjy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/lxszs/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1168,1,'127.0.0.1','2014-10-31','2014-10-31 20:24:11.0','http：//127.0.0.1：8088/xg/xyxw/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1169,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:47.0','http：//127.0.0.1：8088/xg/bkszs/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/yjszs/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1170,1,'127.0.0.1','2014-10-31','2014-10-31 20:24:10.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1171,1,'127.0.0.1','2014-10-31','2014-10-31 20:23:48.0','http：//127.0.0.1：8088/xg/lxszs/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/bkszs/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1172,1,'127.0.0.1','2014-10-31','2014-10-31 20:24:14.0','http：//127.0.0.1：8088/xg/xyxw/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1173,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:21.0','http：//127.0.0.1：8088/xg/xyxw/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1174,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:39.0','http：//127.0.0.1：8088/xg/xzzx/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1175,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:22.0','http：//127.0.0.1：8088/xg/xwtt/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/xyxw/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1176,1,'127.0.0.1','2014-10-31','2014-10-31 20:27:58.0','http：//127.0.0.1：8088/xg/xzzx/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1177,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:24.0','http：//127.0.0.1：8088/xg/bksdt/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/xwtt/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1178,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:23.0','http：//127.0.0.1：8088/xg/xwtt/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/zxtz/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1179,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:31.0','http：//127.0.0.1：8088/xg/xzzx/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1180,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:23.0','http：//127.0.0.1：8088/xg/zxtz/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/xwtt/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1181,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:27.0','http：//127.0.0.1：8088/xg/','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/bksdt/index.jhtml','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_ INSERT INTO `jc_site_flow` VALUES(1182,1,'127.0.0.1','2014-10-31','2014-10-31 20:26:28.0','http：//127.0.0.1：8088/xg/rcpy/index.jhtml','http：//127.0.0.1：8088','http：//127.0.0.1：8088/xg/','','本机地址','CFB8F9D5C1F449DC253C468B29A1B49A');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site_model;
JEECMS_BACKUP_CREATE TABLE `jc_site_model` (
  `model_id` int(11) NOT NULL auto_increment,
  `field` varchar(50) NOT NULL COMMENT '������������������������������������������������������',
  `model_label` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `upload_path` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `text_size` varchar(20) default NULL COMMENT '������������������������������������������������������',
  `area_rows` varchar(3) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `area_cols` varchar(3) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `help` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `help_position` varchar(1) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `data_type` int(11) default '1' COMMENT '0:���������������������������������������������������������������������������������;1:���������������������������������������������������������������������������������;2:���������������������������������������������������������������������������������;3:������������������������������������������������������;4:������������������������������������������������������',
  `is_single` tinyint(1) default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`model_id`),
  UNIQUE KEY `ak_field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_site_txt;
JEECMS_BACKUP_CREATE TABLE `jc_site_txt` (
  `site_id` int(11) NOT NULL,
  `txt_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������',
  `txt_value` longtext COMMENT '���������������������������',
  KEY `fk_jc_txt_site` (`site_id`),
  CONSTRAINT `fk_jc_txt_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_task;
JEECMS_BACKUP_CREATE TABLE `jc_task` (
  `task_id` int(11) NOT NULL auto_increment,
  `task_code` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `task_type` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������(1������������������������������������������������������������������������������������������������������������������������������������������������������������������2���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������3���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������4���������������������������������������������������������������������������������5������������������������������������������������������)',
  `task_name` varchar(255) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `job_class` varchar(255) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `execycle` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������(1������������������������������������������������������������������������������������������������������������ 2 cron���������������������������������������������������������������������������������)',
  `day_of_month` int(11) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `day_of_week` tinyint(1) default NULL COMMENT '������������������������������������������������������',
  `hour` int(11) default NULL COMMENT '������������������������������������������������������',
  `minute` int(11) default NULL COMMENT '������������������������������������������������������',
  `interval_hour` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `interval_minute` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `task_interval_unit` tinyint(1) default NULL COMMENT '1���������������������������������������������������������������������������������2���������������������������������������������������������������������������������3������������������������������������������������������4������������������������������������������������������5���������������������������',
  `cron_expression` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_enable` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `task_remark` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `site_id` int(11) NOT NULL COMMENT '������������������������������������������������������',
  `user_id` int(11) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `create_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`task_id`),
  KEY `fk_jc_task_site` (`site_id`),
  CONSTRAINT `fk_jc_task_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_task_attr;
JEECMS_BACKUP_CREATE TABLE `jc_task_attr` (
  `task_id` int(11) NOT NULL,
  `param_name` varchar(30) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `param_value` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������',
  KEY `fk_jc_attr_task` (`task_id`),
  CONSTRAINT `fk_jc_attr_task` FOREIGN KEY (`task_id`) REFERENCES `jc_task` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_topic;
JEECMS_BACKUP_CREATE TABLE `jc_topic` (
  `topic_id` int(11) NOT NULL auto_increment,
  `channel_id` int(11) default NULL,
  `topic_name` varchar(150) NOT NULL COMMENT '������������������������������������������������������',
  `short_name` varchar(150) default NULL COMMENT '������������������������������������������������������',
  `keywords` varchar(255) default NULL COMMENT '���������������������������������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `title_img` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������',
  `content_img` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������',
  `tpl_content` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_recommend` tinyint(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������??',
  PRIMARY KEY  (`topic_id`),
  KEY `fk_jc_topic_channel` (`channel_id`),
  CONSTRAINT `fk_jc_topic_channel` FOREIGN KEY (`channel_id`) REFERENCES `jc_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(1,null,'2010年南非世界杯','世界杯','世界杯','2010年世界杯将在南非约翰内斯堡拉开帷幕，32路豪强将在一个月的时间里，为大力神杯展开争夺。','http://a2.att.hudong.com/08/61/01300000406647124377613651616.jpg','http://i0.sinaimg.cn/ty/news/2010/0611/sjbsc.jpg','',10,1);
JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(2,null,'上海世博会专题','世博','世博','人类文明的盛会，我们大家的世博，精彩开篇，“满月”有余。随着上海世博会的有序前行，人们从中收获的感悟也由表及里。','http://xwcb.eastday.com/c/20061116/images/00033531.jpg','/u/cms/www/201112/19151533k5ey.jpg','',10,1);
JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(3,null,'低碳经济','低碳','低碳','所谓低碳经济，是指在可持续发展理念指导下，通过技术创新、制度创新、产业转型、新能源开发等多种手段，尽可能地减少煤炭石油等高碳能源消耗，减少温室气体排放，达到经济社会发展与生态环境保护双赢的一种经济发展形态。','/u/cms/www/201309/09151507n6i1.jpg',null,'',10,1);
JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(4,null,'习近平中亚之行','习近平中亚之行','习近平中亚之行','9月3日—4日：对土库曼斯进行国事访问\r\n·9月5日—6日：出席G20领导人第八次峰会\r\n·9月7日—12日：对哈萨克斯坦、乌兹别克斯坦和吉尔吉斯斯坦进行国事访问\r\n·9月13日：出席上海合作组织成员国元首理事会第十三次会议','/u/cms/www/201309/09152931cgps.jpg','/u/cms/www/201309/09152518pzoq.jpg','',10,1);
JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(5,null,'广西桂林学校附近发生爆炸','广西桂林学校附近发生爆炸','广西桂林学校附近发生爆炸','·时间：9日8时许\r\n·地点：桂林市灵川县八里街学校大门附近\r\n·事件：9日8时许，广西桂林市八里街发生一起爆炸事故…[详细] \r\n·伤亡：已造成2人死亡，17人不同程度受伤，其中1人受重伤。已确认伤者中包括10名小学生、3名家长和5名路人 \r\n·嫌疑人：警方称嫌疑人驾驶三轮车经过现场，当时是三轮车起火，然后发生爆炸 \r\n','/u/cms/www/201309/0915541140xt.jpg','/u/cms/www/201309/091552426die.jpg','',10,1);
JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(6,null,'美军准备空袭叙利亚','美军准备空袭叙利亚','美军准备空袭叙利亚','·6月4日：联合国称叙冲突双方均使用化武\r\n·7月9日：俄调查称叙反对派使用化学武器 美国拒绝接受 \r\n·8月21日：反对派称遭化武袭击1300人死 \r\n·26日：联合国小组开始调查叙化武事件\r\n·26日：美国取消俄美有关叙问题会谈 \r\n·28日：美媒称美拟29日导弹打击叙利亚 \r\n·9月3日：以色列和美国试射一枚“麻雀”导弹，这是此种导弹首次进行飞行测试。','/u/cms/www/201309/09160120meel.jpg','/u/cms/www/201309/091602465aop.jpg','',10,1);
JEECMS_BACKUP_ INSERT INTO `jc_topic` VALUES(7,null,'“气功大师”王林遭质疑','“气功大师”王林遭质疑','“气功大师”王林遭质疑','“气功大师”王林一直以来的低调被2013年7月初马云的一次拜访打破，网友的质疑让他重回公众视野。上世纪90年代气功潮之后，大师纷纷被拉下神坛。当时已成名的王林却有着自己的生存策略。这十几年，他极少接受媒体采访。他在江西萍乡，他一直延续着自己“大师”的神话。在相对封闭的空间里，经营着名声、财富和权势。据商人邹勇的说法，他当时在铁道部见到了刘志军，王林和刘志军两人看起来很熟悉。当着邹勇的面，王林对刘志军说要帮他办公室弄一块靠山石，“保你一辈子不倒”。','/u/cms/www/201309/09174523xkvt.jpg','/u/cms/www/201309/09174527lkok.jpg','',10,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_user;
JEECMS_BACKUP_CREATE TABLE `jc_user` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `email` varchar(100) default NULL COMMENT '������������������������������������������������������',
  `register_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `register_ip` varchar(50) NOT NULL default '127.0.0.1' COMMENT '������������������������������������������������������IP',
  `last_login_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `last_login_ip` varchar(50) NOT NULL default '127.0.0.1' COMMENT '������������������������������������������������������������������������������������������������������������IP',
  `login_count` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `rank` int(11) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `upload_total` bigint(20) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `upload_size` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `upload_date` date default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_admin` tinyint(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������',
  `is_viewonly_admin` tinyint(1) NOT NULL default '0' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_self_admin` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_disabled` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `ak_username` (`username`),
  KEY `fk_jc_user_group` (`group_id`),
  CONSTRAINT `fk_jc_user_group` FOREIGN KEY (`group_id`) REFERENCES `jc_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_user` VALUES(1,1,'admin','admin@yahoo.com','2011-01-03 00:00:00.0','127.0.0.1','2014-10-31 19:57:35.0','0:0:0:0:0:0:0:1',446,9,63,63,'2013-07-10',1,0,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_user` VALUES(2,1,'lhj','s_j1123@126.com','2014-03-30 10:44:28.0','0:0:0:0:0:0:0:1','2014-03-30 10:44:47.0','0:0:0:0:0:0:0:1',1,0,0,0,'2014-03-30',0,0,0,0);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_user_collection;
JEECMS_BACKUP_CREATE TABLE `jc_user_collection` (
  `user_id` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������id',
  `content_id` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������id',
  PRIMARY KEY  (`user_id`,`content_id`),
  KEY `fk_jc_user_collection_con` (`content_id`),
  CONSTRAINT `fk_jc_user_collection_con` FOREIGN KEY (`content_id`) REFERENCES `jc_content` (`content_id`),
  CONSTRAINT `fk_jc_user_collection_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jc_user_ext;
JEECMS_BACKUP_CREATE TABLE `jc_user_ext` (
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `gender` tinyint(1) default NULL COMMENT '������������������������������������������������������',
  `birthday` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `intro` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `comefrom` varchar(150) default NULL COMMENT '������������������������������������������������������',
  `qq` varchar(100) default NULL COMMENT 'QQ',
  `msn` varchar(100) default NULL COMMENT 'MSN',
  `phone` varchar(50) default NULL COMMENT '������������������������������������������������������',
  `mobile` varchar(50) default NULL COMMENT '������������������������������������������������������',
  `user_img` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `user_signature` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`user_id`),
  CONSTRAINT `fk_jc_ext_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_user_ext` VALUES(1,'JEECMS',1,'2014-03-27 00:00:00.0',null,'南昌',null,null,null,'15011111111','/user/images/201403/27193321jyz3.jpg','');
JEECMS_BACKUP_ INSERT INTO `jc_user_ext` VALUES(2,null,null,null,null,null,null,null,null,null,null,null);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_user_resume;
JEECMS_BACKUP_CREATE TABLE `jc_user_resume` (
  `user_id` int(11) NOT NULL,
  `resume_name` varchar(255) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `target_worknature` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `target_workplace` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `target_category` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `target_salary` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `edu_school` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `edu_graduation` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `edu_back` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `edu_discipline` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `recent_company` varchar(500) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `company_industry` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `company_scale` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `job_name` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `job_category` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `job_start` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `subordinates` varchar(255) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `job_description` text COMMENT '������������������������������������������������������������������������������������������������������������',
  `self_evaluation` varchar(2000) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`user_id`),
  CONSTRAINT `fk_jc_resume_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_user_resume` VALUES(1,'程序员','全职','上海','项目主管','','南昌大学','2009-07-01 00:00:00.0','本科','计算机','江西金磊科技发展有限公司',null,null,'程序员',null,'2009-10-01 00:00:00.0',null,'程序开发','小伙不错');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_user_role;
JEECMS_BACKUP_CREATE TABLE `jc_user_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`role_id`,`user_id`),
  KEY `fk_jc_role_user` (`user_id`),
  CONSTRAINT `fk_jc_role_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_user_role` FOREIGN KEY (`role_id`) REFERENCES `jc_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_user_role` VALUES(1,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_user_site;
JEECMS_BACKUP_CREATE TABLE `jc_user_site` (
  `usersite_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `check_step` tinyint(4) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_all_channel` tinyint(1) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`usersite_id`),
  KEY `fk_jc_site_user` (`user_id`),
  KEY `fk_jc_user_site` (`site_id`),
  CONSTRAINT `fk_jc_site_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_user_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_user_site` VALUES(1,1,1,2,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_vote_item;
JEECMS_BACKUP_CREATE TABLE `jc_vote_item` (
  `voteitem_id` int(11) NOT NULL auto_increment,
  `votetopic_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '������������������������������������������������������',
  `vote_count` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `priority` int(11) NOT NULL default '10' COMMENT '������������������������������������������������������������������������������������������������������������',
  `subtopic_id` int(11) default NULL,
  PRIMARY KEY  (`voteitem_id`),
  KEY `fk_jc_vote_item_topic` (`votetopic_id`),
  KEY `FK_jc_vote_item_subtopic` (`subtopic_id`),
  CONSTRAINT `FK_jc_vote_item_subtopic` FOREIGN KEY (`subtopic_id`) REFERENCES `jc_vote_subtopic` (`subtopic_id`),
  CONSTRAINT `fk_jc_vote_item_topic` FOREIGN KEY (`votetopic_id`) REFERENCES `jc_vote_topic` (`votetopic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(13,3,'1111111111111111111',0,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(14,3,'1111111111111122222222',0,4,1);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(15,3,'111111111133333333333',0,5,1);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(16,3,'22222222222222',0,2,2);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(17,3,'222222222222222222',0,6,2);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(18,3,'2222222222222222222222',0,7,2);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(19,3,'33333333333333333333',0,3,3);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(20,3,'3333333333333333333333',0,8,3);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(21,3,'3333333333333333333333333333333333333333333333333',0,9,3);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(85,4,'不喜欢',1,5,35);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(86,4,'很喜欢',12,1,35);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(87,4,'喜欢',5,4,35);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(88,4,'改进很大',10,5,37);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(89,4,'有改进',5,6,37);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(90,4,'没有改进',2,8,37);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(91,4,'差不多',1,7,37);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(92,4,'还不够，很多功能都没有体现',3,10,39);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(93,4,'很好的体现了系统的功能点',12,3,39);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(94,4,'马马虎虎，比原来好点',3,9,39);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(95,4,'留言本',0,15,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(96,4,'排行榜',1,18,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(97,4,'在线调查',2,16,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(98,4,'视频',7,13,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(99,4,'下载',1,14,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(100,4,'图库',7,12,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(101,4,'新闻',9,11,36);
JEECMS_BACKUP_ INSERT INTO `jc_vote_item` VALUES(102,4,'招聘',1,17,36);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_vote_record;
JEECMS_BACKUP_CREATE TABLE `jc_vote_record` (
  `voterecored_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `votetopic_id` int(11) NOT NULL,
  `vote_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `vote_ip` varchar(50) NOT NULL COMMENT '������������������������������������������������������IP',
  `vote_cookie` varchar(32) NOT NULL COMMENT '������������������������������������������������������COOKIE',
  PRIMARY KEY  (`voterecored_id`),
  KEY `fk_jc_vote_record_topic` (`votetopic_id`),
  KEY `fk_jc_voterecord_user` (`user_id`),
  CONSTRAINT `fk_jc_voterecord_user` FOREIGN KEY (`user_id`) REFERENCES `jc_user` (`user_id`),
  CONSTRAINT `fk_jc_vote_record_topic` FOREIGN KEY (`votetopic_id`) REFERENCES `jc_vote_topic` (`votetopic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_vote_record` VALUES(1,null,4,'2013-07-05 09:19:46.0','127.0.0.1','1679939421824ee69ecffa3c6f5d56bd');
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_vote_reply;
JEECMS_BACKUP_CREATE TABLE `jc_vote_reply` (
  `votereply_id` int(11) NOT NULL auto_increment,
  `reply` text COMMENT '������������������������������������������������������������������������������������������������������������',
  `subtopic_id` int(11) default NULL,
  PRIMARY KEY  (`votereply_id`),
  KEY `FK_jc_vote_reply_sub` (`subtopic_id`),
  CONSTRAINT `FK_jc_vote_reply_sub` FOREIGN KEY (`subtopic_id`) REFERENCES `jc_vote_subtopic` (`subtopic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(6,'希望能开发更多的功能模块来',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(7,'希望能开发更多的功能模块来',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(8,'希望能开发更多的功能模块来',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(9,'希望能开发更多的功能模块来',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(10,'希望能开发更多的功能模块来',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(11,'121',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(12,'121',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(13,'11',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(14,'感觉差不多',38);
JEECMS_BACKUP_ INSERT INTO `jc_vote_reply` VALUES(15,'43er',38);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_vote_subtopic;
JEECMS_BACKUP_CREATE TABLE `jc_vote_subtopic` (
  `subtopic_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '' COMMENT '������������������������������������������������������',
  `votetopic_id` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `subtopic_type` int(2) NOT NULL default '1' COMMENT '���������������������������������������������������������������������������������1���������������������������������������������������������������������������������2���������������������������������������������������������������������������������3���������������������������������������������������������������������������������',
  `priority` int(11) default NULL,
  PRIMARY KEY  (`subtopic_id`),
  KEY `FK_jc_vote_subtopic_vote` (`votetopic_id`),
  CONSTRAINT `FK_jc_vote_subtopic_vote` FOREIGN KEY (`votetopic_id`) REFERENCES `jc_vote_topic` (`votetopic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(1,'444444444444',3,3,1);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(2,'333333333333',3,2,2);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(3,'222222222222222',3,2,3);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(4,'1111111111',3,1,4);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(35,'V5版本演示站网页的设计风格您喜欢吗？',4,1,1);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(36,'您觉得V5演示站哪些模块做的比较好',4,2,5);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(37,'V5版本比V2012sp1版的设计风格有改进吗？',4,1,2);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(38,'我觉得这里完善一下：',4,3,4);
JEECMS_BACKUP_ INSERT INTO `jc_vote_subtopic` VALUES(39,'V5版本演示站的体现出来系统的功能点吗？',4,1,3);
JEECMS_BACKUP_DROP TABLE IF EXISTS jc_vote_topic;
JEECMS_BACKUP_CREATE TABLE `jc_vote_topic` (
  `votetopic_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '������������������������������������������������������',
  `description` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `start_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `end_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `repeate_hour` int(11) default NULL COMMENT '���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `total_count` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `multi_select` int(11) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_restrict_member` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_restrict_ip` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������IP',
  `is_restrict_cookie` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������COOKIE',
  `is_disabled` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `is_def` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`votetopic_id`),
  KEY `fk_jc_votetopic_site` (`site_id`),
  CONSTRAINT `fk_jc_votetopic_site` FOREIGN KEY (`site_id`) REFERENCES `jc_site` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS���������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jc_vote_topic` VALUES(3,1,'腾讯新闻频道首页用户调查问卷','1212',null,null,null,0,1,0,0,1,0,0);
JEECMS_BACKUP_ INSERT INTO `jc_vote_topic` VALUES(4,1,'JEECMS演示站改版用户问卷调查','JEECMSv5版正式发布了，伴随着系统的完善，jeecms演示站的模板也一直在不断的改版，针对此次改版，jeecms美工团队特邀您参与“JEECMS演示站改版用户问卷调查”，希望大家能提出宝贵的意见，我们一定认真改进，谢谢大家的支持！',null,null,null,23,1,0,0,0,0,1);
JEECMS_BACKUP_DROP TABLE IF EXISTS jo_authentication;
JEECMS_BACKUP_CREATE TABLE `jo_authentication` (
  `authentication_id` char(32) NOT NULL COMMENT '������������������������������������������������������ID',
  `userid` int(11) NOT NULL COMMENT '������������������������������������������������������ID',
  `username` varchar(100) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `email` varchar(100) default NULL COMMENT '������������������������������������������������������',
  `login_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `login_ip` varchar(50) NOT NULL COMMENT '������������������������������������������������������ip',
  `update_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('0aceb9e078224a14a7faabdf9947fef9',1,'admin','admin@yahoo.com','2014-04-02 09:16:46.0','0:0:0:0:0:0:0:1','2014-04-02 11:27:03.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('209cfbc5a9ae4fd88dd8271d05bf8447',1,'admin','admin@yahoo.com','2014-03-28 17:02:54.0','0:0:0:0:0:0:0:1','2014-03-28 17:14:01.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('44c4adc4fd1a4723902252bc52b93a38',1,'admin','admin@yahoo.com','2014-03-28 19:43:05.0','0:0:0:0:0:0:0:1','2014-03-28 20:14:52.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('464ab7b43ea64f5597146b94bec3d896',1,'admin','admin@yahoo.com','2014-10-24 19:47:31.0','0:0:0:0:0:0:0:1','2014-10-24 19:57:55.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('4663871a80db41f3893d2a8bb3c83872',1,'admin','admin@yahoo.com','2014-03-30 09:36:55.0','0:0:0:0:0:0:0:1','2014-03-30 10:13:48.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('4dc770f201bb40219c6d71f2a00d543c',1,'admin','admin@yahoo.com','2014-03-30 14:46:25.0','0:0:0:0:0:0:0:1','2014-03-30 17:25:35.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('51c499c04ba747fab2c4e6713006cde7',1,'admin','admin@yahoo.com','2014-10-24 19:25:14.0','0:0:0:0:0:0:0:1','2014-10-24 19:30:56.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('6091f13a2d4e47f7ae93b9f3a5cf7917',1,'admin','admin@yahoo.com','2014-10-29 15:00:56.0','0:0:0:0:0:0:0:1','2014-10-29 17:11:14.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('797093dca64e4dd294131aa91f163908',1,'admin','admin@yahoo.com','2014-03-30 22:28:11.0','0:0:0:0:0:0:0:1','2014-03-30 22:28:12.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('8045bf73ce8044c4bdf674cc051126aa',1,'admin','admin@yahoo.com','2014-03-27 11:28:53.0','0:0:0:0:0:0:0:1','2014-03-27 17:40:54.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('c0753b26f82f4064964ccc8bf44353cf',1,'admin','admin@yahoo.com','2014-10-31 19:57:35.0','0:0:0:0:0:0:0:1','2014-10-31 20:59:38.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('c0c7849d52664fe7ba22a65ce6ce1e1c',1,'admin','admin@yahoo.com','2014-10-24 19:04:23.0','0:0:0:0:0:0:0:1','2014-10-24 19:05:33.0');
JEECMS_BACKUP_ INSERT INTO `jo_authentication` VALUES('c72e0f5b164b4ce686b2147e8af1cae6',1,'admin','admin@yahoo.com','2014-03-30 10:45:51.0','0:0:0:0:0:0:0:1','2014-03-30 11:37:26.0');
JEECMS_BACKUP_DROP TABLE IF EXISTS jo_config;
JEECMS_BACKUP_CREATE TABLE `jo_config` (
  `cfg_key` varchar(50) NOT NULL COMMENT '������������������������������������������������������KEY',
  `cfg_value` varchar(255) default NULL COMMENT '������������������������������������������������������VALUE',
  PRIMARY KEY  (`cfg_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('email_encoding','');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('email_host','smtp.qq.com');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('email_password','jeecms');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('email_personal','');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('email_port',null);
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('email_username','2283752600@qq.com');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('login_error_interval','30');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('login_error_times','3');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('message_forgotpassword_subject','找回密码');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('message_forgotpassword_text','感谢您使用JEECMS系统会员密码找回功能，请记住以下找回信息：\r\n用户ID：${uid}\r\n用户名：${username}\r\n您的新密码为：${resetPwd}\r\n请访问如下链接新密码才能生效：\r\nhttp://localhost/jeecmsv5/member/password_reset.jspx?uid=${uid}&key=${resetKey}');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('message_register_subject','欢迎您注册JEECMS用户');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('message_register_text','${username}您好：\r\n欢迎您注册JEECMS系统会员\r\n请点击以下链接进行激活\r\nhttp://localhost/jeecmsv5/active.jspx?username=${username}&key=${activationCode}');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('message_subject','JEECMS会员密码找回信息');
JEECMS_BACKUP_ INSERT INTO `jo_config` VALUES('message_text','感谢您使用JEECMS系统会员密码找回功能，请记住以下找回信息：\r\n用户ID：${uid}\r\n用户名：${username}\r\n您的新密码为：${resetPwd}\r\n请访问如下链接新密码才能生效：\r\nhttp://localhost/member/password_reset.jspx?uid=${uid}&key=${resetKey}\r\n');
JEECMS_BACKUP_DROP TABLE IF EXISTS jo_ftp;
JEECMS_BACKUP_CREATE TABLE `jo_ftp` (
  `ftp_id` int(11) NOT NULL auto_increment,
  `ftp_name` varchar(100) NOT NULL COMMENT '������������������������������������������������������',
  `ip` varchar(50) NOT NULL COMMENT 'IP',
  `port` int(11) NOT NULL default '21' COMMENT '���������������������������������������������������������������������������������',
  `username` varchar(100) default NULL COMMENT '���������������������������������������������������������������������������������',
  `password` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `encoding` varchar(20) NOT NULL default 'UTF-8' COMMENT '������������������������������������������������������',
  `timeout` int(11) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `ftp_path` varchar(255) default NULL COMMENT '������������������������������������������������������',
  `url` varchar(255) NOT NULL COMMENT '������������������������������������������������������URL',
  PRIMARY KEY  (`ftp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FTP���������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jo_template;
JEECMS_BACKUP_CREATE TABLE `jo_template` (
  `tpl_name` varchar(150) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `tpl_source` longtext COMMENT '������������������������������������������������������������������������������������������������������������',
  `last_modified` bigint(20) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `is_directory` tinyint(1) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  PRIMARY KEY  (`tpl_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jo_upload;
JEECMS_BACKUP_CREATE TABLE `jo_upload` (
  `filename` varchar(150) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `length` int(11) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������(������������������������������������������������������)',
  `last_modified` bigint(20) NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `content` longblob NOT NULL COMMENT '������������������������������������������������������',
  PRIMARY KEY  (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_DROP TABLE IF EXISTS jo_user;
JEECMS_BACKUP_CREATE TABLE `jo_user` (
  `user_id` int(11) NOT NULL auto_increment COMMENT '������������������������������������������������������ID',
  `username` varchar(100) NOT NULL COMMENT '���������������������������������������������������������������������������������',
  `email` varchar(100) default NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `password` char(32) NOT NULL COMMENT '������������������������������������������������������',
  `register_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������',
  `register_ip` varchar(50) NOT NULL default '127.0.0.1' COMMENT '������������������������������������������������������IP',
  `last_login_time` datetime NOT NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `last_login_ip` varchar(50) NOT NULL default '127.0.0.1' COMMENT '������������������������������������������������������������������������������������������������������������IP',
  `login_count` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������',
  `reset_key` char(32) default NULL COMMENT '������������������������������������������������������������������������������������������������������������KEY',
  `reset_pwd` varchar(10) default NULL COMMENT '������������������������������������������������������������������������������������������������������������VALUE',
  `error_time` datetime default NULL COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `error_count` int(11) NOT NULL default '0' COMMENT '������������������������������������������������������������������������������������������������������������������������������������������������������������������',
  `error_ip` varchar(50) default NULL COMMENT '������������������������������������������������������������������������������������������������������������IP',
  `activation` tinyint(1) NOT NULL default '1' COMMENT '������������������������������������������������������������������������������������������������������������',
  `activation_code` char(32) default NULL COMMENT '���������������������������������������������������������������������������������',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `ak_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������������������������������������������������������';
JEECMS_BACKUP_JEECMS_BACKUP_ INSERT INTO `jo_user` VALUES(1,'admin','admin@yahoo.com','5f4dcc3b5aa765d61d8327deb882cf99','2011-01-03 00:00:00.0','127.0.0.1','2014-10-31 19:57:35.0','0:0:0:0:0:0:0:1',469,null,null,null,0,null,1,null);
JEECMS_BACKUP_ INSERT INTO `jo_user` VALUES(2,'lhj','s_j1123@126.com','6eedc12c05b50cae48dee839976a9f3d','2014-03-30 10:44:28.0','0:0:0:0:0:0:0:1','2014-03-30 10:44:47.0','0:0:0:0:0:0:0:1',1,null,null,null,0,null,1,null);
JEECMS_BACKUP_SET FOREIGN_KEY_CHECKS = 1;
