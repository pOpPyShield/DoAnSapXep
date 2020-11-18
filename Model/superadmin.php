<?php 

    require_once 'config.php';
    require_once '../Core/init.php';
    class SuperAdmin{
        public $_pdo;
        public $_result;
        public $username;
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
                    $_SESSION['level'] = 'superadmin';
                    $_SESSION['is_login'] = true;
                    return true;
                }
                return false;
            }
        }

    }
?>