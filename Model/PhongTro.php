<?php
class PhongTro{
    var $MaPhong;
    var $SoLuongPhong;
    var $SoPhongTrong;
    var $SoNguoiToiDa;
    var $GiaPhong;
    var $DienTich;
    var $ChoTuQuan;
    var $TenLoaiPhong;
    var $TenKhuVuc;
    var $TenQuanHuyen;
    var $TenTaiKhoan;
    
    function __construct($MaPhong, $SoLuongPhong, $SoPhongTrong, $SoNguoiToiDa, $GiaPhong, 
            $DienTich, $ChoTuQuan, $TenLoaiPhong, $TenKhuVuc, $TenQuanHuyen, $TenTaiKhoan) {
        $this->MaPhong = $MaPhong;
        $this->SoLuongPhong = $SoLuongPhong;
        $this->SoPhongTrong = $SoPhongTrong;
        $this->SoNguoiToiDa = $SoNguoiToiDa;
        $this->GiaPhong = $GiaPhong;
        $this->DienTich = $DienTich;
        $this->ChoTuQuan = $ChoTuQuan;
        $this->TenLoaiPhong = $TenLoaiPhong;
        $this->TenKhuVuc = $TenKhuVuc;
        $this->TenQuanHuyen = $TenQuanHuyen;
        $this->TenTaiKhoan = $TenTaiKhoan;
    }



}
?>

