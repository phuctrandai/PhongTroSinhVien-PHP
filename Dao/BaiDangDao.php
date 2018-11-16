<?php
include'./Model/BaiDang.php';
class BaiDangDao{
    function __construct() {
        
    }
    function getBaiDang() {
    $connect= mysqli_connect('localhost', 'root', '', 'PhongTroSinhVien');
            mysqli_set_charset($connect,'utf8');  
            $rs=array();
            $i=1;
            $sql="select * from ViewBaiDang";
            $querry= mysqli_query($connect, $sql);
            $num= mysqli_num_rows($querry);
            if($num>0)
            {
                while($row= mysqli_fetch_array($querry)){
                    $rs[$i]= new BaiDang($row['HoTen'],$row['TieuDe'],$row['ThoiGianDang'],$row['DuongDan']);
                    $i++;
                }
            }
            mysqli_close($connect);
            return $rs; 
}

}


