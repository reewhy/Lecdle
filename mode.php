<?php
    if($_SERVER['REQUEST_METHOD'] == 'GET'){
        if(isset($_GET['mode'])){
            $mode = $_GET['mode'];
            $_SESSION['mode'] = $mode;
        } else {
            unset($_SESSION['mode']);
        }
    }
?>