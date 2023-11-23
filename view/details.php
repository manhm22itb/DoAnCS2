<?php
session_start();
    include "../Arsha/connect.php";
    // include "../Arsha/Admin/nav_admin.php";
    // include "../Arsha/Admin/side_bar.php";
    
    if(isset($_GET['idsp_details']))
    {
        $idsp_details = $_GET["idsp_details"];
        $details = mysqli_query($conn, "SELECT * FROM `sanpham` WHERE `ID`=".$idsp_details) ;
        // echo "SELECT * FROM `sanpham` WHERE `ID`=".$idsp_details;
        // exit();
        $product= mysqli_fetch_assoc( $details);
    }


 ?>
<!doctype html>
<html lang="en">
  <head>
    <style>
        .container{
            margin-top: 10px;
            border: 1px solid #012970;
            padding: 15px;
            font-family: "Nunito", sans-serif;
            background: #f6f9ff;
        }
        .text{
            padding: 20px 0 15px 0;
            font-size: 18px;
            font-weight: 500;
            color: #012970;
            font-family: "Poppins", sans-serif;
        }
        .submit {
            border: none;
            background-color: #2d3f6a;
            color: #fff;
            padding: 5px 10px;
            margin-right: 20px;
            border-radius: 8px;
        }
        .ip{
            /* padding: 20px 0 15px 0; */
            font-size: 18px;
            font-weight: 500;
            color: #012970;
            font-family: "Poppins", sans-serif;
            border-radius: 8px;

        }
    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <title>Chi tiết sản phẩm</title>
    <h1>Chi tiết sản phẩm</h1>
    <hr>
  </head>
  <body class="container">
    <div id="Chi_tiet" class="row">
        <div class="img col-6">
            <img src="../Arsha/IMG/SP/<?php 
            echo $product['Hinh_Anh']?>" 
            width="300px" height="250px" alt="">
        </div>
        <div class="info col-6">
            <h3 class="Name_SP ">
                <?php echo $product['Ten_SP'] ?>
            </h3>
            <label class="text" for=""> 
                <b>Giá: </b>
                <?php echo $product['Gia'] ?>
            </label>
            <div class="text">
                <label style="font-size: 20px ;" for=""><b>Mô tả</b></label>
                <br>
                <?= $product['Mo_Ta'] ?>
            </div>
            <br>
            <form class="text" action="xem_SP.php?action=them" method="post" style="margin-bottom: 20px;">
                <input class="ip" type="text" name="quantity[<?=$product['ID']?>]" size="2" value="1">
                <input class="submit" type="submit" name="muaSP" value="Mua ngay">    
            </form>
            
            <div class="gallery ">
                <img src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100px" height="100px" alt="">
                <img src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100px" height="100px" alt="">
                <img src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100px" height="100px" alt="">
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- Popper.js first, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
  </body>
</html>