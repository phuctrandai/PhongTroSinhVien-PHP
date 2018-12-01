<?php


require_once '../Model/HinhAnh.php';

class HinhAnhDao {

    function __construct() {
        
    }

    function getAnhDaiDien($maBaiDang) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');

        $sql = "SELECT DuongDan FROM HinhAnh WHERE MaBaiDang = '{$maBaiDang}' LIMIT 1";
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

    function getListAnh($maBaiDang) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        $rs = array();
        $i = 0;
        $sql = "SELECT HinhAnh.DuongDan FROM HinhAnh WHERE MaBaiDang = '{$maBaiDang}'";
        $result = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $rs[$i] = $row['DuongDan'];
                $i++;
            }
        }
        $result->close();
        mysqli_close($connect);
        return $rs;
    }

    public function luuHinhAnh($DuongDan, $MaBaiDang) {
        $link = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($link, 'utf8');
        
        $sql = NSERT INTO `HinhAnh`(`DuongDan`, `MaBaiDang`) VALUES(?,?)';
        $stmt = $link->prepare($sql);
        $stmt->bind_param("ss", $DuongDan, $MaBaiDang);
        $stmt->execute();
        $link->close();
    }

}
