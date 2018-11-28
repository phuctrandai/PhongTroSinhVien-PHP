<?php
session_start();
require_once '../Dao/TaiKhoanDao.php';

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
    else if($command == 'login') {
        $TenTaiKhoan = $_REQUEST['tenTaiKhoan'];
        $MatKhau = $_REQUEST['matKhau'];
        $MaLoaiTaiKhoan = $_REQUEST['loaiTaiKhoan'];
        
        $taiKhoanDao = new TaiKhoanDao();
        $taiKhoan = $taiKhoanDao->GetTaiKhoan($TenTaiKhoan, $MatKhau, $MaLoaiTaiKhoan);
        if($taiKhoan == null) {
            $_SESSION['LoginFail'] = 1;
            header("Location: ../Webcontent/login.php");
            return;
        }
        $_SESSION['TenTaiKhoan'] = $taiKhoan->TenTaiKhoan;
        $_SESSION['LoaiTaiKhoan'] = $taiKhoan->LoaiTaiKhoan;
        if(isset($_SESSION['prevCommand'])) {
            dieuHuong();
            return;
        }
    }
    else if($command == 'logout') {
        $_SESSION = array();
    }
    header("Location: ../Webcontent/index.php");
}

function dieuHuong() {    
    switch ($_SESSION['prevCommand']) {
    case 'post':
        header("Location: ../Webcontent/post.php");
        break;
    default:
        break;
    }
}