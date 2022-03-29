-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-03-18 18:31:49
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `primeal`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bento`
--

CREATE TABLE `bento` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `bento_id` int(11) NOT NULL COMMENT '便當id',
  `c_prod_id` int(11) NOT NULL COMMENT '每個便當有6顆壽司2顆甜點'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `bento`
--

INSERT INTO `bento` (`sid`, `bento_id`, `c_prod_id`) VALUES
(1, 1, 17),
(2, 1, 18),
(3, 1, 19),
(4, 1, 16),
(5, 1, 6),
(6, 1, 1),
(7, 1, 39),
(8, 1, 35),
(9, 2, 13),
(10, 2, 16),
(11, 2, 18),
(12, 2, 19),
(13, 2, 18),
(14, 2, 28),
(15, 2, 31),
(16, 2, 35),
(17, 3, 14),
(18, 3, 18),
(19, 3, 17),
(20, 3, 15),
(21, 3, 5),
(22, 3, 25),
(23, 3, 33),
(24, 3, 30),
(25, 4, 18),
(26, 4, 14),
(27, 4, 16),
(28, 4, 13),
(29, 4, 12),
(30, 4, 19),
(31, 4, 36),
(32, 4, 38),
(33, 5, 19),
(34, 5, 18),
(35, 5, 14),
(36, 5, 17),
(37, 5, 5),
(38, 5, 18),
(39, 5, 37),
(40, 5, 33),
(41, 6, 13),
(42, 6, 17),
(43, 6, 15),
(44, 6, 14),
(45, 6, 12),
(46, 6, 9),
(47, 6, 34),
(48, 6, 32),
(49, 7, 15),
(50, 7, 14),
(51, 7, 16),
(52, 7, 19),
(53, 7, 8),
(54, 7, 3),
(55, 7, 37),
(56, 7, 34),
(57, 8, 14),
(58, 8, 17),
(59, 8, 19),
(60, 8, 18),
(61, 8, 25),
(62, 8, 24),
(63, 8, 33),
(64, 8, 32),
(65, 9, 18),
(66, 9, 19),
(67, 9, 16),
(68, 9, 15),
(69, 9, 4),
(70, 9, 15),
(71, 9, 31),
(72, 9, 33),
(73, 10, 16),
(74, 10, 19),
(75, 10, 15),
(76, 10, 18),
(77, 10, 15),
(78, 10, 10),
(79, 10, 35),
(80, 10, 30),
(81, 11, 4),
(82, 11, 17),
(83, 11, 28),
(84, 11, 14),
(85, 11, 2),
(86, 11, 5),
(87, 11, 31),
(88, 11, 38),
(89, 12, 18),
(90, 12, 26),
(91, 12, 19),
(92, 12, 12),
(93, 12, 15),
(94, 12, 5),
(95, 12, 30),
(96, 12, 39),
(97, 13, 16),
(98, 13, 19),
(99, 13, 20),
(100, 13, 11),
(101, 13, 10),
(102, 13, 19),
(103, 13, 32),
(104, 13, 31),
(105, 14, 16),
(106, 14, 12),
(107, 14, 24),
(108, 14, 26),
(109, 14, 5),
(110, 14, 15),
(111, 14, 39),
(112, 14, 35),
(113, 15, 24),
(114, 15, 21),
(115, 15, 2),
(116, 15, 9),
(117, 15, 16),
(118, 15, 12),
(119, 15, 33),
(120, 15, 38),
(121, 16, 9),
(122, 16, 20),
(123, 16, 12),
(124, 16, 14),
(125, 16, 5),
(126, 16, 19),
(127, 16, 40),
(128, 16, 35),
(129, 17, 11),
(130, 17, 20),
(131, 17, 13),
(132, 17, 26),
(133, 17, 4),
(134, 17, 9),
(135, 17, 36),
(136, 17, 34),
(137, 18, 19),
(138, 18, 10),
(139, 18, 5),
(140, 18, 17),
(141, 18, 25),
(142, 18, 4),
(143, 18, 37),
(144, 18, 35),
(145, 19, 25),
(146, 19, 24),
(147, 19, 9),
(148, 19, 4),
(149, 19, 16),
(150, 19, 19),
(151, 19, 29),
(152, 19, 31),
(153, 20, 27),
(154, 20, 4),
(155, 20, 21),
(156, 20, 19),
(157, 20, 3),
(158, 20, 10),
(159, 20, 37),
(160, 20, 29),
(161, 21, 17),
(162, 21, 14),
(163, 21, 24),
(164, 21, 18),
(165, 21, 10),
(166, 21, 27),
(167, 21, 35),
(168, 21, 32),
(169, 22, 18),
(170, 22, 15),
(171, 22, 16),
(172, 22, 23),
(173, 22, 26),
(174, 22, 7),
(175, 22, 30),
(176, 22, 33),
(177, 23, 19),
(178, 23, 6),
(179, 23, 2),
(180, 23, 14),
(181, 23, 7),
(182, 23, 4),
(183, 23, 40),
(184, 23, 35),
(185, 24, 14),
(186, 24, 2),
(187, 24, 19),
(188, 24, 5),
(189, 24, 12),
(190, 24, 6),
(191, 24, 40),
(192, 24, 34),
(193, 25, 2),
(194, 25, 1),
(195, 25, 5),
(196, 25, 18),
(197, 25, 26),
(198, 25, 24),
(199, 25, 32),
(200, 25, 29),
(201, 26, 25),
(202, 26, 28),
(203, 26, 2),
(204, 26, 6),
(205, 26, 7),
(206, 26, 17),
(207, 26, 39),
(208, 26, 31),
(209, 27, 27),
(210, 27, 13),
(211, 27, 6),
(212, 27, 28),
(213, 27, 20),
(214, 27, 22),
(215, 27, 34),
(216, 27, 35),
(217, 28, 2),
(218, 28, 11),
(219, 28, 20),
(220, 28, 14),
(221, 28, 17),
(222, 28, 6),
(223, 28, 35),
(224, 28, 38),
(225, 29, 18),
(226, 29, 9),
(227, 29, 3),
(228, 29, 21),
(229, 29, 27),
(230, 29, 1),
(231, 29, 29),
(232, 29, 36),
(233, 30, 5),
(234, 30, 19),
(235, 30, 17),
(236, 30, 8),
(237, 30, 23),
(238, 30, 1),
(239, 30, 39),
(240, 30, 32),
(241, 31, 14),
(242, 31, 9),
(243, 31, 27),
(244, 31, 3),
(245, 31, 10),
(246, 31, 19),
(247, 31, 36),
(248, 31, 35),
(249, 32, 5),
(250, 32, 19),
(251, 32, 27),
(252, 32, 1),
(253, 32, 20),
(254, 32, 7),
(255, 32, 31),
(256, 32, 30),
(257, 33, 11),
(258, 33, 21),
(259, 33, 15),
(260, 33, 24),
(261, 33, 4),
(262, 33, 25),
(263, 33, 36),
(264, 33, 32),
(265, 34, 16),
(266, 34, 3),
(267, 34, 5),
(268, 34, 22),
(269, 34, 24),
(270, 34, 21),
(271, 34, 37),
(272, 34, 40),
(273, 35, 10),
(274, 35, 23),
(275, 35, 9),
(276, 35, 27),
(277, 35, 8),
(278, 35, 25),
(279, 35, 35),
(280, 35, 38),
(281, 36, 15),
(282, 36, 13),
(283, 36, 28),
(284, 36, 18),
(285, 36, 1),
(286, 36, 14),
(287, 36, 37),
(288, 36, 34),
(289, 37, 16),
(290, 37, 2),
(291, 37, 10),
(292, 37, 14),
(293, 37, 28),
(294, 37, 6),
(295, 37, 38),
(296, 37, 29),
(297, 38, 27),
(298, 38, 7),
(299, 38, 12),
(300, 38, 23),
(301, 38, 16),
(302, 38, 19),
(303, 38, 36),
(304, 38, 39),
(305, 39, 17),
(306, 39, 15),
(307, 39, 13),
(308, 39, 28),
(309, 39, 6),
(310, 39, 8),
(311, 39, 40),
(312, 39, 32),
(313, 40, 23),
(314, 40, 11),
(315, 40, 13),
(316, 40, 22),
(317, 40, 25),
(318, 40, 10),
(319, 40, 33),
(320, 40, 38);

-- --------------------------------------------------------

--
-- 資料表結構 `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL COMMENT '購物車ID',
  `mem_id` int(11) NOT NULL COMMENT '會員ID',
  `cart_value` int(11) DEFAULT NULL COMMENT '購物車折扣前總額',
  `cart_credit` int(11) DEFAULT NULL COMMENT '購物車使用折扣金額',
  `cart_total_print_time` int(11) DEFAULT NULL COMMENT '購物車總印製時間',
  `cart_checkout_date` datetime DEFAULT NULL COMMENT '購物車結帳時間',
  `cart_status` varchar(255) NOT NULL COMMENT '購物車狀態',
  `cart_store_id` int(11) DEFAULT NULL COMMENT '購物車取貨門市id',
  `cart_pickup_date` datetime DEFAULT NULL COMMENT '購物車取貨時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='購物車';

--
-- 傾印資料表的資料 `cart`
--

INSERT INTO `cart` (`cart_id`, `mem_id`, `cart_value`, `cart_credit`, `cart_total_print_time`, `cart_checkout_date`, `cart_status`, `cart_store_id`, `cart_pickup_date`) VALUES
(1, 1, 2630, 10, 390, '2022-02-12 00:00:00', '未結帳', 2, '2022-02-15 00:00:00'),
(2, 2, 4105, 5, 330, '2022-02-13 00:00:00', '未結帳', 4, '2022-02-16 00:00:00'),
(3, 3, 175, 5, 360, '2022-02-14 00:00:00', '未結帳', 10, '2022-02-17 00:00:00'),
(4, 4, 135, 5, 180, '2022-02-15 00:00:00', '未結帳', 500, '2022-02-18 00:00:00'),
(5, 5, 220, 5, 450, '2022-02-16 00:00:00', '未結帳', 50, '2022-02-19 00:00:00'),
(6, 6, 110, 5, 270, '2022-02-17 00:00:00', '未結帳', 60, '2022-02-20 00:00:00'),
(7, 7, 55, 5, 30, '2022-02-17 00:00:00', '未結帳', 6, '2022-02-20 00:00:00'),
(8, 8, 135, 5, 240, '2022-02-17 00:00:00', '未結帳', 8, '2022-02-20 00:00:00'),
(9, 9, 117, 7, 150, '2022-02-17 00:00:00', '未結帳', 2, '2022-02-20 00:00:00'),
(10, 10, 132, 0, 330, '2022-02-17 00:00:00', '未結帳', 4, '2022-02-20 00:00:00'),
(11, 11, 65, 5, 90, '2022-02-17 00:00:00', '未結帳', 6, '2022-02-20 00:00:00'),
(12, 12, 132, 0, 240, '2022-02-17 00:00:00', '未結帳', 5, '2022-02-20 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `cart_orders`
--

CREATE TABLE `cart_orders` (
  `orders_id` int(11) NOT NULL COMMENT '商品訂單ID',
  `cart_id` int(11) NOT NULL COMMENT '購物車ID',
  `mem_id` int(11) NOT NULL COMMENT '會員ID',
  `product_id` int(11) NOT NULL COMMENT '商品ID',
  `orders_value` int(11) DEFAULT NULL COMMENT '商品單價',
  `orders_amount` int(11) DEFAULT NULL COMMENT '商品數量',
  `orders_print_time` int(255) NOT NULL COMMENT '商品印製時間',
  `orders_category` varchar(255) NOT NULL COMMENT '商品類別 cs經典 | cm客製 | set套餐',
  `orders_date` datetime NOT NULL COMMENT '商品加入購物車時間',
  `share_state` varchar(255) NOT NULL COMMENT '分享狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品訂單';

--
-- 傾印資料表的資料 `cart_orders`
--

INSERT INTO `cart_orders` (`orders_id`, `cart_id`, `mem_id`, `product_id`, `orders_value`, `orders_amount`, `orders_print_time`, `orders_category`, `orders_date`, `share_state`) VALUES
(1, 1, 1, 15, 65, 1, 90, 'cs', '2022-02-12 00:00:00', 'active'),
(2, 1, 1, 1, 65, 1, 300, 'cm', '2022-02-12 00:00:00', 'inactive'),
(3, 1, 1, 1, 2500, 1, 0, 'set', '2022-02-12 00:00:00', 'inactive'),
(4, 2, 2, 19, 60, 1, 150, 'cs', '2022-02-13 00:00:00', 'inactive'),
(5, 2, 2, 4, 45, 1, 180, 'cm', '2022-02-13 00:00:00', 'inactive'),
(6, 2, 2, 2, 4000, 1, 0, 'set', '2022-02-13 00:00:00', 'inactive'),
(7, 3, 3, 6, 40, 1, 150, 'cs', '2022-02-14 00:00:00', 'inactive'),
(8, 3, 3, 8, 70, 1, 120, 'cs', '2022-02-14 00:00:00', 'inactive'),
(9, 3, 3, 15, 65, 1, 90, 'cs', '2022-02-14 00:00:00', 'inactive'),
(10, 3, 3, 5, 65, 1, 300, 'cm', '2022-02-14 00:00:00', 'inactive'),
(11, 4, 4, 6, 45, 1, 180, 'cm', '2022-02-15 00:00:00', 'inactive'),
(12, 4, 4, 2, 65, 1, 60, 'cs', '2022-02-15 00:00:00', 'inactive'),
(13, 4, 4, 8, 70, 1, 120, 'cs', '2022-02-15 00:00:00', 'inactive'),
(14, 5, 5, 18, 55, 1, 30, 'cs', '2022-02-16 00:00:00', 'inactive'),
(15, 5, 5, 2, 65, 1, 60, 'cs', '2022-02-16 00:00:00', 'inactive'),
(16, 5, 5, 12, 55, 1, 60, 'cs', '2022-02-16 00:00:00', 'inactive'),
(17, 6, 6, 7, 65, 1, 90, 'cs', '2022-02-17 00:00:00', 'inactive'),
(18, 7, 7, 18, 55, 1, 30, 'cs', '2022-02-17 00:00:00', 'inactive'),
(19, 8, 8, 9, 40, 1, 30, 'cs', '2022-02-17 00:00:00', 'inactive'),
(20, 8, 8, 6, 40, 1, 150, 'cs', '2022-02-17 00:00:00', 'inactive'),
(21, 8, 8, 12, 55, 1, 60, 'cs', '2022-02-17 00:00:00', 'inactive'),
(22, 9, 9, 7, 65, 1, 90, 'cs', '2022-02-17 00:00:00', 'inactive'),
(23, 9, 9, 22, 52, 1, 60, 'cs', '2022-02-17 00:00:00', 'inactive'),
(24, 10, 10, 6, 40, 1, 150, 'cs', '2022-02-17 00:00:00', 'inactive'),
(25, 10, 10, 26, 50, 1, 90, 'cs', '2022-02-17 00:00:00', 'inactive'),
(26, 10, 10, 20, 42, 1, 90, 'cs', '2022-02-17 00:00:00', 'inactive'),
(27, 11, 11, 15, 65, 1, 90, 'cs', '2022-02-17 00:00:00', 'inactive'),
(28, 12, 12, 6, 40, 1, 150, 'cs', '2022-02-17 00:00:00', 'inactive'),
(29, 12, 12, 9, 40, 1, 30, 'cs', '2022-02-17 00:00:00', 'inactive'),
(30, 12, 12, 22, 52, 1, 60, 'cs', '2022-02-17 00:00:00', 'inactive');

-- --------------------------------------------------------

--
-- 資料表結構 `cm_prod`
--

CREATE TABLE `cm_prod` (
  `cm_prod_id` int(11) NOT NULL COMMENT '客製化商品ID',
  `cm_prod_name` varchar(255) NOT NULL COMMENT '客製化商品名稱',
  `cm_prod_value` int(11) NOT NULL COMMENT '客製化商品售價',
  `cm_prod_print_time` int(11) NOT NULL COMMENT '客製化商品印製時間',
  `cm_prod_img_path` varchar(255) NOT NULL COMMENT '客製化圖片路徑',
  `mem_id` int(11) NOT NULL COMMENT '外鍵-會員ID',
  `cm_prod_edit_time` datetime NOT NULL COMMENT '客製化商品編輯時間',
  `cm_prod_status` varchar(255) NOT NULL COMMENT '完成狀態',
  `orders_category` varchar(255) NOT NULL DEFAULT 'cm' COMMENT '商品類別 cs經典 | cm客製 | set套餐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `cm_prod`
--

INSERT INTO `cm_prod` (`cm_prod_id`, `cm_prod_name`, `cm_prod_value`, `cm_prod_print_time`, `cm_prod_img_path`, `mem_id`, `cm_prod_edit_time`, `cm_prod_status`, `orders_category`) VALUES
(1, '美味壽司', 65, 300, '/img/cm_prod_img_path/1.jpg', 1, '0000-00-00 00:00:00', 'completed', 'cm'),
(2, '', 35, 150, '', 2, '2022-03-01 12:13:00', 'del', 'cm'),
(3, '', 20, 90, '', 1, '0000-00-00 00:00:00', 'undone', 'cm'),
(4, '我就不會取名', 45, 180, '/img/cm_prod_img_path/1.jpg', 2, '2022-03-01 12:18:00', 'completed', 'cm'),
(5, '鮭鮭鮭', 65, 300, '/img/cm_prod_img_path/1.jpg', 3, '0000-00-00 00:00:00', 'completed', 'cm'),
(6, '吼游', 45, 180, '', 3, '0000-00-00 00:00:00', '', 'cm');

-- --------------------------------------------------------

--
-- 資料表結構 `cm_prod_mtl`
--

CREATE TABLE `cm_prod_mtl` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `cm_prod_id` int(11) NOT NULL COMMENT '外鍵-客製化產品ID',
  `mtl_id` int(11) NOT NULL COMMENT '外鍵-mtlID',
  `mtl_layer` int(11) NOT NULL COMMENT '食材位置層數',
  `mtl_pct` int(11) NOT NULL COMMENT '單一食材份數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `cm_prod_mtl`
--

INSERT INTO `cm_prod_mtl` (`sid`, `cm_prod_id`, `mtl_id`, `mtl_layer`, `mtl_pct`) VALUES
(1, 1, 1, 1, 2),
(2, 1, 10, 2, 1),
(3, 1, 25, 3, 3),
(4, 2, 1, 1, 2),
(5, 2, 2, 2, 1),
(6, 2, 3, 3, 3),
(7, 3, 1, 1, 1),
(8, 3, 2, 2, 1),
(9, 4, 1, 1, 2),
(10, 4, 2, 4, 1),
(11, 4, 3, 3, 1),
(12, 4, 4, 2, 3),
(13, 5, 1, 1, 2),
(14, 5, 10, 2, 1),
(15, 5, 25, 3, 3),
(16, 6, 1, 1, 2),
(17, 6, 2, 4, 1),
(18, 6, 3, 3, 1),
(19, 6, 4, 2, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `cs_prod`
--

CREATE TABLE `cs_prod` (
  `pid` int(11) NOT NULL COMMENT 'product sid',
  `c_prod_ch_name` varchar(255) NOT NULL COMMENT '商品中文名稱',
  `c_prod_en_name` varchar(255) NOT NULL COMMENT '商品英文名稱',
  `c_prod_cate` varchar(20) NOT NULL COMMENT '商品分類',
  `c_prod_value` int(11) NOT NULL COMMENT '商品原價',
  `c_prod_discount` varchar(10) DEFAULT NULL COMMENT '商品折扣',
  `c_prod_spe_value` int(11) DEFAULT NULL COMMENT '商品特價',
  `c_prod_special_tag` varchar(255) DEFAULT NULL COMMENT '商品特殊標籤',
  `c_prod_print_time` int(11) DEFAULT NULL COMMENT '商品印製時間',
  `c_prod_desc` varchar(255) NOT NULL COMMENT '商品敘述',
  `c_prod_material_arr` varchar(100) DEFAULT NULL COMMENT '商品原料',
  `c_prod_img_path` varchar(255) DEFAULT NULL COMMENT '商品圖片',
  `c_prod_rec_arr` varchar(255) DEFAULT NULL COMMENT '商品的推薦商品',
  `c_prod_group_tag` varchar(255) DEFAULT NULL COMMENT '商品XX',
  `orders_category` varchar(255) NOT NULL DEFAULT 'cs' COMMENT '商品類別 cs經典 | cm客製 | set套餐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cs_prod`
--

INSERT INTO `cs_prod` (`pid`, `c_prod_ch_name`, `c_prod_en_name`, `c_prod_cate`, `c_prod_value`, `c_prod_discount`, `c_prod_spe_value`, `c_prod_special_tag`, `c_prod_print_time`, `c_prod_desc`, `c_prod_material_arr`, `c_prod_img_path`, `c_prod_rec_arr`, `c_prod_group_tag`, `orders_category`) VALUES
(1, '牛排', 'Steak ', 'sushi', 60, '25%', 45, '25%OFF', 30, '', '1,2,3', '/img/classic/steak.png', '2,3,4', NULL, 'cs'),
(2, '肉排三重奏', 'Triple Meat ', 'sushi', 65, '', 0, '', 60, '', '1,2,3', '/img/classic/triplemeat.png ', '1,3,4', NULL, 'cs'),
(3, '金華火腿', 'Ham ', 'sushi', 50, '25%', 38, '25%OFF', 60, '', '1,2,3', '/img/classic/ham.png ', '2,4,5', NULL, 'cs'),
(4, '番茄肉排', 'Meat&Tomato', 'sushi', 55, '20%', 44, '20%OFF', 60, '', '1,2,3', '/img/classic/meattomato.png', '1,3,5', NULL, 'cs'),
(5, '薯泥肉片', 'Meat with Mashed Potatoes', 'sushi', 55, '', 0, 'New', 90, '', '1,2,3', '/img/classic/meatmashedpotatoes.png', '1,2,3', NULL, 'cs'),
(6, '焦糖鮭魚玉子', 'Caramel Salmon with Egg', 'sushi', 60, '25%', 45, '', 150, '', '1,2,3', '/img/classic/caramelsalmonwithegg.png', '8,9,10', NULL, 'cs'),
(7, '花枝', 'Cuttlefish ', 'sushi', 65, '', 0, '', 90, '', '1,2,3', '/img/classic/cuttlefish.png ', '19,20,21', NULL, 'cs'),
(8, '清檸干貝魚子醬', 'Lemon Scallop with Caviar', 'sushi', 70, '', 0, '', 120, '', '1,2,3', '/img/classic/lemonscallopwithcaviar.png', '12,20,21', NULL, 'cs'),
(9, '酪梨鮭魚魚子', 'Avocado Salmon with Caviar', 'sushi', 50, '20%', 40, '20%OFF', 30, '', '1,2,3', '/img/classic/avocadosalmonwithcaviar.png', '6,8,10', NULL, 'cs'),
(10, '煙燻鮭魚玉子', 'Smoked Salmon with Egg', 'sushi', 50, '', 0, '', 30, '', '1,2,3', '/img/classic/smokedsalmonwithegg.png', '6,9,18', NULL, 'cs'),
(11, '鮪魚', 'Tuna ', 'sushi', 60, '25%', 45, '25%OFF', 60, '', '1,2,3', '/img/classic/tuna.png', '12,21,22', NULL, 'cs'),
(12, '炙燒起司鯖魚', 'Roasted Cheese Mackerel ', 'sushi', 55, '', 0, '', 60, '', '1,2,3', '/img/classic/roastedcheesemackerel.png', '7,11,21', NULL, 'cs'),
(13, '綜合野菜', 'Mixed Vegetables', 'sushi', 55, '25%', 42, '25%OFF', 90, '', '1,2,3', '/img/classic/mixedvegetables.png', '14,15,16', NULL, 'cs'),
(14, '紫洋菜紫薯', 'Purple Sweet Potato & Cabbage', 'sushi', 60, '', 0, '', 60, '', '1,2,3', '/img/classic/purplesweetpotatocabbage.png', '13,15,16', NULL, 'cs'),
(15, '起司三杯茄子', 'Stewed Soy Sauce Eggplant with Cheese', 'sushi', 65, '', 0, '', 90, '', '1,2,3', '/img/classic/stewedsoysauceeggplantcheese.png', '13,14,17', NULL, 'cs'),
(16, '紅蘿蔔地瓜泥', 'Carrot with Mashed Sweet Potato', 'sushi', 70, '25%', 53, '25%OFF', 120, '', '1,2,3', '/img/classic/carrotmashedsweetpotato.png', '13,14,15', NULL, 'cs'),
(17, '野菜茄子明太子', 'Vegetable&Eggplant with Mentaiko', 'sushi', 50, '20%', 40, '20%OFF', 120, '', '1,2,3', '/img/classic/vegetableeggplantmentaiko.png', '13,14,16', NULL, 'cs'),
(18, '玉子海苔', 'Egg and Seaweed', 'sushi', 55, '', 0, '', 30, '', '1,2,3', '/img/classic/eggandseaweed.png', '6,10,11', NULL, 'cs'),
(19, '酪梨軍艦', 'Avocado Warship Roll', 'sushi', 60, '', 0, 'New', 150, '', '1,2,3', '/img/classic/avocadowarshiproll.png', '20,21,22', NULL, 'cs'),
(20, '蝦卵軍艦', 'Shrimp Eggs Warship Roll', 'sushi', 55, '25%', 42, '', 90, '', '1,2,3', '/img/classic/shrimpeggswarshiproll.png', '19,21,22', NULL, 'cs'),
(21, '鮭魚卵軍艦', 'Salmon Eggs Warship Roll', 'sushi', 50, '', 0, '', 60, '', '1,2,3', '/img/classic/salmoneggswarshiproll.png', '19,20,21', NULL, 'cs'),
(22, '雞湯凍', 'Chicken Soup Jelly', 'sushi', 65, '20%', 52, '20%OFF', 60, '', '1,2,3', '/img/classic/chickensoupjelly.png', '1,3,4', NULL, 'cs'),
(23, '羊羹櫻花凍', 'Yokan&Cherry Blossoms Jelly', 'sushi', 65, '', 0, 'New', 90, '', '1,2,3', '/img/classic/yokancherryblossomsjelly.png', '22,24,25', NULL, 'cs'),
(24, '玫瑰凍堅果', 'Rose Jelly with Nuts', 'sushi', 70, '', 0, '', 30, '', '1,2,3', '/img/classic/rosejellywithnuts.png', '23,25,26', NULL, 'cs'),
(25, '柚香愛玉', 'Grapefruit Ice Jelly', 'sushi', 55, '20%', 44, '20%OFF', 60, '', '1,2,3', '/img/classic/grapefruiticejelly.png', '23,24,26', NULL, 'cs'),
(26, '紅豆抹茶', 'Red Beans with Mocha', 'sushi', 50, '', 0, '', 90, '', '1,2,3', '/img/classic/redbeanswithmocha.png', '23,24,25', NULL, 'cs'),
(27, '蜜蘋果奇異果', 'Apple&Kiwi', 'sushi', 55, '', 0, '', 120, '', '1,2,3', '/img/classic/applekiwi.png', '23,24,25', NULL, 'cs'),
(28, '醬燒麻糬', 'Mochi with Soy Sauce', 'sushi', 60, '25%', 45, '25%OFF', 150, '', '1,2,3', '/img/classic/mochiwithsoysauce.png', '23,24,25', NULL, 'cs'),
(29, '巧克力草莓', 'Chocolate&Strawberry', 'dessert', 55, '', 0, 'New', 90, '', '1,2,3', '/img/classic/chocolatestrawberry.png', '30,31,32', NULL, 'cs'),
(30, '西瓜', 'Watermelon', 'dessert', 65, '', 0, '', 30, '', '1,2,3', '/img/classic/watermelon.png', '31,32,33', NULL, 'cs'),
(31, '南瓜泥', 'Mashed Pumpkin', 'dessert', 70, '', 0, '', 60, '', '1,2,3', '/img/classic/mashedpumpkin.png', '33,34,35', NULL, 'cs'),
(32, '柑橘胡蘿蔔', 'Orange Carrot', 'dessert', 50, '', 0, '', 60, '', '1,2,3', '/img/classic/orangecarrot.png', '33,34,35', NULL, 'cs'),
(33, '柚子醬佐蜜桃', 'Peach with Grapefruit Sauce', 'dessert', 50, '', 0, '', 90, '', '1,2,3', '/img/classic/peachwithgrapefruitsauce.png', '34,35,36', NULL, 'cs'),
(34, '香瓜', 'Melon', 'dessert', 55, '', 0, '', 30, '', '1,2,3', '/img/classic/melon.png', '35,36,37', NULL, 'cs'),
(35, '焦糖布丁', 'Caramel Pudding', 'dessert', 65, '', 0, '', 120, '', '1,2,3', '/img/classic/caramelpudding.png', '36,37,38', NULL, 'cs'),
(36, '綠茶', 'Green Tea', 'dessert', 55, '', 0, 'New', 90, '', '1,2,3', '/img/classic/greentea.png', '29,30,31', NULL, 'cs'),
(37, '彈珠汽水', 'Marble Soda', 'dessert', 50, '', 0, '', 60, '', '1,2,3', '/img/classic/marblesoda.png', '29,30,31', NULL, 'cs'),
(38, '蝶豆花藍莓', 'Butterfly Pea & Blueberry', 'dessert', 60, '', 0, '', 30, '', '1,2,3', '/img/classic/butterflypeablueberry.png', '29,30,31', NULL, 'cs'),
(39, '薄荷', 'Mint', 'dessert', 70, '', 0, '', 60, '', '1,2,3', '/img/classic/mint.png', '29,30,31', NULL, 'cs'),
(40, '鹹蛋黃', 'Salted Egg Yolk', 'dessert', 55, '', 0, '', 60, '', '1,2,3', '/img/classic/saltedeggyolk.png', '29,30,31', NULL, 'cs');

-- --------------------------------------------------------

--
-- 資料表結構 `c_product_material`
--

CREATE TABLE `c_product_material` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `c_product_id` int(11) NOT NULL COMMENT '經典商品ID',
  `material_id` int(11) NOT NULL COMMENT '外鍵-原物料ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `c_product_recommend`
--

CREATE TABLE `c_product_recommend` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `c_product_id` int(11) NOT NULL COMMENT '外鍵-經典產品ID',
  `c_product_recommend_pid` int(11) NOT NULL COMMENT '推薦經典產品ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `evnts`
--

CREATE TABLE `evnts` (
  `evnts_id` int(11) NOT NULL COMMENT '活動ID',
  `evnts_title` varchar(255) NOT NULL COMMENT '活動標題',
  `evnts_cate` varchar(255) NOT NULL COMMENT '活動分類',
  `evnts_pres_num` int(11) NOT NULL COMMENT '活動目前人數',
  `evnts_max_num` int(11) NOT NULL COMMENT '活動最大人數',
  `evnts_signup_start_date` date NOT NULL COMMENT '活動報名開始日期',
  `evnts_signup_end_date` date NOT NULL COMMENT '活動報名截止日期',
  `evnts_date` date NOT NULL COMMENT '活動日期',
  `evnts_start_time` time NOT NULL COMMENT '活動開始時間',
  `evnts_end_time` time NOT NULL COMMENT '活動結束時間',
  `evnts_location` varchar(255) NOT NULL COMMENT '活動地點',
  `evnts_host` varchar(255) DEFAULT NULL COMMENT '活動主持人',
  `evnts_detail` varchar(255) DEFAULT NULL COMMENT '活動詳情',
  `evnts_upload_date` date NOT NULL COMMENT '活動上傳日期',
  `evnts_edit_datetime` datetime DEFAULT NULL COMMENT '活動最後編輯日期時間',
  `evnts_img_path` varchar(255) NOT NULL COMMENT '活動圖片路徑'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='最新活動';

--
-- 傾印資料表的資料 `evnts`
--

INSERT INTO `evnts` (`evnts_id`, `evnts_title`, `evnts_cate`, `evnts_pres_num`, `evnts_max_num`, `evnts_signup_start_date`, `evnts_signup_end_date`, `evnts_date`, `evnts_start_time`, `evnts_end_time`, `evnts_location`, `evnts_host`, `evnts_detail`, `evnts_upload_date`, `evnts_edit_datetime`, `evnts_img_path`) VALUES
(1, '試吃餐會', '品牌推廣', 18, 20, '2022-02-01', '2022-04-30', '2022-05-20', '13:00:00', '17:00:00', '台北市大安區復興南路一段390號2樓', 'null', '有吃過3D列印食物嗎? 快來參加PRIMEAL舉辦的試吃餐會，帶你認識3D列印食物的過程，試吃體驗全新不同的飲食口感。', '2022-01-25', '2022-03-31 08:00:00', 'event-1.png'),
(2, '營養小知識講座', '講座活動', 12, 30, '2022-03-01', '2022-04-30', '2022-05-07', '14:00:00', '17:00:00', '台北市大安區復興南路一段390號2樓', '講師 Daniel', '你知道人一天要攝取多少營養素嗎? 五大營養素知多少? 快來參加講座，還能一對一與講師諮詢，打造你的最佳飲食計畫!', '2022-02-22', '0000-00-00 00:00:00', 'event-2.png'),
(3, '手作壽司大賽', '親子活動', 25, 25, '2022-04-01', '2022-05-15', '2022-06-04', '13:00:00', '17:00:00', '台北市大安區復興南路一段390號2樓', 'null', '大朋友與小朋友都愛的壽司，手作壽司大賽激發你的無限創意，前三名得獎者PRIMEAL將會贈送精美小禮物，歡迎大朋友小朋友一同手拉手來參加!', '2022-03-25', '0000-00-00 00:00:00', 'event-3.png'),
(4, '3D列印是什麼?', '品牌推廣', 26, 30, '2022-03-15', '2022-04-10', '2022-04-13', '10:00:00', '12:00:00', '台北市大安區復興南路一段390號2樓', '講師 Ryan', '本次邀請到3D食品列印推廣講師Ryan，Ryan在3D列印領域已累積數年的資深經歷，近年來致力推廣食品列印，希望能促進飲食文化的進步與革新，同時減少糧食浪費的議題，歡迎對此議題有興趣的朋友一同參與!', '2022-03-08', '0000-00-00 00:00:00', 'event-4.png'),
(5, 'PRIMEAL生日派對', '親子活動', 0, 50, '2022-05-01', '2022-06-20', '2022-06-25', '14:00:00', '17:00:00', '台北市大安區復興南路一段390號2樓', 'null', 'PRIMEAL每月定期舉辦生日派對，邀請壽星與好友們一齊慶祝，名額有限，趕快報名，當月壽星請出示相關證件，PRIMEAL將提供精美小禮物唷!', '2022-04-24', '0000-00-00 00:00:00', 'event-5.png'),
(6, '母親節快樂', '親子活動', 10, 30, '2022-04-01', '2022-04-30', '2022-05-14', '13:00:00', '16:00:00', '台北市大安區復興南路一段390號2樓', 'null', 'PRIMEAL感謝全天下偉大的母親! 在每年五月的第二週，邀請您帶著您的母親來參與我們的母親節活動，除了有好玩的互動活動之外，現場還有營養師來幫媽媽規劃健康的飲食計畫，讓辛勞的母親也能吃得健康!', '2022-03-25', '0000-00-00 00:00:00', 'event-6.png'),
(7, '米食文化', '講座活動', 33, 40, '2022-03-01', '2022-04-15', '2022-04-28', '13:00:00', '15:00:00', '台北市大安區復興南路一段390號2樓', '講師 Joe', '米食為台灣人的主食之一，對於米食文化，你了解多紹呢? 完整與正確的米食知識才能有助於每日的營養攝取!', '2022-02-22', '0000-00-00 00:00:00', 'event-7.png');

-- --------------------------------------------------------

--
-- 資料表結構 `evnts_signup`
--

CREATE TABLE `evnts_signup` (
  `sid` int(11) NOT NULL COMMENT '流水號SID',
  `evnts_id` int(11) NOT NULL COMMENT '活動ID(外鍵)',
  `mem_id` int(11) NOT NULL COMMENT '會員ID(外鍵)',
  `evnts_signup_name` varchar(255) NOT NULL COMMENT '參加者姓名',
  `evnts_signup_mobile` varchar(255) NOT NULL COMMENT '參加者手機',
  `evnts_signup_email` varchar(255) NOT NULL COMMENT '參加者郵件',
  `evnts_signup_number` int(11) NOT NULL COMMENT '參加者人數',
  `evnts_signup_comment` varchar(255) DEFAULT NULL COMMENT '報名備註',
  `evnts_signup_datetime` datetime NOT NULL COMMENT '報名日期時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活動報名資料';

--
-- 傾印資料表的資料 `evnts_signup`
--

INSERT INTO `evnts_signup` (`sid`, `evnts_id`, `mem_id`, `evnts_signup_name`, `evnts_signup_mobile`, `evnts_signup_email`, `evnts_signup_number`, `evnts_signup_comment`, `evnts_signup_datetime`) VALUES
(1, 1, 101, '台南小霸王\r\n', '0912-123-123', '123@test.com', 18, NULL, '2022-03-15 08:00:42'),
(2, 2, 111, '力宏', '0912-123-123', '123@test.com', 12, NULL, '0000-00-00 00:00:00'),
(3, 3, 113, 'Nick', '0912-123-123', '123@test.com', 25, '', '2022-04-30 18:30:00'),
(4, 4, 124, '彦歆', '0912-123-123', '123@test.com', 25, '', '2022-04-01 18:30:00'),
(5, 6, 146, '明美', '0912-123-123', '123@test.com', 25, '', '2022-04-15 18:30:00'),
(6, 7, 104, 'JJ', '0912-123-123', '123@test.com', 25, '', '2022-04-02 18:30:00');

-- --------------------------------------------------------

--
-- 資料表結構 `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL COMMENT '族群ID',
  `group_name` varchar(255) NOT NULL COMMENT '族群名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `material_for_groups`
--

CREATE TABLE `material_for_groups` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `material_id` int(11) NOT NULL COMMENT '外鍵-material_id',
  `group_id` int(11) NOT NULL COMMENT '外鍵-group_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `mem`
--

CREATE TABLE `mem` (
  `mem_id` int(11) NOT NULL COMMENT '會員ID',
  `mem_account` varchar(255) NOT NULL COMMENT '會員登入帳號',
  `mem_pwd` varchar(20) NOT NULL COMMENT '會員登入密碼',
  `mem_name` varchar(255) NOT NULL COMMENT '會員姓名',
  `mem_nickname` varchar(20) DEFAULT NULL COMMENT '會員暱稱',
  `mem_level` varchar(20) NOT NULL COMMENT '會員等級',
  `mem_credit` int(11) DEFAULT NULL COMMENT '會員點數',
  `mem_total_credit` int(11) DEFAULT NULL COMMENT '會員總積分',
  `mem_mobile` varchar(255) NOT NULL COMMENT '會員手機',
  `store_id` int(11) NOT NULL COMMENT '會員收件商店',
  `mem_birthday` date DEFAULT NULL COMMENT '會員生日',
  `mem_photo_img_path` varchar(255) DEFAULT NULL COMMENT '會員個人照片',
  `mem_login_lastday` int(11) DEFAULT NULL COMMENT '會員最後打卡日',
  `mem_login_total_day` int(11) DEFAULT NULL COMMENT '會員打卡總日',
  `mem_creditcard_number` varchar(255) DEFAULT NULL COMMENT '會員信用卡號',
  `mem_shares` varchar(255) DEFAULT NULL COMMENT '會員收藏',
  `mem_lottery_by_day` tinyint(4) DEFAULT NULL COMMENT '會員每日抽獎與否',
  `mem_create_date` datetime NOT NULL COMMENT '會員建立日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `mem`
--

INSERT INTO `mem` (`mem_id`, `mem_account`, `mem_pwd`, `mem_name`, `mem_nickname`, `mem_level`, `mem_credit`, `mem_total_credit`, `mem_mobile`, `store_id`, `mem_birthday`, `mem_photo_img_path`, `mem_login_lastday`, `mem_login_total_day`, `mem_creditcard_number`, `mem_shares`, `mem_lottery_by_day`, `mem_create_date`) VALUES
(101, '123@test.com', '1111', '台南楊', '台南小霸王', '金', 3000, 50000, '0910-123-123', 1, '1997-05-19', NULL, 1, 1, '4444444444444444', NULL, 1, '2021-11-20 00:00:00'),
(102, '1321@test.com', '1111', '旭昇收', '旭收', '金', 3000, 50000, '0910-213-123', 2, '1990-09-24', NULL, 1, 2, '5589889619166113', NULL, 1, '2021-11-21 00:00:00'),
(103, '333@test.com', '1111', '鳩施', 'Joe', '金', 3000, 50000, '0910-333-123', 3, '1997-08-06', NULL, 1, 3, '5100135670556317', NULL, 1, '2021-11-22 00:00:00'),
(104, '444@test.com', '1111', 'Joe', 'JJ', '金', 3000, 50000, '0910-443-123', 4, '1993-07-29', NULL, 0, 4, '5178633137227669', NULL, 1, '2021-11-23 00:00:00'),
(105, '555@test.com', '1111', 'Ryan', 'RR', '金', 3000, 50000, '0910-553-123', 5, '1989-03-30', NULL, 0, 5, '5100137729438083', NULL, 1, '2021-11-24 00:00:00'),
(106, '666@test.com', '1111', 'Miles', 'MM', '金', 3000, 50000, '0910-663-123', 6, '1998-03-19', NULL, 0, 6, '5434755177985714', NULL, 1, '2021-11-25 00:00:00'),
(107, '1777@test.com', '1111', 'Anthoner', 'AA', '金', 3000, 50000, '0910-773-123', 7, '1991-04-01', NULL, 1, 1, '5211339200709471', NULL, 1, '2021-11-26 00:00:00'),
(108, '2777@test.com', '1111', 'Sandy', 'SS', '金', 3000, 50000, '0910-188-123', 8, '1995-11-27', NULL, 1, 1, '5108754821045913', NULL, 1, '2021-06-17 00:00:00'),
(109, '888@test.com', '1111', 'BB', 'B', '金', 3000, 50000, '0910-199-123', 9, '1995-03-12', NULL, 1, 2, '5497077539947538', NULL, 1, '2021-03-20 00:00:00'),
(110, '999@test.com', '1111', 'AA', 'AA', '金', 3000, 50000, '0910-103-123', 10, '1996-10-22', NULL, 0, 3, '5383475392459228', NULL, 1, '2021-06-15 00:00:00'),
(111, '1111@test.com', '1111', '王力宏', '力宏', '金', 3000, 50000, '0910-553-123', 11, '1991-11-25', NULL, 0, 4, '5553698064211635', NULL, 1, '2021-06-19 00:00:00'),
(112, '1222@test.com', '1111', '言承旭', '程序', '金', 3000, 50000, '0910-123-122', 12, '1996-11-14', NULL, 0, 5, '5002355402885979', NULL, 0, '2022-01-31 00:00:00'),
(113, '5555@test.com', '1111', '尼克洋', 'Nick', '金', 3000, 50000, '0910-123-553', 13, '1994-02-08', NULL, 1, 6, '5002359240473386', NULL, 0, '2021-12-20 00:00:00'),
(114, '6666@test.com', '1111', '尼課堂', 'NT', '金', 3000, 50000, '0910-993-123', 14, '1998-09-19', NULL, 1, 1, '5002359240473385', NULL, 0, '2021-09-28 00:00:00'),
(115, '777@test.com', '1111', '堂老大', 'TT', '金', 3000, 50000, '0910-111-123', 15, '1989-04-19', NULL, 1, 5, '5558401511616174', NULL, 0, '2021-05-28 00:00:00'),
(116, 'ldunkinsonf@arstechnica.com', 'x1HPdJ1', '正梅', '尚贤', '銅', 4000, 100000, '0910-103-123', 16, '1997-05-12', NULL, 0, 1, '5136641795678421', NULL, 1, '2021-04-18 00:00:00'),
(117, 'bdobererg@patch.com', 'O0C3Ngm8psWl', '佐仪', '羽彤', '銅', 5000, 60000, '0910-553-123', 17, '1990-12-20', NULL, 0, 2, '5227693708694847', NULL, 1, '2021-04-07 00:00:00'),
(118, 'mbaumeh@theguardian.com', 'qeliyowT2', '澄泓', '秩选', '銅', 3000, 70000, '0910-123-122', 18, '1997-02-02', NULL, 0, 3, '5227693708694847', NULL, 1, '2021-04-07 00:00:00'),
(119, 'ehitchami@sitemeter.com', 'P9K2pf9', '清凌', '展博', '銅', 3000, 80000, '0910-123-553', 19, '1997-01-23', NULL, 1, 4, '5007664684141471', NULL, 1, '2021-10-22 00:00:00'),
(120, 'sdanielovitchj@feedburner.com', 'EypJlfFaM', '尚霖', '志宸', '銅', 3000, 90000, '0910-993-123', 20, '1995-08-30', NULL, 1, 5, '5105934946145854', NULL, 1, '2021-04-17 00:00:00'),
(121, 'tdriolik@auda.org.au', 'IErTUG', '秉皓', '墨含', '銅', 3000, 50000, '0910-111-123', 21, '1990-06-12', NULL, 1, 6, '5227693708694847', NULL, 1, '2021-05-20 00:00:00'),
(122, 'cmarnsl@hao123.com', 'eBQaUMgi', '远帆', '琪煜', '銅', 4000, 50000, '0910-103-123', 22, '1995-02-19', NULL, 0, 1, '5100135883473516', NULL, 1, '2022-01-23 00:00:00'),
(123, 'elutwychem@de.vu', 'pNUG0vKhl', '奕漳', '宸瑜', '銀', 5000, 50000, '0910-553-123', 23, '1989-04-07', NULL, 0, 1, '5124753638299283', NULL, 1, '2022-02-13 00:00:00'),
(124, 'rchurchardn@intel.com', 'kVqTly2zxmE', '云哲', '彦歆', '銀', 3000, 50000, '0910-123-122', 24, '1996-09-16', NULL, 0, 2, '5007667152148852', NULL, 1, '2022-01-01 00:00:00'),
(125, 'ckunzo@youtube.com', 'qFENhC6S0hhc', '哲恒', '韵寒', '銀', 3000, 50000, '0910-123-553', 25, '1998-04-14', NULL, 1, 3, '5494835734344261', NULL, 1, '2022-02-06 00:00:00'),
(126, 'jpydcockp@slate.com', 'mUJFpGRz', '梓焓', '若瑾', '銀', 3000, 100000, '0910-993-123', 26, '1999-12-15', NULL, 1, 4, '5100137519054835', NULL, 1, '2021-12-13 00:00:00'),
(127, 'btabnerq@berkeley.edu', '9sPXUcr', '剑波', '展博', '銀', 3000, 60000, '0910-111-123', 1, '1999-05-10', NULL, 1, 5, '5007664244717489', NULL, 0, '2021-09-09 00:00:00'),
(128, 'amuncerr@t-online.de', '6wXJ0Yj', '惠茜', '尹智', '銀', 4000, 70000, '0910-103-123', 2, '1989-09-03', NULL, 0, 6, '5566431482787282', NULL, 0, '2022-01-30 00:00:00'),
(129, 'dwilcocks@live.com', 'BwgLs6YwXwci', '彤雨', '哲恒', '銀', 5000, 80000, '0910-553-123', 3, '1996-05-20', NULL, 0, 1, '5108752546823531', NULL, 0, '2021-04-27 00:00:00'),
(130, 'nstelfoxt@weather.com', 'LLU72zqni', '月松', '雨萌', '銀', 3000, 90000, '0910-123-122', 4, '1999-10-07', NULL, 0, 5, '5100149574844091', NULL, 0, '2021-04-24 00:00:00'),
(131, 'vkleinsternu@mapquest.com', 'H6sHUMxPPwK', '品逸', '美琳', '銀', 3000, 50000, '0910-123-553', 5, '1996-06-29', NULL, 1, 1, '5048372627413384', NULL, 1, '2021-06-18 00:00:00'),
(132, 'ssimunekv@hubpages.com', 'bIoc0By2G', '宇涵', '宸赫', '銀', 3000, 50000, '0910-993-123', 6, '1995-11-05', NULL, 1, 2, '5284942077253382', NULL, 1, '2021-05-28 00:00:00'),
(133, 'njosskovitzw@geocities.jp', 'z4c5Rurl0p', '晓晴', '清凌', '銀', 3000, 50000, '0910-111-123', 7, '1995-04-14', NULL, 1, 3, '5100171146073389', NULL, 1, '2021-03-18 00:00:00'),
(134, 'msquibbsx@blogspot.com', 'TFvRT5Y', '思宇', '秩选', '金', 4000, 50000, '0910-103-123', 8, '1991-05-08', NULL, 0, 4, '5470241872589387', NULL, 1, '2021-08-02 00:00:00'),
(135, 'vsurgeyy@biblegateway.com', '24XEgOzEwfG', '香茹', '志宸', '金', 5000, 50000, '0910-553-123', 9, '1994-05-03', NULL, 0, 5, '5459962243969108', NULL, 1, '2021-03-29 00:00:00'),
(136, 'hadamiecz@bloomberg.com', '7bAD7zFbe', '松源', '墨含', '金', 3000, 100000, '0910-123-122', 10, '1989-03-26', NULL, 0, 6, '5250552685145662', NULL, 1, '2021-04-16 00:00:00'),
(137, 'bjelfs10@pinterest.com', 'OEpcTu', '宸赫', '惠茜', '金', 3000, 60000, '0910-123-553', 11, '1990-02-28', NULL, 1, 1, '5433544915406709', NULL, 1, '2021-04-03 00:00:00'),
(138, 'skittles11@sbwire.com', 'pDEwrcWd5LH', '宸赫', '玺越', '金', 3000, 70000, '0910-993-123', 12, '2000-01-22', NULL, 1, 1, '5112529091513905', NULL, 1, '2021-09-14 00:00:00'),
(139, 'cgillmore12@bizjournals.com', 'Z8iW5CoTLfWk', '彤雨', '浩成', '金', 3000, 80000, '0910-111-123', 13, '1996-05-21', NULL, 1, 2, '5048370926833542', NULL, 1, '2021-09-06 00:00:00'),
(140, 'rmateiko13@ezinearticles.com', 'DP3aZ2Kpv', '尹智', '冠希', '金', 4000, 90000, '0910-103-123', 14, '1994-12-17', NULL, 0, 3, '5206635067874556', NULL, 1, '2021-07-05 00:00:00'),
(141, 'ataillard14@ucoz.com', '0GOKj8FdiR', '泰霖', '宸赫', '金', 5000, 50000, '0910-553-123', 15, '1999-07-03', NULL, 0, 4, '5048373012724286', NULL, 1, '2021-10-17 00:00:00'),
(142, 'ahorsted15@sciencedaily.com', 'KrDRYAOY', '博豪', '思宏', '金', 3000, 50000, '0910-123-122', 16, '1991-02-06', NULL, 0, 5, '5100130727038906', NULL, 0, '2021-09-26 00:00:00'),
(143, 'ccolvine16@alibaba.com', 'qS0Ghfg8E', '碧萱', '伟菘', '金', 3000, 50000, '0910-123-553', 17, '1991-04-14', NULL, 1, 6, '5227693708694847', NULL, 0, '2021-03-07 00:00:00'),
(144, 'kloxston17@jigsy.com', 'pDOBPS21Ga', '宸瑜', '宸瑜', '金', 3000, 50000, '0910-993-123', 18, '1995-05-31', NULL, 1, 1, '5048374451149514', NULL, 0, '2021-12-14 00:00:00'),
(145, 'kcains18@jigsy.com', 'CkuOXecx9UaV', '婧琪', '惠茜', '金', 3000, 50000, '0910-111-123', 19, '1999-09-23', NULL, 1, 5, '5100135088533288', NULL, 0, '2021-09-18 00:00:00'),
(146, 'sroderighi19@51.la', '724MTR', '明美', '秉皓', '金', 4000, 100000, '0910-103-123', 20, '1998-06-03', NULL, 0, 1, '5435132583565507', NULL, 1, '2021-06-07 00:00:00'),
(147, 'gscranney1a@example.com', 'rqBFQks', '梓彤', '海程', '金', 5000, 60000, '0910-553-123', 21, '1996-03-03', NULL, 0, 2, '5108753191967789', NULL, 1, '2022-01-03 00:00:00'),
(148, 'gbaynard1b@list-manage.com', 'XLWKn2Dc', '伟菘', '永鑫', '金', 3000, 70000, '0910-123-122', 22, '1992-03-27', NULL, 0, 3, '5100171558707656', NULL, 1, '2021-05-15 00:00:00'),
(149, 'ddarville1c@google.fr', 'dbTI9YweCGH', '钰彤', '婧涵', '銅', 3000, 80000, '0910-123-553', 23, '1989-05-13', NULL, 1, 4, '5227693708694847', NULL, 1, '2021-12-15 00:00:00'),
(150, 'dgibbs1d@businesswire.com', 'h1lhyYy', '韵寒', '俞凯', '銅', 3000, 90000, '0910-993-123', 24, '1993-04-01', NULL, 1, 5, '5007661359400562', NULL, 1, '2021-12-21 00:00:00'),
(151, 'mabbett1e@ameblo.jp', 'qBNSTX8Q0SFF', '轩硕', '崇杉', '銅', 3000, 50000, '0910-111-123', 25, '1992-11-26', NULL, 1, 6, '5002352677069199', NULL, 1, '2021-06-20 00:00:00'),
(152, 'wcritten1f@bbb.org', 'nOotf1YVGBk', '美琳', '晓烽', '銅', 4000, 50000, '0910-103-123', 26, '1992-08-05', NULL, 0, 1, '5010126356427047', NULL, 1, '2022-02-20 00:00:00'),
(153, 'neallis1g@meetup.com', 'nWQFjXBYkx', '澄泓', '轩硕', '銅', 5000, 50000, '0910-553-123', 1, '1993-10-25', NULL, 0, 1, '5002355685144516', NULL, 1, '2021-03-10 00:00:00'),
(154, 'kkenworthey1h@hibu.com', 'kbAeiUfonv0c', '雪丽', '雨婷', '銅', 3000, 50000, '0910-123-122', 2, '1996-10-25', NULL, 0, 2, '5300071841542662', NULL, 1, '2021-03-31 00:00:00'),
(155, 'gpindred1i@go.com', 'EQd8Rpb2', '云哲', '玺越', '銅', 3000, 50000, '0910-123-553', 3, '1993-02-16', NULL, 1, 3, '5002352968570392', NULL, 1, '2022-01-28 00:00:00'),
(156, 'elapthorne1j@yahoo.co.jp', '6zKOqjj3jv', '宸瑜', '伟菘', '銀', 3000, 100000, '0910-993-123', 4, '1991-09-08', NULL, 1, 4, '5558790472696138', NULL, 1, '2021-08-03 00:00:00'),
(157, 'acurman1k@slashdot.org', 'TrKgRtwSOoTk', '哲恒', '浩成', '銀', 3000, 60000, '0910-111-123', 5, '1993-02-28', NULL, 1, 5, '5010121876750325', NULL, 0, '2021-03-02 00:00:00'),
(158, 'wgolsby1l@netlog.com', 'HwbPQo', '婧琪', '宸瑜', '銀', 4000, 70000, '0910-103-123', 6, '1999-03-12', NULL, 0, 6, '5007661466561561', NULL, 0, '2021-07-11 00:00:00'),
(159, 'fsartin1m@wisc.edu', 'TXFPpA', '泰霖', '哲恒', '銀', 5000, 80000, '0910-553-123', 7, '1989-12-04', NULL, 0, 1, '5343143898225894', NULL, 0, '2021-08-23 00:00:00'),
(160, 'gstannering1n@networksolutions.com', 'xlObWqS', '永鑫', '伟宸', '銀', 3000, 90000, '0910-123-122', 8, '1995-06-09', NULL, 0, 5, '5225756119805476', NULL, 0, '2022-03-01 00:00:00'),
(161, 'dbradder1o@dropbox.com', 'oXE9bUZbS', '宇涵', '佐仪', '銀', 3000, 50000, '0910-123-553', 9, '1996-07-15', NULL, 1, 1, '5158898835566585', NULL, 1, '2021-10-23 00:00:00'),
(162, 'ssteckings1p@opera.com', 'qo40Xj', '哲恒', '雨婷', '銀', 3000, 50000, '0910-993-123', 10, '1992-08-21', NULL, 1, 2, '5010122262318602', NULL, 1, '2021-08-16 00:00:00'),
(163, 'xhulett1q@posterous.com', 'wXdNqVdr', '宇涵', '奕漳', '銀', 3000, 50000, '0910-111-123', 11, '1996-03-05', NULL, 1, 3, '5100178303445938', NULL, 1, '2021-03-25 00:00:00'),
(164, 'emcjerrow1r@wikipedia.org', '0KkIVupVB', '伟菘', '博裕', '銀', 4000, 50000, '0910-103-123', 12, '1991-03-25', NULL, 0, 4, '5123962882708102', NULL, 1, '2021-11-02 00:00:00'),
(165, 'gbloxham1s@java.com', 'XX8SBnWVDVLk', '培安', '浩霖', '銀', 5000, 50000, '0910-553-123', 13, '1998-09-23', NULL, 0, 5, '5227693708694847', NULL, 1, '2021-05-22 00:00:00'),
(166, 'lbercevelo1t@ezinearticles.com', 'vHfd7Tx', '辰华', '钰彤', '銀', 3000, 100000, '0910-123-122', 14, '1998-04-19', NULL, 0, 6, '5289572572677002', NULL, 1, '2021-11-10 00:00:00'),
(167, 'ctruggian1u@github.com', 'ytvId1ujK', '羽彤', '烨伟', '金', 3000, 60000, '0910-123-553', 15, '1998-11-14', NULL, 1, 1, '5112562411593414', NULL, 1, '2021-12-11 00:00:00'),
(168, 'cmatthis1v@mediafire.com', 'Uq38rpFlpy56', '雨婷', '思翰', '金', 3000, 70000, '0910-993-123', 16, '1995-12-22', NULL, 1, 1, '5178119151074823', NULL, 1, '2022-02-07 00:00:00'),
(169, 'kcalkin1w@mozilla.com', 'BfwMWlWQY', '俞凯', '轩硕', '金', 3000, 80000, '0910-111-123', 17, '1989-03-30', NULL, 1, 2, '5100139343830653', NULL, 1, '2021-05-17 00:00:00'),
(170, 'tfeldstern1x@mit.edu', 'ihlYNqfo7', '静香', '思宇', '金', 4000, 90000, '0910-103-123', 18, '1991-07-05', NULL, 0, 3, '5540986727030914', NULL, 1, '2021-12-21 00:00:00'),
(171, 'gdoram1y@nifty.com', '7NSOW6V', '璟雯', '月松', '金', 5000, 50000, '0910-553-123', 19, '1995-11-23', NULL, 0, 4, '5100171294755647', NULL, 1, '2021-03-25 00:00:00'),
(172, 'ybeville1z@youtu.be', 'I0rLw0b7', '琪煜', '芮涵', '金', 3000, 50000, '0910-123-122', 20, '1999-10-02', NULL, 0, 5, '5145216015571679', NULL, 0, '2021-03-02 00:00:00'),
(173, 'rhonniebal20@washingtonpost.com', 'h4FWN1J1', '梓焓', '博豪', '金', 3000, 50000, '0910-123-553', 21, '1989-12-14', NULL, 1, 6, '5108752951820956', NULL, 0, '2021-12-10 00:00:00'),
(174, 'eganforthe21@mac.com', 'IgIoe2J0P2', '漫妮', '睿杰', '金', 3000, 50000, '0910-993-123', 22, '1993-11-20', NULL, 1, 1, '5378500250391523', NULL, 0, '2022-01-06 00:00:00'),
(175, 'gbarry22@histats.com', 'utT6QF', '彦军', '宸瑜', '金', 3000, 50000, '0910-111-123', 23, '1995-12-01', NULL, 1, 5, '5002352244653566', NULL, 0, '2021-11-27 00:00:00'),
(176, 'kkilleen23@bluehost.com', 'P2oPGM6Ii0', '怡香', '凰羽', '金', 4000, 100000, '0910-103-123', 24, '1990-04-26', NULL, 0, 1, '5254753475990905', NULL, 1, '2021-06-04 00:00:00'),
(177, 'srattrie24@behance.net', 'CK4PmF1Y', '可馨', '瀚聪', '金', 5000, 60000, '0910-553-123', 25, '1991-12-20', NULL, 0, 2, '5500662946506442', NULL, 1, '2022-01-26 00:00:00'),
(178, 'ssalle25@usgs.gov', '9vciSFQwnV', '佐仪', '清凌', '金', 3000, 70000, '0910-123-122', 26, '1994-09-19', NULL, 0, 3, '5363247685696616', NULL, 1, '2021-05-15 00:00:00'),
(179, 'snobles26@ihg.com', '93iDwpxec', '雪丽', '彦歆', '金', 3000, 80000, '0910-123-553', 1, '1996-09-21', NULL, 1, 4, '5100138278642752', NULL, 1, '2021-07-15 00:00:00'),
(180, 'ssabate27@wisc.edu', 'RjaOK6y4', '孜绍', '思宏', '金', 3000, 90000, '0910-993-123', 2, '1997-08-05', NULL, 1, 5, '5100143744208857', NULL, 1, '2021-08-18 00:00:00'),
(181, 'kswidenbank28@mediafire.com', '9EjVVfd3', '海程', '明美', '金', 3000, 50000, '0910-111-123', 3, '1998-03-13', NULL, 1, 6, '5227693708694847', NULL, 1, '2021-05-25 00:00:00'),
(182, 'cyegorchenkov29@telegraph.co.uk', 'CuiNMXsaNg', '俞凯', '雅静', '銅', 4000, 50000, '0910-103-123', 4, '1995-03-08', NULL, 0, 1, '5048377464241293', NULL, 1, '2021-11-21 00:00:00'),
(183, 'egealle2a@flickr.com', 'GONs06', '亦涵', '雪怡', '銅', 5000, 50000, '0910-553-123', 5, '1997-07-25', NULL, 0, 1, '5007661215538175', NULL, 1, '2022-01-01 00:00:00'),
(184, 'edahmel2b@utexas.edu', 'N8zjDrQ', '孜绍', '晓烽', '銅', 3000, 50000, '0910-123-122', 6, '1995-12-25', NULL, 0, 2, '5002356600697554', NULL, 1, '2021-08-30 00:00:00'),
(185, 'hditchett2c@51.la', 'AOOusGiFN8nf', '宸瑜', '瀚聪', '銅', 3000, 50000, '0910-123-553', 7, '1999-11-13', NULL, 1, 3, '5048373978787095', NULL, 1, '2022-01-15 00:00:00'),
(186, 'dscintsbury2d@godaddy.com', 'GziKtiF', '婧琪', '俊泽', '銅', 3000, 100000, '0910-993-123', 8, '1998-04-23', NULL, 1, 4, '5254943689104456', NULL, 1, '2021-06-05 00:00:00'),
(187, 'afliege2e@posterous.com', 'Tk5czYD5ez', '军卿', '彦歆', '銅', 3000, 60000, '0910-111-123', 9, '1998-08-17', NULL, 1, 5, '5007669605569601', NULL, 0, '2021-05-29 00:00:00'),
(188, 'amariault2f@sourceforge.net', 'rpBRttaGB', '志宸', '云哲', '銅', 4000, 70000, '0910-103-123', 10, '1998-06-27', NULL, 0, 6, '5490077397939871', NULL, 0, '2021-09-13 00:00:00'),
(189, 'npavyer2g@freewebs.com', 'mW4qlFV4F', '松源', '凰羽', '銀', 5000, 80000, '0910-553-123', 11, '1998-01-04', NULL, 0, 1, '5251436328504395', NULL, 0, '2021-11-25 00:00:00'),
(190, 'ppandey2h@cam.ac.uk', 'U35wVY2', '雪丽', '雪丽', '銀', 3000, 90000, '0910-123-122', 12, '1992-03-27', NULL, 0, 5, '5100130290217697', NULL, 0, '2021-10-25 00:00:00'),
(191, 'jcamis2i@booking.com', '0441m7tJiyK4', '泰霖', '永鑫', '銀', 3000, 50000, '0910-123-553', 13, '1993-02-26', NULL, 1, 1, '5583339169574445', NULL, 1, '2021-10-12 00:00:00'),
(192, 'dstut2j@house.gov', 'HWnYYRHjuTAD', '美莲', '泽瀚', '銀', 3000, 50000, '0910-993-123', 14, '1997-04-10', NULL, 1, 2, '5281202647442509', NULL, 1, '2021-11-13 00:00:00'),
(193, 'bgasquoine2k@psu.edu', 'Jdoaoxgz', '唯枫', '伟菘', '銀', 3000, 50000, '0910-111-123', 15, '1989-12-12', NULL, 1, 3, '5100143114912237', NULL, 1, '2022-02-07 00:00:00'),
(194, 'tkell2l@hugedomains.com', 'SdaC24hahvT', '澄泓', '梦洁', '銀', 4000, 50000, '0910-103-123', 16, '1990-02-15', NULL, 0, 4, '5100146622686532', NULL, 1, '2021-08-11 00:00:00'),
(195, 'ryeaman2m@ovh.net', 'CW6At20FawM', '浩霖', '俊誉', '銀', 5000, 50000, '0910-553-123', 17, '1990-04-03', NULL, 0, 5, '5246177609588412', NULL, 1, '2021-12-10 00:00:00'),
(196, 'msummersett2n@oakley.com', '0fPMlWI1Yr', '浩成', '昕磊', '銀', 3000, 100000, '0910-123-122', 18, '1998-06-18', NULL, 0, 6, '5307470048436624', NULL, 1, '2021-09-01 00:00:00'),
(197, 'mmauser2o@economist.com', 'HQdrVckR5', '孜绍', '志宸', '銀', 3000, 60000, '0910-123-553', 19, '1998-05-23', NULL, 1, 1, '5100134248280302', NULL, 1, '2021-05-30 00:00:00'),
(198, 'ibugdale2p@forbes.com', 'VziL5jjAF', '浩成', '松源', '銀', 3000, 70000, '0910-993-123', 20, '1992-04-05', NULL, 1, 1, '5108755423702207', NULL, 1, '2021-08-21 00:00:00'),
(199, 'apenke2q@printfriendly.com', 'LnbSBAI3t', '辰华', '松源', '銀', 3000, 80000, '0910-111-123', 21, '1992-03-26', NULL, 1, 2, '5227693708694847', NULL, 1, '2021-11-28 00:00:00'),
(200, 'pgroom2r@is.gd', 'eqPO0cPqxkB3', '欣妍', '博豪', '銀', 4000, 90000, '0910-111-123', 22, '1992-01-24', NULL, 1, 3, '5100139940929163', NULL, 1, '2022-02-13 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `mtl`
--

CREATE TABLE `mtl` (
  `mtl_id` int(11) NOT NULL COMMENT '食材ID',
  `mtl_name` varchar(255) NOT NULL COMMENT '食材名稱',
  `mtl_cate` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '食材分類',
  `mtl_produce_date` date NOT NULL COMMENT '食材生產日期',
  `mtl_raw_matrials` varchar(255) NOT NULL COMMENT '食材的原材料',
  `mtl_img_path` varchar(255) DEFAULT NULL COMMENT '食材的圖片路徑',
  `mtl_value` int(11) NOT NULL COMMENT '食材單價',
  `mtl_print_time` int(11) NOT NULL COMMENT '食材印製時間',
  `mtl_3d_img_path` varchar(255) DEFAULT NULL COMMENT '食材3D材質圖片路徑',
  `mtl_3d_normalmap_img_path` varchar(255) DEFAULT NULL COMMENT '食材3D材質負片圖片路徑',
  `mtl_sugar` int(11) DEFAULT NULL COMMENT '營養成分-醣',
  `mtl_oil` int(11) DEFAULT NULL COMMENT '營養成分-脂肪',
  `mtl_protein` int(11) DEFAULT NULL COMMENT '營養成分-蛋白質',
  `mtl_carbo` int(11) DEFAULT NULL COMMENT '營養成分-碳水化合物',
  `mtl_na` int(11) DEFAULT NULL COMMENT '營養成分-納',
  `mtl_calories` int(11) NOT NULL COMMENT '營養成分-卡路里'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='食材表';

--
-- 傾印資料表的資料 `mtl`
--

INSERT INTO `mtl` (`mtl_id`, `mtl_name`, `mtl_cate`, `mtl_produce_date`, `mtl_raw_matrials`, `mtl_img_path`, `mtl_value`, `mtl_print_time`, `mtl_3d_img_path`, `mtl_3d_normalmap_img_path`, `mtl_sugar`, `mtl_oil`, `mtl_protein`, `mtl_carbo`, `mtl_na`, `mtl_calories`) VALUES
(1, '醋飯', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 3, 0, 20, 20, 0, 25),
(2, '鮭魚', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 15, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 3, 30, 0, 1, 25),
(3, '鮪魚', 'ing', '2022-03-31', '大豆', '/img/mtl/mtl_img_path/1.jpg', 15, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 31, 0, 1, 20),
(4, '比目魚', 'ing', '2022-03-27', '大豆', '/img/mtl/mtl_img_path/1.jpg', 10, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 29, 0, 0, 20),
(5, '烏賊', 'ing', '2022-04-08', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 15, 0, 1, 20),
(6, '花枝', 'ing', '2022-03-31', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 15, 0, 0, 20),
(7, '章魚', 'ing', '2022-03-27', '大豆', '/img/mtl/mtl_img_path/1.jpg', 10, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 20, 0, 0, 20),
(8, '玉子', 'ing', '2022-04-08', '雞蛋', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 15, 0, 0, 10),
(9, '蟹棒', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 15, 0, 1, 12),
(10, '鮮蝦', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 29, 0, 1, 15),
(11, '甜蝦', 'ing', '2022-03-27', '大豆', '/img/mtl/mtl_img_path/1.jpg', 15, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 30, 0, 0, 15),
(12, '秋刀魚', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 29, 0, 1, 10),
(13, '星鰻', 'ing', '2022-03-31', '大豆', '/img/mtl/mtl_img_path/1.jpg', 30, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 30, 0, 0, 30),
(14, '鯖魚', 'ing', '2022-04-08', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 3, 15, 0, 1, 20),
(15, '牛排', 'ing', '2022-03-31', '大豆', '/img/mtl/mtl_img_path/1.jpg', 15, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 32, 0, 0, 20),
(16, '雞排', 'ing', '2022-04-12', '大豆', '/img/mtl/mtl_img_path/1.jpg', 10, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 29, 0, 0, 20),
(17, '竹筴魚', 'ing', '2022-04-08', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 15, 0, 0, 20),
(18, '鰤魚', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 32, 0, 1, 20),
(19, '鯛魚', 'ing', '2022-03-27', '大豆', '/img/mtl/mtl_img_path/1.jpg', 10, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 15, 0, 0, 20),
(20, '玉米', 'ing', '2022-03-27', '玉米', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 1, 10, 10, 1, 10),
(21, '叉燒', 'ing', '2022-04-12', '大豆', '/img/mtl/mtl_img_path/1.jpg', 15, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 2, 30, 0, 1, 30),
(22, '起司', 'ing', '2022-03-31', '牛奶', '/img/mtl/mtl_img_path/1.jpg', 10, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 3, 5, 5, 0, 28),
(23, '美乃滋', 'ing', '2022-04-05', '雞蛋', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 30, 30, 1, 28),
(24, '茄子', 'ing', '2022-03-31', '茄子', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 15, 15, 0, 20),
(25, '羅勒醬', 'ing', '2022-04-05', '羅勒葉', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 5, 5, 0, 20),
(26, '烏魚子', 'ing', '2022-03-27', '烏魚子', '/img/mtl/mtl_img_path/1.jpg', 25, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 29, 29, 1, 20),
(27, '干貝', 'ing', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 30, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 15, 0, 0, 20),
(28, '小黃瓜', 'ing', '2022-03-31', '小黃瓜', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 30, 30, 1, 20),
(29, '山藥泥', 'ing', '2022-04-12', '山藥', '/img/mtl/mtl_img_path/1.jpg', 5, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 5, 5, 1, 20),
(30, '飛魚卵', 'top', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 5, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 10, 0, 0, 20),
(31, '鮭魚卵', 'top', '2022-04-05', '大豆', '/img/mtl/mtl_img_path/1.jpg', 10, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 15, 0, 1, 20),
(32, '山葵', 'top', '2022-04-12', '山葵', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 5, 5, 1, 20),
(33, '山葵', 'ing', '2022-04-05', '山葵', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 5, 5, 0, 20),
(34, '蔥', 'top', '2022-04-12', '蔥', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 5, 5, 1, 20),
(35, '蘿蔔泥', 'top', '2022-04-05', '蘿蔔', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 0, 0, 0, 20),
(36, '明太子', 'top', '2022-03-27', '明太子', '/img/mtl/mtl_img_path/1.jpg', 30, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 2, 15, 15, 0, 20),
(37, '檸檬片', 'top', '2022-03-31', '檸檬', '/img/mtl/mtl_img_path/1.jpg', 5, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 0, 0, 0, 0, 20),
(38, '紅蘿蔔', 'ing', '2022-03-31', '紅蘿蔔', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 1, 10, 10, 1, 10),
(39, '地瓜', 'ing', '2022-04-12', '地瓜', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 1, 10, 10, 1, 10),
(40, '馬鈴薯', 'ing', '2022-04-05', '馬鈴薯', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 15, 15, 0, 20),
(41, '秋葵', 'ing', '2022-04-05', '秋葵', '/img/mtl/mtl_img_path/1.jpg', 10, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 1, 10, 10, 1, 10),
(42, '海苔', 'ing', '2022-04-12', '海苔', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 15, 15, 0, 20),
(43, '紫蘇', 'ing', '2022-04-05', '紫蘇', '/img/mtl/mtl_img_path/1.jpg', 5, 30, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 0, 15, 15, 0, 20),
(44, '番茄', 'ing', '2022-04-12', '番茄', '/img/mtl/mtl_img_path/1.jpg', 5, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 1, 10, 10, 1, 10),
(45, '豬肉', 'ing', '2022-04-12', '大豆', '/img/mtl/mtl_img_path/1.jpg', 10, 90, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 0, 1, 32, 0, 0, 20),
(46, '香菇', 'ing', '2022-03-31', '香菇', '/img/mtl/mtl_img_path/1.jpg', 10, 60, '/img/mtl_3d_img_path/1.jpg', '/img/mtl_3d_normalmap_img_path/1.jpg', 1, 1, 10, 10, 1, 10);

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL COMMENT '新聞ID',
  `c_prod_id` int(11) DEFAULT NULL COMMENT '經典商品ID',
  `news_title` varchar(255) NOT NULL COMMENT '最新消息標題',
  `news_cate` varchar(255) NOT NULL COMMENT '最新消息分類',
  `news_start_date` date NOT NULL COMMENT '最新消息開始日期',
  `news_end_date` date DEFAULT NULL COMMENT '最新消息結束日期',
  `news_detail` varchar(255) NOT NULL COMMENT '最新消息詳情',
  `news_upload_date` date NOT NULL COMMENT '最新消息上傳日期',
  `news_edit_datetime` datetime DEFAULT NULL COMMENT '最新消息最後編輯日期時間',
  `news_img_path` varchar(255) NOT NULL COMMENT '最新消息圖片路徑',
  `news_prod_url` varchar(255) DEFAULT NULL COMMENT '最新消息商品連結'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='最新消息';

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`news_id`, `c_prod_id`, `news_title`, `news_cate`, `news_start_date`, `news_end_date`, `news_detail`, `news_upload_date`, `news_edit_datetime`, `news_img_path`, `news_prod_url`) VALUES
(1, 23, '春天來了! 羊羹櫻花凍壽司新上市', '新品上市', '2022-03-01', '2022-04-30', '充滿粉紅氣息的春天終於來了! PRIMEAL推出粉色的羊羹櫻花凍口味壽司，清爽口感搭配淡淡的櫻花香，給您不一樣的2022春天! ', '2022-02-22', '0000-00-00 00:00:00', 'new-cherry-blossom.png', 'null'),
(2, 5, '薯泥肉片壽司新上市', '新品上市', '2022-02-15', '2022-05-31', '誰說薯泥肉片只能放在漢堡或吐司裡! 放在醋飯上也好吃，不用猶豫趕快來一顆吧! ', '2022-02-08', '0000-00-00 00:00:00', 'new-potato-meat.png', 'null'),
(3, 19, '酪梨軍艦壽司新上市', '新品上市', '2022-03-20', '2022-06-15', '健康飲食的最佳夥伴，非酪梨所屬了! 酪梨軍艦全新上市，給你滿滿的酪梨! ', '2022-02-22', '0000-00-00 00:00:00', 'new-avocado.png', 'null'),
(4, 35, '甜點也能列印! 巧克力草莓新上市', '新品上市', '2022-03-01', '2022-10-01', '香濃巧克力搭配酸酸甜甜的草莓，3D列印顛覆你的想像，全新口味和果子上市，你還在等什麼呢？', '2022-02-18', '0000-00-00 00:00:00', 'new-chocolate-strawberry.png', 'null'),
(5, 36, '綠茶口味和果子新上市', '新品上市', '2022-01-20', '2022-08-31', '疫情影響出不了國，日本綠茶口味和果子新上市，即使人在台灣也能感受滿滿的日本味! ', '2022-01-03', '0000-00-00 00:00:00', 'new-green-tea.png', 'null'),
(6, 1, '素肉也好吃!牛排壽司特價中', '快閃特價', '2022-03-25', '2022-04-15', '牛排壽司 25%off 限時特價中，即使是素肉，也能豐富你的味蕾! ', '2022-03-13', '0000-00-00 00:00:00', 'sale-steak.png', 'null'),
(7, 3, '素肉也好吃!金華火腿壽司特價中', '快閃特價', '2022-04-08', '2022-04-15', '金華火腿壽司 25%off 限時特價中，即使是素肉，也能豐富你的味蕾! ', '2022-04-01', '0000-00-00 00:00:00', 'sale-ham.png', 'null'),
(8, 4, '解膩好滋味!', '快閃特價', '2022-04-10', '2022-04-20', '番茄肉排壽司 20%off 限時特價中，酸甜番茄搭配肉排，解膩好滋味! ', '2022-04-03', '0000-00-00 00:00:00', 'sale-tomato-meat.png', 'null'),
(9, 6, '來勢洶洶的鮭魚季! ', '季節特賣', '2022-04-01', '2022-05-31', '來勢洶洶的鮭魚季! 限期兩個月，焦糖鮭魚玉子壽司 25%off 季節特賣中', '2022-03-25', '0000-00-00 00:00:00', 'sale-caramel-salmon.png', 'null'),
(10, 9, '來勢洶洶的鮭魚季! ', '季節特賣', '2022-04-01', '2022-05-31', '來勢洶洶的鮭魚季! 限期兩個月，酪梨鮭魚魚子壽司 20%off 季節特賣中', '2022-03-25', '0000-00-00 00:00:00', 'sale-avocado-salmon.png', 'null'),
(11, 11, '鮪魚盛產!', '季節特賣', '2022-05-01', '2022-06-30', '2022鮪魚盛產，鮪魚季即將於5/1開跑，活動期間鮪魚壽司一律 25%off ，敬請期待! ', '2022-03-24', '0000-00-00 00:00:00', 'sale-tuna.png', 'null'),
(12, 13, '呷菜好消化! ', '快閃特價', '2022-05-13', '2022-05-15', '呷菜好消化! 綜合野菜壽司 25%off 快閃特賣5/13開跑', '2022-05-06', '0000-00-00 00:00:00', 'sale-vegetables.png', 'null'),
(13, 16, '呷菜好消化! ', '快閃特價', '2022-05-13', '2022-05-15', '呷菜好消化! 紅蘿蔔地瓜泥壽司 25%off 快閃特賣5/13開跑', '2022-05-06', '0000-00-00 00:00:00', 'sale-vegetables.png', 'null'),
(14, 17, '呷菜好消化! ', '快閃特價', '2022-05-13', '2022-05-15', '呷菜好消化! 野菜茄子明太子壽司 20%off 快閃特賣5/13開跑', '2022-05-06', '0000-00-00 00:00:00', 'sale-vegetables.png', 'null'),
(15, 20, '喜歡蝦卵的同學們別錯過!', '季節特賣', '2022-06-15', '2022-07-10', '蝦卵軍艦 25%off 特賣6/15開跑', '2022-06-08', '0000-00-00 00:00:00', 'sale-shrimpegg.png', 'null'),
(16, 22, '限時三天! 雞湯凍口味等你來搶購', '快閃特價', '2022-04-25', '2022-04-28', '限時三天! 雞湯凍口味壽司 20%off 優惠，等你來搶購!  ', '2022-04-18', '0000-00-00 00:00:00', 'sale-chicken-soup.png', 'null'),
(17, 28, '為期10天! 醬燒麻糬壽司快閃特價! ', '快閃特價', '2022-04-15', '2022-04-25', '日式甜點怎能錯過醬燒麻糬呢! 為期10天! 醬燒麻糬壽司 25%off 快閃特價! ', '2022-04-08', '0000-00-00 00:00:00', 'sale-mochi.png', 'null'),
(18, NULL, '會員權益公告', '會員公告', '2022-01-01', '2022-07-15', '上半年會員積分即將於2022/06/30到期', '2022-01-01', '0000-00-00 00:00:00', 'member-1.png', 'null'),
(19, NULL, '帳號安全公告', '會員公告', '2021-11-03', '0000-00-00', '為了您的帳號安全，PRIMEAL提醒您定期更新您的密碼。如有任何問題，您可以透過「客服中心」聯繫我們，將有專人盡快協助您。', '2021-11-03', '0000-00-00 00:00:00', 'member-2.png', 'null'),
(20, NULL, '系統維護公告', '會員公告', '2022-04-01', '2022-04-14', '2022/04/14 00:00 - 06:00 將進行例行性系統維護，屆時所有交易將暫停開放，造成不便敬請見諒，如有任何問題，您可以透過「客服中心」聯繫我們，將有專人盡快協助您。', '2022-04-01', '0000-00-00 00:00:00', 'member-3.png', 'null'),
(21, NULL, '食品安全宣言', '會員公告', '2021-11-03', '0000-00-00', 'PRIMEAL品牌使命，致力於維護品牌食品安全，讓您吃得健康，吃得精準，吃得安心! ', '2021-11-03', '0000-00-00 00:00:00', 'member-4.png', 'null');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `sets`
--

CREATE TABLE `sets` (
  `set_id` int(11) NOT NULL COMMENT '套餐id',
  `set_name` varchar(255) NOT NULL COMMENT '套餐名稱',
  `set_price` int(11) NOT NULL COMMENT '套餐價錢'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `sets`
--

INSERT INTO `sets` (`set_id`, `set_name`, `set_price`) VALUES
(1, '7日計畫', 2500),
(2, '14日計畫', 4000),
(3, '21日計畫', 5600);

-- --------------------------------------------------------

--
-- 資料表結構 `set_ben_detail`
--

CREATE TABLE `set_ben_detail` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `set_order_id` int(11) NOT NULL COMMENT '套餐id',
  `bento_id` int(11) NOT NULL COMMENT '便當id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `set_ben_detail`
--

INSERT INTO `set_ben_detail` (`sid`, `set_order_id`, `bento_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 8),
(5, 1, 10),
(6, 1, 5),
(7, 1, 6),
(8, 2, 1),
(9, 2, 3),
(10, 2, 5),
(11, 2, 8),
(12, 2, 6),
(13, 2, 7),
(14, 2, 2),
(15, 2, 1),
(16, 2, 3),
(17, 2, 5),
(18, 2, 8),
(19, 2, 6),
(20, 2, 7),
(21, 2, 2),
(22, 3, 3),
(23, 3, 5),
(24, 3, 9),
(25, 3, 4),
(26, 3, 10),
(27, 3, 5),
(28, 3, 16);

-- --------------------------------------------------------

--
-- 資料表結構 `set_meal`
--

CREATE TABLE `set_meal` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `set_id` int(11) NOT NULL COMMENT '每種套餐組合',
  `bento_id` int(11) NOT NULL COMMENT '十種便當選七種',
  `bento_ch_name` varchar(255) NOT NULL COMMENT '便當中文名稱',
  `bento_en_name` varchar(255) NOT NULL COMMENT '便當英文名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `set_meal`
--

INSERT INTO `set_meal` (`sid`, `set_id`, `bento_id`, `bento_ch_name`, `bento_en_name`) VALUES
(1, 1, 1, '蔬泥便當', 'vegetable bento'),
(2, 1, 2, '健康便當', 'healthy bento'),
(3, 1, 3, '紫柚便當', 'grapefruit bento'),
(4, 1, 8, '清籽便當', 'clear seeds bento'),
(5, 1, 9, '果類便當', 'fruit bento'),
(6, 1, 6, '動力便當', 'power bento'),
(7, 1, 7, '精緻便當', 'exquisite bento'),
(8, 1, 4, '鯖軍便當', 'mackerel bento'),
(9, 1, 5, '清爽便當', 'refreshing bento'),
(10, 1, 10, '焦鮭便當', 'Charred Salmon bento'),
(11, 2, 15, '焦鮭便當', 'Charred Salmon bento'),
(12, 2, 32, '紗紗便當', 'yarn bento'),
(13, 2, 1, '蔬泥便當', 'vegetable bento'),
(14, 2, 15, '炙紅便當', 'roast bento'),
(15, 2, 18, '放浪便當', 'unbridled bento'),
(16, 2, 37, '童趣便當', 'childlike bento'),
(17, 2, 39, '柑魚便當', 'mandarin fish'),
(18, 2, 34, '花雞便當', 'chinchilla bento'),
(19, 2, 28, '輕鬆便當', 'relaxed bento'),
(20, 2, 7, '精緻便當', 'exquisite bento'),
(21, 3, 21, '黃昏便當', 'twilight bento'),
(22, 3, 40, '好食便當', 'yummy bento'),
(23, 3, 1, '蔬泥便當', 'vegetable bento'),
(24, 3, 12, '纖纖便當', 'fiber bento'),
(25, 3, 30, '甜美便當', 'sweet bento'),
(26, 3, 32, '紗紗便當', 'yarn bento'),
(27, 3, 34, '花雞便當', 'chinchilla bento'),
(28, 3, 8, '清籽便當', 'clear seeds bento'),
(29, 3, 17, '籽籽便當', 'seed bento'),
(30, 3, 24, '緻歌便當', 'singing bento'),
(31, 4, 33, '魚與便當', 'fish bento'),
(32, 4, 40, '好食便當', 'yummy bento'),
(33, 4, 9, '果類便當', 'fruit bento'),
(34, 4, 17, '籽籽便當', 'seed bento'),
(35, 4, 18, '放浪便當', 'unbridled bento'),
(36, 4, 23, '賢食便當', 'Wise bento'),
(37, 4, 19, '深宵便當', 'midnight bento'),
(38, 4, 22, '清花便當', 'qinghua bento'),
(39, 4, 30, '甜美便當', 'sweet bento'),
(40, 4, 20, '蜜酪便當', 'avocado bento'),
(41, 5, 36, '懷舊便當', 'nostalgic bento'),
(42, 5, 6, '動力便當', 'power bento'),
(43, 5, 4, '鯖軍便當', 'mackerel bento'),
(44, 5, 27, '醬蝦便當', 'Sauce Shrimp bento'),
(45, 5, 2, '健康便當', 'healthy bento'),
(46, 5, 17, '籽籽便當', 'seed bento'),
(47, 5, 38, '道味便當', 'taste bento'),
(48, 5, 12, '纖纖便當', 'fiber bento'),
(49, 5, 7, '精緻便當', 'exquisite bento'),
(50, 5, 28, '輕鬆便當', 'relaxed bento'),
(51, 6, 13, '海鮮便當', 'Seafood bento'),
(52, 6, 9, '果類便當', 'fruit bento'),
(53, 6, 21, '黃昏便當', 'twilight bento'),
(54, 6, 1, '蔬泥便當', 'vegetable bento'),
(55, 6, 14, '青綠便當', 'verdant bento'),
(56, 6, 31, '活力便當', 'vitality bento'),
(57, 6, 38, '道味便當', 'taste bento'),
(58, 6, 6, '動力便當', 'power bento'),
(59, 6, 23, '賢食便當', 'Wise bento'),
(60, 6, 37, '童趣便當', 'childlike bento'),
(61, 7, 18, '放浪便當', 'unbridled bento'),
(62, 7, 34, '花雞便當', 'chinchilla bento'),
(63, 7, 23, '賢食便當', 'Wise bento'),
(64, 7, 38, '道味便當', 'taste bento'),
(65, 7, 31, '活力便當', 'vitality bento'),
(66, 7, 21, '黃昏便當', 'twilight bento'),
(67, 7, 8, '清籽便當', 'clear seeds bento'),
(68, 7, 4, '鯖軍便當', 'mackerel bento'),
(69, 7, 32, '紗紗便當', 'yarn bento'),
(70, 7, 36, '懷舊便當', 'nostalgic bento'),
(71, 8, 35, '清檸便當', 'lime bento'),
(72, 8, 13, '海鮮便當', 'Seafood bento'),
(73, 8, 21, '黃昏便當', 'twilight bento'),
(74, 8, 34, '花雞便當', 'chinchilla bento'),
(75, 8, 15, '炙紅便當', 'roast bento'),
(76, 8, 2, '健康便當', 'healthy bento'),
(77, 8, 4, '鯖軍便當', 'mackerel bento'),
(78, 8, 22, '清花便當', 'qinghua bento'),
(79, 8, 14, '青綠便當', 'verdant bento'),
(80, 8, 24, '緻歌便當', 'singing bento'),
(81, 9, 37, '童趣便當', 'childlike bento'),
(82, 9, 9, '果類便當', 'fruit bento'),
(83, 9, 13, '海鮮便當', 'Seafood bento'),
(84, 9, 5, '清爽便當', 'refreshing bento'),
(85, 9, 11, '肉食便當', 'meat bento'),
(86, 9, 7, '精緻便當', 'exquisite bento'),
(87, 9, 3, '紫柚便當', 'grapefruit bento'),
(88, 9, 25, '岳燒便當', 'Yueyaki bento'),
(89, 9, 2, '健康便當', 'healthy bento'),
(90, 9, 38, '道味便當', 'taste bento'),
(91, 10, 9, '果類便當', 'fruit bento'),
(92, 10, 27, '醬蝦便當', 'Sauce Shrimp bento'),
(93, 10, 25, '岳燒便當', 'Yueyaki bento'),
(94, 10, 18, '放浪便當', 'unbridled bento'),
(95, 10, 3, '紫柚便當', 'grapefruit bento'),
(96, 10, 1, '蔬泥便當', 'vegetable bento'),
(97, 10, 37, '童趣便當', 'childlike bento'),
(98, 10, 31, '活力便當', 'vitality bento'),
(99, 10, 14, '青綠便當', 'verdant bento'),
(100, 10, 34, '花雞便當', 'chinchilla bento');

-- --------------------------------------------------------

--
-- 資料表結構 `set_order`
--

CREATE TABLE `set_order` (
  `set_order_id` int(11) NOT NULL COMMENT '套餐id',
  `mem_id` varchar(255) NOT NULL COMMENT '會員id',
  `set_id` int(11) NOT NULL COMMENT '套餐計畫',
  `set_start_date` date NOT NULL COMMENT '套餐開始日期',
  `set_days` varchar(255) NOT NULL COMMENT '套餐天數',
  `orders_category` varchar(255) NOT NULL DEFAULT 'set' COMMENT '商品類別 cs經典 | cm客製 | set套餐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='套餐計畫訂單詳情';

--
-- 傾印資料表的資料 `set_order`
--

INSERT INTO `set_order` (`set_order_id`, `mem_id`, `set_id`, `set_start_date`, `set_days`, `orders_category`) VALUES
(1, '5', 1, '2022-01-29', '7', 'set'),
(2, '6', 2, '2022-02-02', '14', 'set'),
(3, '7', 1, '2022-02-05', '7', 'set');

-- --------------------------------------------------------

--
-- 資料表結構 `share_comment`
--

CREATE TABLE `share_comment` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `share_item_id` int(11) NOT NULL COMMENT '貼文id',
  `member_id` int(11) NOT NULL COMMENT '會員id',
  `comment` varchar(255) NOT NULL COMMENT '貼文留言',
  `item_comment_time` datetime NOT NULL COMMENT '貼文留言時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `share_comment`
--

INSERT INTO `share_comment` (`sid`, `share_item_id`, `member_id`, `comment`, `item_comment_time`) VALUES
(1, 1, 8, '點餐的方式很有趣', '2021-02-12 12:30:00'),
(2, 1, 20, '拍起來很厲害', '2021-02-12 12:30:00'),
(3, 1, 13, '好好吃', '2021-02-12 12:30:00'),
(4, 1, 3, '推薦大家可以試試', '2021-02-12 12:30:00'),
(5, 1, 5, '壽司的品質還不錯吃', '2021-02-12 12:30:00'),
(6, 1, 18, '價格也公道', '2021-02-12 12:30:00'),
(7, 1, 7, '真的是蠻好吃', '2021-02-12 12:30:00'),
(8, 1, 16, '頂級的感覺', '2021-02-12 12:30:00'),
(9, 1, 17, '十分方便', '2021-02-12 12:30:00'),
(10, 1, 9, '用料也很新鮮', '2021-02-12 12:30:00'),
(11, 1, 10, '壽司的品質也比較好', '2021-02-12 12:30:00'),
(12, 1, 12, '菜色豐富', '2021-02-12 12:30:00'),
(13, 2, 11, '整體而言我覺得還不錯', '2021-02-12 12:30:00'),
(14, 2, 14, '沒有腥味', '2021-02-12 12:30:00'),
(15, 2, 9, '價格還蠻平實的', '2021-02-12 12:30:00'),
(16, 2, 4, '很適合做入門日本料理的食材', '2021-02-12 12:30:00'),
(17, 2, 16, '整體食品很高質素', '2021-02-12 12:30:00'),
(18, 2, 1, '非常好吃也夠新鮮', '2021-02-12 12:30:00'),
(19, 2, 5, '份量也實在是太少了', '2021-02-12 12:30:00'),
(20, 3, 15, '感官美好的享受', '2021-02-12 12:30:00'),
(21, 3, 24, '最近正是鮪魚最好吃的時候', '2021-02-12 12:30:00'),
(22, 3, 5, '融化了', '2021-02-12 12:30:00'),
(23, 4, 30, '相當有特色', '2021-02-12 12:30:00'),
(24, 4, 18, '歐美路線的壽司', '2021-02-12 12:30:00'),
(25, 4, 24, '不是太貴', '2021-02-12 12:30:00'),
(26, 4, 26, '豐富多變化的美式壽司', '2021-02-12 12:30:00'),
(27, 4, 46, '餐點好吃特別', '2021-02-12 12:30:00'),
(28, 5, 37, '性價比很高！', '2021-02-12 12:30:00'),
(29, 5, 49, '干貝很大一個', '2021-02-12 12:30:00'),
(30, 5, 11, '烤得恰到好處', '2021-02-12 12:30:00'),
(31, 5, 15, '值得推薦', '2021-02-12 12:30:00'),
(32, 5, 3, '相對划算的選擇', '2021-02-12 12:30:00'),
(33, 5, 21, '不會有踩雷的遺憾。', '2021-02-12 12:30:00'),
(34, 5, 12, '算是合理比例', '2021-02-12 12:30:00'),
(35, 6, 40, '供應的食材種類和來源地都在桌上的餐紙上列明', '2021-02-12 12:30:00'),
(36, 6, 4, '生意很好', '2021-02-12 12:30:00'),
(37, 7, 27, '下次再去台北會再試', '2021-02-12 12:30:00'),
(38, 9, 30, '喜歡碳燒鮭魚握壽司', '2021-02-12 12:30:00'),
(39, 9, 10, '值得偶而獎賞自己', '2021-02-12 12:30:00'),
(40, 9, 14, '品質好', '2021-02-12 12:30:00'),
(41, 9, 29, '很划算。', '2021-02-12 12:30:00'),
(42, 9, 24, '吃起來並沒有到非常驚豔，也吃不飽。', '2021-02-12 12:30:00'),
(43, 9, 17, '壽司食材都很新鮮', '2021-02-12 12:30:00'),
(44, 9, 2, '創意型的日式料理', '2021-02-12 12:30:00'),
(45, 9, 42, '最後覺得有點鹹', '2021-02-12 12:30:00'),
(46, 10, 38, '同壽司的價格偏高', '2021-02-12 12:30:00'),
(47, 10, 6, '真的很好吃', '2021-02-12 12:30:00'),
(48, 10, 47, '這個還算有誠意', '2021-02-12 12:30:00'),
(49, 10, 8, '上亮燈非常漂亮', '2021-02-12 12:30:00'),
(50, 11, 29, '食物依舊好吃', '2021-02-12 12:30:00'),
(51, 11, 9, '份量剛好', '2021-02-12 12:30:00'),
(52, 11, 24, '精緻也很好吃', '2021-02-12 12:30:00'),
(53, 11, 31, '大家一起來集點！', '2021-02-12 12:30:00'),
(54, 11, 35, '餐點口味來看CP值很高', '2021-02-12 12:30:00'),
(55, 12, 11, '高級的氣氛', '2021-02-12 12:30:00'),
(56, 12, 33, '頂級的服務', '2021-02-12 12:30:00'),
(57, 12, 1, '很精緻的創意料理', '2021-02-12 12:30:00'),
(58, 12, 41, '肉卷入口即化真的是太美味了', '2021-02-12 12:30:00'),
(59, 12, 28, '是會再度來訪的口袋名單', '2021-02-12 12:30:00'),
(60, 12, 42, '沒讓人失望', '2021-02-12 12:30:00'),
(61, 13, 4, '生魚片真的很推喔！', '2021-02-12 12:30:00'),
(62, 13, 15, '可以點綜合的', '2021-02-12 12:30:00'),
(63, 13, 6, '會幫你們配好', '2021-02-12 12:30:00'),
(64, 13, 2, '偏酸甜', '2021-02-12 12:30:00'),
(65, 14, 16, '價位可以👍👍👍', '2021-02-12 12:30:00'),
(66, 14, 1, '之後還會來', '2021-02-12 12:30:00'),
(67, 14, 44, '精緻也很美味', '2021-02-12 12:30:00'),
(68, 14, 34, '東西都還不錯', '2021-02-12 12:30:00'),
(69, 15, 6, '肉縮的大小', '2021-02-12 12:30:00'),
(70, 15, 7, '非常貼心♥️', '2021-02-12 12:30:00'),
(71, 15, 9, '擺盤弄的跟藝術品一樣美', '2021-02-12 12:30:00'),
(72, 15, 30, '食物也很好吃，料還很多', '2021-02-12 12:30:00'),
(73, 15, 33, '擺盤好看', '2021-02-12 12:30:00'),
(74, 15, 42, '環境非常有質感', '2021-02-12 12:30:00'),
(75, 16, 33, '沒有魚的味道', '2021-02-12 12:30:00'),
(76, 16, 5, '吃來有點嚼蠟', '2021-02-12 12:30:00'),
(77, 16, 11, '創意融合得不唐突、大膽、順口、好吃', '2021-02-12 12:30:00'),
(78, 16, 28, '我給它5顆星92分評價。', '2021-02-12 12:30:00'),
(79, 16, 31, '我覺得是屬於美式風格的日本料理', '2021-02-12 12:30:00'),
(80, 16, 35, '食物特色在於調味', '2021-02-12 12:30:00'),
(81, 17, 39, '料理的美味度和精緻度，都非常值得推薦', '2021-02-12 12:30:00'),
(82, 18, 7, '食物做得很精緻也很吃', '2021-02-12 12:30:00'),
(83, 18, 5, '很有彈性', '2021-02-12 12:30:00'),
(84, 18, 18, '各種食材都很新鮮，而且富有創意', '2021-02-12 12:30:00'),
(85, 18, 2, '食材新鮮，分量足夠', '2021-02-12 12:30:00'),
(86, 18, 16, '非常推薦家庭或朋友', '2021-02-12 12:30:00'),
(87, 19, 22, '大加分', '2021-02-12 12:30:00'),
(88, 19, 44, '餐點擺設大器且食材用心', '2021-02-12 12:30:00'),
(89, 20, 9, '套餐吃的很滿足，份量很足夠！', '2021-02-12 12:30:00'),
(90, 20, 50, '食材的新鮮度與調味都是非常出色', '2021-02-12 12:30:00'),
(91, 20, 14, '相當美味', '2021-02-12 12:30:00'),
(92, 20, 44, '味覺跟視覺都是一百分', '2021-02-12 12:30:00');

-- --------------------------------------------------------

--
-- 資料表結構 `share_hash`
--

CREATE TABLE `share_hash` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `share_item_id` int(11) NOT NULL COMMENT '貼文id',
  `item_hash` varchar(255) DEFAULT NULL COMMENT '標籤01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `share_hash`
--

INSERT INTO `share_hash` (`sid`, `share_item_id`, `item_hash`) VALUES
(1, 26, 'miles的壽司'),
(2, 1, '香'),
(3, 1, '日式'),
(4, 1, '濃郁'),
(5, 1, '鹹甜'),
(6, 1, '快速完成'),
(7, 1, '多層次'),
(8, 1, '肉多'),
(9, 22, '划算便宜'),
(10, 1, '營養豐富'),
(11, 1, '老少咸宜'),
(12, 26, '超好吃'),
(13, 2, '香'),
(14, 2, '#最近有活動!!大家快去買!!'),
(15, 26, '列印壽司'),
(16, 2, '新鮮'),
(17, 2, '濃郁'),
(18, 2, '清爽'),
(19, 27, '奇特口感'),
(20, 27, '快速完成'),
(21, 2, '壽司真的很好吃'),
(22, 2, '肉很滑嫩'),
(23, 2, '營養豐富'),
(24, 2, '精準飲食'),
(25, 2, '少糖少鹽'),
(26, 2, '老少咸宜'),
(27, 28, '下次再揪阿'),
(28, 3, '香'),
(29, 3, '列印壽司'),
(30, 3, '日式'),
(31, 28, '新鮮'),
(32, 3, '濃郁'),
(33, 28, '清爽'),
(34, 3, '新奇'),
(35, 3, '飽足感'),
(36, 3, '晚餐'),
(37, 3, '多層次'),
(38, 3, '肉多'),
(39, 3, '肉很滑嫩'),
(40, 3, '精準飲食'),
(41, 4, '下次再揪阿'),
(42, 4, '香'),
(43, 29, '#最近有活動!!大家快去買!!'),
(44, 29, '列印壽司'),
(45, 4, '日式'),
(46, 4, '新鮮'),
(47, 4, '濃郁'),
(48, 4, '鹹甜'),
(49, 29, '科技感'),
(50, 4, '新奇'),
(51, 4, '飽足感'),
(52, 29, '晚餐'),
(53, 4, '多層次'),
(54, 4, '肉多'),
(55, 4, '壽司真的很好吃'),
(56, 4, '肉很滑嫩'),
(57, 4, '營養豐富'),
(58, 4, '精準飲食'),
(59, 5, '超好吃'),
(60, 5, '香'),
(61, 5, '列印壽司'),
(62, 30, '新鮮'),
(63, 5, '濃郁'),
(64, 30, '清爽'),
(65, 5, '奇特口感'),
(66, 30, '科技感'),
(67, 5, '新奇'),
(68, 5, '飽足感'),
(69, 5, '晚餐'),
(70, 5, '壽司真的很好吃'),
(71, 5, '划算便宜'),
(72, 5, '營養豐富'),
(73, 5, '精準飲食'),
(74, 5, '老少咸宜'),
(75, 6, '下次再揪阿'),
(76, 6, '香'),
(77, 6, '列印壽司'),
(78, 6, '新鮮'),
(79, 6, '濃郁'),
(80, 6, '清爽'),
(81, 6, '甜味'),
(82, 6, '鹹甜'),
(83, 6, '奇特口感'),
(84, 6, '快速完成'),
(85, 6, '晚餐'),
(86, 6, '划算便宜'),
(87, 7, '超好吃'),
(88, 7, '下次再揪阿'),
(89, 7, '香'),
(90, 7, '#最近有活動!!大家快去買!!'),
(91, 31, '新鮮'),
(92, 7, '濃郁'),
(93, 7, '清爽'),
(94, 7, '奇特口感'),
(95, 31, '科技感'),
(96, 7, '新奇'),
(97, 31, '快速完成'),
(98, 7, '多層次'),
(99, 31, '營養豐富'),
(100, 7, '精準飲食'),
(101, 7, '老少咸宜'),
(102, 8, '香'),
(103, 8, '列印壽司'),
(104, 8, '清爽'),
(105, 8, '甜味'),
(106, 8, '科技感'),
(107, 8, '多層次'),
(108, 8, '划算便宜'),
(109, 9, '超好吃'),
(110, 32, '香'),
(111, 9, '列印壽司'),
(112, 9, '新鮮'),
(113, 32, '濃郁'),
(114, 9, '甜味'),
(115, 9, '鹹甜'),
(116, 9, '科技感'),
(117, 9, '新奇'),
(118, 9, '飽足感'),
(119, 9, '可愛'),
(120, 9, '肉多'),
(121, 9, '肉很滑嫩'),
(122, 9, '少糖少鹽'),
(123, 9, '老少咸宜'),
(124, 10, '下次再揪阿'),
(125, 10, '香'),
(126, 10, '列印壽司'),
(127, 10, '濃郁'),
(128, 10, '清爽'),
(129, 10, '甜味'),
(130, 10, '鹹甜'),
(131, 10, '科技感'),
(132, 10, '飽足感'),
(133, 10, '可愛'),
(134, 10, '肉多'),
(135, 10, '壽司真的很好吃'),
(136, 10, '划算便宜'),
(137, 10, '營養豐富'),
(138, 10, '少糖少鹽'),
(139, 11, '下次再揪阿'),
(140, 11, '香'),
(141, 11, '列印壽司'),
(142, 11, '日式'),
(143, 11, '濃郁'),
(144, 11, '清爽'),
(145, 11, '新奇'),
(146, 11, '少糖少鹽'),
(147, 11, '老少咸宜'),
(148, 12, '超好吃'),
(149, 12, '下次再揪阿'),
(150, 12, '香'),
(151, 12, '列印壽司'),
(152, 12, '日式'),
(153, 12, '新鮮'),
(154, 12, '濃郁'),
(155, 12, '清爽'),
(156, 12, '科技感'),
(157, 12, '新奇'),
(158, 12, '快速完成'),
(159, 12, '可愛'),
(160, 12, '多層次'),
(161, 12, '營養豐富'),
(162, 12, '老少咸宜'),
(163, 13, '超好吃'),
(164, 13, '下次再揪阿'),
(165, 13, '列印壽司'),
(166, 13, '濃郁'),
(167, 13, '甜味'),
(168, 13, '鹹甜'),
(169, 13, '奇特口感'),
(170, 13, '科技感'),
(171, 13, '營養豐富'),
(172, 13, '精準飲食'),
(173, 14, '超好吃'),
(174, 14, '下次再揪阿'),
(175, 14, '香'),
(176, 14, '列印壽司'),
(177, 24, '日式'),
(178, 14, '濃郁'),
(179, 14, '清爽'),
(180, 14, '甜味'),
(181, 14, '划算便宜'),
(182, 14, '精準飲食'),
(183, 15, '下次再揪阿'),
(184, 15, '香'),
(185, 15, '列印壽司'),
(186, 15, '新鮮'),
(187, 15, '濃郁'),
(188, 15, '甜味'),
(189, 15, '奇特口感'),
(190, 15, '快速完成'),
(191, 15, '晚餐'),
(192, 15, '可愛'),
(193, 15, '划算便宜'),
(194, 23, '肉很滑嫩'),
(195, 15, '營養豐富'),
(196, 15, '少糖少鹽'),
(197, 16, '超好吃'),
(198, 16, '香'),
(199, 16, '列印壽司'),
(200, 16, '日式'),
(201, 16, '新鮮'),
(202, 16, '濃郁'),
(203, 23, '清爽'),
(204, 16, '可愛'),
(205, 16, '多層次'),
(206, 16, '肉多'),
(207, 16, '壽司真的很好吃'),
(208, 16, '肉很滑嫩'),
(209, 16, '精準飲食'),
(210, 16, '老少咸宜'),
(211, 17, '香'),
(212, 17, '列印壽司'),
(213, 17, '日式'),
(214, 17, '濃郁'),
(215, 17, '清爽'),
(216, 17, '甜味'),
(217, 17, '奇特口感'),
(218, 17, '科技感'),
(219, 17, '可愛'),
(220, 17, '肉很滑嫩'),
(221, 17, '營養豐富'),
(222, 18, '香'),
(223, 18, '列印壽司'),
(224, 21, '新鮮'),
(225, 18, '濃郁'),
(226, 18, '甜味'),
(227, 18, '新奇'),
(228, 18, '營養豐富'),
(229, 18, '老少咸宜'),
(230, 21, '下次再揪阿'),
(231, 19, '香'),
(232, 19, '列印壽司'),
(233, 19, '日式'),
(234, 19, '新鮮'),
(235, 19, '甜味'),
(236, 19, '科技感'),
(237, 19, '肉多'),
(238, 19, '營養豐富'),
(239, 19, '少糖少鹽'),
(240, 25, '超好吃'),
(241, 20, '香'),
(242, 25, '列印壽司'),
(243, 20, '新鮮'),
(244, 20, '清爽'),
(245, 20, '甜味'),
(246, 20, '鹹甜'),
(247, 20, '奇特口感'),
(248, 20, '科技感'),
(249, 20, '飽足感'),
(250, 20, '晚餐'),
(251, 20, '可愛'),
(252, 20, '多層次'),
(253, 20, '營養豐富'),
(254, 20, '精準飲食');

-- --------------------------------------------------------

--
-- 資料表結構 `share_img`
--

CREATE TABLE `share_img` (
  `sid` int(11) NOT NULL,
  `share_img_id` int(11) NOT NULL COMMENT '照片群id',
  `share_imgPath` varchar(255) NOT NULL COMMENT '照片存取位置',
  `share_img_order` int(11) NOT NULL COMMENT '照片順序',
  `share_img_status` int(11) NOT NULL COMMENT '照片是否active 1:active 2:inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='照片位置存取';

--
-- 傾印資料表的資料 `share_img`
--

INSERT INTO `share_img` (`sid`, `share_img_id`, `share_imgPath`, `share_img_order`, `share_img_status`) VALUES
(1, 1, 'img/share/1/1-1.jpg', 1, 1),
(2, 1, 'img/share/1/1-2.jpg', 2, 1),
(3, 2, 'img/share/2/2-1.jpg', 1, 1),
(4, 3, 'img/share/3/3-1.jpg', 1, 1),
(5, 3, 'img/share/3/3-2.jpg', 2, 1),
(6, 4, 'img/share/4/4-1.jpg', 1, 1),
(7, 4, 'img/share/4/4-2.jpg', 2, 1),
(8, 5, 'img/share/5/5-1.jpg', 1, 1),
(9, 5, 'img/share/5/5-2.jpg', 2, 1),
(10, 6, 'img/share/6/6-1.jpg', 1, 1),
(11, 6, 'img/share/6/6-2.jpg', 2, 1),
(12, 7, 'img/share/7/7-1.jpg', 1, 1),
(13, 7, 'img/share/7/7-2.jpg', 2, 1),
(14, 7, 'img/share/7/7-3.jpg', 3, 1),
(15, 7, 'img/share/7/7-4.jpg', 4, 1),
(16, 8, 'img/share/8/8-1.jpg', 1, 1),
(17, 9, 'img/share/9/9-1.jpg', 1, 1),
(18, 10, 'img/share/10/10-1.jpg', 1, 1),
(19, 10, 'img/share/10/10-2.jpg', 2, 1),
(20, 10, 'img/share/10/10-3.jpg', 3, 1),
(21, 10, 'img/share/10/10-4.jpg', 4, 1),
(22, 11, 'img/share/11/11-1.jpg', 1, 1),
(23, 12, 'img/share/12/12-1.jpg', 1, 1),
(24, 12, 'img/share/12/12-2.jpg', 2, 1),
(25, 13, 'img/share/13/13-1.jpg', 1, 1),
(26, 13, 'img/share/13/13-2.jpg', 2, 1),
(27, 14, 'img/share/14/14-1.jpg', 1, 1),
(28, 14, 'img/share/14/14-2.jpg', 2, 1),
(29, 15, 'img/share/15/15-1.jpg', 1, 1),
(30, 16, 'img/share/16/16-1.jpg', 1, 1),
(31, 17, 'img/share/17/17-1.jpg', 1, 1),
(32, 17, 'img/share/17/17-2.jpg', 2, 1),
(33, 18, 'img/share/18/18-1.jpg', 1, 1),
(34, 19, 'img/share/19/19-1.jpg', 1, 1),
(35, 19, 'img/share/19/19-2.jpg', 2, 1),
(36, 19, 'img/share/19/19-3.jpg', 3, 1),
(37, 20, 'img/share/20/20-1.jpg', 1, 1),
(38, 21, 'img/share/21/21-1.jpg', 1, 1),
(39, 22, 'img/share/22/22-1.jpg', 1, 1),
(40, 23, 'img/share/23/23-1.jpg', 1, 1),
(41, 24, 'img/share/24/24-1.jpg', 1, 1),
(42, 25, 'img/share/25/25-1.jpg', 1, 1),
(43, 26, 'img/share/26/26-1.jpg', 1, 1),
(44, 27, 'img/share/27/27-1.jpg', 1, 1),
(45, 28, 'img/share/28/28-1.jpg', 1, 1),
(46, 29, 'img/share/29/29-1.jpg', 1, 1),
(47, 30, 'img/share/30/30-1.jpg', 1, 1),
(48, 31, 'img/share/31/31-1.jpg', 1, 1),
(49, 32, 'img/share/32/32-1.jpg', 1, 1),
(50, 33, 'img/share/33/33-1.jpg', 1, 1),
(51, 34, 'img/share/34/34-1.jpg', 1, 1),
(52, 35, 'img/share/35/35-1.jpg', 1, 1),
(53, 36, 'img/share/36/36-1.jpg', 1, 1),
(54, 37, 'img/share/37/37-1.jpg', 1, 1),
(55, 38, 'img/share/38/38-1.jpg', 1, 1),
(56, 39, 'img/share/39/39-1.jpg', 1, 1),
(57, 40, 'img/share/40/40-1.jpg', 1, 1),
(58, 41, 'img/share/41/41-1.jpg', 1, 1),
(59, 42, 'img/share/42/42-1.jpg', 1, 1),
(60, 43, 'img/share/43/43-1.jpg', 1, 1),
(61, 44, 'img/share/44/44-1.jpg', 1, 1),
(62, 45, 'img/share/45/45-1.jpg', 1, 1),
(63, 46, 'img/share/46/46-1.jpg', 1, 1),
(64, 46, 'img/share/46/46-2.jpg', 2, 1),
(65, 47, 'img/share/47/47-1.jpg', 1, 1),
(66, 47, 'img/share/47/47-2.jpg', 2, 1),
(67, 48, 'img/share/48/48-1.jpg', 1, 1),
(68, 49, 'img/share/49/49-1.jpg', 1, 1),
(69, 50, 'img/share/50/50-1.jpg', 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `share_item`
--

CREATE TABLE `share_item` (
  `share_item_id` int(11) NOT NULL COMMENT '貼文id',
  `member_id` int(11) DEFAULT NULL COMMENT '會員id',
  `share_order_id` int(11) DEFAULT NULL COMMENT '分享訂單id',
  `share_order_category` varchar(255) DEFAULT NULL COMMENT '分享訂單分類',
  `share_title` varchar(255) DEFAULT NULL COMMENT '貼文標題',
  `share_img_id` varchar(255) DEFAULT NULL COMMENT '分享貼文圖片路徑',
  `share_desc` varchar(255) DEFAULT NULL COMMENT '貼文內容',
  `share_views` int(11) NOT NULL DEFAULT 0 COMMENT '貼文觀看次數',
  `share_status` varchar(255) DEFAULT NULL COMMENT '貼文狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `share_item`
--

INSERT INTO `share_item` (`share_item_id`, `member_id`, `share_order_id`, `share_order_category`, `share_title`, `share_img_id`, `share_desc`, `share_views`, `share_status`) VALUES
(1, 1, 200, '1', '好吃的壽司', '1', '非常好吃~~非常好吃~~非常好吃~~非常好吃~~', 0, '1'),
(2, 5, 201, '3', '好吃多樣的壽司', '2', '一份招牌鮭魚握壽司竟然快跟一台iphone 5s一樣大！綜合生魚片的厚度也快2公分厚，老闆完全不怕虧本，就是要你吃好吃滿！', 0, '1'),
(3, 15, 202, '1', '夏日吃壽司很棒', '3', '北醫附近cp值爆表的握壽司非他莫屬！一份價位跟連鎖迴轉壽司差不多，但品質卻是高級日式料理', 0, '1'),
(4, 2, 203, '2', '好吃的壽司店', '4', '刺身的部分，厚度更是跌破你眼鏡，不禁會懷疑老闆到底有沒有賺錢。用少少的錢就能享受到頂級的料理，不僅受到學生族群的喜愛，上班族下班後也喜歡來小酌一杯。', 0, '1'),
(5, 19, 204, '2', '最喜歡壽司上面的生魚片的尾巴拖的長長的', '5', '喜歡吃鮭魚的人千萬不要錯過了！握壽司的魚肉跟壽司米的比例抓得剛好，一入口有醋飯香，還有魚肉的鮮甜，尤其是鮭魚肚，豐富的油脂配上醋飯，爽口不膩', 0, '1'),
(6, 8, 205, '1', '價格較高的壽司店', '6', '好吃與否就見仁見智，畢竟有些人喜歡純正日式的味道。不過最厲害的是它的分量！', 0, '1'),
(7, 10, 206, '1', '吃了好多次，壽司好吃', '7', '焦糖鮭魚，甜味與油脂味相交融有日式照燒的風味，雖然沒有創新的菜色，但從食材及口味來看，都能看到師傅的用心。', 0, '1'),
(8, 20, 207, '2', 'Best Sushi in Southern Taiwan', '8', '雖然價錢聽起來很嚇人，但吃完會覺得物超所值', 0, '1'),
(9, 3, 208, '1', '就是最好的地方吃生魚片和壽司~', '9', '店內餐點都是壽司類，各式壽司，創新口味壽司，食材新鮮', 0, '1'),
(10, 1, 209, '1', '期間限定驚人美味，希望平時也有這種水準', '10', '強力推薦炙燒系列，可以嚐到壽司之外，不同料理手法的味覺嚐鮮。', 0, '1'),
(11, 13, 210, '1', '好吃程度大勝某連鎖旋轉壽司店', '11', '食材很新鮮，種類選擇很多，炙燒系列很好吃，已經來訪很多次，', 0, '1'),
(12, 13, 211, '3', '好吃又好玩', '12', '如果吃習慣了精緻的江戶前壽司，那麼不要抱著太高的期望前來。', 0, '1'),
(13, 11, 212, '1', '大推！好吃', '13', '在這裡吃炙壽司是最好的選擇。', 0, '1'),
(14, 10, 213, '1', '神奇的列印壽司!', '14', '喜歡的日式料理和壽司的人，不老壽司應該不會讓你失望。販售種類很多，生魚片、握壽司、壽司..等食村都很新鮮，目前也開放外帶，十分方便。', 0, '1'),
(15, 16, 214, '1', '連鎖3D列印壽司餐廳，建議下載App', '15', '人潮很多，要排一段時間，但等待是值得的，食材新鮮，品質也很棒，', 0, '1'),
(16, 5, 215, '3', 'cp值高', '16', '外帶便當也是不錯選擇，綜合口味種類繁多，幸福感十足。', 0, '1'),
(17, 18, 216, '1', '歡樂的體驗', '17', '壽司很精緻且美味，價格不算貴，食材很新鮮，服務也不錯', 0, '1'),
(18, 7, 217, '3', '自己製作的壽司', '18', '我們因爲在外聚餐一樣, 首先, 它乾淨, 第 2, 日本是愉悅的裝飾, 第 3, 食物很新鮮, 和第 4, 服務很好。 在高雄有幾個分支。 它也是很方便的壽司取出它。 最後但同樣重要的是, 它很便宜。', 0, '2'),
(19, 9, 218, '1', '最愛\"生芥末\"', '19', '是真的很乾淨的地方, 這裏有美麗的和日本的食物是很新鮮的。 是這麼樣的員工。', 0, '1'),
(20, 19, 219, '2', '好吃又好玩的餐廳', '20', '離地鐵站很近。 價格也很合理。 不錯的地方停下來吃晚飯。 他們提供美味的壽司和堪薩斯州。 分量很小不過我覺得只是一個普遍問題吃壽司的地方', 0, '1'),
(21, 16, 220, '2', '邊吃邊玩', '21', '生魚片新鮮厚度剛好還很平價但時間成本太高 吃過一次就夠', 0, '1'),
(22, 1, 221, '2', '以列印壽司來說，有一定水準', '22', '我非常挑嘴 尤其壽司之類的料理 這裡的料理 值得', 0, '1'),
(23, 18, 222, '2', '吃壽司的有趣地方', '23', '超浮誇鮭魚金箔壽司 壽司控吃起來！不能去築地 就來老饕最愛的日式定食&磁石迴轉壽司', 0, '1'),
(24, 8, 223, '3', '意想不到的好味道', '24', '美味的無菜單料理,比較高消費的餐廳，不過食物質素可服務也一樣的高，精緻、有誠意的制作，師父在每道菜上菜時，會細心的介紹菜的名稱及是否要配醬料吃，很細心的注重每個用餐的細節,吃的出師父的用心', 0, '1'),
(25, 10, 224, '1', '壽司屋之王', '25', '很滿意的厨師發辦菜式，用料很新鮮，連伴菜也很講究。當天大部份的食材來自日本，如海膽、拖羅，但也有採用本地的精美材料，如宜蘭的野生明蝦，厨師刀工了得，對各種食材瞭如指掌，對食物和烹調滿有熱誠。', 0, '1'),
(26, 4, 225, '1', '壽司的縮影', '26', '因為每一道都非常美味，道數的份量顯得多了點，有牛肉、龍蝦、生蠔、鮮魚，推薦的酒單也非常適合，好餐廳！', 0, '1'),
(27, 15, 226, '1', '有愛的壽司，米一星值得推薦', '27', '食材本身新鮮，烹飪方式也能完整呈現好食材本身的特色，份量也很足夠，建議享用2500以上的套餐，師傅很親切，服務都蠻到位的，不收開瓶費。', 0, '1'),
(28, 19, 227, '1', '一家人愉快的壽司體驗', '28', '這間店主要都是老客人，你可以看到師傅很精湛的刀工，無菜單料理就是看師傅每天到市場能有甚麼菜色， 就會有不同的料理。最推薦的是生蠔，在別地方都吃不到這麼鮮甜的生蠔，分量中等但吃的是精緻的口感。 很適合喜歡精緻料理的朋友。', 0, '1'),
(29, 7, 228, '2', '壽司本應如此', '29', '今年一月和二月都拜訪了一次匠壽司，兩次都是為了生日慶生，師傅送上的魚料和其他海產，尤其是讓人驚豔的明蝦，真的是非常新鮮，可以吃到食材的鮮味，而一些料理小物，例如滷鮑魚或紫蘇山藥等也是十分可口，算是台北cp值很高的日式料理了！', 0, '2'),
(30, 8, 229, '1', '最好的壽司體驗之一', '30', '高雄的知名日本料理店，餐點種類多且精緻、食才新鮮也有高檔食才，服務也很好，整體的水準相當好，也可以試試看無菜單料理，由店家自由提供，或許能吃到驚喜喔。', 0, '1'),
(31, 7, 230, '3', '絕對是頂級的饗宴!', '31', '海鮮非常美味新鮮，最愛鮭魚生魚片，超新鮮，油脂豐富，吃了有滿滿幸福感。 牛舌入口即化，也是很喜歡 第一次來，留下很好印象', 0, '1'),
(32, 19, 231, '2', '壽司是最新鮮的', '32', '藏壽司食材新鮮，選項很多，除了經典的生魚壽司，還有加州卷、天婦羅，也會不定期的推出季節限定餐點。滿五盤還可抽扭蛋喔！', 0, '1'),
(33, 8, 232, '1', '美味一流的壽司大餐！', '33', '價格跟某連鎖旋轉壽司店差不多，但好吃非常多。這家藏壽司在新竹常去吃，這一次我跟朋友在新竹聚餐，假日排很久！建議可以用APP預約，比較不會排隊。', 0, '1'),
(34, 8, 233, '3', '不錯的體驗', '34', '好吃！好吃！！好吃！！！', 0, '1'),
(35, 13, 234, '2', '很好，但是不要點太多。', '35', '覺得真的好吃 雖然有些價位比較高 但是整體吃起來還不錯 很多壽司都很推👍👍👍 而且菜單常常更新 只是味增湯比較不推，味道有點奇怪', 0, '1'),
(36, 8, 235, '1', '不能不試的壽司', '36', '餐點及價位適中 最受歡迎的熱點應該就是每丟五個盤子就可活得一次轉扭蛋的機會 雖然不會每次都獲獎 但總是再丟五次給大家一個期待 讓小孩為了扭蛋多吃幾盤壽司XD', 0, '1'),
(37, 17, 236, '1', '這是一家著名的快餐壽司店', '37', '《壽司.壽司一番技》 食材超新鮮 價位便宜合理 服務人員很會招呼客人 用餐時間人很多最好先訂位 已經來過很多次 因為俗擱大碗 超推！', 0, '1'),
(38, 8, 237, '1', '相同價位中，這是你能找到最好的了', '38', '米飯選用口感香Q的越光米，有單點和套餐可以選擇，蝦天婦羅卷好好吃，還有特厚實的玉子燒握壽司，店內位子不多，有提供訂位。', 0, '1'),
(39, 13, 238, '1', '我們旅行中最好的壽司', '39', '臨時去的還有位置 生魚片新鮮 但是和飯分離 味增湯異常清淡 壽司吃完約20分鐘一夜干才上 問服務生一夜干怎那麼久 回答：你趕時間嗎？ 因為一位師傅請假 話說客人也沒幾個 沒有下次了', 0, '1'),
(40, 9, 239, '3', '魚肉融化在嘴裏', '40', '這天很幸運不用排隊就吃到，吃完才發現是很難訂位的店家，東西精緻又好吃，重點價格不貴又吃的飽，真的好好吃', 0, '1'),
(41, 11, 240, '1', '繁華城市裡的壽司', '41', '這家店在我家附近，今天第一次跟朋友去吃午餐。午餐380有二種套餐，我們選壽司。有八個握壽司和生菜沙拉、味噌湯、布丁。不便宜但很好吃', 0, '1'),
(42, 11, 241, '3', '性價比高', '42', '每一道都是驚喜，每一道都是不同的味道，而且非常有層次的口感，除了新鮮美味之外，更可以感受到主廚精心的配菜。是我吃過最好的壽司，值得饕家們來享用！', 0, '1'),
(43, 4, 242, '1', '剛做的壽司', '43', '日本主厨親自為每一位客人製作美味的壽司，每一個壽司都有其獨特的味道。海膽非常鮮甜，就像剛播開來一樣的。熟成後的鮪魚更鮮甜味道更加的濃郁，非常值得饕客來品嚐，而且價格不貴。', 0, '1'),
(44, 2, 243, '2', '不止有鮮美的壽司', '44', '評價很不錯, 前後吃過好幾次。個人喜歡點當季的新鮮魚貨, 單價會比較高, 但是食材很棒。如果要吃很飽, 可以多點壽司系列, 其他的東西也是很不錯, 喜歡他的湯, 料不少。只是有時候去, 會等上一些時候, 要耐心等。', 0, '2'),
(45, 12, 244, '1', '超贊的壽司！', '45', '位在住宅區內的壽司專賣店，提供各式日式握壽司、軍艦壽司、生魚片等，當然來這裡就是要吃生魚片握壽司、炙燒握壽司、以及生魚片，食材新鮮，搭配醋飯，基本上不需加太多調味料能感受到食物的美味，無怪乎用餐時間門庭若市，一位難求。另味噌湯內加入許多小魚乾，清爽不油膩，非常適合搭配壽司或生魚片享用。', 0, '1'),
(46, 2, 245, '1', '慕名而來的壽司店', '46', '網路推薦的日式料理 綜合壽司與綜合生魚片 說真的與其他日式料理餐廳大同小異 值得一提的是味增湯 少數裡面有放小魚乾 口感清爽附有魚乾的香味 可以外帶喔⋯⋯', 0, '1'),
(47, 19, 246, '1', '既方便又美味的壽司店', '47', '這裡的菜色絕大部分都是壽司，只有幾樣小菜、生魚片與味噌湯可供選擇，雖然菜單上都標示著一份六個或八個，但對於單人或雙人的散客也非常貼心友善的接受一、兩個的單點服務，只要除以每份總價即可，味增湯及日式沙拉也都值得推薦給大家。', 0, '1'),
(48, 18, 247, '1', '食材質量很高，味道中等偏上，適合2到4人一起。', '48', '不錯吃～如果非常餓來這裡會花不少錢。味噌湯的料還滿多的，日式沙拉好吃，魚卵軍艦捲個人覺得鹹了點，手捲則岀乎意料。', 0, '1'),
(49, 8, 248, '3', '優質的服務，美味的壽司', '49', '算是台南滿有名的日式餐廳之一，食材相當新鮮，服務也還不賴。位於大東夜市附近，算是滿好到達的。但是價格稍高，不能常吃就是了', 0, '2'),
(50, 18, 249, '1', '我第一次體驗生魚片壽司，很棒', '50', '價格中上，可以用個數來order, 推薦星鰻，干貝壽司，也有每日特色 坐位不多，最好要事前打電話預約 可以外帶，所有的壽司都是現做的，不會等很久 我非常喜歡此家的壽司', 0, '1');

-- --------------------------------------------------------

--
-- 資料表結構 `share_like`
--

CREATE TABLE `share_like` (
  `sid` int(11) NOT NULL COMMENT '分享喜歡流水號',
  `share_item_id` int(11) DEFAULT NULL COMMENT '貼文id',
  `member_id` int(11) DEFAULT NULL COMMENT '會員id',
  `item_like` tinyint(1) DEFAULT NULL COMMENT '貼文按讚與否',
  `item_like_time` datetime DEFAULT NULL COMMENT '貼文按讚時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `share_save`
--

CREATE TABLE `share_save` (
  `sid` int(11) NOT NULL COMMENT '分享收藏sid',
  `share_item_id` int(11) NOT NULL COMMENT '貼文id',
  `member_id` int(11) NOT NULL COMMENT '會員id',
  `item_save_time` datetime NOT NULL COMMENT '貼文收藏時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `share_save`
--

INSERT INTO `share_save` (`sid`, `share_item_id`, `member_id`, `item_save_time`) VALUES
(2, 1, 2, '0000-00-00 00:00:00'),
(3, 1, 7, '0000-00-00 00:00:00'),
(4, 1, 19, '0000-00-00 00:00:00'),
(5, 1, 14, '0000-00-00 00:00:00'),
(6, 1, 12, '0000-00-00 00:00:00'),
(7, 1, 13, '0000-00-00 00:00:00'),
(8, 1, 17, '0000-00-00 00:00:00'),
(9, 1, 4, '0000-00-00 00:00:00'),
(10, 1, 16, '0000-00-00 00:00:00'),
(11, 1, 8, '0000-00-00 00:00:00'),
(12, 2, 3, '0000-00-00 00:00:00'),
(13, 2, 16, '0000-00-00 00:00:00'),
(14, 2, 9, '0000-00-00 00:00:00'),
(15, 2, 4, '0000-00-00 00:00:00'),
(16, 2, 19, '0000-00-00 00:00:00'),
(17, 2, 18, '0000-00-00 00:00:00'),
(18, 2, 12, '0000-00-00 00:00:00'),
(19, 2, 11, '0000-00-00 00:00:00'),
(20, 2, 8, '0000-00-00 00:00:00'),
(21, 2, 2, '0000-00-00 00:00:00'),
(22, 2, 7, '0000-00-00 00:00:00'),
(23, 2, 6, '0000-00-00 00:00:00'),
(24, 3, 9, '0000-00-00 00:00:00'),
(25, 3, 7, '0000-00-00 00:00:00'),
(26, 3, 3, '0000-00-00 00:00:00'),
(27, 3, 2, '0000-00-00 00:00:00'),
(28, 3, 4, '0000-00-00 00:00:00'),
(29, 3, 11, '0000-00-00 00:00:00'),
(30, 3, 14, '0000-00-00 00:00:00'),
(31, 3, 20, '0000-00-00 00:00:00'),
(32, 3, 10, '0000-00-00 00:00:00'),
(33, 3, 16, '0000-00-00 00:00:00'),
(34, 3, 1, '0000-00-00 00:00:00'),
(35, 3, 13, '0000-00-00 00:00:00'),
(36, 3, 8, '0000-00-00 00:00:00'),
(37, 4, 6, '0000-00-00 00:00:00'),
(38, 4, 16, '0000-00-00 00:00:00'),
(39, 4, 3, '0000-00-00 00:00:00'),
(40, 4, 1, '0000-00-00 00:00:00'),
(41, 4, 19, '0000-00-00 00:00:00'),
(42, 4, 8, '0000-00-00 00:00:00'),
(43, 4, 15, '0000-00-00 00:00:00'),
(44, 4, 2, '0000-00-00 00:00:00'),
(45, 4, 10, '0000-00-00 00:00:00'),
(46, 4, 13, '0000-00-00 00:00:00'),
(47, 4, 20, '0000-00-00 00:00:00'),
(48, 4, 12, '0000-00-00 00:00:00'),
(49, 4, 9, '0000-00-00 00:00:00'),
(50, 4, 14, '0000-00-00 00:00:00'),
(51, 4, 7, '0000-00-00 00:00:00'),
(52, 4, 11, '0000-00-00 00:00:00'),
(53, 5, 16, '0000-00-00 00:00:00'),
(54, 5, 8, '0000-00-00 00:00:00'),
(55, 5, 10, '0000-00-00 00:00:00'),
(56, 5, 13, '0000-00-00 00:00:00'),
(57, 5, 19, '0000-00-00 00:00:00'),
(58, 5, 1, '0000-00-00 00:00:00'),
(59, 5, 6, '0000-00-00 00:00:00'),
(60, 5, 9, '0000-00-00 00:00:00'),
(61, 5, 15, '0000-00-00 00:00:00'),
(62, 5, 7, '0000-00-00 00:00:00'),
(63, 5, 11, '0000-00-00 00:00:00'),
(64, 5, 17, '0000-00-00 00:00:00'),
(65, 5, 12, '0000-00-00 00:00:00'),
(66, 5, 20, '0000-00-00 00:00:00'),
(67, 5, 18, '0000-00-00 00:00:00'),
(68, 6, 6, '0000-00-00 00:00:00'),
(69, 6, 4, '0000-00-00 00:00:00'),
(70, 6, 11, '0000-00-00 00:00:00'),
(71, 6, 3, '0000-00-00 00:00:00'),
(72, 6, 5, '0000-00-00 00:00:00'),
(73, 6, 13, '0000-00-00 00:00:00'),
(74, 6, 19, '0000-00-00 00:00:00'),
(75, 6, 8, '0000-00-00 00:00:00'),
(76, 6, 14, '0000-00-00 00:00:00'),
(77, 6, 7, '0000-00-00 00:00:00'),
(78, 6, 20, '0000-00-00 00:00:00'),
(79, 6, 12, '0000-00-00 00:00:00'),
(80, 6, 1, '0000-00-00 00:00:00'),
(81, 6, 15, '0000-00-00 00:00:00'),
(82, 6, 18, '0000-00-00 00:00:00'),
(83, 6, 9, '0000-00-00 00:00:00'),
(84, 6, 10, '0000-00-00 00:00:00'),
(85, 7, 16, '0000-00-00 00:00:00'),
(86, 7, 2, '0000-00-00 00:00:00'),
(87, 7, 12, '0000-00-00 00:00:00'),
(88, 7, 19, '0000-00-00 00:00:00'),
(89, 7, 3, '0000-00-00 00:00:00'),
(90, 7, 14, '0000-00-00 00:00:00'),
(91, 7, 11, '0000-00-00 00:00:00'),
(92, 7, 20, '0000-00-00 00:00:00'),
(93, 7, 17, '0000-00-00 00:00:00'),
(94, 7, 18, '0000-00-00 00:00:00'),
(95, 7, 10, '0000-00-00 00:00:00'),
(96, 7, 1, '0000-00-00 00:00:00'),
(97, 7, 4, '0000-00-00 00:00:00'),
(98, 8, 20, '0000-00-00 00:00:00'),
(99, 8, 17, '0000-00-00 00:00:00'),
(100, 8, 9, '0000-00-00 00:00:00'),
(101, 8, 5, '0000-00-00 00:00:00'),
(102, 8, 13, '0000-00-00 00:00:00'),
(103, 8, 19, '0000-00-00 00:00:00'),
(104, 8, 10, '0000-00-00 00:00:00'),
(105, 8, 4, '0000-00-00 00:00:00'),
(106, 8, 12, '0000-00-00 00:00:00'),
(107, 8, 8, '0000-00-00 00:00:00'),
(108, 8, 16, '0000-00-00 00:00:00'),
(109, 8, 18, '0000-00-00 00:00:00'),
(110, 8, 11, '0000-00-00 00:00:00'),
(111, 8, 2, '0000-00-00 00:00:00'),
(112, 8, 14, '0000-00-00 00:00:00'),
(113, 9, 12, '0000-00-00 00:00:00'),
(114, 9, 14, '0000-00-00 00:00:00'),
(115, 9, 1, '0000-00-00 00:00:00'),
(116, 9, 7, '0000-00-00 00:00:00'),
(117, 9, 4, '0000-00-00 00:00:00'),
(118, 9, 18, '0000-00-00 00:00:00'),
(119, 9, 2, '0000-00-00 00:00:00'),
(120, 9, 13, '0000-00-00 00:00:00'),
(121, 9, 16, '0000-00-00 00:00:00'),
(122, 9, 6, '0000-00-00 00:00:00'),
(123, 9, 20, '0000-00-00 00:00:00'),
(124, 9, 11, '0000-00-00 00:00:00'),
(125, 9, 10, '0000-00-00 00:00:00'),
(126, 9, 3, '0000-00-00 00:00:00'),
(127, 10, 14, '0000-00-00 00:00:00'),
(128, 10, 7, '0000-00-00 00:00:00'),
(129, 10, 15, '0000-00-00 00:00:00'),
(130, 10, 3, '0000-00-00 00:00:00'),
(131, 10, 5, '0000-00-00 00:00:00'),
(132, 10, 8, '0000-00-00 00:00:00'),
(133, 10, 18, '0000-00-00 00:00:00'),
(134, 10, 13, '0000-00-00 00:00:00'),
(135, 10, 19, '0000-00-00 00:00:00'),
(136, 10, 17, '0000-00-00 00:00:00'),
(137, 10, 6, '0000-00-00 00:00:00'),
(138, 10, 20, '0000-00-00 00:00:00'),
(139, 10, 9, '0000-00-00 00:00:00'),
(140, 10, 10, '0000-00-00 00:00:00'),
(141, 10, 2, '0000-00-00 00:00:00'),
(142, 10, 1, '0000-00-00 00:00:00'),
(143, 10, 4, '0000-00-00 00:00:00'),
(144, 11, 19, '0000-00-00 00:00:00'),
(145, 11, 9, '0000-00-00 00:00:00'),
(146, 11, 1, '0000-00-00 00:00:00'),
(147, 11, 3, '0000-00-00 00:00:00'),
(148, 11, 6, '0000-00-00 00:00:00'),
(149, 11, 2, '0000-00-00 00:00:00'),
(150, 11, 5, '0000-00-00 00:00:00'),
(151, 11, 10, '0000-00-00 00:00:00'),
(152, 11, 8, '0000-00-00 00:00:00'),
(153, 11, 15, '0000-00-00 00:00:00'),
(154, 11, 4, '0000-00-00 00:00:00'),
(155, 11, 17, '0000-00-00 00:00:00'),
(156, 11, 11, '0000-00-00 00:00:00'),
(157, 11, 13, '0000-00-00 00:00:00'),
(158, 12, 13, '0000-00-00 00:00:00'),
(159, 12, 8, '0000-00-00 00:00:00'),
(160, 12, 6, '0000-00-00 00:00:00'),
(161, 12, 19, '0000-00-00 00:00:00'),
(162, 12, 5, '0000-00-00 00:00:00'),
(163, 12, 10, '0000-00-00 00:00:00'),
(164, 12, 17, '0000-00-00 00:00:00'),
(165, 12, 1, '0000-00-00 00:00:00'),
(166, 12, 11, '0000-00-00 00:00:00'),
(167, 12, 20, '0000-00-00 00:00:00'),
(168, 12, 15, '0000-00-00 00:00:00'),
(169, 13, 12, '0000-00-00 00:00:00'),
(170, 13, 17, '0000-00-00 00:00:00'),
(171, 13, 11, '0000-00-00 00:00:00'),
(172, 13, 19, '0000-00-00 00:00:00'),
(173, 13, 14, '0000-00-00 00:00:00'),
(174, 13, 2, '0000-00-00 00:00:00'),
(175, 13, 7, '0000-00-00 00:00:00'),
(176, 13, 5, '0000-00-00 00:00:00'),
(177, 14, 15, '0000-00-00 00:00:00'),
(178, 14, 17, '0000-00-00 00:00:00'),
(179, 14, 18, '0000-00-00 00:00:00'),
(180, 14, 7, '0000-00-00 00:00:00'),
(181, 14, 10, '0000-00-00 00:00:00'),
(182, 14, 1, '0000-00-00 00:00:00'),
(183, 14, 12, '0000-00-00 00:00:00'),
(184, 14, 4, '0000-00-00 00:00:00'),
(185, 14, 3, '0000-00-00 00:00:00'),
(186, 15, 7, '0000-00-00 00:00:00'),
(187, 15, 9, '0000-00-00 00:00:00'),
(188, 15, 16, '0000-00-00 00:00:00'),
(189, 15, 18, '0000-00-00 00:00:00'),
(190, 15, 5, '0000-00-00 00:00:00'),
(191, 15, 6, '0000-00-00 00:00:00'),
(192, 15, 3, '0000-00-00 00:00:00'),
(193, 16, 15, '0000-00-00 00:00:00'),
(194, 16, 13, '0000-00-00 00:00:00'),
(195, 16, 9, '0000-00-00 00:00:00'),
(196, 16, 3, '0000-00-00 00:00:00'),
(197, 16, 4, '0000-00-00 00:00:00'),
(198, 16, 5, '0000-00-00 00:00:00'),
(199, 16, 1, '0000-00-00 00:00:00'),
(200, 16, 19, '0000-00-00 00:00:00'),
(201, 16, 2, '0000-00-00 00:00:00'),
(202, 16, 20, '0000-00-00 00:00:00'),
(203, 16, 6, '0000-00-00 00:00:00'),
(204, 16, 10, '0000-00-00 00:00:00'),
(205, 16, 18, '0000-00-00 00:00:00'),
(206, 16, 11, '0000-00-00 00:00:00'),
(207, 17, 20, '0000-00-00 00:00:00'),
(208, 17, 3, '0000-00-00 00:00:00'),
(209, 17, 7, '0000-00-00 00:00:00'),
(210, 17, 4, '0000-00-00 00:00:00'),
(211, 17, 14, '0000-00-00 00:00:00'),
(212, 17, 19, '0000-00-00 00:00:00'),
(213, 17, 15, '0000-00-00 00:00:00'),
(214, 17, 1, '0000-00-00 00:00:00'),
(215, 17, 6, '0000-00-00 00:00:00'),
(216, 17, 18, '0000-00-00 00:00:00'),
(217, 17, 8, '0000-00-00 00:00:00'),
(218, 17, 11, '0000-00-00 00:00:00'),
(219, 17, 16, '0000-00-00 00:00:00'),
(220, 17, 10, '0000-00-00 00:00:00'),
(221, 17, 12, '0000-00-00 00:00:00'),
(222, 17, 13, '0000-00-00 00:00:00'),
(223, 18, 8, '0000-00-00 00:00:00'),
(224, 18, 1, '0000-00-00 00:00:00'),
(225, 18, 10, '0000-00-00 00:00:00'),
(226, 18, 16, '0000-00-00 00:00:00'),
(227, 18, 6, '0000-00-00 00:00:00'),
(228, 18, 19, '0000-00-00 00:00:00'),
(229, 18, 18, '0000-00-00 00:00:00'),
(230, 18, 5, '0000-00-00 00:00:00'),
(231, 18, 9, '0000-00-00 00:00:00'),
(232, 18, 11, '0000-00-00 00:00:00'),
(233, 18, 17, '0000-00-00 00:00:00'),
(234, 18, 13, '0000-00-00 00:00:00'),
(235, 18, 4, '0000-00-00 00:00:00'),
(236, 18, 7, '0000-00-00 00:00:00'),
(237, 19, 9, '0000-00-00 00:00:00'),
(238, 19, 14, '0000-00-00 00:00:00'),
(239, 19, 2, '0000-00-00 00:00:00'),
(240, 19, 20, '0000-00-00 00:00:00'),
(241, 19, 10, '0000-00-00 00:00:00'),
(242, 19, 1, '0000-00-00 00:00:00'),
(243, 19, 7, '0000-00-00 00:00:00'),
(244, 19, 13, '0000-00-00 00:00:00'),
(245, 19, 19, '0000-00-00 00:00:00'),
(246, 19, 16, '0000-00-00 00:00:00'),
(247, 19, 6, '0000-00-00 00:00:00'),
(248, 19, 4, '0000-00-00 00:00:00'),
(249, 19, 5, '0000-00-00 00:00:00'),
(250, 19, 18, '0000-00-00 00:00:00'),
(251, 19, 3, '0000-00-00 00:00:00'),
(252, 19, 8, '0000-00-00 00:00:00'),
(253, 19, 11, '0000-00-00 00:00:00'),
(254, 19, 17, '0000-00-00 00:00:00'),
(255, 20, 18, '0000-00-00 00:00:00'),
(256, 20, 19, '0000-00-00 00:00:00'),
(257, 20, 16, '0000-00-00 00:00:00'),
(258, 20, 15, '0000-00-00 00:00:00'),
(259, 20, 6, '0000-00-00 00:00:00'),
(260, 20, 9, '0000-00-00 00:00:00'),
(261, 20, 11, '0000-00-00 00:00:00'),
(262, 20, 2, '0000-00-00 00:00:00'),
(263, 20, 10, '0000-00-00 00:00:00'),
(264, 20, 1, '0000-00-00 00:00:00'),
(265, 20, 17, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL COMMENT '門市id',
  `store_name` varchar(255) NOT NULL COMMENT '門市名稱',
  `store_latitude` varchar(255) NOT NULL COMMENT '門市緯度',
  `store_longtitude` varchar(255) NOT NULL COMMENT '門市經度',
  `store_city_id` int(11) NOT NULL COMMENT '縣市id',
  `store_city` varchar(255) NOT NULL COMMENT '門市所在城市',
  `store_area_id` int(11) NOT NULL COMMENT '行政區域id',
  `store_area` varchar(255) NOT NULL COMMENT '門市所在區域',
  `store_address` varchar(255) NOT NULL COMMENT '門市地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='門市';

--
-- 傾印資料表的資料 `store`
--

INSERT INTO `store` (`store_id`, `store_name`, `store_latitude`, `store_longtitude`, `store_city_id`, `store_city`, `store_area_id`, `store_area`, `store_address`) VALUES
(1, '上弘', '121.548287', '25.05639', 1, '台北市', 1, '松山區', '台北市松山區敦化北路168號B2'),
(2, '小巨蛋', '121.549433', '25.050944', 1, '台北市', 1, '松山區', '台北市松山區南京東路四段2號1樓'),
(3, '中崙', '121.552737', '25.048396', 1, '台北市', 1, '松山區', '台北市松山區八德路三段27號'),
(4, '北體', '121.55285', '25.050888', 1, '台北市', 1, '松山區', '台北市松山區北寧路66號'),
(5, '台場', '121.551158', '25.048086', 1, '台北市', 1, '松山區', '台北市松山區八德路三段20-2號'),
(6, '市大', '121.548085', '25.045127', 1, '台北市', 1, '松山區', '台北市松山區市民大道路四段105號'),
(7, '民有', '121.544998', '25.061936', 1, '台北市', 1, '松山區', '台北市松山區民權東路三段108號'),
(8, '民復', '121.555146', '25.058106', 1, '台北市', 1, '松山區', '台北市松山區民生東路四段130號'),
(9, '吉仁', '121.553689', '25.04607', 1, '台北市', 1, '松山區', '台北市松山區延吉街27-1號1樓'),
(10, '吉盛', '121.560964', '25.050941', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段66巷3弄1號1樓'),
(11, '吉祥', '121.562671', '25.050398', 1, '台北市', 1, '松山區', '台北市松山區八德路四段245巷52弄31號'),
(12, '京育', '121.554017', '25.051417', 1, '台北市', 1, '松山區', '台北市松山區南京東路四段66號寧安街68巷25號'),
(13, '京佳', '121.564605', '25.051596', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段229號231號1樓'),
(14, '京東', '121.558747', '25.051325', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段16號1樓'),
(15, '京城', '121.553565', '25.051819', 1, '台北市', 1, '松山區', '台北市松山區南京東路四段75之2號1樓'),
(16, '京復', '121.559468', '25.049671', 1, '台北市', 1, '松山區', '台北市松山區光復北路11巷44號'),
(17, '京發', '121.561618', '25.051768', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段139之4及139之8號'),
(18, '京運', '121.544998', '25.051628', 1, '台北市', 1, '松山區', '台北市松山區南京東路三段262號1樓'),
(19, '京寶', '121.566061', '25.051836', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段291巷4之1號4之2號'),
(20, '延新', '121.566252', '25.057296', 1, '台北市', 1, '松山區', '台北市松山區延壽街99號1樓'),
(21, '延壽', '121.556423', '25.056236', 1, '台北市', 1, '松山區', '台北市松山區延壽街422號'),
(22, '征東', '121.565903', '25.058555', 1, '台北市', 1, '松山區', '台北市松山區新東街15巷1號'),
(23, '征唐', '121.565542', '25.060341', 1, '台北市', 1, '松山區', '台北市松山區新東街41-7號'),
(24, '明塑', '121.550862', '25.057384', 1, '台北市', 1, '松山區', '台北市松山區民生東路四段54號之2一樓'),
(25, '東光', '121.55792', '25.051891', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段15號1樓'),
(26, '東吉', '121.560308', '25.058524', 1, '台北市', 1, '松山區', '台北市松山區民生東路五段100號'),
(27, '東復', '121.546337', '25.059074', 1, '台北市', 1, '松山區', '台北市松山區復興北路313巷25號'),
(28, '東勢', '121.555007', '25.052598', 1, '台北市', 1, '松山區', '台北市松山區南京東路四段133巷6弄1號'),
(29, '東榮', '121.558171', '25.058645', 1, '台北市', 1, '松山區', '台北市松山區民生東路五段65號'),
(30, '東鑫', '121.550472', '25.058359', 1, '台北市', 1, '松山區', '台北市松山區民生東路四段55巷10號'),
(31, '松民', '121.56388', '25.052392', 1, '台北市', 1, '松山區', '台北市松山區三民路10號'),
(32, '松禾', '121.571303', '25.050878', 1, '台北市', 1, '松山區', '台北市松山區塔悠路31號33號'),
(33, '松祐', '121.574057', '25.050325', 1, '台北市', 1, '松山區', '台北市松山區饒河街90號1樓'),
(34, '松航', '121.551514', '25.063718', 1, '台北市', 1, '松山區', '台北市松山區敦化北路340-9號'),
(35, '松德', '121.577548', '25.050645', 1, '台北市', 1, '松山區', '台北市松山區八德路四段755號1樓'),
(36, '松慶', '121.54463', '25.052768', 1, '台北市', 1, '松山區', '台北市松山區慶城街1號1樓'),
(37, '松機', '121.549644', '25.063818', 1, '台北市', 1, '松山區', '台北市松山區敦化北路340之10號1樓'),
(38, '松饒', '121.578011', '25.051083', 1, '台北市', 1, '松山區', '台北市松山區慈祐里八德路四段767號769號'),
(39, '松觀', '121.550332', '25.063732', 1, '台北市', 1, '松山區', '台北市松山區敦化北路340之10號3樓'),
(40, '松鑽', '121.576641', '25.049883', 1, '台北市', 1, '松山區', '台北市松山區八德路四段686號'),
(41, '長塑', '121.550051', '25.055525', 1, '台北市', 1, '松山區', '台北市松山區敦化北路199巷2弄9號1樓'),
(42, '南京', '121.546691', '25.052477', 1, '台北市', 1, '松山區', '台北市松山區南京東路三段303巷5號'),
(43, '威京', '121.562569', '25.04878', 1, '台北市', 1, '松山區', '台北市松山區八德路四段151號'),
(44, '風復', '121.544062', '25.045677', 1, '台北市', 1, '松山區', '台北市松山區復興南路一段43號'),
(45, '庫德', '121.546062', '25.047815', 1, '台北市', 1, '松山區', '台北市松山區八德路二段366巷7號1樓'),
(46, '健一', '121.552453', '25.053224', 1, '台北市', 1, '松山區', '台北市松山區健康路11號'),
(47, '婦聯', '121.56108', '25.053926', 1, '台北市', 1, '松山區', '台北市松山區健康路224號'),
(48, '清愿', '121.546946', '25.048327', 1, '台北市', 1, '松山區', '台北市松山區八德路二段439號'),
(49, '統威', '121.5655', '25.050205', 1, '台北市', 1, '松山區', '台北市松山區東興路13-1號1樓15巷3號1樓'),
(50, '通盈', '121.566819', '25.05165', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段315號'),
(51, '復旦', '121.549139', '25.047157', 1, '台北市', 1, '松山區', '台北市松山區敦化南路一段5號'),
(52, '復安', '121.545906', '25.056578', 1, '台北市', 1, '松山區', '台北市松山區民生東路三段130巷2之1號1樓'),
(53, '復春', '121.544337', '25.054422', 1, '台北市', 1, '松山區', '台北市松山區復興北路179號'),
(54, '復星', '121.544235', '25.048468', 1, '台北市', 1, '松山區', '台北市松山區復興北路15-6號1樓'),
(55, '復惠', '121.544487', '25.059896', 1, '台北市', 1, '松山區', '台北市松山區復興北路335號1樓'),
(56, '敦化', '121.547919', '25.061025', 1, '台北市', 1, '松山區', '台北市松山區民權東路三段160巷9號1樓'),
(57, '敦北', '121.549585', '25.054074', 1, '台北市', 1, '松山區', '台北市松山區敦化北路149號1樓'),
(58, '敦巨', '121.550597', '25.05196', 1, '台北市', 1, '松山區', '台北市松山區南京東路四段25號25之1號'),
(59, '朝福', '121.563263', '25.058078', 1, '台北市', 1, '松山區', '台北市松山區三民路115號'),
(60, '塔優', '121.568049', '25.059856', 1, '台北市', 1, '松山區', '台北市松山區撫遠街197號199號'),
(61, '新育商', '121.554982', '25.049098', 1, '台北市', 1, '松山區', '台北市松山區寧安街3巷11號1樓'),
(62, '新復勢', '121.556434', '25.047914', 1, '台北市', 1, '松山區', '台北市松山區八德路三段200號202號1樓'),
(63, '新寶清', '121.568688', '25.051089', 1, '台北市', 1, '松山區', '台北市松山區南京東路五段334號336號1樓'),
(64, '新饒河', '121.576534', '25.050408', 1, '台北市', 1, '松山區', '台北市松山區八德路四段697號1樓'),
(65, '福源', '121.566068', '25.06211', 1, '台北市', 1, '松山區', '台北市松山區新東街60巷16號18號1樓'),
(66, '影城', '121.564343', '25.050443', 1, '台北市', 1, '松山區', '台北市松山區八德路四段245巷35號'),
(67, '德育', '121.55554', '25.048158', 1, '台北市', 1, '松山區', '台北市松山區八德路三段171號173號1樓'),
(68, '樂得', '121.544193', '25.050146', 1, '台北市', 1, '松山區', '台北市松山區復興北路35號'),
(69, '錢京', '121.548322', '25.052738', 1, '台北市', 1, '松山區', '台北市松山區敦化北路100號1樓'),
(70, '聰明', '121.567732', '25.052698', 1, '台北市', 1, '松山區', '台北市松山區寶清街34號1樓'),
(71, '寶德', '121.566344', '25.049187', 1, '台北市', 1, '松山區', '台北市松山區八德路四段295號297號1樓'),
(72, '鑫壽', '121.560524', '25.056714', 1, '台北市', 1, '松山區', '台北市松山區延壽街323號'),
(73, '一零一', '121.565077', '25.033373', 1, '台北市', 2, '信義區', '台北市信義區信義路五段7號35樓'),
(74, '三興', '121.561392', '25.029185', 1, '台北市', 2, '信義區', '台北市信義區吳興街156巷2弄2號4號1樓'),
(75, '中興', '121.558791', '25.031971', 1, '台北市', 2, '信義區', '台北市信義區基隆路二段22號'),
(76, '仁和', '121.558423', '25.036561', 1, '台北市', 2, '信義區', '台北市信義區正和里光復南路419巷41號'),
(77, '仁信', '121.568002', '25.033642', 1, '台北市', 2, '信義區', '台北市信義區松仁路130號'),
(78, '世貿', '121.562325', '25.033867', 1, '台北市', 2, '信義區', '台北市信義區信義路五段5號1樓'),
(79, '世貿二', '121.562325', '25.033867', 1, '台北市', 2, '信義區', '台北市信義區信義路五段5號2樓'),
(80, '北府', '121.568193', '25.028461', 1, '台北市', 2, '信義區', '台北市信義區松仁路162號164號1樓'),
(81, '北醫', '121.563533', '25.027177', 1, '台北市', 2, '信義區', '台北市信義區吳興街252號'),
(82, '北醫大', '121.562224', '25.026986', 1, '台北市', 2, '信義區', '台北市信義區吳興街250號1樓'),
(83, '市捷', '121.565136', '25.040914', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段6號1樓'),
(84, '市運', '121.564747', '25.040833', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路5段2號'),
(85, '必成', '121.564947', '25.042566', 1, '台北市', 2, '信義區', '台北市信義區基隆路一段178號180號1樓'),
(86, '永吉', '121.573994', '25.045709', 1, '台北市', 2, '信義區', '台北市信義區永吉路217號1樓2樓及219號1樓'),
(87, '永信', '121.568836', '25.043534', 1, '台北市', 2, '信義區', '台北市信義區永吉路30巷103號'),
(88, '光東', '121.579504', '25.041152', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段524巷1弄1號'),
(89, '光復', '121.557644', '25.033679', 1, '台北市', 2, '信義區', '台北市信義區光復南路471號'),
(90, '吳興', '121.563441', '25.024536', 1, '台北市', 2, '信義區', '台北市信義區吳興街284巷18弄2號'),
(91, '宏泰', '121.568655', '25.036845', 1, '台北市', 2, '信義區', '台北市信義區松仁路91-1號1樓'),
(92, '忠林', '121.576851', '25.040657', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段470號1樓'),
(93, '忠隆', '121.567225', '25.041718', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段71巷6號1樓'),
(94, '昌隆', '121.55673', '25.028011', 1, '台北市', 2, '信義區', '台北市信義區基隆路二段131-4號'),
(95, '東暉', '121.562485', '25.040821', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路四段514號'),
(96, '松山', '121.574124', '25.040764', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段386號'),
(97, '松仁', '121.568407', '25.026747', 1, '台北市', 2, '信義區', '台北市信義區松仁路213號'),
(98, '松信', '121.571913', '25.04377', 1, '台北市', 2, '信義區', '台北市信義區松信路148號1樓'),
(99, '松茂', '121.577914', '25.049192', 1, '台北市', 2, '信義區', '台北市信義區松山路11號B1樓'),
(100, '松家', '121.578498', '25.035809', 1, '台北市', 2, '信義區', '台北市信義區松山路608號610號'),
(101, '松高', '121.565843', '25.043212', 1, '台北市', 2, '信義區', '台北市信義區基隆路一段141號1樓'),
(102, '松捷', '121.565135', '25.041321', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段1之6號'),
(103, '松智', '121.564814', '25.029133', 1, '台北市', 2, '信義區', '台北市信義區莊敬路325巷43號'),
(104, '松義', '121.574648', '25.032912', 1, '台北市', 2, '信義區', '台北市信義區松德路271號'),
(105, '松錢', '121.572378', '25.046844', 1, '台北市', 2, '信義區', '台北市信義區松隆路192號194號1樓'),
(106, '松聯', '121.563762', '25.042721', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路四段559巷24號1樓'),
(107, '松鐵', '121.577914', '25.049192', 1, '台北市', 2, '信義區', '台北市信義區松山路11號B1樓'),
(108, '信吉', '121.57405', '25.043477', 1, '台北市', 2, '信義區', '台北市信義區永吉路278巷58弄2號'),
(109, '信林', '121.577097', '25.037269', 1, '台北市', 2, '信義區', '台北市信義區虎林街222巷7號9號1樓'),
(110, '信富', '121.559153', '25.028207', 1, '台北市', 2, '信義區', '台北市信義區吳興街156巷63號63之1號'),
(111, '信運', '121.566679', '25.031868', 1, '台北市', 2, '信義區', '台北市信義區松勤街100號1樓'),
(112, '信嘉', '121.557473', '25.026175', 1, '台北市', 2, '信義區', '台北市信義區嘉興街181巷21號'),
(113, '信福', '121.587454', '25.039333', 1, '台北市', 2, '信義區', '台北市信義區福德街308號310巷1號'),
(114, '信遠', '121.567968', '25.036732', 1, '台北市', 2, '信義區', '台北市信義區松仁路58號B2樓'),
(115, '信德', '121.573592', '25.034775', 1, '台北市', 2, '信義區', '台北市信義區松德路200巷10號'),
(116, '信醫', '121.566349', '25.025814', 1, '台北市', 2, '信義區', '台北市信義區吳興街346號348號'),
(117, '後山埤', '121.581014', '25.044634', 1, '台北市', 2, '信義區', '台北市信義區中坡北路11號1樓'),
(118, '春光', '121.581582', '25.042601', 1, '台北市', 2, '信義區', '台北市信義區大道路9號11號1樓'),
(119, '革新', '121.568906', '25.045547', 1, '台北市', 2, '信義區', '台北市信義區永吉路32號34號'),
(120, '留公', '121.585893', '25.038729', 1, '台北市', 2, '信義區', '台北市信義區福德街247號249號'),
(121, '國貿', '121.560995', '25.034597', 1, '台北市', 2, '信義區', '台北市信義區基隆路一段333號B3'),
(122, '崇德', '121.555603', '25.024081', 1, '台北市', 2, '信義區', '台北市信義區崇德街104號106號1樓'),
(123, '崧站', '121.579317', '25.048426', 1, '台北市', 2, '信義區', '台北市信義區松隆路329巷4號'),
(124, '捷忠', '121.579105', '25.04161', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段617號'),
(125, '統誠', '121.565831', '25.039373', 1, '台北市', 2, '信義區', '台北市信義區松高路11號B2樓'),
(126, '凱悅', '121.560031', '25.034285', 1, '台北市', 2, '信義區', '台北市信義區基隆路一段398號1樓'),
(127, '喬治', '121.554413', '25.025802', 1, '台北市', 2, '信義區', '台北市信義區基隆路二段155號1樓'),
(128, '富比世', '121.569424', '25.024493', 1, '台北市', 2, '信義區', '台北市信義區松仁路246號248號1樓'),
(129, '惠安', '121.56893', '25.022205', 1, '台北市', 2, '信義區', '台北市信義區惠安里吳興街520號'),
(130, '敦厚', '121.568675', '25.04208', 1, '台北市', 2, '信義區', '台北市信義區永吉路30巷168弄1號1樓'),
(131, '萊福', '121.579442', '25.038253', 1, '台北市', 2, '信義區', '台北市信義區林口街48號'),
(132, '開源', '121.577578', '25.04727', 1, '台北市', 2, '信義區', '台北市信義區松山路136號138號'),
(133, '微風南山', '121.565774', '25.034435', 1, '台北市', 2, '信義區', '台北市信義區松智路17號B2樓'),
(134, '新三連', '121.563129', '25.040552', 1, '台北市', 2, '信義區', '台北市信義區逸仙路42巷25號1樓'),
(135, '新工農', '121.571738', '25.040158', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段236巷6-3號8號1樓'),
(136, '新光', '121.566793', '25.038664', 1, '台北市', 2, '信義區', '台北市信義區松高路12號B1樓'),
(137, '新東宮', '121.578039', '25.039884', 1, '台北市', 2, '信義區', '台北市信義區松山路455號'),
(138, '道生', '121.566457', '25.047321', 1, '台北市', 2, '信義區', '台北市信義區新仁里東興路57號'),
(139, '嘉馥', '121.57563', '25.034526', 1, '台北市', 2, '信義區', '台北市信義區信義路六段21號23號1樓'),
(140, '福中', '121.583328', '25.037658', 1, '台北市', 2, '信義區', '台北市信義區福德街159號161號1樓'),
(141, '廣慈', '121.583143', '25.039636', 1, '台北市', 2, '信義區', '台北市信義區大道路115號117號1樓'),
(142, '德鄰', '121.575297', '25.03752', 1, '台北市', 2, '信義區', '台北市信義區松德路127號129號1樓'),
(143, '慶林', '121.57669', '25.039499', 1, '台北市', 2, '信義區', '台北市信義區虎林街151號153號1樓'),
(144, '興貿', '121.561036', '25.031145', 1, '台北市', 2, '信義區', '台北市信義區景新里莊敬路178巷2號'),
(145, '總站', '121.569502', '25.023487', 1, '台北市', 2, '信義區', '台北市信義區吳興街486號488號1樓'),
(146, '總部', '121.566697', '25.047029', 1, '台北市', 2, '信義區', '台北市信義區東興路67號1樓'),
(147, '聯合', '121.563667', '25.041836', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路四段559巷6號'),
(148, '醫學', '121.563816', '25.027156', 1, '台北市', 2, '信義區', '台北市信義區吳興街257號259號'),
(149, '麟運', '121.558867', '25.018663', 1, '台北市', 2, '信義區', '台北市信義區和平東路三段461號461之1號1樓'),
(150, '鑫吉', '121.577138', '25.04479', 1, '台北市', 2, '信義區', '台北市信義區虎林街85號'),
(151, '鑫國泰', '121.566811', '25.040167', 1, '台北市', 2, '信義區', '台北市信義區忠孝東路五段68號24樓'),
(152, '大台', '121.532554', '25.017604', 1, '台北市', 3, '大安區', '台北市大安區羅斯福路三段333巷18號1樓20號1樓(部分)'),
(153, '大信', '121.534563', '25.033718', 1, '台北市', 3, '大安區', '台北市大安區信義路三段33號'),
(154, '大敦', '121.549556', '25.031191', 1, '台北市', 3, '大安區', '台北市大安區敦化南路二段63巷7號1樓'),
(155, '中廣', '121.534331', '25.038516', 1, '台北市', 3, '大安區', '台北市大安區仁愛路三段25-1號27號'),
(156, '仁安', '121.545243', '25.038646', 1, '台北市', 3, '大安區', '台北市大安區仁愛路四段27巷1號'),
(157, '仕吉', '121.553109', '25.043523', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段223巷42號'),
(158, '台科一', '121.542764', '25.013953', 1, '台北市', 3, '大安區', '台北市大安區基隆路四段43號1樓'),
(159, '永康', '121.529595', '25.030427', 1, '台北市', 3, '大安區', '台北市大安區永康街43號'),
(160, '禾光', '121.538616', '25.02565', 1, '台北市', 3, '大安區', '台北市大安區和平東路二段63號1樓'),
(161, '立仁', '121.551574', '25.030018', 1, '台北市', 3, '大安區', '台北市大安區安和路二段74巷1號'),
(162, '光忠', '121.54443', '25.043722', 1, '台北市', 3, '大安區', '台北市大安區復興南路一段107巷5弄1號1樓'),
(163, '吉孝', '121.555337', '25.041598', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段299號'),
(164, '吉忠', '121.554192', '25.042522', 1, '台北市', 3, '大安區', '台北市大安區延吉街72號'),
(165, '合旺', '121.545411', '25.028362', 1, '台北市', 3, '大安區', '台北市大安區復興南路二段151巷41號'),
(166, '合維', '121.547625', '25.028195', 1, '台北市', 3, '大安區', '台北市大安區四維路170巷8號1樓'),
(167, '安居', '121.554426', '25.020451', 1, '台北市', 3, '大安區', '台北市大安區安居街33號'),
(168, '安松', '121.542452', '25.042924', 1, '台北市', 3, '大安區', '台北市大安區安東街50之2號50之3號50之4號'),
(169, '佑安', '121.539647', '25.042414', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路三段217巷1弄2號'),
(170, '技安', '121.550779', '25.024613', 1, '台北市', 3, '大安區', '台北市大安區和平東路三段97號97之1號1樓'),
(171, '辛亥', '121.537167', '25.023057', 1, '台北市', 3, '大安區', '台北市大安區辛亥路二段57號'),
(172, '卓聯', '121.537918', '25.014683', 1, '台北市', 3, '大安區', '台北市大安區羅斯福路四段1號1樓卓聯大樓'),
(173, '和平東', '121.529414', '25.026717', 1, '台北市', 3, '大安區', '台北市大安區和平東路一段129之1號'),
(174, '和安', '121.554624', '25.02222', 1, '台北市', 3, '大安區', '台北市大安區和平東路三段230號'),
(175, '和金', '121.525706', '25.026918', 1, '台北市', 3, '大安區', '台北市大安區和平東路一段91號'),
(176, '和泰', '121.531704', '25.026457', 1, '台北市', 3, '大安區', '台北市大安區和平東路一段169號'),
(177, '和樂', '121.553285', '25.02064', 1, '台北市', 3, '大安區', '台北市大安區和平東路三段228巷45號1樓'),
(178, '延吉', '121.555705', '25.036636', 1, '台北市', 3, '大安區', '台北市大安區延吉街237號'),
(179, '昇隆', '121.548273', '25.021004', 1, '台北市', 3, '大安區', '台北市大安區敦化南路二段238號'),
(180, '東門', '121.530331', '25.033052', 1, '台北市', 3, '大安區', '台北市大安區信義路二段198巷6號1樓'),
(181, '欣安和', '121.551057', '25.038687', 1, '台北市', 3, '大安區', '台北市大安區安和路一段47號'),
(182, '欣隆昌', '121.556496', '25.028386', 1, '台北市', 3, '大安區', '台北市大安區基隆路二段142之1號及142之2號'),
(183, '花市', '121.537272', '25.036371', 1, '台北市', 3, '大安區', '台北市大安區建國南路一段274號'),
(184, '金信', '121.52694', '25.033281', 1, '台北市', 3, '大安區', '台北市大安區金山南路二段18號1樓'),
(185, '金華', '121.528325', '25.029811', 1, '台北市', 3, '大安區', '台北市大安區金華街140號1樓'),
(186, '長星', '121.54534', '25.01781', 1, '台北市', 3, '大安區', '台北市大安區基隆路三段85號'),
(187, '阿波羅', '121.553588', '25.041212', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段222號224號1樓'),
(188, '信中', '121.538664', '25.03365', 1, '台北市', 3, '大安區', '台北市大安區信義路三段101號'),
(189, '信安', '121.54589', '25.034291', 1, '台北市', 3, '大安區', '台北市大安區大安路一段218號'),
(190, '信義', '121.554413', '25.034224', 1, '台北市', 3, '大安區', '台北市大安區信義路四段265巷12弄1號'),
(191, '信興', '121.544676', '25.033141', 1, '台北市', 3, '大安區', '台北市大安區信義路四段32號'),
(192, '建安', '121.550671', '25.042638', 1, '台北市', 3, '大安區', '台北市大安區敦化南路一段187巷29號'),
(193, '建忠', '121.541434', '25.041794', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路三段249號'),
(194, '建南', '121.5384', '25.028706', 1, '台北市', 3, '大安區', '台北市大安區建國南路二段151巷6之8號'),
(195, '建綸', '121.551972', '25.040086', 1, '台北市', 3, '大安區', '台北市大安區仁愛路四段151巷33號忠孝東路四段216巷32弄19號21號'),
(196, '恆安', '121.529184', '25.033201', 1, '台北市', 3, '大安區', '台北市大安區永康街2巷12號1樓'),
(197, '科技站', '121.543666', '25.026283', 1, '台北市', 3, '大安區', '台北市大安區復興南路二段203號'),
(198, '科建', '121.536228', '25.044269', 1, '台北市', 3, '大安區', '台北市大安區建國南路一段28號30號'),
(199, '科興', '121.54388', '25.025634', 1, '台北市', 3, '大安區', '台北市大安區復興南路二段271巷2號1樓'),
(200, '師大', '121.528471', '25.023193', 1, '台北市', 3, '大安區', '台北市大安區師大路87號'),
(201, '泰利', '121.554234', '25.036558', 1, '台北市', 3, '大安區', '台北市大安區仁愛路四段266巷15弄22號'),
(202, '國館', '121.556366', '25.040571', 1, '台北市', 3, '大安區', '台北市大安區光復南路240巷25號'),
(203, '崇光', '121.54454', '25.042696', 1, '台北市', 3, '大安區', '台北市大安區復興南路一段135巷5號'),
(204, '康福', '121.529472', '25.031553', 1, '台北市', 3, '大安區', '台北市大安區永康街12之2號1樓'),
(205, '教育大學', '121.546479', '25.023345', 1, '台北市', 3, '大安區', '台北市大安區敦南街38號'),
(206, '統合', '121.55134', '25.042191', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段181巷7弄11之1號11之2號'),
(207, '統家', '121.553361', '25.039938', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段216巷27弄1號1樓'),
(208, '統領', '121.552245', '25.042254', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段205巷7弄5號1樓'),
(209, '通化', '121.554216', '25.031426', 1, '台北市', 3, '大安區', '台北市大安區通化街26之8號'),
(210, '頂好', '121.547229', '25.038255', 1, '台北市', 3, '大安區', '台北市大安區仁愛路四段79號1號'),
(211, '頂安', '121.546272', '25.042485', 1, '台北市', 3, '大安區', '台北市大安區大安路一段67號1樓'),
(212, '頂東', '121.546255', '25.043521', 1, '台北市', 3, '大安區', '台北市大安區大安路一段43號'),
(213, '喜悅', '121.543243', '25.030944', 1, '台北市', 3, '大安區', '台北市大安區復興南路二段82-1及82-2號'),
(214, '富陽', '121.556246', '25.020682', 1, '台北市', 3, '大安區', '台北市大安區和平東路三段298號300號1樓'),
(215, '復忠', '121.557517', '25.044105', 1, '台北市', 3, '大安區', '台北市大安區光復南路98之3號98之5號'),
(216, '復昌', '121.557335', '25.032264', 1, '台北市', 3, '大安區', '台北市大安區通化里光復南路616號'),
(217, '復維', '121.543897', '25.032399', 1, '台北市', 3, '大安區', '台北市大安區復興南路二段17號'),
(218, '敦仁', '121.549792', '25.041252', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段148號部份'),
(219, '敦禾', '121.549574', '25.025447', 1, '台北市', 3, '大安區', '台北市大安區敦化南路二段265巷6號1樓'),
(220, '敦安', '121.552397', '25.0347', 1, '台北市', 3, '大安區', '台北市大安區安和路一段86號'),
(221, '敦信', '121.550178', '25.034565', 1, '台北市', 3, '大安區', '台北市大安區仁愛路四段122巷50號1樓'),
(222, '敦南', '121.547216', '25.040605', 1, '台北市', 3, '大安區', '台北市大安區敦化南路一段236巷13號'),
(223, '敦頂', '121.548128', '25.04213', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段101巷7號'),
(224, '敦隆', '121.548327', '25.023666', 1, '台北市', 3, '大安區', '台北市大安區敦化南路二段182號'),
(225, '敦維', '121.546674', '25.036237', 1, '台北市', 3, '大安區', '台北市大安區東豐街43號45號1樓'),
(226, '敦親', '121.540983', '25.022127', 1, '台北市', 3, '大安區', '台北市大安區辛亥路二段171巷8號'),
(227, '森美', '121.536633', '25.033724', 1, '台北市', 3, '大安區', '台北市大安區信義路三段65號1樓'),
(228, '華電', '121.553541', '25.027566', 1, '台北市', 3, '大安區', '台北市大安區通化街177號'),
(229, '愛國', '121.527296', '25.031752', 1, '台北市', 3, '大安區', '台北市大安區愛國東路75號'),
(230, '新北科', '121.535602', '25.043441', 1, '台北市', 3, '大安區', '台北市大安區新生南路一段3號B1樓'),
(231, '新東帝', '121.549751', '25.028694', 1, '台北市', 3, '大安區', '台北市大安區敦化南路二段99號1樓'),
(232, '新泰順', '121.531544', '25.025102', 1, '台北市', 3, '大安區', '台北市大安區泰順街13號'),
(233, '新國聯', '121.556961', '25.042381', 1, '台北市', 3, '大安區', '台北市大安區光復南路180巷12號'),
(234, '溫州', '121.529996', '25.019418', 1, '台北市', 3, '大安區', '台北市大安區羅斯福路三段245號'),
(235, '溫東', '121.533606', '25.026015', 1, '台北市', 3, '大安區', '台北市大安區和平東路一段266號'),
(236, '瑞升', '121.522046', '25.028588', 1, '台北市', 3, '大安區', '台北市大安區杭州南路二段91號'),
(237, '瑞安', '121.541056', '25.028544', 1, '台北市', 3, '大安區', '台北市大安區瑞安街182號'),
(238, '義村', '121.538224', '25.041525', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路三段160號'),
(239, '誠安', '121.550039', '25.038776', 1, '台北市', 3, '大安區', '台北市大安區敦化南路一段247巷12號1樓'),
(240, '福亭', '121.522134', '25.02786', 1, '台北市', 3, '大安區', '台北市大安區羅斯福路二段31號1樓'),
(241, '鳳翔', '121.552885', '25.038084', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段216巷68號'),
(242, '樂安', '121.550849', '25.02197', 1, '台北市', 3, '大安區', '台北市大安區樂業街71號73號'),
(243, '樂利', '121.551834', '25.025776', 1, '台北市', 3, '大安區', '台北市大安區樂利路76號78號1樓'),
(244, '樂和', '121.551507', '25.02742', 1, '台北市', 3, '大安區', '台北市大安區樂利路29號29-1號'),
(245, '樂隆', '121.549609', '25.022687', 1, '台北市', 3, '大安區', '台北市大安區敦化南路二段331巷14號'),
(246, '黎元', '121.550932', '25.018066', 1, '台北市', 3, '大安區', '台北市大安區臥龍街188巷1號'),
(247, '豫銘', '121.545866', '25.030789', 1, '台北市', 3, '大安區', '台北市大安區大安路二段102號'),
(248, '錢忠', '121.544478', '25.041136', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段26巷5號'),
(249, '靜安', '121.557558', '25.040194', 1, '台北市', 3, '大安區', '台北市大安區光復南路262號'),
(250, '龍和', '121.542241', '25.025232', 1, '台北市', 3, '大安區', '台北市大安區和平東路二段197號199號1樓'),
(251, '龍延', '121.529356', '25.023917', 1, '台北市', 3, '大安區', '台北市大安區師大路59巷13號'),
(252, '龍門', '121.537149', '25.025481', 1, '台北市', 3, '大安區', '台北市大安區和平東路二段38之1號40號1樓'),
(253, '龍泉', '121.528125', '25.020982', 1, '台北市', 3, '大安區', '台北市大安區羅斯福路三段193號1樓'),
(254, '龍淵', '121.54291', '25.023523', 1, '台北市', 3, '大安區', '台北市大安區和平東路二段118巷33號'),
(255, '龍普', '121.55074', '25.04043', 1, '台北市', 3, '大安區', '台北市大安區敦化南路一段233巷25號'),
(256, '濟南', '121.533873', '25.040157', 1, '台北市', 3, '大安區', '台北市大安區濟南路三段12號1樓'),
(257, '臨江', '121.552532', '25.030523', 1, '台北市', 3, '大安區', '台北市大安區安和路二段67號'),
(258, '臨通', '121.553189', '25.030757', 1, '台北市', 3, '大安區', '台北市大安區通安街64號1樓'),
(259, '豐安', '121.544267', '25.036114', 1, '台北市', 3, '大安區', '台北市大安區東豐街9號'),
(260, '懷生', '121.541391', '25.041067', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路三段248巷9號'),
(261, '羅鑫', '121.525237', '25.023665', 1, '台北市', 3, '大安區', '台北市大安區羅斯福路三段29號31號1樓'),
(262, '麟光', '121.556997', '25.018364', 1, '台北市', 3, '大安區', '台北市大安區臥龍街252號及252-1號'),
(263, '鑫忠孝', '121.555898', '25.041614', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段313號1樓'),
(264, '鑫通', '121.554419', '25.032581', 1, '台北市', 3, '大安區', '台北市大安區信義路四段294巷7號1樓'),
(265, '鑫富民', '121.549773', '25.043896', 1, '台北市', 3, '大安區', '台北市大安區忠孝東路四段181巷40弄22號1樓'),
(266, '鑫復', '121.542313', '25.03328', 1, '台北市', 3, '大安區', '台北市大安區信義路三段178號1樓'),
(267, '大永', '121.55093', '25.080221', 1, '台北市', 4, '中山區', '台北市中山區明水路581巷15號1樓'),
(268, '大吉', '121.530257', '25.055797', 1, '台北市', 4, '中山區', '台北市中山區吉林路97號99號1樓'),
(269, '中福', '121.531669', '25.058067', 1, '台北市', 4, '中山區', '台北市中山區民生東路二段113號'),
(270, '中錦', '121.522757', '25.059861', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段98號'),
(271, '元大', '121.541925', '25.052637', 1, '台北市', 4, '中山區', '台北市中山區遼寧街110號1樓'),
(272, '六條通', '121.525672', '25.050372', 1, '台北市', 4, '中山區', '台北市中山區林森北路107巷15號1樓'),
(273, '天津', '121.523591', '25.051786', 1, '台北市', 4, '中山區', '台北市中山區天津街65號'),
(274, '民美', '121.523081', '25.068315', 1, '台北市', 4, '中山區', '台北市中山區圓山里中山北路三段57號'),
(275, '永明', '121.548833', '25.078255', 1, '台北市', 4, '中山區', '台北市中山區明水路397巷7弄25號1樓'),
(276, '永錦', '121.52212', '25.060414', 1, '台北市', 4, '中山區', '台北市中山區錦西街1號'),
(277, '伊東', '121.53466', '25.050953', 1, '台北市', 4, '中山區', '台北市中山區伊通街30號1樓'),
(278, '吉安', '121.5305', '25.064911', 1, '台北市', 4, '中山區', '台北市中山區吉林路365號367號農安街137號'),
(279, '吉林', '121.530377', '25.06028', 1, '台北市', 4, '中山區', '台北市中山區吉林路209號1樓2樓'),
(280, '吉鑫', '121.528463', '25.052263', 1, '台北市', 4, '中山區', '台北市中山區南京東路二段11號1樓'),
(281, '合江', '121.539056', '25.055827', 1, '台北市', 4, '中山區', '台北市中山區合江街60號'),
(282, '朱崙', '121.543772', '25.050044', 1, '台北市', 4, '中山區', '台北市中山區復興北路56號58號1樓'),
(283, '江東', '121.531752', '25.048693', 1, '台北市', 4, '中山區', '台北市中山區長安東路二段43號45-1號1樓'),
(284, '江陵', '121.531595', '25.053126', 1, '台北市', 4, '中山區', '台北市中山區一江街23號1樓'),
(285, '行天', '121.534818', '25.064566', 1, '台北市', 4, '中山區', '台北市中山區農安街178號180號'),
(286, '京山', '121.531864', '25.051856', 1, '台北市', 4, '中山區', '台北市中山區南京東路二段100號1樓'),
(287, '京江', '121.5389', '25.052136', 1, '台北市', 4, '中山區', '台北市中山區南京東路三段91之1號1樓'),
(288, '京典', '121.539493', '25.051757', 1, '台北市', 4, '中山區', '台北市中山區南京東路三段86號1樓'),
(289, '京旺', '121.526007', '25.051872', 1, '台北市', 4, '中山區', '台北市中山區南京東路一段92號1樓'),
(290, '京都', '121.525701', '25.059767', 1, '台北市', 4, '中山區', '台北市中山區林森北路411號'),
(291, '佳佳', '121.535927', '25.058118', 1, '台北市', 4, '中山區', '台北市中山區民生東路二段157號'),
(292, '明水', '121.551324', '25.082822', 1, '台北市', 4, '中山區', '台北市中山區明水路636號樂群三路1號'),
(293, '明美', '121.552562', '25.083555', 1, '台北市', 4, '中山區', '台北市中山區敬業一路130號1樓'),
(294, '東崙', '121.541676', '25.046915', 1, '台北市', 4, '中山區', '台北市中山區八德路二段282號'),
(295, '林北', '121.524673', '25.057908', 1, '台北市', 4, '中山區', '台北市中山區民生東路一段46號46-1號1樓'),
(296, '林安', '121.525596', '25.065', 1, '台北市', 4, '中山區', '台北市中山區林森北路572號'),
(297, '林森', '121.525518', '25.061745', 1, '台北市', 4, '中山區', '台北市中山區林森北路500號'),
(298, '林森北', '121.525399', '25.058585', 1, '台北市', 4, '中山區', '台北市中山區林森北路380之1號1樓'),
(299, '松京', '121.533969', '25.051835', 1, '台北市', 4, '中山區', '台北市中山區南京東路二段144號1樓'),
(300, '松怡', '121.534236', '25.062235', 1, '台北市', 4, '中山區', '台北市中山區民權東路二段146號1樓'),
(301, '松盛', '121.53364', '25.052614', 1, '台北市', 4, '中山區', '台北市中山區南京東路二段115巷1號'),
(302, '松運', '121.533228', '25.051235', 1, '台北市', 4, '中山區', '台北市中山區松江路101號'),
(303, '松錦', '121.533375', '25.061017', 1, '台北市', 4, '中山區', '台北市中山區松江路295號295-1號1樓'),
(304, '松鑫', '121.532967', '25.057829', 1, '台北市', 4, '中山區', '台北市中山區松江路208號'),
(305, '欣旺', '121.548932', '25.081976', 1, '台北市', 4, '中山區', '台北市中山區北安路606號'),
(306, '直安', '121.54919', '25.084047', 1, '台北市', 4, '中山區', '台北市中山區北安路649號'),
(307, '直福', '121.557939', '25.082521', 1, '台北市', 4, '中山區', '台北市中山區樂群三路218號1樓'),
(308, '金宴', '121.53809', '25.06181', 1, '台北市', 4, '中山區', '台北市中山區建國北路二段151巷8號1樓'),
(309, '金蓬', '121.519888', '25.063043', 1, '台北市', 4, '中山區', '台北市中山區民權西路73號1樓'),
(310, '金鑽', '121.519993', '25.062707', 1, '台北市', 4, '中山區', '台北市中山區民權西路66號'),
(311, '長中', '121.522468', '25.054554', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段40-1號'),
(312, '長北', '121.523677', '25.055064', 1, '台北市', 4, '中山區', '台北市中山區長春路11號'),
(313, '長松', '121.53315', '25.048989', 1, '台北市', 4, '中山區', '台北市中山區松江路65號'),
(314, '長城', '121.522566', '25.056417', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段56號1樓'),
(315, '長津', '121.522919', '25.04943', 1, '台北市', 4, '中山區', '台北市中山區長安東路一段12號'),
(316, '長通', '121.535112', '25.048533', 1, '台北市', 4, '中山區', '台北市中山區長安東路二段101號'),
(317, '長新', '121.528001', '25.048589', 1, '台北市', 4, '中山區', '台北市中山區長安東路一段75號1樓'),
(318, '威克', '121.543105', '25.051615', 1, '台北市', 4, '中山區', '台北市中山區南京東路三段208號1樓'),
(319, '建欣', '121.537309', '25.053828', 1, '台北市', 4, '中山區', '台北市中山區建國北路二段13號1樓'),
(320, '建錦', '121.537333', '25.060037', 1, '台北市', 4, '中山區', '台北市中山區建國北路二段127號1樓B1樓'),
(321, '建龍', '121.540944', '25.058208', 1, '台北市', 4, '中山區', '台北市中山區龍江路239號1樓'),
(322, '春城', '121.531351', '25.054931', 1, '台北市', 4, '中山區', '台北市中山區長春路135號135之1號'),
(323, '春森', '121.526506', '25.055017', 1, '台北市', 4, '中山區', '台北市中山區長春路67號'),
(324, '春龍', '121.540615', '25.054752', 1, '台北市', 4, '中山區', '台北市中山區長春路257號'),
(325, '柯鑫', '121.523404', '25.052824', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段11巷3號1樓'),
(326, '美麗華', '121.557303', '25.084665', 1, '台北市', 4, '中山區', '台北市中山區北安路839-1號'),
(327, '原中', '121.529088', '25.063256', 1, '台北市', 4, '中山區', '台北市中山區中原街121號1樓、新生北路三段3巷41號2樓'),
(328, '國京', '121.537779', '25.052399', 1, '台北市', 4, '中山區', '台北市中山區南京東路三段21號1樓'),
(329, '國旺', '121.527073', '25.051316', 1, '台北市', 4, '中山區', '台北市中山區南京東路一段132巷8號'),
(330, '國賓', '121.523053', '25.057286', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段71號1樓'),
(331, '國學', '121.53419', '25.0547', 1, '台北市', 4, '中山區', '台北市中山區長春路182號'),
(332, '基河', '121.559239', '25.079744', 1, '台北市', 4, '中山區', '台北市中山區樂群二路206號1樓'),
(333, '崑崙', '121.523298', '25.050779', 1, '台北市', 4, '中山區', '台北市中山區中山北路一段105巷13號'),
(334, '統佳', '121.533454', '25.058983', 1, '台北市', 4, '中山區', '台北市中山區松江路237號1樓'),
(335, '麥田', '121.522933', '25.066674', 1, '台北市', 4, '中山區', '台北市中山區晴光里中山北路三段47號'),
(336, '勝權', '121.528863', '25.062475', 1, '台北市', 4, '中山區', '台北市中山區民權東路二段26號'),
(337, '復北', '121.543829', '25.053385', 1, '台北市', 4, '中山區', '台北市中山區復興北路164號1樓'),
(338, '復錦', '121.543944', '25.059978', 1, '台北市', 4, '中山區', '台北市中山區復興北路348號1樓'),
(339, '晶華', '121.525348', '25.054597', 1, '台北市', 4, '中山區', '台北市中山區林森北路262號'),
(340, '晶鑽', '121.523512', '25.053931', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段39巷8號1樓'),
(341, '曾德', '121.525081', '25.060395', 1, '台北市', 4, '中山區', '台北市中山區錦州街21-2號'),
(342, '森北', '121.524912', '25.050914', 1, '台北市', 4, '中山區', '台北市中山區林森北路108號1樓2樓'),
(343, '森吉', '121.525603', '25.067269', 1, '台北市', 4, '中山區', '台北市中山區林森北路624號626號1樓'),
(344, '森泰', '121.525386', '25.057276', 1, '台北市', 4, '中山區', '台北市中山區林森北路358號360號'),
(345, '森華', '121.525892', '25.066041', 1, '台北市', 4, '中山區', '台北市中山區林森北路587號1樓'),
(346, '森鑽', '121.525012', '25.050136', 1, '台北市', 4, '中山區', '台北市中山區林森北路101號1樓'),
(347, '翔運', '121.522428', '25.055007', 1, '台北市', 4, '中山區', '台北市中山區中山北路二段44巷2號1樓'),
(348, '圓武', '121.529979', '25.051479', 1, '台北市', 4, '中山區', '台北市中山區吉林路28號'),
(349, '敬群', '121.557629', '25.079591', 1, '台北市', 4, '中山區', '台北市中山區樂群二路154號1樓'),
(350, '新大直', '121.546432', '25.082837', 1, '台北市', 4, '中山區', '台北市中山區北安路621巷48號'),
(351, '新西華', '121.539101', '25.058018', 1, '台北市', 4, '中山區', '台北市中山區民生東路三段31號'),
(352, '新晴光', '121.524204', '25.065894', 1, '台北市', 4, '中山區', '台北市中山區雙城街30號1樓'),
(353, '新錦祥', '121.521385', '25.060299', 1, '台北市', 4, '中山區', '台北市中山區錦西街16號'),
(354, '新寶', '121.536452', '25.050922', 1, '台北市', 4, '中山區', '台北市中山區建國北路一段136號'),
(355, '萬濠', '121.558379', '25.08031', 1, '台北市', 4, '中山區', '台北市中山區敬業四路1號1樓'),
(356, '農安', '121.526383', '25.064819', 1, '台北市', 4, '中山區', '台北市中山區農安街28-1號1樓28-2號1樓'),
(357, '實踐大學', '121.546189', '25.083755', 1, '台北市', 4, '中山區', '台北市中山區大直街70號1樓'),
(358, '榮金', '121.540876', '25.066902', 1, '台北市', 4, '中山區', '台北市中山區龍江路384巷1號'),
(359, '榮星', '121.540838', '25.06484', 1, '台北市', 4, '中山區', '台北市中山區龍江路322號'),
(360, '榮鑫', '121.536719', '25.065641', 1, '台北市', 4, '中山區', '台北市中山區建國北路三段89號91號1樓'),
(361, '榮鑽', '121.53809', '25.064434', 1, '台北市', 4, '中山區', '台北市中山區五常街23號25號民族東路410巷62號1樓'),
(362, '福權', '121.531884', '25.06242', 1, '台北市', 4, '中山區', '台北市中山區民權東路二段96號98號1樓'),
(363, '撫順', '121.522496', '25.064859', 1, '台北市', 4, '中山區', '台北市中山區中山北路三段23-6號'),
(364, '潤泰', '121.542807', '25.047182', 1, '台北市', 4, '中山區', '台北市中山區八德路二段314號'),
(365, '稻江', '121.528053', '25.065028', 1, '台北市', 4, '中山區', '台北市中山區新生北路三段35號農安街67號69號'),
(366, '興復', '121.543131', '25.055987', 1, '台北市', 4, '中山區', '台北市中山區興安街112號一樓'),
(367, '錦北', '121.523569', '25.060247', 1, '台北市', 4, '中山區', '台北市中山區錦州街8號'),
(368, '錦合', '121.539297', '25.060348', 1, '台北市', 4, '中山區', '台北市中山區合江街117號'),
(369, '錦捷', '121.532428', '25.060509', 1, '台北市', 4, '中山區', '台北市中山區錦州街229號1樓'),
(370, '錦龍', '121.540835', '25.06016', 1, '台北市', 4, '中山區', '台北市中山區龍江路281-1號'),
(371, '龍江', '121.54055', '25.051169', 1, '台北市', 4, '中山區', '台北市中山區龍江路83號85號1樓B1'),
(372, '龍京', '121.540255', '25.052833', 1, '台北市', 4, '中山區', '台北市中山區龍江路104號1樓'),
(373, '濱江', '121.539345', '25.066242', 1, '台北市', 4, '中山區', '台北市中山區龍江路356巷39及41號1樓'),
(374, '薇美', '121.555941', '25.083639', 1, '台北市', 4, '中山區', '台北市中山區敬業三路11號1樓'),
(375, '藍天樓', '121.540409', '25.079765', 1, '台北市', 4, '中山區', '台北市中山區北安路387號1樓'),
(376, '權東', '121.543579', '25.062535', 1, '台北市', 4, '中山區', '台北市中山區民權東路三段71號73號1樓'),
(377, '權松', '121.533398', '25.063791', 1, '台北市', 4, '中山區', '台北市中山區松江路363號'),
(378, '歡唱', '121.524784', '25.056124', 1, '台北市', 4, '中山區', '台北市中山區林森北路310巷10號1樓'),
(379, '鑫安江', '121.540528', '25.048193', 1, '台北市', 4, '中山區', '台北市中山區長安東路二段178號178-1號1樓'),
(380, '鑫東一', '121.531597', '25.051165', 1, '台北市', 4, '中山區', '台北市中山區一江街11號13號'),
(381, '鑫長安', '121.526524', '25.049147', 1, '台北市', 4, '中山區', '台北市中山區長安東路一段53巷1之3號'),
(382, '鑫越', '121.521504', '25.051907', 1, '台北市', 4, '中山區', '台北市中山區南京西路12巷9號1樓'),
(383, '鑫德惠', '121.525996', '25.066862', 1, '台北市', 4, '中山區', '台北市中山區德惠街15號1樓'),
(384, '鑫錦州', '121.534911', '25.060377', 1, '台北市', 4, '中山區', '台北市中山區錦州街263號'),
(385, '鑫櫃', '121.533288', '25.05645', 1, '台北市', 4, '中山區', '台北市中山區松江路183號183-1號1樓'),
(386, '八德', '121.53089', '25.043516', 1, '台北市', 5, '中正區', '台北市中正區臨沂街1號1樓'),
(387, '千成', '121.522903', '25.043751', 1, '台北市', 5, '中正區', '台北市中正區林森南路4號之3'),
(388, '千翔', '121.516971', '25.045748', 1, '台北市', 5, '中正區', '台北市中正區許昌街17號1樓'),
(389, '大永博', '121.511644', '25.043153', 1, '台北市', 5, '中正區', '台北市中正區博愛路97號1樓'),
(390, '大埔', '121.505568', '25.032981', 1, '台北市', 5, '中正區', '台北市中正區和平西路二段152號152之1號154號154之1號'),
(391, '中航', '121.522538', '25.042552', 1, '台北市', 5, '中正區', '台北市中正區林森南路12號'),
(392, '中華電', '121.523275', '25.036515', 1, '台北市', 5, '中正區', '台北市中正區信義路一段21-3號B1樓'),
(393, '中愛', '121.520249', '25.033082', 1, '台北市', 5, '中正區', '台北市中正區寧波東街17號1樓'),
(394, '中樂', '121.510506', '25.045116', 1, '台北市', 5, '中正區', '台北市中正區延平南路47號'),
(395, '丹陽', '121.525546', '25.03905', 1, '台北市', 5, '中正區', '台北市中正區杭州南路一段83號'),
(396, '仁金', '121.528948', '25.038452', 1, '台北市', 5, '中正區', '台北市中正區仁愛路二段39號39-1號'),
(397, '北車', '121.517672', '25.0472', 1, '台北市', 5, '中正區', '台北市中正區忠孝西路一段49號B1樓'),
(398, '北捷', '121.517672', '25.0472', 1, '台北市', 5, '中正區', '台北市中正區忠孝西路一段49號B3樓'),
(399, '古亭', '121.52366', '25.022488', 1, '台北市', 5, '中正區', '台北市中正區汀州路二段210號'),
(400, '台大', '121.52213', '25.040172', 1, '台北市', 5, '中正區', '台北市中正區林森南路53號55號'),
(401, '汀州', '121.509553', '25.028017', 1, '台北市', 5, '中正區', '台北市中正區汀州路一段127號129號'),
(402, '同州', '121.521071', '25.023381', 1, '台北市', 5, '中正區', '台北市中正區同安街62號1樓'),
(403, '忠孝東', '121.523923', '25.044468', 1, '台北市', 5, '中正區', '台北市中正區忠孝東路一段72號76號1樓'),
(404, '忠泰', '121.513833', '25.04687', 1, '台北市', 5, '中正區', '台北市中正區忠孝西路一段78號1樓'),
(405, '忠聯', '121.530537', '25.042845', 1, '台北市', 5, '中正區', '台北市中正區忠孝東路二段100號1樓'),
(406, '杭信', '121.525349', '25.035302', 1, '台北市', 5, '中正區', '台北市中正區信義路二段15號1樓'),
(407, '東成', '121.509874', '25.037951', 1, '台北市', 5, '中正區', '台北市中正區延平南路129巷3號1樓'),
(408, '欣漢華', '121.509514', '25.044943', 1, '台北市', 5, '中正區', '台北市中正區中華路一段41號1樓'),
(409, '金山', '121.527393', '25.035486', 1, '台北市', 5, '中正區', '台北市中正區金山南路一段108號'),
(410, '青島', '121.521392', '25.043946', 1, '台北市', 5, '中正區', '台北市中正區青島東路4號'),
(411, '南昌', '121.517508', '25.03104', 1, '台北市', 5, '中正區', '台北市中正區南昌路一段67號69號1樓'),
(412, '南海', '121.515324', '25.032037', 1, '台北市', 5, '中正區', '台北市中正區南海路50號'),
(413, '牯嶺', '121.518814', '25.02397', 1, '台北市', 5, '中正區', '台北市中正區廈門街99巷19-2號1樓'),
(414, '英雄館', '121.508594', '25.040309', 1, '台北市', 5, '中正區', '台北市中正區長沙街一段20號1樓'),
(415, '軍總', '121.530801', '25.016335', 1, '台北市', 5, '中正區', '台北市中正區汀州路三段129號'),
(416, '重南', '121.513528', '25.044167', 1, '台北市', 5, '中正區', '台北市中正區武昌街一段1-2號1樓'),
(417, '晉江', '121.52075', '25.026586', 1, '台北市', 5, '中正區', '台北市中正區和平西路一段26號'),
(418, '國圖', '121.516883', '25.037241', 1, '台北市', 5, '中正區', '台北市中正區中山南路20號B1樓'),
(419, '捷戰', '121.515583', '25.046575', 1, '台北市', 5, '中正區', '台北市中正區忠孝西路一段50-1號(捷運地下街)'),
(420, '捷戰', '121.515583', '25.046575', 1, '台北市', 5, '中正區', '台北市中正區忠孝西路一段50-1號(捷運地下街)'),
(421, '掬華', '121.508221', '25.026082', 1, '台北市', 5, '中正區', '台北市中正區中華路二段407號'),
(422, '統全', '121.534345', '25.013669', 1, '台北市', 5, '中正區', '台北市中正區汀州路三段249號'),
(423, '統新', '121.531407', '25.04084', 1, '台北市', 5, '中正區', '台北市中正區臨沂街27巷10號1樓'),
(424, '統聯', '121.531887', '25.042148', 1, '台北市', 5, '中正區', '台北市中正區忠孝東路二段130-2號130-3號'),
(425, '紹興', '121.525559', '25.045552', 1, '台北市', 5, '中正區', '台北市中正區紹興北街37號1樓'),
(426, '博美', '121.511392', '25.044275', 1, '台北市', 5, '中正區', '台北市中正區武昌街一段45號1樓'),
(427, '博源', '121.531095', '25.014415', 1, '台北市', 5, '中正區', '台北市中正區思源街16號'),
(428, '華山', '121.525618', '25.044106', 1, '台北市', 5, '中正區', '台北市中正區忠孝東路一段138號'),
(429, '華慶', '121.508334', '25.04138', 1, '台北市', 5, '中正區', '台北市中正區中華路一段59之16號'),
(430, '開博', '121.512264', '25.045985', 1, '台北市', 5, '中正區', '台北市中正區開封街一段40號42號1樓'),
(431, '開懷', '121.513802', '25.046061', 1, '台北市', 5, '中正區', '台北市中正區開封街一段15號17號1樓17號2樓'),
(432, '微風1', '121.517081', '25.047924', 1, '台北市', 5, '中正區', '台北市中正區北平西路3號1樓'),
(433, '微風2', '121.519384', '25.047133', 1, '台北市', 5, '中正區', '台北市中正區北平西路3號B1樓'),
(434, '新文華', '121.517507', '25.024728', 1, '台北市', 5, '中正區', '台北市中正區廈門街77號77之1號1樓'),
(435, '新南', '121.532495', '25.037107', 1, '台北市', 5, '中正區', '台北市中正區新生南路一段126-7號'),
(436, '新格蘭', '121.512786', '25.042408', 1, '台北市', 5, '中正區', '台北市中正區衡陽路27號'),
(437, '新雲', '121.530154', '25.034431', 1, '台北市', 5, '中正區', '台北市中正區三愛里連雲街81號'),
(438, '新廈門', '121.517404', '25.025584', 1, '台北市', 5, '中正區', '台北市中正區廈門街42號46號'),
(439, '新愛國', '121.507572', '25.034476', 1, '台北市', 5, '中正區', '台北市中正區延平南路177號'),
(440, '新羅福', '121.526426', '25.02195', 1, '台北市', 5, '中正區', '台北市中正區羅斯福路三段80號82號'),
(441, '瑞德', '121.531253', '25.034191', 1, '台北市', 5, '中正區', '台北市中正區新生南路一段170巷14之3號1樓'),
(442, '萬光', '121.504288', '25.031165', 1, '台北市', 5, '中正區', '台北市中正區中華路二段157號'),
(443, '萬翔', '121.517414', '25.0455', 1, '台北市', 5, '中正區', '台北市中正區公園路13號'),
(444, '寧波', '121.518746', '25.031515', 1, '台北市', 5, '中正區', '台北市中正區寧波西街3號'),
(445, '漢慶', '121.512207', '25.045166', 1, '台北市', 5, '中正區', '台北市中正區漢口街一段82號1樓'),
(446, '臺醫東', '121.518833', '25.04078', 1, '台北市', 5, '中正區', '台北市中正區中山南路7號1樓'),
(447, '德金', '121.531381', '25.044122', 1, '台北市', 5, '中正區', '台北市中正區八德路一段29號'),
(448, '慶城', '121.512528', '25.044001', 1, '台北市', 5, '中正區', '台北市中正區武昌街一段18號1樓'),
(449, '慶陽', '121.509553', '25.042315', 1, '台北市', 5, '中正區', '台北市中正區衡陽路93號1樓'),
(450, '興忠', '121.525347', '25.044747', 1, '台北市', 5, '中正區', '台北市中正區紹興北街3號1樓,B1'),
(451, '興信鑫', '121.515339', '25.044703', 1, '台北市', 5, '中正區', '台北市中正區館前路59號1樓'),
(452, '濟新', '121.531172', '25.040321', 1, '台北市', 5, '中正區', '台北市中正區濟南路二段50號'),
(453, '臨沂', '121.527801', '25.034531', 1, '台北市', 5, '中正區', '台北市中正區文祥里臨沂街74號76號'),
(454, '羅昌', '121.52432', '25.024038', 1, '台北市', 5, '中正區', '台北市中正區南昌路二段206號1樓'),
(455, '羅亭', '121.521933', '25.027316', 1, '台北市', 5, '中正區', '台北市中正區羅斯福路二段68號'),
(456, '羅館', '121.532336', '25.015592', 1, '台北市', 5, '中正區', '台北市中正區羅斯福路三段316巷16號1樓'),
(457, '警廣', '121.508064', '25.03554', 1, '台北市', 5, '中正區', '台北市中正區廣州街10-2號10-3號10-4部分號1樓'),
(458, '鑫大孝', '121.513355', '25.047041', 1, '台北市', 5, '中正區', '台北市中正區黎明里重慶南路一段1-1號一樓'),
(459, '鑫公信', '121.516767', '25.044642', 1, '台北市', 5, '中正區', '台北市中正區信陽街2-1號'),
(460, '鑫台北', '121.518477', '25.046208', 1, '台北市', 5, '中正區', '台北市中正區黎明里忠孝西路一段35號一樓'),
(461, '鑫杭', '121.526566', '25.042442', 1, '台北市', 5, '中正區', '台北市中正區杭州南路一段23號'),
(462, '鑫泉州', '121.513801', '25.026358', 1, '台北市', 5, '中正區', '台北市中正區汀州路一段285號一樓'),
(463, '鑫重寧', '121.515924', '25.029933', 1, '台北市', 5, '中正區', '台北市中正區寧波西街86號1樓'),
(464, '鑫國語', '121.518534', '25.02967', 1, '台北市', 5, '中正區', '台北市中正區南昌路一段135號1樓'),
(465, '鑫華福', '121.513843', '25.045078', 1, '台北市', 5, '中正區', '台北市中正區漢口街1段36號1樓'),
(466, '鑫衡陽', '121.513777', '25.042294', 1, '台北市', 5, '中正區', '台北市中正區衡陽路6號1樓'),
(467, '鑫館', '121.535305', '25.012656', 1, '台北市', 5, '中正區', '台北市中正區汀州路三段269號1樓2樓'),
(468, '三德', '121.518588', '25.065332', 1, '台北市', 6, '大同區', '台北市大同區承德路三段55號57號1樓'),
(469, '大龍', '121.515872', '25.065797', 1, '台北市', 6, '大同區', '台北市大同區昌吉街72號74號76號'),
(470, '中興醫', '121.50919', '25.050911', 1, '台北市', 6, '大同區', '台北市大同區鄭州路145號B1'),
(471, '仟發', '121.519287', '25.057605', 1, '台北市', 6, '大同區', '台北市大同區民生西路95號97號'),
(472, '仟瑞', '121.520201', '25.057469', 1, '台北市', 6, '大同區', '台北市大同區民生西路84號1樓'),
(473, '民族西', '121.516164', '25.068714', 1, '台北市', 6, '大同區', '台北市大同區民族西路151號153號155號'),
(474, '京站', '121.517557', '25.049806', 1, '台北市', 6, '大同區', '台北市大同區華陰街91號'),
(475, '京磚', '121.518353', '25.049582', 1, '台北市', 6, '大同區', '台北市大同區華陰街65號1樓'),
(476, '延民', '121.512532', '25.068602', 1, '台北市', 6, '大同區', '台北市大同區民族西路246號248號1樓'),
(477, '延年', '121.511137', '25.065876', 1, '台北市', 6, '大同區', '台北市大同區延平北路三段61-5號'),
(478, '延埕', '121.511607', '25.058295', 1, '台北市', 6, '大同區', '台北市大同區延平北路二段159號161號'),
(479, '延華', '121.512028', '25.051846', 1, '台北市', 6, '大同區', '台北市大同區延平北路一段89號91號93號1樓'),
(480, '延龍', '121.510788', '25.069242', 1, '台北市', 6, '大同區', '台北市大同區延平北路四段16號18號1樓'),
(481, '承華', '121.516684', '25.050444', 1, '台北市', 6, '大同區', '台北市大同區承德路一段22號'),
(482, '昌吉', '121.518103', '25.065387', 1, '台北市', 6, '大同區', '台北市大同區承德路三段60號60-1號'),
(483, '長峰', '121.517966', '25.050874', 1, '台北市', 6, '大同區', '台北市大同區長安西路45之2號47號1樓'),
(484, '保聖', '121.515727', '25.071883', 1, '台北市', 6, '大同區', '台北市大同區酒泉街58號60號'),
(485, '南西', '121.513754', '25.053845', 1, '台北市', 6, '大同區', '台北市大同區南京西路296號298號1樓'),
(486, '哈蜜', '121.514052', '25.073903', 1, '台北市', 6, '大同區', '台北市大同區重慶北路三段309、311號1樓'),
(487, '迪化', '121.511182', '25.057043', 1, '台北市', 6, '大同區', '台北市大同區民生西路343號345號'),
(488, '酒泉', '121.513585', '25.071451', 1, '台北市', 6, '大同區', '台北市大同區重慶北路3段258、260、262號1樓'),
(489, '涼州', '121.511303', '25.059775', 1, '台北市', 6, '大同區', '台北市大同區延平北路二段232號234號1樓涼州街72巷11號1樓'),
(490, '景星', '121.511241', '25.064094', 1, '台北市', 6, '大同區', '台北市大同區延平北路三段19之5號21號1樓'),
(491, '湧久', '121.511357', '25.073077', 1, '台北市', 6, '大同區', '台北市大同區延平北路四段157號159號'),
(492, '詠樂', '121.510284', '25.0542', 1, '台北市', 6, '大同區', '台北市大同區迪化街一段13號全棟'),
(493, '圓泉', '121.519315', '25.070781', 1, '台北市', 6, '大同區', '台北市大同區酒泉街25號27號1樓'),
(494, '圓慶', '121.514576', '25.054271', 1, '台北市', 6, '大同區', '台北市大同區南京西路127號'),
(495, '塔城', '121.510677', '25.052223', 1, '台北市', 6, '大同區', '台北市大同區長安西路271號1樓及273巷2號1樓'),
(496, '新慶陽', '121.5138', '25.055701', 1, '台北市', 6, '大同區', '台北市大同區重慶北路二段60號'),
(497, '德倫', '121.518552', '25.072542', 1, '台北市', 6, '大同區', '台北市大同區承德路三段240號242號1樓'),
(498, '慶吉', '121.513907', '25.065754', 1, '台北市', 6, '大同區', '台北市大同區重慶北路三段47號49號1樓'),
(499, '慶寧', '121.515123', '25.055121', 1, '台北市', 6, '大同區', '台北市大同區寧夏路23號23之1號'),
(500, '稻埕', '121.508791', '25.053291', 1, '台北市', 6, '大同區', '台北市大同區南京西路436號1F'),
(501, '靜中', '121.515199', '25.058493', 1, '台北市', 6, '大同區', '台北市大同區寧夏路71號73號'),
(502, '篷萊', '121.514479', '25.060779', 1, '台北市', 6, '大同區', '台北市大同區寧夏路131-1號'),
(503, '雙連', '121.517531', '25.057195', 1, '台北市', 6, '大同區', '台北市大同區民生西路176號'),
(504, '權鑫', '121.516291', '25.063251', 1, '台北市', 6, '大同區', '台北市大同區民權西路157之1號1樓'),
(505, '鑫太原', '121.515105', '25.050371', 1, '台北市', 6, '大同區', '台北市大同區太原路40號42號44號'),
(506, '鑫寧', '121.514995', '25.056876', 1, '台北市', 6, '大同區', '台北市大同區民生西路214號216號1樓'),
(507, '大華', '121.49779', '25.019961', 1, '台北市', 7, '萬華區', '台北市萬華區萬大路495號497號'),
(508, '中華', '121.508143', '25.043794', 1, '台北市', 7, '萬華區', '台北市萬華區中華路一段114巷2號1樓'),
(509, '中寧', '121.509959', '25.024629', 1, '台北市', 7, '萬華區', '台北市萬華區中華路二段602-1、602-2號1樓'),
(510, '六福', '121.505238', '25.046236', 1, '台北市', 7, '萬華區', '台北市萬華區漢口街二段73號1樓'),
(511, '世運', '121.504863', '25.042891', 1, '台北市', 7, '萬華區', '台北市萬華區昆明街81號83號'),
(512, '成昆', '121.505239', '25.042837', 1, '台北市', 7, '萬華區', '台北市萬華區成都路68號1樓'),
(513, '成都', '121.504314', '25.043142', 1, '台北市', 7, '萬華區', '台北市萬華區成都路96號1樓'),
(514, '西寧南', '121.50644', '25.044045', 1, '台北市', 7, '萬華區', '台北市萬華區西寧南路141號1樓2樓'),
(515, '克難', '121.50154', '25.02351', 1, '台北市', 7, '萬華區', '台北市萬華區萬青街168號'),
(516, '宏旭', '121.49884', '25.034817', 1, '台北市', 7, '萬華區', '台北市萬華區西園路一段238號1樓2樓'),
(517, '昆明', '121.505498', '25.045649', 1, '台北市', 7, '萬華區', '台北市萬華區昆明街76之1號1樓'),
(518, '昆嵋', '121.504319', '25.04406', 1, '台北市', 7, '萬華區', '台北市萬華區峨嵋街74號1樓'),
(519, '昆寧', '121.505899', '25.044383', 1, '台北市', 7, '萬華區', '台北市萬華區西寧南路50巷3號5號'),
(520, '昆福', '121.505913', '25.0473', 1, '台北市', 7, '萬華區', '台北市萬華區昆明街30-1號30-2號1樓'),
(521, '明日', '121.506911', '25.042826', 1, '台北市', 7, '萬華區', '台北市萬華區成都路27巷1號1樓'),
(522, '欣昌', '121.500692', '25.038829', 1, '台北市', 7, '萬華區', '台北市萬華區西昌街177號179號179-1號'),
(523, '青年', '121.503875', '25.019972', 1, '台北市', 7, '萬華區', '台北市萬華區青年路188號1樓'),
(524, '青園', '121.50572', '25.026092', 1, '台北市', 7, '萬華區', '台北市萬華區青年路18號1樓'),
(525, '桂明', '121.503061', '25.038297', 1, '台北市', 7, '萬華區', '台北市萬華區桂林路55號'),
(526, '桂林', '121.497804', '25.038402', 1, '台北市', 7, '萬華區', '台北市萬華區桂林路156號158號160號'),
(527, '國雙', '121.50257', '25.028055', 1, '台北市', 7, '萬華區', '台北市萬華區西藏路125巷17號及129-9號'),
(528, '捷盟', '121.507448', '25.044047', 1, '台北市', 7, '萬華區', '台北市萬華區漢中街51號'),
(529, '凱富', '121.499288', '25.033843', 1, '台北市', 7, '萬華區', '台北市萬華區西園路一段278號1樓'),
(530, '富帆', '121.497608', '25.020124', 1, '台北市', 7, '萬華區', '台北市萬華區華中里萬大路464號一樓'),
(531, '華江', '121.493038', '25.034099', 1, '台北市', 7, '萬華區', '台北市萬華區華江里20鄰環河南路二段200號'),
(532, '華藏', '121.503513', '25.029696', 1, '台北市', 7, '萬華區', '台北市萬華區西藏路107號107之1號1樓'),
(533, '華雙', '121.4917', '25.033164', 1, '台北市', 7, '萬華區', '台北市萬華區環河南路二段252號1樓環河南路二段250巷1號1樓'),
(534, '開寧', '121.506892', '25.046539', 1, '台北市', 7, '萬華區', '台北市萬華區西寧南路16號'),
(535, '園舺', '121.494908', '25.031538', 1, '台北市', 7, '萬華區', '台北市萬華區西園路二段140巷52號'),
(536, '新峨嵋', '121.503876', '25.044335', 1, '台北市', 7, '萬華區', '台北市萬華區峨嵋街111之2號之3號'),
(537, '新起', '121.504879', '25.040659', 1, '台北市', 7, '萬華區', '台北市萬華區長沙街二段87號1樓'),
(538, '新寧南', '121.505836', '25.042593', 1, '台北市', 7, '萬華區', '台北市萬華區西寧南路78號1樓'),
(539, '新艋舺', '121.500273', '25.025253', 1, '台北市', 7, '萬華區', '台北市萬華區萬大路292號294號'),
(540, '萬大', '121.500648', '25.026218', 1, '台北市', 7, '萬華區', '台北市萬華區萬大路245號247號1樓'),
(541, '萬和', '121.500346', '25.027924', 1, '台北市', 7, '萬華區', '台北市萬華區萬大路182號184號'),
(542, '萬忠', '121.494362', '25.026189', 1, '台北市', 7, '萬華區', '台北市萬華區東園街28巷56號58號'),
(543, '萬東', '121.495781', '25.020479', 1, '台北市', 7, '萬華區', '台北市萬華區萬大路486巷61號63號65號1樓'),
(544, '萬長', '121.49679', '25.025062', 1, '台北市', 7, '萬華區', '台北市萬華區東園街78號1樓'),
(545, '萬華', '121.500735', '25.031338', 1, '台北市', 7, '萬華區', '台北市萬華區莒光路216號萬大路57號1樓'),
(546, '萬運', '121.499579', '25.035449', 1, '台北市', 7, '萬華區', '台北市萬華區西園路一段153號地下室'),
(547, '漢中', '121.506842', '25.041138', 1, '台北市', 7, '萬華區', '台北市萬華區漢中街185號187號'),
(548, '漢陽', '121.504189', '25.039208', 1, '台北市', 7, '萬華區', '台北市萬華區昆明街197號199號1樓'),
(549, '漢寧', '121.506847', '25.045579', 1, '台北市', 7, '萬華區', '台北市萬華區西寧南路85號'),
(550, '廣明', '121.503659', '25.036831', 1, '台北市', 7, '萬華區', '台北市萬華區昆明街285號之3之4'),
(551, '廣運', '121.498876', '25.036634', 1, '台北市', 7, '萬華區', '台北市萬華區廣州街170號1樓2樓部份'),
(552, '興義', '121.491663', '25.026766', 1, '台北市', 7, '萬華區', '台北市萬華區興義街6號8號1樓'),
(553, '龍山', '121.501514', '25.03611', 1, '台北市', 7, '萬華區', '台北市萬華區康定路203號205號1樓'),
(554, '龍廣', '121.500593', '25.036581', 1, '台北市', 7, '萬華區', '台北市萬華區廣州街148號'),
(555, '雙環', '121.49154', '25.032052', 1, '台北市', 7, '萬華區', '台北市萬華區環河南路二段207號'),
(556, '寶昌', '121.49528', '25.023758', 1, '台北市', 7, '萬華區', '台北市萬華區寶興街184號186號'),
(557, '鑫日新', '121.503979', '25.045307', 1, '台北市', 7, '萬華區', '台北市萬華區武昌街二段122之1號'),
(558, '鑫武昌', '121.507197', '25.044847', 1, '台北市', 7, '萬華區', '台北市萬華區武昌街二段57號1樓'),
(559, '鑫青天', '121.502404', '25.021671', 1, '台北市', 7, '萬華區', '台北市萬華區青年路144號'),
(560, '鑫樂昇', '121.504788', '25.045121', 1, '台北市', 7, '萬華區', '台北市萬華區武昌街二段114之3號.之4號'),
(561, '鑫寶', '121.49347', '25.027372', 1, '台北市', 7, '萬華區', '台北市萬華區寶興街 43號45號1樓'),
(562, '文一', '121.55576', '24.980245', 1, '台北市', 8, '文山區', '台北市文山區木新路三段351號353號1樓'),
(563, '文山', '121.568931', '24.98675', 1, '台北市', 8, '文山區', '台北市文山區永安街22巷23號25號1樓'),
(564, '文忠', '121.56238', '24.984598', 1, '台北市', 8, '文山區', '台北市文山區忠順街二段10號1樓'),
(565, '文新', '121.558167', '24.98111', 1, '台北市', 8, '文山區', '台北市文山區樟新里木新路三段276號'),
(566, '文儀', '121.564063', '24.982614', 1, '台北市', 8, '文山區', '台北市文山區木新路三段54號56號'),
(567, '木柵', '121.562958', '24.989113', 1, '台北市', 8, '文山區', '台北市文山區木柵路二段157號'),
(568, '木盛', '121.566929', '24.988536', 1, '台北市', 8, '文山區', '台北市文山區木柵路三段88號'),
(569, '木新', '121.566689', '24.983168', 1, '台北市', 8, '文山區', '台北市文山區木新路二段255號'),
(570, '木鳴', '121.568236', '24.988949', 1, '台北市', 8, '文山區', '台北市文山區木柵路三段115號117號1樓'),
(571, '世成', '121.547904', '24.987251', 1, '台北市', 8, '文山區', '台北市文山區木柵路一段111號1樓(世新大管院)'),
(572, '世新大', '121.544678', '24.989247', 1, '台北市', 8, '文山區', '台北市文山區木柵路一段17巷1號1樓'),
(573, '仙岩', '121.548521', '24.998561', 1, '台北市', 8, '文山區', '台北市文山區仙岩路18號18-118號18-2號1樓'),
(574, '北福興', '121.551392', '25.002804', 1, '台北市', 8, '文山區', '台北市文山區興旺里福興路20號'),
(575, '台師大', '121.536319', '25.008059', 1, '台北市', 8, '文山區', '台北市文山區汀州路四段88號行政大樓1樓'),
(576, '巨新', '121.567478', '24.983682', 1, '台北市', 8, '文山區', '台北市文山區木新路二段212號及木新路二段218巷2號4號'),
(577, '辛亥站', '121.55664', '25.00449', 1, '台北市', 8, '文山區', '台北市文山區辛亥路四段132號'),
(578, '忠順', '121.559653', '24.982563', 1, '台北市', 8, '文山區', '台北市文山區忠順街一段26巷15號'),
(579, '金恩', '121.577273', '24.987419', 1, '台北市', 8, '文山區', '台北市文山區指南路二段149號'),
(580, '指南', '121.569664', '24.987687', 1, '台北市', 8, '文山區', '台北市文山區指南路一段34號36號1樓'),
(581, '政大', '121.575542', '24.987804', 1, '台北市', 8, '文山區', '台北市文山區指南路二段99號101號'),
(582, '政新', '121.573592', '24.988652', 1, '台北市', 8, '文山區', '台北市文山區新光路一段10號12號14號1樓及B1'),
(583, '動物園', '121.579608', '24.998811', 1, '台北市', 8, '文山區', '台北市文山區新光路二段30號1樓'),
(584, '康喜', '121.555654', '25.000271', 1, '台北市', 8, '文山區', '台北市文山區興隆路三段42號'),
(585, '添恩', '121.579901', '24.985137', 1, '台北市', 8, '文山區', '台北市文山區指南路三段8號10號'),
(586, '博嘉', '121.573775', '24.997622', 1, '台北市', 8, '文山區', '台北市文山區木柵路四段117號119號1樓'),
(587, '景中', '121.540934', '24.990277', 1, '台北市', 8, '文山區', '台北市文山區景文里景文街96號98號'),
(588, '景高', '121.544545', '24.997875', 1, '台北市', 8, '文山區', '台北市文山區景華里景興路14號'),
(589, '景捷', '121.540183', '24.99345', 1, '台北市', 8, '文山區', '台北市文山區景福街252號'),
(590, '景華', '121.547032', '24.995788', 1, '台北市', 8, '文山區', '台北市文山區興東里景華街130號'),
(591, '景興', '121.544858', '24.995084', 1, '台北市', 8, '文山區', '台北市文山區景興路113號115號'),
(592, '華興', '121.554982', '24.98799', 1, '台北市', 8, '文山區', '台北市文山區木柵路一段284號286號1樓'),
(593, '新安康', '121.559929', '24.988586', 1, '台北市', 8, '文山區', '台北市文山區木柵路二段88號90號1樓興隆路四段26號'),
(594, '新秀', '121.574145', '24.991642', 1, '台北市', 8, '文山區', '台北市文山區秀明路二段8號10號'),
(595, '新景美', '121.561435', '24.981762', 1, '台北市', 8, '文山區', '台北市文山區木新路三段147號149號'),
(596, '新萬盛', '121.538528', '25.007884', 1, '台北市', 8, '文山區', '台北市文山區羅斯福路五段21號1樓'),
(597, '新萬隆', '121.539438', '25.00001', 1, '台北市', 8, '文山區', '台北市文山區羅斯福路六段20號22號'),
(598, '萬芳', '121.570669', '25.000959', 1, '台北市', 8, '文山區', '台北市文山區萬安街23號25號27號27-1號1樓'),
(599, '萬芳醫', '121.558387', '24.999963', 1, '台北市', 8, '文山區', '台北市文山區興隆路三段111號'),
(600, '萬品', '121.556604', '24.999419', 1, '台北市', 8, '文山區', '台北市文山區興隆路三段112巷2弄22號1樓'),
(601, '萬美', '121.567174', '25.002163', 1, '台北市', 8, '文山區', '台北市文山區萬和街6號2樓之1'),
(602, '萬隆站', '121.539261', '25.00173', 1, '台北市', 8, '文山區', '台北市文山區羅斯福路五段249號1樓'),
(603, '萬福', '121.536565', '25.004655', 1, '台北市', 8, '文山區', '台北市文山區萬年里羅斯福路五段170巷33及35號'),
(604, '試院', '121.550292', '24.987633', 1, '台北市', 8, '文山區', '台北市文山區木柵路一段139號141號'),
(605, '鼎盛', '121.541405', '24.991236', 1, '台北市', 8, '文山區', '台北市文山區景文街79號'),
(606, '漢神', '121.544101', '24.992714', 1, '台北市', 8, '文山區', '台北市文山區景中街45號1樓'),
(607, '滬江', '121.540046', '24.991526', 1, '台北市', 8, '文山區', '台北市文山區羅斯福路六段270號'),
(608, '興北', '121.557376', '24.999312', 1, '台北市', 8, '文山區', '台北市文山區興隆路三段108號'),
(609, '興岩', '121.553168', '25.000183', 1, '台北市', 8, '文山區', '台北市文山區興隆路二段244巷20號1樓'),
(610, '興芳', '121.560104', '24.996421', 1, '台北市', 8, '文山區', '台北市文山區興光里興隆路三段173-175號'),
(611, '興隆', '121.549919', '25.000956', 1, '台北市', 8, '文山區', '台北市文山區興隆路二段205號207號1樓'),
(612, '羅捷', '121.540836', '24.992502', 1, '台北市', 8, '文山區', '台北市文山區景行里羅斯福路六段391號'),
(613, '羅盛', '121.541394', '24.995484', 1, '台北市', 8, '文山區', '台北市文山區羅斯福路六段235號237號1樓2樓'),
(614, '羅斯福', '121.538561', '25.002325', 1, '台北市', 8, '文山區', '台北市文山區羅斯福路五段216號'),
(615, '中坡', '121.583626', '25.042837', 1, '台北市', 9, '南港區', '台北市南港區中坡南路47號1樓'),
(616, '中研', '121.612851', '25.040928', 1, '台北市', 9, '南港區', '台北市南港區研究院路二段128號1樓(學術活動中心)'),
(617, '中貿', '121.615486', '25.059421', 1, '台北市', 9, '南港區', '台北市南港區經貿二路186號2樓'),
(618, '玉成', '121.592162', '25.054043', 1, '台北市', 9, '南港區', '台北市南港區西新里南港路三段3號1樓'),
(619, '玉德', '121.583643', '25.045086', 1, '台北市', 9, '南港區', '台北市南港區玉成街150號1樓'),
(620, '向揚', '121.594127', '25.055919', 1, '台北市', 9, '南港區', '台北市南港區向陽路166號1樓'),
(621, '庄研', '121.616918', '25.038393', 1, '台北市', 9, '南港區', '台北市南港區研究院路二段152號'),
(622, '佳樂', '121.60765', '25.054399', 1, '台北市', 9, '南港區', '台北市南港區南港路一段303號305號307號1樓'),
(623, '忠陽', '121.59407', '25.05092', 1, '台北市', 9, '南港區', '台北市南港區忠孝東路六段465號1樓'),
(624, '昆陽', '121.593992', '25.050252', 1, '台北市', 9, '南港區', '台北市南港區忠孝東路六段448號'),
(625, '林坊', '121.587128', '25.046297', 1, '台北市', 9, '南港區', '台北市南港區東新街80巷1號'),
(626, '研究', '121.615517', '25.047641', 1, '台北市', 9, '南港區', '台北市南港區研究院路二段14號'),
(627, '胡適', '121.61587', '25.044149', 1, '台北市', 9, '南港區', '台北市南港區研究院路二段94號96號98巷1號'),
(628, '重陽', '121.598628', '25.056649', 1, '台北市', 9, '南港區', '台北市南港區重陽路179號181號1樓'),
(629, '香城', '121.613308', '25.055177', 1, '台北市', 9, '南港區', '台北市南港區南港路一段167號1樓'),
(630, '凱松', '121.580271', '25.050525', 1, '台北市', 9, '南港區', '台北市南港區八德路四段778號780號');
INSERT INTO `store` (`store_id`, `store_name`, `store_latitude`, `store_longtitude`, `store_city_id`, `store_city`, `store_area_id`, `store_area`, `store_address`) VALUES
(631, '港泰', '121.604558', '25.052247', 1, '台北市', 9, '南港區', '台北市南港區忠孝東路七段359號1樓'),
(632, '港高鐵', '121.603681', '25.052582', 1, '台北市', 9, '南港區', '台北市南港區南港路一段313號B2'),
(633, '港捷', '121.617171', '25.056063', 1, '台北市', 9, '南港區', '台北市南港區經貿二路1號'),
(634, '港勝', '121.616344', '25.056311', 1, '台北市', 9, '南港區', '台北市南港區經貿二路2號B1樓'),
(635, '港運', '121.581759', '25.048773', 1, '台北市', 9, '南港區', '台北市南港區玉成街69號1樓'),
(636, '港德', '121.591447', '25.039379', 1, '台北市', 9, '南港區', '台北市南港區福德街373巷25號'),
(637, '港興', '121.605708', '25.056909', 1, '台北市', 9, '南港區', '台北市南港區興華路119號121號123號125號'),
(638, '港環球', '121.608036', '25.053038', 1, '台北市', 9, '南港區', '台北市南港區忠孝東路七段371號B2'),
(639, '港麗', '121.604558', '25.052247', 1, '台北市', 9, '南港區', '台北市南港區忠孝東路七段369號2樓'),
(640, '華技', '121.614191', '25.034819', 1, '台北市', 9, '南港區', '台北市南港區研究院路三段72號74號1樓'),
(641, '雄強', '121.589022', '25.049098', 1, '台北市', 9, '南港區', '台北市南港區忠孝東路六段276號'),
(642, '慈愛', '121.600903', '25.057143', 1, '台北市', 9, '南港區', '台北市南港區重陽路164號'),
(643, '新福玉', '121.587829', '25.041587', 1, '台北市', 9, '南港區', '台北市南港區成福路145號147號'),
(644, '經貿', '121.613803', '25.056118', 1, '台北市', 9, '南港區', '台北市南港區三重路19號1樓'),
(645, '聯成', '121.594184', '25.049094', 1, '台北市', 9, '南港區', '台北市南港區聯成里昆陽街150-1號150-3號'),
(646, '聯坊', '121.588323', '25.046466', 1, '台北市', 9, '南港區', '台北市南港區東新街118巷1號'),
(647, '馥樺', '121.614137', '25.059102', 1, '台北市', 9, '南港區', '台北市南港區三重路23號1樓'),
(648, '鵬馳', '121.589833', '25.053227', 1, '台北市', 9, '南港區', '台北市南港區南港路三段49-1號'),
(649, '耀港', '121.616235', '25.051977', 1, '台北市', 9, '南港區', '台北市南港區研究院路一段99號1樓之14'),
(650, '鑫貿', '121.61613', '25.05889', 1, '台北市', 9, '南港區', '台北市南港區經貿二路168號4樓'),
(651, '大眾', '121.575066', '25.073334', 1, '台北市', 10, '內湖區', '台北市內湖區港墘路221巷41號1樓'),
(652, '日內瓦', '121.580303', '25.070196', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路76巷59號1樓'),
(653, '台企', '121.587232', '25.058315', 1, '台北市', 10, '內湖區', '台北市內湖區新明路122之7號'),
(654, '民東', '121.585627', '25.068831', 1, '台北市', 10, '內湖區', '台北市內湖區民權東路六段82號1樓'),
(655, '民龍', '121.575204', '25.060813', 1, '台北市', 10, '內湖區', '台北市內湖區新湖二路26號'),
(656, '民醫', '121.592779', '25.069854', 1, '台北市', 10, '內湖區', '台北市內湖區民權東路六段123巷22號22之1號'),
(657, '全球', '121.583186', '25.064378', 1, '台北市', 10, '內湖區', '台北市內湖區新湖二路329號1樓'),
(658, '名寶', '121.592892', '25.068245', 1, '台北市', 10, '內湖區', '台北市內湖區民權東路六段180巷17號19號'),
(659, '安保', '121.593711', '25.062409', 1, '台北市', 10, '內湖區', '台北市內湖區安康路28號1樓'),
(660, '安美', '121.593984', '25.06175', 1, '台北市', 10, '內湖區', '台北市內湖區石潭里安康路32巷24弄22號1樓'),
(661, '成功', '121.590366', '25.066119', 1, '台北市', 10, '內湖區', '台北市內湖區成功路二段252號'),
(662, '成竹', '121.594646', '25.083635', 1, '台北市', 10, '內湖區', '台北市內湖區成功路四段173號1樓'),
(663, '成美', '121.58455', '25.056887', 1, '台北市', 10, '內湖區', '台北市內湖區新明路317號'),
(664, '成湖', '121.599662', '25.084854', 1, '台北市', 10, '內湖區', '台北市內湖區成功路四段346號'),
(665, '行善', '121.585363', '25.064635', 1, '台北市', 10, '內湖區', '台北市內湖區行善路468號1樓新湖二路369號1樓'),
(666, '行龍', '121.580118', '25.063894', 1, '台北市', 10, '內湖區', '台北市內湖區行愛路128號'),
(667, '西武', '121.566981', '25.084476', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段285巷65弄3號5號1樓'),
(668, '西湖', '121.567783', '25.082263', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段321號'),
(669, '克里斯', '121.613362', '25.067733', 1, '台北市', 10, '內湖區', '台北市內湖區五分街33號35號1樓'),
(670, '秀湖', '121.600053', '25.084554', 1, '台北市', 10, '內湖區', '台北市內湖區成功路四段359號1樓'),
(671, '見晴', '121.576948', '25.074982', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路196號'),
(672, '里昂', '121.570641', '25.078199', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路406號1樓'),
(673, '明湖', '121.614071', '25.068865', 1, '台北市', 10, '內湖區', '台北市內湖區東湖路45號'),
(674, '東湖', '121.615814', '25.067211', 1, '台北市', 10, '內湖區', '台北市內湖區五分街62號'),
(675, '欣福', '121.587655', '25.067675', 1, '台北市', 10, '內湖區', '台北市內湖區民權東路六段120巷7弄8號'),
(676, '金湖', '121.564214', '25.086572', 1, '台北市', 10, '內湖區', '台北市內湖區文湖街83號85號1樓'),
(677, '金雲', '121.594971', '25.079848', 1, '台北市', 10, '內湖區', '台北市內湖區星雲街136號'),
(678, '金碧', '121.586973', '25.088377', 1, '台北市', 10, '內湖區', '台北市內湖區金龍路219號217巷1號1樓'),
(679, '金德', '121.595079', '25.084383', 1, '台北市', 10, '內湖區', '台北市內湖區金龍路5號1F'),
(680, '金龍', '121.593309', '25.084528', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路二段407號409號411號1樓'),
(681, '金聯發', '121.590125', '25.085967', 1, '台北市', 10, '內湖區', '台北市內湖區金龍路137號1樓'),
(682, '長鴻', '121.59941', '25.088435', 1, '台北市', 10, '內湖區', '台北市內湖區大湖山莊街219巷6號8號1樓'),
(683, '星成', '121.590507', '25.078026', 1, '台北市', 10, '內湖區', '台北市內湖區星雲街17號'),
(684, '洲子', '121.568966', '25.079267', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路517號1樓'),
(685, '悅來', '121.612443', '25.067765', 1, '台北市', 10, '內湖區', '台北市內湖區五分街9號11號1樓'),
(686, '晏揚', '121.610787', '25.072662', 1, '台北市', 10, '內湖區', '台北市內湖區康寧路三段99巷14號康寧路三段99巷12弄2號'),
(687, '泰樂', '121.618247', '25.073374', 1, '台北市', 10, '內湖區', '台北市內湖區安泰街26號28號'),
(688, '參龍', '121.576222', '25.058593', 1, '台北市', 10, '內湖區', '台北市內湖區新湖一路95號1樓'),
(689, '國企', '121.577704', '25.057912', 1, '台北市', 10, '內湖區', '台北市內湖區行善路136號1樓'),
(690, '國醫', '121.593622', '25.071908', 1, '台北市', 10, '內湖區', '台北市內湖區成功路二段325號1樓'),
(691, '康明', '121.612374', '25.071378', 1, '台北市', 10, '內湖區', '台北市內湖區康寧路三段189巷21弄26號1樓'),
(692, '康雲', '121.594443', '25.078978', 1, '台北市', 10, '內湖區', '台北市內湖區康寧路一段160號'),
(693, '康葫', '121.60644', '25.071936', 1, '台北市', 10, '內湖區', '台北市內湖區民權東路六段296巷33號'),
(694, '康寧', '121.607934', '25.072185', 1, '台北市', 10, '內湖區', '台北市內湖區康寧路三段26巷1號'),
(695, '康醫', '121.608619', '25.075598', 1, '台北市', 10, '內湖區', '台北市內湖區成功路五段420巷30號'),
(696, '彩龍', '121.576433', '25.056893', 1, '台北市', 10, '內湖區', '台北市內湖區行善路35號1F'),
(697, '清圳', '121.61561', '25.072068', 1, '台北市', 10, '內湖區', '台北市內湖區東湖路113巷88號'),
(698, '清湖', '121.596672', '25.082278', 1, '台北市', 10, '內湖區', '台北市內湖區金湖路49號1樓'),
(699, '堤頂', '121.563235', '25.08068', 1, '台北市', 10, '內湖區', '台北市內湖區堤頂大道二段411號1樓'),
(700, '富港', '121.578087', '25.08204', 1, '台北市', 10, '內湖區', '台北市內湖區港墘路46號48號1樓'),
(701, '港華', '121.57479', '25.083033', 1, '台北市', 10, '內湖區', '台北市內湖區港華街46號1樓'),
(702, '港鑫', '121.578727', '25.079726', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段737巷35號'),
(703, '湖光', '121.565585', '25.079757', 1, '台北市', 10, '內湖區', '台北市內湖區基湖路35巷13號1樓'),
(704, '紫陽', '121.5852', '25.074963', 1, '台北市', 10, '內湖區', '台北市內湖區紫陽里陽光街159號'),
(705, '紫新', '121.590981', '25.080625', 1, '台北市', 10, '內湖區', '台北市內湖區成功路三段201號1樓'),
(706, '華經', '121.577601', '25.065267', 1, '台北市', 10, '內湖區', '台北市內湖區行忠路30號'),
(707, '匯陽', '121.576204', '25.072742', 1, '台北市', 10, '內湖區', '台北市內湖區陽光街383號'),
(708, '新潭美', '121.581064', '25.054867', 1, '台北市', 10, '內湖區', '台北市內湖區新明路425號427號'),
(709, '毓鄰', '121.579607', '25.062924', 1, '台北市', 10, '內湖區', '台北市內湖區新湖二路160號162號1樓'),
(710, '瑞江', '121.579009', '25.076249', 1, '台北市', 10, '內湖區', '台北市內湖區瑞陽里江南街71巷16弄76號'),
(711, '瑞和', '121.573272', '25.075833', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路316巷56號1樓'),
(712, '瑞東', '121.57059', '25.080078', 1, '台北市', 10, '內湖區', '台北市內湖區洲子街102號1樓'),
(713, '瑞富', '121.576059', '25.074075', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路188巷51號1樓'),
(714, '瑞景', '121.568339', '25.080753', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路583巷30號1樓'),
(715, '瑞湖', '121.575454', '25.076165', 1, '台北市', 10, '內湖區', '台北市內湖區江南街128號'),
(716, '瑞寶', '121.568115', '25.080918', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路583巷27號1樓'),
(717, '瑞鑫', '121.566309', '25.080175', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路580號'),
(718, '瑞鑽', '121.568673', '25.078288', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路478巷24號1樓'),
(719, '達人', '121.589663', '25.082', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路二段249號251號'),
(720, '碧綠', '121.592054', '25.086132', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路三段59巷1號61號63號'),
(721, '福湖', '121.571291', '25.082437', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段411巷17號19弄1號'),
(722, '墘都', '121.575809', '25.079905', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段669號'),
(723, '墘運', '121.575154', '25.078233', 1, '台北市', 10, '內湖區', '台北市內湖區洲子街12號1樓'),
(724, '墘麗', '121.579081', '25.082152', 1, '台北市', 10, '內湖區', '台北市內湖區港墘路37巷15號'),
(725, '德成', '121.590867', '25.082374', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路二段366號'),
(726, '德瑞', '121.572034', '25.079529', 1, '台北市', 10, '內湖區', '台北市內湖區洲子街70號1樓'),
(727, '德福', '121.591748', '25.082275', 1, '台北市', 10, '內湖區', '台北市內湖區成功路四段30巷27號29號31號'),
(728, '德馨', '121.573387', '25.07906', 1, '台北市', 10, '內湖區', '台北市內湖區洲子街46號'),
(729, '樂湖', '121.616201', '25.068161', 1, '台北市', 10, '內湖區', '台北市內湖區東湖路120號1樓'),
(730, '樂陽', '121.578318', '25.073353', 1, '台北市', 10, '內湖區', '台北市內湖區陽光街349號1樓'),
(731, '銳陽', '121.580467', '25.076813', 1, '台北市', 10, '內湖區', '台北市內湖區文德路22巷44弄6號8號1樓'),
(732, '環武', '121.5654', '25.083088', 1, '台北市', 10, '內湖區', '台北市內湖區環山路一段8號1樓'),
(733, '環金', '121.575009', '25.085048', 1, '台北市', 10, '內湖區', '台北市內湖區環山路二段81號83號1樓'),
(734, '環湖', '121.566875', '25.086626', 1, '台北市', 10, '內湖區', '台北市內湖區環山路一段70號'),
(735, '鴻瑞', '121.575081', '25.077407', 1, '台北市', 10, '內湖區', '台北市內湖區瑞光路335號1樓'),
(736, '麗安', '121.572277', '25.081342', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段445號1樓'),
(737, '寶湖', '121.59256', '25.068081', 1, '台北市', 10, '內湖區', '台北市內湖區民權東路六段180巷6號1樓'),
(738, '瓏山林', '121.619673', '25.073432', 1, '台北市', 10, '內湖區', '台北市內湖區康樂街125巷2號2之1號'),
(739, '瓏馬', '121.620648', '25.075874', 1, '台北市', 10, '內湖區', '台北市內湖區康樂街213號'),
(740, '馨瑩', '121.561294', '25.084548', 1, '台北市', 10, '內湖區', '台北市內湖區內湖路一段91巷2號'),
(741, '權金', '121.604391', '25.073409', 1, '台北市', 10, '內湖區', '台北市內湖區金湖路405號1樓'),
(742, '鑫文德', '121.583371', '25.078726', 1, '台北市', 10, '內湖區', '台北市內湖區文德路99號1樓'),
(743, '鑫江南', '121.578876', '25.07852', 1, '台北市', 10, '內湖區', '台北市內湖區文德路6號1樓'),
(744, '鑫碁泰', '121.608259', '25.072353', 1, '台北市', 10, '內湖區', '台北市內湖區康寧路三段63號65號67號'),
(745, '鑫輝煌', '121.617076', '25.069845', 1, '台北市', 10, '內湖區', '台北市內湖區東湖路119巷49弄2號1樓'),
(746, '三玉', '121.535807', '25.118061', 1, '台北市', 11, '士林區', '台北市士林區天母東路88之1號1樓'),
(747, '三樂', '121.522695', '25.084129', 1, '台北市', 11, '士林區', '台北市士林區劍潭路21號1樓'),
(748, '上饌', '121.523839', '25.088355', 1, '台北市', 11, '士林區', '台北市士林區基河路125號127號'),
(749, '士正', '121.523789', '25.094792', 1, '台北市', 11, '士林區', '台北市士林區中正路301號1樓'),
(750, '士東', '121.527814', '25.111915', 1, '台北市', 11, '士林區', '台北市士林區士東路48號'),
(751, '大饌', '121.525235', '25.089475', 1, '台北市', 11, '士林區', '台北市士林區大東路35號1樓'),
(752, '丹樺', '121.524099', '25.097251', 1, '台北市', 11, '士林區', '台北市士林區文林路530號'),
(753, '友成', '121.508421', '25.091105', 1, '台北市', 11, '士林區', '台北市士林區社中街211號1樓'),
(754, '天北', '121.527473', '25.118781', 1, '台北市', 11, '士林區', '台北市士林區天母里天母西路39-1號1樓'),
(755, '天東', '121.531242', '25.118703', 1, '台北市', 11, '士林區', '台北市士林區中山北路七段14巷2-1號'),
(756, '天美', '121.530124', '25.114359', 1, '台北市', 11, '士林區', '台北市士林區天母東路8巷96號98號'),
(757, '天真', '121.531436', '25.123138', 1, '台北市', 11, '士林區', '台北市士林區中山北路七段141巷6之1號1樓'),
(758, '天越', '121.533244', '25.116888', 1, '台北市', 11, '士林區', '台北市士林區天母東路50巷25號'),
(759, '天裕', '121.53266', '25.124054', 1, '台北市', 11, '士林區', '台北市士林區中山北路七段156號1樓'),
(760, '天福', '121.531653', '25.116464', 1, '台北市', 11, '士林區', '台北市士林區天福里天母東路８巷39號天母東路8巷41弄1號'),
(761, '天鑫', '121.526963', '25.119864', 1, '台北市', 11, '士林區', '台北市士林區天玉街8號'),
(762, '太學', '121.541887', '25.137791', 1, '台北市', 11, '士林區', '台北市士林區華岡路45之1號1樓'),
(763, '文大', '121.546486', '25.137934', 1, '台北市', 11, '士林區', '台北市士林區格致路57號'),
(764, '文林', '121.52659', '25.089878', 1, '台北市', 11, '士林區', '台北市士林區大北路14號16號1樓'),
(765, '文學', '121.54161', '25.137299', 1, '台北市', 11, '士林區', '台北市士林區光華路26巷10號1樓'),
(766, '文饌', '121.525787', '25.092411', 1, '台北市', 11, '士林區', '台北市士林區福德路12號14號1樓'),
(767, '冬樂', '121.51988', '25.097087', 1, '台北市', 11, '士林區', '台北市士林區美崙街112號一樓'),
(768, '永倫', '121.503403', '25.092049', 1, '台北市', 11, '士林區', '台北市士林區社中街381號1樓'),
(769, '至善天下', '121.550925', '25.100437', 1, '台北市', 11, '士林區', '台北市士林區至善路二段264號'),
(770, '至誠', '121.529259', '25.10181', 1, '台北市', 11, '士林區', '台北市士林區至誠路二段31號'),
(771, '兒樂', '121.5146', '25.093999', 1, '台北市', 11, '士林區', '台北市士林區承德路五段55號'),
(772, '承河', '121.522847', '25.089097', 1, '台北市', 11, '士林區', '台北市士林區基河路132號1樓'),
(773, '承富', '121.52277', '25.081019', 1, '台北市', 11, '士林區', '台北市士林區承德路四段39號'),
(774, '東吳', '121.545802', '25.094324', 1, '台北市', 11, '士林區', '台北市士林區臨溪路70號'),
(775, '東洋', '121.532398', '25.118896', 1, '台北市', 11, '士林區', '台北市士林區中山北路七段14巷19號Ｂ1'),
(776, '社中', '121.505185', '25.092423', 1, '台北市', 11, '士林區', '台北市士林區社中街320號322號1樓'),
(777, '社鑫', '121.507479', '25.087443', 1, '台北市', 11, '士林區', '台北市士林區社子街42號44號1樓'),
(778, '社鑽', '121.508208', '25.086206', 1, '台北市', 11, '士林區', '台北市士林區中正路639號1樓'),
(779, '芝山', '121.522863', '25.102871', 1, '台北市', 11, '士林區', '台北市士林區福華路126號1樓'),
(780, '芝玉', '121.532808', '25.107718', 1, '台北市', 11, '士林區', '台北市士林區忠義街121號'),
(781, '前港', '121.521541', '25.085879', 1, '台北市', 11, '士林區', '台北市士林區後港街98之1號2號1樓'),
(782, '洲美', '121.498221', '25.093424', 1, '台北市', 11, '士林區', '台北市士林區延平北路六段505號'),
(783, '珍饌', '121.526516', '25.088459', 1, '台北市', 11, '士林區', '台北市士林區文林路126號1樓'),
(784, '海光', '121.510854', '25.079794', 1, '台北市', 11, '士林區', '台北市士林區延平北路五段35號37號39號'),
(785, '草山', '121.546449', '25.136941', 1, '台北市', 11, '士林區', '台北市士林區格致路28號'),
(786, '凱立', '121.53134', '25.105828', 1, '台北市', 11, '士林區', '台北市士林區忠義街68號'),
(787, '華岡', '121.541482', '25.136886', 1, '台北市', 11, '士林區', '台北市士林區光華路26巷7-1號'),
(788, '華齡', '121.519337', '25.083135', 1, '台北市', 11, '士林區', '台北市士林區華齡街17巷2號4號1樓'),
(789, '集鑫', '121.505077', '25.089297', 1, '台北市', 11, '士林區', '台北市士林區延平北路六段229號231號'),
(790, '新士林', '121.525449', '25.091682', 1, '台北市', 11, '士林區', '台北市士林區大東路123號125號1樓'),
(791, '新天強', '121.524484', '25.108799', 1, '台北市', 11, '士林區', '台北市士林區克強路11及11-1號1樓'),
(792, '新文', '121.521305', '25.096115', 1, '台北市', 11, '士林區', '台北市士林區文昌路64號'),
(793, '新忠誠', '121.526761', '25.104034', 1, '台北市', 11, '士林區', '台北市士林區中山北路六段18號20號1樓'),
(794, '新承德', '121.522042', '25.080383', 1, '台北市', 11, '士林區', '台北市士林區承德路四段30號'),
(795, '新福慶', '121.524946', '25.086269', 1, '台北市', 11, '士林區', '台北市士林區基河路1號1樓(部份)'),
(796, '新劍潭', '121.517477', '25.084292', 1, '台北市', 11, '士林區', '台北市士林區福港街246號248號'),
(797, '葫東', '121.51004', '25.08422', 1, '台北市', 11, '士林區', '台北市士林區延平北路五段228號1樓230號1樓2樓'),
(798, '葫蘆', '121.510364', '25.082178', 1, '台北市', 11, '士林區', '台北市士林區延平北路五段134號134-2號1樓'),
(799, '誠義', '121.528778', '25.105707', 1, '台北市', 11, '士林區', '台北市士林區忠誠路一段126號'),
(800, '福志', '121.53226', '25.098488', 1, '台北市', 11, '士林區', '台北市士林區雨農路25號'),
(801, '福芝', '121.522372', '25.102057', 1, '台北市', 11, '士林區', '台北市士林區福國路94號'),
(802, '福氣', '121.507855', '25.089307', 1, '台北市', 11, '士林區', '台北市士林區延平北路六段122號124號1樓'),
(803, '福捷', '121.526054', '25.094826', 1, '台北市', 11, '士林區', '台北市士林區中正路235巷14號'),
(804, '福通', '121.51586', '25.089629', 1, '台北市', 11, '士林區', '台北市士林區大南路400號402號1樓'),
(805, '福陽', '121.509577', '25.085355', 1, '台北市', 11, '士林區', '台北市士林區延平北路五段269號271號1樓'),
(806, '福順', '121.51185', '25.083225', 1, '台北市', 11, '士林區', '台北市士林區重慶北路四段149號151號1樓'),
(807, '福溢', '121.521269', '25.104145', 1, '台北市', 11, '士林區', '台北市士林區德行西路96號'),
(808, '福榮', '121.526092', '25.095529', 1, '台北市', 11, '士林區', '台北市士林區中正路220號222號'),
(809, '福鑫', '121.522541', '25.094652', 1, '台北市', 11, '士林區', '台北市士林區中正路324號'),
(810, '聚鑫', '121.501219', '25.090706', 1, '台北市', 11, '士林區', '台北市士林區延平北路六段350號'),
(811, '銘傳', '121.528489', '25.086292', 1, '台北市', 11, '士林區', '台北市士林區中山北路五段250號'),
(812, '齊德', '121.524902', '25.118573', 1, '台北市', 11, '士林區', '台北市士林區天母西路85號1樓2樓'),
(813, '劍潭站', '121.525126', '25.084425', 1, '台北市', 11, '士林區', '台北市士林區中山北路五段65號1樓'),
(814, '德天', '121.522989', '25.105272', 1, '台北市', 11, '士林區', '台北市士林區德行西路52號1樓'),
(815, '德行', '121.530636', '25.10908', 1, '台北市', 11, '士林區', '台北市士林區忠誠路二段7號1樓'),
(816, '德東', '121.534693', '25.109746', 1, '台北市', 11, '士林區', '台北市士林區德行東路262號1樓'),
(817, '德芝', '121.537525', '25.112439', 1, '台北市', 11, '士林區', '台北市士林區士東路266巷5弄18號20號1樓'),
(818, '德華', '121.52219', '25.100917', 1, '台北市', 11, '士林區', '台北市士林區文林路669號1樓及B1'),
(819, '德誠', '121.528702', '25.107814', 1, '台北市', 11, '士林區', '台北市士林區德行東路106號108號1樓'),
(820, '德寶', '121.529527', '25.110892', 1, '台北市', 11, '士林區', '台北市士林區忠誠路2段50巷12號'),
(821, '豫鋒', '121.518275', '25.088952', 1, '台北市', 11, '士林區', '台北市士林區大南路322號'),
(822, '豐基', '121.51859', '25.094805', 1, '台北市', 11, '士林區', '台北市士林區基河路368號370號'),
(823, '蘭雅', '121.525359', '25.106284', 1, '台北市', 11, '士林區', '台北市士林區德行東路6之2號1樓'),
(824, '鑫仰德', '121.552876', '25.118849', 1, '台北市', 11, '士林區', '台北市士林區仰德大道三段68號70號'),
(825, '鑫成', '121.527802', '25.101557', 1, '台北市', 11, '士林區', '台北市士林區至誠路二段82號1樓'),
(826, '鑫港', '121.520599', '25.088391', 1, '台北市', 11, '士林區', '台北市士林區後港街210號'),
(827, '一德', '121.468456', '25.12815', 1, '台北市', 12, '北投區', '台北市北投區中央北路四段513號'),
(828, '大中', '121.501056', '25.130534', 1, '台北市', 12, '北投區', '台北市北投區中央南路一段114號'),
(829, '中華賓士', '121.46887', '25.124541', 1, '台北市', 12, '北投區', '台北市北投區立功街9號1樓'),
(830, '中陽', '121.4849', '25.137918', 1, '台北市', 12, '北投區', '台北市北投區中央北路三段55號57號1樓'),
(831, '公岩', '121.508172', '25.125606', 1, '台北市', 12, '北投區', '台北市北投區公館路259號1樓'),
(832, '公館', '121.503115', '25.133059', 1, '台北市', 12, '北投區', '台北市北投區公館路31號'),
(833, '天富', '121.523837', '25.113726', 1, '台北市', 12, '北投區', '台北市北投區富貴一路3號1樓'),
(834, '加賀屋', '121.506171', '25.135692', 1, '台北市', 12, '北投區', '台北市北投區溫泉路73巷5號地下二樓之1'),
(835, '北投', '121.50179', '25.13909', 1, '台北市', 12, '北投區', '台北市北投區中和街222號'),
(836, '石捷', '121.515502', '25.115351', 1, '台北市', 12, '北投區', '台北市北投區石牌路二段8號'),
(837, '立農', '121.502749', '25.118635', 1, '台北市', 12, '北投區', '台北市北投區承德路七段378號'),
(838, '光中', '121.501821', '25.133288', 1, '台北市', 12, '北投區', '台北市北投區光明路122號'),
(839, '光寶', '121.50216', '25.133616', 1, '台北市', 12, '北投區', '台北市北投區光明路132之2號1.2樓'),
(840, '安遠', '121.512955', '25.117452', 1, '台北市', 12, '北投區', '台北市北投區致遠二路149號'),
(841, '百齡', '121.510283', '25.113202', 1, '台北市', 12, '北投區', '台北市北投區石牌路一段37號'),
(842, '行義', '121.525004', '25.123024', 1, '台北市', 12, '北投區', '台北市北投區石牌路二段348巷1號3號1樓'),
(843, '西安', '121.499361', '25.13017', 1, '台北市', 12, '北投區', '台北市北投區大興街44號46號1樓'),
(844, '秀山', '121.495229', '25.145234', 1, '台北市', 12, '北投區', '台北市北投區中和街476號478號'),
(845, '和信醫', '121.472414', '25.12837', 1, '台北市', 12, '北投區', '台北市北投區立德路125號1樓'),
(846, '和業', '121.503438', '25.137517', 1, '台北市', 12, '北投區', '台北市北投區中和街10號'),
(847, '和碩', '121.471453', '25.124844', 1, '台北市', 12, '北投區', '台北市北投區立德路15號1樓'),
(848, '奇岩', '121.501475', '25.126287', 1, '台北市', 12, '北投區', '台北市北投區崇仁路一段76號'),
(849, '明華', '121.519411', '25.10946', 1, '台北市', 12, '北投區', '台北市北投區明德路99號'),
(850, '明德', '121.520245', '25.109879', 1, '台北市', 12, '北投區', '台北市北投區明德路114號'),
(851, '東華', '121.517952', '25.116486', 1, '台北市', 12, '北投區', '台北市北投區裕民一路40巷1號'),
(852, '知心', '121.466162', '25.119251', 1, '台北市', 12, '北投區', '台北市北投區知行路185號1樓'),
(853, '金和', '121.499919', '25.14105', 1, '台北市', 12, '北投區', '台北市北投區中和街314號316號1樓'),
(854, '政戰', '121.496048', '25.136464', 1, '台北市', 12, '北投區', '台北市北投區中央北路二段15號17號'),
(855, '春天', '121.504344', '25.137204', 1, '台北市', 12, '北投區', '台北市北投區泉源路12-1號1樓'),
(856, '泉北', '121.504897', '25.135226', 1, '台北市', 12, '北投區', '台北市北投區溫泉路70號'),
(857, '泉源', '121.506521', '25.140187', 1, '台北市', 12, '北投區', '台北市北投區泉源路30號地下一樓'),
(858, '致遠', '121.512396', '25.114053', 1, '台北市', 12, '北投區', '台北市北投區石牌路一段126號'),
(859, '振華', '121.516329', '25.116865', 1, '台北市', 12, '北投區', '台北市北投區石牌路二段80號82號'),
(860, '振興醫', '121.522374', '25.117715', 1, '台北市', 12, '北投區', '台北市北投區振興街45號B1'),
(861, '商城', '121.517384', '25.11474', 1, '台北市', 12, '北投區', '台北市北投區裕民六路111號113號1樓'),
(862, '清江', '121.506649', '25.12899', 1, '台北市', 12, '北投區', '台北市北投區公館路165號1樓.165-1號B1'),
(863, '統勝', '121.514648', '25.11059', 1, '台北市', 12, '北投區', '台北市北投區自強街82號'),
(864, '富邦', '121.508177', '25.114959', 1, '台北市', 12, '北投區', '台北市北投區實踐街22號24號'),
(865, '復興崗', '121.494425', '25.137477', 1, '台北市', 12, '北投區', '台北市北投區中央北路二段68之2號68之3號'),
(866, '華碩二', '121.47041', '25.126562', 1, '台北市', 12, '北投區', '台北市北投區立德路115號3樓'),
(867, '陽明', '121.51332', '25.119674', 1, '台北市', 12, '北投區', '台北市北投區立農街二段155號1樓'),
(868, '新豪美', '121.517646', '25.10564', 1, '台北市', 12, '北投區', '台北市北投區文林北路98號100號'),
(869, '榮陽', '121.515748', '25.113651', 1, '台北市', 12, '北投區', '台北市北投區西安街一段345號1樓'),
(870, '榮總', '121.522754', '25.121492', 1, '台北市', 12, '北投區', '台北市北投區石牌路二段301號'),
(871, '榮護', '121.518185', '25.118622', 1, '台北市', 12, '北投區', '台北市北投區石牌路二段179號1樓'),
(872, '福致', '121.513637', '25.112015', 1, '台北市', 12, '北投區', '台北市北投區致遠一路二段49號51號1樓'),
(873, '福瀛', '121.505369', '25.120688', 1, '台北市', 12, '北投區', '台北市北投區西安街二段345號1樓'),
(874, '德致', '121.518749', '25.109047', 1, '台北市', 12, '北投區', '台北市北投區明德路87號89號1樓'),
(875, '擎天崗', '121.547476', '25.152493', 1, '台北市', 12, '北投區', '台北市北投區湖山路一段12號'),
(876, '薇閣', '121.499545', '25.134852', 1, '台北市', 12, '北投區', '台北市北投區中央北路一段108號'),
(877, '雙全', '121.500961', '25.137221', 1, '台北市', 12, '北投區', '台北市北投區中庸里大業路715-717號'),
(878, '懷得', '121.519656', '25.114096', 1, '台北市', 12, '北投區', '台北市北投區懷德街85號1樓'),
(879, '關渡', '121.467399', '25.121604', 1, '台北市', 12, '北投區', '台北市北投區知行路282號'),
(880, '關渡站', '121.467181', '25.125037', 1, '台北市', 12, '北投區', '台北市北投區大度路三段270巷69號71號1樓'),
(881, '鐏賢', '121.506854', '25.11754', 1, '台北市', 12, '北投區', '台北市北投區尊賢街247號'),
(882, '護專', '121.522299', '25.118001', 1, '台北市', 12, '北投區', '台北市北投區振興街31號');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bento`
--
ALTER TABLE `bento`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- 資料表索引 `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- 資料表索引 `cm_prod`
--
ALTER TABLE `cm_prod`
  ADD PRIMARY KEY (`cm_prod_id`),
  ADD KEY `member_id` (`mem_id`) USING BTREE;

--
-- 資料表索引 `cm_prod_mtl`
--
ALTER TABLE `cm_prod_mtl`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `cs_prod`
--
ALTER TABLE `cs_prod`
  ADD PRIMARY KEY (`pid`);

--
-- 資料表索引 `c_product_material`
--
ALTER TABLE `c_product_material`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `c_product_recommend`
--
ALTER TABLE `c_product_recommend`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `evnts`
--
ALTER TABLE `evnts`
  ADD PRIMARY KEY (`evnts_id`);

--
-- 資料表索引 `evnts_signup`
--
ALTER TABLE `evnts_signup`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- 資料表索引 `material_for_groups`
--
ALTER TABLE `material_for_groups`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `mem`
--
ALTER TABLE `mem`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `member_account` (`mem_account`);

--
-- 資料表索引 `mtl`
--
ALTER TABLE `mtl`
  ADD PRIMARY KEY (`mtl_id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 資料表索引 `sets`
--
ALTER TABLE `sets`
  ADD PRIMARY KEY (`set_id`);

--
-- 資料表索引 `set_ben_detail`
--
ALTER TABLE `set_ben_detail`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `set_meal`
--
ALTER TABLE `set_meal`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `set_order`
--
ALTER TABLE `set_order`
  ADD PRIMARY KEY (`set_order_id`);

--
-- 資料表索引 `share_comment`
--
ALTER TABLE `share_comment`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `share_hash`
--
ALTER TABLE `share_hash`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `share_img`
--
ALTER TABLE `share_img`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `share_item`
--
ALTER TABLE `share_item`
  ADD PRIMARY KEY (`share_item_id`);

--
-- 資料表索引 `share_like`
--
ALTER TABLE `share_like`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `share_save`
--
ALTER TABLE `share_save`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bento`
--
ALTER TABLE `bento`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=321;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '購物車ID', AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品訂單ID', AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cm_prod`
--
ALTER TABLE `cm_prod`
  MODIFY `cm_prod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客製化商品ID', AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cm_prod_mtl`
--
ALTER TABLE `cm_prod_mtl`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cs_prod`
--
ALTER TABLE `cs_prod`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'product sid', AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `c_product_material`
--
ALTER TABLE `c_product_material`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `c_product_recommend`
--
ALTER TABLE `c_product_recommend`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `evnts`
--
ALTER TABLE `evnts`
  MODIFY `evnts_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活動ID', AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `evnts_signup`
--
ALTER TABLE `evnts_signup`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號SID', AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '族群ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `material_for_groups`
--
ALTER TABLE `material_for_groups`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mem`
--
ALTER TABLE `mem`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '會員ID', AUTO_INCREMENT=201;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mtl`
--
ALTER TABLE `mtl`
  MODIFY `mtl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食材ID', AUTO_INCREMENT=47;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新聞ID', AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sets`
--
ALTER TABLE `sets`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐id', AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `set_ben_detail`
--
ALTER TABLE `set_ben_detail`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `set_meal`
--
ALTER TABLE `set_meal`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=101;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `set_order`
--
ALTER TABLE `set_order`
  MODIFY `set_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐id', AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_comment`
--
ALTER TABLE `share_comment`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=128;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_hash`
--
ALTER TABLE `share_hash`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=255;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_img`
--
ALTER TABLE `share_img`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_item`
--
ALTER TABLE `share_item`
  MODIFY `share_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '貼文id', AUTO_INCREMENT=51;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_like`
--
ALTER TABLE `share_like`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分享喜歡流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_save`
--
ALTER TABLE `share_save`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分享收藏sid', AUTO_INCREMENT=266;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '門市id', AUTO_INCREMENT=883;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
