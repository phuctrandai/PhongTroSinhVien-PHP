<?php
include_once '../Dao/TaiKhoanDao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    doPost();
} else if ($_SERVER["REQUEST_METHOD"] == "GET") {
    doGet();
}

function doPost() {
    doGet();
}

function doGet() {
    $command = $_REQUEST['command'];
    
    if($command == 'sign-up') {
        $TenTaiKhoan = $_REQUEST['tenTaiKhoan'];
        $MatKhau = $_REQUEST['matKhau'];
        $MaLoaiTaiKhoan = $_REQUEST['loaiTaiKhoan'];
        $HoTen = $_REQUEST['hoTen'];
        $GioiTinh = $_REQUEST['gioiTinh'];
        
        $taiKhoanDao = new TaiKhoanDao();
        $taiKhoanDao->AddTaiKhoan($TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan, $HoTen, $GioiTinh);
    }
    //
    header("Location: ../index.php");
}