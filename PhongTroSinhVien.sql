-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 16, 2018 lúc 03:34 AM
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
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `BaiDang`
--

INSERT INTO `BaiDang` (`MaBaiDang`, `TieuDe`, `ThoiGianDang`, `MoTa`, `TenTaiKhoan`) VALUES
(1, 'Phòng trọ cho thuê', '2018-11-16', 'Phòng trọ cho sinh viên thuê diện tích rộng, thoáng mát, đầy đủ tiện nghi...', 'phuc'),
(2, 'Cần thuê phòng trọ giá rẻ', '2018-11-16', 'Cần thuê phòng giá rẻ từ 400k-500k/tháng', 'quang');

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
(3, 2);

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
(2, 1);

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
(1, 'img/', 1),
(2, 'img/', 2);

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
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `PhongTro`
--

INSERT INTO `PhongTro` (`MaPhong`, `SoLuongPhong`, `SoPhongTrong`, `SoNguoiToiDa`, `GiaPhong`, `DienTich`, `ChoTuQuan`, `MaLoaiPhong`, `MaKhuVuc`, `MaQuanHuyen`, `TenTaiKhoan`) VALUES
(1, 10, 9, 3, 3500000, 30, 1, 1, 1, 1, 'phuc'),
(2, 5, 5, 2, 450, 10, 0, 2, 3, 4, 'quang');

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
('quang', '123', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThongTinTaiKhoan`
--

CREATE TABLE `ThongTinTaiKhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ThongTinTaiKhoan`
--

INSERT INTO `ThongTinTaiKhoan` (`TenTaiKhoan`, `HoTen`, `GioiTinh`) VALUES
('phuc', 'Trần Đại Phúc', 1),
('quang', 'Lê Đình Quang', 1);

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
  ADD KEY `FOREIGN` (`MaLoaiPhong`,`MaKhuVuc`,`MaQuanHuyen`,`TenTaiKhoan`),
  ADD KEY `TenTaiKhoan` (`TenTaiKhoan`),
  ADD KEY `MaKhuVuc` (`MaKhuVuc`),
  ADD KEY `MaQuanHuyen` (`MaQuanHuyen`);

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
  MODIFY `MaBaiDang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `HinhAnh`
--
ALTER TABLE `HinhAnh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `PhongTro_ibfk_1` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `TaiKhoan` (`TenTaiKhoan`),
  ADD CONSTRAINT `PhongTro_ibfk_2` FOREIGN KEY (`MaKhuVuc`) REFERENCES `KhuVuc` (`MaKhuVuc`),
  ADD CONSTRAINT `PhongTro_ibfk_3` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `LoaiPhong` (`MaLoaiPhong`),
  ADD CONSTRAINT `PhongTro_ibfk_4` FOREIGN KEY (`MaQuanHuyen`) REFERENCES `QuanHuyen` (`MaQuanHuyen`);

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


--
-- Siêu dữ liệu
--
USE `phpmyadmin`;

--
-- Siêu dữ liệu cho bảng BaiDang
--

--
-- Siêu dữ liệu cho bảng DanhSachMoiTruong
--

--
-- Siêu dữ liệu cho bảng DanhSachTienNghi
--

--
-- Siêu dữ liệu cho bảng HinhAnh
--

--
-- Siêu dữ liệu cho bảng KhuVuc
--

--
-- Siêu dữ liệu cho bảng LoaiPhong
--

--
-- Siêu dữ liệu cho bảng LoaiTaiKhoan
--

--
-- Siêu dữ liệu cho bảng MoiTruong
--

--
-- Siêu dữ liệu cho bảng PhongTro
--

--
-- Siêu dữ liệu cho bảng QuanHuyen
--

--
-- Siêu dữ liệu cho bảng TaiKhoan
--

--
-- Siêu dữ liệu cho bảng ThongTinTaiKhoan
--

--
-- Siêu dữ liệu cho bảng TienNghi
--

--
-- Siêu dữ liệu cho cơ sở dữ liệu PhongTroSinhVien
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
