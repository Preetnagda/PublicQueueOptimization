var timer = null;

function fetchdata(){
 $.ajax({
  url: 'getPatientPos',
  type: 'GET',
  success: function(data){
   // Perform operation on return value

    console.log(data)

    if (data['totalPeople']>-1){
      $("#expected_time").html(data.expected_time);
      $('#patAhead').html(data.totalPeople);
    }
    else if (data['totalPeople']==-1) {
      location.reload();

    }
    else if(data['totalPeople']==-2){
      window.location.href = '../billing';
    }

  },
  complete:function(data){
   setTimeout(fetchdata,10000);
  }
 });
}

$(document).ready(function(){
  alert("started");
 timer = setTimeout(fetchdata,10000);
})
