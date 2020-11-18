<?php 

    class Session {
        public function put($name, $value) {
            return $_SESSION[$name] = $value;
        }
        
        public function get($name) {
            return $_SESSION[$name];
        }
    }

?>