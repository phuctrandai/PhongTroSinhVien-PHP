<?php
session_start();

require_once '../Dao/TienNghiDao.php';
require_once '../Dao/QuanHuyenDao.php';
require_once '../Dao/KhuVucDao.php';
require_once '../Dao/MoiTruongDao.php';
require_once '../Dao/LoaiPhongDao.php';

$tienNghiDao = new TienNghiDao();
$listTienNghi = $tienNghiDao->getTienNghi();

$quanHuyenDao = new QuanHuyenDao();
$listQuanHuyen = $quanHuyenDao->getQuanHuyen();

$khuVucDao = new KhuVucDao();
$listKhuVuc = $khuVucDao->getKhuVuc();

$moiTruongDao = new MoiTruongDao();
$listMoiTruong = $moiTruongDao->getMoiTruong();

$loaiPhongDao = new LoaiPhongDao();
$listLoaiPhong = $loaiPhongDao->getLoaiPhong();
?>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Đăng tin</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/my-style.css">
    </head>
    <body>
        <?php include_once './header.php'; ?>

        <div class="w-75 ml-auto mr-auto mb-100">
            <h4 class="mb-30 mt-30">Đăng tin mới</h4>
            <form action="../Controller/BaiDangController.php" method="post" class="form">
                <input type="hidden" name="command" value="submitPost">
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="tieuDe">
                                Tiêu đề
                                <sub>
                                    <span style="color: red; font-size: 24px">
                                        *
                                    </span>
                                </sub>
                            </label>
                            <input type="text" class="form-control" 
                                   id="tieuDe" name="tieuDe"
                                   placeholder="Tiêu đề bài đăng..." required>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="loaiPhong">
                                Loại phòng
                            </label>
                            <select name="loaiPhong" class="form-control">
                                <?php
                                foreach ($listLoaiPhong as $loaiPhong)
                                /* @var $loaiPhong LoaiPhong */ {
                                    ?>
                                    <option value="<?php echo($loaiPhong->MaLoaiPhong); ?>">
                                        <?php echo($loaiPhong->TenLoaiPhong); ?>
                                    </option>                                    
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="soLuongPhong">Số lượng phòng</label>
                            <input type="number" class="form-control" 
                                   name="soLuongPhong" id="soLuongPhong" 
                                   value="1" min="1">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="soPhongTronh">Số phòng trống</label>
                            <input type="number" class="form-control" 
                                   name="soPhongTronh" id="soPhongTronh" 
                                   value="1" min="1">
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="giaPhong">Giá phòng (VND)</label>
                            <input type="number" class="form-control" 
                                   name="giaPhong" id="giaPhong" 
                                   value="10000" min="10000">
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="dienTich">
                                Diện tích (m<sup>2</sup>)
                            </label>
                            <input type="number" class="form-control" 
                                   name="dienTich" id="dienTich" 
                                   value="1" min="1">
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="soNguoiToiDa">Số người tối đa</label>
                            <input type="number" class="form-control" 
                                   name="soNguoiToiDa" id="soNguoiToiDa" 
                                   value="1" min="1">
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="choTuQuan">Tự quản</label>
                            <select name="choTuQuan" class="form-control">
                                <option value="1">Có</option>
                                <option value="0">Không</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="quanHuyen">Quận/Huyện</label>
                            <select name="quanHuyen" class="form-control">
                                <?php
                                foreach ($listQuanHuyen as $quanHuyen)
                                /* @var $quanHuyen QuanHuyen */ {
                                    ?>
                                    <option value="<?php echo($quanHuyen->MaQuanHuyen); ?>">
                                        <?php echo($quanHuyen->TenQuanHuyen); ?>
                                    </option>                                    
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="khuVuc">Khu vực</label>
                            <select name="khuVuc" class="form-control">
                                <?php
                                foreach ($listKhuVuc as $khuVuc)
                                /* @var $khuVuc KhuVuc */ {
                                    ?>
                                    <option value="<?php echo($khuVuc->MaKhuVuc); ?>">
                                        <?php echo($khuVuc->TenKhuVuc); ?>
                                    </option>                                    
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <!-- Tien nghi -->
                    <div class="col-12">
                        <div class="form-group">
                            <label for="tienNghi">Tiện nghi</label>
                            <div class="card card-body">
                                <div class="row">
                                    <?php
                                    $listTienNghiCount = count($listTienNghi);
                                    
                                    for ($i_TienNghi = 0; $i_TienNghi < $listTienNghiCount;) { ?>
                                        
                                    <div class="col-lg-4">
                                            
                                        <?php if ($i_TienNghi < $listTienNghiCount) { ?>
                                                
                                        <label class="my-container">
                                            <?php 
                                            echo($listTienNghi[$i_TienNghi]->TenTienNghi);
                                            $i_TienNghi++;
                                            ?>
                                            <input type="checkbox" 
                                                   value="<?php echo($listTienNghi[$i_TienNghi]->MaTienNghi); ?>"
                                                   name="<?php echo($listTienNghi[$i_TienNghi]->TenTienNghi); ?>">
                                            <span class="my-checkmark"></span>
                                        </label>
                                            <?php } ?>
                                        
                                        <?php if ($i_TienNghi < $listTienNghiCount) { ?>                                            
                                        <label class="my-container">
                                            <?php 
                                            echo($listTienNghi[$i_TienNghi]->TenTienNghi);
                                            $i_TienNghi++;
                                            ?>
                                            <input type="checkbox" 
                                                   value="<?php echo($listTienNghi[$i_TienNghi]->MaTienNghi); ?>"
                                                   name="<?php echo($listTienNghi[$i_TienNghi]->TenTienNghi); ?>">
                                            <span class="my-checkmark"></span>
                                        </label>
                                            <?php } ?>

                                        <?php if ($i_TienNghi < $listTienNghiCount) { ?>                                            
                                        <label class="my-container">
                                            <?php
                                            echo($listTienNghi[$i_TienNghi]->TenTienNghi);
                                            $i_TienNghi++;
                                            ?>
                                            <input type="checkbox" 
                                                   value="<?php echo($listTienNghi[$i_TienNghi]->MaTienNghi); ?>"
                                                   name="<?php echo($listTienNghi[$i_TienNghi]->TenTienNghi); ?>">
                                            <span class="my-checkmark"></span>
                                        </label>
                                            <?php } ?>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Moi truong xunh quanh -->
                    <div class="col-12">
                        <div class="form-group">
                            <label for="moiTruong">Môi trường xung quanh</label>
                            <div class="card card-body">
                                <div class="row">
                                    <?php
                                    $listMoiTruongCount = count($listMoiTruong);
                                    for ($i_MoiTruong = 0; $i_MoiTruong < $listMoiTruongCount;) { ?>
                                        
                                    <div class="col-lg-4">
                                        
                                    <?php if ($i_MoiTruong < $listMoiTruongCount) { ?>
                                                
                                        <label class="my-container">
                                            <?php
                                            echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong);
                                            $i_MoiTruong++;
                                            ?>
                                            <input type="checkbox" 
                                                   value="<?php echo($listMoiTruong[$i_MoiTruong]->MaMoiTruong); ?>"
                                                   name="<?php echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong); ?>">
                                            <span class="my-checkmark"></span>
                                        </label>
                                    <?php } ?>

                                    <?php if ($i_MoiTruong < $listMoiTruongCount) { ?>                                            
                                        <label class="my-container">
                                            <?php
                                            echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong);
                                            $i_MoiTruong++;
                                            ?>
                                            <input type="checkbox" 
                                                   value="<?php echo($listMoiTruong[$i_MoiTruong]->MaMoiTruong); ?>"
                                                   name="<?php echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong); ?>">
                                            <span class="my-checkmark"></span>
                                        </label>
                                    <?php } ?>

                                    <?php if ($i_MoiTruong < $listMoiTruongCount) { ?>                                            
                                        <label class="my-container">
                                            <?php
                                            echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong);
                                            $i_TienNghi++;
                                            ?>
                                            <input type="checkbox" 
                                                   value="<?php echo($listMoiTruong[$i_MoiTruong]->MaMoiTruong); ?>"
                                                   name="<?php echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong); ?>">
                                            <span class="my-checkmark"></span>
                                        </label>
                                    <?php } ?>
                                    </div>
                                <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label for="moTa">Mô tả</label>
                            <textarea name="moTa" class="form-control" id="moTa" cols="50" rows="10" placeholder="Mô tả"></textarea>
                        </div>
                    </div>

                    <div class="col-12">
                        <button class="btn newsbox-btn mt-30" type="submit">Đăng bài</button>
                    </div>
                </div>
            </form>
        </div>

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
    </body>
</html>
