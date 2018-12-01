<?php

include_once '../Model/BaiDang.php';
include_once '../Dao/HinhAnhDao.php';

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
        $hinhAnh = new HinhAnhDao();

        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang']);
                //var_dump($hinhAnh->getAnhDaiDien($row['MaBaiDang'])); echo '<br>';
                $rs[$i]->MaBaiDang = $row['MaBaiDang'];
                $rs[$i]->MaPhong = $row['MaPhong'];
                $rs[$i]->HinhAnh= $hinhAnh->getAnhDaiDien($row['MaBaiDang']);
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
        $hinhAnh = new HinhAnhDao();
        $sql = "SELECT ViewBaiDang.MaPhong, "
                . "ViewBaiDang.MaBaiDang, "
                . "ViewBaiDang.HoTen, "
                . "ViewBaiDang.TieuDe, "
                . "ViewBaiDang.ThoiGianDang, "
                . "ViewBaiDang.GiaPhong "
                . "FROM ViewBaiDang "
                . "ORDER BY ViewBaiDang.GiaPhong";

        $result = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $list[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang']);
                $list[$i]->GiaPhong = $row['GiaPhong'];
                $list[$i]->MaBaiDang = $row['MaBaiDang'];
                $list[$i]->MaPhong = $row['MaPhong'];
                $list[$i]->HinhAnh= $hinhAnh->getAnhDaiDien($row['MaBaiDang']);
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
        $hinhAnh = new HinhAnhDao();
        $sql = "SELECT * FROM ViewBaiDang "
                . "WHERE MONTH(ViewBaiDang.ThoiGianDang) = MONTH(CURRENT_DATE) LIMIT 6";

        $result = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs[$i] = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang']);
                $rs[$i]->MaBaiDang = $row['MaBaiDang'];
                $rs[$i]->MaPhong = $row['MaPhong'];
                $rs[$i]->HinhAnh= $hinhAnh->getAnhDaiDien($row['MaBaiDang']);
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
        $hinhAnh = new HinhAnhDao();
        $sql = "SELECT * FROM ViewBaiDang WHERE MaBaiDang = {$maBaiDang}";
        
        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs = new BaiDang($row['HoTen'], $row['TieuDe'], $row['ThoiGianDang']);
                $rs->MaBaiDang = $row['MaBaiDang'];
                $rs->MaPhong = $row['MaPhong'];
                $rs->HinhAnh = $hinhAnh->getAnhDaiDien($row['MaBaiDang']);
                return $rs;
            }
            $result->close();
        } mysqli_close($connect);
        return null;
    }

    function luuBaiDang($TieuDe, $ThoiGianDang, $MoTa, $TenTaiKhoan) {
        $link = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($link, 'utf8');

        $sql = "INSERT INTO `BaiDang`(`TieuDe`, `ThoiGianDang`, `MoTa`, `LuotXem`, `TenTaiKhoan`) "
                . "VALUES (?, '{$ThoiGianDang}', ?, 0, '{$TenTaiKhoan}')";
        $stmt = $link->prepare($sql);
        $stmt->bind_param("ss", $TieuDe, $MoTa);
        $result = $stmt->execute();

        $stmt->close();
        mysqli_close($link);
        return $result;
    }

    function getMaxMaBaiDang($TenTaiKhoan) {
        /* @var $stmt mysqli_stmt */
        /* @var $result mysqli_result */
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $sql = "SELECT MAX(BaiDang.MaBaiDang) FROM BaiDang WHERE TenTaiKhoan = '{$TenTaiKhoan}'";
        $stmt = $connect->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows > 0) {
            return $result->fetch_row()[0];
        }
        $stmt->close();
        $connect->close();
        return $result;
    }

}
