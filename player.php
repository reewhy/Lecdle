<?php
function loadHieroFromSQL(){
        global $conn, $cookie_name, $categories, $player;
        $sql = "SELECT * FROM users WHERE token = '". session_id(). "'";
        $result = $conn->query($sql);

        if(!isset($_SESSION['requests'])) $_SESSION['requests'] = array();

        if($result->num_rows > 0){
            $_SESSION['tries'] = 8 - $result->num_rows;
            setcookie('tries', (8-$result->num_rows), time()+3600, '/');
            while($row = mysqli_fetch_array($result)){
                    array_push($_SESSION['requests'], $row['player']);
            }
        }
    }
    if(empty($_SESSION['requests']) or !isset($_SESSION['tries']) or !isset($_COOKIE['tries'])) loadHieroFromSQL();

    function playerSettings(){
        global $server, $user, $password, $database, $player;
        $today = new mysqli($server, $user, $password, $database);

        if ($today->connect_error) {
            die("Connection failed: ". $today->connect_error);
        }

        $sql = "SELECT * FROM today";
        $r = $today->query($sql);

        if($r->num_rows > 0) {
            $row = $r->fetch_assoc();
            if($row['date'] != date('Y-m-d')){
                echo "updating";
                $sql = "UPDATE today SET date = '". date('Y-m-d H:i:s'). "'";
                $today->query($sql);
                $sql = "UPDATE today SET player = '". rand(1, 187). "'";
                $today->query($sql);

                $delete = "DELETE FROM users";
                loadHieroFromSQL();

                unset($_SESSION['requests']);
                unset($_POST);
                $_SESSION['requests'] = array();
                $_SESSION['tries'] = 8;
                setcookie('tries', $_SESSION['tries'], time()+3600, '/');
                setcookie('won', "false", time()+3600, '/');

                $today->query($delete);
                header("Refresh:0");
                playerSettings();
            }
            
            $player_id = $row['player'];

            $sql = "SELECT * FROM players WHERE id = $player_id";

            $r = $today->query($sql);

            if($r->num_rows > 0) {
                $row = $r->fetch_assoc();
                $player = $row;
            }

            setcookie("player_id", $player_id);
        }
    }
    playerSettings();

?>