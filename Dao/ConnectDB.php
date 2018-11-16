<?php

class ConnectDB {
        
    public function themHocVien($ho, $ten) {
        // khởi tạo kết nối
        $connect = new mysqli('localhost','root','','PhongTroSinhVien');
        $connect->set_charset("utf8");
        
        //Kiểm tra kết nối
        if($connect->connect_error){
            die('kết nối không thành công '.$connect->connect_error);
        }
        
        // INSERT co gan tham so
        $query = "INSERT INTO `HocVien`(`Ho`, `Ten`) VALUES (?,?)";
        // Chuan bi cau truy van
        $stmt = $this->connection->prepare($query);
        //Gan tham so
        $stmt->bind_param("ss", $ho, $ten);
        // Thuc thi
        $stmt->execute();
        // Dong ket noi
        $stmt->close();
        $connect->close();
        
        
        // SELECT du lieu
        
    }
}


