<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of HinhAnh
 *
 * @author tung
 */
class HinhAnh {
    var $MaHinhAnh;
    var $DuongDan;
    var  $MaBaiDang;
    function getMaHinhAnh() {
        return $this->MaHinhAnh;
    }

    function getDuongDan() {
        return $this->DuongDan;
    }

    function getMaBaiDang() {
        return $this->MaBaiDang;
    }

    function setMaHinhAnh($MaHinhAnh) {
        $this->MaHinhAnh = $MaHinhAnh;
    }

    function setDuongDan($DuongDan) {
        $this->DuongDan = $DuongDan;
    }

    function setMaBaiDang($MaBaiDang) {
        $this->MaBaiDang = $MaBaiDang;
    }

    function __construct($MaHinhAnh, $DuongDan, $MaBaiDang) {
        $this->MaHinhAnh = $MaHinhAnh;
        $this->DuongDan = $DuongDan;
        $this->MaBaiDang = $MaBaiDang;
    }

    //put your code here
}
