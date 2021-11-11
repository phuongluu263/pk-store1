-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2021 lúc 02:01 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_lk_sql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ID_Admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `ID_Admin`) VALUES
('phuongdz', 'd0ce044f5604c9d0b257c04c7161a631', 3),
('phuong', '827ccb0eea8a706c4c34a16891f84e7b', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_dangky`
--

CREATE TABLE `admin_dangky` (
  `ID_Admin` int(11) NOT NULL,
  `usename` varchar(200) NOT NULL,
  `Chucvu` varchar(100) NOT NULL,
  `Sodienthoai` varchar(20) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `ID_Cart` int(11) NOT NULL,
  `ID_Khachhang` int(11) NOT NULL,
  `Code_Cart` varchar(20) NOT NULL,
  `Cart_Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`ID_Cart`, `ID_Khachhang`, `Code_Cart`, `Cart_Status`) VALUES
(1, 5, '5468', 1),
(2, 5, '2263', 1),
(3, 5, '3885', 1),
(4, 10, '9565', 0),
(5, 10, '1009', 0),
(6, 10, '90', 0),
(7, 10, '867', 0),
(8, 10, '1200', 0),
(9, 10, '8081', 0),
(10, 19, '6243', 1),
(11, 20, '102', 1),
(12, 10, '4184', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_luudon`
--

CREATE TABLE `cart_luudon` (
  `ID_Cart_Luudon` int(11) NOT NULL,
  `Code_Cart` varchar(20) NOT NULL,
  `ID_Sanpham` int(11) NOT NULL,
  `Soluongdon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_luudon`
--

INSERT INTO `cart_luudon` (`ID_Cart_Luudon`, `Code_Cart`, `ID_Sanpham`, `Soluongdon`) VALUES
(5, '9565', 21, 1),
(6, '1009', 20, 3),
(7, '1009', 18, 6),
(8, '867', 21, 2),
(9, '1200', 21, 4),
(10, '8081', 20, 1),
(11, '6243', 69, 2),
(12, '6243', 26, 1),
(13, '6243', 32, 1),
(14, '6243', 40, 1),
(15, '6243', 47, 1),
(16, '6243', 54, 1),
(17, '6243', 61, 1),
(18, '6243', 21, 1),
(19, '102', 24, 1),
(20, '102', 32, 1),
(21, '102', 40, 1),
(22, '102', 69, 1),
(23, '4184', 73, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangki`
--

CREATE TABLE `dangki` (
  `ID_Dangki` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(300) NOT NULL,
  `sodienthoai` varchar(20) NOT NULL,
  `matkhau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangki`
--

INSERT INTO `dangki` (`ID_Dangki`, `tenkhachhang`, `email`, `diachi`, `sodienthoai`, `matkhau`) VALUES
(10, 'Phương', 'luuthiphuongsbc263@gmail.com', 'TPHCM', '0901928315', '21232f297a57a5a743894a0e4a801fc3'),
(19, 'Kiệt', 'imissmyfamily27012001@gmail.com', 'Bình Thuận', '070726453', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'KiệtNgu', 'kiet@gmail.com', 'sadasd', '3213132', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucbaiviet`
--

CREATE TABLE `danhmucbaiviet` (
  `ID_Baiviet` int(11) NOT NULL,
  `tendanhmucbaiviet` varchar(300) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmucbaiviet`
--

INSERT INTO `danhmucbaiviet` (`ID_Baiviet`, `tendanhmucbaiviet`, `thutu`) VALUES
(5, 'Tin Tức', 10),
(6, 'Tin Hot', 0),
(7, 'Tin Hàng Nhập', 0),
(8, 'Tin Sản Phẩm', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `ID_Danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(50) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmucsp`
--

INSERT INTO `danhmucsp` (`ID_Danhmuc`, `tendanhmuc`, `thutu`) VALUES
(16, 'Volume', 10),
(17, 'Khung Sườn', 9),
(18, 'Main', 8),
(20, 'Pin', 1),
(21, 'Tai Nghe', 1),
(22, 'Ốp Lưng', 0),
(23, 'Cục Sạc Dự Phòng', 0),
(24, 'Dán Màn Hình', 0),
(25, 'Thẻ Nhớ USB', 0),
(26, 'Camera', 0),
(27, 'Phụ Kiện Chụp Ảnh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachsp`
--

CREATE TABLE `danhsachsp` (
  `ID_Danhsach` int(11) NOT NULL,
  `tensanpham` varchar(300) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` varchar(200) NOT NULL,
  `anhsanpham` varchar(50) NOT NULL,
  `mota` text NOT NULL,
  `tinhtrang` varchar(50) NOT NULL,
  `ID_Danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachsp`
--

INSERT INTO `danhsachsp` (`ID_Danhsach`, `tensanpham`, `soluong`, `giaban`, `anhsanpham`, `mota`, `tinhtrang`, `ID_Danhmuc`) VALUES
(17, 'Pin Samsung S10', 10, '230000', '1635940133_pin-removebg-preview.png', '<p>pin tốt</p>\r\n', '1', 20),
(18, 'Dây  nguồn volume', 5, '160000', '1635939906_daynguon-removebg-preview.png', '<p>h&agrave;ng tốt</p>\r\n', '1', 16),
(19, 'Khung Sườn Điện Thoại', 50, '400000', '1635940118_khungsuon-removebg-preview.png', '<p>good</p>\r\n', '1', 17),
(20, 'Main Samsung S10', 5, '850000', '1635940103_main-removebg-preview.png', '<p>h&agrave;ng nhập khẩu</p>\r\n', '0', 18),
(21, 'Màn Hình Samsung S10', 2, '2700000', '1635940088_manhinh-removebg-preview.png', '', '1', 17),
(22, 'Tay Cầm Chống Rung DJI OM 4', 50, '2990000', '1635941825_image-removebg-preview.png', '<p>H&agrave;ng Tốt</p>\r\n', '1', 27),
(23, 'Tay Cầm Chống Rung Feiyu Vimble 2S', 50, '1590000', '1635941969_image-removebg-preview (1).png', '<p>H&agrave;ng chất lượng cao</p>\r\n', '1', 27),
(24, 'Tay Cầm Chống Rung DJI RSC 2 Pro Combo', 30, '14500000', '1635942075_image-removebg-preview (2).png', '<p>H&agrave;ng Cao Cấp</p>\r\n', '1', 27),
(25, 'Tay cầm chống rung Feiyu Vimble One cho điện thoại', 100, '790000', '1635942184_image-removebg-preview (3).png', '<p>Made In VietNam Chất Lượng Cao&nbsp;</p>\r\n', '1', 27),
(26, 'Tay cầm chống rung Zhiyun Q3', 100, '2100000', '1635942253_image-removebg-preview (4).png', '<p>H&agrave;ng Tốt</p>\r\n', '1', 27),
(27, 'Chân gắn 3 chiều cho GoPro', 210, '1790000', '1635942338_image-removebg-preview (5).png', '<p>H&agrave;ng Zin Bảo Đảm</p>\r\n', '1', 27),
(28, 'Tay cầm chống rung Hohem iSteady Multi ( Hàng Sắp Về )', 300, '2600000', '1635942480_image-removebg-preview (6).png', '<p>H&agrave;ng Nhập</p>\r\n', '1', 27),
(29, 'Tay cầm chống rung DJI Ronin-SC ( Sắp Về Hàng )', 500, '8690000', '1635942649_image-removebg-preview (7).png', '<p>H&agrave;ng Nhập Khẩu</p>\r\n', '1', 27),
(30, 'Tay Cầm Chống Rung DJI Osmo Mobile 3 combo ( Sắp Về Hàng )', 500, '1890000', '1635942778_image-removebg-preview (8).png', '<p>H&agrave;ng Nhập</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 27),
(31, 'Camera hành trình Gopro Hero 9', 100, '10590000', '1635943757_image-removebg-preview.png', '<p>h&agrave;ng tốt</p>\r\n', '1', 26),
(32, 'Camera hành trình Gopro Hero 10', 100, '13990000', '1635943854_image-removebg-preview (1).png', '<p>H&agrave;ng Cao Cấp</p>\r\n', '1', 26),
(33, 'Camera IP Hồng ngoại WIFI EZVIZ C6N 1080p 2MP', 100, '580000', '1635943984_image-removebg-preview (2).png', '<p>Rất Tốt</p>\r\n', '1', 26),
(34, 'Camera Xiaomi Mi Home Security 360 - 1080P BHR4885GL', 1000, '790000', '1635945194_image-removebg-preview (3).png', '<p>H&agrave;ng Cao Cấp</p>\r\n', '1', 26),
(35, 'Camera Xiaomi Mi Home Sercurity 2K Pro', 1000, '1290000', '1635945277_image-removebg-preview (4).png', '<p>H&agrave;ng Xịn</p>\r\n', '1', 26),
(36, 'Camera hành động DJI Osmo Action 2 Combo', 500, '12990000', '1635945394_image-removebg-preview (5).png', '<p>Chất Lượng Tốt Cao Cấp, Sang Chảnh</p>\r\n', '1', 26),
(37, 'Màn hình giải trí Android Lenovo + Vietmap D1 Pro 9 inch', 500, '14990000', '1635945523_image-removebg-preview (6).png', '<p>Chất Lượng 4K Full HD</p>\r\n', '1', 26),
(38, 'Thẻ nhớ SanDisk Class 10 64GB 100MB/s', 10000, '200000', '1635947314_image-removebg-preview.png', '<p>Dung Lượng Khủng</p>\r\n', '1', 25),
(39, 'USB OTG 3.1 Sandisk Ultra Dual Drive Type-C DDC4 128GB', 1000, '590000', '1635947759_image-removebg-preview (1).png', '<p>Dung Lượng Tr&acirc;u</p>\r\n', '1', 25),
(40, 'Thẻ nhớ Micro SDXC Sandisk Extreme V30 A2 160MB/S 512GB', 5000, '2270000', '1635947859_image-removebg-preview (2).png', '<p>Cực Khủng</p>\r\n', '1', 25),
(41, 'Thẻ nhớ Samsung 512GB 100Mbs', 19000, '1950000', '1635947970_image-removebg-preview (3).png', '<p>Cực Xịn</p>\r\n', '1', 25),
(42, 'USB 3.0 Sandisk CZ73 Ultra Flair 256GB', 10000, '750000', '1635948060_image-removebg-preview (4).png', '<p>Tốt</p>\r\n', '1', 25),
(43, 'Dán cường lực iPhone 13 / 13 Pro ANANK', 100000, '270000', '1635948292_image-removebg-preview (5).png', '<p>H&agrave;ng Tốt</p>\r\n', '1', 24),
(44, 'Dán cường lực iPhone 13 mini Kingkong', 200000, '230000', '1635948441_image-removebg-preview.png', '<p>Tốt</p>\r\n', '1', 24),
(45, 'Dán cường lực iPad mini 6 Zeelot', 50000, '490000', '1635948596_image-removebg-preview (1).png', '<p>Tốt</p>\r\n', '1', 24),
(46, 'Dán cường lực iPad mini 6 S-case', 100000, '200000', '1635948636_image-removebg-preview (2).png', '<p>Tốt</p>\r\n', '1', 24),
(47, 'Miếng dán cường lực cho iPhone 11 Pro Max MiPow Kingbull HD Premium', 100000, '390000', '1635948830_image-removebg-preview (3).png', '<p>Cao Cấp</p>\r\n', '1', 24),
(48, 'Dán PPF nhám full mặt sau Samsung Galaxy cho S20 Plus', 100000, '150000', '1635948919_image-removebg-preview (4).png', '<p>Tốt</p>\r\n', '1', 24),
(49, 'Dán màn hình ESR Paper Like cho iPad Pro 12.9 2021/2020', 100000, '590000', '1635949025_image-removebg-preview (5).png', '<p>Xịn</p>\r\n', '1', 24),
(50, 'Pin sạc dự phòng Xiaomi Redmi 20000mah sạc nhanh 18W', 20000, '450000', '1635949536_image-removebg-preview (6).png', '<p>Tốt</p>\r\n', '1', 23),
(51, 'Pin sạc dự phòng ENERGIZER vỏ vải FABRIC 20.000mAh - UE20043', 100000, '590000', '1635949610_image-removebg-preview (7).png', '<p>Tốt</p>\r\n', '1', 23),
(52, 'Pin dự phòng 10000mAh tích hợp sạc không dây 5W Energizer QE10007', 102020, '550000', '1635949720_image-removebg-preview (8).png', '<p>Tốt</p>\r\n', '1', 23),
(53, 'Pin dự phòng Aukey 15000mAh PB-Y39 Q.C 3.0 Power Delivery', 101010, '630000', '1635949788_image-removebg-preview (9).png', '<p>Khủng</p>\r\n', '1', 23),
(54, 'Pin dự phòng AUKEY PB-XD26 26800mAh USB-C Quick Charge 3.0 Đen', 50000, '1290000', '1635949871_image-removebg-preview (10).png', '<p>Mạnh</p>\r\n', '1', 23),
(55, 'Pin sạc dự phòng Anker Power 3 20000mAh B2B A1268', 670000, '990000', '1635949937_image-removebg-preview (11).png', '<p>Khủng</p>\r\n', '1', 23),
(56, 'Pin sạc dự phòng iWalk Uba1200p 12000mAh 6 in 1', 100000, '690000', '1635950001_image-removebg-preview (12).png', '<p>Tốt</p>\r\n', '1', 23),
(57, 'Ốp lưng Samsung Galaxy Z Flip3 Silicone Cover with Ring', 100000, '891000', '1635950890_image-removebg-preview (13).png', '<p>Đẹp, Xịn</p>\r\n', '1', 22),
(58, 'Ốp lưng Samsung Galaxy Z Fold3 Silicone Cover', 100000, '891000', '1635951020_image-removebg-preview (14).png', '<p>Xịn</p>\r\n', '1', 22),
(59, 'Ốp lưng Apple Silicone cho iPhone 11 chính hãng', 100000, '1090000', '1635951505_image-removebg-preview (15).png', '<p>Xịn</p>\r\n', '1', 22),
(60, 'Bao da Samsung Galaxy S21 Ultra Clearview kèm S-Pen', 100000, '1290000', '1635951957_image-removebg-preview (16).png', '<p>Xịn X&ograve;</p>\r\n', '1', 22),
(61, 'Ốp lưng iPhone 13 Pro Max Nillkin CamShield Pro', 100000, '896000', '1635952044_image-removebg-preview (17).png', '<p>Xịn</p>\r\n', '1', 22),
(62, 'Ốp lưng MagSafe iPhone 13 Pro Max Gear4 D3O Milan', 100000, '1200000', '1635952128_image-removebg-preview (18).png', '<p>Đẹp</p>\r\n', '1', 22),
(63, 'Bao da kiêm bàn phím cho Samsung Galaxy Tab S7 Plus', 49900, '4990000', '1635952233_image-removebg-preview (19).png', '<p>Cực Xịn V&agrave; Sang</p>\r\n', '1', 22),
(64, 'Tai nghe Bluetooth Apple AirPods Pro VN/A', 100000, '7990000', '1635953081_image-removebg-preview (20).png', '<p>Xịn</p>\r\n', '1', 21),
(65, 'Tai nghe Bluetooth Apple AirPods 3', 10000, '4990000', '1635953440_image-removebg-preview (21).png', '<p>Xịn V&agrave; Sang Chảnh</p>\r\n', '1', 21),
(66, 'Tai nghe không dây Samsung Galaxy Buds 2', 10000, '2990000', '1635953516_image-removebg-preview (22).png', '<p>Xịn</p>\r\n', '1', 21),
(67, 'Tai nghe không dây chống ồn Sony WF-1000XM3', 10000, '3790000', '1635953669_image-removebg-preview (23).png', '<p>Đẹp V&agrave; Sang</p>\r\n', '1', 21),
(68, 'Tai nghe chụp tai Sony WH-1000XM4', 12000, '6490000', '1635953758_image-removebg-preview (24).png', '<p>Cực Kỳ Tốt</p>\r\n', '1', 21),
(69, 'Tai nghe chụp tai chống ồn Apple AirPods Max | Chính hãng Apple Việt Nam', 10000, '12200000', '1635953841_image-removebg-preview (25).png', '<p>H&agrave;ng Ch&iacute;nh H&atilde;ng Cực Tốt</p>\r\n', '1', 21),
(70, 'Tai nghe chụp tai Gaming Havit HV-H2232D', 50000, '450000', '1635953916_image-removebg-preview (26).png', '<p>Xịn X&ograve;</p>\r\n', '1', 21),
(71, 'Tai nghe chụp tai Sennheiser HD 458T', 10000, '3490000', '1635954000_image-removebg-preview (27).png', '<p>Cực Tốt</p>\r\n', '1', 21),
(72, 'Tai nghe Rog Cetra Chính Hãng', 100000, '1490000', '1635954081_image-removebg-preview (28).png', '<p>Đẹp</p>\r\n', '1', 21),
(73, 'Tai nghe Asus Rog Cetra 2 Core', 100000, '1125000', '1635954148_image-removebg-preview (29).png', '<p>Vip V&agrave; Đỉnh</p>\r\n', '1', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsbaiviet`
--

CREATE TABLE `dsbaiviet` (
  `ID_Dsbaiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(300) NOT NULL,
  `mota` text NOT NULL,
  `ID_danhmucbaiviet` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dsbaiviet`
--

INSERT INTO `dsbaiviet` (`ID_Dsbaiviet`, `tenbaiviet`, `mota`, `ID_danhmucbaiviet`, `tinhtrang`, `hinhanh`) VALUES
(4, 'Loạt phụ kiện giá mềm cho siêu phẩm Apple vừa ra mắt', '<h2>iPhone 13 đ&atilde; rục rịch l&ecirc;n kệ ở khắp nơi, chuẩn bị tinh thần sắm th&ecirc;m loạt phụ kiện sale &ldquo;tới bến&rdquo; d&ugrave;ng cho đ&atilde;.</h2>\r\n\r\n<p>Mỗi m&ugrave;a iPhone ra mắt l&agrave; t&iacute;n đồ c&ocirc;ng nghệ được dịp &quot;rần rần&quot;. Nếu bạn đ&atilde; c&oacute; kế hoạch &quot;tậu&quot; về một item n&agrave;o của Apple th&igrave; cũng n&ecirc;n chuẩn bị những phụ kiện đi k&egrave;m để ph&ograve;ng khi cần k&iacute;p th&igrave; c&oacute; ngay. Dưới đ&acirc;y l&agrave; những gợi &yacute; phụ kiện hay ho cho bạn để bổ sung v&agrave;o bộ sưu tập c&ocirc;ng nghệ. Loạt sản phẩm b&aacute;n kh&aacute; chạy, lại c&ograve;n đang ưu đ&atilde;i nhiệt t&igrave;nh tr&ecirc;n Lazada cuối th&aacute;ng n&agrave;y th&igrave; ngại g&igrave; kh&ocirc;ng chốt đơn ngay v&agrave; lu&ocirc;n n&agrave;o!</p>\r\n\r\n<p><strong>Hub chuyển đổi USB Type-C Ugreen cho Macbook</strong></p>\r\n\r\n<p><img alt=\"Loạt phụ kiện giá mềm cho siêu phẩm Apple vừa ra mắt - Ảnh 1.\" src=\"https://channel.mediacdn.vn/thumb_w/640/2021/9/27/photo-1-1632737771765739897704.jpg\" style=\"height:250px; width:340px\" /></p>\r\n\r\n<p>D&ugrave; đ&atilde; sở hữu hay đang l&ecirc;n kế hoạch &quot;tậu&quot; một em Macbook th&igrave; bạn cũng n&ecirc;n c&acirc;n nhắc đến việc rinh về lu&ocirc;n hub chuyển đổi đa năng. L&iacute; do l&agrave; c&aacute;c cổng kết nối của Macbook &iacute;t khi tương th&iacute;ch với c&aacute;c thiết bị như m&aacute;y chiếu, thẻ nhớ, &hellip; Bạn c&oacute; thể tham khảo ngay bộ hub ch&iacute;nh h&atilde;ng của Ugreen. Hub chuyển đổi USB Type-C Ugreen cho ph&eacute;p kết nối với nhiều giải ph&aacute;p đầu ra như HDMI 4K UHD, ổ flash USB, ổ cứng, b&agrave;n ph&iacute;m, chuột, m&aacute;y in, đầu đọc thẻ nhớ SD, &hellip; Sản phẩm cũng c&oacute; khả năng tương th&iacute;ch rộng r&atilde;i với nhiều loại laptop v&agrave; bảo h&agrave;nh ch&iacute;nh h&atilde;ng 1 đổi 1 trong 18 th&aacute;ng. Truy cập ngay Lazada để hưởng mức ưu đ&atilde;i sale 42% từ 1.980.000đ c&ograve;n 1.151.800đ cho chiếc hub chuyển đổi đa năng n&agrave;y.</p>\r\n\r\n<p><strong>Combo gi&aacute; đỡ v&agrave; l&oacute;t chuột cho Macbook</strong></p>\r\n\r\n<p><img alt=\"Loạt phụ kiện giá mềm cho siêu phẩm Apple vừa ra mắt - Ảnh 2.\" src=\"https://channel.mediacdn.vn/thumb_w/640/2021/9/27/anh-2-16327414504441972801498.png\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p><img alt=\"Loạt phụ kiện giá mềm cho siêu phẩm Apple vừa ra mắt - Ảnh 3.\" src=\"https://channel.mediacdn.vn/2021/9/27/image007-16327379318581283110466.png\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; item &quot;must-have&quot; cho d&acirc;n văn ph&ograve;ng ch&uacute;ng ta. Gi&aacute; đỡ laptop gi&uacute;p duy tr&igrave; được tư thế ngồi thẳng, bảo vệ cột sống cho anh em phải ngồi m&aacute;y t&iacute;nh nhiều. Đi c&ugrave;ng đ&oacute; l&agrave; miếng l&oacute;t chuột với mặt cao su chống trơn trượt gi&uacute;p thao t&aacute;c di chuột dễ d&agrave;ng. Hai m&oacute;n n&agrave;y giờ c&ograve;n được mua h&agrave;ng ch&iacute;nh h&atilde;ng với gi&aacute; giảm tới 37% chỉ c&ograve;n 169.000đ th&igrave; c&ograve;n g&igrave; bằng?</p>\r\n\r\n<p><strong>Combo chuột v&agrave; b&agrave;n ph&iacute;m Logitech cho iPhone, iPad</strong></p>\r\n\r\n<p><img alt=\"Loạt phụ kiện giá mềm cho siêu phẩm Apple vừa ra mắt - Ảnh 4.\" src=\"https://channel.mediacdn.vn/thumb_w/640/2021/9/27/photo-2-1632737773772781421765.jpg\" style=\"height:100px; width:340px\" /></p>\r\n\r\n<p>1 combo phụ kiện kh&aacute;c cần thiết kh&ocirc;ng k&eacute;m nhưng lại ph&ugrave; hợp để d&ugrave;ng với iPhone, iPad. B&agrave;n ph&iacute;m Logitech K580 v&agrave; chuột MX Master (2S/3S v&agrave; For Mac) l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng 100%, chất lượng cực cao, thiết kế đẹp mắt, th&ocirc;ng minh để d&ugrave;ng l&acirc;u kh&ocirc;ng mỏi tay. Đặc biệt b&agrave;n ph&iacute;m c&ograve;n c&oacute; gi&aacute; đỡ điện thoại cực tiện cho anh em n&agrave;o cần l&agrave;m việc &quot;multitask&quot;. Cặp đ&ocirc;i n&agrave;y đang nhận mức giảm 25% c&ograve;n 2.249.000đ th&ocirc;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 8, 1, '1636013903_image007-16327379318581283110466.png'),
(5, 'Phụ kiện Huawei - \"Vaccine\" vui khỏe, lạc quan giữa mùa dịch', '<h2>Thời gian ở nh&agrave; gi&uacute;p nhiều người sống t&iacute;ch cực hơn, tập trung n&acirc;ng cao sức khỏe thể chất lẫn tinh thần th&ocirc;ng qua c&aacute;c b&agrave;i tập thể dục hay th&uacute; vui giải tr&iacute; từng được xem l&agrave; xa xỉ giữa nhịp sống hối hả thường nhật.</h2>\r\n\r\n<p><strong>Gia tăng sức mạnh thể chất</strong></p>\r\n\r\n<p>Kh&ocirc;ng c&ograve;n bỡ ngỡ như giai đoạn đầu siết chặt gi&atilde;n c&aacute;ch, nhiều người đ&atilde; quen dần với cuộc sống ở nh&agrave; to&agrave;n thời gian. Họ b&agrave;y tr&iacute; lại g&oacute;c l&agrave;m việc tại gia để n&acirc;ng cao sự tập trung, đầu tư cho căn bếp để sẵn s&agrave;ng &quot;trường kỳ kh&aacute;ng chiến&quot; khi h&agrave;ng qu&aacute;n tạm đ&oacute;ng cửa. Kh&ocirc;ng c&ograve;n huấn luyện vi&ecirc;n c&aacute; nh&acirc;n đốc th&uacute;c, c&aacute;c nền tảng mạng x&atilde; hội trở th&agrave;nh bạn đồng h&agrave;nh trong c&aacute;c buổi tập luyện mướt mải mồ h&ocirc;i.</p>\r\n\r\n<p>Những thiết bị đeo tay th&ocirc;ng minh cũng đồng h&agrave;nh c&ugrave;ng t&iacute;n đồ thể thao trong việc cung cấp c&aacute;c b&agrave;i tập, đếm nhịp v&agrave; thống k&ecirc; chỉ số sức khỏe. Điều n&agrave;y kh&ocirc;ng chỉ gi&uacute;p buổi tập trở n&ecirc;n hiệu quả hơn m&agrave; c&ograve;n khiến kh&ocirc;ng &iacute;t người cảm thấy h&agrave;o hứng, tr&agrave;n đầy sức sống. C&aacute;c mẫu v&ograve;ng tay thể thao như HUAWEI Band 6 được đ&ocirc;ng đảo người d&ugrave;ng đ&oacute;n nhận nhờ khả năng theo d&otilde;i SpO2 suốt cả ng&agrave;y, đếm nhịp tim, quản l&yacute; giấc ngủ v&agrave; hỗ trợ tập luyện thể thao. Trong khi đ&oacute;, những mẫu đồng hồ th&ocirc;ng minh như HUAWEI Watch GT 2 v&agrave; Watch 3 nhận được sự y&ecirc;u th&iacute;ch của cả người y&ecirc;u thể thao v&agrave; thời trang.</p>\r\n\r\n<p>Sở hữu mức gi&aacute; phải chăng nhưng c&oacute; khả năng theo d&otilde;i nồng độ SpO2 suốt cả ng&agrave;y của Band 6 l&agrave; một điểm cộng lớn trong m&ugrave;a dịch n&agrave;y. Chiếc v&ograve;ng tay &quot;nhỏ m&agrave; c&oacute; v&otilde;&quot; lu&ocirc;n theo s&aacute;t trong qu&aacute; tr&igrave;nh người d&ugrave;ng tập luyện thể dục, h&iacute;t thở để đưa cơ thể trở về trạng th&aacute;i c&acirc;n bằng với 96 chế độ luyện tập.</p>\r\n\r\n<p><strong>T&igrave;m lạc quan trong thế giới giải tr&iacute;</strong></p>\r\n\r\n<p>B&ecirc;n cạnh việc t&igrave;m niềm vui th&ocirc;ng qua c&aacute;c hoạt động thể chất, thế giới giải tr&iacute; cũng g&oacute;p phần truyền tải cảm x&uacute;c lạc quan, t&iacute;ch cực đến nhiều người trong những ng&agrave;y ở nh&agrave;.</p>\r\n\r\n<p><img alt=\"Phụ kiện Huawei - Vaccine vui khỏe, lạc quan giữa mùa dịch - Ảnh 3.\" src=\"https://channel.mediacdn.vn/2021/9/16/photo-2-16317808236631094261601.jpg\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p>Học tập v&agrave; giải tr&iacute; tại nh&agrave; một c&aacute;ch tuyệt vời với tai nghe FreeBuds 4i</p>\r\n\r\n<p>Chỉ với một chiếc điện thoại c&ugrave;ng cặp tai nghe kh&ocirc;ng d&acirc;y c&oacute; chức năng chống ồn chủ động ANC như HUAWEI FreeBuds 4i l&agrave; bạn đ&atilde; c&oacute; thể thoải m&aacute;i đắm ch&igrave;m trong kh&ocirc;ng gian giải tr&iacute; của ri&ecirc;ng m&igrave;nh. Những ng&agrave;y mưa m&agrave; đeo chiếc tai nghe nhẹ như kh&ocirc;ng, lắng nghe chất &acirc;m tinh tế được xử l&yacute; qua tr&igrave;nh điều khiển động 10mm v&agrave; m&agrave;ng loa tổng hợp si&ecirc;u nhạy bằng polyme thế n&agrave;y th&igrave; c&ograve;n g&igrave; tuyệt bằng. Điểm cộng lớn của FreeBuds 4i c&ograve;n nằm ở c&aacute;ch kết nối linh hoạt, chỉ cần mở hộp tai nghe l&agrave; n&oacute; đ&atilde; tự động nhận diện v&agrave; kết nối với thiết bị từng gh&eacute;p đ&ocirc;i trước đ&oacute;.</p>\r\n\r\n<p><img alt=\"Phụ kiện Huawei - Vaccine vui khỏe, lạc quan giữa mùa dịch - Ảnh 4.\" src=\"https://channel.mediacdn.vn/2021/9/16/photo-3-1631780823665817595742.jpg\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p>Tai nghe FreeBuds 4 ph&ugrave; hợp cho trải nghiệm &acirc;m thanh đẳng cấp trong mọi điều kiện v&agrave; m&ocirc;i trường.</p>\r\n\r\n<p>Những người muốn t&igrave;m kiếm c&aacute;c mẫu tai nghe cao cấp hơn cũng c&oacute; thể c&acirc;n nhắc d&ograve;ng FreeBuds 4 như một lựa chọn tuyệt vời. Những t&iacute;nh năng vượt trội như Chống ồn chủ động thiết kế mở 2.0 hay c&ocirc;ng nghệ chủ động th&iacute;ch ứng khu&ocirc;n tai (AEM), &acirc;m thanh độ ph&acirc;n giải cao&hellip; sẽ mang đến những trải nghiệm &acirc;m thanh kh&oacute; qu&ecirc;n cho người d&ugrave;ng.</p>\r\n\r\n<p>Trong khi đ&oacute;, FreeBuds Pro lại được t&iacute;ch hợp t&iacute;nh năng chống ồn chủ động th&ocirc;ng minh với ba chế độ: chống ồn th&ocirc;ng thường, chống ồn nhỏ ấm &aacute;p v&agrave; chống ồn lớn si&ecirc;u cấp. C&aacute;c chế độ n&agrave;y sẽ tự động điều chỉnh ph&ugrave; hợp với m&ocirc;i trường xung quanh, mang lại sự thoải m&aacute;i v&agrave; y&ecirc;n tĩnh tối đa cho người d&ugrave;ng .</p>\r\n\r\n<p>Reviewer Tony Ph&ugrave;ng d&agrave;nh nhiều lời khen cho c&aacute;c mẫu tai nghe của HUAWEI: &quot;X&eacute;t về chất &acirc;m v&agrave; khả năng chống ồn, d&ograve;ng FreeBuds đang l&agrave;m rất tốt. N&oacute; th&ocirc;ng minh đến mức nhận diện được đ&acirc;u l&agrave; gi&oacute;, đ&acirc;u l&agrave; giọng n&oacute;i hay tiếng ồn để c&oacute; những điều chỉnh tốt nhất cho cảm gi&aacute;c nghe khi xem phim, chơi game hay luyện tập thể thao của m&igrave;nh&quot;.</p>\r\n', 8, 1, '1636015338_images.jpg'),
(6, 'Dàn phụ kiện cực hấp dẫn của Galaxy Z Flip3 - Nhìn là biết độ sang chảnh', '<h2>Chắc bạn cũng đ&atilde; biết, mạng x&atilde; hội mấy h&ocirc;m nay đang hot r&acirc;m ran chủ đề &quot;Galaxy Z Series về tay&quot; khiến c&aacute;c t&iacute;n đồ c&ocirc;ng nghệ kh&ocirc;ng thể bỏ lỡ.</h2>\r\n\r\n<p>Cụ thể hơn, sau sự kiện ra mắt trực tuyến, sức h&uacute;t của bộ đ&ocirc;i m&agrave;n h&igrave;nh gập từ nh&agrave; Samsung c&agrave;ng g&acirc;y nhiều sự quan t&acirc;m hơn nhờ những n&acirc;ng cấp mạnh mẽ về mặt c&ocirc;ng nghệ, t&iacute;nh năng, độ bền cũng như trải nghiệm sử dụng.</p>\r\n\r\n<p>Sau nhiều ng&agrave;y chờ đợi, cuối c&ugrave;ng si&ecirc;u phẩm Galaxy Z Flip3 đ&atilde; ch&iacute;nh thức đến tay kh&aacute;ch h&agrave;ng trong niềm vui v&agrave; sự phấn kh&iacute;ch khi sở hữu cho m&igrave;nh si&ecirc;u phẩm smartphone m&agrave;n h&igrave;nh gập c&oacute; thiết kế hấp dẫn nhất năm nay.</p>\r\n\r\n<p><img alt=\"Dàn phụ kiện cực hấp dẫn của Galaxy Z Flip3 - Nhìn là biết độ sang chảnh - Ảnh 1.\" src=\"https://channel.mediacdn.vn/thumb_w/640/2021/10/7/photo-1-1633575630245822298637.jpg\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p>Ngay khi vừa nhận được, Galaxy Z Flip3 đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh đề t&agrave;i n&oacute;ng hổi tr&ecirc;n c&aacute;c group thảo luận. Hơn h&agrave;ng chục những b&agrave;i đăng unbox &lsquo;chiến lợi phẩm&#39; bằng nhiều nội dung kh&aacute;c nhau từ dạng video đập hộp, h&igrave;nh ảnh check-in được đầu tư xịn s&ograve; v&agrave; những c&aacute;ch s&aacute;ng tạo hơn thế nữa.</p>\r\n\r\n<p>Từ Facebook đến TikTok đ&acirc;u đ&acirc;u cũng ngập tr&agrave;n m&agrave;n unbox Galaxy Z Flip3 chứng tỏ độ hot của si&ecirc;u phẩm m&agrave;n h&igrave;nh gập n&agrave;y &quot;kh&ocirc;ng phải dạng vừa đ&acirc;u&quot;.</p>\r\n\r\n<p><img alt=\"Dàn phụ kiện cực hấp dẫn của Galaxy Z Flip3 - Nhìn là biết độ sang chảnh - Ảnh 3.\" src=\"https://channel.mediacdn.vn/2021/10/7/ezgifcom-gif-maker-6-16335783990832034782856.gif\" /></p>\r\n\r\n<p>Nguồn: TikTok</p>\r\n\r\n<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; chiếc smartphone m&agrave;n h&igrave;nh gập n&agrave;y lại trở n&ecirc;n thịnh h&agrave;nh như thế. Sở hữu một thiết kế độc đ&aacute;o mang t&iacute;nh thẩm mỹ cao, b&ecirc;n cạnh đ&oacute; Galaxy Z Flip3 c&ograve;n t&aacute;c động mạnh mẽ về mặt c&ocirc;ng nghệ. Phần bản lề linh hoạt kh&ocirc;ng những gi&uacute;p gập mở ở nhiều g&oacute;c độ đa dạng m&agrave; n&oacute; c&ograve;n mang t&iacute;nh ứng dụng cao. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i s&aacute;ng tạo nội dung, tr&ograve; chuyện rảnh tay, chụp ảnh một chạm hay thậm ch&iacute; livestream kh&ocirc;ng cần tripod nhờ chế độ Flex Mode độc đ&aacute;o tr&ecirc;n Z Flip3.</p>\r\n\r\n<p>Những t&iacute;nh năng n&agrave;y dường như chỉ l&agrave; phụ, khi m&agrave; giờ đ&acirc;y hội chị em đang ph&aacute;t cuồng với d&agrave;n phụ kiện đi k&egrave;m cực hấp dẫn. Phải kể đến l&agrave; loạt ốp lưng sang, xịn, mịn với đủ mọi thể loại kh&aacute;c nhau. D&ugrave; chọn phong c&aacute;ch vương giả, qu&yacute; tộc hay nữ t&iacute;nh, mềm mại đều c&oacute; thể biến tấu với Galaxy Z Flip3 một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><img alt=\"Dàn phụ kiện cực hấp dẫn của Galaxy Z Flip3 - Nhìn là biết độ sang chảnh - Ảnh 4.\" src=\"https://channel.mediacdn.vn/thumb_w/640/2021/10/7/photo-2-1633575632445929624475.jpg\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p>Những chiếc ốp lưng của Z Flip3 được custom cầu kỳ v&agrave; sang chảnh từ những thương hiệu lớn ph&ugrave; hợp với đối tượng kh&aacute;ch h&agrave;ng chuộng phong c&aacute;ch qu&yacute; tộc v&agrave; đẳng cấp.</p>\r\n', 8, 1, '1636015831_tải xuống (1).jpg'),
(7, 'Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay', '<h2>Đừng để việc học tập của bạn bị gi&aacute;n đoạn v&igrave; điện thoại hết pin, tai nghe c&oacute; vấn đề, phụ kiện đang rẻ thế n&agrave;y hốt ngay đi c&ograve;n chần chừ g&igrave;!</h2>\r\n\r\n<p><strong>Pin sạc dự ph&ograve;ng Golf Candy 10.000mAh G80 giảm từ 380.000đ xuống c&ograve;n 150.000đ</strong></p>\r\n\r\n<p><em><a href=\"https://cellphones.com.vn/pin-du-phong-golf-candy-g80-10000-mah.html\" target=\"_blank\"><img alt=\"Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay - Ảnh 1.\" src=\"https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2021/8/20/genk-list-gia-sale-dai-2-1629402551127230131500.jpg\" style=\"height:150px; width:340px\" /></a></em></p>\r\n\r\n<p><strong>Pin sạc dự ph&ograve;ng Polymer 10.000 mAh Hydrus PA CK01 giảm từ 490.000đ xuống c&ograve;n 294.000đ</strong></p>\r\n\r\n<p><em><a href=\"https://www.thegioididong.com/sac-dtdd/pin-polymer-10000-mah-hydrus-pa-ck01\" target=\"_blank\"><img alt=\"Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay - Ảnh 2.\" src=\"https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2021/8/20/genk-list-gia-sale-dai-10-16294025220142068311031.jpg\" style=\"height:150px; width:340px\" /></a></em></p>\r\n\r\n<p><strong>C&aacute;p sạc Lightning Aukey CB-BAL7 MFI 0.9m giảm từ 330.000đ xuống c&ograve;n 230.000đ</strong></p>\r\n\r\n<p><em><a href=\"https://cellphones.com.vn/cap-usb-a-to-lightning-aukey-cb-bal7-mfi-0-9m.html\" target=\"_blank\"><img alt=\"Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay - Ảnh 3.\" src=\"https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2021/8/20/genk-list-gia-sale-dai-6-1629402551079718171612.jpg\" style=\"height:150px; width:340px\" /></a></em></p>\r\n\r\n<p><strong>Tai nghe Bluetooth AirPods 2 Apple MV7N2 giảm từ 4.390.000đ xuống c&ograve;n 3.731.000đ</strong></p>\r\n\r\n<p><img alt=\"Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay - Ảnh 4.\" src=\"https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2021/8/20/genk-list-gia-sale-dai-11-1629402522004830264591.jpg\" style=\"height:150px; width:340px\" /></p>\r\n\r\n<p><strong>Loa Bluetooth JBL GO 2 giảm từ 699.000đ xuống c&ograve;n 590.000đ</strong></p>\r\n\r\n<p><em><a href=\"https://cellphones.com.vn/loa-bluetooth-jbl-go-2.html\" target=\"_blank\"><img alt=\"Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay - Ảnh 6.\" src=\"https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2021/8/20/genk-list-gia-sale-dai-13-16294025219061385593704.jpg\" style=\"height:150px; width:340px\" /></a></em></p>\r\n\r\n<p><strong>Samsung Galaxy Watch Active 2 40mm Vỏ Th&eacute;p giảm từ 9.490.000đ xuống c&ograve;n 6.250.000đ</strong></p>\r\n\r\n<p><em><a href=\"https://cellphones.com.vn/dong-ho-thong-minh-samsung-galaxy-watch-active-2-40mm-thep-sm-r830s.html\" target=\"_blank\"><img alt=\"Loạt phụ kiện, đồ chơi di động đang sale nửa giá xứng đáng bấm mua ngay - Ảnh 7.\" src=\"https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2021/8/20/genk-list-gia-sale-dai-14-1629402521887691890047.jpg\" style=\"height:150px; width:340px\" /></a></em></p>\r\n', 8, 1, '1636016785_photo1629403111324-16294031115111165880785.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `ID_Lienhe` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`ID_Lienhe`, `thongtinlienhe`) VALUES
(1, '<p><strong>Th&ocirc;ng Tin Li&ecirc;n Hệ&nbsp;</strong></p>\r\n\r\n<p><strong>1. SĐT Phương Manager : 0901928315</strong></p>\r\n\r\n<p><strong>2. SĐT Kiệt Manager : 0707702304</strong></p>\r\n\r\n<p><strong>3. Zalo: 0123456789</strong></p>\r\n\r\n<p><strong>4. Facbook&nbsp;Phương Manager :</strong><a href=\"https://www.facebook.com/phuongluu263/\">https://www.facebook.com/phuongluu263/</a></p>\r\n\r\n<p><strong>5. Facbook&nbsp;Kiệt Manager :</strong><a href=\"https://www.facebook.com/thanhdi.mod\">https://www.facebook.com/thanhdi.mod</a></p>\r\n\r\n<p>&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;🤷&zwj;♂️&nbsp;&nbsp;</p>\r\n\r\n<p>👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp; 👋&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Chỉ mục cho bảng `admin_dangky`
--
ALTER TABLE `admin_dangky`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID_Cart`);

--
-- Chỉ mục cho bảng `cart_luudon`
--
ALTER TABLE `cart_luudon`
  ADD PRIMARY KEY (`ID_Cart_Luudon`);

--
-- Chỉ mục cho bảng `dangki`
--
ALTER TABLE `dangki`
  ADD PRIMARY KEY (`ID_Dangki`);

--
-- Chỉ mục cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  ADD PRIMARY KEY (`ID_Baiviet`);

--
-- Chỉ mục cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`ID_Danhmuc`);

--
-- Chỉ mục cho bảng `danhsachsp`
--
ALTER TABLE `danhsachsp`
  ADD PRIMARY KEY (`ID_Danhsach`);

--
-- Chỉ mục cho bảng `dsbaiviet`
--
ALTER TABLE `dsbaiviet`
  ADD PRIMARY KEY (`ID_Dsbaiviet`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`ID_Lienhe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_dangky`
--
ALTER TABLE `admin_dangky`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `ID_Cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `cart_luudon`
--
ALTER TABLE `cart_luudon`
  MODIFY `ID_Cart_Luudon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `dangki`
--
ALTER TABLE `dangki`
  MODIFY `ID_Dangki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  MODIFY `ID_Baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `ID_Danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `danhsachsp`
--
ALTER TABLE `danhsachsp`
  MODIFY `ID_Danhsach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `dsbaiviet`
--
ALTER TABLE `dsbaiviet`
  MODIFY `ID_Dsbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `ID_Lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
