
setInterval(function() {
    
     $.ajax({
            type: "GET",
            url: 'getmoredata',
            dataType: "html",
            
        })
        .done(function(response) {
            $('table').empty();
            $('table').append(response);
            console.log(response);
            
        });
    }, 5000)

   