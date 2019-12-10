function loaded() {
  // alert("hello");
  tomChanged();
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
  var tom = document.getElementById('type_of_medication').value;
  $.ajax( {
    url:'/registration/doctorsList',
    type: 'GET',  // http method
    data: {'tom': tom },  // data to submit
    success: function (data, status, xhr) {
      var x = document.getElementById("available_doctors");
      x.options.length = 1;
        for (var i=0;i<data.docList.length;i++){
          var option = document.createElement("option");
          option.text = data.docList[i];
          option.value=data.docList[i];
          x.add(option);
        }

    },
    error: function (jqXhr, textStatus, errorMessage) {
            $('#pass').append('Error' + errorMessage);
    }
  });

}
