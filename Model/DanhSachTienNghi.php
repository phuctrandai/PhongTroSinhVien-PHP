<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DanhSachTienNghi
 *
 * @author tung
 */
class DanhSachTienNghi {
    var $MaTienNghi;
    var $MaPhong;
    function getMaTienNghi() {
        return $this->MaTienNghi;
    }

    function getMaPhong() {
        return $this->MaPhong;
    }

    function setMaTienNghi($MaTienNghi) {
        $this->MaTienNghi = $MaTienNghi;
    }

    function setMaPhong($MaPhong) {
        $this->MaPhong = $MaPhong;
    }

    function __construct($MaTienNghi, $MaPhong) {
        $this->MaTienNghi = $MaTienNghi;
        $this->MaPhong = $MaPhong;
    }

    //put your code here
}
