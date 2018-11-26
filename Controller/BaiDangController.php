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
            header("Location: ../post.php");
        } else {
            header("Location: ../login.php");
        }
        return;
    }
    else if(isset($_REQUEST["single-post"])) {
        xemBaiDang($_REQUEST["single-post"]);
        return;
    }
    
    //
    header("Location: ../index.php");
}

function xemBaiDang($maBaiDang) {
    $baiDangDao = new BaiDangDao();
    $baiDangDao->capNhatLuotXem((int)$maBaiDang);
    
    $maPhong = $_REQUEST['phong-tro'];
    
    $_SESSION['maBaiDang'] = $maBaiDang;
    $_SESSION['maPhong'] = $maPhong;
    header("Location: ../single-post.php");
}