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
    var $MaBaiDang;
    var $TieuDe;
    var $ThoiGiagDang;
    var $MoTa;
    var $TenTaiKhoan;
    
    function __construct($MaBaiDang, $TieuDe, $ThoiGiagDang, $MoTa, $TenTaiKhoan) {
        $this->MaBaiDang = $MaBaiDang;
        $this->TieuDe = $TieuDe;
        $this->ThoiGiagDang = $ThoiGiagDang;
        $this->MoTa = $MoTa;
        $this->TenTaiKhoan = $TenTaiKhoan;
    }
    
    function getMaBaiDang() {
        return $this->MaBaiDang;
    }

    function getTieuDe() {
        return $this->TieuDe;
    }

    function getThoiGiagDang() {
        return $this->ThoiGiagDang;
    }

    function getMoTa() {
        return $this->MoTa;
    }

    function getTenTaiKhoan() {
        return $this->TenTaiKhoan;
    }

    function setMaBaiDang($MaBaiDang) {
        $this->MaBaiDang = $MaBaiDang;
    }

    function setTieuDe($TieuDe) {
        $this->TieuDe = $TieuDe;
    }

    function setThoiGiagDang($ThoiGiagDang) {
        $this->ThoiGiagDang = $ThoiGiagDang;
    }

    function setMoTa($MoTa) {
        $this->MoTa = $MoTa;
    }

    function setTenTaiKhoan($TenTaiKhoan) {
        $this->TenTaiKhoan = $TenTaiKhoan;
    }



}
