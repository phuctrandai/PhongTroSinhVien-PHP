<!DOCTYPE html>
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
                            <h3 class="text-dark">Tieu de</h3>
                            <p><span class="text-danger">Hue</span>
                                <br>
                                15/8/2018</p>

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

                            <!-- Thong tin chi tiet -->
                            <h5 class="mb-30">Thong tin chi tiet</h5>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td class="bg-light">Dia chi</td>
                                        <td colspan="3">15 - Hue</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-light">Hinh thuc</td>
                                        <td>Nha tro - tu quan</td>
                                        <td class="bg-light">So phong</td>
                                        <td>1 phong</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-light">Gia thue</td>
                                        <td>500,000 VND</td>
                                        <td class="bg-light">Phong trong</td>
                                        <td>1 phong</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-light">Dien tich</td>
                                        <td>50 m2</td>
                                        <td class="bg-light">O toi da</td>
                                        <td>2 nguoi</td>
                                    </tr>
                                </tbody>
                            </table>

                            <!-- Tien nghi -->
                            <h5 class="mb-30">Tien nghi</h5>
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                </tbody>
                            </table>

                            <!-- Moi truong xung quanh -->
                            <h5 class="mb-30">Moi truong xung quanh</h5>
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                </tbody>
                            </table>

                            <!-- Vi tri -->
                            <h1>My First Google Map</h1>

                            <div id="googleMap" style="width:100%;height:400px;"></div>
                        </div>
                    </div>

                    <!-- Sidebar Widget -->
                    <div class="col-12 col-sm-9 col-md-6 col-lg-4">
                        <div class="sidebar-area">

                            <!-- Newsletter Widget -->
                            <div class="sidebar-area">

                                <!-- Newsletter Widget -->
                                <div class="single-widget-area newsletter-widget mb-30">
                                    <h4>Chưa có tài khoản ?</h4>
                                    <a href="sign-up.php" class="btn newsbox-btn w-100">Đăng ký ngay</a>
                                    <p class="mt-30">Đăng ký để đăng bài và xem nhiều hơn</p>
                                </div>
                            </div>

                            <!-- Latest News Widget -->
                            <div class="single-widget-area news-widget mb-30">
                                <h4>Latest News</h4>

                                <!-- Single News Area -->
                                <div class="single-blog-post d-flex style-4 mb-30">
                                    <!-- Blog Thumbnail -->
                                    <div class="blog-thumbnail">
                                        <a href="#"><img src="img/bg-img/19.jpg" alt=""></a>
                                    </div>

                                    <!-- Blog Content -->
                                    <div class="blog-content">
                                        <span class="post-date">June 20, 2018</span>
                                        <a href="#" class="post-title">Top bitcoin exchange says over $30 million stolen</a>
                                    </div>
                                </div>

                                <!-- Single News Area -->
                                <div class="single-blog-post d-flex style-4 mb-30">
                                    <!-- Blog Thumbnail -->
                                    <div class="blog-thumbnail">
                                        <a href="#"><img src="img/bg-img/20.jpg" alt=""></a>
                                    </div>

                                    <!-- Blog Content -->
                                    <div class="blog-content">
                                        <span class="post-date">June 20, 2018</span>
                                        <a href="#" class="post-title">Dow falls 287 points as trade war fears escalate</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Widget Area -->
                            <div class="single-widget-area">

                                <!-- Single News Area -->
                                <div class="single-blog-post style-2 mb-5">
                                    <!-- Blog Thumbnail -->
                                    <div class="blog-thumbnail">
                                        <a href="#"><img src="img/bg-img/14.jpg" alt=""></a>
                                    </div>

                                    <!-- Blog Content -->
                                    <div class="blog-content">
                                        <span class="post-date">June 20, 2018</span>
                                        <a href="#" class="post-title">Elon Musk: Tesla worker admitted to sabotage</a>
                                        <a href="#" class="post-author">By Michael Smith</a>
                                    </div>
                                </div>

                                <!-- Single News Area -->
                                <div class="single-blog-post style-2 mb-5">
                                    <!-- Blog Thumbnail -->
                                    <div class="blog-thumbnail">
                                        <a href="#"><img src="img/bg-img/15.jpg" alt=""></a>
                                    </div>

                                    <!-- Blog Content -->
                                    <div class="blog-content">
                                        <span class="post-date">June 20, 2018</span>
                                        <a href="#" class="post-title">Rachel Sm ith breaks down while discussing border crisis</a>
                                        <a href="#" class="post-author">By Michael Smith</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
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
    </body>
</html>
