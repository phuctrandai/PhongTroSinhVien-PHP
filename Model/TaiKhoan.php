<?php

class TaiKhoan {
    var $TenTaiKhoan;
    var $MatKhau;
    var $LoaiTaiKhoan;
    
    function __construct($TenTaiKhoan, $MatKhau, $LoaiTaiKhoan) {
        $this->TenTaiKhoan = $TenTaiKhoan;
        $this->MatKhau = $MatKhau;
        $this->LoaiTaiKhoan = $LoaiTaiKhoan;
    }


}

