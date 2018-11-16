<?php

class TaiKhoanDao {
    //put your code here
    function AddTaiKhoan($TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan, $HoTen, $GioiTinh){
        $connection= mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
            mysqli_set_charset($connection,'utf8');
        if($connection->connect_error){
            die('kết nối không thành công '.$connection->connect_error);
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
}
