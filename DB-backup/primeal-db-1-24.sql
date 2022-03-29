-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-01-24 13:36:23
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
-- 資料表結構 `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL COMMENT '購物車ID',
  `member_id` int(11) NOT NULL COMMENT '會員ID',
  `cart_value` int(11) DEFAULT NULL COMMENT '購物車折扣前總額',
  `cart_coupon` int(11) DEFAULT NULL COMMENT '購物車使用折扣點數',
  `cart_total_print_time` int(11) DEFAULT NULL COMMENT '購物車總印製時間',
  `cart_checkout_date` datetime DEFAULT NULL COMMENT '購物車結帳時間',
  `cart_status` varchar(255) NOT NULL COMMENT '購物車狀態',
  `cart_store` varchar(255) DEFAULT NULL COMMENT '購物車取貨門市',
  `cart_pickup_date` datetime DEFAULT NULL COMMENT '購物車取貨時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `classic_orders`
--

CREATE TABLE `classic_orders` (
  `c_orders_id` int(11) NOT NULL COMMENT '經典商品訂單ID',
  `cart_id` int(11) NOT NULL COMMENT '購物車ID',
  `member_id` int(11) NOT NULL COMMENT '會員ID',
  `c_product_id` int(11) NOT NULL COMMENT '經典商品ID',
  `c_orders_value` int(11) DEFAULT NULL COMMENT '經典商品單價',
  `c_orders_amount` int(11) DEFAULT NULL COMMENT '經典商品數量',
  `c_orders_category` varchar(255) NOT NULL COMMENT '經典商品類別',
  `c_orders_date` datetime NOT NULL COMMENT '經典商品加入購物車時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `classic_product`
--

CREATE TABLE `classic_product` (
  `c_product_id` int(11) NOT NULL COMMENT '經典商品ID',
  `c_product_name` varchar(255) NOT NULL COMMENT '經典商品名稱',
  `c_product_special_css_type` text DEFAULT NULL COMMENT '經典產品給前端的CSS語法',
  `c_product_value` int(11) NOT NULL COMMENT '經典產品單價',
  `c_product_discount` int(11) NOT NULL COMMENT '折數',
  `c_product_is_special_sale` tinyint(4) DEFAULT NULL COMMENT '有打折=1，沒打折=0',
  `c_product_print_time` int(11) NOT NULL COMMENT '壽司sh，甜點dz，禮盒bx',
  `c_product_description` varchar(255) NOT NULL COMMENT '經典產品詳細',
  `c_product_calories` int(11) NOT NULL COMMENT '經典產品熱量',
  `c_product_weight` int(11) NOT NULL COMMENT '經典商品重量',
  `c_product_img_path` varchar(255) NOT NULL COMMENT '經典產品圖片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `cm_product_material`
--

CREATE TABLE `cm_product_material` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `cm_product_id` int(11) NOT NULL COMMENT '經典產品ID',
  `material_id` int(11) NOT NULL COMMENT '外鍵-原物料ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `customized_orders`
--

CREATE TABLE `customized_orders` (
  `cm_orders_id` int(11) NOT NULL COMMENT '客製化產品訂單ID',
  `cart_id` int(11) NOT NULL COMMENT '購物車ID',
  `member_id` int(11) NOT NULL COMMENT '會員id',
  `cm_product_id` int(11) NOT NULL COMMENT '客製化產品ID',
  `cm_orders_value` int(11) DEFAULT NULL COMMENT '客製化產品金額',
  `cm_orders_amount` int(11) DEFAULT NULL COMMENT '客製化產品數量',
  `cm_orders_date` datetime NOT NULL COMMENT '客製化加入購物車時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `customized_product`
--

CREATE TABLE `customized_product` (
  `cm_product_id` int(11) NOT NULL COMMENT '客製化商品ID',
  `cm_product_name` varchar(255) NOT NULL COMMENT '客製化商品名稱',
  `cm_product_value` int(11) NOT NULL COMMENT '客製化商品售價',
  `cm_product_print_time` int(11) NOT NULL COMMENT '客製化商品印製時間',
  `cm_product_img_path` varchar(255) NOT NULL COMMENT '客製化圖片路徑',
  `member_id` int(11) NOT NULL COMMENT '外鍵-會員ID',
  `cm_product_edit_time` datetime NOT NULL COMMENT '客製化商品編輯時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- 資料表結構 `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL COMMENT '族群ID',
  `group_name` varchar(255) NOT NULL COMMENT '族群名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL COMMENT '食材ID',
  `material_name` varchar(255) NOT NULL COMMENT '食材名稱',
  `material_produce_date` date NOT NULL COMMENT '食材有效期限',
  `material_produce_process` varchar(255) NOT NULL COMMENT '食材的主要成分',
  `material_css_type` text DEFAULT NULL COMMENT '食材給前端的CSS語法',
  `material_img_path` varchar(255) DEFAULT NULL COMMENT '食材的圖片路徑',
  `material_value` int(11) NOT NULL COMMENT '食材單價',
  `material_print_time` int(11) NOT NULL COMMENT '食材印製時間',
  `material_discount` int(11) DEFAULT NULL COMMENT '食材折扣優惠',
  `material_3d_img_path` varchar(255) DEFAULT NULL COMMENT '食材3D材質圖片路徑',
  `material_3d_normalmap_img_path` varchar(255) DEFAULT NULL COMMENT '食材3D材質負片圖片路徑',
  `material_sugar` int(11) DEFAULT NULL COMMENT '營養成分-醣',
  `material_oil` int(11) DEFAULT NULL COMMENT '營養成分-脂肪',
  `material_protein` int(11) DEFAULT NULL COMMENT '營養成分-蛋白質',
  `material_carbo` int(11) DEFAULT NULL COMMENT '營養成分-碳水化合物',
  `material_na` int(11) DEFAULT NULL COMMENT '營養成分-納',
  `material_calories` int(11) NOT NULL COMMENT '營養成分-卡路里'
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
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL COMMENT '會員ID',
  `member_account` varchar(255) NOT NULL COMMENT '會員登入帳號',
  `member_password` varchar(20) NOT NULL COMMENT '會員登入密碼',
  `member_name` varchar(255) NOT NULL COMMENT '會員姓名',
  `member_nickname` varchar(20) DEFAULT NULL COMMENT '會員暱稱',
  `member_level` varchar(20) NOT NULL COMMENT '會員等級',
  `member_credit` int(11) DEFAULT NULL COMMENT '會員點數',
  `member_total_credit` int(11) DEFAULT NULL COMMENT '會員總積分',
  `member_coupon` int(11) DEFAULT NULL COMMENT '會員優惠卷',
  `member_mobile` varchar(255) NOT NULL COMMENT '會員手機',
  `member_address` varchar(255) NOT NULL COMMENT '會員地址',
  `member_email` varchar(255) NOT NULL COMMENT '會員郵件',
  `member_birthday` date DEFAULT NULL COMMENT '會員生日',
  `member_photo_img_path` varchar(255) DEFAULT NULL COMMENT '會員個人照片',
  `member_login_lastday` int(11) DEFAULT NULL COMMENT '會員最後打卡日',
  `member_login_total_day` int(11) DEFAULT NULL COMMENT '會員打卡總日',
  `member_creditcard_number` varchar(255) DEFAULT NULL COMMENT '會員信用卡號',
  `member_shares` varchar(255) DEFAULT NULL COMMENT '會員收藏',
  `member_lottery_by_day` tinyint(4) DEFAULT NULL COMMENT '會員每日抽獎與否',
  `member_create_date` datetime NOT NULL COMMENT '會員建立日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL COMMENT '新聞ID',
  `news_title` varchar(255) NOT NULL COMMENT '新聞標題',
  `news_category` varchar(255) NOT NULL COMMENT '產品分類',
  `news_start_date` date NOT NULL COMMENT '活動開始日期',
  `news_end_date` date DEFAULT NULL COMMENT '活動結束日期',
  `news_detail` text NOT NULL COMMENT '新聞內容',
  `news_edit_date` date DEFAULT NULL COMMENT '新聞編輯日期',
  `news_img_path` varchar(255) DEFAULT NULL COMMENT '圖片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `set`
--

CREATE TABLE `set` (
  `set_id` int(11) NOT NULL COMMENT '套餐id',
  `member_id` int(11) NOT NULL COMMENT '會員id',
  `set_name` varchar(255) NOT NULL COMMENT '套餐名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `set_meal`
--

CREATE TABLE `set_meal` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `set_id` int(11) NOT NULL COMMENT '套餐',
  `c_product_id` int(11) NOT NULL COMMENT '經典商品id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `set_orders`
--

CREATE TABLE `set_orders` (
  `set_id` int(11) NOT NULL COMMENT '套餐id',
  `cart_id` int(11) NOT NULL COMMENT '購物車id',
  `member_id` int(11) NOT NULL COMMENT '會員id',
  `set_orders_value` int(11) NOT NULL COMMENT '套餐訂單金額',
  `set_orders_amount` int(11) NOT NULL COMMENT '套餐訂單數量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- 資料表結構 `share_hash`
--

CREATE TABLE `share_hash` (
  `sid` int(11) NOT NULL COMMENT '流水號',
  `share_item_id` int(11) NOT NULL COMMENT '貼文id',
  `item_hash_1` varchar(255) DEFAULT NULL COMMENT '標籤01',
  `item_hash_2` varchar(255) DEFAULT NULL COMMENT '標籤02',
  `item_hash_3` varchar(255) DEFAULT NULL COMMENT '標籤03'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `share_img_path` varchar(255) DEFAULT NULL COMMENT '分享貼文圖片路徑',
  `share_desc` varchar(255) DEFAULT NULL COMMENT '貼文內容',
  `share_status` varchar(255) DEFAULT NULL COMMENT '貼文狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `item_save` tinyint(1) NOT NULL COMMENT '貼文收藏與否',
  `item_save_time` datetime NOT NULL COMMENT '貼文收藏時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL COMMENT '門市id',
  `store_name` varchar(255) NOT NULL COMMENT '門市名稱',
  `store_latitude` varchar(255) NOT NULL COMMENT '門市緯度',
  `store_longtitude` varchar(255) NOT NULL COMMENT '門市經度',
  `store_city` varchar(255) NOT NULL COMMENT '門市所在城市',
  `store_area` varchar(255) NOT NULL COMMENT '門市所在區域',
  `store_address` varchar(255) NOT NULL COMMENT '門市地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- 資料表索引 `classic_orders`
--
ALTER TABLE `classic_orders`
  ADD PRIMARY KEY (`c_orders_id`);

--
-- 資料表索引 `classic_product`
--
ALTER TABLE `classic_product`
  ADD PRIMARY KEY (`c_product_id`);

--
-- 資料表索引 `cm_product_material`
--
ALTER TABLE `cm_product_material`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `customized_orders`
--
ALTER TABLE `customized_orders`
  ADD PRIMARY KEY (`cm_orders_id`);

--
-- 資料表索引 `customized_product`
--
ALTER TABLE `customized_product`
  ADD PRIMARY KEY (`cm_product_id`),
  ADD UNIQUE KEY `member_id` (`member_id`);

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
-- 資料表索引 `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- 資料表索引 `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`);

--
-- 資料表索引 `material_for_groups`
--
ALTER TABLE `material_for_groups`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_account` (`member_account`),
  ADD UNIQUE KEY `member_email` (`member_email`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 資料表索引 `set`
--
ALTER TABLE `set`
  ADD PRIMARY KEY (`set_id`);

--
-- 資料表索引 `set_meal`
--
ALTER TABLE `set_meal`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `set_orders`
--
ALTER TABLE `set_orders`
  ADD PRIMARY KEY (`set_id`);

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '購物車ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `classic_orders`
--
ALTER TABLE `classic_orders`
  MODIFY `c_orders_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '經典商品訂單ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `classic_product`
--
ALTER TABLE `classic_product`
  MODIFY `c_product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '經典商品ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cm_product_material`
--
ALTER TABLE `cm_product_material`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customized_orders`
--
ALTER TABLE `customized_orders`
  MODIFY `cm_orders_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客製化產品訂單ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customized_product`
--
ALTER TABLE `customized_product`
  MODIFY `cm_product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客製化商品ID';

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '族群ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食材ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `material_for_groups`
--
ALTER TABLE `material_for_groups`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '會員ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新聞ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `set`
--
ALTER TABLE `set`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `set_meal`
--
ALTER TABLE `set_meal`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `set_orders`
--
ALTER TABLE `set_orders`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_comment`
--
ALTER TABLE `share_comment`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_hash`
--
ALTER TABLE `share_hash`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_item`
--
ALTER TABLE `share_item`
  MODIFY `share_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '貼文id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_like`
--
ALTER TABLE `share_like`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分享喜歡流水號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_save`
--
ALTER TABLE `share_save`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分享收藏sid';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '門市id';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
