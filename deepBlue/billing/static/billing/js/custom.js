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