<?php 
    require_once '../Model/user.php';
    require_once '../Function/sanitizie.php';
    require_once '../Function/session.php';
    class RegController {
        public function RegUser($UserName, $Password, $Email, $valuePost) {
            if(isset($valuePost)) {
                $name1 = clean($UserName);
                $Password1 = clean($Password);
                $Email1= clean($Email);
                $userReg = new user();
                if($userReg->reg($name1, $Password1,$Email1)) {
                    header("Location: ../Home/?action=login&status=success"); 
                } else {
                    header("Location: ../Home/?action=register&status=fail");
                }
            }
        }
    }

?>