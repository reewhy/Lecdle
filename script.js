
tries = getCookie("tries");
const params = new URLSearchParams(window.location.search);
if(params.has("mode")){
    let show = document.querySelector(".show");

    show.innerHTML = params.get("mode");

    if(show.innerHTML == "easy"){
        show.style.backgroundColor = "rgb(73, 146, 70)";
    } else if(show.innerHTML == "medium"){
        show.style.backgroundColor = "rgb(214, 191, 60)";
    } else if(show.innerHTML == "hard"){
        show.style.backgroundColor = "rgb(240, 57, 57)";
    } else if(show.innerHTML == "insane"){
        show.style.backgroundColor = "rgb(126, 15, 201)";
    }
} else {
    let show = document.querySelector(".show");
    show.hidden = true;
}
if(params.has("mode") && params.get("mode") != "hard" && params.get("mode") != "insane"){
    var img = document.querySelector("img");
    if(img != null){
        img.style.filter = "blur(" + (5 * tries) + "px)";
    }
}

let input = document.querySelectorAll(".input");
function handleClick(){

    $.post($("#azione").attr("action"),
           $("#azione :input").serializeArray(),
            function(info){
                let cont = $.parseHTML(info)[21];

                let nodes = $(cont).html();
                $("#grid").html(nodes);

                if(params.has("mode") && params.get("mode") == "insane"){
                    document.querySelector(".grid_container").style.gridTemplateColumns = "repeat(5, 1fr)";
                    document.querySelectorAll(".item.cat")[0].remove();
                }

                if(mode == "easy"){
                    console.log(mode);
                    $("img").css("filter", "blur(" + (5 * tries) + "px)");
                }
            });
    $("#azione").submit(function(){
        return false;
    })

    tries = getCookie("tries");

    let mode = "";
    if(params.has("mode")){
        mode = params.get("mode");
    }
}

$("#invia").click(handleClick());

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  }

function checkInputs(){
    for(let i = 0; i<input.length; i++){
        if(input[i].value === "") return true;
    }
    return false;
}

function clearInputs(){
    for(let i = 0; i<input.length; i++){
        input[i].value = "";
    }
}

function debug(){
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "index.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.onload = function(){
        results = this.responseText;
    }

    xhttp.send("debug=delete");
}

function deleteSession(){
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "index.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.onload = function(){
        results = this.responseText;
    }

    xhttp.send("debug=session");
}

let t = getCookie("tries");

if(t <= 0){
    document.querySelector(".input").readOnly = true;
}

let won = getCookie("won");
document.querySelector(".black").hidden = true;
document.querySelector(".won").hidden = true;
//document.querySelector(".start_div").hidden = true;

if(won === "true"){
    document.querySelector(".input").readOnly = true;
    document.querySelector(".black").hidden = false;
    document.querySelector(".won").hidden = false;
} else if(getCookie("tries") === "0" && won === "false"){
    document.querySelector(".input").readOnly = true;
    document.querySelector("#won_title").innerHTML = "You lost!";
    document.querySelector("#won_text").innerHTML = "You'll be able to try again in";
    document.querySelector(".black").hidden = false;
    document.querySelector(".won").hidden = false;
}

function removeOver(){
    let menu = document.querySelector(".mode");

    if(menu.hidden){
        return;
    }
    let blacks = document.querySelectorAll(".black");

    blacks.forEach(function(black){
        black.hidden = true;
    });

    document.querySelector(".won").hidden = true;
}

function showMenu(){
    if(getCookie("tries") === "0" && won === "false"){
        return;
    }
    console.log("trying to show menu");
    let menu = document.querySelector(".start_div");
    let black = document.querySelector(".black");

    menu.hidden = false;
    black.hidden = false;
}

if(!params.has("mode")){
    console.log("no mode");
    console.log(params.get("mode"));
    showMenu();
}



function changeMode(){
    if(getCookie("tries") === "0" && won === "false"){
        return;
    }
    window.location.search = "index.php";
}

if(tries <= 0 && won === "false" && params.has("mode")){
    document.querySelector(".black").hidden = false;
    document.querySelector(".won").hidden = false;
    document.querySelector("#won_title").innerHTML = "You lost!";
    document.querySelector("#won_text").innerHTML = "You'll be able to try again in";
    document.querySelector(".input").readOnly = true;
    document.querySelector("#invia").disabled = true;
}