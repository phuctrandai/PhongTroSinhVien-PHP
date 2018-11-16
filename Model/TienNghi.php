<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TienNghi
 *
 * @author tung
 */
class TienNghi {
    var $MaTienNghi;
    var $TenTienNghi;
    function getMaTienNghi() {
        return $this->MaTienNghi;
    }

    function getTenTienNghi() {
        return $this->TenTienNghi;
    }

    function setMaTienNghi($MaTienNghi) {
        $this->MaTienNghi = $MaTienNghi;
    }

    function setTenTienNghi($TenTienNghi) {
        $this->TenTienNghi = $TenTienNghi;
    }

    function __construct($MaTienNghi, $TenTienNghi) {
        $this->MaTienNghi = $MaTienNghi;
        $this->TenTienNghi = $TenTienNghi;
    }

    //put your code here
}
