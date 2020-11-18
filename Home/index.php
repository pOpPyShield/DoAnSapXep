<?php 
    session_start();
    require_once '../Controller/Controller.php';
    require_once '../Controller/LoginController.php';
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
        default: 
        break;
    }

?>