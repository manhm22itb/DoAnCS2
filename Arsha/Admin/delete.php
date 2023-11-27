<?php
    include "../connect.php";
    
    if(empty($GET['id_dm1']))
    {
        $id_dm1 = $_GET['id_dm1'];
        $delete_dm = mysqli_query($conn, "DELETE FROM `danhmuc` WHERE `ID`=".$id_dm1);
        header("location:ds_danhmuc.php");
    }

?>



