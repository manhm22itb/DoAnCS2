<?php
  session_start();
  include "../connect.php";
  // unset($_SESSION['user']);
  $user = !empty($_SESSION['user']) ? $_SESSION['user'] :'';
  // print_r($user);
  // exit();
  if(isset($_POST['them_sp']))
  {
      $ten_sp = $_POST['name'];
      $SL = $_POST['SL'];
      $Gia= $_POST['gia'];
      $IDDM= $_POST['iddm'];
      $mota = $_POST['content1'];
      // Lấy tên ảnh
      $img = $_FILES['img']['name'];
      // lấy đường dẫn ảnh
      $image_tmp_name = $_FILES['img']['tmp_name'];
      move_uploaded_file($image_tmp_name,'../IMG/SP/'.$img);

      $sql_sp = "INSERT INTO `sanpham` (`ID`, `Ten_SP`, `SL`, `Gia`, `ID_Danh_Muc`, `Hinh_Anh`, `Mo_Ta`) 
      VALUES (NULL,'$ten_sp','$SL', '$Gia','$IDDM','$img','$mota')";
      $kq_sp = mysqli_query($conn,$sql_sp);
  }
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add infomation</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<style>
    
.ip{
  border: none;
  outline: none;
  border-bottom: 1px solid #899dbe;
  width: 150%;
  margin: 10px;
}

.btn{
  font-size: 18px;
  width: 70px;
  color: #012970;
  font-weight: 500;
  font-family: "Poppins", sans-serif;
  margin-top: 20px;
}
.btn:hover{
    color:#798eb3 ;
}
</style>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->
          <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <span class="d-none d-md-block dropdown-toggle ps-2">
              <? echo$user['email'] ?>
            </span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">    
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="../logout.php">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->
  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index.html">
          <i class="bi bi-grid"></i>
          <span>Menu</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="add-inf.html">
          <i class="bi bi-menu-button-wide"></i><span>Add infomation</span>
        </a>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="update-inf.html">
          <i class="bi bi-journal-text"></i><span>Update infomation</span>
        </a>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="data.html">
          <i class="bi bi-layout-text-window-reverse"></i><span>Data</span>
        </a>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart"></i><span>Charts</span>
        </a>
      </li><!-- End Charts Nav -->

      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-contact.html">
          <i class="bi bi-envelope"></i>
          <span>Contact</span>
        </a>
      </li><!-- End Contact Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-error-404.html">
          <i class="bi bi-dash-circle"></i>
          <span>Error 404</span>
        </a>
      </li><!-- End Error 404 Page Nav -->
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Thêm sản phẩm</h1>
      <nav>
        <!-- <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Forms</li>
          <li class="breadcrumb-item active">Editors</li>
        </ol> -->
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="container">
        <div class="row">
        <form action="add-pd.php" method="POST" enctype="multipart/form-data">
        <div class="col-lg-8">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Information</h5>

              <!-- Quill Editor Bubble -->
              <table>
                <tr >
                    <td class="card-title">Tên thuốc:</td>
                    <td>
                        <input  class="ip" type="text" name="name">
                    </td>
                </tr>
                <tr >
                    <td class="card-title">Giá:</td>
                    <td>
                        <input  class="ip" type="text" name="gia">
                    </td>
                </tr>
                <tr >
                    <td class="card-title">Số lượng:</td>
                    <td>
                        <input class="ip" type="text" name="SL">
                    </td>
                </tr>
                <tr >
                    <td class="card-title">ID danh mục:</td>
                    <td>
                        <select name="iddm">
                          <?php 
                            $sql_iddm = "SELECT * FROM `danhmuc`";
                            $kq_iddm= mysqli_query($conn,$sql_iddm);
                            while($data = mysqli_fetch_array($kq_iddm))
                            {
                              echo 
                              '<option value="'.$data['ID'].'">'
                                .$data['ten_dm'].
                              '</option>';
                            }
                            
                            ;
                          ?>
                        </select>
                    </td>
                </tr>
                <tr >
                    <td class="card-title">Hình ảnh:</td>
                    <td>
                        <input type="file" name="img">
                    </td>
                </tr>
            </table>
              <!-- End Quill Editor Bubble -->

            </div>
          </div>

          <div class="card">
            <div class="card-body">
            <h5 class="card-title">Mô tả</h5>
                <div>
                    <textarea name="content1"></textarea>
                    <script>
                            CKEDITOR.replace( 'content1' );
                    </script>
                </div>
                <input class="btn" type="submit" name="them_sp" value="Add">   
            </div>                    
          </div>

        </div>
        </form>
      </div>
        </div>
    </section>

  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>