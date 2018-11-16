<?php
class LoaiPhong{
    var $MaLoaiPhong;
    var $TenLoaiPhong;
    function getMaLoaiPhong() {
        return $this->MaLoaiPhong;
    }

    function getTenLoaiPhong() {
        return $this->TenLoaiPhong;
    }

    function setMaLoaiPhong($MaLoaiPhong) {
        $this->MaLoaiPhong = $MaLoaiPhong;
    }

    function setTenLoaiPhong($TenLoaiPhong) {
        $this->TenLoaiPhong = $TenLoaiPhong;
    }
    function __construct($MaLoaiPhong, $TenLoaiPhong) {
        $this->MaLoaiPhong = $MaLoaiPhong;
        $this->TenLoaiPhong = $TenLoaiPhong;
    }


}
?>

