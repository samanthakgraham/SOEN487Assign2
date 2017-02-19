<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 2 - SOEN487 Assignment 2</title>
    </head>
    <body>        
        <div class="result"></div>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $.ajax({
                url: 'http://localhost:8080/TemperatureService/resources/temperature/',
                type: 'PUT',
                data: '35',
                contentType: 'text/plain',
                success: function (data) {                    
                    $('.result').html("Temperature set to 35");
                }
            });
            
            $.ajax({
                url: 'http://localhost:8080/TemperatureService/resources/temperature/',
                type: 'GET',
                success: function (data) {                    
                    $('.result').append(data);
                }
            });              
        </script>
    </body>
</html>
