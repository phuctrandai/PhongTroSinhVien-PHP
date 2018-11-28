<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include './Model/PhongTro.php';

class PhongTroDao {
    public function __construct() {
    }
    
    public function getThongTin($maPhong) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        $sql = "SELECT *, KhuVuc.TenKhuVuc, QuanHuyen.TenQuanHuyen, LoaiPhong.TenLoaiPhong FROM PhongTro JOIN KhuVuc ON PhongTro.MaKhuVuc = KhuVuc.MaKhuVuc JOIN QuanHuyen ON QuanHuyen.MaQuanHuyen = PhongTro.MaQuanHuyen JOIN LoaiPhong ON LoaiPhong.MaLoaiPhong = PhongTro.MaLoaiPhong WHERE PhongTro.MaPhong = {$maPhong}";
        $result = $connect->query($sql);
        if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $p = new PhongTro($row['MaPhong'], 
                        $row['SoLuongPhong'], 
                        $row['SoPhongTrong'], 
                        $row['SoNguoiToiDa'], 
                        $row['GiaPhong'],
                        $row['DienTich'],
                        $row['ChoTuQuan'],
                        $row['TenLoaiPhong'],
                        $row['TenKhuVuc'],
                        $row['TenQuanHuyen'],
                        $row['TenTaiKhoan']);
                return $p;
            } $result->close();
        } return null;
    }
}