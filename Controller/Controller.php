<?php 

    class Controller {
        public function get($dot, $directory = array(), $namePhP) {
            $contain="";
            $fullpath="";
            foreach($directory as $directorys) {
                $contain .=  $directorys . '/';
            }
            $fullpath .= $dot . '/' . $contain . $namePhP;
            require_once $fullpath;
        }
    }

?>