<?php

class QuanHuyen {
    //put your code here
    var $MaQuanHuyen;
    var $TenQuanHUyen;
    
    function __construct($MaQuanHuyen, $TenQuanHUyen) {
        $this->MaQuanHuyen = $MaQuanHuyen;
        $this->TenQuanHUyen = $TenQuanHUyen;
    }
    
    function getMaQuanHuyen() {
        return $this->MaQuanHuyen;
    }

    function getTenQuanHUyen() {
        return $this->TenQuanHUyen;
    }

    function setMaQuanHuyen($MaQuanHuyen) {
        $this->MaQuanHuyen = $MaQuanHuyen;
    }

    function setTenQuanHUyen($TenQuanHUyen) {
        $this->TenQuanHUyen = $TenQuanHUyen;
    }



}
