-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2018 at 03:07 AM
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
(1, 'Phòng trọ cho thuê', '2018-11-16', 'Phòng trọ cho sinh viên thuê diện tích rộng, thoáng mát, đầy đủ tiện nghi...', 8, 'phuc'),
(2, 'Cần thuê phòng trọ giá rẻ', '2018-11-16', 'Cần thuê phòng giá rẻ từ 400k-500k/tháng', 14, 'tam'),
(4, 'Cho thuê nhà nguyên căn 4 người ở', '2018-11-10', 'Nhà nguyên căn đủ cho 4 người ở', 9, 'phuc'),
(5, 'Cho thuê phòng trọ cho sinh viên', '2018-12-10', 'Chỉ dành cho sinh viên', 15, 'quang'),
(6, 'Cho thuê nhà nguyên căn thoáng mát', '2018-11-05', 'Nhà thoáng mát,sạch sẽ', 1, 'phuc'),
(7, 'Còn 2 phòng trống tại cư xá Thanh Lịch', '2018-11-14', 'Còn trống 2 phòng đầy đủ tiện nghi', 5, 'tam'),
(8, 'Cho thuê nhà nguyên căn đầy đủ tiện nghi', '2018-11-10', 'Nhà nguyên căn đầy đủ tiện nghi', 5, 'phuc'),
(9, 'Cho thuê phòng trọ tại trung tâm thành phố', '2018-11-12', 'Còn 1 phòng tại trung tâm thành phố', 2, 'tam'),
(19, 'Còn 2 phòng trống gần BigC', '2018-11-13', 'Phòng rộng rãi, đầy đủ tiện nghi', 0, 'tam'),
(22, 'Test luu bai dang', '2018-11-29', '', 1, 'phuc');

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
(1, 1),
(1, 6),
(1, 12),
(3, 2),
(3, 6);

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
(1, 2),
(1, 12),
(2, 1),
(3, 6),
(4, 6);

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
(1, 'img/bg-img/1.jpg', 1),
(2, 'img/bg-img/2.jpg', 2),
(3, 'img/bg-img/3.jpg', 4),
(4, 'img/bg-img/4.jpg', 6),
(5, 'img/bg-img/5.jpg', 8),
(6, 'img/bg-img/6.jpg', 5),
(7, 'img/bg-img/7.jpg', 9),
(8, 'img/bg-img/8.jpg', 19),
(9, 'img/bg-img/9.jpg', 7);

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
(2, 'Phòng trọ');

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
(2, 'Người dùng');

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
(3, 'Trường học');

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
(1, 10, 9, 3, 3500000, 30, 1, 1, 1, 1, 1),
(2, 5, 5, 2, 4500000, 10, 0, 2, 3, 4, 2),
(3, 3, 2, 4, 4500000, 50, 1, 2, 9, 6, 4),
(4, 6, 6, 1, 1000000, 10, 1, 1, 1, 1, 5),
(5, 5, 2, 2, 1000000, 15, 1, 1, 1, 7, 6),
(6, 5, 4, 2, 1000000, 15, 1, 1, 11, 2, 7),
(7, 5, 4, 2, 1000000, 15, 1, 1, 11, 2, 8),
(9, 15, 10, 2, 1000000, 12, 1, 2, 9, 3, 9),
(12, 1, 1, 1, 10000, 1, 1, 1, 1, 1, 22);

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
('phuc', '123', 1),
('quang', '123', 2),
('tam', '123', 1);

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
('tam', 'TTT', 1, '');

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
(4, 'Giường nệm');

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
,`DuongDan` varchar(200)
,`MaPhong` int(11)
,`MaBaiDang` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `ViewBaiDang`
--
DROP TABLE IF EXISTS `ViewBaiDang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ViewBaiDang`  AS  select `ThongTinTaiKhoan`.`HoTen` AS `HoTen`,`BaiDang`.`TieuDe` AS `TieuDe`,`BaiDang`.`ThoiGianDang` AS `ThoiGianDang`,`PhongTro`.`GiaPhong` AS `GiaPhong`,`HinhAnh`.`DuongDan` AS `DuongDan`,`PhongTro`.`MaPhong` AS `MaPhong`,`BaiDang`.`MaBaiDang` AS `MaBaiDang` from ((((`PhongTro` join `BaiDang` on((`PhongTro`.`MaBaiDang` = `BaiDang`.`MaBaiDang`))) left join `HinhAnh` on((`BaiDang`.`MaBaiDang` = `HinhAnh`.`MaBaiDang`))) join `TaiKhoan` on((`BaiDang`.`TenTaiKhoan` = `TaiKhoan`.`TenTaiKhoan`))) join `ThongTinTaiKhoan` on((`TaiKhoan`.`TenTaiKhoan` = `ThongTinTaiKhoan`.`TenTaiKhoan`))) ;

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
  MODIFY `MaBaiDang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `HinhAnh`
--
ALTER TABLE `HinhAnh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `KhuVuc`
--
ALTER TABLE `KhuVuc`
  MODIFY `MaKhuVuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  MODIFY `MaLoaiPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `LoaiTaiKhoan`
--
ALTER TABLE `LoaiTaiKhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `MoiTruong`
--
ALTER TABLE `MoiTruong`
  MODIFY `MaMoiTruong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PhongTro`
--
ALTER TABLE `PhongTro`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `QuanHuyen`
--
ALTER TABLE `QuanHuyen`
  MODIFY `MaQuanHuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `TienNghi`
--
ALTER TABLE `TienNghi`
  MODIFY `MaTienNghi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
