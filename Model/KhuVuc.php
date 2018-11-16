<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of KhuVuc
 *
 * @author tung
 */
class KhuVuc {
    var $MaKhuVuc;
    var $TenKhuVuc;
    function getMaKhuVuc() {
        return $this->MaKhuVuc;
    }

    function getTenKhuVuc() {
        return $this->TenKhuVuc;
    }

    function setMaKhuVuc($MaKhuVuc) {
        $this->MaKhuVuc = $MaKhuVuc;
    }

    function setTenKhuVuc($TenKhuVuc) {
        $this->TenKhuVuc = $TenKhuVuc;
    }

    function __construct($MaKhuVuc, $TenKhuVuc) {
        $this->MaKhuVuc = $MaKhuVuc;
        $this->TenKhuVuc = $TenKhuVuc;
    }

    //put your code here
}
