<?php

class QuanHuyen {
    //put your code here
    var $MaQuanHuyen;
    var $TenQuanHuyen;
    
    function __construct($MaQuanHuyen, $TenQuanHuyen) {
        $this->MaQuanHuyen = $MaQuanHuyen;
        $this->TenQuanHuyen = $TenQuanHuyen;
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
