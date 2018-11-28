<?php

require_once './Model/KhuVuc.php';

class KhuVucDao {
    public function __construct() { }
    
    public function getKhuVuc() {
        $connect = mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
        mysqli_set_charset($connect, 'utf8');
        
        $rs = array();
        $i = 0;
        $sql = "select * from KhuVuc";
        
        $query = mysqli_query($connect, $sql);
        $num_row = mysqli_num_rows($query);
        if($num_row > 0) {
            while ($row = mysqli_fetch_array($query)) {
                $rs[$i] = new KhuVuc($row['MaKhuVuc'], $row['TenKhuVuc']);
                $i++;
            }
        }
        mysqli_close($connect);
        return $rs;
    }
}

