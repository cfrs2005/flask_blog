# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 10.1.0.8 (MySQL 5.5.37)
# Database: ultrax
# Generation Time: 2015-04-14 02:37:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table aj_articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aj_articles`;

CREATE TABLE `aj_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `content` text,
  `posttime` datetime DEFAULT NULL,
  `modifytime` datetime DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `author` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `aj_articles` WRITE;
/*!40000 ALTER TABLE `aj_articles` DISABLE KEYS */;

INSERT INTO `aj_articles` (`id`, `title`, `content`, `posttime`, `modifytime`, `status`, `author`)
VALUES
	(1,'Windows 10 Build 10056带来类Shazam歌曲搜索功能','据外媒报道，在微软最新发布的Windows 10 build 10056当中，他们发现了一项新功能—“歌曲搜索”。考虑到Windows 10是一个面向手机、平板、PC多平台的系统，所以该项功能很有可能会放在Cortana下边。另外，这项功能的到来也将意味着用户不再需要像Shazam等这样的第三方应用，而这势必能够大大提升系统的使用便利性。','2015-04-13 11:38:20',NULL,1,'aj'),
	(2,'宽带是否将重生？','但有接近运营商的分析人士向《财经》记者透露，在城市地区，工信部的这一目标很有可能被提前完成。\n从中国电信集团总经理杨杰公布的中国电信2015年的宽带发展规划来看，其中明确提出2015年提速至50M-100M，这一目标要超前于工信部制定的目标。此外，中国电信占据中国超过60%的固网宽带市场，在上海等发达地区，中国电信早已完成了城市20M的宽带提速目标。\n另据运营商公布的2015资本开支来看，固网宽带建设资金虽然占比依然在10%左右，但总额，尤其中国电信，相较往年有所提升。\n这令产业链备受提振。在过去的两年间，电信联通两大运营商几乎将所有精力放在移动3 G网络的建设和运营上，宽带市场除了同质化的低价竞争，再无波澜。\n华为宽带事业部的一位高级工程师向《财经》记者感慨，从今年开始，运营商终于开始主动与华为探讨宽带和互联网战略、产品的结合方案。“前两年都是我们在向他们推，现在是他们主动向我们要。”\n一切似乎都在复苏。\n不过，多位接受《财经》记者采访的行业人士认为，这并非政策因素，更多是市场竞争的自发因素。他认为，真正意义上的宽带战略其实刚刚开始。一张优质的光纤宽带网络是未来诸多变革的基础平台。但如何促进这些变革的出现，并非光靠发展宽带网络自身可以解决的。\n曾经低迷\n2010年，工信部、国家发改委等七部委联合下发《关于推进光纤宽带网络建设的意见》，提出2011年城市用户及农村用户的宽带接入将分别实现8兆及2兆以上，3年内光纤宽带网络建设投资超过1500亿元，新增宽带用户超过5000万。\n《意见》出台的时期，亦是“光进铜退”（光纤宽带FTTH替代铜线）技术进阶阶段，电信联通两大宽带运营商掀起了一场轰轰烈烈的宽带升级革命。\n2013年，国务院发布“宽带中国”战略及实施方案，将“宽带中国”计划正式上升为我国国家战略。\n据不完全统计数据，5年间，运营商在宽带中国战略上的投资总额将近2000万。但这笔投资主要集中在2010-2013年，此后两年，运营商在宽带上的投资越来越少。\n根据工信部发布的2014年通信行业分析报告，2014年，移动投资1618.5亿元，同比增长20.2%，占通信行业全部投资额的比重达40.5%，而互联网及数据通信投资规模与占比有所下降，只有398.6亿元，同比下降22.1%，占比由上年的13.6%下降至10%，固定通信投资则连续两年在10%以下。\n聚焦移动3G、4G网络战略是宽带战略萎缩的一大原因。尤其在最近两年，电信联通几乎将全部资金用于3G网络的建设和维护。','2015-04-13 11:39:30',NULL,1,'aj'),
	(3,'源创会第34期开始报名','时隔两年，源创会再一次回到武汉，本期源创会的内容可谓是软硬结合，在继续给OSCers分享开源软件相关知识的同时，我们给大家带来开源硬件方面的一些分享，物联网、穿戴式设备行情看涨，开源硬件越来越成熟，写代码的会玩硬件，搞硬件的也得会编程，开源技术的世界就是这么的暧昧！\r\n\r\n分享之余，华为海思继深圳站之后，再次现场赠送一批开发板，让大家先睹为快，数量有限，看大家手气啦。\r\n\r\n另外，前年@红薯 临时有事失约武汉oscer们，这次不会再错过了，线下面基约起吧！\r\n\r\n请提前下载并安装 OSC 手机客户端，以便现场扫描二维码签到。\r\n\r\n本期主题有：\r\n\r\n1、阿里的开源技术发展之路 \r\n阿里的开源技术发展之路，故事非常多，此次特别要求增加了新的内容，想了解阿里技术架构和开源软件应用案列的OSCers不能错过。\r\n\r\n分享嘉宾：阿里巴巴 沈询 08年加入阿里巴巴，之前一直从事阿里分布式数据层方面的研发与业务架构梳理工作，TDDL作者，具备丰富的实战经验。\r\n\r\n2、物联网时代的开源硬件\r\n\r\n物联网（The Internet of things），物物相连的互联网。在各式智能手机、家居、可穿戴设备和移动互联网车辆层出不穷的今天，物联网已经悄悄的来到的大家的身边，硬件的复兴正在到来，作为工作在IT最前线的我们，又该如何顺应这次复兴呢？',NULL,NULL,0,NULL),
	(4,'嵌入式 Linux 软件开发','OSCHINA 本期高手问答(  4 月 13  日- 4 月 19 日)我们请来了 @吕雪峰   （吕雪峰）为大家解答关于嵌入式 Linux 软件开发方面的问题。\r\n\r\n吕雪峰，华中科技大学控制工程与控制理论专业硕士，一线资深高级软件工程师，主持开发过多个大型嵌入式项目。曾在多家知名嵌入式培训机构担任讲师，有10 多年的Linux培训和实践经验。研究专长是Linux操作系统、网络安全、大型网站规划与维护，在《计算机应用》等核心刊物上发表过多篇专业论文，著有 《网络分析技术揭秘：原理、实践与WinPcap深入解析》。\r\n\r\n《嵌入式 Linux 软件开发从入门到精通》结合作者10多年的培训和实践经验，通过简明扼要的语言，以及实用的案例与方法，对嵌入式Linux应用开发中的关键技术点进行了深入浅出的讲解。全书分为基础篇、应用进阶篇和实战提高篇。本书内容从最简单的案例开始，始终保持实用、易懂的风格，每个章节都设置了实践操作案例，能够帮助读者快速掌握嵌入式Linux应用软件的开发技能。\r\n\r\n为了鼓励踊跃提问，@博图轩策划 会在问答结束后从提问者中抽取 10 名幸运会员赠予《嵌入式 Linux 软件开发从入门到精通》一书。','2015-04-13 06:06:53',NULL,0,'aj');

/*!40000 ALTER TABLE `aj_articles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
