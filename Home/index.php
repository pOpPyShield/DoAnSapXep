<?php 
    session_start();
    require_once '../Controller/Controller.php';
    require_once '../Controller/LoginController.php';
    require_once '../Controller/RegController.php';
    require_once '../Controller/UploadController.php';
    $act = isset($_GET['action']) ? $_GET['action'] : "home";
    switch ($act) {
        case "home": 
            $HomeController = new Controller();
            $dot = "..";
            $directory = array("Home");
            $nameFile = "Home.php";
            $HomeController->get($dot, $directory, $nameFile);
        break;
        case "login": 
            $LoginController = new Controller();
            $dot1 = "..";
            $directory1 = array("Home", "Login");
            $nameFile1 = "login.php";
            $LoginController->get($dot1, $directory1, $nameFile1);
        break;
        case "register": 
            $RegController = new Controller();
            $dot2 = "..";
            $directory2 = array("Home", "Login");
            $nameFile2 = "reg.php";
            $RegController->get($dot2, $directory2, $nameFile2);
        break;
        case "LoginClick":
            $usrNameInput = $_POST['username'];
            $pwdInput = $_POST['pwd'];
            $LoginAuth = new LoginController();
            $LoginAuth->LoginAuth($usrNameInput, $pwdInput, $_POST['login']);
        break;
        case "registerClick": 
            $usrNameInput = $_POST['username'];
            $pwdInput2 = $_POST['pwd'];
            $email = $_POST['email'];
            $Reg = new RegController();
            $Reg->RegUser($usrNameInput, $pwdInput2, $email, $_POST['reg']);
        break;
        case "Logout": 
            require_once '../Home/Logout/logout.php';
        break;
        case "Upload": 
            require_once '../Home/Upload/upload.php';
        break;
        case "uploadImage": 
            require_once '../Home/Upload/HandleUpload.php';
        default: 
        break;
    }

?>