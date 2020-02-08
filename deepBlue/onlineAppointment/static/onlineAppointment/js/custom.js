$( document ).ready(function() {
});

function appointmentDateSelected(){
  var appointmentDate = $('#appointmentDate').val();
  var tom = $('#type_of_medication').val();
  alert(appointmentDate);

  $.ajax({
          type: "GET",
          url: 'getAvailableSlots/'+appointmentDate+'/'+tom,
          // data: {
          //     appointmentDate: appointmentDate,
          //      tom: tom,
          // },
          datatype: 'JSON',
      })
      .done(function(response) {
          alert(response["slots"]);
          for(var i=0;i<8;i++){

            if(!response["slots"][i]){
              optionIndex = i + 1;
              if(optionIndex == 1){
                optionText = "9:00 AM"
                optionValue=9
              }
              if(optionIndex == 2){
                optionText = "10:00 AM"
                optionValue=10
              }
              if(optionIndex == 3){
                optionText = "11:00 AM"
                optionValue=11
              }
              if(optionIndex == 4){
                optionText = "12:00 PM"
                optionValue=12
              }
              if(optionIndex == 5){
                optionText = "1:00 PM"
                optionValue=13
              }
              if(optionIndex == 6){
                optionText = "2:00 PM"
                optionValue=14
              }
              if(optionIndex == 7){
                optionText = "3:00 PM"
                optionValue=15
              }
              if(optionIndex == 8){
                optionText = "4:00 PM"
                optionValue=16
              }
              $('#availableSlots').append(`<option value="${optionValue}">
                                           ${optionText}
                                      </option>`);
            }

          }


      });
}
