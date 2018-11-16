<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DanhSachMoiTruong
 *
 * @author tung
 */
class DanhSachMoiTruong {
    var $MaMoiTruong;
    var $MaPhong;
    
    function getMaMoiTruong() {
        return $this->MaMoiTruong;
    }

    function getMaPhong() {
        return $this->MaPhong;
    }

    function setMaMoiTruong($MaMoiTruong) {
        $this->MaMoiTruong = $MaMoiTruong;
    }

    function setMaPhong($MaPhong) {
        $this->MaPhong = $MaPhong;
    }

    function __construct($MaMoiTruong, $MaPhong) {
        $this->MaMoiTruong = $MaMoiTruong;
        $this->MaPhong = $MaPhong;
    }

    //put your code here
}
