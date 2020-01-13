function fetchdata(){
 $.ajax({
  url: '',
  type: 'POST',
  success: function(data){
   // Perform operation on return value
    console.log(data)
    document.getElementById("expected_time").innerHTML = data['expected_time'];
    
   
  },
  complete:function(data){
   setTimeout(fetchdata,10000);
  }
 });
}

$(document).ready(function(){
 setTimeout(fetchdata,10000);
})