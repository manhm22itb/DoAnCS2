<?php 
  session_start();
  include "connect.php";
  $user = !empty($_SESSION['user']) ? $_SESSION['user'] :'';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Medicine</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">Arsha</a></h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#">Trang chủ</a></li>
          <li><a class="nav-link scrollto" href="tkkd_index.php">Thuốc không kê đơn</a></li>
          <li><a class="nav-link scrollto" href="#">Hóa mỹ phẩm</a></li>
          <li><a class="nav-link scrollto" href="#">Thực phẩm chức năng</a></li>
          <li class="nav-item dropdown pe-3">
          <?php
              if(isset( $_SESSION['user']))
              {  
            ?>
            <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
              <span class="d-none d-md-block dropdown-toggle ps-2">
                <?=  $user['email']?>
              </span>
            </a><!-- End Profile Iamge Icon -->

            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
              <li>
                <a class="dropdown-item d-flex align-items-center" href="logout.php">
                  <i class="bi bi-box-arrow-right"></i>
                  <span>Log out</span>
                </a>
              </li>
            </ul><!-- End Profile Dropdown Items -->
            <li>
                <a class=" scrollto" href="#about">
                    <i style="font-size: 1.25em;"  class=" fa-solid fa-cart-shopping fa-2xl"></i>
                </a>
            </li>
            <li>
                <a class=" scrollto" href="#contact">
                <i style="font-size: 1.25em;" class="fa-regular fa-address-book"></i>
                </a>
            </li>
          </li><!-- End Profile Nav -->
        
        <?php } 
            else 
            { ?>
          <li><a class="nav-link scrollto" href="register.php">Đăng ký</a></li>          
          <li><a class="nav-link scrollto" href="login.php">Đăng nhập</a></li>
          
        <?php } ?>
          
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  

  <main id="main">

  </main><!-- End #main -->


  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>