setInterval(function() {
        $.ajax({
            type: "GET",
            url: 'getmoredata',
            dataType: "html",

        })
        .done(function(response) {
            $('tbody').empty();
            $('tbody').append(response);
            console.log(response);

        });
    }, 10000)
var timer = null;

function fetchdata(){
 $.ajax({
  url: 'getPatientPos',
  type: 'GET',
  success: function(data){
   // Perform operation on return value
    console.log(data);

    if (data['patAhead']>0){
      document.getElementById("expected_time").innerHTML = data['expected_time'];
      document.getElementById("patAhead").innerHTML = data['patAhead'];
    }
    else if(data['patAhead'] == 0){
      $("#showTimeAndPatients").hide();
      $("#showInWords").show();
      $("#showInWords").html("You are next")
    }
    else if (data['patAhead']==-1) {
      location.reload();
    }
    else if(data['patAhead']==-2){
      alert("hello");
      window.location.href = '../billing';
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
