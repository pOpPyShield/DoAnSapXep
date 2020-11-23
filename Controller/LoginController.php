<?php 
    require_once '../Model/admin.php';
    require_once '../Model/user.php';
    require_once '../Model/superadmin.php';
    require_once '../Function/sanitizie.php';
    require_once '../Function/session.php';
    class LoginController{
        public function LoginAuth($name, $pwd, $valuePost) {
            if(isset($valuePost)) {
                $name1 = clean($name);
                $pwd1 = clean($pwd);
                //$object = new Admin();
                $user = new User();
                $superadmin = new superAdmin();
                if($user->login($name1, $pwd1)) {
                    $role = $user->getResultQuery('role');
                    if($role==0) {
                        header('Location: ../Home/?login=success');
                    } else {
                        header('Location: ../Home/?action=admin');
                    }
                    //User Model
                    //if($_SESSION['level'] == 'user' && $_SESSION['is_login'] == true) {
                        //header('Location: ../Home/?login=success');
                    //}  
                    //Success
                } else {
                    header("Location: ../Home/?login=failed");
                }/*elseif($object->login($name, $pwd)) {
                    //Admin model
                    $UserAdmin = $object->getUserName();
                    $AdminID = $object->getResultQuery("AdminID");
                    $sessionAdmin = new Session();
                    $sessionAdmin->put("UserName", $UserAdmin);
                    $sessionAdmin->put("id", $AdminID);
                    $sessionAdminName = $sessionAdmin->get("UserName");
                    $sessionAdminID = $sessionAdmin->get("id");
                    if($_SESSION['level'] == 'admin' && $_SESSION['is_login'] == true) {
                        header('Location: ../Admin/?admin=' . $sessionAdminName. '&id=' . $sessionAdminID);
                    }
    
                } elseif($superadmin->login($name, $pwd)) {
                    $UserSuperAdmin = $superadmin->getUserName();
                    //Get superadminID in result query in model superadmin
                    $SuperAdminID = $superadmin->getResultQuery("SuperAdminID");
                    $sessionSuperAdmin = new Session();
                    $sessionSuperAdminName = $sessionSuperAdmin->put("UserName", $UserSuperAdmin);
                    $sessionSuperAdminID = $sessionSuperAdmin->put("id", $SuperAdminID);
                    if($_SESSION['level'] == 'superadmin' && $_SESSION['is_login']==true) {
                        header('Location: ../SuperAdmin/?superadmin=' . $sessionSuperAdminName . '&id=' . $sessionSuperAdminID);
                    }
    
                } else {
                    header('location: ../Home/?login=failed');
                } */
            }
        }
    }
?>