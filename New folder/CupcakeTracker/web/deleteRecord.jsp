<%-- 
    Document   : deleteRecord
    Created on : Nov 3, 2015, 5:53:03 PM
    Author     : John Phillips
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Superstar Cupcake Shop</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1><a href="home.html">Superstar Cupcake Shop</a></h1>
        <h2>Delete Order</h2>
        <form action="delete" method="post">
            Order number: <input type="number" name="id" placeholder="Order ID to delete" required>
            <br><br>

            <input type="hidden" name="action" value="deleteRecord">
            
            <input type="submit" name="submit" value="Submit">
            <br><br>
        </form>
    </body>
</html>
