<?php
class PhongTro{
    var $MaPhong;
    var $SoLuongPhong;
    var $SoPhongTrong;
    var $SoNguoiToiDa;
    var $GiaPhong;
    var $DienTich;
    var $ChoTuQuan;
    var $MaLoaiPhong;
    var $MaKhuVuc;
    var $MaQuanHuyen;
    var $TenTaiKhoan;
    function getMaPhong() {
        return $this->MaPhong;
    }

    function getSoLuongPhong() {
        return $this->SoLuongPhong;
    }

    function getSoPhongTrong() {
        return $this->SoPhongTrong;
    }

    function getSoNguoiToiDa() {
        return $this->SoNguoiToiDa;
    }

    function getGiaPhong() {
        return $this->GiaPhong;
    }

    function getDienTich() {
        return $this->DienTich;
    }

    function getChoTuQuan() {
        return $this->ChoTuQuan;
    }

    function getMaLoaiPhong() {
        return $this->MaLoaiPhong;
    }

    function getMaKhuVuc() {
        return $this->MaKhuVuc;
    }

    function getMaQuanHuyen() {
        return $this->MaQuanHuyen;
    }

    function getTenTaiKhoan() {
        return $this->TenTaiKhoan;
    }

    function setMaPhong($MaPhong) {
        $this->MaPhong = $MaPhong;
    }

    function setSoLuongPhong($SoLuongPhong) {
        $this->SoLuongPhong = $SoLuongPhong;
    }

    function setSoPhongTrong($SoPhongTrong) {
        $this->SoPhongTrong = $SoPhongTrong;
    }

    function setSoNguoiToiDa($SoNguoiToiDa) {
        $this->SoNguoiToiDa = $SoNguoiToiDa;
    }

    function setGiaPhong($GiaPhong) {
        $this->GiaPhong = $GiaPhong;
    }

    function setDienTich($DienTich) {
        $this->DienTich = $DienTich;
    }

    function setChoTuQuan($ChoTuQuan) {
        $this->ChoTuQuan = $ChoTuQuan;
    }

    function setMaLoaiPhong($MaLoaiPhong) {
        $this->MaLoaiPhong = $MaLoaiPhong;
    }

    function setMaKhuVuc($MaKhuVuc) {
        $this->MaKhuVuc = $MaKhuVuc;
    }

    function setMaQuanHuyen($MaQuanHuyen) {
        $this->MaQuanHuyen = $MaQuanHuyen;
    }

    function setTenTaiKhoan($TenTaiKhoan) {
        $this->TenTaiKhoan = $TenTaiKhoan;
    }
    function __construct($MaPhong, $SoLuongPhong, $SoPhongTrong, $SoNguoiToiDa, $GiaPhong, $DienTich, $ChoTuQuan, $MaLoaiPhong, $MaKhuVuc, $MaQuanHuyen, $TenTaiKhoan) {
        $this->MaPhong = $MaPhong;
        $this->SoLuongPhong = $SoLuongPhong;
        $this->SoPhongTrong = $SoPhongTrong;
        $this->SoNguoiToiDa = $SoNguoiToiDa;
        $this->GiaPhong = $GiaPhong;
        $this->DienTich = $DienTich;
        $this->ChoTuQuan = $ChoTuQuan;
        $this->MaLoaiPhong = $MaLoaiPhong;
        $this->MaKhuVuc = $MaKhuVuc;
        $this->MaQuanHuyen = $MaQuanHuyen;
        $this->TenTaiKhoan = $TenTaiKhoan;
    }



}
?>

