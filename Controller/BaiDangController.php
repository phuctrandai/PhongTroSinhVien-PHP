<?php
session_start();

require_once '../Dao/BaiDangDao.php';
require_once '../Dao/PhongTroDao.php';
require_once '../Dao/TienNghiDao.php';
require_once '../Dao/MoiTruongDao.php';

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
        if(isset($_SESSION['TenTaiKhoan'])) {
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
        xemBaiDang($_REQUEST["single-post"], $_REQUEST['phong-tro']);
        return;
    }
    //
    header("Location: ../Webcontent/index.php");
}

function xemBaiDang($maBaiDang, $maPhong) {
    $baiDangDao = new BaiDangDao();
    $baiDangDao->capNhatLuotXem((int)$maBaiDang);
    
    $_SESSION['maBaiDang'] = $maBaiDang;
    $_SESSION['maPhong'] = $maPhong;
    header("Location: ../Webcontent/single-post.php");
}

/*
 * Luu bai
 */
function luuBaiDang() {
    
    $TenTaiKhoan = $_SESSION['TenTaiKhoan'];
    $TieuDe = $_REQUEST['tieuDe'];
    $MoTa = $_REQUEST['moTa'];
    $ThoiGianDang = date("Y-m-d");
    
    luuHinhAnh();
//    $phongTroDao = new PhongTroDao();    
//    $baiDangDao = new BaiDangDao();
//    
//    $baiDangDao->luuBaiDang($TieuDe, $ThoiGianDang, $MoTa, $TenTaiKhoan);
//    
//    $MaBaiDang = $baiDangDao->getMaxMaBaiDang($TenTaiKhoan);
//    luuPhongTro($MaBaiDang);
//    
//    $MaPhong = $phongTroDao->getMaPhong($MaBaiDang);
//    luuTienNghi($MaPhong);
//    luuMoiTruong($MaPhong);
//    
//    xemBaiDang($MaBaiDang, $MaPhong);
}

function luuPhongTro($MaBaiDang) {
    $SoLuongPhong = $_REQUEST['soLuongPhong'];
    $SoPhongTrong = $_REQUEST['soPhongTrong'];
    $SoNguoiToiDa = $_REQUEST['soNguoiToiDa'];
    $GiaPhong = $_REQUEST['giaPhong'];
    $DienTich = $_REQUEST['dienTich'];
    $ChoTuQuan = $_REQUEST['choTuQuan'];
    $MaLoaiPhong = $_REQUEST['loaiPhong'];
    $MaKhuVuc = $_REQUEST['khuVuc'];
    $MaQuanHuyen = $_REQUEST['quanHuyen'];
    
    $phongTroDao = new PhongTroDao();
    return $phongTroDao->luuThongTin(
            $SoLuongPhong, $SoPhongTrong, $SoNguoiToiDa, 
            $GiaPhong, $DienTich, $ChoTuQuan, 
            $MaLoaiPhong, $MaKhuVuc, $MaQuanHuyen, 
            $MaBaiDang);
}

function luuTienNghi($MaPhong) {
    $result = 0;
    if(isset($_POST['tienNghiList']) && is_array($_POST['tienNghiList'])) {
        $tienNghiDao = new TienNghiDao();
        $tienNghiList = $_POST['tienNghiList'];
        foreach ($tienNghiList as $maTienNghi) {
            $result = $tienNghiDao->luuTienNghi($MaPhong, $maTienNghi);
        }
    }
    return $result;
}

function luuMoiTruong($MaPhong) {
    $result = 0;
    if(isset($_POST['moiTruongList']) && is_array($_POST['moiTruongList'])) {
        $moiTruongDao = new MoiTruongDao();
        $moiTruongList = $_POST['moiTruongList'];
        foreach ($moiTruongList as $maMoiTruong) {
            $result = $moiTruongDao->luuMoiTruong($MaPhong, $maMoiTruong);
        }
    }
    return $result;
}

function luuHinhAnh() {
    $HinhAnh = $_FILES['hinhAnh'];
//    var_dump($HinhAnh);
    
    foreach ($HinhAnh as $anh) {
        if(isset($anh)) {
            
            if($anh['error'] == 0) {
                echo 'File loi';
            }
            else {
                $temp = explode(".", implode('|',$anh['name']));
                $newfilename = round(microtime(true)) . '.' . end($temp);
                move_uploaded_file(implode('|',$anh['tmp_name']), '../Webcontent/img/'.$newfilename);
                echo 'Up thanh cong';
            }
        }
    }
}
