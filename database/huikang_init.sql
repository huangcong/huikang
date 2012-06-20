-- MySQL dump 10.10
--
-- Host: 192.168.1.107    Database: huikang
-- ------------------------------------------------------
-- Server version	5.0.77-log

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
-- Table structure for table `hk_contacter`
--

DROP TABLE IF EXISTS `hk_contacter`;
CREATE TABLE `hk_contacter` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '联系人编号',
  `patient_id` bigint(20) unsigned default NULL COMMENT '患者编号',
  `name` varchar(100) default NULL COMMENT '姓名',
  `sex` tinyint(3) unsigned default NULL COMMENT '性别',
  `email` varchar(100) default NULL COMMENT '邮箱',
  `phone` varchar(45) default NULL COMMENT '家庭电话',
  `mobile` varchar(45) default NULL COMMENT '手机',
  `company` varchar(500) default NULL COMMENT '单位（公司）',
  `main_type` varchar(45) default NULL COMMENT '主要联系方式',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_disease`
--

DROP TABLE IF EXISTS `hk_disease`;
CREATE TABLE `hk_disease` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `code` varchar(50) default NULL COMMENT '病种代码',
  `parent_id` bigint(20) unsigned default NULL COMMENT '父类病种',
  `root_id` bigint(20) unsigned default NULL COMMENT '根病种',
  `path` varchar(500) default NULL COMMENT '病种路径',
  `name` varchar(100) default NULL COMMENT '名称',
  `validable` tinyint(3) unsigned default NULL COMMENT '是否有效',
  `gb_name` varchar(100) default NULL COMMENT '国标名称',
  `type` bigint(20) unsigned default NULL COMMENT '疾病类别',
  `diagnose_rule` varchar(500) default NULL COMMENT '确诊规则',
  `urgent_rule` varchar(500) NOT NULL default '' COMMENT '高危规则',
  `risk_rule` varchar(500) NOT NULL default '' COMMENT '中危规则',
  `normal_rule` varchar(255) NOT NULL default '' COMMENT '正常规则',
  `url` varchar(45) NOT NULL default '' COMMENT '应急处理链接',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_doctor`
--

DROP TABLE IF EXISTS `hk_doctor`;
CREATE TABLE `hk_doctor` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `user_name` varchar(100) default NULL COMMENT '用户名',
  `password` varchar(45) default NULL COMMENT '密码',
  `real_name` varchar(100) default NULL COMMENT '真实姓名',
  `birthday` bigint(20) unsigned default NULL COMMENT '出生日期',
  `sex` tinyint(3) unsigned default NULL COMMENT '性别',
  `address` varchar(500) default NULL COMMENT '地址',
  `phone` varchar(20) default NULL COMMENT '家庭电话',
  `mobile` varchar(20) default NULL COMMENT '手机',
  `email` varchar(200) default NULL COMMENT '邮箱',
  `main_type` varchar(45) NOT NULL default '' COMMENT '优先联系方式',
  `nation` bigint(20) unsigned NOT NULL default '0' COMMENT '民族',
  `marriage` bigint(20) unsigned NOT NULL default '0' COMMENT '婚姻状况',
  `company` varchar(500) NOT NULL default '' COMMENT '单位',
  `work_group_id` bigint(20) unsigned NOT NULL default '0' COMMENT '工作组',
  `site` varchar(500) NOT NULL default '' COMMENT '站点',
  `email_valid` tinyint(3) unsigned NOT NULL default '0' COMMENT '邮箱帐号是否有效',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_doctor_disease`
--

DROP TABLE IF EXISTS `hk_doctor_disease`;
CREATE TABLE `hk_doctor_disease` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `doctor_id` bigint(20) unsigned default NULL COMMENT '医生编号',
  `disease_id` bigint(20) unsigned default NULL COMMENT '病种编号',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_electronic_case`
--

DROP TABLE IF EXISTS `hk_electronic_case`;
CREATE TABLE `hk_electronic_case` (
  `id` int(10) NOT NULL auto_increment COMMENT '流水号',
  `work_order_id` int(45) NOT NULL default '0' COMMENT '工作单',
  `patient_id` int(45) NOT NULL default '0' COMMENT '患者',
  `start_date` varchar(45) NOT NULL COMMENT '开始时间',
  `end_date` varchar(45) NOT NULL COMMENT '结束时间',
  `item` int(10) NOT NULL default '0' COMMENT '体检项目',
  `type` int(10) NOT NULL default '0' COMMENT '数据类型',
  `item_info` longtext NOT NULL COMMENT '体检信息',
  `import_date` bigint(45) NOT NULL default '0' COMMENT '入导时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_email_box`
--

DROP TABLE IF EXISTS `hk_email_box`;
CREATE TABLE `hk_email_box` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `send_id` bigint(20) unsigned default NULL COMMENT '发件人',
  `send_email` varchar(100) default NULL COMMENT '发件邮箱',
  `title` varchar(500) default NULL COMMENT '标题',
  `template_id` bigint(20) unsigned default NULL COMMENT '模板编号',
  `template_model` varchar(500) default NULL COMMENT '模板模型',
  `content` longtext COMMENT '内容',
  `files` varchar(500) default NULL COMMENT '附件',
  `type` varchar(45) default NULL COMMENT '类型（邮件，草稿）',
  `deleted` tinyint(3) unsigned default NULL COMMENT '是否删除',
  `send_time` bigint(20) unsigned NOT NULL default '0' COMMENT '发送时间',
  `result` int(10) unsigned NOT NULL default '0' COMMENT '发送结果',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_email_info`
--

DROP TABLE IF EXISTS `hk_email_info`;
CREATE TABLE `hk_email_info` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '编号',
  `doctor_id` bigint(20) unsigned default NULL COMMENT '用户编号',
  `email` varchar(200) default NULL COMMENT '邮件地址',
  `server` varchar(100) default NULL COMMENT '邮件服务器',
  `password` varchar(255) default NULL COMMENT '密码',
  `auth` tinyint(3) unsigned default NULL COMMENT '是否需要认证',
  `deleted` tinyint(3) unsigned default NULL COMMENT '是否删除',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_health_project`
--

DROP TABLE IF EXISTS `hk_health_project`;
CREATE TABLE `hk_health_project` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100)  default NULL COMMENT '项目',
  `place` varchar(200)  default '' COMMENT '执行地点',
  `frequency` bigint(20) default '0' COMMENT '频率',
  `dose` varchar(45)  default '' COMMENT '剂量',
  `confidence` int(10) default '0' COMMENT '信心指数',
  `result` varchar(45)  default '' COMMENT '是否达标',
  `sort` int(10) default '0' COMMENT '排序',
  `record_id` int(100) default NULL,
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_health_record`
--

DROP TABLE IF EXISTS `hk_health_record`;
CREATE TABLE `hk_health_record` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '编号',
  `patient_id` varchar(45) default NULL COMMENT '患者编号',
  `work_order_id` varchar(45) default NULL COMMENT '工作单编号',
  `begin_date` varchar(45) default NULL COMMENT '开始时间',
  `end_date` varchar(45) default NULL COMMENT '结束时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_mail_receiver`
--

DROP TABLE IF EXISTS `hk_mail_receiver`;
CREATE TABLE `hk_mail_receiver` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '编号',
  `mail_id` bigint(20) unsigned default NULL COMMENT '邮件编号',
  `receive_id` bigint(20) unsigned default NULL COMMENT '收件人编号',
  `work_order_id` bigint(20) unsigned default NULL COMMENT '工作单编号',
  `receive_name` varchar(50) default NULL COMMENT '收件人名',
  `receive_mail` varchar(50) default NULL COMMENT '收件人地址',
  `receive_type` varchar(45) default NULL COMMENT '收件类型（发送，抄送，密送）',
  `create_time` bigint(20) unsigned default NULL COMMENT '发送时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_patient`
--

DROP TABLE IF EXISTS `hk_patient`;
CREATE TABLE `hk_patient` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `code` varchar(45) default NULL,
  `name` varchar(100) default NULL,
  `birthday` bigint(20) unsigned default '0',
  `sex` tinyint(3) unsigned default '0',
  `address` varchar(500) default NULL,
  `zip_code` varchar(45) default NULL,
  `degree` bigint(20) unsigned default '0',
  `phone` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `email` varchar(200) default NULL,
  `main_type` varchar(45) default NULL,
  `nation` bigint(20) unsigned default '0',
  `marriage` bigint(20) unsigned default '0',
  `company` varchar(500) default NULL,
  `contacter1` bigint(20) unsigned default '0',
  `contacter2` bigint(20) unsigned default '0',
  `source` varchar(45) default NULL,
  `remark` text,
  `level` bigint(20) default '0',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_patient_disease`
--

DROP TABLE IF EXISTS `hk_patient_disease`;
CREATE TABLE `hk_patient_disease` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `patient_id` bigint(20) unsigned default NULL COMMENT '患者编号',
  `disease_id` bigint(20) unsigned default NULL COMMENT '病种编号',
  `diagnose_time` bigint(20) unsigned default NULL COMMENT '确诊时间',
  `diagnose_address` varchar(500) default NULL COMMENT '确诊地点',
  `family_history` tinyint(3) unsigned default NULL COMMENT '家族病史',
  `years` int(10) unsigned default NULL COMMENT '患病年限',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_schedule`
--

DROP TABLE IF EXISTS `hk_schedule`;
CREATE TABLE `hk_schedule` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `doctor_id` bigint(20) unsigned default NULL COMMENT '医生编号',
  `patient_id` bigint(20) default NULL,
  `title` varchar(500) default NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `address` varchar(500) default NULL COMMENT '地点',
  `type` varchar(45) default NULL COMMENT '类型(私人，公共，培训，预约)',
  `lecturer_ids` varchar(500) default NULL COMMENT '讲师编号',
  `lecturer_names` varchar(1000) default NULL COMMENT '讲师姓名',
  `max_num` int(10) unsigned default NULL COMMENT '最大人数',
  `min_num` int(10) unsigned default NULL COMMENT '最小人数',
  `invite_num` int(10) unsigned NOT NULL default '0' COMMENT '已邀请人数',
  `work_order_id` bigint(20) unsigned NOT NULL default '0' COMMENT '关联工作单',
  `schedule_date` bigint(20) unsigned NOT NULL default '0' COMMENT '日程日期',
  `create_time` bigint(20) unsigned NOT NULL default '0' COMMENT '创建时间',
  `start_time` bigint(20) unsigned NOT NULL default '0' COMMENT '开始时间',
  `end_time` bigint(20) unsigned NOT NULL default '0' COMMENT '结束时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_schedule_invite`
--

DROP TABLE IF EXISTS `hk_schedule_invite`;
CREATE TABLE `hk_schedule_invite` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '编号',
  `schedule_id` bigint(20) unsigned default NULL COMMENT '日程编号',
  `invite_type` varchar(45) default NULL COMMENT '邀请人类型（医生，患者）',
  `work_order_id` bigint(20) unsigned default NULL COMMENT '工作单编号',
  `invite_id` bigint(20) unsigned default NULL COMMENT '邀请人编号',
  `invite_name` varchar(200) default NULL COMMENT '邀请人姓名',
  `create_time` bigint(20) unsigned default NULL COMMENT '添加时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_sms_box`
--

DROP TABLE IF EXISTS `hk_sms_box`;
CREATE TABLE `hk_sms_box` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `send_id` bigint(20) unsigned default NULL COMMENT '发件人',
  `send_num` varchar(45) default NULL COMMENT '发件号码',
  `template_id` bigint(20) unsigned default NULL COMMENT '模板编号',
  `template_model` varchar(500) default NULL COMMENT '模板模型',
  `content` text COMMENT '内容',
  `type` varchar(45) default NULL COMMENT '类型',
  `deleted` bigint(20) unsigned default NULL COMMENT '是否删除',
  `send_time` bigint(20) unsigned default NULL COMMENT '发送时间',
  `result` varchar(45) default NULL COMMENT '发送结果',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_sms_receiver`
--

DROP TABLE IF EXISTS `hk_sms_receiver`;
CREATE TABLE `hk_sms_receiver` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `sms_id` bigint(20) unsigned default NULL COMMENT '短信编号',
  `receive_id` bigint(20) unsigned default NULL COMMENT '收件人编号',
  `work_order_id` bigint(20) unsigned default NULL COMMENT '工作单编号',
  `receive_name` varchar(500) default NULL COMMENT '收件人名',
  `receive_sms` varchar(500) default NULL COMMENT '收件人手机号',
  `create_time` bigint(20) unsigned default NULL COMMENT '发送时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_template`
--

DROP TABLE IF EXISTS `hk_template`;
CREATE TABLE `hk_template` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `name` varchar(200) default NULL COMMENT '模板名称',
  `content` longtext COMMENT '模板内容',
  `models` varchar(500) default NULL COMMENT '关联模型',
  `type` varchar(45) default NULL COMMENT '类型（邮件，短信）',
  `enable` tinyint(3) unsigned default NULL COMMENT '是否启用',
  `create_time` bigint(20) unsigned default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_work_disease`
--

DROP TABLE IF EXISTS `hk_work_disease`;
CREATE TABLE `hk_work_disease` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `work_id` bigint(20) unsigned default NULL COMMENT '工作单编号',
  `disease_id` bigint(20) unsigned default NULL COMMENT '病种编号',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_work_group`
--

DROP TABLE IF EXISTS `hk_work_group`;
CREATE TABLE `hk_work_group` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `name` varchar(200) default NULL COMMENT '组名称',
  `work_group_id` bigint(20) unsigned default NULL COMMENT '父类分组',
  `descrption` text COMMENT '描述',
  `sort` int(10) unsigned default NULL COMMENT '排序',
  `enable` tinyint(3) unsigned default NULL COMMENT '是否启用',
  `path` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `hk_work_order`
--

DROP TABLE IF EXISTS `hk_work_order`;
CREATE TABLE `hk_work_order` (
  `id` bigint(20) unsigned NOT NULL auto_increment COMMENT '编号',
  `patient_id` bigint(20) unsigned default NULL COMMENT '患者编号',
  `level` bigint(45) default NULL COMMENT '工作单级别',
  `status` bigint(45) default NULL COMMENT '工作单状态',
  `source` bigint(20) unsigned default NULL COMMENT '来源',
  `doctor_id` bigint(20) unsigned default NULL COMMENT '负责医生',
  `diseases` varchar(45) default NULL COMMENT '病种',
  `create_time` bigint(20) unsigned default NULL COMMENT '创建时间',
  `update_time` bigint(20) unsigned default NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ;

--
-- Table structure for table `sys_cms_category`
--

DROP TABLE IF EXISTS `sys_cms_category`;
CREATE TABLE `sys_cms_category` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `cms_category_id` bigint(20) unsigned default NULL COMMENT '父栏目编号',
  `root_category_id` bigint(20) unsigned default NULL COMMENT '根栏目编号',
  `name` varchar(200) default NULL COMMENT '名称',
  `img_path` varchar(500) default NULL COMMENT '栏目图片',
  `description` text COMMENT '描述',
  `path` varchar(500) default NULL COMMENT '栏目路径',
  `level` int(10) unsigned default NULL COMMENT '栏目级别',
  `enable` tinyint(3) unsigned default NULL COMMENT '是否启用',
  `sort` int(10) unsigned default NULL COMMENT '排序',
  PRIMARY KEY  (`id`),
) ;

--
-- Table structure for table `sys_cms_resource`
--

DROP TABLE IF EXISTS `sys_cms_resource`;
CREATE TABLE `sys_cms_resource` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cateogyr_id` bigint(20) unsigned default NULL COMMENT '栏目',
  `title` varchar(500) default NULL COMMENT '标题',
  `sub_title` varchar(500) default NULL COMMENT '副标题',
  `key_word` varchar(1000) default NULL COMMENT '关键词',
  `author` varchar(45) default NULL COMMENT '作者',
  `source` varchar(45) default NULL COMMENT '来源',
  `content` longtext COMMENT '内容',
  `img_num` int(10) unsigned default NULL COMMENT '图片数量',
  `view_num` int(10) unsigned default NULL COMMENT '浏览次数',
  `file_path` varchar(255) NOT NULL default '' COMMENT '附件地址',
  `img_path` varchar(255) NOT NULL default '' COMMENT '图片地址',
  `add_time` bigint(20) unsigned NOT NULL default '0' COMMENT '添加时间',
  `update_time` bigint(20) unsigned NOT NULL default '0' COMMENT '更新时间',
  `sort` int(10) unsigned NOT NULL default '0' COMMENT '排序',
  `category_path` varchar(255) NOT NULL default '' COMMENT '栏目路径',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ;

--
-- Table structure for table `sys_dictionary`
--

DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `NAME` varchar(200) default NULL,
  `REF_CODE` varchar(200) default NULL,
  `SORT` int(11) default NULL,
  `DESCRIPTION` text,
  `DICTIONARY_ID` bigint(20) unsigned default '0',
  `VALUE` varchar(200) default NULL,
  `PATH` varchar(500) default NULL,
  PRIMARY KEY  (`ID`),
) ;

--
-- Table structure for table `sys_member`
--

DROP TABLE IF EXISTS `sys_member`;
CREATE TABLE `sys_member` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) default NULL,
  `email` varchar(50) default NULL,
  `role` varchar(100) default NULL,
  `auth_code` varchar(200) default NULL,
  `enable` tinyint(4) default NULL,
  `model_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ;

--
-- Table structure for table `sys_region`
--

DROP TABLE IF EXISTS `sys_region`;
CREATE TABLE `sys_region` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `region` int(11) unsigned NOT NULL default '0',
  `region_name` varchar(120) NOT NULL default '',
  `region_type` tinyint(1) NOT NULL default '2',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`region`),
  KEY `region_type` (`region_type`)
) ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

