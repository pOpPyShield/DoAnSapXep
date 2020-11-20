<?php 

    include_once '../Model/img.php';
    class UploadController {
        public function UploadImage($post, $file) {
            if(isset($post) == "submit") {
                $img = new Img();
                if($img->uploadImg($_SESSION['id'], $file)) {

                
                    header('Location: ./?upload=success');
                    exit();
                } else {
                    header('Location: ./?action=Upload&status=uploadfailed');
                    exit();
                }
                    
                } 
            }
        }

?>