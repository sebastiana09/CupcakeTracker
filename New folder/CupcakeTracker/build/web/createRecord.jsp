<%-- 
    Document   : createRecord
    Created on : Nov 3, 2015, 5:19:26 PM
    Author     : John Phillips
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Superstar Cupcake Shope</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mystyle.css">
        <!-- JQuery UI code to implement a datepicker control -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker({dateFormat: "yy-mm-dd"})
                        .datepicker("setDate", new Date());
            });
        </script>
    </head>
    <body>
        <h1><a href="home.html">Superstar Cupcake Shop</a></h1>
        <h2>Place an online Cupcake order</h2>
        <form action="create" method="get">

            <!-- Used the new HTML5 email type to force the user to enter an email address.-->
            Email: <input type="email" name="email" size="30"  
                          placeholder="Enter your email address here." required>
            <br><br>

            <!-- Used the new HTML5 number type to force the user to enter a number.-->
            Amount of Cupcakes: <input type="number" name="bloodsugar" value='12' required>
            <br><br>

            Date: <input type="text" name="date" id="datepicker" size="30">
            <br><br>

            <!-- Used the new HTML5 time type and the new Java8 LocalTime.now() to grab the current time.-->
            <!-- This is somewhat experimental; we might be better off just using a type='text' control.-->
            Time: <input type="time" name="time" size="30" 
                         value="<%= LocalTime.now().format(DateTimeFormatter.ofPattern("H:m"))%>">
            <br><br>

            Notes:<br>
            <textarea  name="notes" maxlength="500" cols="60" rows="6" placeholder="Get creative here! Specify flavors, filling, frosting, sprinkles, etc. here! "></textarea>
            <br><br>

            <input type="hidden" name="action" value="createRecord">

            <input type="submit" name="submit" value="Submit">
            <br><br>
        </form>
    </body>
</html>

