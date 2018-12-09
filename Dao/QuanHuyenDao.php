<?php

require_once '../Model/QuanHuyen.php';

class QuanHuyenDao {
    public function __construct() { }
    
    public function getQuanHuyen() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        
        $rs = array();
        $i = 0;
        $sql = "select * from QuanHuyen";
        
        $query = mysqli_query($connect, $sql);
        $num_row = mysqli_num_rows($query);
        if($num_row > 0) {
            while ($row = mysqli_fetch_array($query)) {
                $rs[$i] = new QuanHuyen($row['MaQuanHuyen'], $row['TenQuanHuyen']);
                $i++;
            }
        }
        mysqli_close($connect);
        return $rs;
    }
    
    public function getTenQuanHuyen($MaQuanHuyen) {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        
        $rs = '';
        $i = 0;
        $sql = "select TenQuanHuyen from QuanHuyen where MaQuanHuyen = {$MaQuanHuyen}";
        
        $query = mysqli_query($connect, $sql);
        $num_row = mysqli_num_rows($query);
        if($num_row > 0) {
            $row = mysqli_fetch_row($query);
            $rs = $row[0];
        }
        mysqli_close($connect);
        return $rs;
    }
}
