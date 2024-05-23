<?php
    error_reporting(E_ERROR | E_PARSE);
    

    $al = False;

    $conn = new mysqli($server, $user, $password, $database);

    if ($conn->connect_error) {
        die("Connection failed: ". $conn->connect_error);
    }

    $categories = ["team", "nat", "debut", "age", "league", "pos"];
    $sql = "SELECT * FROM players WHERE name=";

    function check($player_result, $category){
        global $player;
        if($category == "team"){
            $former = explode("!", $player['former']);

            if(in_array($player_result['team'], $former)){
                return True;
            }
            else return False;
            //if($player_result['former'])
        } elseif($category == "debut"){
            if($player_result['debut'] == ($player['debut']-1) or $player_result['debut'] == ($player['debut']+1)){
                return True;
            }
            else return False;
        } elseif($category == "age"){
            if($player_result['age'] == ($player['age']-1) or $player_result['age'] == ($player['age']+1)){
                return True;
            }
            else return False;
        } elseif($category == "nat"){
            if($player_result['continent'] == $player['continent']){
                return True;
            }
            else return False;
        }
    }

    function update(){
        global $conn, $cookie_name, $categories, $player;

        foreach($_SESSION['requests'] as $request){
            $get_player = "SELECT * FROM players WHERE name = '". $request. "'";
            $get_player_result = $conn->query($get_player);

            $won = "true";
    
            if($get_player_result->num_rows > 0){
                $player_result = $get_player_result->fetch_assoc();
    
                foreach($categories as $category){
                    if($category == "team" and $_SESSION['mode'] == "insane"){
                        continue;
                    }
                    echo "<div class='item" ;
                    if($player_result[$category] == $player[$category]){
                        echo " right";
                    } elseif(check($player_result, $category)){
                        echo " almost";
                    } else{
                        echo " null";
                        $won = "false";
                    }


                    $final = $player_result[$category];

                    if($category == "age"){
                        $final = date('Y') - $player_result[$category];

                        if($player_result[$category] > $player[$category]){
                            $final .= " <i class='fa-solid fa-arrow-up'></i>";
                        } elseif($player_result[$category] < $player[$category]) {
                            $final .= " <i class='fa-solid fa-arrow-down'></i>";
                        }
                    }

                    if($category == "debut"){
                        if($player_result[$category] > $player[$category]){
                            $final .= " <i class='fa-solid fa-arrow-down'></i>";
                        } elseif($player_result[$category] < $player[$category]) {
                            $final .= " <i class='fa-solid fa-arrow-up'></i>";
                        }
                    }

                    echo "'>". $final. "</div>";
                }

                setcookie('won', $won, time()+3600, '/');

                if($won == "true"){
                    $_SESSION['tries'] = 0;
                    setcookie('tries', $_SESSION['tries'], time()+3600, '/');
                }
            }
        }
    }
     /**/

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $name = $_POST['player'];
        if(!isset($_SESSION['requests'])){
            $_SESSION['requests'] = array();
        }
        if(!empty(($name)) and in_array($name, $_SESSION['requests']) == false){
            array_push($_SESSION['requests'], $name);
            update();
            $al = true;
        }
    }

    if($al == false) update();
    $conn->close();
?>