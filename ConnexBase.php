<?php
class ConnexBase {
    public static $connex;
    public static function getConnexion(){
        if(self::$connex == null){
            $url = "mysql:host=127.0.0.1;dbname=reservation";
            $user = "root";
            $pass = "";
            self::$connex = new PDO($url,$user,$pass);
            self::$connex->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        return self::$connex;
    }
}
?>