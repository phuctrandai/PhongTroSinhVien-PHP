<!DOCTYPE html>
<?php
session_start();

require_once '../Dao/BaiDangDao.php';
require_once '../Dao/PhongTroDao.php';
require_once '../Dao/TienNghiDao.php';
require_once '../Dao/MoiTruongDao.php';

$phongTroDao = new PhongTroDao();
$baiDangDao = new BaiDangDao();
$tienNghiDao = new TienNghiDao();
$moiTruongDao = new MoiTruongDao();

$maPhong = $_SESSION['maPhong'];
$maBaiDang = $_SESSION['maBaiDang'];

/* @var $phongTro PhongTro*/
$phongTro = $phongTroDao->getThongTin($maPhong);

/* @var $baiDang BaiDang*/
$baiDang = $baiDangDao->getThongTin($maBaiDang);

$choTuQuan = $phongTro->ChoTuQuan == 1 ? ' - tự quản' : '';

?>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Phòng trọ sinh viên</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/my-style.css">
    </head>
    <body>
        <?php include_once './header.php'; ?>

        <?php include_once './search.php'; ?>

        <section class="post-news-area mb-70 mt-0" style="padding-top: 50px">
            <div class="container">
                <div class="row justify-content-center">
                    <!-- Post Details Content Area -->
                    <div class="col-12 col-lg-8">
                        <div class="post-details-content mb-100">
                            <h3 class="text-dark"><?php echo $baiDang->TieuDe;?></h3>
                            <p><span class="text-danger"><?php echo($phongTro->TenQuanHuyen);?></span>
                                <br>
                                <?php echo $baiDang->ThoiGiagDang;?>
                            </p>

                            <!-- Hinh anh slide show -->
                            <div id="demo" class="carousel slide mb-30" data-ride="carousel">

                                <!-- Indicators -->
                                <ul class="carousel-indicators">
                                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                                    <li data-target="#demo" data-slide-to="1"></li>
                                    <li data-target="#demo" data-slide-to="2"></li>
                                </ul>

                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="img/bg-img/11.jpg" alt="Los Angeles" width="1100" height="500">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="img/bg-img/12.jpg" alt="Chicago" width="1100" height="500">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="img/bg-img/13.jpg" alt="New York" width="1100" height="500">
                                    </div>
                                </div>

                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#demo" data-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </a>
                            </div>
                            <hr>
                            <!-- Thong tin chi tiet -->
                            <h5 class="mb-30 mt-30">Thông tin chi tiết</h5>
                            <table class="mb-30 table table-bordered">
                                <tbody>
                                    <tr>
                                        <td class="bg-light">Địa chỉ</td>
                                        <td colspan="3">15 - Hue</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-light">Hình thức</td>
                                        <td><?php echo($phongTro->TenLoaiPhong);?> <?php echo($choTuQuan);?></td>
                                        <td class="bg-light">Số lượng phòng</td>
                                        <td><?php echo($phongTro->SoLuongPhong);?> phòng</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-light">Giá thuê</td>
                                        <td>
                                            <?php 
                                            setlocale(LC_MONETARY, "vie");
                                            echo(money_format("%.0n", $phongTro->GiaPhong));
                                            ?>
                                        </td>
                                        <td class="bg-light">Phòng trống</td>
                                        <td><?php echo($phongTro->SoPhongTrong);?> phòng</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-light">Diện tích</td>
                                        <td><?php echo($phongTro->DienTich);?> m<sup>2</sup></td>
                                        <td class="bg-light">Ở tối đa</td>
                                        <td><?php echo($phongTro->SoNguoiToiDa);?> người</td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                            <!-- Tien nghi -->
                            <h5 class="mb-30 mt-30">Tiện nghi</h5>
                            <div class="">
                                <div class="row">
                                <?php
                                $listTienNghi = $tienNghiDao->getDanhSachTheoPhong($maPhong);
                                foreach ($listTienNghi as $tienNghi) { ?>
                                    <div class="col-4 mb-30">
                                        <?php echo($tienNghi->TenTienNghi); ?>
                                    </div>
                                <?php } ?>
                                </div>
                            </div>
                            <hr>
                            <!-- Moi truong xung quanh -->
                            <h5 class="mb-30 mt-30">Môi trường xung quanh</h5>
                            <div class="">
                                <div class="row">
                                <?php
                                $listMoiTruong = $moiTruongDao->getDanhSachTheoPhong($maPhong);
                                foreach ($listMoiTruong as $moiTruong) { ?>
                                    <div class="col-4 mb-30">
                                        <?php echo($moiTruong->TenMoiTruong); ?>
                                    </div>
                                <?php } ?>
                                </div>
                            </div>
                            <hr>
                            <!-- Vi tri -->
                            <h5>Vị trí</h5>
                            <div id="googleMap" style="width:100%; height:400px;"></div>
                        </div>
                    </div>

                    <!-- Sidebar Widget -->
                    <?php include_once './side-bar-newest-post.php';?>
                    
                </div>
            </div>
        </section>

        <?php include_once './footer.php'; ?>

        <!-- ##### All Javascript Script ##### -->
        <!-- jQuery-2.2.4 js -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/bootstrap/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <!-- All Plugins js -->
        <script src="js/plugins/plugins.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>
        <!-- My js -->
        <script src="js/my-script.js"></script>
        <!-- Google map -->
        <script>
            function myMap() {
                var mapProp = {
                    center: new google.maps.LatLng(51.508742, -0.120850),
                    zoom: 5,
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            }
        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=1&callback=myMap"></script>
        <script src="js/single-post.js"></script>
    </body>
</html>
