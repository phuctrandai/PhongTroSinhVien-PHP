<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BaiDang
 *
 * @author tam
 */
class BaiDang {
    var $HoTen;
    var $TieuDe;
    var $ThoiGiagDang;
    var $HinhAnh;
    var $GiaPhong;
    var $MaBaiDang;
    var $MaPhong;
    
    function __construct($HoTen, $TieuDe, $ThoiGiagDang, $HinhAnh) {
        $this->HoTen = $HoTen;
        $this->TieuDe = $TieuDe;
        $this->ThoiGiagDang = $ThoiGiagDang;
        $this->HinhAnh = $HinhAnh;
    }
}
