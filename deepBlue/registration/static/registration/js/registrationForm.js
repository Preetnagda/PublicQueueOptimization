function loaded() {
  // alert("hello");
}

function chooseDocClicked(){
  doctorsList = document.getElementById("available_doctors");
  if(document.getElementById("chooseDoc").checked){
    doctorsList.disabled = false;
  }
  else {
    doctorsList.selectedIndex = "0";
    doctorsList.disabled = true;
  }
}
function tomChanged(){

}
