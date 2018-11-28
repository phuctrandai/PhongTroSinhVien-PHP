<?php
session_start();

require_once '../Dao/BaiDangDao.php';

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
    
    if($command == 'post') {
        if(isset($_SESSION['TaiKhoan'])) {
            header("Location: ../Webcontent/post.php");
        } else {
            $_SESSION['prevCommand'] = 'post';
            $_SESSION['yeuCauDangBai'] = true;
            header("Location: ../Webcontent/login.php");
        }
        return;
    }
    else if($command == 'submitPost') {
        luuBaiDang();
        return;
    }
    else if(isset($_REQUEST["single-post"])) {
        xemBaiDang($_REQUEST["single-post"]);
        return;
    }
    //
    header("Location: ../Webcontent/index.php");
}

function xemBaiDang($maBaiDang) {
    $baiDangDao = new BaiDangDao();
    $baiDangDao->capNhatLuotXem((int)$maBaiDang);
    
    $maPhong = $_REQUEST['phong-tro'];
    
    $_SESSION['maBaiDang'] = $maBaiDang;
    $_SESSION['maPhong'] = $maPhong;
    header("Location: ../Webcontent/single-post.php");
}

function luuBaiDang() {
    /*@var $TaiKhoan TaiKhoan*/
    $TenTaiKhoan = $_SESSION['TenTaiKhoan'];
    $TieuDe = $_REQUEST['tieuDe'];
    $MoTa = $_REQUEST['moTa'];
    $ThoiGianDang = date("Y-m-d");
    
    $baiDangDao = new BaiDangDao();
    $baiDangDao->luuBaiDang($TieuDe, $ThoiGianDang, $MoTa, $TenTaiKhoan);
}