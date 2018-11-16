-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2018 at 04:17 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

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
-- Structure for view `ViewBaiDang`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ViewBaiDang`  AS  select `ThongTinTaiKhoan`.`HoTen` AS `HoTen`,`BaiDang`.`TieuDe` AS `TieuDe`,`BaiDang`.`ThoiGianDang` AS `ThoiGianDang`,`HinhAnh`.`DuongDan` AS `DuongDan` from (((`BaiDang` join `HinhAnh` on((`BaiDang`.`MaBaiDang` = `HinhAnh`.`MaBaiDang`))) join `TaiKhoan` on((`BaiDang`.`TenTaiKhoan` = `TaiKhoan`.`TenTaiKhoan`))) join `ThongTinTaiKhoan` on((`BaiDang`.`TenTaiKhoan` = `ThongTinTaiKhoan`.`TenTaiKhoan`))) ;

--
-- VIEW  `ViewBaiDang`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
