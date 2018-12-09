-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2018 at 04:20 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PhongTroSinhVien`
--

-- --------------------------------------------------------

--
-- Table structure for table `BaiDang`
--

CREATE TABLE `BaiDang` (
  `MaBaiDang` int(11) NOT NULL,
  `TieuDe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGianDang` date NOT NULL,
  `MoTa` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `LuotXem` int(11) NOT NULL DEFAULT '0',
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BaiDang`
--

INSERT INTO `BaiDang` (`MaBaiDang`, `TieuDe`, `ThoiGianDang`, `MoTa`, `LuotXem`, `TenTaiKhoan`) VALUES
(73, 'Cư xá thanh lịch Trường Đại học Khoa học', '2018-12-01', '+Phòng rộng rãi, có nhà vệ sinh trong, quạt điện, có bếp chung với đầy đủ thiết bị, tủ lạnh, ban công thoáng mát, wifi free, có cửa sổ, có bãi để xe riêng,... \r\n+Nằm trong khu vực yên tĩnh, an ninh tốt, có camera an ninh.\r\n+Có vệ sinh phòng ít nhất 1 lần/ tuần.', 5, 'phuc'),
(74, 'Cư xá 215 Trần Phú - Huế', '2018-12-02', '+Phòng rộng rãi, có nhà vệ sinh trong, quạt điện, có bếp chung với đầy đủ thiết bị, tủ lạnh, wifi free, có cửa sổ, có bãi để xe riêng,... \r\n+Nằm trong khu vực yên tĩnh, an ninh tốt, có camera an ninh.', 1, 'phuc'),
(75, 'Cho thuê nhà nguyên căn 4 người ở', '2018-12-03', '+Phòng rộng rãi, có nhà vệ sinh trong, quạt điện, có bếp chung với đầy đủ thiết bị, tủ lạnh, ban công thoáng mát, có bãi để xe riêng,... \r\n+Nằm trong khu vực yên tĩnh, an ninh tốt.', 2, 'phuc'),
(76, 'Cho thuê phòng trọ cho sinh viên', '2018-12-04', 'Phòng sạch sẽ, thoáng mát, có gác lửng, vệ sinh trong, trọ tự quản.\r\nCó phòng rộng 40m2 tính cả gác lửng thích hợp hộ gia đình thuê\r\nĐiện nước tính theo đồng hồ riêng.\r\nLiên hệ trực tiếp: 01208063038 (C. Châu)\r\n0935176776 (A. Thanh)', 4, 'tam'),
(77, 'Còn 2 phòng trống gần BigC', '2018-12-05', '- Cho thuê phòng trọ mới xây ở gần các trường đại học ,Công trình phụ khép kín,sạch sẽ ,cao ráo ,yên tĩnh thoáng mát.\r\n- Diện tích 15m2 .\r\n- Điện + Nước, wifi :Trả theo mức sử dụng(có đồng hồ điện, nuoc riêng từng phòng)\r\n- Phòng trang bị :Gường ngủ đẹp rộng\r\n- Có chổ để xe an toàn, camera\r\n- Giá: 1-1tr2\r\nAi có nhu cầu liên hệ 0906404505\r\nĐc:1A/56 An Dương Vương - tp huế', 2, 'tam'),
(78, 'Phòng trọ cho nữ thuê', '2018-12-06', 'Phòng trọ cho nữ thuê, chủ nhà vui tính, hòa đồng, an ninh tốt, vệ sinh trong 450k/tháng.', 3, 'tam'),
(79, 'Cho thuê phòng trọ gần Đại học sư phạm', '2018-12-04', '- Phòng trọ giá rẻ, thoáng mát, an ninh tốt, đầy đủ tiện nghi\r\n- Môi trường gần chợ, siêu thị, trường học, ...\r\n- Liên hệ: A. Quang\r\n- Địa chỉ: 69 Phạm Ngũ Lão\r\n- ĐT: 0123456789', 1, 'quang'),
(80, 'Cho thuê nhà nguyên căn gần chợ An Cựu', '2018-12-05', '- Phòng trọ rộng rãi, đầy đủ tiện nghi, chất lượng tốt\r\n- Môi trường thoáng đãng, an ninh tốt\r\n- Địa chỉ: 105 Hùng Vương\r\n- Liên hệ: Chị Dung - 0364971566', 2, 'quang'),
(81, 'Cư xá Fullhouse', '2018-12-06', '- Phòng rộng rãi, ban công thoáng mát\r\n- An ninh tốt\r\n- Liên hệ: Bác Xuân - 1335975451\r\n- Địa chỉ: 35 Bùi Thị Xuân', 1, 'quang'),
(82, 'Ký túc xá Đặng Huy Trứ', '2018-12-06', '- An ninh cao\r\n- Môi trường thoáng đãng\r\n- Liên hệ: A. Tùng\r\n- ĐT: 1315681215\r\n- Địa chỉ: 15 Đặng Huy Trứ', 1, 'tung'),
(83, 'Ký túc xá Nông Lâm', '2018-12-06', '- Phòng rộng, đầy đủ tiện nghi: giường, vệ sinh trong, ...\r\n- Điện nước đã tính vào tiền thuê.\r\n- An ninh cao\r\n- Địa chỉ: 35 Trần Quý Cáp', 1, 'tung'),
(84, 'Ký túc xá Việt Mỹ', '2018-12-08', '- Liên hệ: A. Tùng\r\n- Điện thoai: 123456789\r\n- Địa chỉ: 15 Vĩ Dạ', 1, 'tung'),
(85, 'Cho thuê nhà nguyên căn 4 người ở', '2018-12-07', '- Nhà nguyên căn rộng rãi, thoáng mát \r\n- An ninh tốt\r\n- Liên hệ: A. Tùng đẹp trai\r\n- ĐT: 15489511\r\n- Địa chỉ: 98/8 Bùi Thị Xuân', 2, 'lam'),
(86, 'Nhà nguyên căn gần Chợ Đông Ba', '2018-12-08', '- Nhà nguyên căn 2 tầng, cao ráo, thoáng đãng.\r\n- An ninh tốt.\r\n- Địa chỉ: 100 Trần Hưng Đạo\r\n- Liên hệ: Mr.Lâm - 9222920292', 3, 'lam'),
(87, 'Cho thuê nhà nguyên căn gần Bênh viện TW', '2018-12-08', '- Nhà nguyên căn cao ráo, sạch sẽ\r\n- Môi trường thoáng đãng, an ninh tốt\r\n- Liên hệ: Mr.Lâm tiên sinh\r\n- Địa chỉ: 200 Ngô Quyền\r\n- Điện thoại: 1548913223', 1, 'lam');

-- --------------------------------------------------------

--
-- Table structure for table `DanhSachMoiTruong`
--

CREATE TABLE `DanhSachMoiTruong` (
  `MaMoiTruong` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DanhSachMoiTruong`
--

INSERT INTO `DanhSachMoiTruong` (`MaMoiTruong`, `MaPhong`) VALUES
(1, 39),
(1, 40),
(1, 41),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(2, 39),
(2, 40),
(2, 42),
(2, 44),
(2, 45),
(2, 46),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 46),
(3, 47),
(3, 48),
(3, 49),
(3, 50),
(3, 51),
(4, 45),
(4, 47),
(4, 51),
(4, 53),
(5, 45),
(5, 52),
(5, 53),
(6, 45),
(6, 48),
(6, 52),
(6, 53),
(7, 40),
(7, 44),
(7, 45),
(7, 49),
(7, 51),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(9, 41),
(9, 47),
(9, 48),
(9, 50),
(9, 51);

-- --------------------------------------------------------

--
-- Table structure for table `DanhSachTienNghi`
--

CREATE TABLE `DanhSachTienNghi` (
  `MaTienNghi` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DanhSachTienNghi`
--

INSERT INTO `DanhSachTienNghi` (`MaTienNghi`, `MaPhong`) VALUES
(1, 39),
(1, 40),
(1, 42),
(1, 43),
(1, 45),
(1, 47),
(1, 50),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(4, 43),
(4, 47),
(4, 48),
(4, 49),
(4, 50),
(4, 51),
(5, 39),
(5, 40),
(5, 42),
(5, 46),
(6, 39),
(6, 40),
(6, 41),
(6, 42),
(6, 44),
(6, 45),
(6, 46),
(6, 48),
(6, 51),
(6, 52),
(6, 53),
(7, 39),
(7, 47),
(7, 48),
(7, 49),
(7, 52),
(7, 53),
(8, 39),
(8, 40),
(8, 43),
(8, 44),
(8, 45),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(9, 39),
(9, 41),
(9, 43),
(9, 44),
(9, 46),
(9, 48),
(9, 49),
(9, 50),
(9, 51),
(9, 52),
(9, 53),
(10, 41),
(10, 44),
(10, 46),
(10, 51),
(10, 52),
(10, 53);

-- --------------------------------------------------------

--
-- Table structure for table `HinhAnh`
--

CREATE TABLE `HinhAnh` (
  `MaHinhAnh` int(11) NOT NULL,
  `DuongDan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaBaiDang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `HinhAnh`
--

INSERT INTO `HinhAnh` (`MaHinhAnh`, `DuongDan`, `MaBaiDang`) VALUES
(61, 'img/phong-tro/1.jpg', 73),
(62, 'img/phong-tro/62.jpg', 73),
(63, 'img/phong-tro/63.jpg', 73),
(64, 'img/phong-tro/64.jpg', 73),
(65, 'img/phong-tro/65.jpg', 74),
(66, 'img/phong-tro/66.jpg', 74),
(67, 'img/phong-tro/67.jpg', 74),
(68, 'img/phong-tro/68.jpg', 74),
(69, 'img/phong-tro/69.jpg', 75),
(70, 'img/phong-tro/70.jpg', 75),
(71, 'img/phong-tro/71.jpg', 75),
(72, 'img/phong-tro/72.jpg', 75),
(73, 'img/phong-tro/73.jpg', 75),
(74, 'img/phong-tro/74.jpg', 76),
(75, 'img/phong-tro/75.jpg', 76),
(76, 'img/phong-tro/76.jpg', 76),
(77, 'img/phong-tro/77.jpg', 76),
(78, 'img/phong-tro/78.jpg', 77),
(79, 'img/phong-tro/79.jpg', 77),
(80, 'img/phong-tro/80.jpg', 77),
(81, 'img/phong-tro/81.jpg', 77),
(82, 'img/phong-tro/82.jpg', 77),
(83, 'img/phong-tro/83.jpg', 78),
(84, 'img/phong-tro/84.jpg', 78),
(85, 'img/phong-tro/85.jpg', 78),
(86, 'img/phong-tro/86.jpg', 78),
(87, 'img/phong-tro/87.png', 79),
(88, 'img/phong-tro/88.jpg', 79),
(89, 'img/phong-tro/89.png', 79),
(90, 'img/phong-tro/90.jpg', 80),
(91, 'img/phong-tro/91.jpg', 80),
(92, 'img/phong-tro/92.jpg', 80),
(93, 'img/phong-tro/93.jpg', 81),
(94, 'img/phong-tro/94.jpg', 81),
(95, 'img/phong-tro/95.jpg', 81),
(96, 'img/phong-tro/96.jpg', 82),
(97, 'img/phong-tro/97.jpg', 82),
(98, 'img/phong-tro/98.jpg', 82),
(99, 'img/phong-tro/99.jpg', 82),
(100, 'img/phong-tro/100.jpg', 83),
(101, 'img/phong-tro/101.jpg', 83),
(102, 'img/phong-tro/102.jpg', 83),
(103, 'img/phong-tro/103.jpg', 84),
(104, 'img/phong-tro/104.jpg', 84),
(105, 'img/phong-tro/105.jpg', 84),
(106, 'img/phong-tro/106.jpg', 85),
(107, 'img/phong-tro/107.jpg', 86),
(108, 'img/phong-tro/108.jpg', 87),
(109, 'img/phong-tro/109.jpg', 87),
(110, 'img/phong-tro/110.jpg', 87),
(111, 'img/phong-tro/111.jpg', 87);

-- --------------------------------------------------------

--
-- Table structure for table `KhuVuc`
--

CREATE TABLE `KhuVuc` (
  `MaKhuVuc` int(11) NOT NULL,
  `TenKhuVuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `KhuVuc`
--

INSERT INTO `KhuVuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES
(1, 'Bến xe phía nam'),
(2, 'Bệnh viện trung ương'),
(3, 'Đại học khoa học'),
(4, 'Ga'),
(5, 'Đại học sư phạm'),
(6, 'Chợ An Cựu'),
(7, 'Chợ Vĩ Dạ'),
(8, 'Chợ Đông Ba'),
(9, 'Siêu thị Big C'),
(10, 'Đại nội Huế'),
(11, 'Đại học nông lâm'),
(12, 'Đại học kinh tế');

-- --------------------------------------------------------

--
-- Table structure for table `LoaiPhong`
--

CREATE TABLE `LoaiPhong` (
  `MaLoaiPhong` int(11) NOT NULL,
  `TenLoaiPhong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `LoaiPhong`
--

INSERT INTO `LoaiPhong` (`MaLoaiPhong`, `TenLoaiPhong`) VALUES
(1, 'Căn hộ'),
(2, 'Phòng trọ'),
(3, 'Cư xá'),
(4, 'Ký túc xá');

-- --------------------------------------------------------

--
-- Table structure for table `LoaiTaiKhoan`
--

CREATE TABLE `LoaiTaiKhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `LoaiTaiKhoan`
--

INSERT INTO `LoaiTaiKhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'Chủ trọ'),
(2, 'Người tìm trọ');

-- --------------------------------------------------------

--
-- Table structure for table `MoiTruong`
--

CREATE TABLE `MoiTruong` (
  `MaMoiTruong` int(11) NOT NULL,
  `TenMoiTruong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MoiTruong`
--

INSERT INTO `MoiTruong` (`MaMoiTruong`, `TenMoiTruong`) VALUES
(1, 'Chợ'),
(2, 'Siêu thị'),
(3, 'Trường học'),
(4, 'Bệnh viện'),
(5, 'Công viên'),
(6, 'Sông hồ'),
(7, 'Khu giải trí'),
(8, 'Bến xe Bus'),
(9, 'Trung tâm thể dục thể thao');

-- --------------------------------------------------------

--
-- Table structure for table `PhongTro`
--

CREATE TABLE `PhongTro` (
  `MaPhong` int(11) NOT NULL,
  `SoLuongPhong` int(11) NOT NULL,
  `SoPhongTrong` int(11) NOT NULL,
  `SoNguoiToiDa` int(11) NOT NULL,
  `GiaPhong` bigint(20) NOT NULL,
  `DienTich` double NOT NULL,
  `ChoTuQuan` tinyint(1) NOT NULL,
  `MaLoaiPhong` int(11) NOT NULL,
  `MaKhuVuc` int(11) NOT NULL,
  `MaQuanHuyen` int(11) NOT NULL,
  `MaBaiDang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PhongTro`
--

INSERT INTO `PhongTro` (`MaPhong`, `SoLuongPhong`, `SoPhongTrong`, `SoNguoiToiDa`, `GiaPhong`, `DienTich`, `ChoTuQuan`, `MaLoaiPhong`, `MaKhuVuc`, `MaQuanHuyen`, `MaBaiDang`) VALUES
(39, 50, 45, 2, 700000, 10, 1, 3, 3, 2, 73),
(40, 60, 60, 3, 800000, 10, 1, 3, 3, 2, 74),
(41, 3, 3, 4, 1500000, 20, 1, 1, 1, 1, 75),
(42, 100, 89, 4, 650000, 40, 1, 2, 10, 6, 76),
(43, 30, 15, 3, 1500000, 15, 1, 2, 12, 3, 77),
(44, 10, 10, 2, 450000, 12, 1, 2, 8, 5, 78),
(45, 30, 25, 2, 450000, 11, 1, 2, 5, 7, 79),
(46, 30, 20, 4, 550000, 15, 1, 2, 1, 1, 80),
(47, 15, 10, 3, 800000, 13, 1, 3, 4, 8, 81),
(48, 100, 100, 3, 950000, 15, 1, 4, 12, 2, 82),
(49, 100, 100, 8, 750000, 20, 1, 4, 11, 6, 83),
(50, 100, 100, 10, 150000, 50, 1, 4, 7, 7, 84),
(51, 1, 1, 4, 2000000, 30, 1, 1, 4, 8, 85),
(52, 1, 1, 5, 250000, 75, 1, 1, 8, 5, 86),
(53, 1, 1, 5, 3000000, 85, 1, 1, 2, 3, 87);

-- --------------------------------------------------------

--
-- Table structure for table `QuanHuyen`
--

CREATE TABLE `QuanHuyen` (
  `MaQuanHuyen` int(11) NOT NULL,
  `TenQuanHuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `QuanHuyen`
--

INSERT INTO `QuanHuyen` (`MaQuanHuyen`, `TenQuanHuyen`) VALUES
(1, 'An Cựu'),
(2, 'Vĩnh Ninh'),
(3, 'Phước Vĩnh'),
(4, 'Phú Nhuận'),
(5, 'Phú Hội'),
(6, 'Thuận Thành'),
(7, 'Vĩ Dạ'),
(8, 'Thủy Xuân');

-- --------------------------------------------------------

--
-- Table structure for table `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TaiKhoan`
--

INSERT INTO `TaiKhoan` (`TenTaiKhoan`, `MatKhau`, `MaLoaiTaiKhoan`) VALUES
('lam', '123', 1),
('phuc', '123', 1),
('quang', '123', 1),
('tam', '123', 1),
('tung', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ThongTinTaiKhoan`
--

CREATE TABLE `ThongTinTaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `SoDienThoai` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ThongTinTaiKhoan`
--

INSERT INTO `ThongTinTaiKhoan` (`TenTaiKhoan`, `HoTen`, `GioiTinh`, `SoDienThoai`) VALUES
('phuc', 'Trần Đại Phúc', 1, ''),
('quang', 'Lê Đình Quang', 1, ''),
('tam', 'Trương Tấn Tâm', 1, ''),
('tung', 'Văn Phước Hãi Tùng', 1, ''),
('lam', 'Nguyễn Văn Lâm', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `TienNghi`
--

CREATE TABLE `TienNghi` (
  `MaTienNghi` int(11) NOT NULL,
  `TenTienNghi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TienNghi`
--

INSERT INTO `TienNghi` (`MaTienNghi`, `TenTienNghi`) VALUES
(1, 'Wifi'),
(2, 'Vệ sinh trong'),
(3, 'Điều hòa'),
(4, 'Giường nệm'),
(5, 'Gác lửng'),
(6, 'Kệ bếp'),
(7, 'Ban công/sân thượng'),
(8, 'Camera an ninh'),
(9, 'Bãi đỗ xe riêng'),
(10, 'Sân vườn');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ViewBaiDang`
-- (See below for the actual view)
--
CREATE TABLE `ViewBaiDang` (
`HoTen` varchar(50)
,`TieuDe` varchar(50)
,`ThoiGianDang` date
,`GiaPhong` bigint(20)
,`MaPhong` int(11)
,`MaBaiDang` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `ViewBaiDang`
--
DROP TABLE IF EXISTS `ViewBaiDang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ViewBaiDang`  AS  select `ThongTinTaiKhoan`.`HoTen` AS `HoTen`,`BaiDang`.`TieuDe` AS `TieuDe`,`BaiDang`.`ThoiGianDang` AS `ThoiGianDang`,`PhongTro`.`GiaPhong` AS `GiaPhong`,`PhongTro`.`MaPhong` AS `MaPhong`,`BaiDang`.`MaBaiDang` AS `MaBaiDang` from (((`PhongTro` join `BaiDang` on((`PhongTro`.`MaBaiDang` = `BaiDang`.`MaBaiDang`))) join `TaiKhoan` on((`BaiDang`.`TenTaiKhoan` = `TaiKhoan`.`TenTaiKhoan`))) join `ThongTinTaiKhoan` on((`TaiKhoan`.`TenTaiKhoan` = `ThongTinTaiKhoan`.`TenTaiKhoan`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BaiDang`
--
ALTER TABLE `BaiDang`
  ADD PRIMARY KEY (`MaBaiDang`),
  ADD KEY `FOREIGN` (`TenTaiKhoan`);

--
-- Indexes for table `DanhSachMoiTruong`
--
ALTER TABLE `DanhSachMoiTruong`
  ADD KEY `FOREIGN` (`MaMoiTruong`,`MaPhong`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Indexes for table `DanhSachTienNghi`
--
ALTER TABLE `DanhSachTienNghi`
  ADD KEY `FOREIGN` (`MaTienNghi`,`MaPhong`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Indexes for table `HinhAnh`
--
ALTER TABLE `HinhAnh`
  ADD PRIMARY KEY (`MaHinhAnh`),
  ADD KEY `FOREIGN` (`MaBaiDang`);

--
-- Indexes for table `KhuVuc`
--
ALTER TABLE `KhuVuc`
  ADD PRIMARY KEY (`MaKhuVuc`);

--
-- Indexes for table `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  ADD PRIMARY KEY (`MaLoaiPhong`);

--
-- Indexes for table `LoaiTaiKhoan`
--
ALTER TABLE `LoaiTaiKhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Indexes for table `MoiTruong`
--
ALTER TABLE `MoiTruong`
  ADD PRIMARY KEY (`MaMoiTruong`);

--
-- Indexes for table `PhongTro`
--
ALTER TABLE `PhongTro`
  ADD PRIMARY KEY (`MaPhong`),
  ADD KEY `FOREIGN` (`MaLoaiPhong`,`MaKhuVuc`,`MaQuanHuyen`,`MaBaiDang`),
  ADD KEY `MaKhuVuc` (`MaKhuVuc`),
  ADD KEY `MaQuanHuyen` (`MaQuanHuyen`),
  ADD KEY `MaBaiDang` (`MaBaiDang`) USING BTREE,
  ADD KEY `MaBaiDang_2` (`MaBaiDang`);

--
-- Indexes for table `QuanHuyen`
--
ALTER TABLE `QuanHuyen`
  ADD PRIMARY KEY (`MaQuanHuyen`);

--
-- Indexes for table `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD KEY `FOREIGN` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `ThongTinTaiKhoan`
--
ALTER TABLE `ThongTinTaiKhoan`
  ADD KEY `FOREIGN` (`TenTaiKhoan`);

--
-- Indexes for table `TienNghi`
--
ALTER TABLE `TienNghi`
  ADD PRIMARY KEY (`MaTienNghi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BaiDang`
--
ALTER TABLE `BaiDang`
  MODIFY `MaBaiDang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `HinhAnh`
--
ALTER TABLE `HinhAnh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `KhuVuc`
--
ALTER TABLE `KhuVuc`
  MODIFY `MaKhuVuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  MODIFY `MaLoaiPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `LoaiTaiKhoan`
--
ALTER TABLE `LoaiTaiKhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `MoiTruong`
--
ALTER TABLE `MoiTruong`
  MODIFY `MaMoiTruong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `PhongTro`
--
ALTER TABLE `PhongTro`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `QuanHuyen`
--
ALTER TABLE `QuanHuyen`
  MODIFY `MaQuanHuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `TienNghi`
--
ALTER TABLE `TienNghi`
  MODIFY `MaTienNghi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BaiDang`
--
ALTER TABLE `BaiDang`
  ADD CONSTRAINT `BaiDang_ibfk_1` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `TaiKhoan` (`TenTaiKhoan`);

--
-- Constraints for table `DanhSachMoiTruong`
--
ALTER TABLE `DanhSachMoiTruong`
  ADD CONSTRAINT `DanhSachMoiTruong_ibfk_1` FOREIGN KEY (`MaMoiTruong`) REFERENCES `MoiTruong` (`MaMoiTruong`),
  ADD CONSTRAINT `DanhSachMoiTruong_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `PhongTro` (`MaPhong`);

--
-- Constraints for table `DanhSachTienNghi`
--
ALTER TABLE `DanhSachTienNghi`
  ADD CONSTRAINT `DanhSachTienNghi_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `PhongTro` (`MaPhong`),
  ADD CONSTRAINT `DanhSachTienNghi_ibfk_2` FOREIGN KEY (`MaTienNghi`) REFERENCES `TienNghi` (`MaTienNghi`);

--
-- Constraints for table `HinhAnh`
--
ALTER TABLE `HinhAnh`
  ADD CONSTRAINT `HinhAnh_ibfk_1` FOREIGN KEY (`MaBaiDang`) REFERENCES `BaiDang` (`MaBaiDang`);

--
-- Constraints for table `PhongTro`
--
ALTER TABLE `PhongTro`
  ADD CONSTRAINT `PhongTro_ibfk_2` FOREIGN KEY (`MaKhuVuc`) REFERENCES `KhuVuc` (`MaKhuVuc`),
  ADD CONSTRAINT `PhongTro_ibfk_3` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `LoaiPhong` (`MaLoaiPhong`),
  ADD CONSTRAINT `PhongTro_ibfk_4` FOREIGN KEY (`MaQuanHuyen`) REFERENCES `QuanHuyen` (`MaQuanHuyen`),
  ADD CONSTRAINT `PhongTro_ibfk_5` FOREIGN KEY (`MaBaiDang`) REFERENCES `BaiDang` (`MaBaiDang`);

--
-- Constraints for table `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD CONSTRAINT `TaiKhoan_ibfk_1` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `LoaiTaiKhoan` (`MaLoaiTaiKhoan`);

--
-- Constraints for table `ThongTinTaiKhoan`
--
ALTER TABLE `ThongTinTaiKhoan`
  ADD CONSTRAINT `ThongTinTaiKhoan_ibfk_1` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `TaiKhoan` (`TenTaiKhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
