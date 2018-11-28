<?php

require_once '../Model/TaiKhoan.php';

class TaiKhoanDao {
    //put your code here
    function AddTaiKhoan($TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan, $HoTen, $GioiTinh){
        $connection= mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
            mysqli_set_charset($connection,'utf8');
        if($connection->connect_error){
            die('kết nối không thành công '.$connection->connect_error);
            return;
        }
        //them tai khoan
        $query = "INSERT INTO `TaiKhoan`(`TenTaiKhoan`, `MatKhau`, `MaLoaiTaiKhoan`) VALUES (?,?,?)";
        $stmt = $connection->prepare($query);
        //Gan tham so
        $stmt->bind_param("ssi", $TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan );
        // Thuc thi
        $stmt->execute();
        // Dong ket noi
        $stmt->close();
        //them thong tin tai khoan
        $query = "INSERT INTO `ThongTinTaiKhoan`(`TenTaiKhoan`, `HoTen`, `GioiTinh`) VALUES (?,?,?)";
        $stmt = $connection->prepare($query);
        $stmt->bind_param("ssi", $TenTaiKhoan, $HoTen, $GioiTinh );
        $stmt->execute();
        $stmt->close();
        $connection->close();
    }
    
    function GetTaiKhoan($TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan) {
        $connection= mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connection,'utf8');
        if($connection->connect_error){
            die('Kết nối không thành công: '.$connection->connect_error);
            return;
        }
        $sql = "SELECT * FROM `TaiKhoan` WHERE TenTaiKhoan = ? AND MatKhau = ? AND MaLoaiTaiKhoan = ?";
        
        /*@var $stmt mysqli_stmt*/
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("ssi", $TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan);
        $stmt->execute();
        
        $result = $stmt->get_result();
        if($result->num_rows > 0) {
            $row = $result->fetch_row();
            $taiKhoan = new TaiKhoan($row[0], $row[1], $row[2]);
            return $taiKhoan;
        }
        $stmt->close();
        $connection->close();
        return null;
    }
}
