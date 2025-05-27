-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2023-05-01 01:07:05
-- 服务器版本： 5.6.51
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `s3195650`
--

-- --------------------------------------------------------

--
-- 表的结构 `shua_account`
--

CREATE TABLE `shua_account` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `permission` text,
  `addtime` datetime DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_apps`
--

CREATE TABLE `shua_apps` (
  `id` int(11) NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `domain` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `package` varchar(128) DEFAULT NULL,
  `android_url` varchar(256) DEFAULT NULL,
  `ios_url` varchar(256) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `shua_article`
--

CREATE TABLE `shua_article` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_cache`
--

CREATE TABLE `shua_cache` (
  `k` varchar(32) NOT NULL,
  `v` longtext,
  `expire` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `shua_cache`
--

INSERT INTO `shua_cache` (`k`, `v`, `expire`) VALUES
('config', 'a:193:{s:10:\"adminlogin\";s:19:\"2022-09-08 10:45:22\";s:9:\"admin_pwd\";s:6:\"123456\";s:10:\"admin_user\";s:5:\"admin\";s:5:\"alert\";s:42:\"在线下单提示（部分模板显示）\";s:10:\"alipay_api\";s:1:\"0\";s:12:\"alipay_appid\";s:1:\"1\";s:17:\"alipay_privatekey\";s:1:\"1\";s:16:\"alipay_publickey\";s:1:\"1\";s:7:\"anounce\";s:18605:\"<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"\">\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <p style=\"vertical-align:inherit;\">\r\n        <marquee behavior=\"alternate\" style=\"display: inline-block; overflow: hidden; text-align: initial; white-space: nowrap; box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n            <section style=\"will-change: transform;\" class=\"\">\r\n                <span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 18px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-size: 18px;\"><strong>平台24小时自助下单，欢迎代理加盟~</strong></span></strong></span>\r\n            </section>\r\n        </marquee>\r\n    </p>\r\n    <section class=\"_135editor\" data-tools=\"135\" data-id=\"95165\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; color: rgba(0, 0, 0, 0.87); font-size: 14px; background-color: rgb(255, 255, 255); font-family: Avenir, Helvetica, Arial, sans-serif;\">\r\n        <section style=\"box-sizing: border-box; margin: 15px 0px; padding: 0px; display: block; text-align: center;\">\r\n            <section data-width=\"100%\" style=\"box-sizing:border-box;max-width: 100% !important; margin: 0px; padding: 15px; display: block; border-image: initial; border-width: 1px 1px 3px; border-radius: 15px; border-style: solid; border-color: #057df5; background-color: #ffffff; width: 100%;\">\r\n                <section style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">下单须知</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">下单前请看清商品的介绍，不要填错下单所需要填写的正确邮箱账号！</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">付款注意事项</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">付款请打开手机浏览器付款！电脑网页暂不支持付款，最好注册登录账号购买！如出现付款不出码/请第一时间点击网站订单找/如还是没有请填写工单联系客服处理。</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">同款平台搭建</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">1.如果你也希望拥有一间属于自己的项目商城小店</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">2.可以在会员中心注册→</span><span style=\"background-color: #ffff00;\"><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000; background-color: #ffff00;\"><a href=\"/user/regsite.php\" target=\"_blank\" style=\"color: #ff0000; text-decoration-line: underline; background-color: #ffff00;\">开通分站</a></span></span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">3.一键开通拥有自己的商城→享受特价购买项目</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">4.每天轻松推广就可以赚佣金</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">我们承诺</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">咱们平台内主要做全网项目整合，所有项目确保教程和附带的软件是详细且可以运行的，和外面卖大几百大几千的割韭菜项目一样，本站试错成本极低，并且有专门的售后团队处理售后问题，欢迎来盘！</span>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\" >平台三包政策：&nbsp;</span>\r\n                            </p>\r\n                            <p style=\"text-align:center;vertical-align: inherit; box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\" align=\"center\">\r\n                                <strong><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">包更新&nbsp; 包维护&nbsp; 包售后</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">售后须知</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                如遇项目和谐等不可抗拒因素可在平台内工单反馈，用户请仔细阅读本站条例，虚拟物品具有可复制性，一经拍下发货，视为认可项目注意事项说明！概不退款！如有问题可提交工单\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">免责申明</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">客服在线时间：早上12点至晚上24点，售后问题会在此时间段给予处理。</span>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n            </section>\r\n        </section>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n</section>\";s:6:\"apikey\";s:0:\"\";s:8:\"appalert\";s:0:\"\";s:17:\"appcreate_default\";s:1:\"0\";s:13:\"appcreate_diy\";s:1:\"0\";s:13:\"appcreate_key\";s:32:\"78c94f657603e265c70a7a21a1f5fc0d\";s:15:\"appcreate_nonav\";s:1:\"0\";s:14:\"appcreate_open\";s:1:\"1\";s:15:\"appcreate_price\";s:1:\"1\";s:16:\"appcreate_price2\";s:1:\"1\";s:6:\"appurl\";s:0:\"\";s:10:\"articlenum\";s:0:\"\";s:6:\"banner\";s:13:\"./img/bal.png\";s:9:\"blacklist\";s:0:\"\";s:6:\"bottom\";s:49:\"站点工具/友情链接（部分模板显示）\";s:5:\"build\";s:10:\"2022-06-01\";s:10:\"captcha_id\";s:0:\"\";s:11:\"captcha_key\";s:0:\"\";s:12:\"captcha_open\";s:1:\"0\";s:17:\"captcha_open_free\";N;s:18:\"captcha_open_login\";N;s:16:\"captcha_open_reg\";N;s:9:\"cdnpublic\";s:1:\"0\";s:9:\"chatframe\";s:0:\"\";s:5:\"cishu\";s:1:\"3\";s:10:\"classblock\";s:1:\"0\";s:7:\"cronkey\";s:6:\"332583\";s:9:\"daiguaurl\";s:0:\"\";s:9:\"datepoint\";s:506:\"a:7:{i:0;a:3:{s:4:\"date\";s:4:\"0417\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:1;a:3:{s:4:\"date\";s:4:\"0907\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:2;a:3:{s:4:\"date\";s:4:\"0831\";s:6:\"orders\";s:1:\"5\";s:5:\"money\";d:6.7999999999999998;}i:3;a:3:{s:4:\"date\";s:4:\"0830\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:4;a:3:{s:4:\"date\";s:4:\"0717\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:5;a:3:{s:4:\"date\";s:4:\"0714\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:6;a:3:{s:4:\"date\";s:4:\"0705\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}}\";s:10:\"defaultcid\";s:0:\"\";s:11:\"description\";s:15:\"赚钱项目库\";s:4:\"dxmm\";s:32:\"9f5fc8df20224fd990c302b1d824c31b\";s:4:\"dxzh\";s:7:\"r644885\";s:8:\"epay_key\";s:0:\"\";s:8:\"epay_pid\";s:0:\"\";s:8:\"epay_url\";s:0:\"\";s:10:\"faka_input\";s:1:\"0\";s:14:\"faka_inputname\";s:0:\"\";s:9:\"faka_mail\";s:231:\"<b>商品名称：</b> [name]<br/><b>购买时间：</b>[date]<br/><b>以下是你的卡密信息：</b><br/>[kmdata]<br/>----------<br/><b>使用说明：</b><br/>[alert]<br/>----------<br/>云商城自助下单平台<br/>[domain]\";s:13:\"faka_showleft\";s:1:\"0\";s:12:\"fenzhan_adds\";s:1:\"1\";s:11:\"fenzhan_buy\";s:1:\"1\";s:12:\"fenzhan_cost\";s:1:\"8\";s:13:\"fenzhan_cost2\";s:2:\"58\";s:13:\"fenzhan_daifu\";s:1:\"0\";s:14:\"fenzhan_domain\";s:0:\"\";s:13:\"fenzhan_editd\";s:3:\"0.5\";s:16:\"fenzhan_edithtml\";s:1:\"0\";s:14:\"fenzhan_expiry\";s:2:\"12\";s:12:\"fenzhan_free\";s:1:\"0\";s:12:\"fenzhan_kfqq\";s:1:\"1\";s:12:\"fenzhan_page\";s:1:\"0\";s:13:\"fenzhan_price\";s:2:\"28\";s:14:\"fenzhan_price2\";s:3:\"128\";s:18:\"fenzhan_pricelimit\";s:1:\"1\";s:12:\"fenzhan_rank\";s:1:\"0\";s:16:\"fenzhan_regalert\";s:1:\"1\";s:15:\"fenzhan_regrand\";s:1:\"1\";s:14:\"fenzhan_remain\";s:0:\"\";s:13:\"fenzhan_skimg\";s:1:\"1\";s:16:\"fenzhan_template\";s:1:\"0\";s:14:\"fenzhan_tixian\";s:1:\"1\";s:21:\"fenzhan_tixian_alipay\";s:1:\"1\";s:17:\"fenzhan_tixian_qq\";s:1:\"1\";s:17:\"fenzhan_tixian_wx\";s:1:\"1\";s:15:\"fenzhan_upgrade\";s:3:\"100\";s:6:\"footer\";s:18:\"首页底部排版\";s:10:\"forcelogin\";s:1:\"0\";s:14:\"forceloginhome\";s:1:\"0\";s:8:\"forcermb\";s:1:\"0\";s:7:\"gftzqun\";s:0:\"\";s:11:\"gg_announce\";s:30:\"所有分站显示首页公告\";s:8:\"gg_panel\";s:18:\"分站后台公告\";s:9:\"gg_search\";s:400:\"<span class=\"label label-primary\">待处理</span> 说明正在努力提交到服务器！<p></p><p></p><span class=\"label label-success\">已完成</span> 已经提交到接口正在处理！<p></p><p></p><span class=\"label label-warning\">处理中</span> 已经开始为您开单 请耐心等！<p></p><p></p><span class=\"label label-danger\">有异常</span> 下单信息有误 联系客服处理！\";s:9:\"gift_open\";s:1:\"0\";s:4:\"hbyu\";s:0:\"\";s:11:\"hide_tongji\";s:1:\"0\";s:21:\"index_class_num_style\";s:1:\"1\";s:14:\"invite_content\";s:185:\"特价名片赞0.1元起，免费领名片赞，空间人气、QQ钻、大会员、名片赞、说说赞、空间访问、全民K歌，链接：[url] (请复制链接到浏览器打开)\";s:6:\"iskami\";s:1:\"1\";s:14:\"jiamengzhuzhan\";s:0:\"\";s:7:\"jinrigx\";s:1:\"1\";s:8:\"keywords\";s:15:\"赚钱项目库\";s:4:\"kfqq\";s:10:\"3554597491\";s:4:\"kfwx\";s:12:\"qq3554597491\";s:12:\"login_apiurl\";s:0:\"\";s:11:\"login_appid\";s:0:\"\";s:12:\"login_appkey\";s:0:\"\";s:8:\"login_qq\";s:1:\"2\";s:8:\"login_wx\";s:1:\"0\";s:11:\"mail_apikey\";s:0:\"\";s:12:\"mail_apiuser\";s:0:\"\";s:10:\"mail_cloud\";s:1:\"0\";s:9:\"mail_name\";s:0:\"\";s:10:\"mail_name2\";s:0:\"\";s:9:\"mail_port\";s:3:\"465\";s:8:\"mail_pwd\";s:0:\"\";s:9:\"mail_recv\";s:0:\"\";s:9:\"mail_smtp\";s:11:\"smtp.qq.com\";s:8:\"maintain\";s:8:\"20230418\";s:5:\"modal\";s:18605:\"<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"\">\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <p style=\"vertical-align:inherit;\">\r\n        <marquee behavior=\"alternate\" style=\"display: inline-block; overflow: hidden; text-align: initial; white-space: nowrap; box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n            <section style=\"will-change: transform;\" class=\"\">\r\n                <span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 18px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-size: 18px;\"><strong>平台24小时自助下单，欢迎代理加盟~</strong></span></strong></span>\r\n            </section>\r\n        </marquee>\r\n    </p>\r\n    <section class=\"_135editor\" data-tools=\"135\" data-id=\"95165\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; color: rgba(0, 0, 0, 0.87); font-size: 14px; background-color: rgb(255, 255, 255); font-family: Avenir, Helvetica, Arial, sans-serif;\">\r\n        <section style=\"box-sizing: border-box; margin: 15px 0px; padding: 0px; display: block; text-align: center;\">\r\n            <section data-width=\"100%\" style=\"box-sizing:border-box;max-width: 100% !important; margin: 0px; padding: 15px; display: block; border-image: initial; border-width: 1px 1px 3px; border-radius: 15px; border-style: solid; border-color: #057df5; background-color: #ffffff; width: 100%;\">\r\n                <section style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">下单须知</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">下单前请看清商品的介绍，不要填错下单所需要填写的正确邮箱账号！</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">付款注意事项</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">付款请打开手机浏览器付款！电脑网页暂不支持付款，最好注册登录账号购买！如出现付款不出码/请第一时间点击网站订单找/如还是没有请填写工单联系客服处理。</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">同款平台搭建</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">1.如果你也希望拥有一间属于自己的项目商城小店</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">2.可以在会员中心注册→</span><span style=\"background-color: #ffff00;\"><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000; background-color: #ffff00;\"><a href=\"/user/regsite.php\" target=\"_blank\" style=\"color: #ff0000; text-decoration-line: underline; background-color: #ffff00;\">开通分站</a></span></span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">3.一键开通拥有自己的商城→享受特价购买项目</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">4.每天轻松推广就可以赚佣金</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">我们承诺</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">咱们平台内主要做全网项目整合，所有项目确保教程和附带的软件是详细且可以运行的，和外面卖大几百大几千的割韭菜项目一样，本站试错成本极低，并且有专门的售后团队处理售后问题，欢迎来盘！</span>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\" >平台三包政策：&nbsp;</span>\r\n                            </p>\r\n                            <p style=\"text-align:center;vertical-align: inherit; box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\" align=\"center\">\r\n                                <strong><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">包更新&nbsp; 包维护&nbsp; 包售后</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">售后须知</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                如遇项目和谐等不可抗拒因素可在平台内工单反馈，用户请仔细阅读本站条例，虚拟物品具有可复制性，一经拍下发货，视为认可项目注意事项说明！概不退款！如有问题可提交工单\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">免责申明</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">客服在线时间：早上12点至晚上24点，售后问题会在此时间段给予处理。</span>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n            </section>\r\n        </section>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n</section>\";s:8:\"musicurl\";s:0:\"\";s:14:\"openbatchorder\";s:1:\"0\";s:9:\"ordername\";s:0:\"\";s:6:\"payapi\";s:2:\"-1\";s:6:\"paymsg\";s:203:\"<hr/>小提示：<b style=\"color:red\">如果微信出现无法付款时，您可以把微信的钱转到QQ里，然后使用QQ钱包支付！<a href=\"./?mod=wx\" target=\"_blank\">点击查看教程</a></b>\";s:11:\"pricejk_cid\";s:24:\"0,1,15,3,4,9,10,11,12,13\";s:12:\"pricejk_edit\";s:1:\"0\";s:16:\"pricejk_lasttime\";s:19:\"2022-09-02 06:22:37\";s:12:\"pricejk_time\";s:3:\"600\";s:12:\"pricejk_yile\";s:1:\"0\";s:11:\"qiandao_day\";s:2:\"15\";s:12:\"qiandao_mult\";s:4:\"1.05\";s:14:\"qiandao_reward\";s:4:\"0.02\";s:6:\"qqjump\";s:1:\"0\";s:9:\"qqpay_api\";s:1:\"0\";s:15:\"queryorderlimit\";s:1:\"0\";s:15:\"qzone_rizhi_api\";s:0:\"\";s:18:\"qzone_shuoshuo_api\";s:0:\"\";s:11:\"search_open\";s:1:\"1\";s:10:\"selfrefund\";s:1:\"0\";s:15:\"shopdesc_editor\";s:1:\"1\";s:12:\"shoppingcart\";s:1:\"1\";s:14:\"show_changepwd\";s:1:\"0\";s:13:\"show_complain\";s:1:\"0\";s:8:\"sitename\";s:15:\"项目货源网\";s:13:\"sitename_hide\";s:1:\"0\";s:9:\"staticurl\";s:0:\"\";s:5:\"style\";s:1:\"1\";s:8:\"supedpic\";s:0:\"\";s:6:\"suppic\";s:3:\"0.3\";s:11:\"suptoolspic\";s:3:\"333\";s:12:\"suptoolspic1\";s:2:\"33\";s:12:\"suptoolspic2\";s:1:\"3\";s:4:\"sygg\";s:0:\"\";s:5:\"sygg2\";s:0:\"\";s:6:\"syggkg\";s:1:\"0\";s:6:\"syggtz\";s:0:\"\";s:6:\"sypfgg\";s:64:\"诚邀各级大咖合作共赢-24小时自助下单-售后稳定\";s:6:\"syskey\";s:32:\"GcLy43TJaCcA4QQG36ZHGgqt4spoF3ST\";s:6:\"syzxkf\";s:158:\"https://yzf.qq.com/xv/web/static/chat/index.html?sign=37ef9b97862007972446c8b81db4e730f216232753cf523b0ac1a00963b3baf724405dab01bc31a79f548b86ecda8e70d68fa78e\";s:8:\"template\";s:9:\"storenews\";s:10:\"template_m\";s:1:\"0\";s:18:\"template_showprice\";s:1:\"0\";s:18:\"template_showsales\";s:1:\"0\";s:20:\"template_virtualdata\";s:1:\"1\";s:5:\"title\";s:15:\"拒绝割韭菜\";s:11:\"tixian_days\";s:0:\"\";s:12:\"tixian_limit\";s:1:\"1\";s:10:\"tixian_min\";s:1:\"1\";s:11:\"tixian_rate\";s:2:\"98\";s:16:\"tongji_cachetime\";s:10:\"1661943164\";s:11:\"tongji_time\";s:3:\"300\";s:5:\"txurl\";s:0:\"\";s:13:\"ui_background\";s:1:\"3\";s:16:\"ui_backgroundurl\";s:102:\"//cn.bing.com/th?id=OHR.QuebecCityBridge_ZH-CN9618387961_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp\";s:7:\"ui_bing\";s:1:\"2\";s:12:\"ui_bing_date\";s:8:\"20230501\";s:9:\"ui_color1\";s:7:\"#853ca8\";s:9:\"ui_color2\";s:7:\"#a83c69\";s:10:\"ui_colorto\";s:1:\"0\";s:7:\"ui_shop\";s:1:\"0\";s:7:\"ui_user\";s:1:\"0\";s:12:\"updatestatus\";s:1:\"1\";s:21:\"updatestatus_interval\";s:1:\"6\";s:10:\"user_level\";s:1:\"0\";s:9:\"user_open\";s:1:\"1\";s:11:\"verify_open\";s:1:\"1\";s:7:\"version\";s:4:\"2055\";s:10:\"wechat_api\";s:1:\"0\";s:15:\"wechat_apptoken\";s:0:\"\";s:13:\"wechat_appuid\";s:0:\"\";s:12:\"wechat_sckey\";s:0:\"\";s:13:\"wenzhangdizhi\";s:1:\"1\";s:4:\"work\";s:68:\"https://img2.woyaogexing.com/2022/07/06/bd73a1be90801a16!400x400.jpg\";s:14:\"workorder_open\";s:1:\"1\";s:13:\"workorder_pic\";s:1:\"1\";s:14:\"workorder_type\";s:66:\"业务补单|卡密错误|充值没到账|订单中途改了密码\";s:9:\"wxpay_api\";s:1:\"0\";s:5:\"xcurl\";s:0:\"\";s:4:\"yhzx\";s:0:\"\";s:5:\"yhzx2\";s:0:\"\";s:6:\"yhzxkg\";s:1:\"0\";s:6:\"yhzxtz\";s:0:\"\";s:6:\"zfbimg\";s:13:\"./img/bal.png\";}', 0),
('getcount', 'a:2:{s:4:\"time\";i:1681750081;s:4:\"data\";a:20:{s:4:\"code\";i:0;s:4:\"yxts\";d:322;s:6:\"count1\";s:1:\"0\";s:6:\"count2\";s:1:\"0\";s:6:\"count3\";s:1:\"0\";s:6:\"count4\";s:1:\"0\";s:6:\"count5\";d:0;s:6:\"count6\";s:1:\"1\";s:6:\"count7\";s:1:\"1\";s:6:\"count8\";d:0;s:6:\"count9\";d:0;s:7:\"count10\";d:0;s:7:\"count11\";d:0;s:7:\"count12\";d:0;s:7:\"count13\";d:0;s:7:\"count14\";d:0;s:7:\"count15\";d:0;s:7:\"count16\";d:0;s:7:\"count17\";s:1:\"0\";s:5:\"chart\";a:4:{s:4:\"date\";a:7:{i:0;a:2:{i:0;i:1;i:1;s:4:\"0705\";}i:1;a:2:{i:0;i:2;i:1;s:4:\"0714\";}i:2;a:2:{i:0;i:3;i:1;s:4:\"0717\";}i:3;a:2:{i:0;i:4;i:1;s:4:\"0830\";}i:4;a:2:{i:0;i:5;i:1;s:4:\"0831\";}i:5;a:2:{i:0;i:6;i:1;s:4:\"0907\";}i:6;a:2:{i:0;i:7;i:1;s:4:\"0417\";}}s:6:\"orders\";a:7:{i:0;a:2:{i:0;i:1;i:1;s:1:\"0\";}i:1;a:2:{i:0;i:2;i:1;s:1:\"0\";}i:2;a:2:{i:0;i:3;i:1;s:1:\"0\";}i:3;a:2:{i:0;i:4;i:1;s:1:\"0\";}i:4;a:2:{i:0;i:5;i:1;s:1:\"5\";}i:5;a:2:{i:0;i:6;i:1;s:1:\"0\";}i:6;a:2:{i:0;i:7;i:1;s:1:\"0\";}}s:5:\"money\";a:7:{i:0;a:2:{i:0;i:1;i:1;d:0;}i:1;a:2:{i:0;i:2;i:1;d:0;}i:2;a:2:{i:0;i:3;i:1;d:0;}i:3;a:2:{i:0;i:4;i:1;d:0;}i:4;a:2:{i:0;i:5;i:1;d:6.7999999999999998;}i:5;a:2:{i:0;i:6;i:1;d:0;}i:6;a:2:{i:0;i:7;i:1;d:0;}}s:8:\"maintain\";s:8:\"20230418\";}}}', 0),
('pricejk_type1', 'daishua,jiuwu,kakayun,shangzhanwl,yunbao', 0),
('pricejk_type2', 'kashangwl,kayixin,shangmeng,yile,yiqida,zhike', 0),
('pricerules', 'a:4:{i:1;a:4:{s:4:\"kind\";s:1:\"0\";s:3:\"p_2\";s:4:\"3.00\";s:3:\"p_1\";s:4:\"6.00\";s:3:\"p_0\";s:4:\"9.99\";}i:2;a:4:{s:4:\"kind\";s:1:\"0\";s:3:\"p_2\";s:4:\"1.20\";s:3:\"p_1\";s:4:\"1.50\";s:3:\"p_0\";s:4:\"1.80\";}i:3;a:4:{s:4:\"kind\";s:1:\"0\";s:3:\"p_2\";s:4:\"1.15\";s:3:\"p_1\";s:4:\"1.30\";s:3:\"p_0\";s:4:\"1.50\";}i:4;a:4:{s:4:\"kind\";s:1:\"1\";s:3:\"p_2\";s:4:\"3.00\";s:3:\"p_1\";s:4:\"4.00\";s:3:\"p_0\";s:4:\"6.00\";}}', 0);
INSERT INTO `shua_cache` (`k`, `v`, `expire`) VALUES
('ThirdPluginsList', 'a:13:{i:0;a:12:{s:4:\"name\";s:11:\"third_jiuwu\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:12:\"玖伍社区\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:10;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:1;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"登录密码\";s:6:\"paypwd\";b:0;s:7:\"paytype\";s:12:\"支付方式\";}s:4:\"code\";s:5:\"jiuwu\";}i:1;a:12:{s:4:\"name\";s:10:\"third_yile\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:12:\"亿乐社区\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:11;s:8:\"showedit\";b:0;s:6:\"showip\";b:1;s:7:\"pricejk\";i:2;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:7:\"TokenID\";s:8:\"password\";s:6:\"密匙\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:4:\"yile\";}i:2;a:12:{s:4:\"name\";s:13:\"third_kayixin\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"卡易信\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:13;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:2;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"登录密码\";s:6:\"paypwd\";s:12:\"支付密码\";s:7:\"paytype\";b:0;}s:4:\"code\";s:7:\"kayixin\";}i:3;a:11:{s:4:\"name\";s:12:\"third_kayisu\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"卡易速\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:14;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"登录密码\";s:6:\"paypwd\";s:12:\"支付密码\";s:7:\"paytype\";b:0;}s:4:\"code\";s:6:\"kayisu\";}i:4;a:12:{s:4:\"name\";s:15:\"third_kashangwl\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"卡商网\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"sort\";i:21;s:4:\"link\";s:0:\"\";s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:2;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"商家编号\";s:8:\"password\";s:12:\"接口密钥\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:9:\"kashangwl\";}i:5;a:12:{s:4:\"name\";s:17:\"third_shangzhanwl\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"商战网\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:22;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:1;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"商家编号\";s:8:\"password\";s:12:\"接口密钥\";s:6:\"paypwd\";s:12:\"支付密码\";s:7:\"paytype\";b:0;}s:4:\"code\";s:11:\"shangzhanwl\";}i:6;a:12:{s:4:\"name\";s:15:\"third_shangmeng\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"商盟网\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:23;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:2;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"接口密钥\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:9:\"shangmeng\";}i:7;a:12:{s:4:\"name\";s:12:\"third_yiqida\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"亿奇达\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:23;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:2;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"接口密钥\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:6:\"yiqida\";}i:8;a:12:{s:4:\"name\";s:11:\"third_zhike\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"直客SUP\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:24;s:8:\"showedit\";b:0;s:6:\"showip\";b:1;s:7:\"pricejk\";i:2;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:8:\"应用ID\";s:8:\"password\";s:12:\"应用密钥\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:5:\"zhike\";}i:9;a:12:{s:4:\"name\";s:12:\"third_yunbao\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:12:\"云宝发卡\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:26;s:8:\"showedit\";b:0;s:6:\"showip\";b:1;s:7:\"pricejk\";i:1;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"对接密钥\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:6:\"yunbao\";}i:10;a:12:{s:4:\"name\";s:13:\"third_kakayun\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:9:\"卡卡云\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:27;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:1;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:8:\"用户ID\";s:8:\"password\";s:12:\"对接密钥\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:7:\"kakayun\";}i:11;a:12:{s:4:\"name\";s:16:\"third_liuliangka\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:15:\"发傲流量卡\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:31;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:0;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:8:\"用户ID\";s:8:\"password\";s:5:\"Token\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:10:\"liuliangka\";}i:12;a:12:{s:4:\"name\";s:13:\"third_daishua\";s:4:\"type\";s:5:\"third\";s:5:\"title\";s:15:\"同系统对接\";s:6:\"author\";s:6:\"彩虹\";s:7:\"version\";s:3:\"1.0\";s:4:\"link\";s:0:\"\";s:4:\"sort\";i:32;s:8:\"showedit\";b:0;s:6:\"showip\";b:0;s:7:\"pricejk\";i:1;s:5:\"input\";a:5:{s:3:\"url\";s:12:\"网站域名\";s:8:\"username\";s:12:\"登录账号\";s:8:\"password\";s:12:\"登录密码\";s:6:\"paypwd\";b:0;s:7:\"paytype\";b:0;}s:4:\"code\";s:7:\"daishua\";}}', 0),
('tongji', 'a:7:{s:6:\"orders\";s:1:\"0\";s:7:\"orders1\";s:1:\"0\";s:7:\"orders2\";s:1:\"0\";s:5:\"money\";d:0;s:6:\"money1\";d:0;s:4:\"site\";s:1:\"2\";s:4:\"gift\";N;}', 0);

-- --------------------------------------------------------

--
-- 表的结构 `shua_cart`
--

CREATE TABLE `shua_cart` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(32) NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `tid` int(11) NOT NULL,
  `input` text NOT NULL,
  `num` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `money` varchar(32) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `blockdj` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_class`
--

CREATE TABLE `shua_class` (
  `cid` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '10',
  `name` varchar(255) NOT NULL,
  `shopimg` text,
  `block` text,
  `blockpay` varchar(80) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `cidr` int(11) NOT NULL DEFAULT '0',
  `nr` text NOT NULL,
  `template` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `shua_class`
--

INSERT INTO `shua_class` (`cid`, `zid`, `sort`, `name`, `shopimg`, `block`, `blockpay`, `active`, `cidr`, `nr`, `template`) VALUES
(1, 1, 1, '网创项目', 'assets/img/Product/class_1db7e9ae5e9dadff8c5e8e9574dcd635.png', NULL, NULL, 1, 0, '点击-更多分类-查看更详细商品目录', 0),
(3, 1, 9, '会员业务', 'assets/img/Product/class_1a2b6712a436309e56e66235e60b79e4.png', NULL, NULL, 1, 0, '点击-更多分类-查看更详细商品目录', 0),
(4, 1, 11, '粉丝业务', 'assets/img/Product/class_051138405789362003d545e4299a99b4.png', NULL, NULL, 1, 0, '点击-更多分类-查看更详细商品目录', 0),
(9, 1, 13, '网赚项目', 'assets/img/Product/class_cf05963b9d7cb2ddceb52fbfbf7831c6.png', NULL, NULL, 1, 1, '', 0),
(10, 1, 17, '引流吸粉', 'assets/img/Product/class_3771d4288b7cbc0b441aa23b5cb1f42c.png', NULL, NULL, 1, 1, '', 0),
(11, 1, 18, '新自媒体', 'assets/img/Product/class_d250d64e43c4d7123c89cd8dbdcc9ba9.png', NULL, NULL, 1, 1, '', 0),
(12, 1, 19, '营销绝学', 'assets/img/Product/class_1098f2053e3f644f42efe92da594518c.png', NULL, NULL, 1, 1, '', 0),
(13, 1, 20, '电商运营', 'assets/img/Product/class_76ea927b000a5cb63355e52f46631fcc.png', NULL, NULL, 1, 1, '', 0),
(15, 1, 7, '红包封面', 'assets/img/Product/class_8f5a9252057ae8a8bdc36740b70420f0.png', NULL, NULL, 1, 0, '点击-更多分类-查看更详细商品目录', 0),
(18, 1, 21, 'D音粉丝', '', NULL, NULL, 1, 4, '', 0),
(19, 1, 22, 'D音作品点赞', '', NULL, NULL, 1, 4, '', 0),
(20, 1, 23, 'D音作品播放', '', NULL, NULL, 1, 4, '', 0),
(21, 1, 24, 'D音作品评论', '', NULL, NULL, 1, 4, '', 0),
(22, 1, 25, 'K手粉丝', '', NULL, NULL, 1, 4, '', 0),
(23, 1, 26, 'K手作品点赞', '', NULL, NULL, 1, 4, '', 0),
(24, 1, 27, 'K手作品播放', '', NULL, NULL, 1, 4, '', 0),
(25, 1, 28, 'K手作品评论', '', NULL, NULL, 1, 4, '', 0),
(26, 1, 29, 'K手作品转发收藏', '', NULL, NULL, 1, 4, '', 0),
(28, 1, 31, '视频号粉丝', '', NULL, NULL, 1, 4, '', 0),
(29, 1, 32, '视频号作品点赞', '', NULL, NULL, 1, 4, '', 0),
(30, 1, 33, '视频号作品播放', '', NULL, NULL, 1, 4, '', 0),
(31, 1, 34, '视频号直播挂铁', '', NULL, NULL, 1, 4, '', 0),
(32, 1, 35, '视频号直播看过人气', '', NULL, NULL, 1, 4, '', 0),
(33, 1, 36, '公众号粉丝', '', NULL, NULL, 1, 4, '', 0),
(34, 1, 37, '公众号作品阅读', '', NULL, NULL, 1, 4, '', 0),
(35, 1, 38, '淘宝店铺粉丝', '', NULL, NULL, 1, 4, '', 0),
(36, 1, 39, '头条粉丝', '', NULL, NULL, 1, 4, '', 0),
(37, 1, 40, '头条作品综合', '', NULL, NULL, 1, 4, '', 0),
(38, 1, 41, '西瓜视频专区', '', NULL, NULL, 1, 4, '', 0),
(39, 1, 42, '咸鱼专区', '', NULL, NULL, 1, 4, '', 0),
(43, 1, 2, '新人必看', 'assets/img/Product/class_f4ed1566b2d7650a6a5589499d600cbc.png', NULL, NULL, 1, 15, '', 0),
(44, 1, 6, '并夕夕助力', 'assets/img/Product/class_55cc0ee636dce6d4e1458a09b54771f7.png', NULL, NULL, 1, 4, '', 0),
(46, 1, 43, '高端精品', 'assets/img/Product/class_8e59ed588e599548c2dedf6880c165c9.png', NULL, NULL, 0, 1, '', 0),
(47, 1, 44, '免费项目', 'assets/img/Product/class_4eae81b64b266333ff4e435372bfcea2.png', NULL, NULL, 1, 1, '', 0),
(48, 1, 3, '特价封面', 'assets/img/Product/class_224767dc08d93d85e268501c69f5918f.png', NULL, NULL, 1, 15, '', 0),
(49, 1, 4, '盲盒系列', 'assets/img/Product/class_4a705b4450fa18f7428e09ab4e7be1e3.png', NULL, NULL, 1, 15, '', 0),
(50, 1, 5, '烟花系列', 'assets/img/Product/class_a46976b2083dbb8a8e7208fa2ebd6b7f.png', NULL, NULL, 1, 15, '', 0),
(51, 1, 45, '仙女系列', 'assets/img/Product/class_1f4d1b089df2d179ddbe39700ec8be0f.png', NULL, NULL, 1, 15, '', 0),
(52, 1, 46, '二次元系列', 'assets/img/Product/class_f338f42d5ff2faff3287a91c10d5c94b.png', NULL, NULL, 1, 15, '', 0),
(53, 1, 47, '萌宠系列', 'assets/img/Product/class_a88d50af401a791ec7d2f121931582e2.png', NULL, NULL, 1, 15, '', 0),
(54, 1, 68, 'JK系列', 'assets/img/Product/class_2f98717b5ffafbcc16a9dd56cbca3d65.png', NULL, NULL, 1, 15, '', 0),
(56, 1, 49, '文字系列', 'assets/img/Product/class_39a5ac991ba69c95927f9e365ef8aaa0.png', NULL, NULL, 1, 15, '', 0),
(57, 1, 50, '情侣系列', 'assets/img/Product/class_be20e74d5038759bdf7f8143cd8cb645.png', NULL, NULL, 1, 15, '', 0),
(58, 1, 51, '异形系列', 'assets/img/Product/class_0cdc4ec8d882ebe88bd872abb5085d9c.png', NULL, NULL, 1, 15, '', 0),
(59, 1, 52, '星座系列', 'assets/img/Product/class_818ec917fde4b045d4fc3ba436d83ad2.png', NULL, NULL, 1, 15, '', 0),
(60, 1, 53, '王者系列', 'assets/img/Product/class_8951583b304ee93ed07f76a98765ef2c.png', NULL, NULL, 1, 15, '', 0),
(61, 1, 54, '新年系列', 'assets/img/Product/class_28338613c51ee78fe9e6af9b99fe1b5e.png', NULL, NULL, 1, 15, '', 0),
(62, 1, 55, '节日系列', 'assets/img/Product/class_ea34c33de9cb81f3a9f0fce9852cc738.png', NULL, NULL, 1, 15, '', 0),
(63, 1, 56, '男生系列', 'assets/img/Product/class_14ced3c0f5297f15a65b48139e2f6ac3.png', NULL, NULL, 1, 15, '', 0),
(64, 1, 57, '套图系列', 'assets/img/Product/class_ac19049db27a02f0bbbc6e1761f232dc.png', NULL, NULL, 1, 15, '', 0),
(65, 1, 58, '精品专区', 'assets/img/Product/class_425bf8d0a60fe63f601c4a2bae53f589.png', NULL, NULL, 1, 15, '', 0),
(66, 1, 59, '奶茶糖果', 'assets/img/Product/class_78887657b43bc1387400b3f47e6a8e61.png', NULL, NULL, 1, 15, '', 0),
(112, 1, 62, 'QQ会员', '', NULL, NULL, 1, 3, '', 0),
(113, 1, 63, 'QQ黄钻', '', NULL, NULL, 1, 3, '', 0),
(114, 1, 64, 'QQ绿钻', '', NULL, NULL, 1, 3, '', 0),
(115, 1, 8, '福利专区', 'assets/img/Product/class_cfffb6a4b79872c9453f7a911efc67f5.png', NULL, NULL, 1, 0, '点击-更多分类-查看更详细商品目录', 0),
(116, 1, 65, 'ＱＱ权益', 'assets/img/Product/class_8dc99e549cfb42eee37c85ad5bd3a920.png', NULL, NULL, 1, 115, '', 0),
(117, 1, 66, '王者权益', 'assets/img/Product/class_8dc99e549cfb42eee37c85ad5bd3a920.png', NULL, NULL, 1, 115, '', 0),
(118, 1, 67, '其他权益', 'assets/img/Product/class_8dc99e549cfb42eee37c85ad5bd3a920.png', NULL, NULL, 1, 115, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `shua_config`
--

CREATE TABLE `shua_config` (
  `k` varchar(32) NOT NULL,
  `v` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `shua_config`
--

INSERT INTO `shua_config` (`k`, `v`) VALUES
('adminlogin', '2022-09-08 10:45:22'),
('admin_pwd', '123456'),
('admin_user', 'admin'),
('alert', '在线下单提示（部分模板显示）'),
('alipay_api', '0'),
('alipay_appid', '1'),
('alipay_privatekey', '1'),
('alipay_publickey', '1'),
('anounce', '<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"\">\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <p style=\"vertical-align:inherit;\">\r\n        <marquee behavior=\"alternate\" style=\"display: inline-block; overflow: hidden; text-align: initial; white-space: nowrap; box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n            <section style=\"will-change: transform;\" class=\"\">\r\n                <span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 18px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-size: 18px;\"><strong>平台24小时自助下单，欢迎代理加盟~</strong></span></strong></span>\r\n            </section>\r\n        </marquee>\r\n    </p>\r\n    <section class=\"_135editor\" data-tools=\"135\" data-id=\"95165\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; color: rgba(0, 0, 0, 0.87); font-size: 14px; background-color: rgb(255, 255, 255); font-family: Avenir, Helvetica, Arial, sans-serif;\">\r\n        <section style=\"box-sizing: border-box; margin: 15px 0px; padding: 0px; display: block; text-align: center;\">\r\n            <section data-width=\"100%\" style=\"box-sizing:border-box;max-width: 100% !important; margin: 0px; padding: 15px; display: block; border-image: initial; border-width: 1px 1px 3px; border-radius: 15px; border-style: solid; border-color: #057df5; background-color: #ffffff; width: 100%;\">\r\n                <section style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">下单须知</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">下单前请看清商品的介绍，不要填错下单所需要填写的正确邮箱账号！</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">付款注意事项</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">付款请打开手机浏览器付款！电脑网页暂不支持付款，最好注册登录账号购买！如出现付款不出码/请第一时间点击网站订单找/如还是没有请填写工单联系客服处理。</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">同款平台搭建</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">1.如果你也希望拥有一间属于自己的项目商城小店</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">2.可以在会员中心注册→</span><span style=\"background-color: #ffff00;\"><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000; background-color: #ffff00;\"><a href=\"/user/regsite.php\" target=\"_blank\" style=\"color: #ff0000; text-decoration-line: underline; background-color: #ffff00;\">开通分站</a></span></span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">3.一键开通拥有自己的商城→享受特价购买项目</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">4.每天轻松推广就可以赚佣金</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">我们承诺</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">咱们平台内主要做全网项目整合，所有项目确保教程和附带的软件是详细且可以运行的，和外面卖大几百大几千的割韭菜项目一样，本站试错成本极低，并且有专门的售后团队处理售后问题，欢迎来盘！</span>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\" >平台三包政策：&nbsp;</span>\r\n                            </p>\r\n                            <p style=\"text-align:center;vertical-align: inherit; box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\" align=\"center\">\r\n                                <strong><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">包更新&nbsp; 包维护&nbsp; 包售后</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">售后须知</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                如遇项目和谐等不可抗拒因素可在平台内工单反馈，用户请仔细阅读本站条例，虚拟物品具有可复制性，一经拍下发货，视为认可项目注意事项说明！概不退款！如有问题可提交工单\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">免责申明</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">客服在线时间：早上12点至晚上24点，售后问题会在此时间段给予处理。</span>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n            </section>\r\n        </section>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n</section>'),
('apikey', ''),
('appalert', ''),
('appcreate_default', '0'),
('appcreate_diy', '0'),
('appcreate_key', '78c94f657603e265c70a7a21a1f5fc0d'),
('appcreate_nonav', '0'),
('appcreate_open', '1'),
('appcreate_price', '1'),
('appcreate_price2', '1'),
('appurl', ''),
('articlenum', ''),
('banner', './img/bal.png'),
('blacklist', ''),
('bottom', '站点工具/友情链接（部分模板显示）'),
('build', '2022-06-01'),
('cache', ''),
('captcha_id', ''),
('captcha_key', ''),
('captcha_open', '0'),
('captcha_open_free', NULL),
('captcha_open_login', NULL),
('captcha_open_reg', NULL),
('cdnpublic', '0'),
('chatframe', ''),
('cishu', '3'),
('classblock', '0'),
('cronkey', '332583'),
('daiguaurl', ''),
('datepoint', 'a:7:{i:0;a:3:{s:4:\"date\";s:4:\"0417\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:1;a:3:{s:4:\"date\";s:4:\"0907\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:2;a:3:{s:4:\"date\";s:4:\"0831\";s:6:\"orders\";s:1:\"5\";s:5:\"money\";d:6.7999999999999998;}i:3;a:3:{s:4:\"date\";s:4:\"0830\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:4;a:3:{s:4:\"date\";s:4:\"0717\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:5;a:3:{s:4:\"date\";s:4:\"0714\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}i:6;a:3:{s:4:\"date\";s:4:\"0705\";s:6:\"orders\";s:1:\"0\";s:5:\"money\";d:0;}}'),
('defaultcid', ''),
('description', '赚钱项目库'),
('dxmm', '9f5fc8df20224fd990c302b1d824c31b'),
('dxzh', 'r644885'),
('epay_key', ''),
('epay_pid', ''),
('epay_url', ''),
('faka_input', '0'),
('faka_inputname', ''),
('faka_mail', '<b>商品名称：</b> [name]<br/><b>购买时间：</b>[date]<br/><b>以下是你的卡密信息：</b><br/>[kmdata]<br/>----------<br/><b>使用说明：</b><br/>[alert]<br/>----------<br/>云商城自助下单平台<br/>[domain]'),
('faka_showleft', '0'),
('fenzhan_adds', '1'),
('fenzhan_buy', '1'),
('fenzhan_cost', '8'),
('fenzhan_cost2', '58'),
('fenzhan_daifu', '0'),
('fenzhan_domain', ''),
('fenzhan_editd', '0.5'),
('fenzhan_edithtml', '0'),
('fenzhan_expiry', '12'),
('fenzhan_free', '0'),
('fenzhan_kfqq', '1'),
('fenzhan_page', '0'),
('fenzhan_price', '28'),
('fenzhan_price2', '128'),
('fenzhan_pricelimit', '1'),
('fenzhan_rank', '0'),
('fenzhan_regalert', '1'),
('fenzhan_regrand', '1'),
('fenzhan_remain', ''),
('fenzhan_skimg', '1'),
('fenzhan_template', '0'),
('fenzhan_tixian', '1'),
('fenzhan_tixian_alipay', '1'),
('fenzhan_tixian_qq', '1'),
('fenzhan_tixian_wx', '1'),
('fenzhan_upgrade', '100'),
('footer', '首页底部排版'),
('forcelogin', '0'),
('forceloginhome', '0'),
('forcermb', '0'),
('gftzqun', ''),
('gg_announce', '所有分站显示首页公告'),
('gg_panel', '分站后台公告'),
('gg_search', '<span class=\"label label-primary\">待处理</span> 说明正在努力提交到服务器！<p></p><p></p><span class=\"label label-success\">已完成</span> 已经提交到接口正在处理！<p></p><p></p><span class=\"label label-warning\">处理中</span> 已经开始为您开单 请耐心等！<p></p><p></p><span class=\"label label-danger\">有异常</span> 下单信息有误 联系客服处理！'),
('gift_open', '0'),
('hbyu', ''),
('hide_tongji', '0'),
('index_class_num_style', '1'),
('invite_content', '特价名片赞0.1元起，免费领名片赞，空间人气、QQ钻、大会员、名片赞、说说赞、空间访问、全民K歌，链接：[url] (请复制链接到浏览器打开)'),
('iskami', '1'),
('jiamengzhuzhan', ''),
('jinrigx', '1'),
('keywords', '赚钱项目库'),
('kfqq', '3554597491'),
('kfwx', 'qq3554597491'),
('login_apiurl', ''),
('login_appid', ''),
('login_appkey', ''),
('login_qq', '2'),
('login_wx', '0'),
('mail_apikey', ''),
('mail_apiuser', ''),
('mail_cloud', '0'),
('mail_name', ''),
('mail_name2', ''),
('mail_port', '465'),
('mail_pwd', ''),
('mail_recv', ''),
('mail_smtp', 'smtp.qq.com'),
('maintain', '20230418'),
('modal', '<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"\">\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <p style=\"vertical-align:inherit;\">\r\n        <marquee behavior=\"alternate\" style=\"display: inline-block; overflow: hidden; text-align: initial; white-space: nowrap; box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n            <section style=\"will-change: transform;\" class=\"\">\r\n                <span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 18px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-size: 18px;\"><strong>平台24小时自助下单，欢迎代理加盟~</strong></span></strong></span>\r\n            </section>\r\n        </marquee>\r\n    </p>\r\n    <section class=\"_135editor\" data-tools=\"135\" data-id=\"95165\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; color: rgba(0, 0, 0, 0.87); font-size: 14px; background-color: rgb(255, 255, 255); font-family: Avenir, Helvetica, Arial, sans-serif;\">\r\n        <section style=\"box-sizing: border-box; margin: 15px 0px; padding: 0px; display: block; text-align: center;\">\r\n            <section data-width=\"100%\" style=\"box-sizing:border-box;max-width: 100% !important; margin: 0px; padding: 15px; display: block; border-image: initial; border-width: 1px 1px 3px; border-radius: 15px; border-style: solid; border-color: #057df5; background-color: #ffffff; width: 100%;\">\r\n                <section style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">下单须知</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">下单前请看清商品的介绍，不要填错下单所需要填写的正确邮箱账号！</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                    <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                        <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                            <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                        </section>\r\n                    </section>\r\n                    <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                            <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">付款注意事项</strong>\r\n                        </p>\r\n                        <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                            <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">付款请打开手机浏览器付款！电脑网页暂不支持付款，最好注册登录账号购买！如出现付款不出码/请第一时间点击网站订单找/如还是没有请填写工单联系客服处理。</span>\r\n                        </p>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">同款平台搭建</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">1.如果你也希望拥有一间属于自己的项目商城小店</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">2.可以在会员中心注册→</span><span style=\"background-color: #ffff00;\"><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000; background-color: #ffff00;\"><a href=\"/user/regsite.php\" target=\"_blank\" style=\"color: #ff0000; text-decoration-line: underline; background-color: #ffff00;\">开通分站</a></span></span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">3.一键开通拥有自己的商城→享受特价购买项目</span></strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <strong><span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">4.每天轻松推广就可以赚佣金</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">我们承诺</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">咱们平台内主要做全网项目整合，所有项目确保教程和附带的软件是详细且可以运行的，和外面卖大几百大几千的割韭菜项目一样，本站试错成本极低，并且有专门的售后团队处理售后问题，欢迎来盘！</span>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\" >平台三包政策：&nbsp;</span>\r\n                            </p>\r\n                            <p style=\"text-align:center;vertical-align: inherit; box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\" align=\"center\">\r\n                                <strong><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #ff0000;\">包更新&nbsp; 包维护&nbsp; 包售后</span></strong>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">售后须知</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                如遇项目和谐等不可抗拒因素可在平台内工单反馈，用户请仔细阅读本站条例，虚拟物品具有可复制性，一经拍下发货，视为认可项目注意事项说明！概不退款！如有问题可提交工单\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n                <section class=\"_135editor\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block;\">\r\n                    <section style=\"box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; display: flex; justify-content: flex-start; align-items: flex-start;\">\r\n                        <section style=\"box-sizing:border-box; margin: 4px 0px 0px; padding: 0px; display: block; width: 26px;\">\r\n                            <section style=\"box-sizing:border-box; margin: 0px; padding: 0px; display: block; width: 26px; height: 20px;\">\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px -14px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; border: 2px solid #057df5; overflow: hidden;transform: rotate(0deg);-webkit-transform: rotate(0deg);-moz-transform: rotate(0deg);-ms-transform: rotate(0deg);-o-transform: rotate(0deg);\"></section>\r\n                                <section style=\"box-sizing:border-box; margin: 0px 0px 0px 4px; padding: 0px; display: block; width: 16px; height: 16px; border-radius: 100%; background: #bbbbf8; overflow: hidden;\"></section>\r\n                            </section>\r\n                        </section>\r\n                        <section class=\"135brush\" data-brushtype=\"text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: block; flex: 1 1 0%; font-size: 16px; color: #057df5; text-align: justify; letter-spacing: 1.5px;\">\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n                                <strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">免责申明</strong>\r\n                            </p>\r\n                            <p style=\"vertical-align:inherit;box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-size: 15px;\">\r\n                                <span open=\"\" helvetica=\"\" font-size:=\"\" text-align:=\"\" display:=\"\" inline=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #646464;\">客服在线时间：早上12点至晚上24点，售后问题会在此时间段给予处理。</span>\r\n                            </p>\r\n                        </section>\r\n                    </section>\r\n                </section>\r\n            </section>\r\n        </section>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n    <section class=\"_135editor\" data-role=\"paragraph\">\r\n        <p style=\"vertical-align:inherit;\">\r\n            <br/>\r\n        </p>\r\n    </section>\r\n</section>'),
('musicurl', ''),
('openbatchorder', '0'),
('ordername', ''),
('payapi', '-1'),
('paymsg', '<hr/>小提示：<b style=\"color:red\">如果微信出现无法付款时，您可以把微信的钱转到QQ里，然后使用QQ钱包支付！<a href=\"./?mod=wx\" target=\"_blank\">点击查看教程</a></b>'),
('pricejk_cid', '0,1,15,3,4,9,10,11,12,13'),
('pricejk_edit', '0'),
('pricejk_lasttime', '2022-09-02 06:22:37'),
('pricejk_time', '600'),
('pricejk_yile', '0'),
('qiandao_day', '15'),
('qiandao_mult', '1.05'),
('qiandao_reward', '0.02'),
('qqjump', '0'),
('qqpay_api', '0'),
('queryorderlimit', '0'),
('qzone_rizhi_api', ''),
('qzone_shuoshuo_api', ''),
('search_open', '1'),
('selfrefund', '0'),
('shopdesc_editor', '1'),
('shoppingcart', '1'),
('show_changepwd', '0'),
('show_complain', '0'),
('sitename', '项目货源网'),
('sitename_hide', '0'),
('staticurl', ''),
('style', '1'),
('supedpic', ''),
('suppic', '0.3'),
('suptoolspic', '333'),
('suptoolspic1', '33'),
('suptoolspic2', '3'),
('sygg', ''),
('sygg2', ''),
('syggkg', '0'),
('syggtz', ''),
('sypfgg', '诚邀各级大咖合作共赢-24小时自助下单-售后稳定'),
('syskey', 'GcLy43TJaCcA4QQG36ZHGgqt4spoF3ST'),
('syzxkf', 'https://yzf.qq.com/xv/web/static/chat/index.html?sign=37ef9b97862007972446c8b81db4e730f216232753cf523b0ac1a00963b3baf724405dab01bc31a79f548b86ecda8e70d68fa78e'),
('template', 'storenews'),
('template_m', '0'),
('template_showprice', '0'),
('template_showsales', '0'),
('template_virtualdata', '1'),
('title', '拒绝割韭菜'),
('tixian_days', ''),
('tixian_limit', '1'),
('tixian_min', '1'),
('tixian_rate', '98'),
('tongji_cachetime', '1661943164'),
('tongji_time', '300'),
('txurl', ''),
('ui_background', '3'),
('ui_backgroundurl', '//cn.bing.com/th?id=OHR.QuebecCityBridge_ZH-CN9618387961_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp'),
('ui_bing', '2'),
('ui_bing_date', '20230501'),
('ui_color1', '#853ca8'),
('ui_color2', '#a83c69'),
('ui_colorto', '0'),
('ui_shop', '0'),
('ui_user', '0'),
('updatestatus', '1'),
('updatestatus_interval', '6'),
('user_level', '0'),
('user_open', '1'),
('verify_open', '1'),
('version', '2055'),
('wechat_api', '0'),
('wechat_apptoken', ''),
('wechat_appuid', ''),
('wechat_sckey', ''),
('wenzhangdizhi', '1'),
('work', 'https://img2.woyaogexing.com/2022/07/06/bd73a1be90801a16!400x400.jpg'),
('workorder_open', '1'),
('workorder_pic', '1'),
('workorder_type', '业务补单|卡密错误|充值没到账|订单中途改了密码'),
('wxpay_api', '0'),
('xcurl', ''),
('yhzx', ''),
('yhzx2', ''),
('yhzxkg', '0'),
('yhzxtz', ''),
('zfbimg', './img/bal.png');

-- --------------------------------------------------------

--
-- 表的结构 `shua_faka`
--

CREATE TABLE `shua_faka` (
  `kid` int(11) UNSIGNED NOT NULL,
  `tid` int(11) UNSIGNED NOT NULL,
  `km` varchar(255) DEFAULT NULL,
  `pw` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `usetime` datetime DEFAULT NULL,
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_faquan`
--

CREATE TABLE `shua_faquan` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `nr` text NOT NULL,
  `img` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `img4` text NOT NULL,
  `img5` text NOT NULL,
  `img6` text NOT NULL,
  `img7` text NOT NULL,
  `img8` text NOT NULL,
  `img9` text NOT NULL,
  `img10` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `shua_fxbl`
--

CREATE TABLE `shua_fxbl` (
  `id` int(11) NOT NULL,
  `lv1` double(10,1) NOT NULL,
  `lv2` double(10,1) NOT NULL,
  `lv3` double(10,1) NOT NULL,
  `lv4` double(10,1) NOT NULL,
  `lv5` double(10,1) NOT NULL,
  `lv6` double(10,1) NOT NULL,
  `lv7` double(10,1) NOT NULL,
  `lv8` double(10,1) NOT NULL,
  `lv9` double(10,1) NOT NULL,
  `lv10` double(10,1) NOT NULL,
  `lv11` double(10,1) NOT NULL,
  `lv12` double(10,1) NOT NULL,
  `lv13` double(10,1) NOT NULL,
  `lv14` double(10,1) NOT NULL,
  `lv15` double(10,1) NOT NULL,
  `lv16` double(10,1) NOT NULL,
  `lv17` double(10,1) NOT NULL,
  `lv18` double(10,1) NOT NULL,
  `lv19` double(10,1) NOT NULL,
  `lv20` double(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shua_fxbl`
--

INSERT INTO `shua_fxbl` (`id`, `lv1`, `lv2`, `lv3`, `lv4`, `lv5`, `lv6`, `lv7`, `lv8`, `lv9`, `lv10`, `lv11`, `lv12`, `lv13`, `lv14`, `lv15`, `lv16`, `lv17`, `lv18`, `lv19`, `lv20`) VALUES
(1, 20.0, 19.0, 18.0, 17.0, 1.6, 1.5, 1.4, 1.3, 1.2, 1.1, 1.0, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1);

-- --------------------------------------------------------

--
-- 表的结构 `shua_gift`
--

CREATE TABLE `shua_gift` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `tid` int(11) UNSIGNED NOT NULL,
  `rate` int(3) NOT NULL,
  `ok` tinyint(1) NOT NULL DEFAULT '0',
  `not` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_giftlog`
--

CREATE TABLE `shua_giftlog` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `userid` varchar(32) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `addtime` datetime DEFAULT NULL,
  `tradeno` varchar(32) DEFAULT NULL,
  `input` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_invite`
--

CREATE TABLE `shua_invite` (
  `id` int(11) UNSIGNED NOT NULL,
  `nid` int(11) UNSIGNED NOT NULL,
  `tid` int(11) UNSIGNED NOT NULL,
  `qq` varchar(20) NOT NULL,
  `input` text NOT NULL,
  `key` varchar(30) NOT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `plan` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_invitelog`
--

CREATE TABLE `shua_invitelog` (
  `id` int(11) UNSIGNED NOT NULL,
  `iid` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `orderid` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_inviteshop`
--

CREATE TABLE `shua_inviteshop` (
  `id` int(11) UNSIGNED NOT NULL,
  `tid` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) NOT NULL DEFAULT '0',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sort` int(11) NOT NULL DEFAULT '10',
  `addtime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_kms`
--

CREATE TABLE `shua_kms` (
  `kid` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `num` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `km` varchar(255) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` timestamp NULL DEFAULT NULL,
  `usetime` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_logs`
--

CREATE TABLE `shua_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `action` varchar(32) NOT NULL,
  `param` varchar(255) NOT NULL,
  `result` text,
  `addtime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_message`
--

CREATE TABLE `shua_message` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `type` int(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_orders`
--

CREATE TABLE `shua_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `tid` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `input` varchar(256) NOT NULL,
  `input2` varchar(256) DEFAULT NULL,
  `input3` varchar(256) DEFAULT NULL,
  `input4` varchar(256) DEFAULT NULL,
  `input5` varchar(256) DEFAULT NULL,
  `value` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `djzt` tinyint(1) NOT NULL DEFAULT '0',
  `djorder` varchar(32) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL,
  `result` text,
  `userid` varchar(32) DEFAULT NULL,
  `tradeno` varchar(32) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `intc` int(11) NOT NULL DEFAULT '0' COMMENT '提成结算'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_pay`
--

CREATE TABLE `shua_pay` (
  `trade_no` varchar(64) NOT NULL,
  `api_trade_no` varchar(64) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `channel` varchar(10) DEFAULT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `tid` int(11) NOT NULL,
  `input` text NOT NULL,
  `num` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `money` varchar(32) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `inviteid` int(11) UNSIGNED DEFAULT NULL,
  `domain` varchar(64) DEFAULT NULL,
  `blockdj` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_points`
--

CREATE TABLE `shua_points` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL,
  `point` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bz` varchar(1024) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `orderid` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_price`
--

CREATE TABLE `shua_price` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `kind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 倍数 1 价格',
  `name` varchar(255) NOT NULL,
  `p_0` decimal(8,2) NOT NULL DEFAULT '0.00',
  `p_1` decimal(8,2) NOT NULL DEFAULT '0.00',
  `p_2` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_qiandao`
--

CREATE TABLE `shua_qiandao` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `qq` varchar(20) DEFAULT NULL,
  `reward` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `continue` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_sendcode`
--

CREATE TABLE `shua_sendcode` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0邮箱 1手机',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0注册 1找回 2改绑',
  `code` varchar(32) NOT NULL,
  `to` varchar(32) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `shua_shequ`
--

CREATE TABLE `shua_shequ` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `paypwd` varchar(255) DEFAULT NULL,
  `paytype` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `result` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `protocol` tinyint(1) NOT NULL DEFAULT '0',
  `monitor` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_site`
--

CREATE TABLE `shua_site` (
  `zid` int(11) UNSIGNED NOT NULL,
  `upzid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `utype` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `power` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `domain` varchar(50) DEFAULT NULL,
  `domain2` varchar(50) DEFAULT NULL,
  `user` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq_openid` varchar(64) DEFAULT NULL,
  `wx_openid` varchar(64) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `faceimg` varchar(150) DEFAULT NULL,
  `rmb` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rmbtc` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(11) NOT NULL DEFAULT '0',
  `pay_type` int(1) NOT NULL DEFAULT '0',
  `pay_account` varchar(50) DEFAULT NULL,
  `pay_name` varchar(50) DEFAULT NULL,
  `qq` varchar(12) DEFAULT NULL,
  `sitename` varchar(80) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `kfqq` varchar(12) DEFAULT NULL,
  `kfwx` varchar(20) DEFAULT NULL,
  `anounce` text,
  `bottom` text,
  `modal` text,
  `alert` text,
  `price` longtext,
  `iprice` longtext,
  `appurl` varchar(150) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `ktfz_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ktfz_price2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ktfz_domain` text,
  `addtime` datetime DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `template` varchar(10) DEFAULT NULL,
  `msgread` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `inbr` int(11) NOT NULL DEFAULT '0' COMMENT '监控自动价格开关',
  `inbfb` text NOT NULL COMMENT '监控自动价格百分比',
  `ingd` text NOT NULL COMMENT '监控自动价格固定',
  `sj` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shua_site`
--

INSERT INTO `shua_site` (`zid`, `upzid`, `utype`, `power`, `domain`, `domain2`, `user`, `pwd`, `email`, `phone`, `qq_openid`, `wx_openid`, `nickname`, `faceimg`, `rmb`, `rmbtc`, `point`, `pay_type`, `pay_account`, `pay_name`, `qq`, `sitename`, `title`, `keywords`, `description`, `kfqq`, `kfwx`, `anounce`, `bottom`, `modal`, `alert`, `price`, `iprice`, `appurl`, `class`, `ktfz_price`, `ktfz_price2`, `ktfz_domain`, `addtime`, `lasttime`, `endtime`, `template`, `msgread`, `status`, `inbr`, `inbfb`, `ingd`, `sj`) VALUES
(1, 0, 0, 1, 'sq.yzf66.cn', '', 'QQ3554597491', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', 0, 0, '', '', '3554597491', '项目货源网-拒绝割韭菜', NULL, '赚钱项目库', '赚钱项目库', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '0.00', '0.00', NULL, '2023-04-18 00:13:38', NULL, '2000-04-18 00:00:00', NULL, NULL, 1, 0, '', '', ''),
(2, 0, 0, 2, '1.1.1', '', 'admin', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', 0, 0, NULL, NULL, '12312312', '项目货源网', NULL, '赚钱项目库', '赚钱项目库', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '0.00', '0.00', NULL, '2023-04-18 00:48:17', NULL, '2000-04-18 00:00:00', NULL, NULL, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `shua_sitetask`
--

CREATE TABLE `shua_sitetask` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `tid` int(11) UNSIGNED NOT NULL,
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `num` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `desc` text,
  `count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '10',
  `addtime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_tixian`
--

CREATE TABLE `shua_tixian` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `realmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_type` int(1) NOT NULL DEFAULT '0',
  `pay_account` varchar(50) NOT NULL,
  `pay_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_tools`
--

CREATE TABLE `shua_tools` (
  `tid` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `cid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '10',
  `name` varchar(255) NOT NULL,
  `value` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `prid` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cost2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `prices` varchar(100) DEFAULT NULL,
  `input` varchar(250) NOT NULL,
  `inputs` varchar(255) DEFAULT NULL,
  `desc` text,
  `alert` text,
  `shopimg` text,
  `validate` tinyint(1) NOT NULL DEFAULT '0',
  `valiserv` varchar(15) DEFAULT NULL,
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `is_curl` tinyint(1) NOT NULL DEFAULT '0',
  `curl` varchar(255) DEFAULT NULL,
  `repeat` tinyint(1) NOT NULL DEFAULT '0',
  `multi` tinyint(1) NOT NULL DEFAULT '0',
  `shequ` int(3) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_type` int(11) NOT NULL DEFAULT '0',
  `goods_param` text,
  `close` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `sales` int(11) NOT NULL DEFAULT '0',
  `stock` int(11) DEFAULT NULL,
  `pro` int(11) NOT NULL,
  `wx_test` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `tc` decimal(11,1) NOT NULL COMMENT '提成',
  `daim` text COMMENT '代码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `shua_workorder`
--

CREATE TABLE `shua_workorder` (
  `id` int(11) UNSIGNED NOT NULL,
  `zid` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `type` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `picurl` varchar(150) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转储表的索引
--

--
-- 表的索引 `shua_account`
--
ALTER TABLE `shua_account`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_apps`
--
ALTER TABLE `shua_apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- 表的索引 `shua_article`
--
ALTER TABLE `shua_article`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_cache`
--
ALTER TABLE `shua_cache`
  ADD PRIMARY KEY (`k`);

--
-- 表的索引 `shua_cart`
--
ALTER TABLE `shua_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- 表的索引 `shua_class`
--
ALTER TABLE `shua_class`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `shua_config`
--
ALTER TABLE `shua_config`
  ADD PRIMARY KEY (`k`);

--
-- 表的索引 `shua_faka`
--
ALTER TABLE `shua_faka`
  ADD PRIMARY KEY (`kid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `tid` (`tid`),
  ADD KEY `getleft` (`tid`,`orderid`);

--
-- 表的索引 `shua_faquan`
--
ALTER TABLE `shua_faquan`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_fxbl`
--
ALTER TABLE `shua_fxbl`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_gift`
--
ALTER TABLE `shua_gift`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_giftlog`
--
ALTER TABLE `shua_giftlog`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_invite`
--
ALTER TABLE `shua_invite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `nid` (`nid`),
  ADD KEY `qq` (`qq`);

--
-- 表的索引 `shua_invitelog`
--
ALTER TABLE `shua_invitelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iid` (`iid`,`status`),
  ADD KEY `iidip` (`iid`,`ip`);

--
-- 表的索引 `shua_inviteshop`
--
ALTER TABLE `shua_inviteshop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`);

--
-- 表的索引 `shua_kms`
--
ALTER TABLE `shua_kms`
  ADD PRIMARY KEY (`kid`);

--
-- 表的索引 `shua_logs`
--
ALTER TABLE `shua_logs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_message`
--
ALTER TABLE `shua_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- 表的索引 `shua_orders`
--
ALTER TABLE `shua_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zid` (`zid`),
  ADD KEY `input` (`input`(191)),
  ADD KEY `userid` (`userid`);

--
-- 表的索引 `shua_pay`
--
ALTER TABLE `shua_pay`
  ADD PRIMARY KEY (`trade_no`);

--
-- 表的索引 `shua_points`
--
ALTER TABLE `shua_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zid` (`zid`),
  ADD KEY `action` (`action`(191)),
  ADD KEY `orderid` (`orderid`);

--
-- 表的索引 `shua_price`
--
ALTER TABLE `shua_price`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_qiandao`
--
ALTER TABLE `shua_qiandao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zid` (`zid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `date` (`date`);

--
-- 表的索引 `shua_sendcode`
--
ALTER TABLE `shua_sendcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- 表的索引 `shua_shequ`
--
ALTER TABLE `shua_shequ`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shua_site`
--
ALTER TABLE `shua_site`
  ADD PRIMARY KEY (`zid`),
  ADD UNIQUE KEY `user` (`user`),
  ADD KEY `domain` (`domain`),
  ADD KEY `domain2` (`domain2`),
  ADD KEY `qq` (`qq`),
  ADD KEY `qq_openid` (`qq_openid`),
  ADD KEY `wx_openid` (`wx_openid`);

--
-- 表的索引 `shua_sitetask`
--
ALTER TABLE `shua_sitetask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`);

--
-- 表的索引 `shua_tixian`
--
ALTER TABLE `shua_tixian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zid` (`zid`);

--
-- 表的索引 `shua_tools`
--
ALTER TABLE `shua_tools`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `cid` (`cid`);

--
-- 表的索引 `shua_workorder`
--
ALTER TABLE `shua_workorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zid` (`zid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `shua_account`
--
ALTER TABLE `shua_account`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_apps`
--
ALTER TABLE `shua_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_article`
--
ALTER TABLE `shua_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_cart`
--
ALTER TABLE `shua_cart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_class`
--
ALTER TABLE `shua_class`
  MODIFY `cid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 使用表AUTO_INCREMENT `shua_faka`
--
ALTER TABLE `shua_faka`
  MODIFY `kid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_faquan`
--
ALTER TABLE `shua_faquan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_fxbl`
--
ALTER TABLE `shua_fxbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `shua_gift`
--
ALTER TABLE `shua_gift`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_giftlog`
--
ALTER TABLE `shua_giftlog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_invite`
--
ALTER TABLE `shua_invite`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_invitelog`
--
ALTER TABLE `shua_invitelog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_inviteshop`
--
ALTER TABLE `shua_inviteshop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_kms`
--
ALTER TABLE `shua_kms`
  MODIFY `kid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_logs`
--
ALTER TABLE `shua_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_message`
--
ALTER TABLE `shua_message`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `shua_orders`
--
ALTER TABLE `shua_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `shua_points`
--
ALTER TABLE `shua_points`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `shua_price`
--
ALTER TABLE `shua_price`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `shua_qiandao`
--
ALTER TABLE `shua_qiandao`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_sendcode`
--
ALTER TABLE `shua_sendcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_shequ`
--
ALTER TABLE `shua_shequ`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `shua_site`
--
ALTER TABLE `shua_site`
  MODIFY `zid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `shua_sitetask`
--
ALTER TABLE `shua_sitetask`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `shua_tixian`
--
ALTER TABLE `shua_tixian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_tools`
--
ALTER TABLE `shua_tools`
  MODIFY `tid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `shua_workorder`
--
ALTER TABLE `shua_workorder`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
