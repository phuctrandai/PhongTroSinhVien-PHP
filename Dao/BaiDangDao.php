<?php
include 'BaiDang.php';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
                    $rs[$i]= new BaiDang($row[''],$row[''],$row[''],$row['']);
                    $rs[$i]= new Book($row['Id'], $row['Title'], $row['Author'], $row['Price'], $row['Year'], $row['Url'],$row['Id_Category']);
                    $i++;
                }
            }
            mysqli_close($connect);
            return $rs; 
}

