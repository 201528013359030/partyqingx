-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-11-28 09:32:26
-- 服务器版本： 5.1.73-log
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `lockAdmin` tinyint(2) NOT NULL DEFAULT '0',
  `loginTime` int(10) DEFAULT '0',
  `adminEmail` varchar(64) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `memo` varchar(128) DEFAULT NULL,
  `lockTime` varchar(32) DEFAULT NULL,
  `lockNum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `type`, `lockAdmin`, `loginTime`, `adminEmail`, `lastLoginTime`, `memo`, `lockTime`, `lockNum`) VALUES
(1, 'admin', '912c212a51797df0d74308526d532299', 0, 0, 0, NULL, NULL, NULL, '', 0),
(2, 'suntao', '912c212a51797df0d74308526d532299', 0, 0, 0, NULL, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('企业管理员', '2', 1479714771),
('普通管理员', '1', 1479177901);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/admin/assignment/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1478853163, 1478853163),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1478853163, 1478853163),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1478853163, 1478853163),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1478853163, 1478853163),
('/admin/default/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/default/index', 2, NULL, NULL, NULL, 1478853163, 1478853163),
('/admin/menu/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/menu/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/permission/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/permission/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/role/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/role/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/route/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/route/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/rule/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/admin/rule/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/company/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/company/check-index', 2, NULL, NULL, NULL, 1479281362, 1479281362),
('/company/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/debug/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/debug/default/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/enterprise/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/enterprise/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/extra/*', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/extra/index', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/gii/*', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/gii/default/index', 2, NULL, NULL, NULL, 1479177780, 1479177780),
('/hiscompany/*', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/hiscompany/index', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/hisproject/*', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/hisproject/index', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/home/*', 2, NULL, NULL, NULL, 1479970034, 1479970034),
('/home/index', 2, NULL, NULL, NULL, 1479970034, 1479970034),
('/industry/*', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/industry/index', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/memoinfo/*', 2, NULL, NULL, NULL, 1479794834, 1479794834),
('/memoinfo/index', 2, NULL, NULL, NULL, 1479794953, 1479794953),
('/project/*', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/project/check-index', 2, NULL, NULL, NULL, 1479281362, 1479281362),
('/project/index', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/publicinfo/*', 2, NULL, NULL, NULL, 1479187476, 1479187476),
('/publicinfo/create', 2, NULL, NULL, NULL, 1479797128, 1479797128),
('/publicinfo/index', 2, NULL, NULL, NULL, 1479187422, 1479187422),
('/publicinfo/menuindex', 2, NULL, NULL, NULL, 1479884648, 1479884648),
('/questioninfo/*', 2, NULL, NULL, NULL, 1479794070, 1479794070),
('/questioninfo/index', 2, NULL, NULL, NULL, 1479794086, 1479794086),
('/region/*', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/region/index', 2, NULL, NULL, NULL, 1479177781, 1479177781),
('/site/*', 2, NULL, NULL, NULL, 1479955923, 1479955923),
('/site/index', 2, NULL, NULL, NULL, 1479955923, 1479955923),
('企业管理', 2, NULL, NULL, NULL, 1479714542, 1479714542),
('企业管理员', 1, NULL, NULL, NULL, 1479714712, 1479714712),
('企业问题反馈', 2, NULL, NULL, NULL, 1479794555, 1479794872),
('信息审核', 2, NULL, NULL, NULL, 1479714588, 1479714588),
('公共信息', 2, NULL, NULL, NULL, 1479187658, 1479187658),
('功能控制', 2, NULL, NULL, NULL, 1479177810, 1479177810),
('数据变更备案', 2, NULL, NULL, NULL, 1479714664, 1479714664),
('数据统计', 2, NULL, NULL, NULL, 1479714696, 1479714696),
('普通管理员', 1, NULL, NULL, NULL, 1479177889, 1479177889),
('系统首页', 2, NULL, NULL, NULL, 1479970053, 1479970053),
('调试', 2, NULL, NULL, NULL, 1479177854, 1479177854),
('项目管理', 2, NULL, NULL, NULL, 1479714568, 1479714568);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('功能控制', '/company/*'),
('信息审核', '/company/check-index'),
('企业管理', '/company/index'),
('调试', '/debug/*'),
('功能控制', '/enterprise/*'),
('功能控制', '/extra/*'),
('调试', '/gii/*'),
('功能控制', '/hiscompany/*'),
('数据变更备案', '/hiscompany/*'),
('功能控制', '/hisproject/*'),
('数据变更备案', '/hisproject/*'),
('系统首页', '/home/*'),
('功能控制', '/industry/*'),
('企业问题反馈', '/memoinfo/*'),
('功能控制', '/project/*'),
('信息审核', '/project/check-index'),
('项目管理', '/project/index'),
('公共信息', '/publicinfo/*'),
('企业问题反馈', '/questioninfo/*'),
('企业问题反馈', '/questioninfo/index'),
('功能控制', '/region/*'),
('企业管理员', '/site/*'),
('普通管理员', '/site/*'),
('企业管理员', '企业管理'),
('企业管理员', '企业问题反馈'),
('普通管理员', '企业问题反馈'),
('企业管理员', '公共信息'),
('普通管理员', '公共信息'),
('普通管理员', '功能控制'),
('企业管理员', '系统首页'),
('普通管理员', '系统首页'),
('普通管理员', '调试'),
('企业管理员', '项目管理');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `is_delete` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否删除 1未删除 2已删除',
  `created_at` datetime NOT NULL COMMENT '添加时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cdr`
--

CREATE TABLE IF NOT EXISTS `cdr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Bid` bigint(20) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT '0',
  `CentrexNum` varchar(64) NOT NULL COMMENT 'centrex number',
  `Sexten` varchar(64) NOT NULL COMMENT 'source exten',
  `Sextenshort` varchar(64) NOT NULL COMMENT 'source exten short number',
  `Dexten` varchar(64) NOT NULL COMMENT 'dest exten ',
  `Dextenshort` varchar(64) NOT NULL COMMENT 'dest exten short number',
  `BillDate` int(11) NOT NULL COMMENT 'bill call date',
  `BillTime` varchar(6) NOT NULL COMMENT 'bill call time',
  `BillSec` int(11) NOT NULL,
  `Monitorfilename` varchar(256) DEFAULT NULL,
  `SUid` varchar(64) NOT NULL,
  `SEid` varchar(64) NOT NULL,
  `SPid` varchar(64) NOT NULL,
  `DUid` varchar(64) NOT NULL,
  `DEid` varchar(64) NOT NULL,
  `DPid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `companydetail`
--

CREATE TABLE IF NOT EXISTS `companydetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `cName` varchar(32) NOT NULL COMMENT '公司名称',
  `intro` varchar(1024) DEFAULT NULL COMMENT '公司简介',
  `position` varchar(256) DEFAULT NULL COMMENT '位置',
  `space` float NOT NULL DEFAULT '0' COMMENT '占地面积',
  `products` varchar(512) DEFAULT NULL COMMENT '主营产品',
  `employees` int(10) NOT NULL DEFAULT '0' COMMENT '就业人员数量',
  `production` float NOT NULL DEFAULT '0' COMMENT '产值',
  `investments` float NOT NULL DEFAULT '0' COMMENT '投资总额',
  `taxes` float NOT NULL DEFAULT '0' COMMENT '税收',
  `operateStatus` varchar(512) DEFAULT NULL COMMENT '经营状况',
  `ofIndustry` int(10) NOT NULL COMMENT '所属行业',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `createTime` varchar(32) NOT NULL COMMENT '创建时间',
  `checked` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否审核 0：未审核 1：已审核，未通过 2：已通过审核',
  `checkOpinion` varchar(128) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(32) DEFAULT NULL COMMENT '审核时间',
  `assets` float NOT NULL DEFAULT '0' COMMENT '资产总额',
  `debts` float NOT NULL DEFAULT '0' COMMENT '负债总额',
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='企业信息表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `companydetail`
--

INSERT INTO `companydetail` (`id`, `cName`, `intro`, `position`, `space`, `products`, `employees`, `production`, `investments`, `taxes`, `operateStatus`, `ofIndustry`, `creator`, `createTime`, `checked`, `checkOpinion`, `checkTime`, `assets`, `debts`, `memo`) VALUES
(2, '测试', '', '', 0, '', 0, 0, 0, 0, NULL, 2, 'test', '2016-11-16 11:18:20', 0, '', '2016-11-17 15:50:51', 0, 0, 'test');

-- --------------------------------------------------------

--
-- 表的结构 `companyinfo`
--

CREATE TABLE IF NOT EXISTS `companyinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `cName` varchar(32) NOT NULL COMMENT '公司名称',
  `intro` varchar(1024) DEFAULT NULL COMMENT '公司简介',
  `position` varchar(256) DEFAULT NULL COMMENT '位置',
  `space` float NOT NULL DEFAULT '0' COMMENT '占地面积',
  `products` varchar(512) DEFAULT NULL COMMENT '主营产品',
  `employees` int(10) NOT NULL DEFAULT '0' COMMENT '就业人员数量',
  `production` float NOT NULL DEFAULT '0' COMMENT '产值',
  `investments` float NOT NULL DEFAULT '0' COMMENT '投资总额',
  `taxes` float NOT NULL DEFAULT '0' COMMENT '税收',
  `operateStatus` varchar(512) DEFAULT NULL COMMENT '经营状况',
  `ofIndustry` int(10) NOT NULL COMMENT '所属行业',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `createTime` varchar(32) NOT NULL COMMENT '创建时间',
  `checked` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否审核 0：未审核 1：已审核，未通过 2：已通过审核',
  `checkOpinion` varchar(128) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(32) DEFAULT NULL COMMENT '审核时间',
  `assets` float NOT NULL DEFAULT '0' COMMENT '资产总额',
  `debts` float NOT NULL DEFAULT '0' COMMENT '负债总额',
  `memo` varchar(128) DEFAULT NULL,
  `regMark` varchar(64) DEFAULT NULL COMMENT '注册号',
  `legalRep` varchar(32) DEFAULT NULL COMMENT '法定代表人',
  `type` varchar(32) DEFAULT NULL COMMENT '企业类型',
  `phone` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '企业状态',
  `scale` tinyint(3) NOT NULL DEFAULT '0' COMMENT '企业规模',
  `regCapital` float NOT NULL DEFAULT '0' COMMENT '注册资本（万元）',
  `foundingTime` varchar(32) DEFAULT NULL COMMENT '成立日期',
  `regType` tinyint(3) NOT NULL DEFAULT '0' COMMENT '登记注册类型',
  `domain` varchar(64) DEFAULT NULL COMMENT '功能区',
  `localRegion` varchar(64) DEFAULT NULL COMMENT '所在区域',
  `publicContacts` varchar(32) DEFAULT NULL COMMENT '公开联系人',
  `publicPhone` varchar(32) DEFAULT NULL COMMENT '公开联系电话',
  `publicEmail` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `publicUrl` varchar(64) DEFAULT NULL COMMENT '网址',
  `shortName` varchar(32) DEFAULT NULL COMMENT '公司简称',
  `eid` varchar(32) NOT NULL COMMENT '企业eid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='企业信息表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `companyinfo`
--

INSERT INTO `companyinfo` (`id`, `cName`, `intro`, `position`, `space`, `products`, `employees`, `production`, `investments`, `taxes`, `operateStatus`, `ofIndustry`, `creator`, `createTime`, `checked`, `checkOpinion`, `checkTime`, `assets`, `debts`, `memo`, `regMark`, `legalRep`, `type`, `phone`, `status`, `scale`, `regCapital`, `foundingTime`, `regType`, `domain`, `localRegion`, `publicContacts`, `publicPhone`, `publicEmail`, `publicUrl`, `shortName`, `eid`) VALUES
(2, '测试', '', '', 0, '', 0, 0, 0, 0, NULL, 2, 'test', '2016-11-16 11:18:20', 0, '', '2016-11-17 15:50:51', 0, 0, 'test', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5'),
(4, '沈阳机床股份有限公司', '', '', 0, '', 0, 0, 0, 0, NULL, 3, 'test', '2016-11-21 10:40:57', 0, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2'),
(6, '辽宁冶矿重型机械有限公司', '', '', 0, '', 0, 0, 0, 0, NULL, 3, 'test', '2016-11-22 15:09:44', 0, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4');

-- --------------------------------------------------------

--
-- 表的结构 `enterprise`
--

CREATE TABLE IF NOT EXISTS `enterprise` (
  `eid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(64) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `ofIndustry` tinyint(4) NOT NULL DEFAULT '0',
  `intro` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(32) DEFAULT NULL,
  `faxNumber` varchar(32) DEFAULT NULL,
  `license` varchar(64) DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `memo` varchar(256) DEFAULT NULL,
  `isOpen` tinyint(4) NOT NULL DEFAULT '1',
  `uid` varchar(16) DEFAULT NULL COMMENT 'ldap uid',
  `vision` varchar(512) DEFAULT NULL,
  `officeAddress` varchar(128) DEFAULT NULL COMMENT 'åŠžå…¬åœ°å€',
  `contacts` varchar(32) DEFAULT NULL COMMENT 'è”ç³»äºº',
  `postCode` varchar(32) DEFAULT NULL COMMENT 'é‚®ç¼–',
  `email` varchar(64) DEFAULT NULL COMMENT 'Email',
  `webSite` varchar(64) DEFAULT NULL COMMENT 'å•ä½ç½‘å€',
  `defaultTypes` varchar(128) DEFAULT NULL COMMENT 'é»˜è®¤è§’è‰²ç±»åž‹',
  `centrexNumber` varchar(64) DEFAULT NULL COMMENT '群号',
  `outPrefix` varchar(32) DEFAULT NULL COMMENT 'å‡ºç¾¤å­—å† ',
  `offlinemsgpath` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `enterprise`
--

INSERT INTO `enterprise` (`eid`, `ename`, `type`, `ofIndustry`, `intro`, `phoneNumber`, `faxNumber`, `license`, `logo`, `memo`, `isOpen`, `uid`, `vision`, `officeAddress`, `contacts`, `postCode`, `email`, `webSite`, `defaultTypes`, `centrexNumber`, `outPrefix`, `offlinemsgpath`) VALUES
(2, '演示企业', '129880', 0, '', '', '', NULL, '', '', 1, '4', '', '', '', '', '', '', '129878,129880,129882', '1111', '', 0),
(4, '铁西区（开发区）工业云平台', '129896', 19, '', '000', '111', NULL, '', '', 1, '5', '', '', '', '', '', '', '129894,129896,129898', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `extrainfo`
--

CREATE TABLE IF NOT EXISTS `extrainfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cId` int(10) NOT NULL COMMENT '公司ID',
  `type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '信息类别 1：经营状况 2：税收信息 3：科技信息',
  `ofyear` varchar(32) NOT NULL COMMENT '年份',
  `value` varchar(256) NOT NULL COMMENT '值',
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='企业额外信息表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `extrainfo`
--

INSERT INTO `extrainfo` (`id`, `cId`, `type`, `ofyear`, `value`, `memo`) VALUES
(2, 4, 1, '2015', '2122.3', NULL),
(4, 4, 2, '2016', '33256.7', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `hiscompanyinfo`
--

CREATE TABLE IF NOT EXISTS `hiscompanyinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `cName` varchar(32) NOT NULL COMMENT '公司名称',
  `intro` varchar(1024) DEFAULT NULL COMMENT '公司简介',
  `position` varchar(256) DEFAULT NULL COMMENT '位置',
  `space` float NOT NULL DEFAULT '0' COMMENT '占地面积',
  `products` varchar(512) DEFAULT NULL COMMENT '主营产品',
  `employees` int(10) NOT NULL DEFAULT '0' COMMENT '就业人员数量',
  `production` float NOT NULL DEFAULT '0' COMMENT '产值',
  `investments` float NOT NULL DEFAULT '0' COMMENT '投资总额',
  `taxes` float NOT NULL DEFAULT '0' COMMENT '税收',
  `operateStatus` varchar(512) DEFAULT NULL COMMENT '经营状况',
  `ofIndustry` int(10) NOT NULL COMMENT '所属行业',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `createTime` varchar(32) NOT NULL COMMENT '创建时间',
  `memo` varchar(128) DEFAULT NULL,
  `updateTime` varchar(32) NOT NULL COMMENT '更新时间',
  `updateOperator` varchar(32) NOT NULL COMMENT '更新者姓名',
  `checked` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否审核 0：未审核 1：已审核，未通过 2：已通过审核',
  `checkOpinion` varchar(128) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(32) DEFAULT NULL COMMENT '审核时间',
  `assets` float NOT NULL DEFAULT '0' COMMENT '资产总额',
  `debts` float NOT NULL DEFAULT '0' COMMENT '负债总额',
  `regMark` varchar(64) DEFAULT NULL COMMENT '注册号',
  `legalRep` varchar(32) DEFAULT NULL COMMENT '法定代表人',
  `type` varchar(32) DEFAULT NULL COMMENT '企业类型',
  `phone` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '企业状态',
  `scale` tinyint(3) NOT NULL DEFAULT '0' COMMENT '企业规模',
  `regCapital` float NOT NULL DEFAULT '0' COMMENT '注册资本（万元）',
  `foundingTime` varchar(32) DEFAULT NULL COMMENT '成立日期',
  `regType` tinyint(3) NOT NULL DEFAULT '0' COMMENT '登记注册类型',
  `domain` varchar(64) DEFAULT NULL COMMENT '功能区',
  `localRegion` varchar(64) DEFAULT NULL COMMENT '所在区域',
  `publicContacts` varchar(32) DEFAULT NULL COMMENT '公开联系人',
  `publicPhone` varchar(32) DEFAULT NULL COMMENT '公开联系电话',
  `publicEmail` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `publicUrl` varchar(64) DEFAULT NULL COMMENT '网址',
  `shortName` varchar(32) DEFAULT NULL COMMENT '公司简称',
  `eid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='企业信息表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `hiscompanyinfo`
--

INSERT INTO `hiscompanyinfo` (`id`, `cName`, `intro`, `position`, `space`, `products`, `employees`, `production`, `investments`, `taxes`, `operateStatus`, `ofIndustry`, `creator`, `createTime`, `memo`, `updateTime`, `updateOperator`, `checked`, `checkOpinion`, `checkTime`, `assets`, `debts`, `regMark`, `legalRep`, `type`, `phone`, `status`, `scale`, `regCapital`, `foundingTime`, `regType`, `domain`, `localRegion`, `publicContacts`, `publicPhone`, `publicEmail`, `publicUrl`, `shortName`, `eid`) VALUES
(2, '测试', '', '', 0, '', 0, 0, 0, 0, NULL, 2, 'test', '2016-11-16 11:18:20', '', '2016-11-17 15:50:51', 'updator', 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '沈阳机床股份有限公司', '', '', 0, '', 0, 0, 0, 0, NULL, 2, 'test', '2016-11-16 11:18:20', '', '2016-11-17 15:51:31', 'updator', 0, '', '2016-11-17 15:50:51', 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `hisprojectinfo`
--

CREATE TABLE IF NOT EXISTS `hisprojectinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pName` varchar(32) NOT NULL COMMENT '项目名称',
  `intro` varchar(1024) DEFAULT NULL COMMENT '简介',
  `type` varchar(32) DEFAULT NULL COMMENT '类别',
  `ofCmp` varchar(32) NOT NULL COMMENT '所属公司',
  `ofIndustry` int(10) NOT NULL DEFAULT '1' COMMENT '所属行业',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `createTime` varchar(32) NOT NULL COMMENT '创建时间',
  `manager` varchar(32) NOT NULL COMMENT '负责人',
  `checked` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `checkOpinion` varchar(128) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(32) DEFAULT NULL COMMENT '审核时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '项目状态 0：未开始 1：进行中 2：已完成',
  `background` varchar(512) DEFAULT NULL COMMENT '项目背景',
  `targetIncome` float NOT NULL DEFAULT '0' COMMENT '目标与产出（万元）',
  `beneficiary` varchar(32) DEFAULT NULL COMMENT '受益者',
  `plan` varchar(512) DEFAULT NULL COMMENT '项目实施计划',
  `schedule` varchar(512) DEFAULT NULL COMMENT '时间表',
  `structure` varchar(512) DEFAULT NULL COMMENT '项目组织架构',
  `expenseControl` varchar(512) DEFAULT NULL COMMENT '费用控制',
  `evaluation` varchar(512) DEFAULT NULL COMMENT '监控与评估',
  `memo` varchar(128) DEFAULT NULL,
  `updateTime` varchar(32) NOT NULL COMMENT '更新时间',
  `updateOperator` varchar(32) NOT NULL COMMENT '更新者姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='项目信息表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `hisprojectinfo`
--

INSERT INTO `hisprojectinfo` (`id`, `pName`, `intro`, `type`, `ofCmp`, `ofIndustry`, `creator`, `createTime`, `manager`, `checked`, `checkOpinion`, `checkTime`, `status`, `background`, `targetIncome`, `beneficiary`, `plan`, `schedule`, `structure`, `expenseControl`, `evaluation`, `memo`, `updateTime`, `updateOperator`) VALUES
(2, '测试项目', '', '', '2', 5, 'test', '2016-11-16 15:16:03', 'test', 0, NULL, NULL, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-11-17 15:51:17', 'updator');

-- --------------------------------------------------------

--
-- 表的结构 `historycompanyinfo`
--

CREATE TABLE IF NOT EXISTS `historycompanyinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `cName` varchar(64) NOT NULL COMMENT '公司名称',
  `intro` varchar(2048) DEFAULT NULL COMMENT '公司简介',
  `position` varchar(512) DEFAULT NULL COMMENT '位置',
  `space` varchar(64) NOT NULL COMMENT '占地面积',
  `products` varchar(512) DEFAULT NULL COMMENT '主营产品',
  `employees` varchar(32) NOT NULL COMMENT '就业人员数量',
  `production` varchar(32) NOT NULL COMMENT '产值',
  `investments` varchar(32) NOT NULL COMMENT '投资总额',
  `taxes` varchar(32) NOT NULL COMMENT '税收',
  `operateStatus` varchar(1024) DEFAULT NULL COMMENT '经营状况',
  `ofIndustry` varchar(32) NOT NULL COMMENT '所属行业',
  `creator` varchar(64) NOT NULL COMMENT '创建者',
  `createTime` varchar(64) NOT NULL COMMENT '创建时间',
  `memo` varchar(256) DEFAULT NULL,
  `updateTime` varchar(32) NOT NULL COMMENT '更新时间',
  `updateOperator` varchar(32) NOT NULL COMMENT '更新者姓名',
  `checked` varchar(32) NOT NULL COMMENT '是否审核 0：未审核 1：已审核，未通过 2：已通过审核',
  `checkOpinion` varchar(256) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(64) DEFAULT NULL COMMENT '审核时间',
  `assets` varchar(32) NOT NULL COMMENT '资产总额',
  `debts` varchar(32) NOT NULL COMMENT '负债总额',
  `regMark` varchar(128) DEFAULT NULL COMMENT '注册号',
  `legalRep` varchar(64) DEFAULT NULL COMMENT '法定代表人',
  `type` varchar(64) DEFAULT NULL COMMENT '企业类型',
  `phone` varchar(128) DEFAULT NULL COMMENT '联系电话',
  `status` varchar(32) DEFAULT NULL COMMENT '企业状态',
  `scale` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `regCapital` varchar(32) DEFAULT NULL COMMENT '注册资本（万元）',
  `foundingTime` varchar(64) DEFAULT NULL COMMENT '成立日期',
  `regType` varchar(32) DEFAULT NULL COMMENT '登记注册类型',
  `domain` varchar(128) DEFAULT NULL COMMENT '功能区',
  `localRegion` varchar(128) DEFAULT NULL COMMENT '所在区域',
  `publicContacts` varchar(64) DEFAULT NULL COMMENT '公开联系人',
  `publicPhone` varchar(64) DEFAULT NULL COMMENT '公开联系电话',
  `publicEmail` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `publicUrl` varchar(128) DEFAULT NULL COMMENT '网址',
  `shortName` varchar(64) DEFAULT NULL COMMENT '公司简称',
  `eid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='企业信息表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `historycompanyinfo`
--

INSERT INTO `historycompanyinfo` (`id`, `cName`, `intro`, `position`, `space`, `products`, `employees`, `production`, `investments`, `taxes`, `operateStatus`, `ofIndustry`, `creator`, `createTime`, `memo`, `updateTime`, `updateOperator`, `checked`, `checkOpinion`, `checkTime`, `assets`, `debts`, `regMark`, `legalRep`, `type`, `phone`, `status`, `scale`, `regCapital`, `foundingTime`, `regType`, `domain`, `localRegion`, `publicContacts`, `publicPhone`, `publicEmail`, `publicUrl`, `shortName`, `eid`) VALUES
(2, '测试', '', '', '0', '', '0', '0', '0', '0', '', '2', 'test', '2016-11-16 11:18:20', '', '2016-11-17 15:50:51', 'updator', '0', '', '->2016-11-17 15:50:51', '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '测试', '', '', '0', '', '0', '0', '0', '0', '', '2', 'test', '2016-11-16 11:18:20', '->test', '2016-11-17 15:51:31', 'updator', '0', '', '2016-11-17 15:50:51', '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `historyprojectinfo`
--

CREATE TABLE IF NOT EXISTS `historyprojectinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pName` varchar(64) NOT NULL COMMENT '项目名称',
  `intro` varchar(2048) DEFAULT NULL COMMENT '简介',
  `type` varchar(64) DEFAULT NULL COMMENT '类别',
  `ofCmp` varchar(64) NOT NULL COMMENT '所属公司',
  `ofIndustry` varchar(32) NOT NULL COMMENT '所属行业',
  `creator` varchar(64) NOT NULL COMMENT '创建者',
  `createTime` varchar(64) NOT NULL COMMENT '创建时间',
  `manager` varchar(64) NOT NULL COMMENT '负责人',
  `checked` varchar(32) NOT NULL COMMENT '是否审核',
  `checkOpinion` varchar(256) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(64) DEFAULT NULL COMMENT '审核时间',
  `status` varchar(32) NOT NULL COMMENT '项目状态 0：未开始 1：进行中 2：已完成',
  `background` varchar(512) DEFAULT NULL COMMENT '项目背景',
  `targetIncome` varchar(32) NOT NULL COMMENT '目标与产出（万元）',
  `beneficiary` varchar(64) DEFAULT NULL COMMENT '受益者',
  `plan` varchar(1024) DEFAULT NULL COMMENT '项目实施计划',
  `schedule` varchar(1024) DEFAULT NULL COMMENT '时间表',
  `structure` varchar(1024) DEFAULT NULL COMMENT '项目组织架构',
  `expenseControl` varchar(1024) DEFAULT NULL COMMENT '费用控制',
  `evaluation` varchar(1024) DEFAULT NULL COMMENT '监控与评估',
  `memo` varchar(256) DEFAULT NULL,
  `updateTime` varchar(32) NOT NULL COMMENT '更新时间',
  `updateOperator` varchar(32) NOT NULL COMMENT '更新者姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='项目信息表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `historyprojectinfo`
--

INSERT INTO `historyprojectinfo` (`id`, `pName`, `intro`, `type`, `ofCmp`, `ofIndustry`, `creator`, `createTime`, `manager`, `checked`, `checkOpinion`, `checkTime`, `status`, `background`, `targetIncome`, `beneficiary`, `plan`, `schedule`, `structure`, `expenseControl`, `evaluation`, `memo`, `updateTime`, `updateOperator`) VALUES
(2, '测试项目', '', '', '2', '5', 'test', '2016-11-16 15:16:03', 'test', '0', '', '->2016-11-17 15:51:17', '0', '', '0', '', '', '', '', '', '', '', '2016-11-17 15:51:17', 'updator');

-- --------------------------------------------------------

--
-- 表的结构 `industryinfo`
--

CREATE TABLE IF NOT EXISTS `industryinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iName` varchar(32) NOT NULL COMMENT '行业名称',
  `intro` varchar(1024) DEFAULT NULL COMMENT '行业简介',
  `type` tinyint(3) NOT NULL DEFAULT '2' COMMENT '所属产业 1：农业 2：工业、建筑业 3：其他',
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='2	行业信息表' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `industryinfo`
--

INSERT INTO `industryinfo` (`id`, `iName`, `intro`, `type`, `memo`) VALUES
(1, '农、林、牧、渔业', '', 1, ''),
(2, '采矿业', '', 2, ''),
(3, '制造业', '', 2, ''),
(4, '电力、热力、燃气及水的生产和供应业', '', 2, ''),
(5, '环境和公共设施管理业', '', 3, ''),
(6, '建筑业', '', 2, ''),
(7, '交通运输、仓储业和邮政业', '', 3, ''),
(8, '信息传输、计算机服务和软件业', '', 3, ''),
(9, '批发和零售业', '', 3, ''),
(10, '住宿、餐饮业', '', 3, ''),
(11, '金融、保险业', '', 3, ''),
(12, '房地产业', '', 3, ''),
(13, '租赁和商务服务业', '', 3, ''),
(14, '科学研究、技术服务和地质勘查业', '', 3, ''),
(15, '水利、环境和公共设施管理业', '', 3, ''),
(16, '居民服务和其他服务业', '', 3, ''),
(17, '教育', '', 3, ''),
(18, '卫生、社会保障和社会服务业', '', 3, ''),
(19, '文化、体育、娱乐业', '', 3, ''),
(20, '综合（含投资类、主业不明显）', '', 3, ''),
(21, '其它', '', 3, '');

-- --------------------------------------------------------

--
-- 表的结构 `ipwhitelist`
--

CREATE TABLE IF NOT EXISTS `ipwhitelist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) NOT NULL,
  `ipAddr` varchar(32) NOT NULL DEFAULT '*',
  `memo` varchar(128) DEFAULT NULL,
  `eid` varchar(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=235 ;

--
-- 转存表中的数据 `ipwhitelist`
--

INSERT INTO `ipwhitelist` (`id`, `userName`, `ipAddr`, `memo`, `eid`) VALUES
(1, 'admin', '*', NULL, '0'),
(5, 'gaozj', '*', NULL, '0'),
(9, 'ac_voip', '*', NULL, '0'),
(13, 'wyh', '*', NULL, '0'),
(15, 'lfy', '*', NULL, '0'),
(17, 'shj', '*', NULL, '0'),
(19, 'pbh', '*', NULL, '0'),
(21, 'dqc', '*', NULL, '0'),
(23, 'lhx', '*', NULL, '0'),
(25, 'wxd', '*', NULL, '0'),
(27, 'hzl', '*', NULL, '0'),
(29, 'yjz', '*', NULL, '0'),
(31, 'blp', '*', NULL, '0'),
(33, 'nqh', '*', NULL, '0'),
(35, 'sunt', '*', NULL, '0'),
(38, 'lidong', '*', NULL, '0'),
(39, 'wangli', '*', NULL, '0'),
(40, 'test', '*', NULL, '0'),
(41, 'admin', '*', NULL, '0'),
(42, 'admin', '*', NULL, '0'),
(43, 'blp', '*', NULL, '0'),
(44, 'happyqq', '*', NULL, '0'),
(45, 'mytest', '*', NULL, '0'),
(66, 'telpo', '*', NULL, '0'),
(70, 'www', '*', NULL, '0'),
(74, '801', '*', NULL, '0'),
(76, 'admin161', '*', NULL, '910'),
(78, 'admin161', '*', NULL, '0'),
(80, 'admint1', '*', NULL, '845'),
(82, 'admint2', '*', NULL, '341'),
(84, 'admint2', '*', NULL, '0'),
(86, 'admint3', '*', NULL, '667'),
(88, 'admint4', '*', NULL, '955'),
(90, 'admint5', '*', NULL, '758'),
(92, 'admint6', '*', NULL, '222'),
(94, 'admina', '*', NULL, '883'),
(96, 'admint6_1', '*', NULL, '222'),
(102, 'admin243', '*', NULL, '243'),
(104, 'admint7', '*', NULL, '0'),
(106, 'admina_2', '*', NULL, '883'),
(108, 'admina_1', '*', NULL, '883'),
(110, 'admin952', '*', NULL, '952'),
(112, 'admint1', '*', NULL, '0'),
(114, 'admint8', '*', NULL, '523'),
(116, 'admint9', '*', NULL, '998'),
(118, 'admint10', '*', NULL, '579'),
(120, 'admint11', '*', NULL, '209'),
(122, 'admint12', '*', NULL, '95452'),
(124, 'suntao', '*', NULL, '19323'),
(126, 'suntao', '*', NULL, '0'),
(128, 'suntao88088', '*', NULL, '0'),
(130, 'suntao88088', '*', NULL, '0'),
(132, 'admin952', '*', NULL, '0'),
(134, 'suntao88088', '*', NULL, '0'),
(136, 'suntao88088', '*', NULL, '0'),
(138, 'suntao88088', '*', NULL, '0'),
(140, 'suntao88088', '*', NULL, '0'),
(142, 'suntao88088', '*', NULL, '0'),
(144, 'suntao88088', '*', NULL, '0'),
(146, 'suntao88088', '*', NULL, '0'),
(148, 'suntao88088', '*', NULL, '0'),
(150, 'suntao88088', '*', NULL, '0'),
(152, 'suntao88088', '*', NULL, '0'),
(154, 'suntao88088', '*', NULL, '0'),
(156, 'admin86991', '*', NULL, '86991'),
(158, 'admint13', '*', NULL, '19369'),
(160, 'jiaqiong', '*', NULL, '45639'),
(162, 'jiaqiong', '*', NULL, '0'),
(164, 'li', '*', NULL, '14517'),
(166, 'li', '*', NULL, '0'),
(168, 'li', '*', NULL, '0'),
(170, 'li', '*', NULL, '0'),
(172, 'li', '*', NULL, '0'),
(174, 'li', '*', NULL, '0'),
(176, 'admin68844', '*', NULL, '68844'),
(178, 'adminqq', '*', NULL, '48903'),
(180, 'admin@test', '*', NULL, '0'),
(182, 'hello@62234', '*', NULL, '62234'),
(186, 'kitty1@62234', '*', NULL, '62234'),
(190, 'zfjia@62234', '*', NULL, '62234'),
(194, 'kitty@62234', '*', NULL, '62234'),
(196, 'admin@29855', '*', NULL, '29855'),
(198, 'admin1@29855', '*', NULL, '0'),
(200, 'admin@29855', '*', NULL, '0'),
(204, 'admindz@78070', '*', NULL, '78070'),
(206, 'whta@19323', '*', NULL, '19323'),
(212, 'admin@49368', '*', NULL, '49368'),
(214, 'test@62234', '*', NULL, '62234'),
(216, 'suntao88088@19323', '*', NULL, '0'),
(218, 'adminqq@48903', '*', NULL, '0'),
(220, 'jack@69746', '*', NULL, '69746'),
(222, 'petter@62818', '*', NULL, '62818'),
(224, 'admin@31177', '*', NULL, '31177'),
(230, 'test88088@67139', '*', NULL, '67139'),
(232, 'yanshi@4', '*', NULL, '4'),
(234, 'admin@5', '*', NULL, '5');

-- --------------------------------------------------------

--
-- 表的结构 `lappinfo`
--

CREATE TABLE IF NOT EXISTS `lappinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轻应用唯一ID',
  `name` varchar(100) DEFAULT NULL COMMENT '轻应用名称',
  `description` varchar(100) DEFAULT NULL COMMENT '轻应用描述',
  `url` varchar(500) DEFAULT NULL COMMENT '轻应用访问地址',
  `icon` varchar(500) DEFAULT NULL COMMENT '轻应用的图标',
  `icon_selected` varchar(500) DEFAULT NULL COMMENT '轻应用的图标（选中状态）',
  `api_key` varchar(100) DEFAULT NULL COMMENT '轻应用的api_key',
  `notice_way` int(11) DEFAULT NULL COMMENT '提醒方式',
  `show_way` int(11) DEFAULT NULL COMMENT '显示位置',
  `android_ver` int(11) DEFAULT NULL COMMENT '安卓最低版本',
  `ios_ver` int(11) DEFAULT NULL COMMENT 'ios最低版本',
  `pc_ver` int(11) DEFAULT NULL COMMENT 'pc最低版本',
  `version` int(11) DEFAULT NULL COMMENT '轻应用的版本号',
  `admin` varchar(500) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL COMMENT '分类id',
  `eid` varchar(30) NOT NULL COMMENT '属于哪个企业',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新的时间',
  `use_assets` int(11) NOT NULL DEFAULT '0',
  `assets_count` int(11) NOT NULL DEFAULT '0',
  `web_type` int(11) NOT NULL DEFAULT '0' COMMENT '应用类型标识, 0在线轻应用，1离线轻应用，2 h5轻应用',
  `assets` varchar(128) DEFAULT NULL,
  `server_ip` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轻应用信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `lapprelation`
--

CREATE TABLE IF NOT EXISTS `lapprelation` (
  `roleid` int(11) NOT NULL COMMENT '轻应用角色ID',
  `lappid` int(11) NOT NULL COMMENT '轻应用ID',
  `sort` int(11) DEFAULT '1000' COMMENT '轻应用在该角色下的排序',
  `time` int(11) NOT NULL COMMENT '更新的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色与轻应用关系表';

-- --------------------------------------------------------

--
-- 表的结构 `license`
--

CREATE TABLE IF NOT EXISTS `license` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `value` varchar(64) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `license`
--

INSERT INTO `license` (`no`, `name`, `value`) VALUES
(1, '', ''),
(2, 'license_info', 'S01592015060300FD8C6700FA5F42-33643135');

-- --------------------------------------------------------

--
-- 表的结构 `licensemd5`
--

CREATE TABLE IF NOT EXISTS `licensemd5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MD5Value` varchar(64) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=257 ;

--
-- 转存表中的数据 `licensemd5`
--

INSERT INTO `licensemd5` (`id`, `MD5Value`, `createtime`) VALUES
(241, 'd41d8cd98f00b204e9800998ecf8427e', '2015-01-19 08:36:21'),
(242, 'd41d8cd98f00b204e9800998ecf8427e', '2015-01-19 08:53:42'),
(243, 'd41d8cd98f00b204e9800998ecf8427e', '2015-01-19 14:06:37'),
(244, 'ea566edec1bd0bb014a7a5b53d68fd02', '2015-01-20 00:41:13'),
(245, 'ea566edec1bd0bb014a7a5b53d68fd02', '2015-01-20 00:48:33'),
(246, 'ea566edec1bd0bb014a7a5b53d68fd02', '2015-01-23 02:20:47'),
(247, 'd41d8cd98f00b204e9800998ecf8427e', '2015-01-26 03:06:24'),
(248, 'd41d8cd98f00b204e9800998ecf8427e', '2015-01-26 03:07:19'),
(250, 'a0e046b6540ef185279af0fcd890c6cd', '2015-03-17 05:33:13'),
(252, 'ad2c6e7e661b3e241a3b86541df451e6', '2015-03-20 07:50:44'),
(254, '6290f89c7d11a92d72c9a8a124555141', '2015-05-07 05:13:37'),
(255, 'c82be1bd383f31f68dfd49190bb00267', '2015-05-26 06:48:40'),
(256, 'a18d13f5ad7b3f077bd1ba50dab505f1', '2015-06-03 05:51:09');

-- --------------------------------------------------------

--
-- 表的结构 `memberlist`
--

CREATE TABLE IF NOT EXISTS `memberlist` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `pcid` varchar(32) DEFAULT NULL,
  `phoneid` varchar(32) DEFAULT NULL,
  `padid` varchar(32) DEFAULT NULL,
  `eid` varchar(16) NOT NULL,
  `oid` varchar(512) DEFAULT '0',
  `duty` varchar(32) DEFAULT NULL,
  `business` varchar(32) DEFAULT NULL,
  `mobileNumber` varchar(32) NOT NULL,
  `phoneNumber` varchar(32) DEFAULT NULL,
  `extenNumber` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `enterTime` varchar(32) DEFAULT NULL,
  `presenceStatus` tinyint(4) NOT NULL DEFAULT '0',
  `useStatus` tinyint(4) NOT NULL DEFAULT '0',
  `memo` varchar(256) DEFAULT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(16) DEFAULT '0' COMMENT 'ldap type',
  `role` varchar(16) DEFAULT '0' COMMENT 'ldap role',
  `guid` varchar(32) DEFAULT '-1',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'æ€§åˆ«',
  `rank` varchar(512) DEFAULT NULL,
  `homeNumber` varchar(32) DEFAULT NULL COMMENT 'ä½å®…ç”µè¯',
  `officeAddress` varchar(128) DEFAULT NULL COMMENT 'åŠžå…¬åœ°å€',
  `isLeave` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'æ˜¯å¦ç¦»èŒ',
  `employeeID` varchar(32) DEFAULT NULL COMMENT 'å‘˜å·¥ç¼–å·',
  `cornet` varchar(32) DEFAULT NULL COMMENT 'çŸ­å·',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `memberlist`
--

INSERT INTO `memberlist` (`uid`, `name`, `password`, `pcid`, `phoneid`, `padid`, `eid`, `oid`, `duty`, `business`, `mobileNumber`, `phoneNumber`, `extenNumber`, `email`, `photo`, `enterTime`, `presenceStatus`, `useStatus`, `memo`, `isAdmin`, `type`, `role`, `guid`, `sex`, `rank`, `homeNumber`, `officeAddress`, `isLeave`, `employeeID`, `cornet`) VALUES
(4, 'A用户', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, '4', '0', '', NULL, '331001', '', '331001', '331001@qq.com', '', '', 0, 1, '', 0, '129878', '129882', '4@4', 0, '1', '', '', 0, '', '10001'),
(8, 'B用户', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, '4', '0', '', NULL, '331002', '', '331002', '331002@qq.com', '', '', 0, 1, '', 0, '129878', '129882', '5@4', 0, '2', '', '', 0, '', '10002'),
(12, 'C用户', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, '4', '0', '', NULL, '331003', '', '331003', '331003@qq.com', '', '', 0, 1, '', 0, '129878', '129882', '6@4', 0, '3', '', '', 0, '', '10003');

-- --------------------------------------------------------

--
-- 表的结构 `memoinfo`
--

CREATE TABLE IF NOT EXISTS `memoinfo` (
  `mID` int(11) NOT NULL AUTO_INCREMENT,
  `qID` int(11) NOT NULL DEFAULT '0' COMMENT '问题ID',
  `content` text,
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者uid',
  `senderName` varchar(64) DEFAULT NULL COMMENT '发送者名称',
  `createTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, '权限控制', NULL, NULL, NULL, '{"icon":"fa fa-lock","visible":true}'),
(2, '路由', 1, '/admin/role/index', 1, NULL),
(3, '权限', 1, '/admin/permission/index', 2, NULL),
(5, '调试', NULL, NULL, 2, '{"icon":"fa fa-eye","visible":true}'),
(6, 'gii', 5, '/gii/default/index', 1, NULL),
(7, 'debug', 5, '/debug/default/index', 2, NULL),
(8, '基础信息管理', NULL, NULL, 3, '{"icon":"fa fa-book","visible":true}'),
(9, '区域信息', 8, '/region/index', 1, NULL),
(10, '行业信息', 8, '/industry/index', 2, NULL),
(11, '企业（项目）信息', NULL, NULL, 4, '{"icon":"fa fa-edit","visible":true}'),
(12, '企业信息', 11, '/company/index', 1, NULL),
(13, '项目信息', 11, '/project/index', 2, NULL),
(14, '信息审核', NULL, NULL, 5, '{"icon":"fa fa-check","visible":true}'),
(15, '企业审核', 14, '/company/check-index', 1, NULL),
(16, '项目审核', 14, '/project/check-index', 2, NULL),
(20, '数据变更备案', NULL, NULL, 7, '{"icon":"fa fa-gears","visible":true}'),
(21, '企业历史信息', 20, '/hiscompany/index', 1, NULL),
(22, '项目历史数据', 20, '/hisproject/index', 2, NULL),
(23, '经济数据统计', NULL, NULL, 8, '{"icon":"fa fa-industry","visible":true}'),
(24, '一二三产业数据统计', 23, '/enterprise/index', 1, NULL),
(25, '居民消费水平', 23, '/enterprise/index', 2, NULL),
(26, '固定资产投资', 23, '/enterprise/index', 3, NULL),
(27, '工商企业统计', 23, '/enterprise/index', 4, NULL),
(28, '社会零售统计', 23, '/enterprise/index', 5, NULL),
(29, '社会消费品统计', 23, '/enterprise/index', 6, NULL),
(30, '公共信息服务', NULL, NULL, 9, '{"icon":"fa fa-tags","visible":true}'),
(31, '公共信息', 30, '/publicinfo/index', 1, NULL),
(32, '发布信息', 30, '/publicinfo/create', 2, NULL),
(48, '企业信息反馈', NULL, '/questioninfo/index', 9, NULL),
(50, '企业信息反馈', 48, '/questioninfo/index', 1, NULL),
(52, '企业信息跟进', 48, '/memoinfo/index', 9, NULL),
(54, '菜单管理', 30, '/publicinfo/menuindex', 3, NULL),
(56, '系统首页', NULL, '/home/index', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1478748228),
('m140506_102106_rbac_init', 1478748666);

-- --------------------------------------------------------

--
-- 表的结构 `monit`
--

CREATE TABLE IF NOT EXISTS `monit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `host_name` varchar(30) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `c_time` varchar(30) DEFAULT NULL,
  `CpuRate` varchar(10) DEFAULT NULL,
  `MemRate` varchar(10) DEFAULT NULL,
  `DiskRate` varchar(10) DEFAULT NULL,
  `Processes` varchar(10) DEFAULT NULL,
  `Calls` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3394 ;

--
-- 转存表中的数据 `monit`
--

INSERT INTO `monit` (`ID`, `host_name`, `time`, `c_time`, `CpuRate`, `MemRate`, `DiskRate`, `Processes`, `Calls`) VALUES
(3148, 'ha2', '1391734803', 'Fri Feb  7 09:00:03 2014', '1.0', '6.3', '2.2', '160.0', '0.0'),
(3149, 'ha1', '1391738402', 'Fri Feb  7 10:00:02 2014', '0.5', '8.3', '2.2', '160.0', '0.0'),
(3151, 'ha1', '1391742002', 'Fri Feb  7 11:00:02 2014', '0.4', '8.5', '2.2', '159.0', '0.0'),
(3153, 'ha1', '1391745602', 'Fri Feb  7 12:00:02 2014', '0.4', '8.6', '2.2', '159.0', '0.0'),
(3155, 'ha1', '1391749202', 'Fri Feb  7 13:00:02 2014', '0.4', '8.6', '2.2', '159.0', '0.0'),
(3157, 'ha1', '1391752802', 'Fri Feb  7 14:00:02 2014', '0.4', '9.5', '2.2', '161.0', '0.0'),
(3159, 'ha1', '1391756403', 'Fri Feb  7 15:00:03 2014', '0.4', '10.3', '2.2', '166.0', '0.0'),
(3161, 'ha1', '1391760002', 'Fri Feb  7 16:00:02 2014', '0.4', '10.4', '2.2', '168.0', '0.0'),
(3162, 'ha2', '1391763603', 'Fri Feb  7 17:00:03 2014', '0.5', '7.8', '2.2', '178.0', '0.0'),
(3164, 'ha2', '1391767202', 'Fri Feb  7 18:00:02 2014', '0.5', '7.8', '2.2', '178.0', '0.0'),
(3166, 'ha2', '1391770802', 'Fri Feb  7 19:00:02 2014', '0.5', '7.6', '2.2', '174.0', '0.0'),
(3168, 'ha2', '1391774402', 'Fri Feb  7 20:00:02 2014', '0.7', '7.6', '2.2', '162.0', '0.0'),
(3170, 'ha2', '1391778002', 'Fri Feb  7 21:00:02 2014', '0.7', '7.5', '2.2', '162.0', '0.0'),
(3172, 'ha2', '1391781602', 'Fri Feb  7 22:00:02 2014', '0.7', '7.5', '2.2', '162.0', '0.0'),
(3174, 'ha2', '1391785202', 'Fri Feb  7 23:00:02 2014', '0.7', '7.6', '2.2', '162.0', '0.0'),
(3176, 'ha2', '1391788802', 'Sat Feb  8 00:00:02 2014', '0.7', '7.6', '2.2', '162.0', '0.0'),
(3178, 'ha2', '1391792402', 'Sat Feb  8 01:00:02 2014', '0.7', '7.5', '2.2', '162.0', '0.0'),
(3180, 'ha2', '1391796002', 'Sat Feb  8 02:00:02 2014', '0.7', '7.5', '2.2', '162.0', '0.0'),
(3182, 'ha2', '1391799602', 'Sat Feb  8 03:00:02 2014', '0.7', '7.6', '2.2', '162.0', '0.0'),
(3184, 'ha2', '1391803202', 'Sat Feb  8 04:00:02 2014', '0.7', '8.1', '2.2', '162.0', '0.0'),
(3186, 'ha2', '1391806802', 'Sat Feb  8 05:00:02 2014', '0.7', '8.1', '2.2', '162.0', '0.0'),
(3188, 'ha2', '1391810402', 'Sat Feb  8 06:00:02 2014', '0.7', '8.1', '2.2', '162.0', '0.0'),
(3190, 'ha2', '1391814002', 'Sat Feb  8 07:00:02 2014', '0.7', '8.1', '2.2', '162.0', '0.0'),
(3192, 'ha2', '1391817602', 'Sat Feb  8 08:00:02 2014', '0.7', '8.1', '2.2', '162.0', '0.0'),
(3194, 'ha2', '1391821202', 'Sat Feb  8 09:00:02 2014', '0.7', '9.4', '2.2', '171.0', '0.0'),
(3196, 'ha2', '1391824802', 'Sat Feb  8 10:00:02 2014', '0.7', '9.4', '2.2', '171.0', '0.0'),
(3197, 'ha1', '1391828403', 'Sat Feb  8 11:00:03 2014', '0.2', '11.9', '2.2', '186.0', '0.0'),
(3199, 'ha1', '1391832002', 'Sat Feb  8 12:00:02 2014', '0.2', '12.3', '2.2', '191.0', '0.0'),
(3201, 'ha1', '1391835602', 'Sat Feb  8 13:00:02 2014', '0.2', '11.8', '2.2', '167.0', '0.0'),
(3203, 'ha1', '1391839202', 'Sat Feb  8 14:00:02 2014', '0.2', '9.6', '2.2', '169.0', '0.0'),
(3205, 'ha1', '1391842802', 'Sat Feb  8 15:00:02 2014', '0.2', '10.5', '2.2', '169.0', '0.0'),
(3207, 'ha1', '1391846402', 'Sat Feb  8 16:00:02 2014', '0.2', '10.5', '2.2', '169.0', '0.0'),
(3209, 'ha1', '1391850002', 'Sat Feb  8 17:00:02 2014', '0.2', '10.2', '2.2', '161.0', '0.0'),
(3211, 'ha1', '1391853602', 'Sat Feb  8 18:00:02 2014', '0.2', '10.2', '2.2', '161.0', '0.0'),
(3213, 'ha1', '1391857202', 'Sat Feb  8 19:00:02 2014', '0.2', '10.1', '2.2', '161.0', '0.0'),
(3215, 'ha1', '1391860802', 'Sat Feb  8 20:00:02 2014', '0.2', '10.2', '2.2', '161.0', '0.0'),
(3217, 'ha1', '1391864402', 'Sat Feb  8 21:00:02 2014', '0.2', '10.1', '2.2', '161.0', '0.0'),
(3219, 'ha1', '1391868002', 'Sat Feb  8 22:00:02 2014', '0.2', '10.2', '2.2', '161.0', '0.0'),
(3221, 'ha1', '1391871602', 'Sat Feb  8 23:00:02 2014', '0.2', '10.2', '2.2', '161.0', '0.0'),
(3223, 'ha1', '1391875202', 'Sun Feb  9 00:00:02 2014', '0.2', '10.2', '2.2', '161.0', '0.0'),
(3225, 'ha1', '1391878802', 'Sun Feb  9 01:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3227, 'ha1', '1391882402', 'Sun Feb  9 02:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3229, 'ha1', '1391886002', 'Sun Feb  9 03:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3231, 'ha1', '1391889602', 'Sun Feb  9 04:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3233, 'ha1', '1391893202', 'Sun Feb  9 05:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3235, 'ha1', '1391896802', 'Sun Feb  9 06:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3237, 'ha1', '1391900402', 'Sun Feb  9 07:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3239, 'ha1', '1391904002', 'Sun Feb  9 08:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3241, 'ha1', '1391907602', 'Sun Feb  9 09:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3243, 'ha1', '1391911202', 'Sun Feb  9 10:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3245, 'ha1', '1391914802', 'Sun Feb  9 11:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3247, 'ha1', '1391918402', 'Sun Feb  9 12:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3249, 'ha1', '1391922002', 'Sun Feb  9 13:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3251, 'ha1', '1391925602', 'Sun Feb  9 14:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3253, 'ha1', '1391929202', 'Sun Feb  9 15:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3255, 'ha1', '1391932802', 'Sun Feb  9 16:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3257, 'ha1', '1391936402', 'Sun Feb  9 17:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3259, 'ha1', '1391940002', 'Sun Feb  9 18:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3261, 'ha1', '1391943602', 'Sun Feb  9 19:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3263, 'ha1', '1391947202', 'Sun Feb  9 20:00:02 2014', '0.2', '7.8', '2.2', '161.0', '0.0'),
(3265, 'ha1', '1391950802', 'Sun Feb  9 21:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3267, 'ha1', '1391954402', 'Sun Feb  9 22:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3269, 'ha1', '1391958002', 'Sun Feb  9 23:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3271, 'ha1', '1391961602', 'Mon Feb 10 00:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3273, 'ha1', '1391965202', 'Mon Feb 10 01:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3275, 'ha1', '1391968802', 'Mon Feb 10 02:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3277, 'ha1', '1391972402', 'Mon Feb 10 03:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3279, 'ha1', '1391976002', 'Mon Feb 10 04:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3281, 'ha1', '1391979602', 'Mon Feb 10 05:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3283, 'ha1', '1391983202', 'Mon Feb 10 06:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3285, 'ha1', '1391986802', 'Mon Feb 10 07:00:02 2014', '0.2', '7.7', '2.2', '161.0', '0.0'),
(3287, 'ha1', '1391990402', 'Mon Feb 10 08:00:02 2014', '0.2', '7.8', '2.2', '161.0', '0.0'),
(3289, 'ha1', '1391994002', 'Mon Feb 10 09:00:02 2014', '0.2', '10.2', '2.2', '166.0', '0.0'),
(3291, 'ha1', '1391997602', 'Mon Feb 10 10:00:02 2014', '0.2', '13.8', '2.2', '170.0', '0.0'),
(3293, 'ha1', '1392001202', 'Mon Feb 10 11:00:02 2014', '0.2', '14.2', '2.2', '170.0', '0.0'),
(3295, 'ha1', '1392004802', 'Mon Feb 10 12:00:02 2014', '0.2', '14.0', '2.2', '169.0', '0.0'),
(3297, 'ha1', '1392008402', 'Mon Feb 10 13:00:02 2014', '0.2', '14.0', '2.2', '169.0', '0.0'),
(3299, 'ha1', '1392012002', 'Mon Feb 10 14:00:02 2014', '0.2', '12.0', '2.2', '170.0', '0.0'),
(3301, 'ha1', '1392015603', 'Mon Feb 10 15:00:03 2014', '0.2', '12.5', '2.2', '176.0', '0.0'),
(3303, 'ha1', '1392019202', 'Mon Feb 10 16:00:02 2014', '0.2', '12.7', '2.2', '178.0', '0.0'),
(3304, 'ha2', '1392087602', 'Tue Feb 11 11:00:02 2014', '0.5', '8.5', '2.2', '169.0', '0.0'),
(3306, 'ha2', '1392091202', 'Tue Feb 11 12:00:02 2014', '0.5', '8.7', '2.2', '172.0', '0.0'),
(3308, 'ha2', '1392094803', 'Tue Feb 11 13:00:03 2014', '0.5', '8.8', '2.2', '172.0', '0.0'),
(3310, 'ha2', '1392098402', 'Tue Feb 11 14:00:02 2014', '0.5', '9.2', '2.2', '173.0', '0.0'),
(3311, 'ha1', '1392102002', 'Tue Feb 11 15:00:02 2014', '0.5', '9.5', '2.2', '167.0', '0.0'),
(3313, 'ha1', '1392105602', 'Tue Feb 11 16:00:02 2014', '0.5', '10.2', '2.2', '172.0', '1.0'),
(3315, 'ha1', '1392109202', 'Tue Feb 11 17:00:02 2014', '0.5', '11.5', '2.2', '170.0', '0.0'),
(3317, 'ha1', '1392112802', 'Tue Feb 11 18:00:02 2014', '0.5', '11.5', '2.2', '170.0', '0.0'),
(3319, 'ha1', '1392116402', 'Tue Feb 11 19:00:02 2014', '0.4', '11.4', '2.2', '168.0', '0.0'),
(3321, 'ha1', '1392120002', 'Tue Feb 11 20:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3323, 'ha1', '1392123602', 'Tue Feb 11 21:00:02 2014', '0.4', '11.4', '2.2', '168.0', '0.0'),
(3325, 'ha1', '1392127202', 'Tue Feb 11 22:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3327, 'ha1', '1392130802', 'Tue Feb 11 23:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3329, 'ha1', '1392134402', 'Wed Feb 12 00:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3331, 'ha1', '1392138002', 'Wed Feb 12 01:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3333, 'ha1', '1392141602', 'Wed Feb 12 02:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3335, 'ha1', '1392145202', 'Wed Feb 12 03:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3337, 'ha1', '1392148802', 'Wed Feb 12 04:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3339, 'ha1', '1392152402', 'Wed Feb 12 05:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3341, 'ha1', '1392156002', 'Wed Feb 12 06:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3343, 'ha1', '1392159602', 'Wed Feb 12 07:00:02 2014', '0.4', '11.5', '2.2', '168.0', '0.0'),
(3345, 'ha1', '1392163202', 'Wed Feb 12 08:00:02 2014', '0.4', '10.3', '2.2', '171.0', '0.0'),
(3347, 'ha1', '1392166802', 'Wed Feb 12 09:00:02 2014', '0.4', '10.1', '2.2', '166.0', '0.0'),
(3349, 'ha1', '1392170402', 'Wed Feb 12 10:00:02 2014', '0.4', '10.1', '2.2', '166.0', '0.0'),
(3351, 'ha1', '1392174002', 'Wed Feb 12 11:00:02 2014', '0.4', '10.1', '2.2', '168.0', '0.0'),
(3353, 'ha1', '1392177602', 'Wed Feb 12 12:00:02 2014', '0.4', '11.2', '2.2', '168.0', '0.0'),
(3355, 'ha1', '1392181202', 'Wed Feb 12 13:00:02 2014', '0.4', '11.2', '2.2', '168.0', '0.0'),
(3357, 'ha1', '1392184802', 'Wed Feb 12 14:00:02 2014', '0.4', '10.4', '2.2', '171.0', '0.0'),
(3359, 'ha1', '1392188402', 'Wed Feb 12 15:00:02 2014', '0.4', '10.7', '2.2', '172.0', '0.0'),
(3361, 'ha1', '1392192002', 'Wed Feb 12 16:00:02 2014', '0.4', '10.7', '2.2', '173.0', '0.0'),
(3362, 'ha2', '1392195602', 'Wed Feb 12 17:00:02 2014', '0.5', '10.0', '2.2', '176.0', '0.0'),
(3364, 'ha2', '1392199202', 'Wed Feb 12 18:00:02 2014', '0.5', '10.0', '2.2', '176.0', '0.0'),
(3366, 'ha2', '1392202802', 'Wed Feb 12 19:00:02 2014', '0.5', '10.0', '2.2', '176.0', '0.0'),
(3368, 'ha2', '1392206402', 'Wed Feb 12 20:00:02 2014', '0.5', '10.1', '2.2', '176.0', '0.0'),
(3370, 'ha2', '1392210002', 'Wed Feb 12 21:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3372, 'ha2', '1392213602', 'Wed Feb 12 22:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3374, 'ha2', '1392217202', 'Wed Feb 12 23:00:02 2014', '0.5', '9.9', '2.2', '166.0', '0.0'),
(3376, 'ha2', '1392220802', 'Thu Feb 13 00:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3378, 'ha2', '1392224402', 'Thu Feb 13 01:00:02 2014', '0.5', '9.9', '2.2', '166.0', '0.0'),
(3380, 'ha2', '1392228002', 'Thu Feb 13 02:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3382, 'ha2', '1392231602', 'Thu Feb 13 03:00:02 2014', '0.5', '9.9', '2.2', '166.0', '0.0'),
(3384, 'ha2', '1392235202', 'Thu Feb 13 04:00:02 2014', '0.5', '9.9', '2.2', '166.0', '0.0'),
(3386, 'ha2', '1392238802', 'Thu Feb 13 05:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3388, 'ha2', '1392242402', 'Thu Feb 13 06:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3390, 'ha2', '1392246002', 'Thu Feb 13 07:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3392, 'ha2', '1392249602', 'Thu Feb 13 08:00:02 2014', '0.5', '10.0', '2.2', '166.0', '0.0'),
(3393, 'ha1', '1392253202', 'Thu Feb 13 09:00:02 2014', '0.7', '7.4', '2.2', '159.0', '0.0');

-- --------------------------------------------------------

--
-- 表的结构 `operationlog`
--

CREATE TABLE IF NOT EXISTS `operationlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(2) NOT NULL DEFAULT '2',
  `level` varchar(2) NOT NULL DEFAULT '1',
  `opName` varchar(64) DEFAULT NULL,
  `loginIP` varchar(64) NOT NULL,
  `loginMAC` varchar(64) DEFAULT NULL,
  `opDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `opContent` varchar(128) NOT NULL,
  `opResult` varchar(32) NOT NULL,
  `eid` varchar(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `oid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` varchar(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `parentID` varchar(16) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `phoneNumber` varchar(32) DEFAULT NULL,
  `manager` varchar(32) DEFAULT NULL,
  `memo` varchar(256) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL,
  `uid` varchar(16) DEFAULT NULL COMMENT 'ldap uid',
  PRIMARY KEY (`oid`),
  KEY `oid` (`oid`,`eid`,`parentID`,`level`,`rank`,`uid`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `organization`
--

INSERT INTO `organization` (`oid`, `eid`, `name`, `parentID`, `intro`, `type`, `phoneNumber`, `manager`, `memo`, `level`, `rank`, `uid`) VALUES
(2, '4', '研发部', '0', '研发部', '129884', '', '', '', 1, 10, '2@4'),
(4, '4', '测试部', '0', '测试部', '129886', '', '', '', 1, 20, '3@4');

-- --------------------------------------------------------

--
-- 表的结构 `projectinfo`
--

CREATE TABLE IF NOT EXISTS `projectinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pName` varchar(32) NOT NULL COMMENT '项目名称',
  `intro` varchar(1024) DEFAULT NULL COMMENT '简介',
  `type` varchar(32) DEFAULT NULL COMMENT '类别',
  `ofCmp` varchar(32) NOT NULL COMMENT '所属公司',
  `ofIndustry` int(10) NOT NULL DEFAULT '1' COMMENT '所属行业',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `createTime` varchar(32) NOT NULL COMMENT '创建时间',
  `manager` varchar(32) NOT NULL COMMENT '负责人',
  `checked` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `checkOpinion` varchar(128) DEFAULT NULL COMMENT '审核意见',
  `checkTime` varchar(32) DEFAULT NULL COMMENT '审核时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '项目状态 0：未开始 1：进行中 2：已完成',
  `background` varchar(512) DEFAULT NULL COMMENT '项目背景',
  `targetIncome` float NOT NULL DEFAULT '0' COMMENT '目标与产出（万元）',
  `beneficiary` varchar(32) DEFAULT NULL COMMENT '受益者',
  `plan` varchar(512) DEFAULT NULL COMMENT '项目实施计划',
  `schedule` varchar(512) DEFAULT NULL COMMENT '时间表',
  `structure` varchar(512) DEFAULT NULL COMMENT '项目组织架构',
  `expenseControl` varchar(512) DEFAULT NULL COMMENT '费用控制',
  `evaluation` varchar(512) DEFAULT NULL COMMENT '监控与评估',
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='项目信息表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `projectinfo`
--

INSERT INTO `projectinfo` (`id`, `pName`, `intro`, `type`, `ofCmp`, `ofIndustry`, `creator`, `createTime`, `manager`, `checked`, `checkOpinion`, `checkTime`, `status`, `background`, `targetIncome`, `beneficiary`, `plan`, `schedule`, `structure`, `expenseControl`, `evaluation`, `memo`) VALUES
(2, '测试项目', '', '', '2', 5, 'test', '2016-11-16 15:16:03', 'test', 0, '', '2016-11-17 15:51:17', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `publicaccountadmin`
--

CREATE TABLE IF NOT EXISTS `publicaccountadmin` (
  `admin` char(32) DEFAULT NULL,
  `eid` int(4) DEFAULT NULL,
  `guid` char(32) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `name` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `publicaccountadmin`
--

INSERT INTO `publicaccountadmin` (`admin`, `eid`, `guid`, `password`, `name`) VALUES
('admin', 47970, '54920@47970', 'e10adc3949ba59abbe56e057f20f883e', 'test'),
('admin', 47970, '18475@47970', 'e10adc3949ba59abbe56e057f20f883e', 'testd'),
('admin', 47970, '42332@47970', 'e10adc3949ba59abbe56e057f20f883e', 'test1'),
('admin', 47970, '46115@47970', 'e10adc3949ba59abbe56e057f20f883e', 'test2');

-- --------------------------------------------------------

--
-- 表的结构 `publicaccounts`
--

CREATE TABLE IF NOT EXISTS `publicaccounts` (
  `name` char(32) DEFAULT NULL,
  `guid` char(32) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `ldaptype` char(32) DEFAULT NULL,
  `memo` char(32) DEFAULT NULL,
  `accessrole` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `publicaccounts`
--

INSERT INTO `publicaccounts` (`name`, `guid`, `password`, `ldaptype`, `memo`, `accessrole`) VALUES
('test', '54920@47970', 'e8f38b667e8262443a76688f1b2f639d', '0', 'test', ''),
('testd', '18475@47970', 'b05a1c38127543ccbba57c3b1bafcd31', '0', '1', ''),
('test1', '42332@47970', '0f16c29c40c005ceada49e37bee15482', '0', '1', ''),
('test2', '46115@47970', 'affa277a5f5a144718fa89f402288ed6', '108366', '1', '106301');

-- --------------------------------------------------------

--
-- 表的结构 `publicaccountsbinding`
--

CREATE TABLE IF NOT EXISTS `publicaccountsbinding` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `publicaccountID` int(11) NOT NULL,
  `userID` varchar(256) DEFAULT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `publicinfo`
--

CREATE TABLE IF NOT EXISTS `publicinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '信息标题',
  `content` varchar(5000) NOT NULL COMMENT '信息正文',
  `attach` varchar(1000) DEFAULT NULL COMMENT '附件',
  `type` int(11) NOT NULL DEFAULT '0',
  `readers` int(11) NOT NULL DEFAULT '0' COMMENT '阅读人数',
  `sender_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布人id',
  `sender_name` varchar(100) NOT NULL COMMENT '发送人姓名',
  `createTime` varchar(32) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `publicinfo`
--

INSERT INTO `publicinfo` (`Id`, `title`, `content`, `attach`, `type`, `readers`, `sender_id`, `sender_name`, `createTime`) VALUES
(2, '供水服务', '<p>测试供水服务</p>', '[{"name":"\\u7b80\\u5355\\u5de5\\u5382.png","path":"\\/media_file\\/2016\\/11\\/21\\/phphJt3aC?st=hrEMYuGULcfnxKdcbjXetA&e=1495277481","size":149015}]', 1, 18, 1, 'test', '1479725494'),
(4, '供水服务', '<p>测试供水服务</p>', '[{"name":"\\u7b80\\u5355\\u5de5\\u5382.png","path":"\\/media_file\\/2016\\/11\\/21\\/phphJt3aC?st=hrEMYuGULcfnxKdcbjXetA&e=1495277481","size":149015}]', 1, 3, 1, 'test', '1479725694'),
(6, '停水通知', '<p style="font-family: Simsun;white-space: normal;background-color: rgb(255, 255, 255);overflow-x: hidden"><span style="font-family: 宋体;font-size: 20px">为了配合<span style="text-decoration:underline;">&nbsp;沌口水厂三期扩建工程建设</span>，<span style="text-decoration:underline;">武汉经济技术开发区沌阳大街以西大部地区供水压力有所下降（低于服务承诺压力），沌口路沌阳大街至车城东路沿线用户无水</span></span><span style="font-family: 宋体;font-size: 20px">&nbsp;。</span></p><p style="font-family: Simsun;white-space: normal;background-color: rgb(255, 255, 255);overflow-x: hidden;text-indent: 40px;margin-left: 14px"><span style="font-family: 宋体;font-size: 20px">预计停水降压时间：11<strong>月&nbsp;25日22</strong><strong>时00分— 11月26日21时00分</strong></span></p><p style="font-family: Simsun;white-space: normal;background-color: rgb(255, 255, 255);overflow-x: hidden;text-indent: 40px"><span style="font-family: 宋体;font-size: 20px">停水区域：沌口路沌阳大街至车城东路沿线用户无水</span></p><p style="font-family: Simsun;white-space: normal;background-color: rgb(255, 255, 255);overflow-x: hidden;text-indent: 40px"><span style="font-family: 宋体;font-size: 20px">主要用户：东荆社区，万家湖社区A区、B区，诚胜电子、提爱思、建华社区、电塔村、万邦、曹庄村、开发区二中、沌口小学、君融天湖等用户无水，请该区域用户做好蓄水准备，施工早完工、早供水。</span></p><p><br/></p>', '""', 1, 6, 1, 'test', '1479798572'),
(8, '供水服务', '<p>测试<img src="http://192.168.139.247/notice/web/ueditor/upload/image/20161122/1479799141502114.jpg" title="1479799141502114.jpg" alt="bai.jpg"/></p>', '[{"name":"test.html","path":"\\/media_file\\/2016\\/11\\/22\\/php18Q21v?st=RREBXmvO5FVzs1EmTxrfag&e=1495351169","size":833}]', 1, 4, 1, 'test', '1479799173'),
(14, '供水测试', '<p>测试</p>', '[{"name":"offline.pdf","path":"\\/media_file\\/2016\\/11\\/22\\/phpiPZhd1?st=F6sBOjSAr_8Atyd4k3RKrQ&e=1495354221","size":338158}]', 1, 3, 1, 'test', '1479802224'),
(16, '测试上传下载', '<p><img src="http://192.168.139.247/notice/web/ueditor/upload/image/20161122/1479803447399568.jpg" title="1479803447399568.jpg" alt="bai.jpg"/></p>', '[{"name":"bai.jpg","path":"\\/media_file\\/2016\\/11\\/22\\/phpbSMvMR?st=HVJkFNkn60otkv3_0aMUMg&e=1495355478","size":82022}]', 1, 3, 1, 'test', '1479803483'),
(18, '水费通知', '<p>尊敬的金麒麟业主：&nbsp;</p><p>您好！&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp;2016年10月至11月份水费已经统计出来。 请您于近日根据通知到服务中心1#408室缴纳费用。 如您因工作繁忙不便缴费，您可致电金麒麟物业服务中心：0854—8195737，进行电话预约上门收费，我们将根据合理需求提供如期上门收费服务！&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp;若您对收费通知单有疑问，可直接致电物业服务中心咨询：8195737（8：30—18：00）。&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp;享受金麒麟物业“全心全意全为您”的服务是您的权利，按时缴纳水费是您的义务,感谢您对我们工作的大力支持。 &nbsp;</p><p style="text-align: right;">金麒麟物业服务公司&nbsp;</p><p style="text-align: right;">2016年11月22日</p><p><br/></p>', '""', 1, 10, 1, 'test', '1479804190'),
(20, '供水服务', '<p>测试<img src="http://192.168.139.247/notice/web/ueditor/upload/image/20161122/1479818820511387.jpg" title="1479818820511387.jpg" alt="bai.jpg"/></p>', '[{"name":"bai.jpg","path":"\\/media_file\\/2016\\/11\\/22\\/phpmGsuPs?st=sVCDYHSorCQvwBrb9UdX1Q&e=1495370832","size":82022}]', 1, 9, 1, 'test', '1479818838'),
(22, '降压供水通知', '<p style="color: rgb(51, 51, 51);font-family: Simsun;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 43px"><span style="font-family: 仿宋_GB2312;font-size: 21px">近来，自来水压力较低，经与自来水公司联系，造成当前水压过低的原因有以下几个方面：一方面，为配合郑州市地铁2号线和中州大道高架桥施工，郑州市主管网供水压力改变；另一方面，我东校区为郑州市东周水厂供水，水源为黄河水，黄河水位持续下降，水源不足；其三，郑州市东大学城处于东周水厂供水管网最末端，在夏季用水高峰阶段，也是造成水压不足的主要原因。</span></p><p style="color: rgb(51, 51, 51);font-family: Simsun;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 43px"><span style="font-family: 仿宋_GB2312;font-size: 21px">经询问自来水公司，郑东新区将于9月份投产一个新水厂，届时供水状况将会大为改善。特此告知，望广大师生予以谅解。</span></p><p style="color: rgb(51, 51, 51);font-family: Simsun;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 43px"><span style="font-family: 仿宋_GB2312; font-size: 21px; text-indent: 363px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 郑航后勤动力运行维修中心</span></p><p style="color: rgb(51, 51, 51);font-family: Simsun;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 43px"><span style="font-family: 仿宋_GB2312;font-size: 21px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2014年6月11日</span></p><p style="color: rgb(51, 51, 51);font-family: Simsun;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 43px"><span style="font-family: 仿宋_GB2312;font-size: 21px"><img src="http://192.168.139.247/notice/web/ueditor/upload/image/20161123/1479886909844816.jpg" title="1479886909844816.jpg" alt="131159803.jpg"/></span></p><p><br/></p>', '[{"name":"103210306.jpg","path":"\\/media_file\\/2016\\/11\\/23\\/phpD1Iebf?st=is-Nnm69aOxGk6-SzaSOrA&e=1495438932","size":181991}]', 1, 14, 1, 'test', '1479886934'),
(24, '水费调整通知', '<p style="text-indent: 29px;line-height: 21px;padding: 0px;color: rgb(51, 51, 51);font-family: 宋体;font-size: 14px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)"><span style="line-height: 22px;font-size: 15px">接珠海水务集团有限公司通知，根据珠海物价局《关于调整我市自来水价格的批复》，自2013年12月1日起珠海实施新水价，居民生活用水实施阶梯水价，学校按合表用户用水标准收取：</span></p><p style="text-indent: 29px;line-height: 21px;padding: 0px;color: rgb(51, 51, 51);font-family: 宋体;font-size: 14px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)"><span style="line-height: 22px;font-size: 15px">基本费：1.58元/立方调整为1.94元/立方</span></p><p style="text-indent: 29px;line-height: 21px;padding: 0px;color: rgb(51, 51, 51);font-family: 宋体;font-size: 14px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)"><span style="line-height: 22px;font-size: 15px">污水处理费：0.9元/吨*90%=0.81元/立方（90%为政策优惠）</span></p><p style="text-indent: 29px;line-height: 21px;padding: 0px;color: rgb(51, 51, 51);font-family: 宋体;font-size: 14px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)"><span style="line-height: 22px;font-size: 15px">因此，从12月1日起，我校教师公寓、学生公寓、教师住宅、食堂等用水水费调整为2.75元/立方。</span></p><p style="text-indent: 29px;line-height: 21px;padding: 0px;color: rgb(51, 51, 51);font-family: 宋体;font-size: 14px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)"><span style="line-height: 22px;font-size: 15px">特此通知。</span></p><p><img src="http://192.168.139.247/notice/web/ueditor/upload/image/20161123/1479891007406719.jpg" title="1479891007406719.jpg" alt="103210306.jpg"/></p>', '[{"name":"131159803.jpg","path":"\\/media_file\\/2016\\/11\\/23\\/phpU9nM2r?st=6M8v6G00b10aDYJZK0gOfA&e=1495443014","size":33232}]', 1, 40, 1, 'test', '1479891028'),
(28, '关于加强冶金煤气安全监管的通知', '<p style="font-family: Simsun;font-size: 14.6667px;white-space: normal;background-color: rgb(255, 255, 255);margin: 0 0 16px;text-indent: 28px;line-height: 25px">2014<span style="font-family: 宋体">年</span>3<span style="font-family: 宋体">月</span>23<span style="font-family: 宋体">日</span><span style="font-family: 宋体">，你省玉溪市玉昆钢铁集团有限公司高速线材厂员工在处理加热炉煤气阀站盲板阀故障时</span>,<span style="font-family: 宋体">发生煤气中毒事故，并且施救不当，造成</span>2<span style="font-family: 宋体">人死亡、</span>17<span style="font-family: 宋体">人受伤。</span></p><p style="font-family: Simsun;font-size: 14.6667px;white-space: normal;background-color: rgb(255, 255, 255);margin: 0 0 16px;text-indent: 28px;line-height: 25px"><span style="font-family: 宋体">这起事故性质严重</span>,<span style="font-family: 宋体">暴露出该企业煤气安全管理存在严重问题：一是制度不健全。在复产引煤气时没有制定实施方案，缺少煤气作业的审批和确认等制度及安全操作规程。二是违规操作。在调节阀开启状态下启动盲板阀，造成盲板阀开启过程中受压过大，电机烧坏，致使煤气泄漏。三是违章指挥。该厂厂长在不佩戴任何防护装备的情况下处理现场故障，致使其中毒倒下，导致伤亡事故发生。四是防护装备维护不善。现场仅有的两台空气呼吸器在救援使用时不到两分钟便失效。五是盲目施救。在未佩戴防护装备的情况下多人多次进行施救，导致事故扩大。</span></p><p><br/></p>', '""', 2, 1, 1, 'test', '1480052896'),
(30, '关于建立道路交通安全联席会议的通知', '<p><span style="text-align: justify; text-indent: 42.6667px; background-color: rgb(46, 181, 198); font-family: 仿宋_GB2312; font-size: 16pt;">为了进一步加强我镇道路交通安全管理工作，有效遏制重、特大道路交通事故的发生，协调、整合部门力量，使道路交通安全管理工作形成政府统一领导，有关部门各司其职、齐抓共管、综合治理、标本兼治的工作格局，根据</span><span style="text-align: justify; text-indent: 42.6667px; background-color: rgb(46, 181, 198); font-family: 仿宋_GB2312; font-size: 16pt;">县有关会议和文件精神，结合我镇实际，经研究，</span><span style="text-align: justify; text-indent: 42.6667px; background-color: rgb(46, 181, 198); font-family: 仿宋_GB2312; font-size: 16pt;">特制订我镇道路交通安全联席会议制度。</span></p>', '""', 8, 4, 1, 'test', '1480053014'),
(32, '肥供水集团服务承诺', '<p style="font-family: Simsun; font-size: 12px; line-height: 18px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);"><span style="font-size:16px">为进一步提高供水服务质量，打造优质服务精品品牌，做用户的“贴心小棉袄”，合肥供水集团向用户作出如下承诺：</span></p><p style="font-family: Simsun; font-size: 12px; line-height: 18px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);"><span style="font-size:16px">一、供水水质 水质符合国家《生活饮用水卫生标准》，月检全分析项目执行国家标准106项全项检测；水质监测点遍布全市，每旬向社会公布水质信息。</span></p><p style="font-family: Simsun; font-size: 12px; line-height: 18px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);"><span style="font-size:16px">二、供水水压供水管网平均供水服务压力高于0.28兆帕，确保管网水压力合格率达到98% 以上，全市管网水压测压点不少于20个。</span></p><p style="font-family: Simsun; font-size: 12px; line-height: 18px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);"><span style="font-size:16px">三、供水管网维修</span></p><p style="font-family: Simsun; font-size: 12px; line-height: 18px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);"><span style="font-size:16px">1、接警后 30分钟内赶赴现场（一环路以内）。</span></p><p><br/></p>', '""', 1, 3, 1, 'test', '1480129492'),
(34, '关于海淀区玉渊潭南路 调整交通管理措施的通告', '<p></p>', '[{"name":"shuidian.png","path":"\\/media_file\\/2016\\/11\\/26\\/phprYyCPa?st=hYBIGVFmskAKHi8z5MK7DA&e=1495698873","size":5886}]', 8, 11, 1, 'test', '1480146880');

-- --------------------------------------------------------

--
-- 表的结构 `publicinfo_menu`
--

CREATE TABLE IF NOT EXISTS `publicinfo_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) NOT NULL,
  `menu_icon` varchar(200) NOT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_name` (`menu_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `publicinfo_menu`
--

INSERT INTO `publicinfo_menu` (`id`, `menu_name`, `menu_icon`) VALUES
(1, '供水服务', 'http://192.168.139.247/media_file/2016/11/24/phpHRkEr4?st=t2kFxuAMM6J3PABxvPayQQ&e=1495527983'),
(2, '煤气服务', 'http://192.168.139.247/media_file/2016/11/24/phpqeqqSv?st=9yLgzH5odabQQAm7uMbzFA&e=1495528000'),
(8, '道路交通', 'http://192.168.139.247/media_file/2016/11/25/phpjOLHEW?st=KPtzYhsMuyEDCrdMP-3rvA&e=1495586291'),
(10, '通讯网络', 'http://192.168.139.247/media_file/2016/11/25/phpKdCZ6B?st=GpGMLAO6YZkGJGAgOEusEQ&e=1495586360'),
(12, '融资服务', 'http://192.168.139.247/media_file/2016/11/25/phpBORK5X?st=8btgcYcnD3V-DcCmwrRPQw&e=1495586379'),
(14, '法律服务', 'http://192.168.139.247/media_file/2016/11/25/php7Xigm3?st=L5LazWB3HYGXva1RTBBphQ&e=1495586395'),
(16, '创业服务', 'http://192.168.139.247/media_file/2016/11/25/phpNGsCXA?st=bSo0X4uILRiJZuxd1yT8HQ&e=1495586414'),
(18, '人才市场', 'http://192.168.139.247/media_file/2016/11/25/phpDO2jNY?st=sNxmW3CUDeMzn3quSxmqRQ&e=1495586430'),
(20, '信息化服务', 'http://192.168.139.247/media_file/2016/11/25/php5Ou7qC?st=bFTH9VBq2aokmsAezipzGg&e=1495586449'),
(22, '供电服务', 'http://192.168.139.247/media_file/2016/11/25/phpIyl99k?st=iRVxmaa_ERwbrZY19A21iw&e=1495586533');

-- --------------------------------------------------------

--
-- 表的结构 `publicinfo_reader`
--

CREATE TABLE IF NOT EXISTS `publicinfo_reader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `questioninfo`
--

CREATE TABLE IF NOT EXISTS `questioninfo` (
  `qID` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '紧急程度',
  `title` varchar(256) DEFAULT NULL COMMENT '问题标题',
  `content` text COMMENT '问题正文',
  `attach` varchar(1024) DEFAULT NULL,
  `sender` varchar(32) DEFAULT NULL COMMENT 'uid',
  `senderName` varchar(32) DEFAULT NULL COMMENT '发送者名称',
  `phone` varchar(15) DEFAULT NULL COMMENT '发送者手机号码',
  `solverDepartment` varchar(1024) DEFAULT NULL COMMENT '受理单位',
  `solver` varchar(32) NOT NULL COMMENT '受理人uid',
  `createTime` int(11) NOT NULL COMMENT '发起时间',
  `solveTime` int(11) NOT NULL COMMENT '解决时间',
  PRIMARY KEY (`qID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `regioninfo`
--

CREATE TABLE IF NOT EXISTS `regioninfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aName` varchar(32) NOT NULL COMMENT '区名称',
  `aID` varchar(32) NOT NULL COMMENT '区ID',
  `personNum` int(10) NOT NULL DEFAULT '0' COMMENT '人口数量',
  `familyNum` int(10) NOT NULL DEFAULT '0' COMMENT '家庭数量',
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='区信息表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `regioninfo`
--

INSERT INTO `regioninfo` (`id`, `aName`, `aID`, `personNum`, `familyNum`, `memo`) VALUES
(2, '铁西区', '0001', 91, 32, '沈阳市铁西区');

-- --------------------------------------------------------

--
-- 表的结构 `roleinfo`
--

CREATE TABLE IF NOT EXISTS `roleinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleName` varchar(32) NOT NULL,
  `roleType` varchar(2) NOT NULL DEFAULT '2',
  `auQuery` varchar(512) DEFAULT NULL,
  `auModify` varchar(512) DEFAULT NULL,
  `auAdd` varchar(512) DEFAULT NULL,
  `auDelete` varchar(512) DEFAULT NULL,
  `auEntire` varchar(1024) DEFAULT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `roleinfo`
--

INSERT INTO `roleinfo` (`id`, `roleName`, `roleType`, `auQuery`, `auModify`, `auAdd`, `auDelete`, `auEntire`, `memo`) VALUES
(1, '超级管理员', '1', NULL, NULL, NULL, NULL, '0101,0102,0201,0202,0203,0204,0207,0208,0209,0301,0302,0401,0402,0403,0501,0502,0503,0601,0602,0603,0604,0605,0606,0701,0702,0703,0704,0801,0802,0803,0804,0805,0806,0901,0902,0903', NULL),
(2, '企业管理员', '2', NULL, NULL, NULL, NULL, '0101,0102,0201,0202,0203,0204,0207,0208,0209,0301,0302,0401,0402,0403,0501,0502,0503,0601,0602,0603,0604,0605,0606,0701,0702,0703,0704,0801,0802,0803,0804,0805,0806,0901,0902,0903', NULL),
(3, '普通管理员', '3', NULL, NULL, NULL, NULL, '0101,0201,0204,0207,0209,0601,0603,0605,0606,0701,0902,0903', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `statistic`
--

CREATE TABLE IF NOT EXISTS `statistic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` varchar(100) NOT NULL COMMENT '企业id',
  `currentOnlineUser` int(10) unsigned NOT NULL COMMENT '当前在线用户数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='企业相关统计信息' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `syslogset`
--

CREATE TABLE IF NOT EXISTS `syslogset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(32) NOT NULL COMMENT 'log type',
  `setLevel` varchar(32) DEFAULT NULL COMMENT 'set log level  eg info,notice,warning,error,debug',
  `setSwitch` varchar(32) DEFAULT NULL COMMENT ' off ,on',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `syslogset`
--

INSERT INTO `syslogset` (`id`, `logType`, `setLevel`, `setSwitch`) VALUES
(1, 'switch', 'debug', 'on');

-- --------------------------------------------------------

--
-- 表的结构 `sysparam`
--

CREATE TABLE IF NOT EXISTS `sysparam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '0:system set 1:  call relative 2:custom',
  `value` varchar(255) NOT NULL,
  `exValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- 转存表中的数据 `sysparam`
--

INSERT INTO `sysparam` (`id`, `name`, `type`, `value`, `exValue`) VALUES
(1, 'media_address', 1, '192.168.139.162', ''),
(2, 'opensips_address', 0, '192.168.139.162:5060', ''),
(3, 'is_vlan', 0, '0', NULL),
(4, 'rtpportrange', 0, '10000', '20000'),
(13, 'rtp_555', 1, '111', NULL),
(69, 'DTMF_34', 1, '2', '012'),
(70, 'fax', 1, '0', ''),
(72, 'usereqphone', 1, '1', ''),
(73, 'useragent', 1, 'Telpo', NULL),
(74, 'faxdetect', 1, '0', NULL),
(76, 'register_auth', 1, '1', NULL),
(77, 'invite_auth', 1, '1', NULL),
(78, 'subcribe_auth', 1, '1', NULL),
(79, 'message_auth', 1, '0', NULL),
(80, 'cdr_on-off', 1, '0', NULL),
(81, 'device_type', 1, 'SIPGW&IPPBX', NULL),
(82, 'vip_on-off', 1, '1', NULL),
(83, 'directmedia', 1, '2', NULL),
(84, 'ippbx_business', 1, '1', NULL),
(85, 'supported_header', 1, 'timer|100rel|replaces', NULL),
(86, 'date_header', 1, '1', NULL),
(87, 'session-timers', 1, 'originate', 'originate|accept|refuse'),
(88, 'session-expires', 1, '1800', NULL),
(89, 'session-minse', 1, '90', NULL),
(90, 'noanswer_timeout', 1, '40', NULL),
(93, 'dtmfmode', 1, 'auto', ''),
(94, 'ssh_port', 1, '2222', NULL),
(95, 'ftp_port', 1, '1260', NULL),
(96, 'http_port', 1, '8008', NULL),
(97, 'sip_port', 1, '5060', NULL),
(98, 'page_size', 1, '20', NULL),
(99, 'dataRecoveryTime', 1, '', NULL),
(100, 'tos_sip', 1, '', NULL),
(101, 'tos_audio', 1, '', NULL),
(102, 'register_race', 1, '300', NULL),
(103, 'proxyport_start', 1, '5060', NULL),
(104, 'proxyport_end', 1, '5060', NULL),
(105, 'sip_mulitport', 1, '0', NULL),
(106, 'payload', 1, '101', NULL),
(107, 'national_limit', 1, '216000', NULL),
(108, 'international_limit', 1, '7200', NULL),
(109, 'call_per_limit', 1, '288000', NULL),
(110, 'registertimeout', 1, '30', NULL),
(111, 'registerattempts', 1, '5', NULL),
(112, 'sendinterval', 1, '30', NULL),
(113, 'natkeepalive', 1, '0', NULL),
(114, 'registeralltimeout', 1, '300', NULL),
(115, 'page_lifetime', 1, '60', NULL),
(116, 'license_info', 1, 'SIPGW-c350-64-07d0-0a-1f4-64-03e8-0064-64-64-64-bb8-27613631', NULL),
(117, 'SP:FWDSWITH', 0, '1', 'null'),
(118, 'out2tout_switch', 1, '1', '外转外开关（0：关，1：开）'),
(119, 'w_international_limit', 1, '1', '限拨国际长途(开关）'),
(120, 'w_national_limit', 1, '1', '限拨国内长途（0：关，1：开）'),
(125, 'out2out_call_limit_auth', 1, '3', 'ON'),
(127, 'out2out_rulelimit', 1, '_179X.', 'ON'),
(129, 'out2out_callee_maxlen', 1, '12', 'ON'),
(131, 'out2out_call_expires', 1, '120', 'ON( 60s,单位秒）'),
(133, 'sysVersion', 1, 'CT-V10R100C00SPC001-Beta2.3', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sysupgradeinfo`
--

CREATE TABLE IF NOT EXISTS `sysupgradeinfo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(64) NOT NULL,
  `version` varchar(64) NOT NULL,
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `md5` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- 转存表中的数据 `sysupgradeinfo`
--

INSERT INTO `sysupgradeinfo` (`id`, `filename`, `version`, `creatime`, `md5`) VALUES
(83, 'CT-V10R100C00SPC001-Beta2.0.tar.gz', 'CT-V10R100C00SPC001-Beta2.0', '2016-10-19 08:15:43', 'ad05679a226fe83e792ee99f1dcc46d5'),
(84, 'CT-V10R100C00SPC001-Beta2.2.tar.gz', 'CT-V10R100C00SPC001-Beta2.2', '2016-10-19 08:25:24', 'c451239a6a0f5d27b4ff688729831add'),
(85, 'CT-V10R100C00SPC001-Beta2.3.tar.gz', 'CT-V10R100C00SPC001-Beta2.3', '2016-10-19 08:25:40', '82db9273090c2633727c4937dde94cb7');

-- --------------------------------------------------------

--
-- 表的结构 `sys_trade`
--

CREATE TABLE IF NOT EXISTS `sys_trade` (
  `id` bigint(20) NOT NULL COMMENT '流水号',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '行业代码',
  `name` varchar(100) DEFAULT NULL COMMENT '行业类别名称',
  `descrition` text COMMENT '行业描述',
  `pcode` varchar(20) DEFAULT NULL COMMENT '上一级行业代码',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` timestamp NULL DEFAULT NULL COMMENT '更改时间',
  `vision` int(10) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sys_trade`
--

INSERT INTO `sys_trade` (`id`, `code`, `name`, `descrition`, `pcode`, `createTime`, `updateTime`, `vision`) VALUES
(1, '0111', '稻谷种植', '', '011', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(2, '0112', '小麦种植', '', '011', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(3, '0113', '玉米种植', '', '011', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(4, '0119', '其他谷物种植', '', '011', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(5, '0121', '豆类种植', '', '012', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(6, '0122', '油料种植', '', '012', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(7, '0123', '薯类种植', '', '012', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(8, '0131', '棉花种植', '', '013', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(9, '0132', '麻类种植', '', '013', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(10, '0133', '糖料种植', '指用于制糖的甘蔗和甜菜的种植', '013', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(11, '0134', '烟草种植', '', '013', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(12, '0141', '蔬菜种植', '', '014', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(13, '0142', '食用菌种植', '', '014', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(14, '0143', '花卉种植', '', '014', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(15, '0149', '其他园艺作物种植', '', '014', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(16, '0151', '仁果类和核果类水果种植', '指苹果、梨、桃、杏、李子等水果种植', '015', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(17, '0152', '葡萄种植', '', '015', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(18, '0153', '柑橘类种植', '', '015', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(19, '0154', '香蕉等亚热带水果种植', '指香蕉、菠萝、芒果等亚热带水果种植', '015', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(20, '0159', '其他水果种植', '', '015', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(21, '0161', '坚果种植', '', '016', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(22, '0162', '含油果种植', '指椰子、橄榄、油棕榈等的种植', '016', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(23, '0163', '香料作物种植', '', '016', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(24, '0169', '茶及其他饮料作物种植', '', '016', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(25, '0170', '中药材种植', '指主要用于中药配制以及中成药加工的药材作物的种植', '017', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(26, '0190', '其他农业', '指上述未列明的农作物种植', '019', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(27, '0211', '林木育种', '指应用遗传学原理选育和繁殖林木新品种核心的栽植材料的林木遗传改良活动', '021', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(28, '0212', '林木育苗', '指通过人为活动将种子、穗条或植物其他组织培育成苗木的活动', '021', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(29, '0220', '造林和更新', '指在宜林荒山荒地荒沙、采伐迹地、火烧迹地、疏林地、灌木林地等一切可造林的土地上通过人工造林、人工更新、封山育林、飞播造林等方式培育和恢复森林的活动', '022', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(30, '0230', '森林经营和管护', '指为促进林木生长发育，在林木生长的不同时期进行的促进林木生长发育的活动', '023', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(31, '0241', '木材采运', '', '024', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(32, '0242', '竹材采运', '', '024', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(33, '0251', '木竹材林产品采集', '', '025', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(34, '0252', '非木竹材林产品采集', '指在天然林地和人工林地进行的除木材、竹材产品外的其他各种林产品的采集活动', '025', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(35, '0311', '牛的饲养', '', '031', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(36, '0312', '马的饲养', '', '031', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(37, '0313', '猪的饲养', '', '031', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(38, '0314', '羊的饲养', '', '031', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(39, '0315', '骆驼饲养', '', '031', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(40, '0319', '其他牲畜饲养', '', '031', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(41, '0321', '鸡的饲养', '', '032', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(42, '0322', '鸭的饲养', '', '032', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(43, '0323', '鹅的饲养', '', '032', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(44, '0329', '其他家禽饲养', '', '032', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(45, '0330', '狩猎和捕捉动物', '指对各种野生动物的捕捉以及与此相关的活动', '033', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(46, '0390', '其他畜牧业', '', '039', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(47, '0411', '海水养殖', '指利用海水对各种水生动植物的养殖', '041', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(48, '0412', '内陆养殖', '指在内陆水域进行的各种水生动植物的养殖', '041', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(49, '0421', '海水捕捞', '指在海洋中对各种天然水生动植物的捕捞', '042', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(50, '0422', '内陆捕捞', '指在内陆水域对各种天然水生动植物的捕捞', '042', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(51, '0511', '农业机械服务', '指为农业生产提供农业机械并配备操作人员的活动', '051', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(52, '0512', '灌溉服务', '指对农业生产灌溉系统的经营与管理', '051', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(53, '0513', '农产品初加工服务', '指对各种农产品（包括天然橡胶、纺织纤维原料）进行脱水、凝固、去籽、净化、分类、晒干、剥皮、初烤、沤软或大批包装以提供初级市场的服务，以及其他农产品的初加工；其中棉花等纺织纤维原料加工指对棉纤维、短绒剥离后的棉籽以及棉花秸秆、铃壳等副产品的综合加工和利用活动', '051', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(54, '0519', '其他农业服务', '指防止病虫害的活动，以及其他未列明的农业服务', '051', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(55, '0521', '林业有害生物防治服务', '', '052', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(56, '0522', '森林防火服务', '', '052', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(57, '0523', '林产品初级加工服务', '指对各种林产品进行去皮、打枝或去料、净化、初包装提供至贮木场或初级市场的服务', '052', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(58, '0529', '其他林业服务', '', '052', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(59, '0530', '畜牧服务业', '指提供牲畜繁殖、圈舍清理、畜产品生产和初级加工等服务', '053', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(60, '0540', '渔业服务业', '指对渔业生产活动进行的各种支持性服务，包括鱼苗及鱼种场、水产良种场和水产增殖场等进行的活动', '054', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(61, '0610', '烟煤和无烟煤开采洗选', '指对地下或露天烟煤、无烟煤的开采，以及对采出的烟煤、无烟煤及其他硬煤进行洗选、分级等提高质量的活动', '061', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(62, '0620', '褐煤开采洗选', '指对褐煤--煤化程度较低的一种燃料的地下或露天开采，以及对采出的褐煤进行洗选、分级等提高质量的活动', '062', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(63, '0690', '其他煤炭采选', '指对生长在古生代地层中的含碳量低、灰分高的煤炭资源（如石煤、泥炭）的开采', '069', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(64, '0710', '石油开采', '', '071', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(65, '0720', '天然气开采', '', '072', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(66, '0810', '铁矿采选', '指对铁矿石的采矿、选矿活动', '081', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(67, '0820', '锰矿、铬矿采选', '', '082', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(68, '0890', '其他黑色金属矿采选', '指对钒矿等钢铁工业黑色金属辅助原料矿的采矿、选矿活动', '089', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(69, '0911', '铜矿采选', ' ', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(70, '0912', '铅锌矿采选', ' ', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(71, '0913', '镍钴矿采选', '', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(72, '0914', '锡矿采选', ' ', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(73, '0915', '锑矿采选', ' ', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(74, '0916', '铝矿采选', '', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(75, '0917', '镁矿采选', ' ', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(76, '0919', '其他常用有色金属矿采选', '', '091', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(77, '0921', '金矿采选', ' ', '092', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(78, '0922', '银矿采选', ' ', '092', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(79, '0929', '其他贵金属矿采选', '', '092', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(80, '0931', '钨钼矿采选', '', '093', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(81, '0932', '稀土金属矿采选', '指镧系金属及与镧系金属性质相近的金属矿的采选', '093', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(82, '0933', '放射性金属矿采选', '指对主要含钍和铀的矿石开采，以及对这类矿石的精选', '093', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(83, '0939', '其他稀有金属矿采选', '指对稀有轻金属矿、稀有高熔点金属矿、稀散金属矿采选活动，以及其他稀有金属矿的采选', '093', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(84, '1011', '石灰石、石膏开采', '指对石灰、石膏，以及石灰石助熔剂的开采', '101', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(85, '1012', '建筑装饰用石开采', '指通常在采石场切制加工各种纪念碑及建筑用石料的活动', '101', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(86, '1013', '耐火土石开采', '', '101', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(87, '1019', '粘土及其他土砂石开采', '指用于建筑、陶瓷等方面的粘土开采，以及用于铺路和建筑材料的石料、石渣、砂的开采', '101', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(88, '1020', '化学矿开采', '指对化学矿和肥料矿物的开采', '102', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(89, '1030', '采盐', '指通过以海水（含沿海浅层地下卤水）为原料晒制，或以钻井汲取地下卤水，或注水溶解地下岩盐为原料，经真空蒸发干燥，以及从盐湖中采掘制成的以氯化钠为主要成分的盐产品的开采、粉碎和筛选', '103', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(90, '1091', '石棉、云母矿采选', ' ', '109', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(91, '1092', '石墨、滑石采选', '指对天然石墨、滑石的开采', '109', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(92, '1093', '宝石、玉石采选', '指对贵重宝石、玉石、彩石的开采', '109', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(93, '1099', '其他未列明非金属矿采选', '', '109', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(94, '1110', '煤炭开采和洗选辅助活动', '', '111', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(95, '1120', '石油和天然气开采辅助活动', '', '112', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(96, '1190', '其他开采辅助活动', '', '119', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(97, '1200', '其他采矿业', '指对地热资源、矿泉水资源以及其他未列明的自然资源的开采，但不包括利用这些资源建立的热电厂和矿泉水厂的活动', '120', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(99, '1310', '谷物磨制', '也称粮食加工，指将稻子、谷子、小麦、高粱等谷物去壳、碾磨及精加工的生产活动', '131', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(100, '1320', '饲料加工 ', '指适用于农场、农户饲养牲畜、家禽的饲料生产加工，包括宠物食品的生产活动，也包括用屠宰下脚料加工生产的动物饲料，即动物源性饲料的生产活动', '132', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(101, '1331', '食用植物油加工', '指用各种食用植物油料生产油脂，以及精制食用油的加工', '133', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(102, '1332', '非食用植物油加工', '指用各种非食用植物油料生产油脂的活动', '133', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(103, '1340', '制糖业', '指以甘蔗、甜菜等为原料制作成品糖，以及以原糖或砂糖为原料精炼加工各种精制糖的生产活动', '134', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(104, '1351', '牲畜屠宰', '指对各种牲畜进行宰杀，以及鲜肉冷冻等保鲜活动，但不包括商业冷藏活动', '135', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(105, '1352', '禽类屠宰', '指对各种禽类进行宰杀，以及鲜肉冷冻等保鲜活动，但不包括商业冷藏活动', '135', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(106, '1353', '肉制品及副产品加工', '指主要以各种畜、禽肉为原料加工成熟肉制品，以及畜、禽副产品的加工', '135', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(107, '1361', '水产品冷冻加工', '指为了保鲜，将海水、淡水养殖或捕捞的鱼类、虾类、甲壳类、贝类、藻类等水生动物或植物进行的冷冻加工，但不包括商业冷藏活动', '136', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(108, '1362', '鱼糜制品及水产品干腌制加工', '指鱼糜制品制造，以及水产品的干制、腌制等加工', '136', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(109, '1363', '水产饲料制造', '指用低值水产品及水产品加工废弃物（如鱼骨、内脏、虾壳）等为主要原料的饲料加工', '136', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(110, '1364', '鱼油提取及制品制造', '指从鱼或鱼肝中提取油脂，并生产制品的活动', '136', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(111, '1369', '其他水产品加工', '指对水生动植物进行的其他加工', '136', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(112, '1371', '蔬菜加工', '', '137', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(113, '1372', '水果和坚果加工', '', '137', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(114, '1391', '淀粉及淀粉制品制造', '指用玉米、薯类、豆类及其他植物原料制作淀粉和淀粉制品的生产；还包括以淀粉为原料，经酶法或酸法转换得到的糖品生产活动', '139', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(115, '1392', '豆制品制造', '指以大豆、小豆、绿豆、豌豆、蚕豆等豆类为主要原料，经加工制成食品的活动', '139', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(116, '1393', '蛋品加工', '', '139', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(117, '1399', '其他未列明农副食品加工', '', '139', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(118, '1411', '糕点、面包制造', '指用米粉、面粉、豆粉为主要原料，配以辅料，经成型、油炸、烤制而成的各种食品生产活动', '141', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(119, '1419', '饼干及其他焙烤食品制造', '指以面粉（或糯米粉）、糖和油脂为主要原料，配以奶制品、蛋制品等辅料，经成型、焙烤制成的各种饼干，以及用薯类、谷类、豆类等制作的各种易于保存、食用方便的焙烤食品生产活动', '141', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(120, '1421', '糖果、巧克力制造', '糖果制造指以砂糖、葡萄糖浆或饴糖为主要原料，加入油脂、乳品、胶体、果仁、香料、食用色素等辅料制成甜味块状食品的生产活动；巧克力制造指以浆状、粉状或块状可可、可可脂、可可酱、砂糖、乳品等为主要原料加工制成巧克力及巧克力制品的生产活动', '142', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(121, '1422', '蜜饯制作', '指以水果、坚果、果皮及植物的其他部分制作糖果蜜饯的活动', '142', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(122, '1431', '米、面制品制造', '指以米、面、杂粮等为原料，经粗加工制成，未经烹制的各类米面制品的生产活动', '143', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(123, '1432', '速冻食品制造', '指以米、面、杂粮等为主要原料，以肉类、蔬菜等为辅料，经加工制成各类烹制或未烹制的主食食品后，立即采用速冻工艺制成的，并可以在冻结条件下运输储存及销售的各类主食食品的生产活动', '143', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(124, '1439', '方便面及其他方便食品制造', '指用米、面、杂粮等为主要原料加工制成的，可以直接食用或只需简单蒸煮即可作为主食的各种方便主食食品的生产活动，以及其他未列明的方便食品制造', '143', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(125, '1440', '乳制品制造', '指以生鲜牛（羊）乳及其制品为主要原料，经加工制成的液体乳及固体乳（乳粉、炼乳、乳脂肪、干酪等）制品的生产活动；不包括含乳饮料和植物蛋白饮料生产活动', '144', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(126, '1451', '肉、禽类罐头制造', '', '145', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(127, '1452', '水产品罐头制造', '', '145', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(128, '1453', '蔬菜、水果罐头制造', '', '145', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(129, '1459', '其他罐头食品制造', '指婴幼儿辅助食品类罐头、米面食品类罐头（如八宝粥罐头等）及上述未列明的罐头食品制造', '145', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(130, '1461', '味精制造', '指以淀粉或糖蜜为原料，经微生物发酵、提取、精制等工序制成的，谷氨酸钠含量在80％及以上的鲜味剂的生产活动', '146', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(131, '1462', '酱油、食醋及类似制品制造', '指以大豆和（或）脱脂大豆，小麦和（或）麸皮为原料，经微生物发酵制成的各种酱油和酱类制品，以及以单独或混合使用各种含有淀粉、糖的物料或酒精，经微生物发酵酿制的酸性调味品的生产活动', '146', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(132, '1469', '其他调味品、发酵制品制造', '', '146', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(133, '1491', '营养食品制造', '指主要适宜伤残者、老年人，含肉、鱼、水果、蔬菜、奶、麦精、钙等均质配料的营养食品的生产活动', '149', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(134, '1492', '保健食品制造', '指标明具有特定保健功能的食品，适用于特定人群食用，具有调节机体功能，不以治疗为目的，对人体不产生急性、亚急性或慢性危害，以补充维生素、矿物质为目的的营养素补充等保健食品制造', '149', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(135, '1493', '冷冻饮品及食用冰制造', '指以砂糖、乳制品、豆制品、蛋制品、油脂、果料和食用添加剂等经混合配制、加热杀菌、均质、老化、冻结（凝冻）而成的冷食饮品的制造，以及食用冰的制造', '149', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(136, '1494', '盐加工 ', '指以原盐为原料，经过化卤、蒸发、洗涤、粉碎、干燥、脱水、筛分等工序，或在其中添加碘酸钾及调味品等加工制成盐产品的生产活动', '149', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(137, '1495', '食品及饲料添加剂制造', '指增加或改善食品特色的化学品，以及补充动物饲料的营养成分和促进生长、防治疫病的制剂的生产活动', '149', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(138, '1499', '其他未列明食品制造', '', '149', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(139, '1511', '酒精制造', '指用玉米、小麦、薯类等淀粉质原料或用糖蜜等含糖质原料，经蒸煮、糖化、发酵及蒸馏等工艺制成的酒精产品的生产活动', '151', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(140, '1512', '白酒制造', '指以高粱等粮谷为主要原料，以大曲、小曲或麸曲及酒母等为糖化发酵剂，经蒸煮、糖化、发酵、蒸馏、陈酿、勾兑而制成的蒸馏酒产品的生产活动', '151', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(141, '1513', '啤酒制造', '指以麦芽（包括特种麦芽）、水为主要原料，加啤酒花，经酵母发酵酿制而成，含二氧化碳、起泡、低酒精度的发酵酒产品（包括无醇啤酒，也称脱醇啤酒）的生产活动，以及啤酒专用原料麦芽的生产活动', '151', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(142, '1514', '黄酒制造', '指以稻米、黍米、黑米、小麦、玉米等为主要原料，加曲、酵母等糖化发酵剂发酵酿制而成的发酵酒产品的生产活动', '151', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(143, '1515', '葡萄酒制造', '指以新鲜葡萄或葡萄汁为原料，经全部或部分发酵酿制而成，含有一定酒精度的发酵酒产品的生产活动', '151', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(144, '1519', '其他酒制造', '指除葡萄酒以外的果酒、配制酒以及上述未列明的其他酒产品的生产活动', '151', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(145, '1521', '碳酸饮料制造', '指在一定条件下充入二氧化碳气的饮用品制造，其成品中二氧化碳气的含量（20℃时的体积倍数）不低于2.0倍', '152', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(146, '1522', '瓶（罐）装饮用水制造', '指以地下矿泉水和符合生活饮用水卫生标准的水为水源加工制成的，密封于塑料瓶（罐）、玻璃瓶或其他容器中，不含任何添加剂，可直接饮用的水的生产活动', '152', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(147, '1523', '果菜汁及果菜汁饮料制造', '指以新鲜或冷藏水果和蔬菜为原料，经加工制得的果菜汁液制品生产活动，以及在果汁或浓缩果汁、蔬菜汁中加入水、糖液、酸味剂等，经调制而成的可直接饮用的饮品（果汁含量不低于10％）的生产活动', '152', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(148, '1524', '含乳饮料和植物蛋白饮料制造', '指以鲜乳或乳制品为原料（经发酵或未经发酵），加入水、糖液等调制而成的可直接饮用的含乳饮品的生产活动，以及以蛋白质含量较高的植物的果实、种子或核果类、坚果类的果仁等为原料，在其加工制得的浆液中加入水、糖液等调制而成的可直接饮用的植物蛋白饮品的生产活动', '152', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(149, '1525', '固体饮料制造', '指以糖、食品添加剂、果汁或植物抽提物等为原料，加工制成粉末状、颗粒状或块状制品[其成品水分(质量分数)不高于5％]的生产活动', '152', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(150, '1529', '茶饮料及其他饮料制造', '指茶饮料、特殊用途饮料以及其他未列明的饮料制造', '152', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(151, '1530', '精制茶加工', '指对毛茶或半成品原料茶进行筛分、轧切、风选、干燥、匀堆、拼配等精制加工茶叶的生产活动', '153', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(152, '1610', '烟叶复烤', '指在原烟（初烤）基础上进行第二次烟叶水分调整的活动', '161', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(153, '1620', '卷烟制造', '指各种卷烟生产，但不包括生产烟用滤嘴棒的纤维丝束原料的制造', '162', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(154, '1690', '其他烟草制品制造', '', '169', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(155, '1711', '棉纺纱加工', '指以棉及棉型化学纤维为主要原料进行的纺纱加工', '171', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(156, '1712', '棉织造加工', '指以棉纱、混纺纱、化学纤维纱为主要原料进行的机织物织造加工', '171', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(157, '1713', '棉印染精加工', '指对非自产的棉和化学纤维织物进行漂白、染色、印花、轧光、起绒、缩水等工序的加工', '171', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(158, '1721', '毛条和毛纱线加工', '指以毛及毛型化学纤维为原料进行梳条的加工，按毛纺工艺（精梳、粗梳、半精梳）进行纺纱的加工', '172', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(159, '1722', '毛织造加工', '指以毛及毛型化学纤维纱线为原料进行的机织物织造加工', '172', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(160, '1723', '毛染整精加工', '指对非自产的毛织物进行漂白、染色、印花等工序的染整精加工', '172', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(161, '1731', '麻纤维纺前加工和纺纱', '指以苎麻、亚麻、大麻、黄麻、剑麻、罗布麻等为原料的纺前纤维加工和纺纱加工', '173', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(162, '1732', '麻织造加工', '指以苎麻、亚麻、大麻、黄麻、剑麻、罗布麻纤维纱线等为主要原料的机织物织造加工', '173', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(163, '1733', '麻染整精加工', '指对非自产的麻织物进行漂白、染色、印花等工序的染整精加工', '173', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(164, '1741', '缫丝加工', '指由蚕茧经过加工缫制成丝的活动', '174', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(165, '1742', '绢纺和丝织加工', '指以丝为主要原料进行的丝织物织造加工', '174', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(166, '1743', '丝印染精加工', '指对非自产的丝织物进行漂白、染色、印花、轧光、起绒、缩水等工序的加工', '174', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(167, '1751', '化纤织造加工', '指以化纤长丝(含有色长丝)为主要原料生产的机织坯布、色织布', '175', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(168, '1752', '化纤织物染整精加工', '指对化纤长丝坯布进行漂白、染色、印花、轧光、起绒、缩水等染整工序的加工', '175', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(169, '1761', '针织或钩针编织物织造', '指采用经编、纬编、横编及钩针编工艺进行的针织物织造加工', '176', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(170, '1762', '针织或钩针编织物印染精加工', '指对非自产的针织品进行漂白、染色、印花、轧光、起绒、缩水等工序的加工', '176', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(171, '1763', '针织或钩针编织品制造', '指除针织或钩针编织服装以外的其他针织品或钩针编织品的加工', '176', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(172, '1771', '床上用品制造', '指以棉、麻、丝、毛、化学纤维等纤维及纺织品为主要原料，加工制造床上用品（包括含有填充物的被子、睡袋、枕头等类产品）的生产活动', '177', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(173, '1772', '毛巾类制品制造', '指以棉、麻、丝及化学纤维等为主要原料，加工制造毛巾类产品的生产活动', '177', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(174, '1773', '窗帘、布艺类产品制造', '指以棉、麻、丝、毛及化学纤维等为主要原料，加工制造窗帘、各种装饰罩（套）、靠垫、坐垫、贮物袋等生活用布艺产品的生产活动', '177', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(175, '1779', '其他家用纺织制成品制造', '指以棉、麻、丝、毛及化学纤维等为主要原料，加工制造毛毯、桌布、台布、餐巾、擦布、洗碗巾等餐厨生活制品的其他家用纺织制成品生产活动', '177', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(176, '1781', '非织造布制造', '指定向或随机排列的纤维，通过摩擦、抱合或粘合，或者这些方法的组合而相互结合制成的片状物、纤网或絮垫的生产活动；所用纤维可以是天然纤维、化学纤维和无机纤维，也可以是短纤维、长丝或直接形成的纤维状物', '178', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(177, '1782', '绳、索、缆制造', '指用天然纤维和化学纤维制造绳、索具、缆绳、合股线的生产活动', '178', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(178, '1783', '纺织带和帘子布制造', '指帘子布、复合材料用基布、输送带基布、传送带和胶管等增强材料的生产活动', '178', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(179, '1784', '篷、帆布制造', '指车用篷布、帐篷布、鞋用纺织材料、灯箱布等纺织材料的生产活动', '178', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(180, '1789', '其他非家用纺织制成品制造', '指革基布，过滤、防护用纺织品，工业用毡、呢，建筑用纺织品，交通运输用纺织品，包装用纺织品，文体用纺织品，绝缘隔热纺织品，农业用纺织品，渔业用纺织品，造纸用纺织品等其他产业用纺织制成品的生产活动', '178', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(181, '1810', '机织服装制造', '指以机织面料为主要原料，缝制各种男、女服装，以及儿童成衣的活动；包括非自产原料制作的服装，以及固定生产地点的服装制作活动', '181', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(182, '1820', '针织或钩针编织服装制造', '指以针织、钩针编织面料为主要原料，经裁剪后缝制各种男、女服装，以及儿童成衣的活动', '182', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(183, '1830', '服饰制造', '指帽子、手套、围巾、领带、领结、手绢，以及袜子等服装饰品的加工', '183', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(184, '1910', '皮革鞣制加工', '指动物生皮经脱毛、鞣制等物理和化学方法加工，再经涂饰和整理，制成具有不易腐烂、柔韧、透气等性能的皮革生产活动', '191', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(185, '1921', '皮革服装制造', '指全部或大部分用皮革、人造革、合成革为面料，制作各式服装的活动', '192', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(186, '1922', '皮箱、包（袋）制造', '指全部或大部分用皮革、人造革、合成革为材料，或者以塑料、纺织物为材料，制作各种用途的皮箱、皮包(袋)，或其他材料的箱、包(袋)等的制作活动', '192', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(187, '1923', '皮手套及皮装饰制品制造 ', '指全部或大部分用皮革、人造革、合成革为材料制成的皮手套、皮带，以及皮领带等皮装饰制品的生产活动', '192', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(188, '1929', '其他皮革制品制造', '指全部或大部分用皮革、人造革、合成革为材料制成上述未列明的其他各种皮革制品的生产活动', '192', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(189, '1931', '毛皮鞣制加工', '指带毛动物生皮经鞣制等化学和物理方法处理后，保持其绒毛形态及特点的毛皮(又称裘皮)的生产活动', '193', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(190, '1932', '毛皮服装加工', '指用各种动物毛皮和人造毛皮为面料或里料，加工制作毛皮服装的生产活动', '193', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(191, '1939', '其他毛皮制品加工', '指用各种动物毛皮和人造毛皮为材料，加工制作上述类别未列明的其他各种用途毛皮制品的生产活动', '193', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(192, '1941', '羽毛（绒）加工', '指对鹅、鸭等禽类羽毛进行加工成标准毛的生产活动', '194', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(193, '1942', '羽毛（绒）制品加工', '指用加工过的羽毛(绒)作为填充物制作各种用途的羽绒制品(如羽绒服装、羽绒寝具、羽绒睡袋等)的生产活动', '194', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(194, '1951', '纺织面料鞋制造', '指用各种纺织面料、木材、棕草等原料缝制、模压或编制各种鞋的生产活动', '195', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(195, '1952', '皮鞋制造', '指全部或大部分用皮革、人造革、合成革为面料，以橡胶、塑料或合成材料等为外底，按缝绱、胶粘、模压、注塑等工艺方法制作各种皮鞋的生产活动', '195', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(196, '1953', '塑料鞋制造', '指以聚氯乙烯、聚乙烯、聚氨酯和乙烯醋酸乙烯等树脂为原料生产发泡或不发泡的塑料鞋类制品的活动', '195', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(197, '1954', '橡胶鞋制造', '指以橡胶作为鞋底、鞋帮的橡胶鞋及其橡胶鞋部件的生产活动', '195', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(198, '1959', '其他制鞋业', '', '195', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(199, '2011', '锯材加工', '指以原木为原料，利用锯木机械或手工工具将原木纵向锯成具有一定断面尺寸（宽、厚度）的木材加工生产活动，用防腐剂和其他物质浸渍木料或对木料进行化学处理的加工，以及地板毛料的制造', '201', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(200, '2012', '木片加工', '指利用森林采伐、造材、加工等剩余物和定向培育的木材，经削（刨）片机加工成一定规格的产品生产活动', '201', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(201, '2013', '单板加工', '指用于单板层积材（LVL）、纺织用木质层压板、电工层压木板和木质层积塑料等单位的生产；随着科技进步，装饰单板（厚度0.55mm以下的单板)发展很快,主要用于装饰贴面二次加工，如生产装饰贴面胶合板、实木复合地板、木质复合门窗、家具、楼梯、汽车内饰、木墙纸和踢脚线等', '201', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(202, '2019', '其他木材加工', '指对木材进行干燥、防腐、改性、染色加工等活动', '201', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(203, '2021', '胶合板制造', '指具有一定规格的原木经旋（刨）切成单板，再经干燥、涂胶、组坯、热压而成的符合国家标准及供需双方协定标准的产品生产活动', '202', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(204, '2022', '纤维板制造', '指用木材碎料（包括木片）、棉秆、甘蔗渣、芦苇等植物纤维作原料，经削片纤维分离，铺装成型，热压而成的产品生产活动', '202', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(205, '2023', '刨花板制造', '指用木材碎料（包括木片）和其他植物纤维作原料，制成刨花，经干燥、施胶，铺装成型，热压而成的产品生产活动', '202', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(206, '2029', '其他人造板制造', '包括非木质纤维、胶合木等其他各类人造板的制造', '202', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(207, '2031', '建筑用木料及木材组件加工', '指主要用于建筑施工工程的木质制品，如建筑施工用的大木工或其他支撑物，以及建筑木工的生产活动', '203', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(208, '2032', '木门窗、楼梯制造', '', '203', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(209, '2033', '地板制造', '', '203', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(210, '2034', '木制容器制造', '', '203', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(211, '2039', '软木制品及其他木制品制造', '指天然软木除去表皮，经初加工后获得的结块软木及其制品的生产活动，以及其他未列明的木质产品的生产活动', '203', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(212, '2041', '竹制品制造', '指竹胶合板、竹地板、竹丝板等竹制品的制造', '204', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(213, '2042', '藤制品制造', '', '204', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(214, '2043', '棕制品制造', '', '204', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(215, '2049', '草及其他制品制造', '', '204', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(216, '2110', '木质家具制造', '指以天然木材和木质人造板为主要材料，配以其他辅料（如油漆、贴面材料、玻璃、五金配件等）制作各种家具的生产活动', '211', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(217, '2120', '竹、藤家具制造', '指以竹材和藤材为主要材料，配以其他辅料制作各种家具的生产活动', '212', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(218, '2130', '金属家具制造', '指支(框)架及主要部件以铸铁、钢材、钢板、钢管、合金等金属为主要材料，结合使用木、竹、塑等材料，配以人造革、尼龙布、泡沫塑料等其他辅料制作各种家具的生产活动', '213', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(219, '2140', '塑料家具制造', '指用塑料管、板、异型材加工或用塑料、玻璃钢（即增强塑料）直接在模具中成型的家具的生产活动', '214', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(220, '2190', '其他家具制造', '指主要由弹性材料(如弹簧、蛇簧、拉簧等)和软质材料(如棕丝、棉花、乳胶海绵、泡沫塑料等)，辅以绷结材料(如绷绳、绷带、麻布等)和装饰面料及饰物(如棉、毛、化纤织物及牛皮、羊皮、人造革等)制成的各种软家具；以玻璃为主要材料，辅以木材或金属材料制成的各种玻璃家具，以及其他未列明的原材料制作各种家具的生产活动', '219', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(221, '2211', '木竹浆制造', '', '221', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(222, '2212', '非木竹浆制造', '', '221', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(223, '2221', '机制纸及纸板制造', '', '222', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(224, '2222', '手工纸制造', '指采用手工操作成型，制成纸的生产活动', '222', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(225, '2223', '加工纸制造', '指对原纸及纸板进一步加工的生产活动', '222', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(226, '2231', '纸和纸板容器制造', '', '223', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(227, '2239', '其他纸制品制造', '指符合出售规格或包装要求的纸制品，以及其他未列明的纸制品的制造', '223', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(228, '2311', '书、报刊印刷', '', '231', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(229, '2312', '本册印制', '指由各种纸及纸板制作的，用于书写和其他用途的本册生产活动', '231', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(230, '2319', '包装装潢及其他印刷', '指根据一定的商品属性、形态，采用一定的包装材料，经过对商品包装的造型结构艺术和图案文字的设计与安排来装饰美化商品的印刷，以及其他印刷活动', '231', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(231, '2320', '装订及印刷相关服务', '指专门企业从事的装订、压印媒介制造等与印刷有关的服务', '232', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(232, '2330', '记录媒介复制', '指将母带、母盘上的信息进行批量翻录的生产活动', '233', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(233, '2411', '文具制造', '指办公、学习等使用的各种文具的制造', '241', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(234, '2412', '笔的制造', '指用于学习、办公或绘画等用途的各种笔制品的制造', '241', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(235, '2413', '教学用模型及教具制造', '指主要用于教学的各种专用模型、标本及教具的制造', '241', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(236, '2414', '墨水、墨汁制造', '', '241', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(237, '2419', '其他文教办公用品制造', '指上述未列明的文教办公类用品的制造', '241', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(238, '2421', '中乐器制造', '', '242', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(239, '2422', '西乐器制造', '', '242', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(240, '2423', '电子乐器制造', '', '242', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(241, '2429', '其他乐器及零件制造', '指其他未列明的乐器、乐器零件及配套产品的制造', '242', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(242, '2431', '雕塑工艺品制造', '指以玉石、宝石、象牙、角、骨、贝壳等硬质材料，木、竹、椰壳、树根、软木等天然植物，以及石膏、泥、面、塑料等为原料，经雕刻、琢、磨、捏或塑等艺术加工而制成的各种供欣赏和实用的工艺品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(243, '2432', '金属工艺品制造', '指以金、银、铜、铁、锡等各种金属为原料，经过制胎、浇铸、锻打、錾刻、搓丝、焊接、纺织、镶嵌、点兰、烧制、打磨、电镀等各种工艺加工制成的造型美观、花纹图案精致的工艺美术品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(244, '2433', '漆器工艺品制造', '指将半生漆、腰果漆加工调配成各种鲜艳的漆料，以木、纸、塑料、铜、布等作胎，采用推光、雕填、彩画、镶嵌、刻灰等传统工艺和现代漆器工艺进行的工艺制品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(245, '2434', '花画工艺品制造', '指以绢、丝、绒、纸、涤纶、塑料、羽毛、通草以及鲜花草等为原料，经造型设计、模压、剪贴、干燥等工艺精制而成的花、果、叶等人造花类工艺品，以画面出现、可以挂或摆的具有欣赏性、装饰性的画类工艺品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(246, '2435', '天然植物纤维编织工艺品制造', '指以竹、藤、棕、草、柳、葵、麻等天然植物纤维为材料，经编织或镶嵌而成具有造型艺术或图案花纹，以欣赏为主的工艺陈列品以及工艺实用品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(247, '2436', '抽纱刺绣工艺品制造', '指以棉、麻、丝、毛及人造纤维纺织品等为主要原料，经设计、刺绣、抽、拉、钩等工艺加工各种生活装饰用品，以及以纺织品为主要原料，经特殊手工工艺或民间工艺方法加工成各种具有较强装饰效果的生活用纺织品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(248, '2437', '地毯、挂毯制造', '指以羊毛、丝、棉、麻及人造纤维等为原料，经手工编织、机织、栽绒等方式加工而成的各种具有装饰性的地面覆盖物或可用于悬挂、垫坐等用途的生活装饰用品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(249, '2438', '珠宝首饰及有关物品制造', '指以金、银、铂等贵金属及其合金以及钻石、宝石、玉石、翡翠、珍珠等为原料，经金属加工和连结组合、镶嵌等工艺加工制作各种图案的装饰品的制作活动', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(250, '2439', '其他工艺美术品制造', '', '243', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(251, '2441', '球类制造', '指各种皮制、胶制、革制的可充气的运动用球，以及其他材料制成的各种运动用硬球、软球等球类产品的生产活动', '244', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(252, '2442', '体育器材及配件制造', '指各项竞技比赛和训练用器材及用品，体育场馆设施及器件的生产活动', '244', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(253, '2443', '训练健身器材制造', '指供健身房、家庭或体育训练用的健身器材及运动物品的制造', '244', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(254, '2444', '运动防护用具制造', '指用各种材质，为各项运动特制手套、鞋、帽和护具的生产活动', '244', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(255, '2449', '其他体育用品制造', '指钓鱼专用的各种用具及用品，以及上述未列明的体育用品制造', '244', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(256, '2450', '玩具制造', '指以儿童为主要使用者，用于玩耍、智力开发等娱乐器具的制造 ', '245', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(257, '2461', '露天游乐场所游乐设备制造', '指主要安装在公园、游乐园、水上乐园、儿童乐园等露天游乐场所的电动及非电动游乐设备和游艺器材的制造', '246', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(258, '2462', '游艺用品及室内游艺器材制造', '指主要供室内、桌上等游艺及娱乐场所使用的游乐设备、游艺器材和游艺娱乐用品，以及主要安装在室内游乐场所的电子游乐设备的制造', '246', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(259, '2469', '其他娱乐用品制造', '', '246', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(260, '2511', '原油加工及石油制品制造', '指从天然原油、人造原油中提炼液态或气态燃料以及石油制品的生产活动', '251', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(261, '2512', '人造原油制造', '指从油母页岩中提炼原油的生产活动', '251', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(262, '2520', '炼焦', '指主要从硬煤和褐煤中生产焦炭、干馏炭及煤焦油或沥青等副产品的炼焦炉的操作活动', '252', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(263, '2530', '核燃料加工', '指从沥青铀矿或其他含铀矿石中提取铀、浓缩铀的生产，对铀金属的冶炼、加工，以及其他放射性元素、同位素标记、核反应堆燃料元件的制造，还包括与核燃料加工有关的核废物处置活动', '253', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(264, '2611', '无机酸制造', '', '261', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(265, '2612', '无机碱制造', '指烧碱、纯碱等的生产活动', '261', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(266, '2613', '无机盐制造', '', '261', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(267, '2614', '有机化学原料制造', '', '261', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(268, '2619', '其他基础化学原料制造', '', '261', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(269, '2621', '氮肥制造', '指矿物氮肥及用化学方法制成含有作物营养元素氮的化肥的生产活动', '262', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(270, '2622', '磷肥制造', '指以磷矿石为主要原料，用化学或物理方法制成含有作物营养元素磷的化肥的生产活动', '262', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(271, '2623', '钾肥制造', '指用天然钾盐矿经富集精制加工制成含有作物营养元素钾的化肥的生产活动', '262', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(272, '2624', '复混肥料制造', '指经过化学或物理方法加工制成的，含有两种以上作物所需主要营养元素（氮、磷、钾）的化肥的生产活动；包括通用型复混肥料和专用型复混肥料', '262', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1);
INSERT INTO `sys_trade` (`id`, `code`, `name`, `descrition`, `pcode`, `createTime`, `updateTime`, `vision`) VALUES
(273, '2625', '有机肥料及微生物肥料制造', '指来源于动植物，经发酵或腐熟等化学处理后，适用于土壤并提供植物养分供给的，其主要成分为含氮物质的肥料制造', '262', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(274, '2629', '其他肥料制造', '指上述未列明的微量元素肥料及其他肥料的生产', '262', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(275, '2631', '化学农药制造', '指化学农药原药，以及经过机械粉碎、混合或稀释制成粉状、乳状和水状的化学农药制剂的生产活动', '263', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(276, '2632', '生物化学农药及微生物农药制造', '指由细菌、真菌、病毒和原生动物或基因修饰的微生物等自然产生，以及由植物提取的防治病、虫、草、鼠和其他有害生物的农药制剂生产活动', '263', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(277, '2641', '涂料制造', '指在天然树脂或合成树脂中加入颜料、溶剂和辅助材料，经加工后制成的覆盖材料的生产活动', '264', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(278, '2642', '油墨及类似产品制造', '指由颜料、联接料（植物油、矿物油、树脂、溶剂）和填充料经过混合、研磨调制而成，用于印刷的有色胶浆状物质，以及用于计算机打印、复印机用墨等的生产活动', '264', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(279, '2643', '颜料制造', '指用于陶瓷、搪瓷、玻璃等工业的无机颜料及类似材料的生产活动，以及油画、水粉画、广告等艺术用颜料的制造', '264', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(280, '2644', '染料制造', '指有机合成、植物性或动物性色料，以及有机颜料的生产活动', '264', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(281, '2645', '密封用填料及类似品制造', '指用于建筑涂料、密封和漆工用的填充料，以及其他类似化学材料的制造', '264', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(282, '2651', '初级形态塑料及合成树脂制造', '也称初级塑料或原状塑料的生产活动，包括通用塑料、工程塑料、功能高分子塑料的制造', '265', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(283, '2652', '合成橡胶制造', '指人造橡胶或合成橡胶及高分子弹性体的生产活动', '265', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(284, '2653', '合成纤维单（聚合）体制造', '指以石油、天然气、煤等为主要原料，用有机合成的方法制成合成纤维单体或聚合体的生产活动', '265', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(285, '2659', '其他合成材料制造', '指陶瓷纤维等特种纤维及其增强的复合材料的生产活动；其他专用合成材料的制造 ', '265', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(286, '2661', '化学试剂和助剂制造', '指各种化学试剂、催化剂及专用助剂的生产活动', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(287, '2662', '专项化学用品制造', '指水处理化学品、造纸化学品、皮革化学品、油脂化学品、油田化学品、生物工程化学品、日化产品专用化学品等产品的生产活动', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(288, '2663', '林产化学产品制造', '指以林产品为原料，经过化学和物理加工方法生产产品的活动', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(289, '2664', '信息化学品制造', '指电影、照相、医用、幻灯及投影用感光材料、冲洗套药，磁、光记录材料，光纤维通讯用辅助材料，及其专用化学制剂的制造', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(290, '2665', '环境污染处理专用药剂材料制造', '指对水污染、空气污染、固体废物等污染物处理所专用的化学药剂及材料的制造', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(291, '2666', '动物胶制造', '指以动物骨、皮为原料，经一系列工艺处理制成有一定透明度、粘度、纯度的胶产品的生产活动', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(292, '2669', '其他专用化学产品制造', '指其他各种用途的专用化学用品的制造', '266', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(293, '2671', '炸药及火工产品制造', '指各种军用和生产用炸药、雷管及类似的火工产品的制造', '267', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(294, '2672', '焰火、鞭炮产品制造 ', '指节日、庆典用焰火及民用烟花、鞭炮等产品的制造', '267', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(295, '2681', '肥皂及合成洗涤剂制造', '指以喷洒、涂抹、浸泡等方式施用于肌肤、器皿、织物、硬表面，即冲即洗，起到清洁、去污、渗透、乳化、分散、护理、消毒除菌等功能，广泛用于家居、个人清洁卫生、织物清洁护理、工业清洗、公共设施及环境卫生清洗等领域的产品（固、液、粉、膏、片状等），以及中间体表面活性剂产品的制造', '268', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(296, '2682', '化妆品制造', '指以涂抹、喷洒或者其他类似方法，撒布于人体表面任何部位（皮肤、毛发、指甲、口唇等），以达到清洁、消除不良气味、护肤、美容和修饰目的的日用化学工业产品的制造', '268', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(297, '2683', '口腔清洁用品制造', '指用于口腔或牙齿清洁卫生制品的生产活动', '268', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(298, '2684', '香料、香精制造', '指具有香气和香味，用于调配香精的物质--香料的生产，以及以多种天然香料和合成香料为主要原料，并与其他辅料一起按合理的配方和工艺调配制得的具有一定香型的复杂混合物，主要用于各类加香产品中的香精的生产活动', '268', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(299, '2689', '其他日用化学产品制造', '指室内散香或除臭制品，光洁用品，擦洗膏及类似制品，动物用化妆盥洗品，火柴，蜡烛及类似制品等日用化学产品的生产活动', '268', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(300, '2710', '化学药品原料药制造', '指供进一步加工化学药品制剂所需的原料药生产活动', '271', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(301, '2720', '化学药品制剂制造', '指直接用于人体疾病防治、诊断的化学药品制剂的制造', '272', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(302, '2730', '中药饮片加工', '指对采集的天然或人工种植、养殖的动物和植物的药材部位进行加工、炮制，使其符合中药处方调剂或中成药生产使用的活动', '273', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(303, '2740', '中成药生产', '指直接用于人体疾病防治的传统药的加工生产活动', '274', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(304, '2750', '兽用药品制造', '指用于动物疾病防治医药的制造', '275', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(305, '2760', '生物药品制造', '指利用生物技术生产生物化学药品、基因工程药物的生产活动', '276', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(306, '2770', '卫生材料及医药用品制造', '指卫生材料、外科敷料、药品包装材料、辅料以及其他内、外科用医药制品的制造', '277', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(307, '2811', '化纤浆粕制造', '指纺织生产用粘胶纤维的基本原料生产活动', '281', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(308, '2812', '人造纤维（纤维素纤维）制造', '指用化纤浆粕经化学加工生产纤维的活动', '281', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(309, '2821', '锦纶纤维制造', '也称聚酰胺纤维制造，指由尼龙66盐和聚己内酰胺为主要原料生产合成纤维的活动', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(310, '2822', '涤纶纤维制造', '也称聚酯纤维制造，指以聚对苯二甲酸乙二醇酯（简称聚酯）为原料生产合成纤维的活动', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(311, '2823', '腈纶纤维制造', '也称聚丙烯腈纤维，指以丙烯腈为主要原料（含丙烯腈85%以上）生产合成纤维的活动', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(312, '2824', '维纶纤维制造', '也称聚乙烯醇纤维制造，指以聚乙烯醇为主要原料生产合成纤维的活动', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(313, '2825', '丙纶纤维制造', '也称聚丙烯纤维制造，指以聚丙烯为主要原料生产合成纤维的活动 ', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(314, '2826', '氨纶纤维制造', '也称聚氨酯纤维制造，指以聚氨基甲酸酯为主要原料生产合成纤维的活动 ', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(315, '2829', '其他合成纤维制造', '', '282', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(316, '2911', '轮胎制造', '', '291', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(317, '2912', '橡胶板、管、带制造', '指用未硫化的、硫化的或硬质橡胶生产橡胶板状、片状、管状、带状、棒状和异型橡胶制品的活动，以及以橡胶为主要成分，用橡胶灌注、涂层、覆盖或层叠的纺织物、纱绳、钢丝（钢缆）等制作的传动带或输送带的生产活动', '291', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(318, '2913', '橡胶零件制造', '指各种用途的橡胶异形制品、橡胶零配件制品的生产活动', '291', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(319, '2914', '再生橡胶制造', '指用废橡胶生产再生橡胶的活动', '291', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(320, '2915', '日用及医用橡胶制品制造', '', '291', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(321, '2919', '其他橡胶制品制造', '', '291', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(322, '2921', '塑料薄膜制造', '指用于农业覆盖，工业、商业及日用包装薄膜的制造', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(323, '2922', '塑料板、管、型材制造', '指各种塑料板、管及管件、棒材、薄片等的生产活动，以及以聚氯乙烯为主要原料，经连续挤出成型的塑料异型材的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(324, '2923', '塑料丝、绳及编织品制造', '指塑料制丝、绳、扁条，塑料袋及编织袋、编织布等的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(325, '2924', '泡沫塑料制造', '指以合成树脂为主要原料，经发泡成型工艺加工制成内部具有微孔的塑料制品的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(326, '2925', '塑料人造革、合成革制造', '指外观和手感似皮革，其透气、透湿性虽然略逊色于天然革，但具有优异的物理、机械性能，如强度和耐磨性等，并可代替天然革使用的塑料人造革的生产活动；模拟天然人造革的组成和结构，正反面都与皮革十分相似，比普通人造革更近似天然革，并可代替天然革的塑料合成革的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(327, '2926', '塑料包装箱及容器制造', '指用吹塑或注塑工艺等制成的，可盛装各种物品或液体物质，以便于储存、运输等用途的塑料包装箱及塑料容器制品的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(328, '2927', '日用塑料制品制造', '指塑料制餐、厨用具，卫生设备、洁具及其配件，塑料服装，日用塑料装饰品，以及其他日用塑料制品的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(329, '2928', '塑料零件制造', '指塑料制绝缘零件、密封制品、紧固件，以及汽车、家具等专用零配件的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(330, '2929', '其他塑料制品制造', '指上述未列明的其他各类非日用塑料制品的生产活动', '292', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(331, '3011', '水泥制造', '指以水泥熟料加入适量石膏或一定混合材，经研磨设备（水泥磨）磨制到规定的细度，制成水凝水泥的生产活动，还包括水泥熟料的生产活动', '301', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(332, '3012', '石灰和石膏制造', '', '301', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(333, '3021', '水泥制品制造', '指水泥制管、杆、桩、砖、瓦等制品制造', '302', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(334, '3022', '砼结构构件制造', '指用于建筑施工工程的水泥混凝土预制构件的生产活动', '302', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(335, '3023', '石棉水泥制品制造', '', '302', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(336, '3024', '轻质建筑材料制造', '指石膏板、石膏制品及类似轻质建筑材料的制造', '302', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(337, '3029', '其他水泥类似制品制造', '指玻璃纤维增强水泥制品，以及其他未列明的水泥制品的制造', '302', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(338, '3031', '粘土砖瓦及建筑砌块制造', '指用粘土和其他材料生产的砖、瓦及建筑砌块的活动', '303', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(339, '3032', '建筑陶瓷制品制造', '指用于建筑物的内、外墙及地面装饰或耐酸腐蚀的陶瓷材料（不论是否涂釉）的生产活动，以及水道、排水沟的陶瓷管道及配件的制造', '303', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(340, '3033', '建筑用石加工', '指用于建筑、筑路、墓地及其他用途的大理石板、花岗岩等石材的切割、成形和修饰活动', '303', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(341, '3034', '防水建筑材料制造', '指以沥青或类似材料为主要原料制造防水材料的活动', '303', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(342, '3035', '隔热和隔音材料制造', '指用于隔热、隔音、保温的岩石棉、矿渣棉、膨胀珍珠岩、膨胀蛭石等矿物绝缘材料及其制品的制造，但不包括石棉隔热、隔音材料的制造', '303', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(343, '3039', '其他建筑材料制造', '', '303', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(344, '3041', '平板玻璃制造', '指用浮法、垂直引上法、压延法等生产平板玻璃原片的活动', '304', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(345, '3049', '其他玻璃制造', '指未列明的玻璃制造', '304', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(346, '3051', '技术玻璃制品制造', '指用于建筑、工业生产的技术玻璃制品的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(347, '3052', '光学玻璃制造', '指用于放大镜、显微镜、光学仪器等方面的光学玻璃，日用光学玻璃，钟表用玻璃或类似玻璃，光学玻璃眼镜毛坯的制造，以及未进行光学加工的光学玻璃元件的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(348, '3053', '玻璃仪器制造', '指实验室、医疗卫生用各种玻璃仪器和玻璃器皿以及玻璃管的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(349, '3054', '日用玻璃制品制造', '指餐厅、厨房、卫生间、室内装饰及其它生活用玻璃制品的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(350, '3055', '玻璃包装容器制造', '指主要用于产品包装的各种玻璃容器的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(351, '3056', '玻璃保温容器制造', '指玻璃保温瓶和其他个人或家庭用玻璃保温容器的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(352, '3057', '制镜及类似品加工', '指以平板玻璃为材料，经对其进行镀银、镀铝，或冷、热加工后成型的镜子及类似制品的制造', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(353, '3059', '其他玻璃制品制造', '', '305', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(354, '3061', '玻璃纤维及制品制造', '', '306', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(355, '3062', '玻璃纤维增强塑料制品制造', '也称玻璃钢，指用玻璃纤维增强热固性树脂生产塑料制品的活动', '306', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(356, '3071', '卫生陶瓷制品制造', '指卫生和清洁盥洗用的陶瓷用具的生产活动', '307', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(357, '3072', '特种陶瓷制品制造', '指专为工业、农业、实验室等领域的各种特定用途和要求，采用特殊生产工艺制造陶瓷制品的生产活动', '307', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(358, '3073', '日用陶瓷制品制造', '指以粘土、瓷石、长石、石英等为原料，经破碎、制泥、成型、烧炼等工艺制成，主要供日常生活用的各种瓷器、炻器、陶器等陶瓷制品的制造', '307', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(359, '3079', '园林、陈设艺术及其他陶瓷制品制造', '指以石英、长石、瓷土等为原料，经制胎、施釉、装饰、烧成等工艺制成的，具有艺术造型或花纹、图案等，主要供陈设、观赏或装饰用的纯艺术欣赏陶瓷制品和以欣赏为主的陶瓷陈列品、实用品的制造，以及其他未列明的陶瓷制品的制造', '307', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(360, '3081', '石棉制品制造', '指以石棉或其他矿物纤维素为基础，制造摩擦制品、石棉纺织制品、石棉橡胶制品、石棉保温隔热材料制品的生产活动', '308', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(361, '3082', '云母制品制造', '', '308', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(362, '3089', '耐火陶瓷制品及其他耐火材料制造', '指用硅质、粘土质、高铝质等石粉成形的陶瓷隔热制品的制造', '308', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(363, '3091', '石墨及碳素制品制造', '指以炭、石墨材料加工的特种石墨制品、碳素制品、异形制品，以及用树脂和各种有机物浸渍加工而成的碳素异形产品的制造', '309', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(364, '3099', '其他非金属矿物制品制造', '', '309', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(365, '3110', '炼铁', '指用高炉法、直接还原法、熔融还原法等，将铁从矿石等含铁化合物中还原出来的生产活动', '311', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(366, '3120', '炼钢', '指利用不同来源的氧（如空气、氧气）来氧化炉料（主要是生铁）所含杂质的金属提纯活动', '312', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(367, '3130', '黑色金属铸造', '指铸铁件、铸钢件等各种成品、半成品的制造 ', '313', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(368, '3140', '钢压延加工', '指通过热轧、冷加工、锻压和挤压等塑性加工使连铸坯、钢锭产生塑性变形，制成具有一定形状尺寸的钢材产品的生产活动', '314', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(369, '3150', '铁合金冶炼', '指铁与其他一种或一种以上的金属或非金属元素组成的合金生产活动', '315', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(370, '3211', '铜冶炼', '指对铜精矿等矿山原料、废杂铜料进行熔炼、精炼、电解等提炼铜的生产活动', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(371, '3212', '铅锌冶炼', '', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(372, '3213', '镍钴冶炼', '', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(373, '3214', '锡冶炼', '', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(374, '3215', '锑冶炼', '', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(375, '3216', '铝冶炼', '指对铝矿山原料通过冶炼、电解、铸型，以及对废杂铝料进行熔炼等提炼铝的生产活动', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(376, '3217', '镁冶炼', '', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(377, '3219', '其他常用有色金属冶炼', '', '321', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(378, '3221', '金冶炼', '指用金精（块）矿、阳极泥（冶炼其他有色金属时回收的阳极泥含金）、废杂金提炼黄金的生产活动', '322', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(379, '3222', '银冶炼', '指用银精（块）矿、阳极泥（冶炼其他有色金属时回收的阳极泥含银）、废杂银提炼白银的生产活动', '322', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(380, '3229', '其他贵金属冶炼', '', '322', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(381, '3231', '钨钼冶炼', '', '323', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(382, '3232', '稀土金属冶炼', '', '323', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(383, '3239', '其他稀有金属冶炼', '', '323', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(384, '3240', '有色金属合金制造', '指以有色金属为基体，加入一种或几种其他元素所构成的合金生产活动', '324', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(385, '3250', '有色金属铸造', '指有色金属及其合金铸造的各种成品、半成品的制造 ', '325', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(386, '3261', '铜压延加工', '指铜及铜合金的压延加工生产活动', '326', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(387, '3262', '铝压延加工', '指铝及铝合金的压延加工生产活动', '326', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(388, '3263', '贵金属压延加工', '指对金、银及铂族等贵金属，进行轧制、拉制或挤压加工的生产活动', '326', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(389, '3264', '稀有稀土金属压延加工', '指对钨、钼、钽等稀有金属材的加工', '326', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(390, '3269', '其他有色金属压延加工', '', '326', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(391, '3311', '金属结构制造', '指以铁、钢或铝等金属为主要材料，制造金属构件、金属构件零件、建筑用钢制品及类似品的生产活动，这些制品可以运输，并便于装配、安装或竖立', '331', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(392, '3312', '金属门窗制造', '指用金属材料（铝合金或其他金属）制作建筑物用门窗及类似品的生产活动', '331', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(393, '3321', '切削工具制造', '指手工或机床用可互换的切削工具的制造', '332', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(394, '3322', '手工具制造', '指在生产和日常生活中，进行装配、安装、维修时使用的手工工具的制造', '332', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(395, '3323', '农用及园林用金属工具制造', '指主要用于农牧业生产的小农具，园艺或林业作业用金属工具的制造', '332', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(396, '3324', '刀剪及类似日用金属工具制造', '指日常生活用刀剪、刀具、指甲钳等类似金属工具的制造', '332', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(397, '3329', '其他金属工具制造', '指上述类别未包括的用于各种用途的金属工具的制造', '332', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(398, '3331', '集装箱制造', '指专门设计，可长期反复使用，不用换箱内货物，便可从一种运输方式转移到另一种运输方式的放置货物的钢质箱体（其容积大于1m3）的生产活动', '333', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(399, '3332', '金属压力容器制造', '指用于存装压缩气体、液化气体及其他具有一定压力的液体物质的金属容器（不论其是否配有顶盖、塞子，或衬有除铁、钢、铝以外的材料）的制造', '333', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(400, '3333', '金属包装容器制造', '指主要为商品运输或包装而制作的金属包装容器及附件的制造', '333', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(401, '3340', '金属丝绳及其制品制造', '', '334', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(402, '3351', '建筑、家具用金属配件制造', '指用于建筑物、家具、交通工具或其他场所和用具的金属装置、锁及其金属配件的制造', '335', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(403, '3352', '建筑装饰及水暖管道零件制造', '指用于建筑方面的金属装饰材料，以及建筑工程对中性介质（如水、油、蒸汽、空气、煤气等没有腐蚀性的气体和液体物质）在低压下进行工作的设备和管道上所使用的金属附件的制造', '335', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(404, '3353', '安全、消防用金属制品制造', '指安全、消防用金属保险柜、保险箱、消防梯等金属制品的制造', '335', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(405, '3359', '其他建筑、安全用金属制品制造', '', '335', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(406, '3360', '金属表面处理及热处理加工', '指对外来的金属物件表面进行的电镀、镀层、抛光、喷涂、着色等专业性作业加工', '336', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(407, '3371', '生产专用搪瓷制品制造', '指专为工业生产设备、工业产品及家电配套的各种搪瓷制品的制造', '337', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(408, '3372', '建筑装饰搪瓷制品制造', '指用于建筑及其装饰方面的搪瓷制品和搪瓷制建筑材料的制造', '337', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(409, '3373', '搪瓷卫生洁具制造', '指卫生用和清洁盥洗用搪瓷用具的生产活动', '337', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(410, '3379', '搪瓷日用品及其他搪瓷制品制造', '指金属薄板经过成型、搪烧制成的日用品及其他搪瓷制品的制造', '337', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(411, '3381', '金属制厨房用器具制造', '指厨房烹制、调理用各种金属器具、用具的生产活动', '338', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(412, '3382', '金属制餐具和器皿制造', '', '338', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(413, '3383', '金属制卫生器具制造', '指卫生用和清洁盥洗用的各种金属器具、用具的生产活动', '338', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(414, '3389', '其他金属制日用品制造', '', '338', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(415, '3391', '锻件及粉末冶金制品制造', '指通过对金属坯料进行锻造变形而得到的工件或毛坯，或者将金属粉末和与非金属粉末的混合物通过压制变形、烘焙制作制品和材料的活动，包括自由锻件、模锻件、特殊成形锻件、冷锻件、温锻件、粉末冶金件等的制造', '339', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(416, '3392', '交通及公共管理用金属标牌制造', '', '339', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(417, '3399', '其他未列明金属制品制造', '指其他上述未包括的金属制品的制造；本类别还包括武器弹药的制造', '339', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(418, '3411', '锅炉及辅助设备制造', '指各种蒸汽锅炉、汽化锅炉，以及除同位素分离器以外的各种核反应堆的制造', '341', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(419, '3412', '内燃机及配件制造', '指用于移动或固定用途的往复式、旋转式、火花点火式或压燃式内燃机及配件的制造，但不包括飞机、汽车和摩托车发动机的制造', '341', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(420, '3413', '汽轮机及辅机制造', '指汽轮机和燃气轮机（蒸汽涡轮机）的制造', '341', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(421, '3414', '水轮机及辅机制造', '', '341', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(422, '3415', '风能原动设备制造', '指风能发电设备及其他风能原动设备制造', '341', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(423, '3419', '其他原动设备制造', '', '341', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(424, '3421', '金属切削机床制造', '指用于加工金属的各种切削加工机床的制造', '342', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(425, '3422', '金属成形机床制造', '指以锻压、锤击和模压方式加工金属的机床，或以弯曲、折叠、矫直、剪切、冲压、开槽、拉丝等方式加工金属的机床的制造', '342', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(426, '3423', '铸造机械制造', '指金属铸件（机械零件毛坯件）铸造用专用设备及其专门配套件的制造，普通铸造设备、制芯设备、砂处理设备、清理设备和特种铸造设备等制造', '342', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(427, '3424', '金属切割及焊接设备制造', '指将电能及其他形式的能量转换为切割、焊接能量对金属进行切割、焊接设备的制造', '342', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(428, '3425', '机床附件制造', '指扩大机床加工性能和使用范围的附属装置的制造', '342', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(429, '3429', '其他金属加工机械制造', '', '342', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(430, '3431', '轻小型起重设备制造', '指结构轻巧、动作简单、可在狭小场地升降或移动重物的简易起重设备及器具的制造；包括起重滑车、手动葫芦、电动葫芦、普通卷扬机、千斤顶、汽车举升机、单轨小车等制造', '343', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(431, '3432', '起重机制造', '指具有起升、变幅或回转、行走等主要工作机构的各种起重机及其专门配套件的制造', '343', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(432, '3433', '生产专用车辆制造', '指用于生产企业内部，进行装卸、堆跺或短距离搬运、牵引、顶推等作业的无轨车辆及其专门配套件的制造；包括电动叉车、内燃叉车、集装箱正面吊运机、短距离牵引车及固定平台搬运车、跨运车，以及手动搬运、堆跺车等的制造', '343', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(433, '3434', '连续搬运设备制造', '指在同一方向上，按照规定的线路连续或间歇地运送或装卸散状物料和成件物品的搬运设备及其专门配套件的制造；包括输送机械、装卸机械、给料机械等三类产品及其专门配套件的制造', '343', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(434, '3435', '电梯、自动扶梯及升降机制造', '指各种电梯、自动扶梯及自动人行道、升降机及其专门配套件的制造', '343', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(435, '3439', '其他物料搬运设备制造', '指除上述以外的其他物料搬运设备及其专门配套件的制造', '343', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(436, '3441', '泵及真空设备制造', '指用以输送各种液体、液固混合体、液气混合体及其增压、循环、真空等用途的设备制造', '344', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(437, '3442', '气体压缩机械制造', '指对气体进行压缩，使其压力提高到340kPa以上的压缩机械的制造', '344', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(438, '3443', '阀门和旋塞制造', '指通过改变其流道面积的大小，用以控制流体流量、压力和流向的装置制造', '344', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(439, '3444', '液压和气压动力机械及元件制造', '指以液体（或气体）为工作介质，靠液体静压力（或气压动力）来传送能量的装置制造', '344', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(440, '3451', '轴承制造', '指各种轴承及轴承零件的制造', '345', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(441, '3452', '齿轮及齿轮减、变速箱制造', '指用于传递动力和转速的齿轮和齿轮减(增）速箱（机、器）、齿轮变速箱的制造；不包括汽车变速箱等的制造', '345', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(442, '3459', '其他传动部件制造', '指除齿轮及齿轮减、变速箱以外的其他相关传动装置制造；包括链传动、带传动、离合器、联轴节、制动器、平衡系统及其配套件制造', '345', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(443, '3461', '烘炉、熔炉及电炉制造', '指使用液体燃料、粉状固体燃料（焚化炉）或气体燃料，进行煅烧、熔化或其他热处理用的非电力熔炉、窑炉和烘炉等燃烧器的制造，以及工业或实验室用电炉及零件的制造', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(444, '3462', '风机、风扇制造', '指用来输送各种气体，以及气体增压、循环、通风换气、排尘等设备的制造', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(445, '3463', '气体、液体分离及纯净设备制造', '指气体和液体的提纯、分离、液化、过滤、净化等设备的制造', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(446, '3464', '制冷、空调设备制造', '指用于专业生产、商业经营等方面的制冷设备和空调设备的制造，但不包括家用空调设备的制造', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(447, '3465', '风动和电动工具制造', '指带有电动机、非电力发动机或风动装置的手工操作加工工具的制造', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(448, '3466', '喷枪及类似器具制造 ', '', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(449, '3467', '衡器制造', '指用来测定物质重量的各种机械、电子或机电结合的装置或设备的生产活动', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(450, '3468', '包装专用设备制造', '指对瓶、桶、箱、袋或其他容器的洗涤、干燥、装填、密封和贴标签等专用包装机械的制造', '346', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(451, '3471', '电影机械制造', '指各种类型或用途的电影摄影机、电影录音摄影机、影像放映机及电影辅助器材和配件的制造', '347', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(452, '3472', '幻灯及投影设备制造', '指通过媒体将在电子成像器件上的文字图像、胶片上的文字图像、纸张上的文字图像及实物投射到银幕上的各种设备、器材及零配件的制造', '347', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(453, '3473', '照相机及器材制造', '指各种类型或用途的照相机的制造；包括用以制备印刷板，用于水下或空中照相的照相机制造，以及照相机用闪光装置、摄影暗室装置和零件的制造', '347', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(454, '3474', '复印和胶印设备制造', '指各种用途的复印设备和集复印、打印、扫描、传真为一体的多功能一体机的制造；以及主要用于办公室的胶印设备、文字处理设备及零件的制造', '347', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(455, '3475', '计算器及货币专用设备制造', '指金融、商业、交通及办公等使用的电子计算器、具有计算功能的数据记录、重现和显示机器的制造；以及货币专用设备及类似机械的制造', '347', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(456, '3479', '其他文化、办公用机械制造', '', '347', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(457, '3481', '金属密封件制造', '指以金属为原料制作密封件的生产活动', '348', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(458, '3482', '紧固件制造', '', '348', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(459, '3483', '弹簧制造', '', '348', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(460, '3484', '机械零部件加工', '指对专用和通用机械零部件的加工', '348', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(461, '3489', '其他通用零部件制造', '', '348', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(462, '3490', '其他通用设备制造业', '', '349', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(463, '3511', '矿山机械制造', '指用于各种固体矿物及石料的开采和洗选的机械设备及其专门配套设备的制造；包括建井设备，采掘、凿岩设备，矿山提升设备，矿物破碎、粉磨设备，矿物筛分、洗选设备，矿用牵引车及矿车等产品及其专用配套件的制造', '351', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(464, '3512', '石油钻采专用设备制造', '指对陆地和海洋的石油、天然气等专用开采设备的制造；不包括海上石油、天然气勘探开采平台及相关漂浮设备的制造', '351', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(465, '3513', '建筑工程用机械制造', '指建筑施工及市政公共工程用机械的制造', '351', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(466, '3514', '海洋工程专用设备制造', '指海上工程、海底工程、近海工程的专用设备制造，不含港口工程设备以及船舶、潜水、救捞等设备制造', '351', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(467, '3515', '建筑材料生产专用机械制造', '指生产水泥、水泥制品、玻璃及玻璃纤维、建筑陶瓷、砖瓦等建筑材料所使用的各种生产、搅拌成型机械的制造', '351', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(468, '3516', '冶金专用设备制造', '指金属冶炼、锭坯铸造、轧制及其专用配套设备等生产专用设备的制造', '351', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(469, '3521', '炼油、化工生产专用设备制造', '指炼油、化学工业生产专用设备的制造，但不包括包装机械等通用设备的制造', '352', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(470, '3522', '橡胶加工专用设备制造', '指加工橡胶，或以橡胶为材料生产橡胶制品的专用机械制造', '352', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(471, '3523', '塑料加工专用设备制造', '指塑料加工工业中所使用的各类专用机械和装置的制造', '352', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(472, '3524', '木材加工机械制造', '指加工木材、木质板材及木制品的生产专用机械的制造，包括人造板成套设备及非木质人造板成套设备制造、人造板二次加工成套设备制造', '352', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(473, '3525', '模具制造', '指金属铸造用模具、矿物材料用模具、橡胶或塑料用模具及其他用途的模具的制造', '352', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(474, '3529', '其他非金属加工专用设备制造', '', '352', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(475, '3531', '食品、酒、饮料及茶生产专用设备制造', '指主要用于食品、酒、饮料生产及茶制品加工等专用设备的制造', '353', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(476, '3532', '农副食品加工专用设备制造', '指对谷物、干豆类等农作物的筛选、碾磨、储存等专用机械，糖料和油料作物加工机械，畜禽屠宰、水产品加工及盐加工机械的制造', '353', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(477, '3533', '烟草生产专用设备制造', '', '353', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(478, '3534', '饲料生产专用设备制造', '', '353', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(479, '3541', '制浆和造纸专用设备制造', '指在制浆、造纸、纸加工及纸制品的生产过程中所用的各类机械和设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(480, '3542', '印刷专用设备制造', '指使用印刷或其他方式将图文信息转移到承印物上的专用生产设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(481, '3543', '日用化工专用设备制造', '指日用化学工业产品，如洗涤用品、口腔清洁用品、化妆品、香精、香料、动物胶、感光材料及其他日用化学制品专用生产设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(482, '3544', '制药专用设备制造', '指化学原料药和药剂、中药饮片及中成药专用生产设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(483, '3545', '照明器具生产专用设备制造', '指用于生产各种电灯泡、荧光灯管等电光源和各种照明器具产品专用生产设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(484, '3546', '玻璃、陶瓷和搪瓷制品生产专用设备制造', '指用于生产加工玻璃制品、玻璃器皿的专用机械，陶瓷器等类似产品的加工机床和生产专用机械，以及搪瓷制品生产设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(485, '3549', '其他日用品生产专用设备制造', '指上述未列明的日用品、工艺美术品的生产专用机械设备的制造', '354', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(486, '3551', '纺织专用设备制造', '指纺织纤维预处理、纺纱、织造和针织机械的制造', '355', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(487, '3552', '皮革、毛皮及其制品加工专用设备制造', '指在制革、毛皮鞣制及其制品的加工生产过程中所使用的各种专用设备的制造', '355', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(488, '3553', '缝制机械制造', '指用于服装、鞋帽、箱包等制作的专用缝纫机械制造，以及生产加工各种面料服装、鞋帽所包括的铺布、裁剪、整烫、输送管理等机械和羽绒加工设备的制造', '355', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(489, '3554', '洗涤机械制造', '指洗衣店等专业洗衣机械的制造；不包括家用洗衣机的制造', '355', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(490, '3561', '电工机械专用设备制造', '指电机、电线、电缆等电站、电工专用机械及器材的生产设备的制造', '356', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(491, '3562', '电子工业专用设备制造', '指生产半导体器件、集成电路、电子元件、电真空器件专用设备的制造，以及电子设备整机装配专用设备的制造', '356', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(492, '3571', '拖拉机制造', '', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(493, '3572', '机械化农业及园艺机具制造', '指用于土壤处理，作物种植或施肥，种植物收割的农业、园艺或其他机械的制造', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(494, '3573', '营林及木竹采伐机械制造', '', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(495, '3574', '畜牧机械制造', '指草原建设、管理，畜禽养殖及畜禽产品采集等专用机械的制造', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(496, '3575', '渔业机械制造', '指渔业养殖、渔业捕捞等专用设备的制造', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(497, '3576', '农林牧渔机械配件制造', '指拖拉机配件和其他农林牧渔机械配件的制造', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(498, '3577', '棉花加工机械制造', '指棉花加工专用机械制造，棉花加工成套设备的制造和安装', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(499, '3579', '其他农、林、牧、渔业机械制造', '指用于农产品初加工机械，以及其他未列明的农、林、牧、渔业机械的制造', '357', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(500, '3581', '医疗诊断、监护及治疗设备制造', '指用于内科、外科、眼科、妇产科、中医等医疗专用诊断、监护、治疗等方面的设备制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(501, '3582', '口腔科用设备及器具制造', '指用于口腔治疗、修补设备及器械的制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(502, '3583', '医疗实验室及医用消毒设备和器具制造', '指医疗实验室或医疗用消毒、灭菌设备及器具的制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(503, '3584', '医疗、外科及兽医用器械制造', '指各种手术室、急救室、诊疗室等医疗专用及兽医用手术器械、医疗诊断用品和医疗用具的制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(504, '3585', '机械治疗及病房护理设备制造', '指各种治疗设备、病房护理及康复专用设备的制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(505, '3586', '假肢、人工器官及植（介）入器械制造', '指外科、牙科等医疗专用及兽医用假肢、人工器官、植入器械的制造，还包括矫形器具的制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(506, '3589', '其他医疗设备及器械制造', '指外科、牙科等医疗专用及兽医用家具器械的制造，以及其他未列明的医疗设备及器械的制造', '358', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(507, '3591', '环境保护专用设备制造', '指环境污染防治、废旧物品加工，以及工业材料回收专用设备的制造', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(508, '3592', '地质勘查专用设备制造', '指地质勘查（勘探）专用设备的制造；不包括通用钻采、挖掘机械的制造', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(509, '3593', '邮政专用机械及器材制造', '', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(510, '3594', '商业、饮食、服务专用设备制造', '', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(511, '3595', '社会公共安全设备及器材制造', '指公安、消防、安全等社会公共安全设备及器材的制造和加工', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(512, '3596', '交通安全、管制及类似专用设备制造', '指除铁路运输以外的道路运输、水上运输及航空运输等有关的管理、安全、控制专用设备的制造；不包括电气照明设备、信号设备的制造', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(513, '3597', '水资源专用机械制造', '指水利工程管理、节水工程及水的生产、供应专用设备的制造', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(514, '3599', '其他专用设备制造', '指上述类别中未列明的其他专用设备的制造，包括同位素设备的制造', '359', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(515, '3610', '汽车整车制造', '指由动力装置驱动，具有四个以上车轮的非轨道、无架线的车辆，并主要用于载送人员和（或）货物，牵引输送人员和（或）货物的车辆制造，还包括汽车发动机的制造', '361', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(516, '3620', '改装汽车制造', '指利用外购汽车底盘改装各类汽车的制造', '362', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(517, '3630', '低速载货汽车制造', '指最高时速限制在规定范围内的农用三轮或四轮等载货汽车的制造', '363', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(518, '3640', '电车制造', '指以电作为动力，以屏板或可控硅方式控制的城市内交通工具和专用交通工具的制造', '364', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(519, '3650', '汽车车身、挂车制造', '指其设计和技术特性需由汽车牵引，才能正常行驶的一种无动力的道路车辆的制造', '365', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(520, '3660', '汽车零部件及配件制造', '指机动车辆及其车身的各种零配件的制造', '366', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(521, '3711', '铁路机车车辆及动车组制造', '指以外来电源或以蓄电池驱动的，或以压燃式发动机及其他方式驱动的，能够牵引铁路车辆的动力机车、铁路动车组的制造，以及用于运送旅客和用以装运货物的客车、货车及其他铁路专用车辆的制造', '371', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1);
INSERT INTO `sys_trade` (`id`, `code`, `name`, `descrition`, `pcode`, `createTime`, `updateTime`, `vision`) VALUES
(522, '3712', '窄轨机车车辆制造', '指可用于交通运输的窄轨内燃机车、电力机车和窄轨非机动车的制造', '371', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(523, '3713', '铁路机车车辆配件制造', '指铁道或有轨机车及其拖拽车辆的专用零配件的制造', '371', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(524, '3714', '铁路专用设备及器材、配件制造', '指铁路安全或交通控制设备的制造，以及其他铁路专用设备及器材、配件的制造', '371', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(525, '3719', '其他铁路运输设备制造', '', '371', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(526, '3720', '城市轨道交通设备制造', '', '372', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(527, '3731', '金属船舶制造', '指以钢质、铝质等各种金属为主要材料，为民用或军事部门建造远洋、近海或内陆河湖的金属船舶的制造', '373', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(528, '3732', '非金属船舶制造', '指以各种木材、水泥、玻璃钢等非金属材料，为民用或军事部门建造船舶的活动', '373', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(529, '3733', '娱乐船和运动船制造', '指游艇和用于娱乐或运动的其他船只的制造', '373', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(530, '3734', '船用配套设备制造', '指船用主机、辅机设备的制造', '373', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(531, '3735', '船舶改装与拆除', '', '373', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(532, '3739', '航标器材及其他相关装置制造', '指用于航标的各种器材，以及不以航行为主的船只的制造，不含海上浮动装置的制造', '373', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(533, '3741', '飞机制造', '指在大气同温层以内飞行的用于运货或载客，用于国防，以及用于体育运动或其他用途的各种飞机及其零件的制造，包括飞机发动机的制造', '374', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(534, '3742', '航天器制造', '', '374', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(535, '3743', '航空、航天相关设备制造', '', '374', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(536, '3749', '其他航空航天器制造', '', '374', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(537, '3751', '摩托车整车制造', '指不论是否装有边斗的摩托车制造，包括摩托车发动机的制造', '375', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(538, '3752', '摩托车零部件及配件制造', '', '375', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(539, '3761', '脚踏自行车及残疾人座车制造', '指未装马达，主要以脚蹬驱动，装有一个或多个轮子的脚踏车辆、残疾人座车及其零件的制造', '376', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(540, '3762', '助动自行车制造', '指主要以蓄电池作为辅助能源，具有两个车轮，能实现人力骑行、电动或电动助力功能的特种自行车及其零件的制造', '376', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(541, '3770', '非公路休闲车及零配件制造', '指运动休闲车（不含跑车、山地车和越野车）、四轮休闲车、草地车、观光车等的制造', '377', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(542, '3791', '潜水及水下救捞装备制造', '指潜水装置及水下作业、救捞装备的制造', '379', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(543, '3799', '其他未列明运输设备制造', '指手推车辆、牲畜牵引车辆的制造，以及上述未列明的交通运输设备的制造', '379', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(544, '3811', '发电机及发电机组制造', '指发电机及其辅助装置、发电成套设备的制造', '381', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(545, '3812', '电动机制造', '指交流或直流电动机及零件的制造', '381', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(546, '3819', '微电机及其他电机制造', '指自动化系统中一种主要用于传递和交换信号等方面的元件，即控制微电机的制造，以及其他未列明的电机制造', '381', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(547, '3821', '变压器、整流器和电感器制造', '指变压器、静止式变流器等电力电子设备和互感器的制造', '382', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(548, '3822', '电容器及其配套设备制造', '指电力电容器及其配套装置和电容器零件的制造', '382', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(549, '3823', '配电开关控制设备制造', '指用于电压超过1000V的，诸如一般在配电系统中使用的接通及断开或保护电路的电器，以及用于电压不超过1000V的，如在住房、工业设备或家用电器中使用的配电开关控制设备及其零件的制造', '382', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(550, '3824', '电力电子元器件制造', '指用于电能变换和控制（从而实现运动控制）的电子元器件的制造', '382', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(551, '3825', '光伏设备及元器件制造', '指太阳能组件（太阳能电池）、控制设备及其他太阳能设备和元器件制造；不包括太阳能用蓄电池制造', '382', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(552, '3829', '其他输配电及控制设备制造', '指开关设备和控制设备内部的元器件之间，以及与外部电路之间的电连接所需用的器件和配件的制造', '382', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(553, '3831', '电线、电缆制造', '指在电力输配、电能传送，声音、文字、图像等信息传播，以及照明等各方面所使用的电线电缆的制造', '383', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(554, '3832', '光纤、光缆制造', '指将电的信号变成光的信号，进行声音、文字、图像等信息传输的光缆、光纤的制造', '383', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(555, '3833', '绝缘制品制造', '指电气绝缘子、电机或电气设备用的绝缘零件，以及带有绝缘材料的金属制电导管及接头的制造，但不包括玻璃、陶瓷绝缘体和绝缘漆制品的制造', '383', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(556, '3839', '其他电工器材制造', '', '383', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(558, '3841', '锂离子电池制造', '指以锂离子嵌入化合物为正极材料电池的制造', '384', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(559, '3842', '镍氢电池制造', '以储氢合金为负极材料，氢氧化镍为正极材料，电解液是含氢氧化锂（LiOH）的氢氧化钾（KOH）水溶液的电池的制造', '384', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(560, '3849', '其他电池制造', '', '384', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(561, '3851', '家用制冷电器具制造', '', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(562, '3852', '家用空气调节器制造', '指使用交流电源(制冷量14000W及以下)，调节室内温度、湿度、气流速度和空气洁净度的房间空气调节器的制造', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(563, '3853', '家用通风电器具制造', '指由单相交流电动机驱动扇叶旋转，产生强制气流，以改善人体与周围空气间的热交换条件的电器制造', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(564, '3854', '家用厨房电器具制造', '指家庭厨房用的电热蒸煮器具、电热烘烤器具、电热水和饮料加热器具、电热煎炒器具、家用电灶、家用食品加工电器具、家用厨房电清洁器具等电器具的制造', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(565, '3855', '家用清洁卫生电器具制造', '指家用洗衣机、吸尘器等电力器具的制造', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(566, '3856', '家用美容、保健电器具制造', '', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(567, '3857', '家用电力器具专用配件制造', '指家用电力器具专用配件的制造，不包括通用零部件制造', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(568, '3859', '其他家用电力器具制造', '', '385', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(569, '3861', '燃气、太阳能及类似能源家用器具制造', '指以液化气、天然气、人工煤气、沼气或太阳能作燃料，以马口铁、搪瓷、不锈钢等为材料加工制成的家用器具的生产活动', '386', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(570, '3869', '其他非电力家用器具制造', '', '386', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(571, '3871', '电光源制造', '电光源也称灯泡或电灯，本类是指将电能转变为光的器件的制造；目前按发光原理可分为白炽灯（指因电流通过使钨丝白炽而发光的灯）和气体放电灯（指电流通过灯两端的电极形成气体放电而产生光的灯）', '387', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(572, '3872', '照明灯具制造', '指由起支撑、固定反射和保护作用的部件及联结光源所必须的电路辅助装置组合而成，将一个或多个光源发出的光进行控制分配或反射装置的制造；包括建筑物照明、道路照明、运输设备照明、生产照明、舞台照明等各种灯具的制造', '387', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(573, '3879', '灯用电器附件及其他照明器具制造', '指灯用电器附件，以及为各种灯泡配套用的灯座及其他照明器具的制造', '387', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(574, '3891', '电气信号设备装置制造', '指交通运输工具（如机动车、船舶、铁道车辆等）专用信号装置及各种电气音响或视觉报警、警告、指示装置的制造，以及其他电气声像信号装置的制造', '389', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(575, '3899', '其他未列明电气机械及器材制造', '指上述未列明的电气机械及器材的制造', '389', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(576, '3911', '计算机整机制造', '指将可进行算术或逻辑运算的中央处理器和外围设备集成计算整机的制造，也包括硬件与软件集成计算机系统的制造，还包括来件组装计算机的加工', '391', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(577, '3912', '计算机零部件制造', '指组成电子计算机的内存、板卡、硬盘、电源、机箱、显示器等部件的制造', '391', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(578, '3913', '计算机外围设备制造', '指计算机外围设备及附属设备的制造；包括输入设备、输出设备和外存储设备等的制造', '391', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(579, '3919', '其他计算机制造', '指计算机应用电子设备（以中央处理器为核心，配以专业功能模块、外围设备等构成各行业应用领域专用的电子产品及设备，如金融电子、汽车电子、医疗电子、工业控制计算机及装置、信息采集及识别设备、数字化3C产品等）、信息安全设备（用于保护网络和计算机中信息和数据安全的专用设备，包括边界安全、通信安全、身份鉴别与访问控制、数据安全、基础平台、内容安全、评估审计与监控、安全应用设备等），以及其他未列明计算机设备的制造', '391', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(580, '3921', '通信系统设备制造', '指固定或移动通信接入、传输、交换设备等通信系统建设所需设备的制造', '392', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(581, '3922', '通信终端设备制造', '指固定或移动通信终端设备的制造', '392', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(582, '3931', '广播电视节目制作及发射设备制造', '指广播电视节目制作、发射设备及器材的制造', '393', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(583, '3932', '广播电视接收设备及器材制造', '指专业广播电视接收设备、专业用录音录像重放、音响设备及其他配套的广播电视设备的制造，但不包括家用广播电视接收设备及装置的制造', '393', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(584, '3939', '应用电视设备及其他广播电视设备制造', '指应用电视设备、其他广播电视设备和器材的制造', '393', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(585, '3940', '雷达及配套设备制造', '指雷达整机及雷达配套产品的制造', '394', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(586, '3951', '电视机制造', '指非专业用电视机制造', '395', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(587, '3952', '音响设备制造', '指非专业用无线电收音机、收录音机、唱机等音响设备的制造', '395', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(588, '3953', '影视录放设备制造', '指非专业用录像机、摄像机、激光视盘机等影视设备整机及零部件的制造，包括教学用影视设备的制造，但不包括广播电视等专业影视设备的制造', '395', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(589, '3961', '电子真空器件制造', '指电子热离子管、冷阴极管或光电阴极管及其他真空电子器件，以及电子管零件的制造', '396', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(590, '3962', '半导体分立器件制造', '', '396', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(591, '3963', '集成电路制造', '指单片集成电路、混合式集成电路的制造', '396', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(592, '3969', '光电子器件及其他电子器件制造', '指光电子器件、显示器件和组件，以及其他未列明的电子器件的制造', '396', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(593, '3971', '电子元件及组件制造', '指组装好的电子模压组件、微型组件或类似组件的制造', '397', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(594, '3972', '印制电路板制造', '指在绝缘板上通过常规或非常规的印刷工艺，使导电元件、触点或电感器件、电阻器和电容器等其他印刷元件组成的电路及专用元件的制造', '397', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(595, '3990', '其他电子设备制造', '指电子（气）物理设备及其他未列明的电子设备的制造', '399', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(596, '4011', '工业自动控制系统装置制造', '指用于连续或断续生产制造过程中，测量和控制生产制造过程的温度、压力、流量、物位等变量或者物体位置、倾斜、旋转等参数的工业用计算机控制系统、检测仪表、执行机构和装置的制造', '401', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(597, '4012', '电工仪器仪表制造', '指用于电压、电流、电阻、功率等电磁量的测量、计量、采集、监测、分析、处理、检验与控制用仪器仪表及系统装置的制造', '401', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(598, '4013', '绘图、计算及测量仪器制造', '指供设计、制图、绘图、计算、测量，以及学习或办公、教学等使用的测量和绘图用具、器具、精密天平及量仪的制造', '401', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(599, '4014', '实验分析仪器制造', '指利用物质的物理、化学、电学等性能对物质进行定性、定量分析和结构分析，以及湿度、粘度、质量、比重等性能测定所使用的仪器的制造；用于对各种物体在温度、湿度、光照、辐射等环境变化后适应能力的实验装置的制造；各种物体物化特性参数测量的仪器、实验装置及相关器具的制造', '401', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(600, '4015', '试验机制造', '指测试、评定和研究材料、零部件及其制成品的物理性能、机械（力学）性能、工艺性能、安全性能、舒适性能的实验仪器和设备的制造', '401', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(601, '4019', '供应用仪表及其他通用仪器制造', '指电、气、水、油和热等类似气体或液体的供应过程中使用的计量仪表、自动调节或控制仪器及装置，以及其他未列明的通用仪器仪表和仪表元器件的制造', '401', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(602, '4021', '环境监测专用仪器仪表制造', '指对环境中的污染物、噪声、放射性物质、电磁波等进行监测和监控的专用仪器仪表及系统装置的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(603, '4022', '运输设备及生产用计数仪表制造', '指汽车、船舶及工业生产用转数计、生产计数器、里程记录器及类似仪表的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(604, '4023', '导航、气象及海洋专用仪器制造', '指用于气象、海洋、水文、天文、航海、航空等方面的导航、制导、测量仪器和仪表及类似装置的制造 ', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(605, '4024', '农林牧渔专用仪器仪表制造', '指农、林、牧、渔生产专用仪器、仪表及类似装置的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(606, '4025', '地质勘探和地震专用仪器制造', '指地质勘探、钻采、地震等地球物理专用仪器、仪表及类似装置的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(607, '4026', '教学专用仪器制造', '指专供教学示范或展览，而无其他用途的专用仪器的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(608, '4027', '核子及核辐射测量仪器制造', '指专门用于核离子射线的测量或检验的仪器、装置，核辐射探测器等核专业用仪器仪表的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(609, '4028', '电子测量仪器制造 ', '指用电子技术实现对被测对象（电子产品）的电参数定量检测装置的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(610, '4029', '其他专用仪器制造', '指用于纺织、电站热工仪表等其他未列明的专用仪器的制造', '402', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(611, '4030', '钟表与计时仪器制造', '指各种钟、表、钟表机芯、时间记录装置、计时器的制造，还包括装有钟表机芯或同步马达，用以测量、记录或指示时间间隔的装置、定时开关，以及钟表零配件的制造', '403', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(612, '4041', '光学仪器制造', '指用玻璃或其他材料（如石英、萤石、塑料或金属）制作的光学配件、装配好的光学元件、组合式光学显微镜，以及军用望远镜等光学仪器的制造', '404', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(613, '4042', '眼镜制造', '指眼镜成镜、眼镜框架和零配件、眼镜镜片、角膜接触镜（隐形眼镜）及护理产品的制造', '404', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(614, '4090', '其他仪器仪表制造业', '指上述未列明的仪器、仪表的制造', '409', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(615, '4111', '鬃毛加工、制刷及清扫工具制造', '指用原毛加工成生产刷子类产品的成品毛的生产，或以成品毛和棕、金属丝、塑料丝等为原料加工制刷的生产，以及其他清扫工具的制造', '411', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(616, '4119', '其他日用杂品制造', '指制伞及其他未列明的各种日常生活用杂品的生产活动', '411', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(617, '4120', '煤制品制造', '指用烟煤、无烟煤、褐煤及其他各种煤炭制成的煤砖、煤球等固体燃料制品的活动', '412', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(618, '4130', '核辐射加工', '指核技术与同位素技术的应用，由核辐照站利用核技术对原有产品改良、改变性质并使其增值的加工活动', '413', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(619, '4190', '其他未列明制造业', '', '419', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(620, '4210', '金属废料和碎屑加工处理', '指从各种废料［包括固体废料、废水（液）、废气等］中回收，并使之便于转化为新的原材料，或适于进一步加工为金属原料的金属废料和碎屑的再加工处理活动，包括废旧电器、电子产品拆解回收', '421', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(621, '4220', '非金属废料和碎屑加工处理', '指从各种废料［包括固体废料、废水（液）、废气等］中回收，或经过分类，使其适于进一步加工为新原料的非金属废料和碎屑的再加工处理活动', '422', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(622, '4310', '金属制品修理', '', '431', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(623, '4320', '通用设备修理', '', '432', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(624, '4330', '专用设备修理', '', '433', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(625, '4341', '铁路运输设备修理', '不包括火车机车回厂修理和发动机修理活动', '434', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(626, '4342', '船舶修理', '不包括船舶回厂修复、发动机修理以及船舶拆除活动', '434', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(627, '4343', '航空航天器修理', '不包括航空航天器回厂修理和发动机修理活动', '434', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(628, '4349', '其他运输设备修理', '', '434', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(629, '4350', '电气设备修理', '', '435', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(630, '4360', '仪器仪表修理', '', '436', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(631, '4390', '其他机械和设备修理业', '', '439', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(632, '4411', '火力发电', '指利用煤炭、石油、天然气等燃料燃烧产生的热能，通过火电动力装置转换成电能的生产活动', '441', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(633, '4412', '水力发电', '指通过建设水电站将水能转换成电能的生产活动', '441', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(634, '4413', '核力发电', '指利用核反应堆中重核裂变所释放出的热能转换成电能的生产活动', '441', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(635, '4414', '风力发电', '', '441', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(636, '4415', '太阳能发电', '', '441', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(637, '4419', '其他电力生产', '指利用地热、潮汐能、温差能、波浪能、生物能及其他未列明的能源的发电活动', '441', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(638, '4420', '电力供应', '指利用电网出售给用户电能的输送与分配活动，以及供电局的供电活动', '442', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(639, '4430', '热力生产和供应', ' 指利用煤炭、油、燃气等能源，通过锅炉等装置生产蒸汽和热水，或外购蒸汽、热水进行供应销售、供热设施的维护和管理的活动', '443', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(640, '4500', '燃气生产和供应业', '指利用煤炭、油、燃气等能源生产燃气，或利用畜禽粪便和秸秆等农业、农村废弃物生产沼气，或外购液化石油气、天然气等燃气，并进行输配，向用户销售燃气的活动，以及对煤气、液化石油气、天然气输配及使用过程中的维修和管理活动', '450', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(641, '4610', '自来水生产和供应', '指将天然水（地下水、地表水）经过蓄集、净化达到生活饮用水或其他用水标准，并向居民家庭、企业和其他用户供应的活动', '461', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(642, '4620', '污水处理及其再生利用', '指对污水污泥的处理和处置，及净化后的再利用活动', '462', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(643, '4690', '其他水的处理、利用与分配', '指将海水淡化处理，达到可以使用标准的生产活动，以及对雨水、微咸水等类似水进行收集、处理和利用活动', '469', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(644, '4700', '房屋建筑业', '指房屋主体工程的施工活动；不包括主体工程施工前的工程准备活动', '470', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(645, '4811', '铁路工程建筑', '', '481', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(646, '4812', '公路工程建筑', '', '481', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(647, '4813', '市政道路工程建筑 ', '', '481', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(648, '4819', '其他道路、隧道和桥梁工程建筑 ', '', '481', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(649, '4821', '水源及供水设施工程建筑', '', '482', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(650, '4822', '河湖治理及防洪设施工程建筑', '', '482', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(651, '4823', '港口及航运设施工程建筑', '', '482', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(652, '4830', '海洋工程建筑', '指海上工程、海底工程、近海工程建筑活动，不含港口工程建筑活动', '483', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(653, '4840', '工矿工程建筑', '指除厂房外的矿山和工厂生产设施、设备的施工和安装', '484', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(654, '4851', '架线及设备工程建筑', '', '485', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(655, '4852', '管道工程建筑', '', '485', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(656, '4890', '其他土木工程建筑', '', '489', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(657, '4910', '电气安装', '指建筑物及土木工程构筑物内电气系统（含电力线路）的安装活动', '491', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(658, '4920', '管道和设备安装', '指管道、取暖及空调系统等的安装活动', '492', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(659, '4990', '其他建筑安装业', '', '499', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(660, '5010', '建筑装饰业', '指对建筑工程后期的装饰、装修和清理活动，以及对居室的装修活动', '501', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(661, '5021', '建筑物拆除活动', '', '502', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(662, '5029', '其他工程准备活动', '', '502', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(663, '5030', '提供施工设备服务', '指为建筑工程提供配有操作人员的施工设备的服务', '503', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(664, '5090', '其他未列明建筑业', '指上述未列明的其他工程建筑活动', '509', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(665, '5111', '谷物、豆及薯类批发', '', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(666, '5112', '种子批发', '', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(667, '5113', '饲料批发', '', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(668, '5114', '棉、麻批发', '', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(669, '5115', '林业产品批发', '指林木种苗、采伐产品及采集产品等的批发和进出口活动', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(670, '5116', '牲畜批发', '', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(671, '5119', '其他农牧产品批发', '', '511', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(672, '5121', '米、面制品及食用油批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(673, '5122', '糕点、糖果及糖批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(674, '5123', '果品、蔬菜批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(675, '5124', '肉、禽、蛋、奶及水产品批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(676, '5125', '盐及调味品批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(677, '5126', '营养和保健品批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(678, '5127', '酒、饮料及茶叶批发', '指可直接饮用或稀释、冲泡后饮用的饮料、酒及茶叶的批发和进出口活动', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(679, '5128', '烟草制品批发', '指经过加工、生产的烟草制品的批发和进出口活动', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(680, '5129', '其他食品批发', '', '512', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(681, '5131', '纺织品、针织品及原料批发', '', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(682, '5132', '服装批发', '', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(683, '5133', '鞋帽批发', '', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(684, '5134', '化妆品及卫生用品批发', '', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(685, '5135', '厨房、卫生间用具及日用杂货批发', '指灶具、炊具、厨具、餐具及各种容器、器皿等的批发和进出口活动；卫生间的用品用具和生活用清洁、清扫用品、用具等的批发和进出口活动', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(686, '5136', '灯具、装饰物品批发', '', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(687, '5137', '家用电器批发', '', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(688, '5139', '其他家庭用品批发', '指上述未列明的其他生活日用品的批发和进出口活动', '513', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(689, '5141', '文具用品批发', '', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(690, '5142', '体育用品及器材批发', '', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(691, '5143', '图书批发', '', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(692, '5144', '报刊批发', '', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(693, '5145', '音像制品及电子出版物批发', ' ', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(694, '5146', '首饰、工艺品及收藏品批发', '', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(695, '5149', '其他文化用品批发', '', '514', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(696, '5151', '西药批发', '', '515', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(697, '5152', '中药批发', '指中成药、中药材的批发和进出口活动', '515', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(698, '5153', '医疗用品及器材批发', '', '515', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(699, '5161', '煤炭及制品批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(700, '5162', '石油及制品批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(701, '5163', '非金属矿及制品批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(702, '5164', '金属及金属矿批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(703, '5165', '建材批发', '指建筑用材料和装饰装修材料的批发和进出口活动', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(704, '5166', '化肥批发', ' ', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(705, '5167', '农药批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(706, '5168', '农用薄膜批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(707, '5169', '其他化工产品批发', '', '516', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(708, '5171', '农业机械批发', '', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(709, '5172', '汽车批发', '', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(710, '5173', '汽车零配件批发', '', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(711, '5174', '摩托车及零配件批发', '', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(712, '5175', '五金产品批发', '指小五金、工具、水暖部件及材料的批发和进出口活动', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(713, '5176', '电气设备批发', '', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(714, '5177', '计算机、软件及辅助设备批发', ' ', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(715, '5178', '通讯及广播电视设备批发', '指电信设备、广播电视设备的批发和进出口活动', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(716, '5179', '其他机械设备及电子产品批发', '', '517', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(717, '5181', '贸易代理', '指不拥有货物的所有权，为实现供求双方达成交易，按协议收取佣金的贸易代理', '518', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(718, '5182', '拍卖 ', '', '518', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(719, '5189', '其他贸易经纪与代理', '', '518', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(720, '5191', '再生物资回收与批发', '指将可再生的废旧物资回收，并批发给制造企业作初级原料的活动', '519', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(721, '5199', '其他未列明批发业', '', '519', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(722, '5211', '百货零售', '指经营的商品品种较齐全，经营规模较大的综合零售活动', '521', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(723, '5212', '超级市场零售', '指经营食品、日用品等的超级市场的综合零售活动', '521', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(724, '5219', '其他综合零售', '指日用杂品综合零售活动；在街道、社区、乡镇、农村、工矿区、校区、交通要道口、车站、码头、机场等人口稠密地区开办的小型综合零售店的活动；以小超市形式开办的便利店活动；农村供销社的零售活动', '521', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(725, '5221', '粮油零售', '', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(726, '5222', '糕点、面包零售', ' ', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(727, '5223', '果品、蔬菜零售', '', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(728, '5224', '肉、禽、蛋、奶及水产品零售', '', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(729, '5225', '营养和保健品零售', '', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(730, '5226', '酒、饮料及茶叶零售', '指专门经营酒、茶叶及各种饮料的店铺零售活动', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(731, '5227', '烟草制品零售', ' ', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(732, '5229', '其他食品零售', '指上述未列明的店铺食品零售活动', '522', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(733, '5231', '纺织品及针织品零售', '', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(734, '5232', '服装零售', '', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(735, '5233', '鞋帽零售', '', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(736, '5234', '化妆品及卫生用品零售', '', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(737, '5235', '钟表、眼镜零售', ' ', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(738, '5236', '箱、包零售', '', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(739, '5237', '厨房用具及日用杂品零售', '指专门经营炊具、厨具、餐具、日用陶瓷、日用玻璃器皿、塑料器皿、清洁用具和用品的店铺零售活动，以及各种材质其他日用杂品的零售活动', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(740, '5238', '自行车零售', '', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(741, '5239', '其他日用品零售', '指专门经营小饰物、礼品花卉及其他未列明日用品的店铺零售活动', '523', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(742, '5241', '文具用品零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(743, '5242', '体育用品及器材零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(744, '5243', '图书、报刊零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(745, '5244', '音像制品及电子出版物零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(746, '5245', '珠宝首饰零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(747, '5246', '工艺美术品及收藏品零售', '指专门经营具有收藏价值和艺术价值的工艺品、艺术品、古玩、字画、邮品等的店铺零售活动', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(748, '5247', '乐器零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(749, '5248', '照相器材零售', '', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(750, '5249', '其他文化用品零售', '指专门经营游艺用品及其他未列明文化用品的店铺零售活动', '524', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(751, '5251', '药品零售', ' ', '525', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(752, '5252', '医疗用品及器材零售', '', '525', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(753, '5261', '汽车零售', '指乘用车的零售', '526', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(754, '5262', '汽车零配件零售', '', '526', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(755, '5263', '摩托车及零配件零售', '', '526', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(756, '5264', '机动车燃料零售', '指专门经营机动车燃料及相关产品（润滑油）的店铺零售活动', '526', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(757, '5271', '家用视听设备零售', '指专门经营电视、音响设备、摄录像设备等的店铺零售活动', '527', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(758, '5272', '日用家电设备零售', '指专门经营冰箱、洗衣机、空调、吸尘器及其他家用电器设备的店铺零售活动', '527', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(759, '5273', '计算机、软件及辅助设备零售', '', '527', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(760, '5274', '通信设备零售', '不包括专业通信设备的销售 ', '527', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(761, '5279', '其他电子产品零售', '', '527', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(762, '5281', '五金零售', '', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(763, '5282', '灯具零售', '', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(764, '5283', '家具零售', '', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(765, '5284', '涂料零售', '', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(766, '5285', '卫生洁具零售', '', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(767, '5286', '木质装饰材料零售', '指专门经营木质地板、门、窗等店铺零售活动，不包括板材销售活动', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(768, '5287', '陶瓷、石材装饰材料零售', '指专门经营陶瓷、石材制地板砖、壁砖等店铺零售活动', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(769, '5289', '其他室内装饰材料零售', '', '528', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(770, '5291', '货摊食品零售', '指流动货摊的食品零售活动', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(771, '5292', '货摊纺织、服装及鞋零售', '指流动货摊的纺织、服装及鞋的零售活动', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(772, '5293', '货摊日用品零售', '指流动货摊的日用品零售活动', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(773, '5294', '互联网零售', '不包括在网络销售中，仅提供网络支付的活动，以及仅建立或提供网络交易平台和接入的活动', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(774, '5295', '邮购及电视、电话零售', '指通过邮政及电视、电话等通讯工具进行销售，并送货上门的零售活动', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(775, '5296', '旧货零售', '', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(776, '5297', '生活用燃料零售', '指从事生活用煤、煤油、酒精、薪柴、木炭以及罐装液化石油气等专门零售活动', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(777, '5299', '其他未列明零售业', '', '529', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(778, '5310', '铁路旅客运输', '', '531', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(779, '5320', '铁路货物运输', '', '532', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(780, '5331', '客运火车站', '', '533', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(781, '5332', '货运火车站', '', '533', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(782, '5339', '其他铁路运输辅助活动', '指除铁路旅客、货物运输及为其服务的客、货运火车站以外的运输网、信号、调度及铁路设施的管理和养护等活动', '533', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(783, '5411', '公共电汽车客运', '', '541', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(784, '5412', '城市轨道交通', '指城市地铁、轻轨、有轨电车等活动', '541', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(785, '5413', '出租车客运', '', '541', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(786, '5419', '其他城市公共交通运输 ', '指其他未列明的城市旅客运输活动', '541', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(787, '5420', '公路旅客运输', '指城市以外道路的旅客运输活动', '542', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(788, '5430', '道路货物运输', '指所有道路的货物运输活动', '543', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(789, '5441', '客运汽车站', '指长途旅客运输汽车站的服务', '544', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(790, '5442', '公路管理与养护', '', '544', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(791, '5449', '其他道路运输辅助活动', '', '544', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(792, '5511', '海洋旅客运输', '', '551', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(793, '5512', '内河旅客运输', '指江、河、湖泊、水库的水上旅客运输活动', '551', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(794, '5513', '客运轮渡运输', '指城市及其他水域旅客轮渡运输活动', '551', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(795, '5521', '远洋货物运输', '', '552', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(796, '5522', '沿海货物运输', '', '552', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(797, '5523', '内河货物运输', '指江、河、湖泊、水库的水上货物运输活动', '552', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(798, '5531', '客运港口', '', '553', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(799, '5532', '货运港口', '', '553', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(800, '5539', '其他水上运输辅助活动', '指其他未列明的水上运输辅助活动', '553', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(801, '5611', '航空旅客运输', '指以旅客运输为主的航空运输活动', '561', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(802, '5612', '航空货物运输', '指以货物或邮件为主的航空运输活动', '561', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(803, '5620', '通用航空服务', '指使用民用航空器从事除公共航空运输以外的民用航空活动', '562', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(804, '5631', '机场', '', '563', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(805, '5632', '空中交通管理', '', '563', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(806, '5639', '其他航空运输辅助活动', '指其他未列明的航空运输辅助活动', '563', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(807, '5700', '管道运输业 ', '指通过管道对气体、液体等的运输活动', '570', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(808, '5810', '装卸搬运', '', '581', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(809, '5821', '货物运输代理', '', '582', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(810, '5822', '旅客票务代理', '', '582', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(811, '5829', '其他运输代理业', '', '582', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(812, '5911', '谷物仓储', '指国家储备及其他谷物仓储活动', '591', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(813, '5912', '棉花仓储', '指棉花加工厂仓储、中转仓储、棉花专业仓储、棉花物流配送活动，还包括在棉花仓储、物流配送过程中的棉花信息化管理活动', '591', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(814, '5919', '其他农产品仓储', '指未列明的其他农产品仓储活动', '591', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(815, '5990', '其他仓储业', '', '599', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(816, '6010', '邮政基本服务', '指邮政企业提供的信件、印刷品、包裹、汇兑等邮政服务，以及国家规定的其他邮政服务；不包括邮政快递服务', '601', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(817, '6020', '快递服务', '指在承诺的时限内快速完成的寄递服务', '602', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(818, '6110', '旅游饭店', '指按照国家有关规定评定的旅游饭店和具有同等质量、水平的饭店活动', '611', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(819, '6120', '一般旅馆', '指不具备评定旅游饭店和同等水平饭店的一般旅馆的活动', '612', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(820, '6190', '其他住宿业', '指上述未列明的住宿服务', '619', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(821, '6210', '正餐服务', '指在一定场所内提供以中餐、晚餐为主的各种中西式炒菜和主食，并由服务员送餐上桌的餐饮活动', '621', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(822, '6220', '快餐服务', '指在一定场所内提供快捷、便利的就餐服务', '622', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(823, '6231', '茶馆服务', '', '623', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(824, '6232', '咖啡馆服务', '', '623', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(825, '6233', '酒吧服务 ', '', '623', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(826, '6239', '其他饮料及冷饮服务', '', '623', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(827, '6291', '小吃服务', '指提供全天就餐的简便餐饮服务，包括路边小饭馆、农家饭馆、流动餐饮和单一小吃等餐饮服务', '629', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(828, '6292', '餐饮配送服务', '', '629', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(829, '6299', '其他未列明餐饮业', '', '629', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(830, '6311', '固定电信服务', '指从事固定通信业务活动', '631', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(831, '6312', '移动电信服务', '指从事移动通信业务活动', '631', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(832, '6319', '其他电信服务', '指除固定电信服务、移动电信服务外，利用固定、移动通信网从事的信息服务', '631', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(833, '6321', '有线广播电视传输服务', '指有线广播电视网和信号的传输服务', '632', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(834, '6322', '无线广播电视传输服务', '指无线广播电视信号的传输服务', '632', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(835, '6330', '卫星传输服务', '指人造卫星的电信传输和广播电视传输服务', '633', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(836, '6410', '互联网接入及相关服务', '指除基础电信运营商外，基于基础传输网络为存储数据、数据处理及相关活动，提供接入互联网的有关应用设施的服务', '641', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1);
INSERT INTO `sys_trade` (`id`, `code`, `name`, `descrition`, `pcode`, `createTime`, `updateTime`, `vision`) VALUES
(837, '6420', '互联网信息服务', '指除基础电信运营商外，通过互联网提供在线信息、电子邮箱、数据检索、网络游戏等信息服务', '642', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(838, '6490', '其他互联网服务', '指除基础电信运营商服务、互联网接入及相关服务、互联网信息服务以外的其他未列明互联网服务', '649', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(839, '6510', '软件开发', '指为用户提供计算机软件、信息系统或者设备中嵌入的软件，或者在系统集成、应用服务等技术服务时提供软件的开发和经营活动；包括基础软件、支撑软件、应用软件、嵌入式软件、信息安全软件、计算机（应用）系统、工业软件以及其他软件的开发和经营活动', '651', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(840, '6520', '信息系统集成服务', '指基于需方业务需求进行的信息系统需求分析和系统设计，并通过结构化的综合布缆系统、计算机网络技术和软件技术，将各个分离的设备、功能和信息等集成到相互关联的、统一和协调的系统之中，以及为信息系统的正常运行提供支持的服务；包括信息系统设计、集成实施、运行维护等服务', '652', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(841, '6530', '信息技术咨询服务', '指在信息资源开发利用、工程建设、人员培训、管理体系建设、技术支撑等方面向需方提供的管理或技术咨询评估服务；包括信息化规划、信息技术管理咨询、信息系统工程监理、测试评估、信息技术培训等', '653', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(842, '6540', '数据处理和存储服务', '指供方向需方提供的信息和数据的分析、整理、计算、编辑、存储等加工处理服务，以及应用软件、业务运营平台、信息系统基础设施等的租用服务；包括各种数据库活动、网站内容更新、数据备份服务、数据存储服务、在线企业资源规划（ERP）、在线杀毒、电子商务平台、物流信息服务平台、服务器托管、虚拟主机等', '654', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(843, '6550', '集成电路设计', '指IC设计服务，即企业开展的集成电路功能研发、设计等服务', '655', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(844, '6591', '数字内容服务', '指数字内容的加工处理，即将图片、文字、视频、音频等信息内容运用数字化技术进行加工处理并整合应用的服务', '659', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(845, '6592', '呼叫中心', '指受企事业单位委托，利用与公用电话网或因特网连接的呼叫中心系统和数据库技术，经过信息采集、加工、存储等建立信息库，通过固定网、移动网或因特网等公众通信网络向用户提供有关该企事业单位的业务咨询、信息咨询和数据查询等服务', '659', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(846, '6599', '其他未列明信息技术服务业', '', '659', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(847, '6610', '中央银行服务', '指代表政府管理金融活动，并制定和执行货币政策，维护金融稳定，管理金融市场的特殊金融机构的活动', '661', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(848, '6620', '货币银行服务', '指除中央银行以外的各类银行所从事存款、贷款和信用卡等货币媒介活动，还包括在中国开展货币业务的外资银行及分支机构的活动', '662', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(849, '6631', '金融租赁服务', '指经中国人民银行批准以经营融资租赁业务为主的非银行金融机构的活动', '663', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(850, '6632', '财务公司 ', '指经中国人民银行批准，为企业融资提供的金融活动', '663', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(851, '6633', '典当', '指以实物、财产权利质押或抵押的放款活动', '663', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(852, '6639', '其他非货币银行服务', '指上述未包括的从事融资、抵押等非货币银行的服务，包括小额贷款公司、农村合作基金会等融资活动，以及各种消费信贷、国际贸易融资、公积金房屋信贷、抵押顾问和经纪人的活动 ', '663', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(853, '6640', '银行监管服务', '指代表政府管理银行业活动，制定并发布对银行业金融机构及其业务活动监督管理的规章、规则', '664', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(854, '6711', '证券市场管理服务', '指非政府机关进行的证券市场经营和监管，包括证券交易所、登记结算机构的活动', '671', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(855, '6712', '证券经纪交易服务', '指在金融市场上代他人进行交易、代理发行证券和其他有关活动，包括证券经纪、证券承销与保荐、融资融券业务、客户资产管理业务等活动', '671', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(856, '6713', '基金管理服务', '指在收费或合同基础上为个人、企业及其他客户进行的资产组合和基金管理活动，包括证券投资基金、企业年金、社保基金、专户理财、国内资本境外投资管理（QDII）等活动', '671', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(857, '6721', '期货市场管理服务', '指非政府机关进行的期货市场经营和监管，包括商品期货交易所、金融期货交易所、期货保证金监控中心的活动', '672', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(858, '6729', '其他期货市场服务', '指商品合约经纪及其他未列明的期货市场的服务', '672', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(859, '6730', '证券期货监管服务', '指由政府或行业自律组织进行的对证券期货市场的监管活动', '673', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(860, '6740', '资本投资服务', '指经批准的证券投资机构的自营投资、直接投资活动，以及风险投资和其他投资活动', '674', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(861, '6790', '其他资本市场服务', '指投资咨询服务、财务咨询服务、资信评级服务，以及其他未列明的资本市场的服务', '679', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(862, '6811', '人寿保险', '指普通寿险、分红寿险、万能寿险、投资连结保险等活动(不论是否带有实质性的储蓄成分)', '681', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(863, '6812', '健康和意外保险', '指疾病保险、医疗保险、失能收入损失保险、护理保险以及意外伤害保险的活动', '681', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(864, '6820', '财产保险', '指除人身保险外的保险活动，包括财产损失保险、责任保险、信用保险、保证保险等', '682', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(865, '6830', '再保险', '指承担与其他保险公司承保的现有保单相关的所有或部分风险的活动', '683', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(866, '6840', '养老金', '指专为单位雇员或成员提供退休金补贴而设立的法定实体的活动(如基金、计划和/或项目等)，包括养老金定额补贴计划以及完全根据成员贡献确定补贴数额的个人养老金计划等', '684', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(867, '6850', '保险经纪与代理服务', '指保险代理人和经纪人进行的年金、保单和分保单的销售、谈判或促合活动', '685', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(868, '6860', '保险监管服务', '指根据国务院授权及相关法律、法规规定所履行的对保险市场的监督、管理活动 ', '686', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(869, '6891', '风险和损失评估', '指保险标的或保险事故的评估、鉴定、勘验、估损或理算等活动，包括索赔处理、风险评估、风险和损失核定、海损理算和损失理算，以及保险理赔等活动', '689', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(870, '6899', '其他未列明保险活动 ', '指与保险和养老金相关或密切相关的活动(理赔和保险代理人、经纪人的活动除外)，包括救助管理、保险精算等活动', '689', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(871, '6910', '金融信托与管理服务', '指根据委托书、遗嘱或代理协议代表受益人管理的信托基金、房地产账户或代理账户等活动，还包括单位投资信托管理', '691', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(872, '6920', '控股公司服务', '指通过一定比例股份，控制某个公司或多个公司的集团，控股公司仅控制股权，不直接参与经营管理，以及其他类似的活动', '692', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(873, '6930', '非金融机构支付服务', '指非金融机构在收付款人之间作为中介机构提供下列部分或全部货币资金转移服务，包括网络支付、预付卡的发行与受理、银行卡收单及中国人民银行确定的其他支付等服务 ', '693', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(874, '6940', '金融信息服务', '指向从事金融分析、金融交易、金融决策或者其他金融活动的用户提供可能影响金融市场的信息（或者金融数据）的服务 ', '694', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(875, '6990', '其他未列明金融业', '指主要与除提供贷款以外的资金分配有关的其他金融媒介活动，包括保理活动、掉期、期权和其他套期保值安排、保单贴现公司的活动、金融资产的管理、金融交易处理与结算等活动，还包括信用卡交易的处理与结算、外币兑换等活动', '699', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(876, '7010', '房地产开发经营', '指房地产开发企业进行的房屋、基础设施建设等开发，以及转让房地产开发项目或者销售、出租房屋等活动', '701', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(877, '7020', '物业管理', '指物业服务企业按照合同约定，对房屋及配套的设施设备和相关场地进行维修、养护、管理，维护环境卫生和相关秩序的活动', '702', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(878, '7030', '房地产中介服务', '指房地产咨询、房地产价格评估、房地产经纪等活动', '703', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(879, '7040', '自有房地产经营活动', '指除房地产开发商、房地产中介、物业公司以外的单位和居民住户对自有房地产（土地、住房、生产经营用房和办公用房）的买卖和以营利为目的的租赁活动，以及房地产管理部门和企事业、机关提供的非营利租赁服务，还包括居民居住自有住房所形成的住房服务', '704', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(880, '7090', '其他房地产业', ' ', '709', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(881, '7111', '汽车租赁', '', '711', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(882, '7112', '农业机械租赁', '', '711', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(883, '7113', '建筑工程机械与设备租赁', '', '711', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(884, '7114', '计算机及通讯设备租赁', '', '711', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(885, '7119', '其他机械与设备租赁', '', '711', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(886, '7121', '娱乐及体育设备出租', '', '712', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(887, '7122', '图书出租', '', '712', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(888, '7123', '音像制品出租', '', '712', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(889, '7129', '其他文化及日用品出租', '', '712', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(890, '7211', '企业总部管理', '指不具体从事对外经营业务，只负责企业的重大决策、资产管理，协调管理下属各机构和内部日常工作的企业总部的活动，其对外经营业务由下属的独立核算单位或单独核算单位承担，还包括派出机构的活动（如办事处等）', '721', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(891, '7212', '投资与资产管理', '指政府主管部门转变职能后，成立的国有资产管理机构和行业管理机构的活动；不包括资本活动的投资', '721', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(892, '7213', '单位后勤管理服务', '指为企事业、机关提供综合后勤服务的活动', '721', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(893, '7219', '其他企业管理服务', '指其他各类企业、行业管理机构的活动', '721', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(894, '7221', '律师及相关法律服务', '指在民事案件、刑事案件和其他案件中，为原被告双方提供法律代理服务，以及为一般民事行为提供的法律咨询服务', '722', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(895, '7222', '公证服务', '', '722', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(896, '7229', '其他法律服务', '', '722', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(897, '7231', '会计、审计及税务服务', '', '723', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(898, '7232', '市场调查', '', '723', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(899, '7233', '社会经济咨询', '', '723', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(900, '7239', '其他专业咨询', '指社会经济咨询以外的其他专业咨询活动', '723', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(901, '7240', '广告业', '指在报纸、期刊、路牌、灯箱、橱窗、互联网、通讯设备及广播电影电视等媒介上为客户策划、制作的有偿宣传活动', '724', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(902, '7250', '知识产权服务', '指对专利、商标、版权、著作权、软件、集成电路布图设计等的代理、转让、登记、鉴定、评估、认证、咨询、检索等活动', '725', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(903, '7261', '公共就业服务', '指向劳动者提供公益性的就业服务', '726', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(904, '7262', '职业中介服务', '指为求职者寻找、选择、介绍工作，为用人单位提供劳动力的服务', '726', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(905, '7263', '劳务派遣服务', '指劳务派遣单位招用劳动力后，将其派到用工单位从事劳动的行为', '726', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(906, '7269', '其他人力资源服务', '指职业技能鉴定、人力资源外包及其他未列明的人力资源服务', '726', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(907, '7271', '旅行社服务', '', '727', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(908, '7272', '旅游管理服务', '', '727', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(909, '7279', '其他旅行社相关服务', '', '727', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(910, '7281', '安全服务', '指保安公司及类似单位提供的安全保护活动', '728', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(911, '7282', '安全系统监控服务', '', '728', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(912, '7289', '其他安全保护服务', '', '728', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(913, '7291', '市场管理', '指各种交易市场的管理活动', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(914, '7292', '会议及展览服务', '指为商品流通、促销、展示、经贸洽谈、民间交流、企业沟通、国际往来而举办的展览和会议等活动', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(915, '7293', '包装服务', '指有偿或按协议为客户提供包装服务', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(916, '7294', '办公服务', '指为商务、公务及个人提供的各种办公服务', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(917, '7295', '信用服务', '指专门从事信用信息采集、整理和加工，并提供相关信用产品和信用服务的活动，包括信用评级、商帐管理等活动', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(918, '7296', '担保服务', '指保证人和债权人约定，当债务人不履行债务时，保证人按照约定履行债务或者承担责任的行为活动；本类别特指专业担保机构的活动', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(919, '7299', '其他未列明商务服务业', '指上述未列明的商务、代理等活动', '729', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(920, '7310', '自然科学研究和试验发展', '', '731', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(921, '7320', '工程和技术研究和试验发展', '', '732', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(922, '7330', '农业科学研究和试验发展', '', '733', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(923, '7340', '医学研究和试验发展', '', '734', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(924, '7350', '社会人文科学研究', '', '735', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(925, '7410', '气象服务', '指从事气象探测、预报、服务和气象灾害防御、气候资源利用等活动', '741', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(926, '7420', '地震服务', '指地震监测预报、震灾预防和紧急救援等防震减灾活动', '742', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(927, '7430', '海洋服务', '', '743', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(928, '7440', '测绘服务', ' ', '744', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(929, '7450', '质检技术服务', '指通过专业技术手段对动植物、工业产品、商品、专项技术、成果及其他需要鉴定的物品所进行的检测、检验、测试、鉴定等活动，还包括产品质量、计量、认证和标准的管理活动', '745', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(930, '7461', '环境保护监测', '指对环境各要素，对生产与生活等各类污染源排放的液体、气体、固体、辐射等污染物或污染因子指标进行的测试和监测活动', '746', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(931, '7462', '生态监测', '指对森林资源、湿地资源、荒漠化、珍稀濒危野生动植物资源的调查与监测活动；野生动物疫源疫病与防控以及对生态工程的监测活动', '746', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(932, '7471', '能源矿产地质勘查', '', '747', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(933, '7472', '固体矿产地质勘查', '', '747', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(934, '7473', '水、二氧化碳等矿产地质勘查', '', '747', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(935, '7474', '基础地质勘查', '指区域、海洋、环境和水文地质勘查活动', '747', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(936, '7475', '地质勘查技术服务', '指除矿产地质勘查、基础地质勘查以外的其他勘查和相关的技术服务', '747', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(937, '7481', '工程管理服务', '指工程项目建设中的项目策划、投资与造价咨询、招标代理、工程监理、项目管理等服务', '748', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(938, '7482', '工程勘察设计', '指建筑工程施工前的工程测量、工程地质勘察和工程设计等活动', '748', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(939, '7483', '规划管理', '指对区域和城镇、乡村的规划，以及其他规划', '748', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(940, '7491', '专业化设计服务', '指除工程规划设计、软件设计、集成电路设计以外的独立的专业化设计活动', '749', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(941, '7492', '摄影扩印服务', '', '749', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(942, '7493', '兽医服务', '', '749', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(943, '7499', '其他未列明专业技术服务业', '', '749', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(944, '7511', '农业技术推广服务', '', '751', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(945, '7512', '生物技术推广服务', '', '751', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(946, '7513', '新材料技术推广服务', '', '751', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(947, '7514', '节能技术推广服务', '', '751', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(948, '7519', '其他技术推广服务', '', '751', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(949, '7520', '科技中介服务', '指为科技活动提供社会化服务与管理，在政府、各类科技活动主体与市场之间提供居间服务的组织，主要开展信息交流、技术咨询、技术孵化、科技评估和科技鉴证等活动', '752', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(950, '7590', '其他科技推广和应用服务业', '指除技术推广、科技中介以外的其他科技服务，但不包括短期的日常业务活动', '759', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(951, '7610', '防洪除涝设施管理', '指对江河湖泊开展的河道、堤防、岸线整治等活动及对河流、湖泊、行蓄洪区和沿海的防洪设施的管理活动，包括防洪工程设施的管理及运行维护等', '761', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(952, '7620', '水资源管理', '指对水资源的开发、利用、配置、节约等活动', '762', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(953, '7630', '天然水收集与分配', '指通过各种方式收集、分配天然水资源的活动，包括通过蓄水（水库、塘堰等）、提水、引水和井等水源工程，收集和分配各类地表和地下淡水资源的活动', '763', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(954, '7640', '水文服务', '指通过布设水文站网，对水的时空分布规律进行监测、收集和分析处理的活动', '764', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(955, '7690', '其他水利管理业', '', '769', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(956, '7711', '自然保护区管理', '指对有代表性的自然生态系统、珍稀濒危野生动植物物种和有特殊意义的自然遗迹等予以特殊保护和管理的活动', '771', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(957, '7712', '野生动物保护', '指对野生及濒危动物的饲养、繁殖等保护活动，以及对栖息地的管理活动', '771', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(958, '7713', '野生植物保护', '指对野生及濒危植物的培育等保护活动', '771', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(959, '7719', '其他自然保护', '指除自然保护区管理、野生动植物保护以外的其他自然保护活动', '771', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(960, '7721', '水污染治理', '指对江、河、湖泊、水库及地下水、地表水的污染综合治理活动，不包括排放污水的搜集和治理活动', '772', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(961, '7722', '大气污染治理', '指对大气污染的综合治理以及对工业废气的治理活动', '772', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(962, '7723', '固体废物治理', '指除城乡居民生活垃圾以外的固体废物治理及其他非危险废物的治理', '772', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(963, '7724', '危险废物治理', '指对制造、维修、医疗等活动产生的危险废物进行收集、贮存、利用、处理和处置等活动', '772', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(964, '7725', '放射性废物治理', '指对生产及其他活动过程产生的放射性废物进行收集、贮存、利用、处理和处置等活动', '772', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(965, '7729', '其他污染治理 ', '指除水污染、大气污染、固体废物、危险废物、放射性废物治理以外的其他环境治理活动', '772', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(966, '7810', '市政设施管理', '指污水排放、雨水排放、路灯、道路、桥梁、隧道、广场、涵洞、防空等城乡公共设施的抢险、紧急处理、管理等活动', '781', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(967, '7820', '环境卫生管理', '指城乡生活垃圾的清扫、收集、运输、处理和处置、管理等活动，以及对公共厕所、化粪池的清扫、收集、运输、处理和处置、管理等活动', '782', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(968, '7830', '城乡市容管理', ' 指城市户外标志、外景照明、公共建筑物、施工围档、材料堆放、渣土清运、竣工清理等管理活动；乡、村户外标志、村容镇貌、柴草堆放、树木花草养护等管理活动', '783', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(969, '7840', '绿化管理', '指城市绿地和生产绿地、防护绿地、附属绿地等的管理活动 ', '784', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(970, '7851', '公园管理', '指主要为人们提供休闲、观赏、游览以及开展科普活动的城市各类公园管理活动', '785', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(971, '7852', '游览景区管理', '指对具有一定规模的自然景观、人文景物的管理和保护活动，以及对环境优美，具有观赏、文化或科学价值的风景名胜区的保护和管理活动；包括风景名胜和其他类似的自然景区管理', '785', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(972, '7910', '家庭服务', '指雇佣家庭雇工的家庭住户和家庭户的自营活动，以及在雇主家庭从事有报酬的家庭雇工的活动，包括钟点工和居住在雇主家里的家政劳动者的活动', '791', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(973, '7920', '托儿所服务', '指社会、街道、个人办的面向不足三岁幼儿的看护活动，可分为全托、日托、半托，或计时的服务', '792', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(974, '7930', '洗染服务', '指专营的洗染店以及在宾馆、饭店内常设的独立（或相对独立）洗染服务', '793', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(975, '7940', '理发及美容服务', '指专业理发、美容保健服务，以及在宾馆、饭店或娱乐场所常设的独立（或相对独立）理发、美容保健服务', '794', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(976, '7950', '洗浴服务', '指专业洗浴室以及在宾馆、饭店或娱乐场所常设的独立（或相对独立）洗浴、温泉、SPA等服务', '795', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(977, '7960', '保健服务', '指专业保健场所以及在宾馆、饭店或娱乐场所开设的独立（或相对独立）保健按摩、足疗等服务', '796', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(978, '7970', '婚姻服务', '指婚姻介绍、婚庆典礼等服务', '797', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(979, '7980', '殡葬服务', '指与殡葬有关的各类服务', '798', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(980, '7990', '其他居民服务业', '指上述未包括的居民服务', '799', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(981, '8011', '汽车修理与维护', '指汽车修理厂及路边门店的专业修理服务，包括为汽车提供上油、充气、打蜡、抛光、喷漆、清洗、换零配件、出售零部件等服务，不包括汽车回厂拆卸、改装、大修的活动', '801', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(982, '8012', '摩托车修理与维护', '', '801', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(983, '8021', '计算机和辅助设备修理', '', '802', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(984, '8022', '通讯设备修理', '', '802', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(985, '8029', '其他办公设备维修', '指其他未列明的各种办公设备的修理公司（中心）、修理门市部和修理网点的修理活动', '802', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(986, '8031', '家用电子产品修理', '指电视、音响等家用视频、音频产品的修理活动', '803', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(987, '8032', '日用电器修理', '指洗衣机、电冰箱、空调等日用电器维修门市部，以及生产企业驻各地的维修网点和维修公司（中心）的修理活动', '803', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(988, '8091', '自行车修理', '', '809', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(989, '8092', '鞋和皮革修理', '', '809', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(990, '8093', '家具和相关物品修理', '', '809', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(991, '8099', '其他未列明日用产品修理业', '指其他日用产品维修门市部、修理摊点的活动，以及生产企业驻各地的维修网点和维修中心的修理活动', '809', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(992, '8111', '建筑物清洁服务', '指对建筑物内外墙、玻璃幕墙、地面、天花板及烟囱的清洗活动', '811', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(993, '8119', '其他清洁服务', '指专业清洗人员为企业的机器、办公设备的清洗活动，以及为居民的日用品、器具及设备的清洗活动，包括清扫、消毒等服务', '811', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(994, '8190', '其他未列明服务业', '', '819', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(995, '8210', '学前教育', '指经教育行政部门批准举办的对学龄前幼儿进行保育和教育的活动', '821', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(996, '8221', '普通小学教育', '', '822', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(997, '8222', '成人小学教育', '', '822', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(998, '8231', '普通初中教育', '指《义务教育法》规定的对小学毕业生进行初级中等教育的活动', '823', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(999, '8232', '职业初中教育', '', '823', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1000, '8233', '成人初中教育', '', '823', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1001, '8234', '普通高中教育', '指非义务教育阶段，通过考试招收初中毕业生进行普通高中教育的活动', '823', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1002, '8235', '成人高中教育', '', '823', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1003, '8236', '中等职业学校教育', '指经教育行政部门或劳动就业行政部门批准举办的中等技术学校、中等师范学校、成人中等专业学校、职业高中学校、技工学校等教育活动', '823', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1004, '8241', '普通高等教育', '指经教育行政部门批准，由国家、地方、社会办的在完成高级中等教育基础上实施的获取学历的高等教育活动', '824', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1005, '8242', '成人高等教育', '指经教育主管部门批准办的成人高等教育活动', '824', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1006, '8250', '特殊教育', '指为残障儿童提供的特殊教育活动', '825', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1007, '8291', '职业技能培训', '指由教育部门、劳动部门或其他政府部门批准举办，或由社会机构举办的为提高就业人员就业技能的就业前的培训和其他技能培训活动，不包括社会上办的各类培训班、速成班、讲座等', '829', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1008, '8292', '体校及体育培训', '指各类、各级体校培训，以及其他各类体育运动培训活动，不包括学校教育制度范围内的体育大学、学院、学校的体育专业教育', '829', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1009, '8293', '文化艺术培训', '指国家学校教育制度以外，由正规学校或社会各界办的文化艺术培训活动，不包括少年儿童的课外艺术辅导班', '829', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1010, '8294', '教育辅助服务', '指专门从事教育检测、评价、考试、招生等辅助活动', '829', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1011, '8299', '其他未列明教育', '指经批准的宗教院校教育及上述未列明的教育活动', '829', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1012, '8311', '综合医院', '', '831', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1013, '8312', '中医医院', '', '831', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1014, '8313', '中西医结合医院', '', '831', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1015, '8314', '民族医院', '', '831', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1016, '8315', '专科医院', '', '831', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1017, '8316', '疗养院', '指以疗养、康复为主，治疗为辅的医疗服务活动', '831', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1018, '8321', '社区卫生服务中心（站）', ' ', '832', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1019, '8322', '街道卫生院', '', '832', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1020, '8323', '乡镇卫生院', '', '832', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1021, '8330', '门诊部（所）', '指门诊部、诊所、医务室、卫生站、护理院等卫生机构的活动', '833', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1022, '8340', '计划生育技术服务活动', '指各地区计划生育技术服务机构的活动', '834', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1023, '8350', '妇幼保健院（所、站）', '指非医院的妇女及婴幼儿保健活动', '835', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1024, '8360', '专科疾病防治院（所、站）', '指对各种专科疾病进行预防及群众预防的活动', '836', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1025, '8370', '疾病预防控制中心', '指卫生防疫站、卫生防病中心、预防保健中心等活动', '837', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1026, '8390', '其他卫生活动', '指急救中心及其他未列明的卫生机构的活动', '839', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1027, '8411', '干部休养所', '', '841', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1028, '8412', '护理机构服务', '指各级政府、企业和社会力量兴办的主要面向老年人、残疾人提供的专业化护理的服务机构的活动', '841', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1029, '8413', '精神康复服务', '指智障、精神疾病、吸毒、酗酒等人员的住宿康复治疗活动', '841', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1030, '8414', '老年人、残疾人养护服务', '指各级政府、企业和社会力量兴办的主要面向老年人和残疾人提供的长期照料、养护、关爱等服务机构的活动', '841', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1031, '8415', '孤残儿童收养和庇护服务', '指对孤残儿童、生活无着流浪儿童等人员的收养救助活动', '841', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1032, '8419', '其他提供住宿社会救助', '指对生活无着流浪等其他人员的收养救助等活动', '841', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1033, '8421', '社会看护与帮助服务', '指为老人、残疾人、五保户及其他弱势群体提供不住宿的看护、帮助活动', '842', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1034, '8429', '其他不提供住宿社会工作', '指慈善、募捐等其他社会工作的活动', '842', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1035, '8510', '新闻业', '', '851', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1036, '8521', '图书出版', '', '852', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1037, '8522', '报纸出版', '', '852', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1038, '8523', '期刊出版', '', '852', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1039, '8524', '音像制品出版', '', '852', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1040, '8525', '电子出版物出版', '', '852', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1041, '8529', '其他出版业', '', '852', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1042, '8610', '广播', '指广播节目的现场制作、播放及其他相关活动，还包括互联网广播', '861', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1043, '8620', '电视', '指有线和无线电视节目的现场制作、播放及其他相关活动，还包括互联网电视', '862', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1044, '8630', '电影和影视节目制作', '指电影、电视和录像（含以磁带、光盘为载体）节目的制作活动，该节目可以作为电视、电影播出、放映，也可以作为出版、销售的原版录像带（或光盘），还可以在其他场合宣传播放，还包括影视节目的后期制作，但不包括电视台制作节目的活动', '863', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1045, '8640', '电影和影视节目发行', '不含录像制品（以磁带、光盘为载体）的发行', '864', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1046, '8650', '电影放映', '指专业电影院以及设在娱乐场所独立（或相对独立）的电影放映等活动', '865', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1047, '8660', '录音制作', '指从事录音节目、音乐作品的制作活动，其节目或作品可以在广播电台播放，也可以制作成出版、销售的原版录音带（磁带或光盘），还可以在其他宣传场合播放，但不包括广播电台制作节目的活动', '866', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1048, '8710', '文艺创作与表演', '指文学、美术创造和表演艺术（如戏曲、歌舞、话剧、音乐、杂技、马戏、木偶等表演艺术）等活动', '871', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1049, '8720', '艺术表演场馆', '指有观众席、舞台、灯光设备，专供文艺团体演出的场所管理活动', '872', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1050, '8731', '图书馆', '', '873', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1051, '8732', '档案馆', '', '873', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1052, '8740', '文物及非物质文化遗产保护', '指对具有历史、文化、艺术、科学价值，并经有关部门鉴定，列入文物保护范围的不可移动文物的保护和管理活动；对我国口头传统和表现形式，传统表演艺术，社会实践、意识、节庆活动，有关的自然界和宇宙的知识和实践，传统手工艺等非物质文化遗产的保护和管理活动', '874', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1053, '8750', '博物馆', '指收藏、研究、展示文物和标本的博物馆的活动，以及展示人类文化、艺术、科技、文明的美术馆、艺术馆、展览馆、科技馆、天文馆等管理活动', '875', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1054, '8760', '烈士陵园、纪念馆', '', '876', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1055, '8770', '群众文化活动', '指对各种主要由城乡群众参与的文艺类演出、比赛、展览等公益性文化活动的管理活动', '877', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1056, '8790', '其他文化艺术业', '', '879', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1057, '8810', '体育组织', '指专业从事体育比赛、训练、辅导和管理的组织的活动', '881', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1058, '8820', '体育场馆', '指可供观赏比赛的场馆和专供运动员训练用的场地管理活动', '882', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1059, '8830', '休闲健身活动', '指主要面向社会开放的休闲健身场所和其他体育娱乐场所的管理活动', '883', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1060, '8890', '其他体育', '指上述未包括的体育活动', '889', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1061, '8911', '歌舞厅娱乐活动', '', '891', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1062, '8912', '电子游艺厅娱乐活动', '', '891', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1063, '8913', '网吧活动', '指通过计算机等装置向公众提供互联网上网服务的网吧、电脑休闲室等营业性场所的服务', '891', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1064, '8919', '其他室内娱乐活动', '', '891', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1065, '8920', '游乐园', '指配有大型娱乐设施的室外娱乐活动及以娱乐为主的活动', '892', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1066, '8930', '彩票活动', '指各种形式的彩票活动', '893', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1067, '8941', '文化娱乐经纪人', '', '894', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1068, '8942', '体育经纪人', '', '894', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1069, '8949', '其他文化艺术经纪代理', '', '894', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1070, '8990', '其他娱乐业', '指公园、海滩和旅游景点内小型设施的娱乐活动及其他娱乐活动', '899', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1071, '9000', '中国共产党机关', '', '900', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1072, '9110', '国家权力机构', '指宪法规定的全国和地方各级人民代表大会及常委会机关的活动', '911', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1073, '9121', '综合事务管理机构', '指中央和地方人民政府的活动，以及依法管理全国或地方综合事务的政府主管部门的活动，还包括政府事务管理', '912', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1074, '9122', '对外事务管理机构', '', '912', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1075, '9123', '公共安全管理机构', '', '912', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1076, '9124', '社会事务管理机构', '', '912', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1077, '9125', '经济事务管理机构', '', '912', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1078, '9126', '行政监督检查机构', '指依法对社会经济活动进行监督、稽查、检查、查处等活动，包括独立（或相对独立）于各级行政管理机构的执法检查大队的活动', '912', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1079, '9131', '人民法院', '指各级人民法院的活动', '913', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1080, '9132', '人民检察院', '指各级人民检察院的活动', '913', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1081, '9190', '其他国家机构', '指其他未另列明的国家机构的活动', '919', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1082, '9210', '人民政协', '指全国人民政治协商会议及各级人民政协的活动', '921', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1083, '9220', '民主党派', '', '922', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1084, '9300', '社会保障', '指依据国家有关规定开展的各种社会保障活动', '930', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1085, '9411', '工会', '', '941', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1086, '9412', '妇联', '', '941', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1087, '9413', '共青团', '', '941', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1088, '9419', '其他群众团体', '', '941', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1089, '9421', '专业性团体', '指由同一领域的成员、专家组成的社会团体（如学科、学术、文化、艺术、教育、卫生等）的活动', '942', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1090, '9422', '行业性团体', '指由一个行业，或某一类企业，或不同企业的雇主（经理、厂长）组成的社会团体的活动', '942', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1091, '9429', '其他社会团体', '指未列明的其他社会团体的活动', '942', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1092, '9430', '基金会', '指利用自然人、法人或者其他组织捐赠的财产，以从事公益事业为目的，按照国务院颁布的《基金会管理条例》的规定成立的非营利性法人的活动', '943', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1093, '9440', '宗教组织', '指在民政部门登记的宗教团体的活动和在政府宗教事务部门登记的宗教活动场所的活动', '944', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1094, '9510', '社区自治组织', '指城市、镇的居民通过选举产生的群众性自治组织的管理活动', '951', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1095, '9520', '村民自治组织', '指农村村民通过选举产生的群众性自治组织的管理活动', '952', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1096, '9600', '国际组织', '指联合国和其他国际组织驻我国境内机构等的活动', '960', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1097, '012', '豆类、油料和薯类种植', '', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1098, '013', '棉、麻、糖、烟草种植', '', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1099, '014', '蔬菜、食用菌及园艺作物种植', '', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1100, '015', '水果种植', '', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1101, '016', '坚果、含油果、香料和饮料作物种植', '', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1102, '017', '中药材种植', '指主要用于中药配制以及中成药加工的药材作物的种植', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1103, '019', '其他农业', '指上述未列明的农作物种植', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1104, '021', '林木育种和育苗', '', '02', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1105, '022', '造林和更新', '指在宜林荒山荒地荒沙、采伐迹地、火烧迹地、疏林地、灌木林地等一切可造林的土地上通过人工造林、人工更新、封山育林、飞播造林等方式培育和恢复森林的活动', '02', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1106, '023', '森林经营和管护', '指为促进林木生长发育，在林木生长的不同时期进行的促进林木生长发育的活动', '02', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1107, '024', '木材和竹材采运', '指对林木和竹木的采伐，并将其运出山场至贮木场的生产活动', '02', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1108, '025', '林产品采集', '指在天然林地和人工林地进行的各种林木产品和其他野生植物的采集等活动', '02', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1109, '031', '牲畜饲养', '', '03', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1110, '032', '家禽饲养', '', '03', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1111, '033', '狩猎和捕捉动物', '指对各种野生动物的捕捉以及与此相关的活动', '03', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1112, '039', '其他畜牧业', '', '03', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1113, '041', '水产养殖', '', '04', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1114, '042', '水产捕捞', '', '04', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1115, '051', '农业服务业', '指对农业生产活动进行的各种支持性服务，但不包括各种科学技术和专业技术服务', '05', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1116, '052', '林业服务业', '指为林业生产服务的病虫害的防治、林地防火等各种辅助性活动', '05', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1117, '053', '畜牧服务业', '指提供牲畜繁殖、圈舍清理、畜产品生产和初级加工等服务', '05', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1118, '054', '渔业服务业', '指对渔业生产活动进行的各种支持性服务，包括鱼苗及鱼种场、水产良种场和水产增殖场等进行的活动', '05', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1);
INSERT INTO `sys_trade` (`id`, `code`, `name`, `descrition`, `pcode`, `createTime`, `updateTime`, `vision`) VALUES
(1119, '061', '烟煤和无烟煤开采洗选', '指对地下或露天烟煤、无烟煤的开采，以及对采出的烟煤、无烟煤及其他硬煤进行洗选、分级等提高质量的活动', '06', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1120, '062', '褐煤开采洗选', '指对褐煤--煤化程度较低的一种燃料的地下或露天开采，以及对采出的褐煤进行洗选、分级等提高质量的活动', '06', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1121, '069', '其他煤炭采选', '指对生长在古生代地层中的含碳量低、灰分高的煤炭资源（如石煤、泥炭）的开采', '06', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1122, '071', '石油开采', '', '07', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1123, '072', '天然气开采', '', '07', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1124, '081', '铁矿采选', '指对铁矿石的采矿、选矿活动', '08', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1125, '082', '锰矿、铬矿采选', '', '08', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1126, '089', '其他黑色金属矿采选', '指对钒矿等钢铁工业黑色金属辅助原料矿的采矿、选矿活动', '08', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1127, '091', '常用有色金属矿采选', '指对铜、铅锌、镍钴、锡、锑、铝、镁、汞、镉、铋等常用有色金属矿的采选', '09', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1128, '092', '贵金属矿采选', '指对在地壳中含量极少的金、银和铂族元素（铂、铱、锇、钌、钯、铑）矿的采选', '09', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1129, '093', '稀有稀土金属矿采选', '指对在自然界中含量较小，分布稀散或难以从原料中提取，以及研究和使用较晚的金属矿开采、精选', '09', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1130, '101', '土砂石开采', '', '10', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1131, '102', '化学矿开采', '指对化学矿和肥料矿物的开采', '10', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1132, '103', '采盐', '指通过以海水（含沿海浅层地下卤水）为原料晒制，或以钻井汲取地下卤水，或注水溶解地下岩盐为原料，经真空蒸发干燥，以及从盐湖中采掘制成的以氯化钠为主要成分的盐产品的开采、粉碎和筛选', '10', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1133, '109', '石棉及其他非金属矿采选', '指对石棉、石墨、贵重宝石、金刚石、天然磨料及其他矿石的开采', '10', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1134, '111', '煤炭开采和洗选辅助活动', '', '11', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1135, '112', '石油和天然气开采辅助活动', '', '11', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1136, '119', '其他开采辅助活动', '', '11', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1137, '120', '其他采矿业', '指对地热资源、矿泉水资源以及其他未列明的自然资源的开采，但不包括利用这些资源建立的热电厂和矿泉水厂的活动', '12', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1138, '131', '谷物磨制', '也称粮食加工，指将稻子、谷子、小麦、高粱等谷物去壳、碾磨及精加工的生产活动', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1139, '132', '饲料加工 ', '指适用于农场、农户饲养牲畜、家禽的饲料生产加工，包括宠物食品的生产活动，也包括用屠宰下脚料加工生产的动物饲料，即动物源性饲料的生产活动', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1140, '133', '植物油加工', '', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1141, '134', '制糖业', '指以甘蔗、甜菜等为原料制作成品糖，以及以原糖或砂糖为原料精炼加工各种精制糖的生产活动', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1142, '135', '屠宰及肉类加工', '', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1143, '136', '水产品加工', '', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1144, '137', '蔬菜、水果和坚果加工', '指用脱水、干制、冷藏、冷冻、腌制等方法，对蔬菜、水果、坚果的加工', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1145, '139', '其他农副食品加工', '', '13', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1146, '141', '焙烤食品制造', '', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1147, '142', '糖果、巧克力及蜜饯制造', '', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1148, '143', '方便食品制造', '指以米、面、杂粮等为主要原料加工制成，只需简单烹制即可作为主食，具有食用简便、携带方便，易于储藏等特点的食品制造', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1149, '144', '乳制品制造', '指以生鲜牛（羊）乳及其制品为主要原料，经加工制成的液体乳及固体乳（乳粉、炼乳、乳脂肪、干酪等）制品的生产活动；不包括含乳饮料和植物蛋白饮料生产活动', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1150, '145', '罐头食品制造', '指将符合要求的原料经处理、分选、修整、烹调（或不经烹调）、装罐、密封、杀菌、冷却（或无菌包装）等罐头生产工艺制成的，达到商业无菌要求，并可以在常温下储存的罐头食品的制造', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1151, '146', '调味品、发酵制品制造', '', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1152, '149', '其他食品制造', '', '14', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1153, '151', '酒的制造', '指酒精、白酒、啤酒及其专用麦芽、黄酒、葡萄酒、果酒、配制酒以及其他酒的生产', '15', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1154, '152', '饮料制造', '', '15', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1155, '153', '精制茶加工', '指对毛茶或半成品原料茶进行筛分、轧切、风选、干燥、匀堆、拼配等精制加工茶叶的生产活动', '15', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1156, '161', '烟叶复烤', '指在原烟（初烤）基础上进行第二次烟叶水分调整的活动', '16', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1157, '162', '卷烟制造', '指各种卷烟生产，但不包括生产烟用滤嘴棒的纤维丝束原料的制造', '16', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1158, '169', '其他烟草制品制造', '', '16', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1159, '171', ' 棉纺织及印染精加工', '指棉、棉型化纤（化纤短丝）纺织及印染精加工', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1160, '172', '毛纺织及染整精加工', '', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1161, '173', '麻纺织及染整精加工', '', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1162, '174', '丝绢纺织及印染精加工', '', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1163, '175', '化纤织造及印染精加工', '指经纬双向或经向以化纤长丝(不包括化纤短纤）为主要原料生产的机织物', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1164, '176', '针织或钩针编织物及其制品制造', '', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1165, '177', '家用纺织制成品制造', '', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1166, '178', '非家用纺织制成品制造', '也称产业用纺织制成品制造', '17', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1167, '181', '机织服装制造', '指以机织面料为主要原料，缝制各种男、女服装，以及儿童成衣的活动；包括非自产原料制作的服装，以及固定生产地点的服装制作活动', '18', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1168, '182', '针织或钩针编织服装制造', '指以针织、钩针编织面料为主要原料，经裁剪后缝制各种男、女服装，以及儿童成衣的活动', '18', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1169, '183', '服饰制造', '指帽子、手套、围巾、领带、领结、手绢，以及袜子等服装饰品的加工', '18', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1170, '191', '皮革鞣制加工', '指动物生皮经脱毛、鞣制等物理和化学方法加工，再经涂饰和整理，制成具有不易腐烂、柔韧、透气等性能的皮革生产活动', '19', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1171, '192', '皮革制品制造', '', '19', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1172, '193', '毛皮鞣制及制品加工', '', '19', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1173, '194', '羽毛(绒)加工及制品制造', '', '19', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1174, '195', '制鞋业', '指纺织面料鞋、皮鞋、塑料鞋、橡胶鞋及其他各种鞋的生产活动', '19', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1175, '201', '木材加工', '', '20', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1176, '202', '人造板制造', '指用木材及其剩余物、棉秆、甘蔗渣和芦苇等植物纤维为原料，加工成符合国家标准的胶合板、纤维板、刨花板、细木工板和木丝板等产品的生产活动，以及人造板二次加工装饰板的制造', '20', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1177, '203', '木制品制造', '指以木材为原料加工成建筑用木料和木材组件、木容器、软木制品及其他木制品的生产活动，但不包括木质家具的制造', '20', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1178, '204', '竹、藤、棕、草等制品制造', '指除木材以外，以竹、藤、棕、草等天然植物为原料生产制品的活动，但不包括家具的制造', '20', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1179, '211', '木质家具制造', '指以天然木材和木质人造板为主要材料，配以其他辅料（如油漆、贴面材料、玻璃、五金配件等）制作各种家具的生产活动', '21', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1180, '212', '竹、藤家具制造', '指以竹材和藤材为主要材料，配以其他辅料制作各种家具的生产活动', '21', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1181, '213', '金属家具制造', '指支(框)架及主要部件以铸铁、钢材、钢板、钢管、合金等金属为主要材料，结合使用木、竹、塑等材料，配以人造革、尼龙布、泡沫塑料等其他辅料制作各种家具的生产活动', '21', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1182, '214', '塑料家具制造', '指用塑料管、板、异型材加工或用塑料、玻璃钢（即增强塑料）直接在模具中成型的家具的生产活动', '21', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1183, '219', '其他家具制造', '指主要由弹性材料(如弹簧、蛇簧、拉簧等)和软质材料(如棕丝、棉花、乳胶海绵、泡沫塑料等)，辅以绷结材料(如绷绳、绷带、麻布等)和装饰面料及饰物(如棉、毛、化纤织物及牛皮、羊皮、人造革等)制成的各种软家具；以玻璃为主要材料，辅以木材或金属材料制成的各种玻璃家具，以及其他未列明的原材料制作各种家具的生产活动', '21', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1184, '221', '纸浆制造', '指经机械或化学方法加工纸浆的生产活动', '22', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1185, '222', '造纸', '指用纸浆或其他原料（如矿渣棉、云母、石棉等）悬浮在流体中的纤维，经过造纸机或其他设备成型，或手工操作而成的纸及纸板的制造', '22', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1186, '223', '纸制品制造', '指用纸及纸板为原料，进一步加工制成纸制品的生产活动', '22', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1187, '231', '印刷', '', '23', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1188, '232', '装订及印刷相关服务', '指专门企业从事的装订、压印媒介制造等与印刷有关的服务', '23', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1189, '233', '记录媒介复制', '指将母带、母盘上的信息进行批量翻录的生产活动', '23', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1190, '241', '文教办公用品制造', '', '24', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1191, '242', '乐器制造', '指中国民族乐器、西乐器等各种乐器及乐器零部件和配套产品的制造，但不包括玩具乐器的制造', '24', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1192, '243', '工艺美术品制造', '', '24', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1193, '244', '体育用品制造', '', '24', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1194, '245', '玩具制造', '指以儿童为主要使用者，用于玩耍、智力开发等娱乐器具的制造 ', '24', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1195, '246', '游艺器材及娱乐用品制造', '', '24', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1196, '251', '精炼石油产品制造', '', '25', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1197, '252', '炼焦', '指主要从硬煤和褐煤中生产焦炭、干馏炭及煤焦油或沥青等副产品的炼焦炉的操作活动', '25', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1198, '253', '核燃料加工', '指从沥青铀矿或其他含铀矿石中提取铀、浓缩铀的生产，对铀金属的冶炼、加工，以及其他放射性元素、同位素标记、核反应堆燃料元件的制造，还包括与核燃料加工有关的核废物处置活动', '25', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1199, '261', '基础化学原料制造', '', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1200, '262', '肥料制造', '指化学肥料、有机肥料及微生物肥料的制造', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1201, '263', '农药制造', '指用于防治农业、林业作物的病、虫、草、鼠和其他有害生物，调节植物生长的各种化学农药、微生物农药、生物化学农药，以及仓储、农林产品的防蚀、河流堤坝、铁路、机场、建筑物及其他场所用药的原药和制剂的生产活动', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1202, '264', '涂料、油墨、颜料及类似产品制造', '', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1203, '265', '合成材料制造', '', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1204, '266', '专用化学产品制造', '', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1205, '267', '炸药、火工及焰火产品制造', '', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1206, '268', '日用化学产品制造', '', '26', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1207, '271', '化学药品原料药制造', '指供进一步加工化学药品制剂所需的原料药生产活动', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1208, '272', '化学药品制剂制造', '指直接用于人体疾病防治、诊断的化学药品制剂的制造', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1209, '273', '中药饮片加工', '指对采集的天然或人工种植、养殖的动物和植物的药材部位进行加工、炮制，使其符合中药处方调剂或中成药生产使用的活动', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1210, '274', '中成药生产', '指直接用于人体疾病防治的传统药的加工生产活动', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1211, '275', '兽用药品制造', '指用于动物疾病防治医药的制造', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1212, '276', '生物药品制造', '指利用生物技术生产生物化学药品、基因工程药物的生产活动', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1213, '277', '卫生材料及医药用品制造', '指卫生材料、外科敷料、药品包装材料、辅料以及其他内、外科用医药制品的制造', '27', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1214, '281', '纤维素纤维原料及纤维制造', '', '28', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1215, '282', '合成纤维制造', '指以石油、天然气、煤等为主要原料，用有机合成的方法制成单体，聚合后经纺丝加工生产纤维的活动', '28', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1216, '291', '橡胶制品业', '指以天然及合成橡胶为原料生产各种橡胶制品的活动，还包括利用废橡胶再生产橡胶制品的活动；不包括橡胶鞋制造', '29', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1217, '292', '塑料制品业', '指以合成树脂（高分子化合物）为主要原料，经采用挤塑、注塑、吹塑、压延、层压等工艺加工成型的各种制品的生产，以及利用回收的废旧塑料加工再生产塑料制品的活动；不包括塑料鞋制造', '29', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1218, '301', '水泥、石灰和石膏制造', '', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1219, '302', '石膏、水泥制品及类似制品制造', '', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1220, '303', '砖瓦、石材等建筑材料制造', '指粘土、陶瓷砖瓦的生产，建筑用石的加工，用废料或废渣生产的建筑材料，以及其他建筑材料的制造', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1221, '304', '玻璃制造', '指任何形态玻璃的生产，以及利用废玻璃再生产玻璃活动，包括特制玻璃的生产', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1222, '305', '玻璃制品制造', '指任何形态玻璃制品的生产，以及利用废玻璃再生产玻璃制品的活动', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1223, '306', '玻璃纤维和玻璃纤维增强塑料制品制造', '', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1224, '307', '陶瓷制品制造', '', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1225, '308', '耐火材料制品制造', '', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1226, '309', '石墨及其他非金属矿物制品制造', '', '30', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1227, '311', '炼铁', '指用高炉法、直接还原法、熔融还原法等，将铁从矿石等含铁化合物中还原出来的生产活动', '31', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1228, '312', '炼钢', '指利用不同来源的氧（如空气、氧气）来氧化炉料（主要是生铁）所含杂质的金属提纯活动', '31', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1229, '313', '黑色金属铸造', '指铸铁件、铸钢件等各种成品、半成品的制造 ', '31', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1230, '314', '钢压延加工', '指通过热轧、冷加工、锻压和挤压等塑性加工使连铸坯、钢锭产生塑性变形，制成具有一定形状尺寸的钢材产品的生产活动', '31', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1231, '315', '铁合金冶炼', '指铁与其他一种或一种以上的金属或非金属元素组成的合金生产活动', '31', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1232, '321', '常用有色金属冶炼', '指通过熔炼、精炼、电解或其他方法从有色金属矿、废杂金属料等有色金属原料中提炼常用有色金属的生产活动', '32', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1233, '322', '贵金属冶炼', '指对金、银及铂族金属的提炼活动', '32', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1234, '323', '稀有稀土金属冶炼', '指钨钼、稀有轻金属、稀有高熔点金属、稀散金属、稀土金属及其他稀有稀土金属冶炼活动，但不包括钍和铀等放射性金属的冶炼加工', '32', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1235, '324', '有色金属合金制造', '指以有色金属为基体，加入一种或几种其他元素所构成的合金生产活动', '32', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1236, '325', '有色金属铸造', '指有色金属及其合金铸造的各种成品、半成品的制造 ', '32', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1237, '326', '有色金属压延加工', '', '32', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1238, '331', '结构性金属制品制造', '', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1239, '332', '金属工具制造', '', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1240, '333', '集装箱及金属包装容器制造', '', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1241, '334', '金属丝绳及其制品制造', '', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1242, '335', '建筑、安全用金属制品制造', '', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1243, '336', '金属表面处理及热处理加工', '指对外来的金属物件表面进行的电镀、镀层、抛光、喷涂、着色等专业性作业加工', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1244, '337', '搪瓷制品制造', '指在金属坯体表面涂搪瓷釉制成的，具有金属机械强度和瓷釉物化特征，及可装饰性的制品制造', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1245, '338', '金属制日用品制造', '指以不锈钢、铝等金属为主要原材料，加工制作各种日常生活用金属制品的生产活动', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1246, '339', '其他金属制品制造', '', '33', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1247, '341', '锅炉及原动设备制造', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1248, '342', '金属加工机械制造', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1249, '343', '物料搬运设备制造', '指在工厂、仓库、码头、站台及其他场地，进行起重、输送、装卸、搬运、堆码、存储等作业的机械设备以及车辆及其专门配套件的制造', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1250, '344', '泵、阀门、压缩机及类似机械制造', '指泵、真空设备、压缩机，液压和气压动力机械及类似机械和阀门的制造', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1251, '345', '轴承、齿轮和传动部件制造', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1252, '346', '烘炉、风机、衡器、包装等设备制造', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1253, '347', '文化、办公用机械制造', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1254, '348', '通用零部件制造', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1255, '349', '其他通用设备制造业', '', '34', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1256, '351', '采矿、冶金、建筑专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1257, '352', '化工、木材、非金属加工专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1258, '353', '食品、饮料、烟草及饲料生产专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1259, '354', '印刷、制药、日化及日用品生产专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1260, '355', '纺织、服装和皮革加工专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1261, '356', '电子和电工机械专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1262, '357', '农、林、牧、渔专用机械制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1263, '358', '医疗仪器设备及器械制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1264, '359', '环保、社会公共服务及其他专用设备制造', '', '35', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1265, '361', '汽车整车制造', '指由动力装置驱动，具有四个以上车轮的非轨道、无架线的车辆，并主要用于载送人员和（或）货物，牵引输送人员和（或）货物的车辆制造，还包括汽车发动机的制造', '36', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1266, '362', '改装汽车制造', '指利用外购汽车底盘改装各类汽车的制造', '36', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1267, '363', '低速载货汽车制造', '指最高时速限制在规定范围内的农用三轮或四轮等载货汽车的制造', '36', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1268, '364', '电车制造', '指以电作为动力，以屏板或可控硅方式控制的城市内交通工具和专用交通工具的制造', '36', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1269, '365', '汽车车身、挂车制造', '指其设计和技术特性需由汽车牵引，才能正常行驶的一种无动力的道路车辆的制造', '36', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1270, '366', '汽车零部件及配件制造', '指机动车辆及其车身的各种零配件的制造', '36', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1271, '371', '铁路运输设备制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1272, '372', '城市轨道交通设备制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1273, '373', '船舶及相关装置制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1274, '374', '航空、航天器及设备制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1275, '375', '摩托车制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1276, '376', '自行车制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1277, '377', '非公路休闲车及零配件制造', '指运动休闲车（不含跑车、山地车和越野车）、四轮休闲车、草地车、观光车等的制造', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1278, '379', '潜水救捞及其他未列明运输设备制造', '', '37', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1279, '381', '电机制造', '', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1280, '382', '输配电及控制设备制造', '', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1281, '383', '电线、电缆、光缆及电工器材制造', '', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1282, '384', '电池制造', '指以正极活性材料、负极活性材料，配合电介质，以密封式结构制成的，并具有一定公称电压和额定容量的化学电源的制造；包括一次性、不可充电和二次可充电，重复使用的干电池、蓄电池（含太阳能用蓄电池）的制造，以及利用氢与氧的合成转换成电能的装置，即燃料电池制造；不包括利用太阳光转换成电能的太阳能电池制造', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1283, '385', '家用电力器具制造', '指使用交流电源或电池的各种家用电器的制造', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1284, '386', '非电力家用器具制造', '', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1285, '387', '照明器具制造', '', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1286, '389', '其他电气机械及器材制造', '', '38', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1287, '391', '计算机制造', '', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1288, '392', '通信设备制造', '', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1289, '393', '广播电视设备制造', '', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1290, '394', '雷达及配套设备制造', '指雷达整机及雷达配套产品的制造', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1291, '395', '视听设备制造', '', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1292, '396', '电子器件制造', '', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1293, '397', '电子元件制造', '', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1294, '399', '其他电子设备制造', '指电子（气）物理设备及其他未列明的电子设备的制造', '39', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1295, '401', '通用仪器仪表制造', '', '40', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1296, '402', '专用仪器仪表制造', '', '40', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1297, '403', '钟表与计时仪器制造', '指各种钟、表、钟表机芯、时间记录装置、计时器的制造，还包括装有钟表机芯或同步马达，用以测量、记录或指示时间间隔的装置、定时开关，以及钟表零配件的制造', '40', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1298, '404', '光学仪器及眼镜制造', '', '40', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1299, '409', '其他仪器仪表制造业', '指上述未列明的仪器、仪表的制造', '40', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1300, '411', '日用杂品制造', '', '41', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1301, '412', '煤制品制造', '指用烟煤、无烟煤、褐煤及其他各种煤炭制成的煤砖、煤球等固体燃料制品的活动', '41', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1302, '413', '核辐射加工', '指核技术与同位素技术的应用，由核辐照站利用核技术对原有产品改良、改变性质并使其增值的加工活动', '41', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1303, '419', '其他未列明制造业', '', '41', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1304, '421', '金属废料和碎屑加工处理', '指从各种废料［包括固体废料、废水（液）、废气等］中回收，并使之便于转化为新的原材料，或适于进一步加工为金属原料的金属废料和碎屑的再加工处理活动，包括废旧电器、电子产品拆解回收', '42', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1305, '422', '非金属废料和碎屑加工处理', '指从各种废料［包括固体废料、废水（液）、废气等］中回收，或经过分类，使其适于进一步加工为新原料的非金属废料和碎屑的再加工处理活动', '42', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1306, '431', '金属制品修理', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1307, '432', '通用设备修理', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1308, '433', '专用设备修理', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1309, '434', '铁路、船舶、航空航天等运输设备修理', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1310, '435', '电气设备修理', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1311, '436', '仪器仪表修理', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1312, '439', '其他机械和设备修理业', '', '43', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1313, '441', '电力生产', '', '44', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1314, '442', '电力供应', '指利用电网出售给用户电能的输送与分配活动，以及供电局的供电活动', '44', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1315, '443', '热力生产和供应', ' 指利用煤炭、油、燃气等能源，通过锅炉等装置生产蒸汽和热水，或外购蒸汽、热水进行供应销售、供热设施的维护和管理的活动', '44', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1316, '450', '燃气生产和供应业', '指利用煤炭、油、燃气等能源生产燃气，或利用畜禽粪便和秸秆等农业、农村废弃物生产沼气，或外购液化石油气、天然气等燃气，并进行输配，向用户销售燃气的活动，以及对煤气、液化石油气、天然气输配及使用过程中的维修和管理活动', '45', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1317, '461', '自来水生产和供应', '指将天然水（地下水、地表水）经过蓄集、净化达到生活饮用水或其他用水标准，并向居民家庭、企业和其他用户供应的活动', '46', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1318, '462', '污水处理及其再生利用', '指对污水污泥的处理和处置，及净化后的再利用活动', '46', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1319, '469', '其他水的处理、利用与分配', '指将海水淡化处理，达到可以使用标准的生产活动，以及对雨水、微咸水等类似水进行收集、处理和利用活动', '46', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1320, '470', '房屋建筑业', '指房屋主体工程的施工活动；不包括主体工程施工前的工程准备活动', '47', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1321, '481', '铁路、道路、隧道和桥梁工程建筑', '', '48', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1322, '482', '水利和内河港口工程建筑', '', '48', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1323, '483', '海洋工程建筑', '指海上工程、海底工程、近海工程建筑活动，不含港口工程建筑活动', '48', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1324, '484', '工矿工程建筑', '指除厂房外的矿山和工厂生产设施、设备的施工和安装', '48', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1325, '485', '架线和管道工程建筑', '指建筑物外的架线、管道和设备的施工活动', '48', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1326, '489', '其他土木工程建筑', '', '48', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1327, '491', '电气安装', '指建筑物及土木工程构筑物内电气系统（含电力线路）的安装活动', '49', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1328, '492', '管道和设备安装', '指管道、取暖及空调系统等的安装活动', '49', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1329, '499', '其他建筑安装业', '', '49', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1330, '501', '建筑装饰业', '指对建筑工程后期的装饰、装修和清理活动，以及对居室的装修活动', '50', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1331, '502', '工程准备活动', '指房屋、土木工程建筑施工前的准备活动', '50', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1332, '503', '提供施工设备服务', '指为建筑工程提供配有操作人员的施工设备的服务', '50', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1333, '509', '其他未列明建筑业', '指上述未列明的其他工程建筑活动', '50', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1334, '511', '农、林、牧产品批发', '指未经过加工的农作物、林产品及牲畜、畜产品、鱼苗的批发和进出口活动，但不包括蔬菜、水果、肉、禽、蛋、奶及水产品的批发和进出口活动，包括以批发为目的的农副产品收购活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1335, '512', '食品、饮料及烟草制品批发', '指经过加工和制造的食品、饮料及烟草制品的批发和进出口活动，以及蔬菜、水果、肉、禽、蛋、奶及水产品的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1336, '513', '纺织、服装及家庭用品批发', '指纺织面料、纺织品、服装、鞋、帽及日杂品、家用电器、家具等生活日用品的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1337, '514', '文化、体育用品及器材批发', '指各类文具用品、体育用品、图书、报刊、音像、电子出版物、首饰、工艺美术品、收藏品及其他文化用品、器材的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1338, '515', '医药及医疗器材批发', '指各种化学药品、生物药品、中药及医疗器材的批发和进出口活动；包括兽用药的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1339, '516', '矿产品、建材及化工产品批发', '指煤及煤制品、石油制品、矿产品及矿物制品、金属材料、建筑和装饰装修材料以及化工产品的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1340, '517', '机械设备、五金产品及电子产品批发', '提供通用机械、专用设备、交通运输设备、电气机械、五金、交通器材、电料、计算机设备、通讯设备、电子产品、仪器仪表及办公用机械的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1341, '518', '贸易经纪与代理', '指代办商、商品经纪人、拍卖商的活动；专门为某一生产企业做销售代理的活动；为买卖双方提供贸易机会或代表委托人进行商品交易代理活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1342, '519', '其他批发业', '指上述未包括的批发和进出口活动', '51', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1343, '521', '综合零售', ' ', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1344, '522', '食品、饮料及烟草制品专门零售', '指专门经营粮油、食品、饮料及烟草制品的店铺零售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1345, '523', '纺织、服装及日用品专门零售', '指专门经营纺织面料、纺织品、服装、鞋、帽及各种生活日用品的店铺零售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1346, '524', '文化、体育用品及器材专门零售', '指专门经营文具、体育用品、图书、报刊、音像制品、首饰、工艺美术品、收藏品、照相器材及其他文化用品的店铺零售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1347, '525', '医药及医疗器材专门零售', '指专门经营各种化学药品、生物药品、中药、医疗用品及器材的店铺零售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1348, '526', '汽车、摩托车、燃料及零配件专门零售', '指专门经营汽车、摩托车、汽车部件、汽车零配件及燃料的店铺零售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1349, '527', '家用电器及电子产品专门零售 ', '指专门经营家用电器和计算机、软件及辅助设备、电子通信设备、电子元器件及办公设备的店铺零售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1350, '528', '五金、家具及室内装饰材料专门零售', '指专门经营五金用品、家具和装修材料的店铺零售活动，以及在家具、家居装饰、建材城（中心）及展销会上设摊位的销售活动', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1351, '529', '货摊、无店铺及其他零售业', '', '52', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1352, '531', '铁路旅客运输', '', '53', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1353, '532', '铁路货物运输', '', '53', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1354, '533', '铁路运输辅助活动', '', '53', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1355, '541', '城市公共交通运输', '指城市旅客运输活动 ', '54', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1356, '542', '公路旅客运输', '指城市以外道路的旅客运输活动', '54', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1357, '543', '道路货物运输', '指所有道路的货物运输活动', '54', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1358, '544', '道路运输辅助活动', '指与道路运输相关的运输辅助活动', '54', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1359, '551', '水上旅客运输', '', '55', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1360, '552', '水上货物运输', '', '55', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1361, '553', '水上运输辅助活动', '', '55', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1362, '561', '航空客货运输', '', '56', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1363, '562', '通用航空服务', '指使用民用航空器从事除公共航空运输以外的民用航空活动', '56', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1364, '563', '航空运输辅助活动', '', '56', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1365, '570', '管道运输业 ', '指通过管道对气体、液体等的运输活动', '57', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1366, '581', '装卸搬运', '', '58', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1367, '582', '运输代理业', '指与运输有关的代理及服务活动', '58', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1368, '591', '谷物、棉花等农产品仓储', ' ', '59', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1369, '599', '其他仓储业', '', '59', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1370, '601', '邮政基本服务', '指邮政企业提供的信件、印刷品、包裹、汇兑等邮政服务，以及国家规定的其他邮政服务；不包括邮政快递服务', '60', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1371, '602', '快递服务', '指在承诺的时限内快速完成的寄递服务', '60', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1372, '611', '旅游饭店', '指按照国家有关规定评定的旅游饭店和具有同等质量、水平的饭店活动', '61', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1373, '612', '一般旅馆', '指不具备评定旅游饭店和同等水平饭店的一般旅馆的活动', '61', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1374, '619', '其他住宿业', '指上述未列明的住宿服务', '61', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1375, '621', '正餐服务', '指在一定场所内提供以中餐、晚餐为主的各种中西式炒菜和主食，并由服务员送餐上桌的餐饮活动', '62', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1376, '622', '快餐服务', '指在一定场所内提供快捷、便利的就餐服务', '62', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1377, '623', '饮料及冷饮服务', '指在一定场所内以提供饮料和冷饮为主的服务', '62', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1378, '629', '其他餐饮业', '', '62', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1379, '631', '电信', '指利用有线、无线的电磁系统或者光电系统，传送、发射或者接收语音、文字、数据、图像以及其他任何形式信息的活动', '63', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1380, '632', '广播电视传输服务', '', '63', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1381, '633', '卫星传输服务', '指人造卫星的电信传输和广播电视传输服务', '63', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1382, '641', '互联网接入及相关服务', '指除基础电信运营商外，基于基础传输网络为存储数据、数据处理及相关活动，提供接入互联网的有关应用设施的服务', '64', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1383, '642', '互联网信息服务', '指除基础电信运营商外，通过互联网提供在线信息、电子邮箱、数据检索、网络游戏等信息服务', '64', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1384, '649', '其他互联网服务', '指除基础电信运营商服务、互联网接入及相关服务、互联网信息服务以外的其他未列明互联网服务', '64', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1385, '651', '软件开发', '指为用户提供计算机软件、信息系统或者设备中嵌入的软件，或者在系统集成、应用服务等技术服务时提供软件的开发和经营活动；包括基础软件、支撑软件、应用软件、嵌入式软件、信息安全软件、计算机（应用）系统、工业软件以及其他软件的开发和经营活动', '65', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1386, '652', '信息系统集成服务', '指基于需方业务需求进行的信息系统需求分析和系统设计，并通过结构化的综合布缆系统、计算机网络技术和软件技术，将各个分离的设备、功能和信息等集成到相互关联的、统一和协调的系统之中，以及为信息系统的正常运行提供支持的服务；包括信息系统设计、集成实施、运行维护等服务', '65', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1387, '653', '信息技术咨询服务', '指在信息资源开发利用、工程建设、人员培训、管理体系建设、技术支撑等方面向需方提供的管理或技术咨询评估服务；包括信息化规划、信息技术管理咨询、信息系统工程监理、测试评估、信息技术培训等', '65', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1388, '654', '数据处理和存储服务', '指供方向需方提供的信息和数据的分析、整理、计算、编辑、存储等加工处理服务，以及应用软件、业务运营平台、信息系统基础设施等的租用服务；包括各种数据库活动、网站内容更新、数据备份服务、数据存储服务、在线企业资源规划（ERP）、在线杀毒、电子商务平台、物流信息服务平台、服务器托管、虚拟主机等', '65', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1389, '655', '集成电路设计', '指IC设计服务，即企业开展的集成电路功能研发、设计等服务', '65', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1390, '659', '其他信息技术服务业', ' ', '65', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1391, '661', '中央银行服务', '指代表政府管理金融活动，并制定和执行货币政策，维护金融稳定，管理金融市场的特殊金融机构的活动', '66', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1392, '662', '货币银行服务', '指除中央银行以外的各类银行所从事存款、贷款和信用卡等货币媒介活动，还包括在中国开展货币业务的外资银行及分支机构的活动', '66', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1393, '663', '非货币银行服务', '指主要与非货币媒介机构以各种方式发放贷款有关的金融服务', '66', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1394, '664', '银行监管服务', '指代表政府管理银行业活动，制定并发布对银行业金融机构及其业务活动监督管理的规章、规则', '66', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1395, '671', '证券市场服务', '', '67', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1396, '672', '期货市场服务', '', '67', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1397, '673', '证券期货监管服务', '指由政府或行业自律组织进行的对证券期货市场的监管活动', '67', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1398, '674', '资本投资服务', '指经批准的证券投资机构的自营投资、直接投资活动，以及风险投资和其他投资活动', '67', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1399, '679', '其他资本市场服务', '指投资咨询服务、财务咨询服务、资信评级服务，以及其他未列明的资本市场的服务', '67', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1400, '681', '人身保险', '指以人的寿命和身体为保险标的的保险活动，包括人寿保险、健康保险和意外伤害保险', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1401, '682', '财产保险', '指除人身保险外的保险活动，包括财产损失保险、责任保险、信用保险、保证保险等', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1402, '683', '再保险', '指承担与其他保险公司承保的现有保单相关的所有或部分风险的活动', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1403, '684', '养老金', '指专为单位雇员或成员提供退休金补贴而设立的法定实体的活动(如基金、计划和/或项目等)，包括养老金定额补贴计划以及完全根据成员贡献确定补贴数额的个人养老金计划等', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1404, '685', '保险经纪与代理服务', '指保险代理人和经纪人进行的年金、保单和分保单的销售、谈判或促合活动', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1405, '686', '保险监管服务', '指根据国务院授权及相关法律、法规规定所履行的对保险市场的监督、管理活动 ', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1406, '689', '其他保险活动', '', '68', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1407, '691', '金融信托与管理服务', '指根据委托书、遗嘱或代理协议代表受益人管理的信托基金、房地产账户或代理账户等活动，还包括单位投资信托管理', '69', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1);
INSERT INTO `sys_trade` (`id`, `code`, `name`, `descrition`, `pcode`, `createTime`, `updateTime`, `vision`) VALUES
(1408, '692', '控股公司服务', '指通过一定比例股份，控制某个公司或多个公司的集团，控股公司仅控制股权，不直接参与经营管理，以及其他类似的活动', '69', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1409, '693', '非金融机构支付服务', '指非金融机构在收付款人之间作为中介机构提供下列部分或全部货币资金转移服务，包括网络支付、预付卡的发行与受理、银行卡收单及中国人民银行确定的其他支付等服务 ', '69', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1410, '694', '金融信息服务', '指向从事金融分析、金融交易、金融决策或者其他金融活动的用户提供可能影响金融市场的信息（或者金融数据）的服务 ', '69', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1411, '699', '其他未列明金融业', '指主要与除提供贷款以外的资金分配有关的其他金融媒介活动，包括保理活动、掉期、期权和其他套期保值安排、保单贴现公司的活动、金融资产的管理、金融交易处理与结算等活动，还包括信用卡交易的处理与结算、外币兑换等活动', '69', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1412, '701', '房地产开发经营', '指房地产开发企业进行的房屋、基础设施建设等开发，以及转让房地产开发项目或者销售、出租房屋等活动', '70', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1413, '702', '物业管理', '指物业服务企业按照合同约定，对房屋及配套的设施设备和相关场地进行维修、养护、管理，维护环境卫生和相关秩序的活动', '70', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1414, '703', '房地产中介服务', '指房地产咨询、房地产价格评估、房地产经纪等活动', '70', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1415, '704', '自有房地产经营活动', '指除房地产开发商、房地产中介、物业公司以外的单位和居民住户对自有房地产（土地、住房、生产经营用房和办公用房）的买卖和以营利为目的的租赁活动，以及房地产管理部门和企事业、机关提供的非营利租赁服务，还包括居民居住自有住房所形成的住房服务', '70', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1416, '709', '其他房地产业', ' ', '70', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1417, '711', '机械设备租赁', '指不配备操作人员的机械设备的租赁服务', '71', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1418, '712', '文化及日用品出租', ' ', '71', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1419, '721', '企业管理服务', '', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1420, '722', '法律服务', '指律师、公证、仲裁、调解等活动', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1421, '723', '咨询与调查', '', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1422, '724', '广告业', '指在报纸、期刊、路牌、灯箱、橱窗、互联网、通讯设备及广播电影电视等媒介上为客户策划、制作的有偿宣传活动', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1423, '725', '知识产权服务', '指对专利、商标、版权、著作权、软件、集成电路布图设计等的代理、转让、登记、鉴定、评估、认证、咨询、检索等活动', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1424, '726', '人力资源服务', '指提供公共就业、职业中介、劳务派遣、职业技能鉴定、劳动力外包等服务', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1425, '727', '旅行社及相关服务', '指为社会各界提供商务、组团和散客旅游的服务，包括向顾客提供咨询、旅游计划和建议、日程安排、导游、食宿和交通等服务', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1426, '728', '安全保护服务', '指为社会提供的专业化、有偿安全防范服务', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1427, '729', '其他商务服务业', '', '72', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1428, '731', '自然科学研究和试验发展', '', '73', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1429, '732', '工程和技术研究和试验发展', '', '73', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1430, '733', '农业科学研究和试验发展', '', '73', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1431, '734', '医学研究和试验发展', '', '73', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1432, '735', '社会人文科学研究', '', '73', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1433, '741', '气象服务', '指从事气象探测、预报、服务和气象灾害防御、气候资源利用等活动', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1434, '742', '地震服务', '指地震监测预报、震灾预防和紧急救援等防震减灾活动', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1435, '743', '海洋服务', '', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1436, '744', '测绘服务', ' ', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1437, '745', '质检技术服务', '指通过专业技术手段对动植物、工业产品、商品、专项技术、成果及其他需要鉴定的物品所进行的检测、检验、测试、鉴定等活动，还包括产品质量、计量、认证和标准的管理活动', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1438, '746', '环境与生态监测', ' ', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1439, '747', '地质勘查 ', '指对矿产资源、工程地质、科学研究进行的地质勘查、测试、监测、评估等活动', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1440, '748', '工程技术', '', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1441, '749', '其他专业技术服务业', ' ', '74', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1442, '751', '技术推广服务', '指将新技术、新产品、新工艺直接推向市场而进行的相关技术活动，以及技术推广和转让活动', '75', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1443, '752', '科技中介服务', '指为科技活动提供社会化服务与管理，在政府、各类科技活动主体与市场之间提供居间服务的组织，主要开展信息交流、技术咨询、技术孵化、科技评估和科技鉴证等活动', '75', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1444, '759', '其他科技推广和应用服务业', '指除技术推广、科技中介以外的其他科技服务，但不包括短期的日常业务活动', '75', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1445, '761', '防洪除涝设施管理', '指对江河湖泊开展的河道、堤防、岸线整治等活动及对河流、湖泊、行蓄洪区和沿海的防洪设施的管理活动，包括防洪工程设施的管理及运行维护等', '76', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1446, '762', '水资源管理', '指对水资源的开发、利用、配置、节约等活动', '76', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1447, '763', '天然水收集与分配', '指通过各种方式收集、分配天然水资源的活动，包括通过蓄水（水库、塘堰等）、提水、引水和井等水源工程，收集和分配各类地表和地下淡水资源的活动', '76', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1448, '764', '水文服务', '指通过布设水文站网，对水的时空分布规律进行监测、收集和分析处理的活动', '76', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1449, '769', '其他水利管理业', '', '76', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1450, '771', '生态保护', '', '77', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1451, '772', '环境治理业', '', '77', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1452, '781', '市政设施管理', '指污水排放、雨水排放、路灯、道路、桥梁、隧道、广场、涵洞、防空等城乡公共设施的抢险、紧急处理、管理等活动', '78', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1453, '782', '环境卫生管理', '指城乡生活垃圾的清扫、收集、运输、处理和处置、管理等活动，以及对公共厕所、化粪池的清扫、收集、运输、处理和处置、管理等活动', '78', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1454, '783', '城乡市容管理', ' 指城市户外标志、外景照明、公共建筑物、施工围档、材料堆放、渣土清运、竣工清理等管理活动；乡、村户外标志、村容镇貌、柴草堆放、树木花草养护等管理活动', '78', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1455, '784', '绿化管理', '指城市绿地和生产绿地、防护绿地、附属绿地等的管理活动 ', '78', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1456, '785', '公园和游览景区管理', ' ', '78', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1457, '791', '家庭服务', '指雇佣家庭雇工的家庭住户和家庭户的自营活动，以及在雇主家庭从事有报酬的家庭雇工的活动，包括钟点工和居住在雇主家里的家政劳动者的活动', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1458, '792', '托儿所服务', '指社会、街道、个人办的面向不足三岁幼儿的看护活动，可分为全托、日托、半托，或计时的服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1459, '793', '洗染服务', '指专营的洗染店以及在宾馆、饭店内常设的独立（或相对独立）洗染服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1460, '794', '理发及美容服务', '指专业理发、美容保健服务，以及在宾馆、饭店或娱乐场所常设的独立（或相对独立）理发、美容保健服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1461, '795', '洗浴服务', '指专业洗浴室以及在宾馆、饭店或娱乐场所常设的独立（或相对独立）洗浴、温泉、SPA等服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1462, '796', '保健服务', '指专业保健场所以及在宾馆、饭店或娱乐场所开设的独立（或相对独立）保健按摩、足疗等服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1463, '797', '婚姻服务', '指婚姻介绍、婚庆典礼等服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1464, '798', '殡葬服务', '指与殡葬有关的各类服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1465, '799', '其他居民服务业', '指上述未包括的居民服务', '79', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1466, '801', '汽车、摩托车修理与维护', '', '80', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1467, '802', '计算机和办公设备维修', '指对计算机硬件及系统环境的维护和修理活动', '80', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1468, '803', '家用电器修理', '', '80', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1469, '809', '其他日用产品修理业', '', '80', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1470, '811', '清洁服务', '指对建筑物、办公用品、家庭用品的清洗和消毒服务；包括专业公司和个人提供的清洗服务', '81', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1471, '819', '其他未列明服务业', '', '81', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1472, '821', '学前教育', '指经教育行政部门批准举办的对学龄前幼儿进行保育和教育的活动', '82', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1473, '822', '初等教育', '指《义务教育法》规定的小学教育以及成人小学教育（含扫盲）的活动', '82', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1474, '823', '中等教育', ' ', '82', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1475, '824', '高等教育', '', '82', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1476, '825', '特殊教育', '指为残障儿童提供的特殊教育活动', '82', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1477, '829', '技能培训、教育辅助及其他教育', '指我国学校教育制度以外，经教育主管部门、劳动部门或有关主管部门批准，由政府部门、企业、社会办的职业培训、就业培训和各种知识、技能的培训活动，以及教育辅助和其他教育活动', '82', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1478, '831', '医院', ' ', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1479, '832', '社区医疗与卫生院', '', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1480, '833', '门诊部（所）', '指门诊部、诊所、医务室、卫生站、护理院等卫生机构的活动', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1481, '834', '计划生育技术服务活动', '指各地区计划生育技术服务机构的活动', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1482, '835', '妇幼保健院（所、站）', '指非医院的妇女及婴幼儿保健活动', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1483, '836', '专科疾病防治院（所、站）', '指对各种专科疾病进行预防及群众预防的活动', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1484, '837', '疾病预防控制中心', '指卫生防疫站、卫生防病中心、预防保健中心等活动', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1485, '839', '其他卫生活动', '指急救中心及其他未列明的卫生机构的活动', '83', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1486, '841', '提供住宿社会工作', '指提供临时、长期住宿的福利和救济活动', '84', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1487, '842', '不提供住宿社会工作', '指为孤儿、老人、残疾人、智障、军烈属、五保户、低保户、受灾群众及其他弱势群体提供不住宿的看护、帮助活动，以及慈善、募捐等其他社会工作的活动', '84', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1488, '851', '新闻业', '', '85', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1489, '852', '出版业', ' ', '85', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1490, '861', '广播', '指广播节目的现场制作、播放及其他相关活动，还包括互联网广播', '86', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1491, '862', '电视', '指有线和无线电视节目的现场制作、播放及其他相关活动，还包括互联网电视', '86', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1492, '863', '电影和影视节目制作', '指电影、电视和录像（含以磁带、光盘为载体）节目的制作活动，该节目可以作为电视、电影播出、放映，也可以作为出版、销售的原版录像带（或光盘），还可以在其他场合宣传播放，还包括影视节目的后期制作，但不包括电视台制作节目的活动', '86', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1493, '864', '电影和影视节目发行', '不含录像制品（以磁带、光盘为载体）的发行', '86', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1494, '865', '电影放映', '指专业电影院以及设在娱乐场所独立（或相对独立）的电影放映等活动', '86', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1495, '866', '录音制作', '指从事录音节目、音乐作品的制作活动，其节目或作品可以在广播电台播放，也可以制作成出版、销售的原版录音带（磁带或光盘），还可以在其他宣传场合播放，但不包括广播电台制作节目的活动', '86', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1496, '871', '文艺创作与表演', '指文学、美术创造和表演艺术（如戏曲、歌舞、话剧、音乐、杂技、马戏、木偶等表演艺术）等活动', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1497, '872', '艺术表演场馆', '指有观众席、舞台、灯光设备，专供文艺团体演出的场所管理活动', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1498, '873', '图书馆与档案馆', '', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1499, '874', '文物及非物质文化遗产保护', '指对具有历史、文化、艺术、科学价值，并经有关部门鉴定，列入文物保护范围的不可移动文物的保护和管理活动；对我国口头传统和表现形式，传统表演艺术，社会实践、意识、节庆活动，有关的自然界和宇宙的知识和实践，传统手工艺等非物质文化遗产的保护和管理活动', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1500, '875', '博物馆', '指收藏、研究、展示文物和标本的博物馆的活动，以及展示人类文化、艺术、科技、文明的美术馆、艺术馆、展览馆、科技馆、天文馆等管理活动', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1501, '876', '烈士陵园、纪念馆', '', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1502, '877', '群众文化活动', '指对各种主要由城乡群众参与的文艺类演出、比赛、展览等公益性文化活动的管理活动', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1503, '879', '其他文化艺术业', '', '87', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1504, '881', '体育组织', '指专业从事体育比赛、训练、辅导和管理的组织的活动', '88', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1505, '882', '体育场馆', '指可供观赏比赛的场馆和专供运动员训练用的场地管理活动', '88', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1506, '883', '休闲健身活动', '指主要面向社会开放的休闲健身场所和其他体育娱乐场所的管理活动', '88', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1507, '889', '其他体育', '指上述未包括的体育活动', '88', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1508, '891', '室内娱乐活动', '指室内各种娱乐活动和以娱乐为主的活动', '89', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1509, '892', '游乐园', '指配有大型娱乐设施的室外娱乐活动及以娱乐为主的活动', '89', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1510, '893', '彩票活动', '指各种形式的彩票活动', '89', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1511, '894', '文化、娱乐、体育经纪代理', ' ', '89', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1512, '899', '其他娱乐业', '指公园、海滩和旅游景点内小型设施的娱乐活动及其他娱乐活动', '89', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1513, '900', '中国共产党机关', '', '90', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1514, '911', '国家权力机构', '指宪法规定的全国和地方各级人民代表大会及常委会机关的活动', '91', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1515, '912', '国家行政机构', '指国务院及所属行政主管部门的活动；县以上地方各级人民政府及所属各工作部门的活动；乡（镇）级地方人民政府的活动；行政管理部门下属的监督、检查机构的活动', '91', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1516, '913', '人民法院和人民检察院', '指宪法规定的人民法院和人民检察院的活动', '91', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1517, '919', '其他国家机构', '指其他未另列明的国家机构的活动', '91', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1518, '921', '人民政协', '指全国人民政治协商会议及各级人民政协的活动', '92', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1519, '922', '民主党派', '', '92', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1520, '930', '社会保障', '指依据国家有关规定开展的各种社会保障活动', '93', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1521, '941', '群众团体', '指不在社会团体登记管理机关登记的群众团体的活动', '94', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1522, '942', '社会团体', '指依法在社会团体登记管理机关登记的单位的活动', '94', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1523, '943', '基金会', '指利用自然人、法人或者其他组织捐赠的财产，以从事公益事业为目的，按照国务院颁布的《基金会管理条例》的规定成立的非营利性法人的活动', '94', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1524, '944', '宗教组织', '指在民政部门登记的宗教团体的活动和在政府宗教事务部门登记的宗教活动场所的活动', '94', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1525, '951', '社区自治组织', '指城市、镇的居民通过选举产生的群众性自治组织的管理活动', '95', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1526, '952', '村民自治组织', '指农村村民通过选举产生的群众性自治组织的管理活动', '95', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1527, '960', '国际组织', '指联合国和其他国际组织驻我国境内机构等的活动', '96', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1528, '011', '谷物种植', '指以收获籽实为主，供人类食用的农作物的种植，如稻谷、小麦、玉米等农作物的种植', '01', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1529, '01', '农业', '指对各种农作物的种植', 'A', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1530, '02', '林业', '', 'A', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1531, '03', '畜牧业', '指为了获得各种畜禽产品而从事的动物饲养、捕捉活动', 'A', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1532, '04', '渔业', '', 'A', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1533, '05', '农、林、牧、渔服务业', '', 'A', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1534, '06', '煤炭开采和洗选业', '指对各种煤炭的开采、洗选、分级等生产活动；不包括煤制品的生产和煤炭勘探活动 ', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1535, '07', '石油和天然气开采业', '指在陆地或海洋，对天然原油、液态或气态天然气的开采，对煤矿瓦斯气（煤层气）的开采；为运输目的所进行的天然气液化和从天然气田气体中生产液化烃的活动，还包括对含沥青的页岩或油母页岩矿的开采，以及对焦油沙矿进行的同类作业', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1536, '08', '黑色金属矿采选业', '', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1537, '09', '有色金属矿采选业', '指对常用有色金属矿、贵金属矿，以及稀有稀土金属矿的开采、选矿活动', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1538, '10', '非金属矿采选业', '', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1539, '11', '开采辅助活动', '指为煤炭、石油和天然气等矿物开采提供的服务', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1540, '12', '其他采矿业', '', 'B', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1541, '13', '农副食品加工业', '指直接以农、林、牧、渔业产品为原料进行的谷物磨制、饲料加工、植物油和制糖加工、屠宰及肉类加工、水产品加工，以及蔬菜、水果和坚果等食品的加工', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1542, '14', '食品制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1543, '15', '酒、饮料和精制茶制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1544, '16', '烟草制品业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1545, '17', '纺织业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1546, '18', '纺织服装、服饰业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1547, '19', '皮革、毛皮、羽毛及其制品和制鞋业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1548, '20', '木材加工和木、竹、藤、棕、草制品业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1549, '21', '家具制造业 ', '指用木材、金属、塑料、竹、藤等材料制作的，具有坐卧、凭倚、储藏、间隔等功能，可用于住宅、旅馆、办公室、学校、餐馆、医院、剧场、公园、船舰、飞机、机动车等任何场所的各种家具的制造', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1550, '22', '造纸和纸制品业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1551, '23', '印刷和记录媒介复制业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1552, '24', '文教、工美、体育和娱乐用品制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1553, '25', '石油加工、炼焦和核燃料加工业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1554, '26', '化学原料和化学制品制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1555, '27', '医药制造业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1556, '28', '化学纤维制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1557, '29', '橡胶和塑料制品业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1558, '30', '非金属矿物制品业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1559, '31', '黑色金属冶炼和压延加工业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1560, '32', '有色金属冶炼和压延加工业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1561, '33', '金属制品业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1562, '34', '通用设备制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1563, '35', '专用设备制造业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1564, '36', '汽车制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1565, '37', '铁路、船舶、航空航天和其他运输设备制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1566, '38', '电气机械和器材制造业 ', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1567, '39', '计算机、通信和其他电子设备制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1568, '40', '仪器仪表制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1569, '41', '其他制造业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1570, '42', '废弃资源综合利用业', '指废弃资源和废旧材料回收加工', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1571, '43', '金属制品、机械和设备修理业', '', 'C', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1572, '44', '电力、热力生产和供应业', '', 'D', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1573, '45', '燃气生产和供应业', '', 'D', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1574, '46', '水的生产和供应业', '', 'D', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1575, '47', '房屋建筑业', '', 'E', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1576, '48', '土木工程建筑业', '指土木工程主体的施工活动；不包括施工前的工程准备活动', 'E', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1577, '49', '建筑安装业', '指建筑物主体工程竣工后，建筑物内各种设备的安装活动，以及施工中的线路敷设和管道安装活动；不包括工程收尾的装饰，如对墙面、地板、天花板、门窗等处理活动', 'E', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1578, '50', '建筑装饰和其他建筑业', '', 'E', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1579, '51', '批发业', '指向其他批发或零售单位（含个体经营者）及其他企事业单位、机关团体等批量销售生活用品、生产资料的活动，以及从事进出口贸易和贸易经纪与代理的活动，包括拥有货物所有权，并以本单位(公司)的名义进行交易活动,也包括不拥有货物的所有权，收取佣金的商品代理、商品代售活动；本类还包括各类商品批发市场中固定摊位的批发活动，以及以销售为目的的收购活动', 'F', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1580, '52', '零售业', '指百货商店、超级市场、专门零售商店、品牌专卖店、售货摊等主要面向最终消费者（如居民等）的销售活动，以互联网、邮政、电话、售货机等方式的销售活动，还包括在同一地点，后面加工生产，前面销售的店铺（如面包房）；谷物、种子、饲料、牲畜、矿产品、生产用原料、化工原料、农用化工产品、机械设备（乘用车、计算机及通信设备除外）等生产资料的销售不作为零售活动；多数零售商对其销售的货物拥有所有权，但有些则是充当委托人的代理人，进行委托销售或以收取佣金的方式进行销售', 'F', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1581, '53', '铁路运输业', '指铁路客运、货运及相关的调度、信号、机车、车辆、检修、工务等活动；不包括铁路系统所属的机车、车辆及信号通信设备的制造厂（公司）、建筑工程公司、商店、学校、科研所、医院等', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1582, '54', '道路运输业', '', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1583, '55', '水上运输业', '', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1584, '56', '航空运输业 ', '', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1585, '57', '管道运输业 ', '', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1586, '58', '装卸搬运和运输代理业', '', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1587, '59', '仓储业 ', '指专门从事货物仓储、货物运输中转仓储，以及以仓储为主的货物送配活动，还包括以仓储为目的的收购活动', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1588, '60', '邮政业', '', 'G', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1589, '61', '住宿业', '指为旅行者提供短期留宿场所的活动，有些单位只提供住宿，也有些单位提供住宿、饮食、商务、娱乐一体的服务，本类不包括主要按月或按年长期出租房屋住所的活动', 'H', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1590, '62', '餐饮业', '指通过即时制作加工、商业销售和服务性劳动等，向消费者提供食品和消费场所及设施的服务', 'H', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1591, '63', '电信、广播电视和卫星传输服务', '', 'I', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1592, '64', '互联网和相关服务', '', 'I', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1593, '65', '软件和信息技术服务业', '指对信息传输、信息制作、信息提供和信息接收过程中产生的技术问题或技术需求所提供的服务 ', 'I', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1594, '66', '货币金融服务', '', 'J', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1595, '67', '资本市场服务', '', 'J', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1596, '68', '保险业', '', 'J', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1597, '69', '其他金融业', '', 'J', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1598, '70', '房地产业', '', 'K', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1599, '71', '租赁业', '', 'L', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1600, '72', '商务服务业', '', 'L', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1601, '73', '研究和试验发展', '指为了增加知识（包括有关自然、工程、人类、文化和社会的知识），以及运用这些知识创造新的应用，所进行的系统的、创造性的活动；该活动仅限于对新发现、新理论的研究，新技术、新产品、新工艺的研制研究与试验发展，包括基础研究、应用研究和试验发展', 'M', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1602, '74', '专业技术服务业', '', 'M', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1603, '75', '科技推广和应用服务业', '', 'M', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1604, '76', '水利管理业', '', 'N', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1605, '77', '生态保护和环境治理业', '', 'N', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1606, '78', '公共设施管理业', '', 'N', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1607, '79', '居民服务业', '', 'O', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1608, '80', '机动车、电子产品和日用产品修理业', '', 'O', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1609, '81', '其他服务业', ' ', 'O', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1610, '82', '教育', '', 'P', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1611, '83', '卫生', '', 'Q', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1612, '84', '社会工作', '指提供慈善、救助、福利、护理、帮助等社会工作的活动', 'Q', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1613, '85', '新闻和出版业', '', 'R', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1614, '86', '广播、电视、电影和影视录音制作业', '指对广播、电视、电影、影视录音内容的制作、编导、主持、播出、放映等活动；不包括广播电视信号的传输和接收活动', 'R', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1615, '87', '文化艺术业', '', 'R', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1616, '88', '体育', '', 'R', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1617, '89', '娱乐业', '', 'R', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1618, '90', '中国共产党机关', '', 'S', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1619, '91', '国家机构', '', 'S', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1620, '92', '人民政协、民主党派', '', 'S', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1621, '93', '社会保障', '', 'S', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1622, '94', '群众团体、社会团体和其他成员组织', '', 'S', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1623, '95', '基层群众自治组织', '指通过选举产生的社区性组织，该组织为本地区提供一般性管理、调解、治安、优抚、计划生育等服务', 'S', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1624, '96', '国际组织', '', 'T', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1625, 'A', '农、林、牧、渔业', '本门类包括01～05大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1626, 'B', '采矿业', '本类包括06～12大类，采矿业指对固体（如煤和矿物）、液体（如原油）或气体（如天然气）等自然产生的矿物的采掘；包括地下或地上采掘、矿井的运行，以及一般在矿址或矿址附近从事的旨在加工原材料的所有辅助性工作，例如碾磨、选矿和处理，均属本类活动；还包括使原料得以销售所需的准备工作；不包括水的蓄集、净化和分配，以及地质勘查、建筑工程活动', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1627, 'C', '制造业', '本门类包括13～43大类，指经物理变化或化学变化后成为新的产品，不论是动力机械制造，还是手工制作；也不论产品是批发销售，还是零售，均视为制造;建筑物中的各种制成品、零部件的生产应视为制造，但在建筑预制品工地，把主要部件组装成桥梁、仓库设备、铁路与高架公路、升降机与电梯、管道设备、喷水设备、暖气设备、通风设备与空调设备，照明与安装电线等组装活动，以及建筑物的装置，均列为建筑活动 ', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1628, 'D', '电力、热力、燃气及水生产和供应业', '本门类包括44～46大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1629, 'E', '建筑业', '本门类包括47～50大类 ', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1630, 'F', '批发和零售业', '本门类包括51和52大类，指商品在流通环节中的批发活动和零售活动', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1631, 'G', '交通运输、仓储和邮政业', '本门类包括53～60大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1632, 'H', '住宿和餐饮业', '本门类包括61和62大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1633, 'I', '信息传输、软件和信息技术服务业', '本门类包括63～65大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1634, 'J', '金融业', '本门类包括66～69大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1635, 'K', '房地产业', '本门类包括70大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1636, 'L', '租赁和商务服务业', '本门类包括71和72大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1637, 'M', '科学研究和技术服务业', '本门类包括73～75大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1638, 'N', '水利、环境和公共设施管理业', '本门类包括76～78大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1639, 'O', '居民服务、修理和其他服务业', '本门类包括79～81大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1640, 'P', '教育', '本门类包括82大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1641, 'Q', '卫生和社会工作', '本门类包括83和84大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1642, 'R', '文化、体育和娱乐业', '本门类包括85～89大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1643, 'S', '公共管理、社会保障和社会组织', '本类包括90～95大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1),
(1644, 'T', '国际组织', '本门类包括96大类', '0', '2013-09-27 10:55:16', '2013-09-27 10:55:29', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(2, 'blp', 'XyfkEYykblRSJJD55fXi502OWXavui30', '$2y$13$tUqEY5MZBiQTzfsQC1SNV.nRJl09g45G077/kga06.AMzLXTIYYCe', 'JoR21HvnCCTMPot6Rc8mA5iNF-O6uDfL_1478846173', 'buyadong@126.com', 10, 10, 1478844263, 1478846173),
(4, 'test', 'urcuBi2IL3qUpA3exWtjooeIATf4bY6W', '$2y$13$RxHpNdrdC6qdW1n4Xyto2eECptWOvdUrjiJr0CtHaBO5kegmU8Hiq', NULL, 'buliping@sict.ac.cn', 10, 10, 1478846192, 1478846192);

-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `priorityID` varchar(8) NOT NULL,
  `trueName` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `memo` varchar(128) DEFAULT NULL,
  `isLock` tinyint(4) NOT NULL DEFAULT '0',
  `lockTime` varchar(32) DEFAULT NULL,
  `lockNum` int(11) NOT NULL DEFAULT '0',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validTimeStart` varchar(32) DEFAULT NULL,
  `validTimeEnd` varchar(32) DEFAULT NULL,
  `eid` varchar(16) NOT NULL DEFAULT '0',
  `adminLevel` tinyint(4) NOT NULL DEFAULT '2',
  `pbinding` varchar(32) DEFAULT '0',
  `loginCount` int(11) DEFAULT '0' COMMENT '登录次数',
  `visibleOrgs` varchar(512) DEFAULT NULL COMMENT 'å¯è§éƒ¨é—¨ï¼ŒåŠè§’é€—å·åˆ†éš”',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- 转存表中的数据 `userinfo`
--

INSERT INTO `userinfo` (`id`, `userName`, `password`, `priorityID`, `trueName`, `email`, `phone`, `memo`, `isLock`, `lockTime`, `lockNum`, `createTime`, `validTimeStart`, `validTimeEnd`, `eid`, `adminLevel`, `pbinding`, `loginCount`, `visibleOrgs`) VALUES
(3, 'ac_voip', '911215acb4032a75531d2e549d2d8045', '5', '', '', '', '', 1, '1391761653', 0, '0000-00-00 00:00:00', '2013-09-25', '2013-12-24', '0', 2, '0', 1, NULL),
(5, 'gaozj', '912c212a51797df0d74308526d532299', '1', '', '', '', '', 0, '', 0, '2013-10-17 18:04:24', '2014-02-11', '2014-05-12', '0', 2, '0', 1, NULL),
(9, 'wyh@', '39865ad1f1493beaaffd17c699386cd9', '2', '', 'wangyahui@sict.ac.cn', '18900923389', '', 0, '', 0, '2013-12-06 14:30:25', '2015-01-19', '2015-04-19', '0', 2, '0', 2, NULL),
(11, 'lfy', 'e10adc3949ba59abbe56e057f20f883e', '5', '', '', '', '', 0, '', 0, '2013-12-06 20:21:51', '2013-12-06', '2014-03-06', '0', 2, '0', 1, NULL),
(13, 'shj', '4ce847e92adfce6bddeeee4c264ab02c', '5', '', '', '', '', 0, '', 0, '2013-12-06 20:49:22', '2013-12-06', '2014-03-06', '0', 2, '0', 1, NULL),
(15, 'pbh', '7e62af0ce89cc7a82c71b579c4de60ea', '5', '', '', '', '', 0, '', 0, '2013-12-07 15:49:11', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(17, 'dqc', '6659d9e426bc34eb406da120b965ac94', '5', '', '', '', '', 0, '', 0, '2013-12-07 15:49:26', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(19, 'lhx', 'c7a23cae2d51cfdbd0c3d950f3d9c7c6', '5', '', '', '', '', 0, '', 0, '2013-12-07 15:49:41', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(21, 'wxd', '806b3b64861ada53e4cfcc7df68ae821', '5', '', '', '', '', 0, '1386385424', 2, '2013-12-07 15:49:56', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(23, 'hzl', '31abbf083d9d21e61b88f6b4b6f1262f', '5', '', '', '', '', 0, '', 0, '2013-12-07 15:50:14', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(25, 'yjz', 'fb94a06b85623a0e71c56ebd0be9ae20', '5', '', '', '', '', 0, NULL, 0, '2013-12-07 16:00:00', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(27, 'blp', '41129a4824eaa3f50ec0bbd04c337128', '5', '', '', '', '', 1, '1403510089', 0, '2013-12-07 16:02:25', '2013-12-07', '2014-03-07', '0', 2, '0', 1, NULL),
(29, 'nqh', '960ad2a50b9701c89de74cf85130546c', '6', '', '', '', '', 0, '', 0, '2013-12-23 21:24:52', '2013-12-23', '2014-03-23', '0', 2, '0', 1, NULL),
(31, 'sunt', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '', '', '', 0, '', 0, '2013-12-27 20:58:30', '2013-12-27', '2014-03-27', '0', 2, '0', 1, NULL),
(34, 'lidong', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-05-28 17:46:03', NULL, NULL, '6', 2, '0', 1, NULL),
(35, 'wangli', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-05-28 17:47:41', NULL, NULL, '8', 2, '0', 1, NULL),
(36, 'test', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-06-04 20:35:02', NULL, NULL, '9', 2, '0', 1, NULL),
(37, 'admin1', '4a0639202e99c38c1326e463a9c8ef86', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-06-06 14:43:18', NULL, NULL, '7', 2, '0', 1, NULL),
(40, 'happyqq', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-06-23 20:00:32', NULL, NULL, '67', 2, '0', 1, NULL),
(41, 'mytest', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-07-30 19:28:54', NULL, NULL, '554', 2, '0', 1, NULL),
(60, 'telpo', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '', '', '', 0, '', 0, '2014-09-04 04:06:16', '2014-09-04', '2014-12-03', '9ff55a98', 1, '0', 1, NULL),
(62, 'www', 'e10adc3949ba59abbe56e057f20f883e', '2', '', '', '', '', 0, '', 0, '2014-09-04 04:13:46', '2014-09-04', '2014-12-03', '9ff55a98', 2, '0', 1, NULL),
(66, '801', 'd41d8cd98f00b204e9800998ecf8427e', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-09-04 09:36:36', NULL, NULL, '9ff55a98', 2, '0', 1, NULL),
(68, 'admin161', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-11-25 00:24:13', NULL, NULL, '910', 0, '0', 7, NULL),
(70, 'admint1', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-01 03:34:33', NULL, NULL, '845', 0, '0', 1, NULL),
(72, 'admint2', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-01 03:41:21', NULL, NULL, '341', 0, '0', 10, NULL),
(74, 'admint3', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-04 01:20:56', NULL, NULL, '667', 0, '0', 2, NULL),
(76, 'admint4', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-04 02:00:39', NULL, NULL, '955', 0, '0', 2, NULL),
(78, 'admint5', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-05 01:13:35', NULL, NULL, '758', 0, '0', 2, NULL),
(80, 'admint6', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-05 01:34:13', NULL, NULL, '222', 0, '0', 6, NULL),
(82, 'admina', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-05 02:53:09', NULL, NULL, '883', 0, '0', 23, NULL),
(84, 'admint6_1', 'a66abb5684c45962d887564f08346e8d', '2', '', '', '', '', 0, '', 0, '2014-12-05 05:14:28', '2014-12-05', '2015-03-05', '222', 2, '0', 2, NULL),
(86, 'admina_1', 'e10adc3949ba59abbe56e057f20f883e', '2', '', '', '', '', 0, '', 3, '2014-12-05 05:23:50', '2014-12-12', '2015-03-12', '883', 2, '0', 2, NULL),
(88, 'admina_2', 'e10adc3949ba59abbe56e057f20f883e', '2', '', '', '', '', 0, '', 0, '2014-12-05 06:04:55', '2014-12-05', '2015-03-05', '883', 2, '0', 3, NULL),
(90, 'admint7', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-08 01:08:32', NULL, NULL, '243', 0, '0', 8, NULL),
(92, 'admin952', '21218cca77804d2ba1922c33e0151105', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-12-17 02:19:57', NULL, NULL, '952', 0, '0', 0, NULL),
(94, 'admint8', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-18 08:01:18', NULL, NULL, '523', 0, '0', 2, NULL),
(96, 'admint9', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-18 08:23:39', NULL, NULL, '998', 0, '0', 2, NULL),
(98, 'admint10', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-18 09:07:19', NULL, NULL, '579', 0, '0', 3, NULL),
(100, 'admint11', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-19 01:20:09', NULL, NULL, '209', 0, '0', 7, NULL),
(102, 'admint12', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-19 02:55:12', NULL, NULL, '95452', 0, '0', 2, NULL),
(104, 'suntao88088@19323', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-22 05:16:20', NULL, NULL, '19323', 0, '0', 9, NULL),
(106, 'admin86991', '21218cca77804d2ba1922c33e0151105', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-12-23 01:40:14', NULL, NULL, '86991', 0, '0', 0, NULL),
(108, 'admint13', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-23 03:38:22', NULL, NULL, '19369', 0, '0', 8, NULL),
(110, 'jiaqiong', '21218cca77804d2ba1922c33e0151105', '1', NULL, NULL, NULL, NULL, 0, '1419316252', 1, '2014-12-23 06:28:35', NULL, NULL, '45639', 0, '0', 0, NULL),
(112, 'li', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-23 06:37:04', NULL, NULL, '14517', 0, '0', 0, NULL),
(114, 'admin68844', '21218cca77804d2ba1922c33e0151105', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-12-24 01:52:04', NULL, NULL, '68844', 0, '0', 0, NULL),
(116, 'adminqq@48903', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-24 01:55:01', NULL, NULL, '48903', 0, '0', 5, NULL),
(118, 'admin@test', '32522c469b98e7c0b6d608f47da78cf4', '1', NULL, NULL, NULL, NULL, 0, '1419565228', 1, '2014-12-24 02:13:06', NULL, NULL, '554', 0, '0', 4, NULL),
(120, 'hello@62234', 'f30aa7a662c728b7407c54ae6bfd27d1', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-24 05:56:59', NULL, NULL, '62234', 0, '0', 18, NULL),
(122, 'kitty@62234', 'e10adc3949ba59abbe56e057f20f883e', '2', '', '', '', '', 0, '', 0, '2014-12-24 06:11:38', '2014-12-24', '2015-03-24', '62234', 2, '0', 27, NULL),
(124, 'zfjia@62234', '32522c469b98e7c0b6d608f47da78cf4', '1', '', '', '', '', 0, '', 0, '2014-12-25 02:53:32', '2014-12-25', '2015-03-25', '62234', 1, '0', 2, NULL),
(126, 'test@62234', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '2@s.com', '18022132122', '', 0, NULL, 0, '2014-12-25 02:57:06', '2014-12-25', '2015-03-25', '62234', 1, '0', 0, NULL),
(128, 'admin@29855', '21218cca77804d2ba1922c33e0151105', '1', NULL, NULL, NULL, NULL, 0, NULL, 0, '2014-12-25 03:31:44', NULL, NULL, '29855', 0, '0', 0, NULL),
(132, 'admindz@78070', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-26 07:28:48', NULL, NULL, '78070', 0, '0', 3, NULL),
(134, 'whta@19323', '21218cca77804d2ba1922c33e0151105', '2', '戴尔', '', '', '', 0, NULL, 0, '2014-12-27 02:10:10', '2014-12-27', '2015-03-27', '19323', 2, '0', 0, NULL),
(138, 'admin@49368', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-27 07:54:39', NULL, NULL, '49368', 0, '0', 3, NULL),
(140, 'jack@69746', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-29 01:38:34', NULL, NULL, '69746', 0, '0', 8, NULL),
(142, 'petter@62818', 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-29 01:47:07', NULL, NULL, '62818', 0, '0', 0, NULL),
(144, 'admin@31177', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-29 10:27:30', NULL, NULL, '31177', 0, '0', 2, NULL),
(150, 'test88088@67139', '8889710209c01cb7df45c34c4d03d1d7', '1', NULL, NULL, NULL, NULL, 0, '', 0, '2014-12-30 05:27:10', NULL, NULL, '67139', 0, '0', 3, NULL),
(152, 'yanshi@4', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, 'sunt@sict.ac.cn', '15542243889', NULL, 0, '', 0, '2016-11-08 08:31:35', NULL, NULL, '4', 0, '0', 2, NULL),
(154, 'admin@5', '46f94c8de14fb36680850768ff1b7f2a', '1', NULL, 'admin@mail.com', '15240020001', NULL, 0, '', 0, '2016-11-11 00:33:15', NULL, NULL, '5', 0, '0', 2, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user_backend`
--

CREATE TABLE IF NOT EXISTS `user_backend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user_backend`
--

INSERT INTO `user_backend` (`id`, `username`, `auth_key`, `password_hash`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test', 'xkssaCUhCFDOH1gPSuHJ9jVQM5Y9qjjb', '$2y$13$4nlSqMyTwzqTDj2IFJB3huNTp6eRoMmK.Qb3P6wu.ZzLW.y.G9HWq', 'zhengzhaoduo@sict.ac.cn', '2016-11-10 10:55:41', '2016-11-10 10:55:41'),
(2, 'e_user', 'G-arn5TgV8beyAPqztSCAiBy33Y9UzLm', '$2y$13$Ud61PHXDrtoX7Rb4Q//AOuY7vjo5dGhvOh9A6mv9M634Ncdav6fw2', 'e_user@126.com', '2016-11-21 15:48:06', '2016-11-21 15:48:06');

-- --------------------------------------------------------

--
-- 表的结构 `version`
--

CREATE TABLE IF NOT EXISTS `version` (
  `table_name` char(32) NOT NULL,
  `table_version` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `t_name_idx` (`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `version`
--

INSERT INTO `version` (`table_name`, `table_version`) VALUES
('registry', 1);

--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
