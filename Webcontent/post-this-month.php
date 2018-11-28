
<!--  Tin trong thang  -->
<div class="top-news-area section-padding-100">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="text-danger" style="background-color: #f0f4f8; padding: 3px 9px;">Tin tháng này</h3>
            </div>
        </div>
        <div class="row">
            <?php
            $i = 0;
            /* @var $baiDang BaiDang */
            foreach ($listTrongThang as $key => $baiDang) {
                ?>
            <!-- Single News Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-blog-post style-2 mb-5">
                    <!-- Blog Thumbnail -->
                    <div class="blog-thumbnail">
                        <a href="../Controller/BaiDangController.php?single-post=<?php echo($baiDang->MaBaiDang); ?>">
                            <img src="img/bg-img/4.jpg" alt="">
                        </a>
                    </div>

                    <!-- Blog Content -->
                    <div class="blog-content">
                        <span class="post-date"><?php echo($baiDang->ThoiGiagDang); ?></span>
                        <a href="../Controller/BaiDangController.php?single-post=<?php echo($baiDang->MaBaiDang); ?>"
                           class="post-title"><?php echo($baiDang->TieuDe); ?></a>
                        <a href="#" class="post-author"><?php echo($baiDang->HoTen); ?></a>
                    </div>
                </div>
            </div>
            <?php }?>
            <div class="col-12">
                <div class="load-more-button text-center">
                    <a href="#" class="btn newsbox-btn">Xem thêm</a>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- ##### Top News Area End ##### -->