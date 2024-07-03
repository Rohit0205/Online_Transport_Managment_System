<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Truck Details</title>
<style>
    body {
        background-color: #222;
        color: #fff;
        font-family: Arial, sans-serif;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    form {
        margin: 20px auto;
        max-width: 400px;
    }
    input[type="text"], input[type="submit"] {
        display: block;
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #444;
        border-radius: 5px;
        background-color: #333;
        color: #fffn;
    }
    input[type="submit"] {
        background-color: #007bffo
        color: #fff;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: orange;
    }
    h1 {
        text-align: center;
        color: orange;
    }
    
</style>
</head>
<body>
<jsp:include page="adminview.jsp" />
<h1>View Truck Details</h1>
<form action="truckdetails" method="post">

<input type="text" name="truckno" placeholder="Truck No.">
<input type="text" name="spoint" placeholder="From">
<input type="text" name="epoint" placeholder="To">

<input type="submit" value="View Truck">

</form>
</body>
</html>
