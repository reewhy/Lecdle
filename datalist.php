<?php
    $conn = new mysqli($server, $user, $password, $database);
    $sql = "SELECT name FROM players";
    $result = $conn->query($sql);

    if($result->num_rows > 0){
        while($row = mysqli_fetch_array($result)){
            echo "<option value='". $row['name']. "'>";
        }
    }
    $conn->close();
?>