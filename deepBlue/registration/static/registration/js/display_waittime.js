function callajax(select){
    var selected_option=select.options[select.selectedIndex].getAttribute("value");

    $.ajax({
            type: "GET",
            url: 'getDoctorTime/'+selected_option,
            datatype: 'JSON',  
        })
        .done(function(response) {
            
            $('#predict_time_div').empty();
            $('#predict_time_div').append(response.estimatedTime);
            console.log(response)
            console.log(response.estimatedTime);
            
        });
}