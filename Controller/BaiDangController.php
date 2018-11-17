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
    getBaiDang();
    //
    header("Location: ../index.php");
}

function getBaiDang() {
    $baiDangDao = new BaiDangDao();
    $listBaiDang = $baiDangDao->getBaiDang();

    $_SESSION['listBaiDang'] = serialize($listBaiDang);
//    var_dump($_SESSION['listBaiDang']);
}