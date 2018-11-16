<?php
class LoaiTaiKhoan{
    var $LoaiTaiKhoan;
    var $TenLoaiTaiKhoan;
    function getLoaiTaiKhoan() {
        return $this->LoaiTaiKhoan;
    }

    function getTenLoaiTaiKhoan() {
        return $this->TenLoaiTaiKhoan;
    }

    function setLoaiTaiKhoan($LoaiTaiKhoan) {
        $this->LoaiTaiKhoan = $LoaiTaiKhoan;
    }

    function setTenLoaiTaiKhoan($TenLoaiTaiKhoan) {
        $this->TenLoaiTaiKhoan = $TenLoaiTaiKhoan;
    }

    function __construct($LoaiTaiKhoan, $TenLoaiTaiKhoan) {
        $this->LoaiTaiKhoan = $LoaiTaiKhoan;
        $this->TenLoaiTaiKhoan = $TenLoaiTaiKhoan;
    }

}
?>

