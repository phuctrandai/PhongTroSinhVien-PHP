<?php

include './Model/TienNghi.php';

class TienNghiDao {

    function __construct() {
        
    }

    function getTienNghi() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        
        $rs = array();
        $i = 0;
        $sql = "select * from TienNghi";
        
        $querry = mysqli_query($connect, $sql);
        $num = mysqli_num_rows($querry);
        if ($num > 0) {
            while ($row = mysqli_fetch_array($querry)) {
                $rs[$i] = new TienNghi($row['MaTienNghi'], $row['TenTienNghi']);
                $i++;
            }
        }
        mysqli_close($connect);
        return $rs;
    }
}
