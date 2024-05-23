<!DOCTYPE html>
<?php
    $server = "localhost";
    $user = "root";
    $password = "lucaluca";
    $database = "players";

    session_start();

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['debug'])){
            $debug = $_POST['debug'];

            if($debug == 'session'){
                session_destroy();
                session_regenerate_id(true);
                session_reset();
            }
        }
    }

    if($_SERVER['REQUEST_METHOD'] == "GET"){
        if(isset($_GET['mode'])){
            $mode = $_GET['mode'];
            $_SESSION['mode'] = $mode;
        } 
    }
    include_once('tries.php');
?>

<?php include("mode.php") ?>;

<html>
    <head>
        <title>Lecdle</title>
        <link rel="stylesheet" href="style.css">
        <script defer src="script.js"></script>
        <script defer src="countdown.js"></script>
        <script src="https://kit.fontawesome.com/925ea6b054.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    </head>
    <body>
        <div style="display: flex; gap: 10px">
            <button class="change btn" onclick="changeMode()">Change mode</button>
            <div class="change show"></div>
        </div>
        <h1>Lecdle</h1>
        <div class="container">
            <?php include_once('player.php'); ?>
            <?php
                $conn = new mysqli($server, $user, $password, $database);

                if($conn->connect_error){
                    die("Connection failed: ". $conn->connect_error);
                } 

                $sql = "SELECT img FROM players WHERE id = ". $_COOKIE['player_id'];
                $result = $conn->query($sql);
                if($result->num_rows > 0 and isset($_SESSION['mode']) and $_SESSION['mode'] != 'hard' and $_SESSION['mode'] != 'insane'){
                    $row = $result->fetch_assoc();

                    copy($row['img'], 'tmp.png');
                    echo "<img src='tmp.png' style='max-width: 20%'>";
                }
            ?>
            </div>
            <div class="black" onclick="removeOver()">
            </div>
            <div class="blacked start_div" hidden="true">
                <h1>Welcome to Loldle</h1>
                <p>Select mode</p>
                <form action="index.php" method="get">
                    <button class="mode insane" onclick="setMode('insane')" name="mode" value="insane">Insane</button><br>
                    <button class="mode hard" onclick="setMode('hard')" name="mode" value="hard">Hard</button><br>
                    <button class="mode medium" onclick="setMode('medium')" name="mode" value="medium">Medium</button><br>
                    <button class="mode easy" onclick="setMode('easy')" name="mode" value="easy">Easy</button>
                </form>
                <p class="info"><b style="color:rgb(73, 146, 70)">Easy</b> mode has a blurred image which unblurs every try you take.</p>
                <p class="info"><b style="color:rgb(214, 191, 60)">Medium</b> mode has a blurred image which doesn't unblurs.</p>
                <p class="info"><b style="color:rgb(240, 57, 57)">Hard</b> mode doesn't have an image.</p>                
                <p class="info"><b style="color:rgb(126, 15, 201)">Insane</b> mode has no image and no team field.</p>

                <div class="instructions">
                    <h1>How to play</h1>
                    <p class="info">You can choose a player from the list that appears when you click on the text field.</p>
                    <p class="info">You can also type the name of the player in the text field.</p>
                    <p class="info">When you click enter six values will appear:</p>
                    <p class="info">If the color is <b style="color:rgb(73, 146, 70)">green</b> you got the value right;</p>
                    <p class="info">If the color is <b style="color:rgb(214, 191, 60)">yellow</b> you got the value almost right;</p>
                    <p class="info">Else the color will be <b>black</b> which means you got the value wrong.</p>
                    <p class="info">The value turns yellow if:</p>
                    <ul>
                        <li class="info"><b>Team</b>: if the team is a former team of the player you need to guess;</li>
                        <li class="info"><b>Nationality</b>: if the continent of the nation of the player you chose is the same of the player you need to guess;</li>
                        <li class="info"><b>Debut year and age</b>: if you messed up the debut year of only one year.</li>
                    </ul>
                </div>
            </div>
            <div class="blacked won">
                <p id="close" onclick="removeOver()">x</p>
                <h1 id="won_title">You won!</h1>
                <p id="won_text">Congrats! You'll be able to see the next person in</p>
                <p id="countdown">00:00:00</p>
            </div>
            <div class="grid_container" id="grid">
                    <div class="item cat">Team</div>
                    <div class="item cat">Nationality</div>
                    <div class="item cat">Debut year</div>
                    <div class="item cat">Age</div>
                    <div class="item cat">League</div>
                    <div class="item cat">Position</div>
                    <?php include_once('file.php'); ?>
            </div>
            <form class="inputs" method="POST" action="index.php" id="azione">
                <div class="input_container">
                    <input type="text" class="input" name="player" placeholder="e.g. Caps" autocomplete="off" list="player">

                    
                    <datalist id="player">
                        <?php include_once('datalist.php'); ?>
                    </datalist>
                    <button onclick="handleClick()" id="invia">Enter</button>
                </div>
            </form>
            <div id="debug">

            </div>
        </div>
        <div class="instructions">
            <h1>How to play</h1>
            <p>You can choose a player from the list that appears when you click on the text field.</p>
            <p>You can also type the name of the player in the text field.</p>
            <p>When you click enter six values will appear:</p>
            <p>If the color is <b style="color:rgb(73, 146, 70)">green</b> you got the value right;</p>
            <p>If the color is <b style="color:rgb(214, 191, 60)">yellow</b> you got the value almost right;</p>
            <p>Else the color will be <b>black</b> which means you got the value wrong.</p>
            <p>The value turns yellow if:</p>
            <ul>
                <li><b>Team</b>: if the team is a former team of the player you need to guess;</li>
                <li><b>Nationality</b>: if the continent of the nation of the player you chose is the same of the player you need to guess;</li>
                <li><b>Debut year and age</b>: if you messed up the debut year of only one year.</li>
            </ul>
        </div>
    </body>
</html>