<?php

require_once './Model/BaiDang.php';

class BaiDangDao {

    function __construct() {
        
    }

    function topMoiNhat() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        $rs = array();
        $i = 0;
        $sql = "SELECT * FROM ViewBaiDang ORDER BY ViewBaiDang.ThoiGianDang DESC LIMIT 8";
        $result = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang'], $row['DuongDan']);
                $rs[$i]->MaBaiDang = $row['MaBaiDang'];
                $rs[$i]->MaPhong = $row['MaPhong'];
                $i++;
            }
        } $result->close();
        mysqli_close($connect);
        return $rs;
    }

    function topGiaReNhat() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $list = array();
        $i = 0;
        $sql = "SELECT ViewBaiDang.MaPhong, ViewBaiDang.MaBaiDang, ViewBaiDang.HoTen, ViewBaiDang.TieuDe, ViewBaiDang.ThoiGianDang, ViewBaiDang.DuongDan, PhongTro.GiaPhong FROM ViewBaiDang JOIN PhongTro ON ViewBaiDang.TenTaiKhoan = PhongTro.TenTaiKhoan ORDER BY PhongTro.GiaPhong";

        $result = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $list[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang'], $row['DuongDan']);
                $list[$i]->GiaPhong = $row['GiaPhong'];
                $list[$i]->MaBaiDang = $row['MaBaiDang'];
                $list[$i]->MaPhong = $row['MaPhong'];
                $i++;
            }
        } $result->close();
        mysqli_close($connect);
        return $list;
    }

    function tinTrongThang() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $rs = array();
        $i = 0;
        $sql = "SELECT * FROM ViewBaiDang WHERE MONTH(ViewBaiDang.ThoiGianDang) = MONTH(CURRENT_DATE) LIMIT 6";

        $result = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang'], $row['DuongDan']);
                $rs[$i]->MaBaiDang = $row['MaBaiDang'];
                $rs[$i]->MaPhong = $row['MaPhong'];
                $i++;
            }
        } $result->close();
        mysqli_close($connect);
        return $rs;
    }

    function capNhatLuotXem($maBaiDang) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $sql = "UPDATE BaiDang SET LuotXem = LuotXem + 1 WHERE MaBaiDang = ?";
        $stmt = $connect->prepare($sql);
        $stmt->bind_param("i", $maBaiDang);
        $stmt->execute();
        $stmt->close();
        mysqli_close($connect);
    }

    function getThongTin($maBaiDang) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $sql = "SELECT * FROM ViewBaiDang WHERE MaBaiDang = {$maBaiDang}";

        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang'], $row['DuongDan']);
                $rs->MaBaiDang = $row['MaBaiDang'];
                $rs->MaPhong = $row['MaPhong'];
                return $rs;
            }
            $result->close();
        } mysqli_close($connect);
        return null;
    }

    function luuBaiDang($TieuDe, $ThoiGianDang, $MoTa, $TenTaiKhoan) {
        /*@var $link mysqli*/
        $link = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($link, 'utf8');
        
        $sql = "INSERT INTO `BaiDang`(`TieuDe`, `ThoiGianDang`, `MoTa`, `LuotXem`, `TenTaiKhoan`) "
                . "VALUES (?, '{$ThoiGianDang}', ?, 0, '{$TenTaiKhoan}')";
        /*@var $stmt mysqli_stmt*/
        $stmt = $link->prepare($sql);
        $stmt->bind_param("ss", $TieuDe, $MoTa);
        $stmt->execute();
        $stmt->close();
        mysqli_close($link);
        echo 'Luu hoan tat';
        return 0;
    }

}
