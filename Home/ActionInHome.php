<?php 

    $act = $_GET['login'];
    if($act == "Success") {
        echo '<script>alert("Success login");</script>';
    } else {
        echo '<script>alert("Failed, not match");</script>';
    }

?>