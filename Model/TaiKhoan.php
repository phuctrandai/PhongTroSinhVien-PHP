<?php

class TaiKhoan {
    var $TenTaiKhoan;
    var $MatKhau;
    var $LoaiTaiKhoan;
    function getTenTaiKhoan() {
        return $this->TenTaiKhoan;
    }

    function getMatKhau() {
        return $this->MatKhau;
    }

    function getLoaiTaiKhoan() {
        return $this->LoaiTaiKhoan;
    }

    function setTenTaiKhoan($TenTaiKhoan) {
        $this->TenTaiKhoan = $TenTaiKhoan;
    }

    function setMatKhau($MatKhau) {
        $this->MatKhau = $MatKhau;
    }

    function setLoaiTaiKhoan($LoaiTaiKhoan) {
        $this->LoaiTaiKhoan = $LoaiTaiKhoan;
    }
    function __construct($TenTaiKhoan, $MatKhau, $LoaiTaiKhoan) {
        $this->TenTaiKhoan = $TenTaiKhoan;
        $this->MatKhau = $MatKhau;
        $this->LoaiTaiKhoan = $LoaiTaiKhoan;
    }


}

