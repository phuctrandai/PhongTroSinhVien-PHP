<?php
class PhongTro{
    var $MaPhong;
    var $SoLuongPhong;
    var $SoPhongTrong;
    var $SoNguoiToiDa;
    var $GiaPhong;
    var $DienTich;
    var $ChoTuQuan;
    var $MaLoaiPhong;
    var $MaKhuVuc;
    var $MaQuanHuyen;
    var $TenTaiKhoan;
    
    function __construct($MaPhong, $SoLuongPhong, $SoPhongTrong, $SoNguoiToiDa, $GiaPhong, $DienTich, $ChoTuQuan, $MaLoaiPhong, $MaKhuVuc, $MaQuanHuyen, $TenTaiKhoan) {
        $this->MaPhong = $MaPhong;
        $this->SoLuongPhong = $SoLuongPhong;
        $this->SoPhongTrong = $SoPhongTrong;
        $this->SoNguoiToiDa = $SoNguoiToiDa;
        $this->GiaPhong = $GiaPhong;
        $this->DienTich = $DienTich;
        $this->ChoTuQuan = $ChoTuQuan;
        $this->MaLoaiPhong = $MaLoaiPhong;
        $this->MaKhuVuc = $MaKhuVuc;
        $this->MaQuanHuyen = $MaQuanHuyen;
        $this->TenTaiKhoan = $TenTaiKhoan;
    }



}
?>

