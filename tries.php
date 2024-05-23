<?php

    $conn = new mysqli($server, $user, $password, $database);

    if($conn->connect_error){
        die("Connection failed: ". $conn->connect_error);
    }

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $player = $_POST['player'];
        if(!empty(($player)) and in_array($player, $_SESSION['requests']) == false){
            $sql = "INSERT INTO users VALUES ('" . session_id() . "', '". $player. "')";

            $conn->query($sql);

            $_SESSION['tries'] = $_SESSION['tries'] - 1;
            setcookie('tries', $_SESSION['tries'], time()+3600, '/');
        }
        
    }
?>