<?php

include_once './Model/BaiDang.php';

class BaiDangDao {

    function __construct() {
        
    }

    function topMoiNhat() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        $rs = array();
        $i = 0;
        $sql = "SELECT * FROM ViewBaiDang ORDER BY ViewBaiDang.ThoiGianDang DESC LIMIT 8";
        $querry = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($querry);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($querry)) {
                $rs[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang'], $row['DuongDan']);
                $rs[$i]->MaBaiDang = $row['MaBaiDang'];
                $rs[$i]->MaPhong = $row['MaPhong'];
                $i++;
            }
        }
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
        }
        mysqli_close($connect);
        return $list;
    }

    function tinTrongThang() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $rs = array();
        $i = 0;
        $sql = "SELECT * FROM ViewBaiDang WHERE MONTH(ViewBaiDang.ThoiGianDang) = MONTH(CURRENT_DATE) LIMIT 6";

        $querry = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($querry);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($querry)) {
                $rs[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang'], $row['DuongDan']);
                $rs[$i]->MaBaiDang = $row['MaBaiDang'];
                $rs[$i]->MaPhong = $row['MaPhong'];
                $i++;
            }
        }
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
    }

}
