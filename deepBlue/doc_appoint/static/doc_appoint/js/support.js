var timer = null;
var tempPeople = -1;
function fetchdata(){
 $.ajax({
  url: 'getPatientPos',
  type: 'GET',
  success: function(data){

   // Perform operation on return value
   $("#visualQueueDiv").html("");
    for(var i = 0;i<parseInt(data['totalPeople']);i++){

      $("#visualQueueDiv").append(
        `<figure class="figure">
          <img style="height:50px; width:50px;" src="${maleImageSrc}" class="figure-img" alt="fig">
         </figure>`
      );
    }
    $("#visualQueueDiv").append(
      `
       <figure class="figure">
        <img style="height:50px; width:50px;" src="${highlightMaleSrc}" class="figure-img" alt="fig">
        <figcaption class="figure-caption" style="text-align:center;">You</figcaption>
       </figure>
       `
    );
    // console.log(data)
    // alert((tempPeople == -1 || tempPeople!=data['totalPeople']) && data['totalPeople']<=1);
    if((tempPeople == -1 || tempPeople!=data['totalPeople']) && data['totalPeople']<=1){
      let audio = new Audio(notificationSound);
      audio.play();
      tempPeople = data['totalPeople'];
    }

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
  fetchdata();
  timer = setTimeout(fetchdata,10000);
})
