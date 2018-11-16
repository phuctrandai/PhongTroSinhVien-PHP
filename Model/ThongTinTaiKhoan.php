<?php
class ThongTinTaiKhoan{
    var $TenTaiKhoan;
    var $HoTen;
    var $GioiTinh;
    function getTenTaiKhoan() {
        return $this->TenTaiKhoan;
    }

    function getHoTen() {
        return $this->HoTen;
    }

    function getGioiTinh() {
        return $this->GioiTinh;
    }

    function setTenTaiKhoan($TenTaiKhoan) {
        $this->TenTaiKhoan = $TenTaiKhoan;
    }

    function setHoTen($HoTen) {
        $this->HoTen = $HoTen;
    }

    function setGioiTinh($GioiTinh) {
        $this->GioiTinh = $GioiTinh;
    }
    function __construct($TenTaiKhoan, $HoTen, $GioiTinh) {
        $this->TenTaiKhoan = $TenTaiKhoan;
        $this->HoTen = $HoTen;
        $this->GioiTinh = $GioiTinh;
    }


}
?>

