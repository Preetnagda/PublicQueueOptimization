var timer = null;
$( document ).ready(function() {
  $("#showTimeAndPatients").show();
  $("#showInWords").hide();
});

function fetchdata(){
 $.ajax({
  url: 'getPatientPos',
  type: 'GET',
  success: function(data){
   // Perform operation on return value
    console.log(data);

    if (data['patAhead'] != null){
      $("#showTimeAndPatients").show();
      $("#showInWords").hide();
      document.getElementById("expected_time").innerHTML = data['expected_time'];
      document.getElementById("patAhead").innerHTML = data['patAhead'];
    }
    else if (data['patAhead'] == null) {
      $("#showTimeAndPatients").html("");
      $("#showInWords").show();
    }
  },
  complete:function(data){
   setTimeout(fetchdata,10000);
  }
 });
}

$(document).ready(function(){
 timer = setTimeout(fetchdata,10000);
})
