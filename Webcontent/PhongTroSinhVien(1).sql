-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 01, 2018 lúc 05:34 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `PhongTroSinhVien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BaiDang`
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
-- Đang đổ dữ liệu cho bảng `BaiDang`
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
(22, 'Test luu bai dang', '2018-11-29', '', 1, 'phuc'),
(23, 'Cho thuê phòng trọ sinh viên ', '2018-12-12', 'Phòng trọ thoáng mát giá rẻ,gần trường khoa học thuận tiện cho việc đi lại. giá 350k-450k/tháng', 10, 'phuc'),
(24, 'Cho thuê nhà nguyên căn ', '2018-12-13', 'Nhà nguyên căn đầy đủ tiện nghi, thoáng mát, 2 tầng giá 2.000.000đ/tháng', 12, 'phuc'),
(25, 'Phòng trọ cho nữ thuê', '2018-12-14', 'Phòng trọ cho nữ thuê, chủ nhà vui tính, hòa đồng, an ninh tốt, vệ sinh trong 350k/tháng', 9, 'phuc'),
(26, 'Cho thuê phòng trọ khép kin', '2018-12-15', 'Phòng trọ khép kín, gần chợ An cựu, giá 550k/tháng', 15, 'phuc'),
(27, 'Cho thuê nhà nguyên căn gần chợ An Cựu', '2018-12-17', 'Nhà nguyên căn cần cho thuê, rộng rãi thoáng mát, gần chợ An Cựu, giá 1.500.000đ/ tháng', 9, 'phuc'),
(28, 'Phòng trọ cho thuê ', '2018-12-14', 'phòng trọ cho sinh viên thuê vệ sinh ngoài giá 450k/tháng', 20, 'phuc'),
(29, 'Cư xá Minh Anh cho thuê phòng trọ', '2018-12-15', 'cư xá Minh Anh còn 3 phòng trống giá 700k-750k/tháng', 19, 'phuc'),
(30, 'Cho thuê phòng trọ gần ĐHKH', '2018-12-15', 'phòng trọ giá rẻ 350k/tháng', 18, 'phuc'),
(31, 'Cho thuê phòng trọ gần ĐHSP', '2018-12-20', 'cho thuê phòng trọ sinh gần đại học sư phạm 350k/tháng', 21, 'phuc'),
(32, 'Cho thuê phòng trọ gần Ngự bình', '2018-11-14', 'phòng trọ cho thuê còn trống 2 phòng 350k/tháng', 25, 'phuc'),
(33, 'Cho thuê phòng trọ gần Hồ Đắc Di', '2018-11-13', 'Phòng trọ thoáng mát vệ sinh ngoài giá 400k', 24, 'phuc'),
(34, 'phòng trọ gần Trần phú', '2018-11-06', 'cho thuê phòng trọ giá rẻ 350k/tháng', 22, 'phuc'),
(35, 'Cho thuê phòng giá rẻ đường Đặng huy trứ', '2018-11-13', 'Phòng trọ thoáng mát giá 350k/tháng', 25, 'phuc'),
(36, 'Cho thuê phòng trọ gần Điện Biên phủ', '2018-11-06', 'Phòng trọ giá rẻ 350k/tháng', 25, 'phuc'),
(37, 'Cho thuê phòng trọ gần đường Lê Lợi', '2018-11-13', 'Phòng trọ cho thuê giá 350k/tháng', 24, 'phuc'),
(38, 'Căn hộ cho thuê', '2018-11-06', 'gần Đại nội giá 3.000.000đ/tháng', 30, 'phuc'),
(39, 'Cho thuê nhà nguyên căn gần Đặng huy trứ', '2018-11-06', 'nhà nguyên căn giá 3.000.000đ.tháng', 32, 'phuc'),
(40, 'Cho thuê nhà nguyên căn gần đại nội', '2018-11-13', 'nhà nguyên căn thoáng mát giá 3.000.000đ/tháng', 30, 'phuc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachMoiTruong`
--

CREATE TABLE `DanhSachMoiTruong` (
  `MaMoiTruong` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DanhSachMoiTruong`
--

INSERT INTO `DanhSachMoiTruong` (`MaMoiTruong`, `MaPhong`) VALUES
(1, 1),
(1, 6),
(1, 12),
(3, 2),
(3, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachTienNghi`
--

CREATE TABLE `DanhSachTienNghi` (
  `MaTienNghi` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DanhSachTienNghi`
--

INSERT INTO `DanhSachTienNghi` (`MaTienNghi`, `MaPhong`) VALUES
(1, 2),
(1, 12),
(2, 1),
(3, 6),
(4, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `HinhAnh`
--

CREATE TABLE `HinhAnh` (
  `MaHinhAnh` int(11) NOT NULL,
  `DuongDan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaBaiDang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `HinhAnh`
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
-- Cấu trúc bảng cho bảng `KhuVuc`
--

CREATE TABLE `KhuVuc` (
  `MaKhuVuc` int(11) NOT NULL,
  `TenKhuVuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `KhuVuc`
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
-- Cấu trúc bảng cho bảng `LoaiPhong`
--

CREATE TABLE `LoaiPhong` (
  `MaLoaiPhong` int(11) NOT NULL,
  `TenLoaiPhong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `LoaiPhong`
--

INSERT INTO `LoaiPhong` (`MaLoaiPhong`, `TenLoaiPhong`) VALUES
(1, 'Căn hộ'),
(2, 'Phòng trọ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `LoaiTaiKhoan`
--

CREATE TABLE `LoaiTaiKhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `LoaiTaiKhoan`
--

INSERT INTO `LoaiTaiKhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'Chủ trọ'),
(2, 'Người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `MoiTruong`
--

CREATE TABLE `MoiTruong` (
  `MaMoiTruong` int(11) NOT NULL,
  `TenMoiTruong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `MoiTruong`
--

INSERT INTO `MoiTruong` (`MaMoiTruong`, `TenMoiTruong`) VALUES
(1, 'Chợ'),
(2, 'Siêu thị'),
(3, 'Trường học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PhongTro`
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
-- Đang đổ dữ liệu cho bảng `PhongTro`
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
(12, 1, 1, 1, 10000, 1, 1, 1, 1, 1, 22),
(13, 5, 1, 2, 3500000, 2, 1, 2, 1, 4, 2),
(14, 3, 2, 2, 3500000, 4, 1, 2, 5, 6, 31),
(15, 6, 1, 2, 3500000, 2, 1, 2, 3, 5, 30),
(16, 5, 2, 2, 400000, 2, 1, 2, 1, 1, 32),
(17, 4, 1, 2, 3500000, 3, 1, 2, 1, 1, 33),
(18, 5, 2, 2, 450000, 4, 1, 2, 3, 4, 23),
(19, 1, 1, 5, 2000000, 12, 1, 1, 9, 1, 24),
(20, 4, 2, 2, 3500000, 3, 1, 2, 12, 6, 25),
(21, 5, 1, 2, 500000, 3, 0, 2, 6, 1, 26),
(22, 5, 2, 2, 500000, 3, 1, 2, 6, 1, 26),
(23, 1, 1, 5, 1500000, 10, 1, 1, 6, 1, 27),
(24, 5, 2, 3, 450000, 3, 1, 2, 4, 8, 28),
(25, 10, 2, 3, 700000, 3, 1, 2, 10, 6, 29),
(26, 4, 1, 2, 3500000, 3, 1, 2, 3, 4, 30),
(27, 4, 1, 2, 3500000, 3, 1, 2, 5, 6, 31),
(28, 3, 1, 1, 3500000, 3, 1, 2, 1, 1, 32),
(29, 5, 2, 3, 400000, 2, 1, 2, 6, 1, 33),
(30, 6, 2, 2, 3500000, 2, 1, 2, 3, 3, 34),
(31, 2, 1, 2, 3500000, 3, 1, 2, 3, 3, 35),
(32, 5, 2, 2, 3500000, 2, 1, 2, 4, 4, 36),
(33, 3, 1, 2, 350000, 3, 1, 2, 5, 4, 37),
(34, 1, 1, 5, 3000000, 10, 1, 1, 10, 6, 38),
(35, 1, 1, 6, 3000000, 10, 1, 1, 3, 3, 39),
(36, 1, 1, 6, 3000000, 12, 1, 1, 10, 6, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `QuanHuyen`
--

CREATE TABLE `QuanHuyen` (
  `MaQuanHuyen` int(11) NOT NULL,
  `TenQuanHuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `QuanHuyen`
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
-- Cấu trúc bảng cho bảng `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `TaiKhoan`
--

INSERT INTO `TaiKhoan` (`TenTaiKhoan`, `MatKhau`, `MaLoaiTaiKhoan`) VALUES
('phuc', '123', 1),
('quang', '123', 2),
('tam', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThongTinTaiKhoan`
--

CREATE TABLE `ThongTinTaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `SoDienThoai` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ThongTinTaiKhoan`
--

INSERT INTO `ThongTinTaiKhoan` (`TenTaiKhoan`, `HoTen`, `GioiTinh`, `SoDienThoai`) VALUES
('phuc', 'Trần Đại Phúc', 1, ''),
('quang', 'Lê Đình Quang', 1, ''),
('tam', 'TTT', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TienNghi`
--

CREATE TABLE `TienNghi` (
  `MaTienNghi` int(11) NOT NULL,
  `TenTienNghi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `TienNghi`
--

INSERT INTO `TienNghi` (`MaTienNghi`, `TenTienNghi`) VALUES
(1, 'Wifi'),
(2, 'Vệ sinh trong'),
(3, 'Điều hòa'),
(4, 'Giường nệm');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `BaiDang`
--
ALTER TABLE `BaiDang`
  ADD PRIMARY KEY (`MaBaiDang`),
  ADD KEY `FOREIGN` (`TenTaiKhoan`);

--
-- Chỉ mục cho bảng `DanhSachMoiTruong`
--
ALTER TABLE `DanhSachMoiTruong`
  ADD KEY `FOREIGN` (`MaMoiTruong`,`MaPhong`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Chỉ mục cho bảng `DanhSachTienNghi`
--
ALTER TABLE `DanhSachTienNghi`
  ADD KEY `FOREIGN` (`MaTienNghi`,`MaPhong`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Chỉ mục cho bảng `HinhAnh`
--
ALTER TABLE `HinhAnh`
  ADD PRIMARY KEY (`MaHinhAnh`),
  ADD KEY `FOREIGN` (`MaBaiDang`);

--
-- Chỉ mục cho bảng `KhuVuc`
--
ALTER TABLE `KhuVuc`
  ADD PRIMARY KEY (`MaKhuVuc`);

--
-- Chỉ mục cho bảng `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  ADD PRIMARY KEY (`MaLoaiPhong`);

--
-- Chỉ mục cho bảng `LoaiTaiKhoan`
--
ALTER TABLE `LoaiTaiKhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Chỉ mục cho bảng `MoiTruong`
--
ALTER TABLE `MoiTruong`
  ADD PRIMARY KEY (`MaMoiTruong`);

--
-- Chỉ mục cho bảng `PhongTro`
--
ALTER TABLE `PhongTro`
  ADD PRIMARY KEY (`MaPhong`),
  ADD KEY `FOREIGN` (`MaLoaiPhong`,`MaKhuVuc`,`MaQuanHuyen`,`MaBaiDang`),
  ADD KEY `MaKhuVuc` (`MaKhuVuc`),
  ADD KEY `MaQuanHuyen` (`MaQuanHuyen`),
  ADD KEY `MaBaiDang` (`MaBaiDang`) USING BTREE,
  ADD KEY `MaBaiDang_2` (`MaBaiDang`);

--
-- Chỉ mục cho bảng `QuanHuyen`
--
ALTER TABLE `QuanHuyen`
  ADD PRIMARY KEY (`MaQuanHuyen`);

--
-- Chỉ mục cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD KEY `FOREIGN` (`MaLoaiTaiKhoan`);

--
-- Chỉ mục cho bảng `ThongTinTaiKhoan`
--
ALTER TABLE `ThongTinTaiKhoan`
  ADD KEY `FOREIGN` (`TenTaiKhoan`);

--
-- Chỉ mục cho bảng `TienNghi`
--
ALTER TABLE `TienNghi`
  ADD PRIMARY KEY (`MaTienNghi`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `BaiDang`
--
ALTER TABLE `BaiDang`
  MODIFY `MaBaiDang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `HinhAnh`
--
ALTER TABLE `HinhAnh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `KhuVuc`
--
ALTER TABLE `KhuVuc`
  MODIFY `MaKhuVuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  MODIFY `MaLoaiPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `LoaiTaiKhoan`
--
ALTER TABLE `LoaiTaiKhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `MoiTruong`
--
ALTER TABLE `MoiTruong`
  MODIFY `MaMoiTruong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `PhongTro`
--
ALTER TABLE `PhongTro`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `QuanHuyen`
--
ALTER TABLE `QuanHuyen`
  MODIFY `MaQuanHuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `TienNghi`
--
ALTER TABLE `TienNghi`
  MODIFY `MaTienNghi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `BaiDang`
--
ALTER TABLE `BaiDang`
  ADD CONSTRAINT `BaiDang_ibfk_1` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `TaiKhoan` (`TenTaiKhoan`);

--
-- Các ràng buộc cho bảng `DanhSachMoiTruong`
--
ALTER TABLE `DanhSachMoiTruong`
  ADD CONSTRAINT `DanhSachMoiTruong_ibfk_1` FOREIGN KEY (`MaMoiTruong`) REFERENCES `MoiTruong` (`MaMoiTruong`),
  ADD CONSTRAINT `DanhSachMoiTruong_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `PhongTro` (`MaPhong`);

--
-- Các ràng buộc cho bảng `DanhSachTienNghi`
--
ALTER TABLE `DanhSachTienNghi`
  ADD CONSTRAINT `DanhSachTienNghi_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `PhongTro` (`MaPhong`),
  ADD CONSTRAINT `DanhSachTienNghi_ibfk_2` FOREIGN KEY (`MaTienNghi`) REFERENCES `TienNghi` (`MaTienNghi`);

--
-- Các ràng buộc cho bảng `HinhAnh`
--
ALTER TABLE `HinhAnh`
  ADD CONSTRAINT `HinhAnh_ibfk_1` FOREIGN KEY (`MaBaiDang`) REFERENCES `BaiDang` (`MaBaiDang`);

--
-- Các ràng buộc cho bảng `PhongTro`
--
ALTER TABLE `PhongTro`
  ADD CONSTRAINT `PhongTro_ibfk_2` FOREIGN KEY (`MaKhuVuc`) REFERENCES `KhuVuc` (`MaKhuVuc`),
  ADD CONSTRAINT `PhongTro_ibfk_3` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `LoaiPhong` (`MaLoaiPhong`),
  ADD CONSTRAINT `PhongTro_ibfk_4` FOREIGN KEY (`MaQuanHuyen`) REFERENCES `QuanHuyen` (`MaQuanHuyen`),
  ADD CONSTRAINT `PhongTro_ibfk_5` FOREIGN KEY (`MaBaiDang`) REFERENCES `BaiDang` (`MaBaiDang`);

--
-- Các ràng buộc cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD CONSTRAINT `TaiKhoan_ibfk_1` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `LoaiTaiKhoan` (`MaLoaiTaiKhoan`);

--
-- Các ràng buộc cho bảng `ThongTinTaiKhoan`
--
ALTER TABLE `ThongTinTaiKhoan`
  ADD CONSTRAINT `ThongTinTaiKhoan_ibfk_1` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `TaiKhoan` (`TenTaiKhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
