<?php 
    require_once '../Model/img.php';
    if(isset($_POST['submitUpload'])) {
        $img = new Img();
        if($img->uploadImg($_SESSION['id'], $_FILES['file'])) {
            header('Location: ./?upload=success');
        } else {
            header('Location: ./?upload=failed');
        }
    }


?>