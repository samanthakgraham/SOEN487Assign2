<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 3 - SOEN487 Assignment 2</title>

        <link rel="stylesheet" href="css/main.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>    
    </head>
    <body>
        <h3>Samantha's Delicious Client</h3>
        <div class="container">            
            <div class="col-md-12">                
                <button class="btn btn-info popular">Display popular bookmarks</button>
                <ul class="popular"></ul>
            </div>
            <div class="col-md-12">                
                <button class="btn btn-info recent">Display recent bookmarks</button>
                <ul class="recent"></ul>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $('button.popular').on('click', function(e){
                $('ul.popular').html("");
                $.ajax({
                    url: 'http://feeds.del.icio.us/v2/json/popular',
                    type: 'GET',
                    success: function (data) {   
                        $.each(data, function(key, object){
                            console.log(object);
                            $('ul.popular').append("<li><a href='"+object.u+"' target='_blank'>"+object.d+"</a></li>");
                        });
                    }
                });
            });
            
            $('button.recent').on('click', function(e){
                $('ul.recent').html("");
                $.ajax({
                    url: 'http://feeds.del.icio.us/v2/json/recent',
                    type: 'GET',
                    success: function (data) {   
                        $.each(data, function(key, object){
                            console.log(object);
                            $('ul.recent').append("<li><a href='"+object.u+"' target='_blank'>"+object.d+"</a></li>");
                        });
                    }
                });
            });
        </script>
    </body>
</html>
