//clock function
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('clockk').innerHTML =
    h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}

//update time function
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}

//data entry validation
function disableSubmit() { 
    document.getElementById("submit").disabled = true; 
}

//submit button activation only on data entry validation
function activateButton(element) {
    if(element.checked) { 
        document.getElementById("submit").disabled = false; 
    }    
    else{ 
        document.getElementById("submit").disabled = true; 
    }
}

//update type of mediction
function tomChanged(){
    var tom = document.getElementById('type_of_medication').value;
}

