$( document ).ready(function() {
    $('#predict_time_div').hide()
});

function callajax(select){
    var selected_option=select.options[select.selectedIndex].getAttribute("value");
    $.ajax({
            type: "GET",
            url: 'getDoctorTime/'+selected_option,
            datatype: 'JSON',
        })

        .done(function(response) {
            $('#predict_time_div').show();
            $('#predict_time_div').html("Your estimated time for medication is " +
            response.estimatedTime + " minutes.<br/>");
            $('#predict_time_div').append("You will be out of billing before approximately " +
            response.journeyTime + " hours.<br/><br/>");

            console.log(response)
            console.log(response.estimatedTime);

        });
 }
// $(".form_datetime").datetimepicker({
//                 format: "dd MM yyyy - hh:ii"
// });
