<!-- Top gia re nhat -->
<div class="tab-pane fade" id="nav-3" role="tabpanel" aria-labelledby="nav3">
    <div class="row">
        <?php
        $i = 0;
        /* @var $baiDang BaiDang */
        foreach ($listReNhat as $key => $baiDang) {
            if ($i < 2) {
                ?>
                <!-- Single News Area -->
                <div class="col-12 col-sm-6">
                    <div class="single-blog-post style-2 mb-5">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <a href="Controller/BaiDangController.php?single-post=<?php echo($baiDang->MaBaiDang); ?>">
                                <img src="img/bg-img/15.jpg" alt="<?php echo($baiDang->TieuDe); ?>">
                            </a>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <span class="post-date"><?php echo($baiDang->ThoiGiagDang); ?></span>
                            <a href="Controller/BaiDangController.php?single-post=<?php echo($baiDang->MaBaiDang); ?>"
                               class="post-title">
                                   <?php echo($baiDang->TieuDe); ?>
                            </a>
                            <a href="single-post.php?" class="post-author"><?php echo($baiDang->HoTen); ?></a>
                        </div>
                    </div>
                </div>
            <?php } else { ?>

                <!-- Single News Area -->
                <div class="col-12 col-sm-6">
                    <div class="single-blog-post d-flex style-4 mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <a href="Controller/BaiDangController.php?single-post=<?php echo($baiDang->MaBaiDang); ?>">
                                <img src="img/bg-img/17.jpg" 
                                     alt="<?php echo($baiDang->TieuDe); ?>">
                            </a>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <span class="post-date"><?php echo($baiDang->ThoiGiagDang); ?></span>
                            <a href="Controller/BaiDangController.php?single-post=<?php echo($baiDang->MaBaiDang); ?>"
                               class="post-title">
                                   <?php echo($baiDang->TieuDe); ?>
                            </a>
                            <span class="post-date"><?php echo($baiDang->GiaPhong); ?></span>
                        </div>
                    </div>
                </div>
                <?php
            } $i = $i + 1;
        }
        ?>
    </div>
</div>