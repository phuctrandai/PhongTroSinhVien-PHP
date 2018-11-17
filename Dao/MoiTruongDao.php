<?php

include './Model/MoiTruong.php';

class MoiTruongDao {
    public function __construct() { }
    
    public function getMoiTruong() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        
        $rs = array();
        $i = 0;
        $sql = "select * from MoiTruong";
        
        $query = mysqli_query($connect, $sql);
        $num_row = mysqli_num_rows($query);
        if($num_row > 0) {
            while ($row = mysqli_fetch_array($query)) {
                $rs[$i] = new MoiTruong($row['MaMoiTruong'], $row['TenMoiTruong']);
                $i++;
            }
        }
        mysqli_close($connect);
        return $rs;
    }
}

