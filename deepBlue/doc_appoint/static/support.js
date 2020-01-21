var timer = null;

function fetchdata(){
 $.ajax({
  url: 'getPatientPos',
  type: 'GET',
  success: function(data){
   // Perform operation on return value
    console.log(data)
    if (data['totalPeople']>1){
      document.getElementById("expected_time").innerHTML = data['expected_time'];
      document.getElementById("patAhead").innerHTML = data['totalPeople'];
    }
    else if (data['totalPeople']==-1) {
      location.reload();

    }
    else if(data['totalPeople']==-2){
      window.location.href = '';
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
