<?php

class HinhAnhDao {

    public function __construct() {
        
    }

    public function luuHinhAnh($DuongDan, $MaBaiDang) {
        $link = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($link, 'utf8');
        
        $sql = 'INSERT INTO `HinhAnh`(`DuongDan`, `MaBaiDang`) VALUES(?,?)';
        $stmt = $link->prepare($sql);
        $stmt->bind_param("ss", $DuongDan, $MaBaiDang);
        $stmt->execute();
        $link->close();
    }

}
