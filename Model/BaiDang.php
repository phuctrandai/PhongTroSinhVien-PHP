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
    
    function getHoTen() {
        return $this->HoTen;
    }

    function getTieuDe() {
        return $this->TieuDe;
    }

    function getThoiGiagDang() {
        return $this->ThoiGiagDang;
    }

    function getHinhAnh() {
        return $this->HinhAnh;
    }

    function setHoTen($HoTen) {
        $this->HoTen = $HoTen;
    }

    function setTieuDe($TieuDe) {
        $this->TieuDe = $TieuDe;
    }

    function setThoiGiagDang($ThoiGiagDang) {
        $this->ThoiGiagDang = $ThoiGiagDang;
    }

    function setHinhAnh($HinhAnh) {
        $this->HinhAnh = $HinhAnh;
    }

    function __construct($HoTen, $TieuDe, $ThoiGiagDang, $HinhAnh) {
        $this->HoTen = $HoTen;
        $this->TieuDe = $TieuDe;
        $this->ThoiGiagDang = $ThoiGiagDang;
        $this->HinhAnh = $HinhAnh;
    }
    




}
