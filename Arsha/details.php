<?php
session_start();
    include "../Arsha/connect.php";
    // include "../Arsha/Admin/nav_admin.php";
//     // include "../Arsha/Admin/side_bar.php";
    $user = !empty($_SESSION['admin']) ? $_SESSION['admin'] :'';
    // echo  $user ;
    // exit();

    
    if(isset($_GET['idsp_details']))
    {
        $idsp_details = $_GET["idsp_details"];
        $details = mysqli_query($conn, "SELECT * FROM `sanpham` WHERE `ID`=".$idsp_details) ;
        $product= mysqli_fetch_assoc( $details);
    }


 ?>
<!doctype html>
<html lang="en">
  <head>
    <style>
        /* body{
            font-size: 50px;
        } */
        .container{
            margin-top: 10px;
            /* border: 1px solid #012970; */      
            font-family:Cambria;
            background: #f6f9ff;
            max-width: 750px;
        }
        .text{
            /* padding: 20px 0 15px 0;
            font-size: 12px;
            font-weight: 500;
            color: #012970;
            font-family: "Poppins", sans-serif; */
            font-family:Cambria;
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

        .img{
            display: flex;
            justify-content: center;
            padding: 12px 20px;

        }

        .img_con {
            /* border:  1px solid #ccc; */
            border-radius: 16px;
            padding: 12px 20px;
            box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.12);
        }
        .cmt{
            border-radius: 12px;
            border: none;
            padding: 10px;
            width: 20%;
            background-color:#37517e ;
        }

        .cmt:hover{
            box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.12);
            /* background-color:#87510e ; */
        }
    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <title>Chi tiết sản phẩm</title>
    <h1>Chi tiết sản phẩm</h1>
    <hr>
  </head>
  <body class="container">
    <div id="Chi_tiet" class="row">
        <div class="img col-6 p-3 ms-4">
            <div class="">
                <img class="img_con" src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100%" height="50%" alt=""><br>

                <form action="details.php?idsp_details=<?php echo $product["ID"]; ?>" method="POST">
                    <div class="comment mt-2 text-info">
                        <label for=""><b>Bình luận ở đây!</b></label><br>
                        <textarea class="" name="nd" id="nd"></textarea><br>
                        <input class="cmt text-white" type="submit" name="cmt" value="Gửi" id="btnGui">  
                    </div>
                    <?php
                        if(isset($_GET['idsp_details'])&& isset($_POST['cmt']))
                        {
                            
                            $nd = $_POST['nd'];
                            $idsp_details = $_GET["idsp_details"];
                            $request = mysqli_query($conn, "INSERT INTO `cmt`( `id_user`, `id_sp`, `noidung`, `date`) 
                            VALUES ('".$user['id']."','". $idsp_details ."',' $nd ','".date('Y-m-d')."')");
                            }
                            // Lấy username từ bảng người dùng và lấy all từ bảng cmt from bảng user ND liên kết với bảng comment BL
                            // với điều kiện là ID từ bảng user và id-user từ bảng comment where cái idsp cần lấy cmt 
                            $sql_bl= "SELECT ND.name, BL.*
                            FROM user ND INNER JOIN cmt BL
                            ON ND.id = BL.id_user
                            WHERE id_sp =" .$_GET['idsp_details'];
                            $kq=mysqli_query($conn,$sql_bl);
                
                            while($row=mysqli_fetch_array($kq))
                                { 
                    ?>
                                <div class="details_cmt" id="details_cmt">
                                    <p>Ngày:<?= $row['date']?></p>
                                    <p>Username:<?= $row['name']?> </p>
                                    <p>Nội dung:<?= $row['noidung'] ?></p>
                                </div>
                                    <hr>
                    <?php 
                                }
                    ?>
                </form> 
            </div>    
        </div>
        
            

        <div class="info col-6">
            <h3 style="font-weight: bold;" class="Name_SP text ">
                <?php echo $product['Ten_SP'] ?>
            </h3>
            <label class="text text-primary" for=""> 
                <h4><?php echo $product['Gia'] ?>.000VND</h4>
                
            </label>
            <div class="text">
                <label style="font-size: 20px ;" for=""><b>Mô tả:</b></label>
                <br>
                <?= $product['Mo_Ta'] ?>
            </div>
            <br>
            
            
            <div class="gallery ">
                <img class="img_con" src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100px" height="100px" alt="">
                <img class="img_con" src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100px" height="100px" alt="">
                <img class="img_con" src="../Arsha/IMG/SP/<?php 
                echo $product['Hinh_Anh']?>" 
                width="100px" height="100px" alt="">
            </div>
        </div>
    </div>
    <?php
        if(!isset($_SESSION['admin']))
        {
            echo isset($_SESSION['error']) ? $_SESSION['error'] :'';
        }
    ?>
        
        
        
        
    <!-- Optional JavaScript -->
    <!-- Popper.js first, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
  </body>
</html>