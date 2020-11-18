<?php 

    require_once 'Config.php';
    require_once './Core/Init.php';
    class User{
        public $_pdo;
        public $_result;
        public $username = '';
        public $_userID;
        public $_imgID;
        public $_resultUserReg;

        public function __construct()
        {
            try {
                $this->_pdo = new PDO('mysql:host=' . Config::get('mysql/host'). ';dbname='.Config::get('mysql/db'), Config::get('mysql/username'), Config::get('mysql/password'));
            } catch(PDOException $e) {
                die($e->getMessage());
            }
        }

        public function getUserName() {
            return $this->username;
        }

        public function getID() {
            return $this->_userID;
        }

        public function getResultUserReg() {
            return $this->_resultUserReg;
        }
        public function getResultQuery($name) {
            return $this->_result[$name];
        }
        public function reg($username, $Password, $Email) {
            $pwd1 = password_hash($Password, PASSWORD_BCRYPT);
             //Reg user
             $st = $this->_pdo->prepare("INSERT INTO user(UserName, Password, Email) VALUES (?, ?, ?)");
             $st->bindParam(1, $username);
             $st->bindParam(2, $pwd1);
             $st->bindParam(3, $email1);
             //If execute success, then go to if block
             if($st->execute()) {
                 $st->closeCursor();
                //Select user with username
                $st2 = $this->_pdo->prepare("SELECT * FROM user where UserName = ?");
                $st2->bindParam(1, $username);
                $st2->execute();
                $st2->closeCursor();
                $this->_resultUserReg = $st2->fetch();
                //Set value for prepare insert to profileimg table
                $userid = $this->_resultUserReg['UserID'];
                $status=1;
                $fileType = 'jpg';
                $NameImg = 'defaultimg';
                //Insert value of sql 'select user' 
                $st1 = $this->_pdo->prepare("INSERT INTO profileimg(userid, status, Type, Name) VALUE(?,?,?,?)");
                $st1->bindParam(1, $userid);
                $st1->bindParam(2, $status);
                $st1->bindParam(3, $fileType);
                $st1->bindParam(4, $NameImg);
                $st1->execute();
                $st1->closeCursor();
                return true;
             }
             return false;
        }

        public function login($username, $pwd) {
            $st = $this->_pdo->prepare("SELECT * FROM user WHERE UserName=?");
            $st->bindParam(1, $username);
            $st->execute();
            if($st->rowCount()==1) {
                $this->_result = $st->fetch();
                $st->closeCursor();
                if(password_verify($pwd, $this->_result['Password'])) {
                    $this->username = $this->_result['UserName'];
                    //$this->_userID = $this->_result['UserID'];
                    $_SESSION['level'] = 'user';
                    $_SESSION['is_login'] = true;
                    return true;
                }
                return false;
            }
        }

    }
?>