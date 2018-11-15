-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2018 at 04:38 PM
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
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DanhSachMoiTruong`
--

CREATE TABLE `DanhSachMoiTruong` (
  `MaMoiTruong` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DanhSachTienNghi`
--

CREATE TABLE `DanhSachTienNghi` (
  `MaTienNghi` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HinhAnh`
--

CREATE TABLE `HinhAnh` (
  `MaHinhAnh` int(11) NOT NULL,
  `DuongDan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaBaiDang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `KhuVuc`
--

CREATE TABLE `KhuVuc` (
  `MaKhuVuc` int(11) NOT NULL,
  `TenKhuVuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LoaiPhong`
--

CREATE TABLE `LoaiPhong` (
  `MaLoaiPhong` int(11) NOT NULL,
  `TenLoaiPhong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LoaiTaiKhoan`
--

CREATE TABLE `LoaiTaiKhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MoiTruong`
--

CREATE TABLE `MoiTruong` (
  `MaMoiTruong` int(11) NOT NULL,
  `TenMoiTruong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QuanHuyen`
--

CREATE TABLE `QuanHuyen` (
  `MaQuanHuyen` int(11) NOT NULL,
  `TenQuanHuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ThongTinTaiKhoan`
--

CREATE TABLE `ThongTinTaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TienNghi`
--

CREATE TABLE `TienNghi` (
  `MaTienNghi` int(11) NOT NULL,
  `TenTienNghi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD KEY `FOREIGN` (`MaLoaiPhong`,`MaKhuVuc`,`MaQuanHuyen`,`TenTaiKhoan`),
  ADD KEY `TenTaiKhoan` (`TenTaiKhoan`),
  ADD KEY `MaKhuVuc` (`MaKhuVuc`),
  ADD KEY `MaQuanHuyen` (`MaQuanHuyen`);

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
  MODIFY `MaBaiDang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HinhAnh`
--
ALTER TABLE `HinhAnh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `KhuVuc`
--
ALTER TABLE `KhuVuc`
  MODIFY `MaKhuVuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  MODIFY `MaLoaiPhong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LoaiTaiKhoan`
--
ALTER TABLE `LoaiTaiKhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MoiTruong`
--
ALTER TABLE `MoiTruong`
  MODIFY `MaMoiTruong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PhongTro`
--
ALTER TABLE `PhongTro`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `QuanHuyen`
--
ALTER TABLE `QuanHuyen`
  MODIFY `MaQuanHuyen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TienNghi`
--
ALTER TABLE `TienNghi`
  MODIFY `MaTienNghi` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `PhongTro_ibfk_1` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `TaiKhoan` (`TenTaiKhoan`),
  ADD CONSTRAINT `PhongTro_ibfk_2` FOREIGN KEY (`MaKhuVuc`) REFERENCES `KhuVuc` (`MaKhuVuc`),
  ADD CONSTRAINT `PhongTro_ibfk_3` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `LoaiPhong` (`MaLoaiPhong`),
  ADD CONSTRAINT `PhongTro_ibfk_4` FOREIGN KEY (`MaQuanHuyen`) REFERENCES `QuanHuyen` (`MaQuanHuyen`);

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
