<?php
include './Dao/TienNghiDao.php';
include './Dao/QuanHuyenDao.php';
include './Dao/KhuVucDao.php';
include './Dao/MoiTruongDao.php';
include './Dao/LoaiPhongDao.php';

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
<div id="bg-search">
    <div id="menu-search">
        <form id="form-search" method="post" action="#">
            <div id="accordion" class="w-100">
                <div class="card w-100 shadow">
                    
                    <!-- Tìm kiếm -->
                    <div class="card-header">
                        <div class="w-100">
                            <table class="w-100">
                                <tr>
                                    <td>
                                        <a class="" data-toggle="collapse" href="#collapse1" style="font-weight: normal; font-size: 0.9rem;">
                                            Tìm nâng cao &nabla;
                                        </a>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Từ khóa...">
                                            <div class="input-group-append">
                                                <input class="btn btn-outline-secondary" type="submit" value="Tìm"> 
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    <!-- Tìm nâng cao -->
                    <div id="collapse1" class="collapse" data-parent="#accordion">
                        <div class="card-body">

                            <!-- Loại phòng -->
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="loaiPhong">Loại phòng</label>
                                        <select name="loaiPhong" class="form-control">
                                            <?php foreach ($listLoaiPhong as $loaiPhong) /* @var $loaiPhong LoaiPhong */ { ?>
                                                <option value="<?php echo($loaiPhong->MaLoaiPhong); ?>">
                                                    <?php echo($loaiPhong->TenLoaiPhong); ?>
                                                </option>                                    
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                <!-- Tự quản -->
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="choTuQuan">Tự quản</label>
                                        <select name="choTuQuan" class="form-control">
                                            <option value="1">Có</option>
                                            <option value="0">Không</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <!-- Quận huyện -->
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="quanHuyen">Quận/Huyện</label>
                                        <select name="quanHuyen" class="form-control">
                                            <?php foreach ($listQuanHuyen as $quanHuyen) /* @var $quanHuyen QuanHuyen */ { ?>
                                                <option value="<?php echo($quanHuyen->MaQuanHuyen); ?>">
                                                    <?php echo($quanHuyen->TenQuanHuyen); ?>
                                                </option>                                    
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                <!-- Khu vực -->
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="khuVuc">Khu vực</label>
                                        <select name="khuVuc" class="form-control">
                                            <?php foreach ($listKhuVuc as $khuVuc) /* @var $khuVuc KhuVuc */ { ?>
                                                <option value="<?php echo($khuVuc->MaKhuVuc); ?>">
                                                    <?php echo($khuVuc->TenKhuVuc); ?>
                                                </option>                                    
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- Tien nghi -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="tienNghi">Tiện nghi</label>
                                        <div class="card card-body">
                                            <div class="row">
                                                <?php
                                                $listTienNghiCount = count($listTienNghi);
                                                for ($i_TienNghi = 0; $i_TienNghi < $listTienNghiCount;) {
                                                    ?>
                                                    <div class="col-lg-4">
                                                        <?php if ($i_TienNghi < $listTienNghiCount) { ?>
                                                            <label class="my-container"><?php
                                                                echo($listTienNghi[$i_TienNghi]->TenTienNghi);
                                                                $i_TienNghi++;
                                                                ?>
                                                                <input type="checkbox" value="<?php echo($listTienNghi[$i_TienNghi]->MaTienNghi); ?>"
                                                                       name="<?php echo($listTienNghi[$i_TienNghi]->TenTienNghi); ?>">
                                                                <span class="my-checkmark"></span>
                                                            </label>
                                                        <?php } ?>

                                                        <?php if ($i_TienNghi < $listTienNghiCount) { ?>                                            
                                                            <label class="my-container"><?php
                                                                echo($listTienNghi[$i_TienNghi]->TenTienNghi);
                                                                $i_TienNghi++;
                                                                ?>
                                                                <input type="checkbox" value="<?php echo($listTienNghi[$i_TienNghi]->MaTienNghi); ?>"
                                                                       name="<?php echo($listTienNghi[$i_TienNghi]->TenTienNghi); ?>">
                                                                <span class="my-checkmark"></span>
                                                            </label>
                                                        <?php } ?>

                                                        <?php if ($i_TienNghi < $listTienNghiCount) { ?>                                            
                                                            <label class="my-container"><?php
                                                                echo($listTienNghi[$i_TienNghi]->TenTienNghi);
                                                                $i_TienNghi++;
                                                                ?>
                                                                <input type="checkbox" value="<?php echo($listTienNghi[$i_TienNghi]->MaTienNghi); ?>"
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
                            </div>

                            <!-- Môi trương xung quanh -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="moiTruong">Môi trường xung quanh</label>
                                        <div class="card card-body">
                                            <div class="row">
                                                <?php
                                                $listMoiTruongCount = count($listMoiTruong);
                                                for ($i_MoiTruong = 0; $i_MoiTruong < $listMoiTruongCount;) {
                                                    ?>
                                                    <div class="col-lg-4">
                                                        <?php if ($i_MoiTruong < $listMoiTruongCount) { ?>
                                                            <label class="my-container"><?php
                                                                echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong);
                                                                $i_MoiTruong++;
                                                                ?>
                                                                <input type="checkbox" value="<?php echo($listMoiTruong[$i_MoiTruong]->MaMoiTruong); ?>"
                                                                       name="<?php echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong); ?>">
                                                                <span class="my-checkmark"></span>
                                                            </label>
                                                        <?php } ?>

                                                        <?php if ($i_MoiTruong < $listMoiTruongCount) { ?>                                            
                                                            <label class="my-container"><?php
                                                                echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong);
                                                                $i_MoiTruong++;
                                                                ?>
                                                                <input type="checkbox" value="<?php echo($listMoiTruong[$i_MoiTruong]->MaMoiTruong); ?>"
                                                                       name="<?php echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong); ?>">
                                                                <span class="my-checkmark"></span>
                                                            </label>
                                                        <?php } ?>

                                                        <?php if ($i_MoiTruong < $listMoiTruongCount) { ?>                                            
                                                            <label class="my-container"><?php
                                                                echo($listMoiTruong[$i_MoiTruong]->TenMoiTruong);
                                                                $i_TienNghi++;
                                                                ?>
                                                                <input type="checkbox" value="<?php echo($listMoiTruong[$i_MoiTruong]->MaMoiTruong); ?>"
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
                            </div>
                            
                            <!-- Đóng -->
                            <div class="row">
                                <div class="col-12">
                                    <a class="btn btn-outline-secondary float-right" data-toggle="collapse" href="#collapse1" style="font-weight: normal">
                                        Đóng &#x21E7;
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>