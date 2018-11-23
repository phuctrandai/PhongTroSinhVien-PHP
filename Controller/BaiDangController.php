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
    if(isset($_REQUEST["single-post"])) {
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
    header("Location: ../single-post.php?id={$maPhong}");
}