<?php

class TaiKhoanDao {
    //put your code here
    function AddTaiKhoan($TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan, $HoTen, $GioiTinh){
        $connect= mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
            mysqli_set_charset($connect,'utf8');
        if($connect->connect_error){
            die('kết nối không thành công '.$connect->connect_error);
        }
        //them tai khoan
        $query = "INSERT INTO `TaiKhoan`(`TenTaiKhoan`, `MatKhau`, `MaLoaiTaiKhoan`) VALUES (?,?,?)";
        $stmt = $this->connection->prepare($query);
        //Gan tham so
        $stmt->bind_param("ssi", $TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan );
        // Thuc thi
        $stmt->execute();
        // Dong ket noi
        $stmt->close();
        //them thong tin tai khoan
        $query = "INSERT INTO `ThongTinTaiKhoan`(`TenTaiKhoan`, `HoTen`, `GioiTinh`) VALUES (?,?,?)";
        $stmt = $this->connection->prepare($query);
        $stmt->bind_param("ssi", $TenTaiKhoan, $TenTaiKhoan, $GioiTinh );
        $stmt->execute();
        $stmt->close();
        $connect->close();
    }
}
