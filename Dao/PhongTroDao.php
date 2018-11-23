<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include '.Model/PhongTro.php';

class PhongTroDao {
    public function __construct() {
    }
    
    public function GetThongTin($maPhong) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        
        $sql = "SELECT * FROM PhongTro WHERE MaPhong = {$maPhong}";
        $result = $this->connection->query($sql);
        if ($result->num_rows > 0) {
            $p = new PhongTro();
            while ($row = $result->fetch_assoc()) {
                $p->MaPhong = $row['MaPhong'];
                $p->ChoTuQuan = $row['ChoTuQuan'];
                $p->DienTich = $row['DienTich'];
                $p->GiaPhong = $row['GiaPhong'];
                $p->MaKhuVuc = $row['MaKhuVuc'];
                $p->MaLoaiPhong = $row['MaLoaiPhong'];
                $p->MaQuanHuyen = $row['MaQuanHuyen'];
                $p->SoLuongPhong = $row['SoLuongPhong'];
                $p->SoNguoiToiDa = $row['SoNguoiToiDa'];
                $p->SoPhongTrong = $row['SoPhongTrong'];
                $p->TenTaiKhoan = $row['TenTaiKhong'];
                return $p;
            }
            $result->close();
        }
        return null;
    }
}
