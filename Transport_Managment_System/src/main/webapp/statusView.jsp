<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Truck Status</title>
<style>
    body {
        background-color: #121212;
        color: #ffffff;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    form {
        background-color: #1e1e1e;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 300px;
        text-align: center;
    }
    input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #333;
        border-radius: 4px;
        background-color: #333;
        color: #fff;
    }
    input[type="submit"], a.button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        text-decoration: none;
        display: inline-block;
        margin: 10px 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover, a.button:hover {
        background-color: orange;
    }
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
     background-color: orange;
        color:white;
    }
    h2
    {
      color:orange;
    }
</style>
</head>
<body>
<form action="status" method="post">
    <h2>Check Truck Status</h2>
    <label for="tnum">Truck No:</label><br>
    <input type="text" id="tnum" name="tnum"><br>
    <label for="from">From:</label><br>
    <input type="text" id="from" name="from"><br>
    <label for="to">To:</label><br>
    <input type="text" id="to" name="to"><br>
    <input type="submit" value="Check Status"><br>
    <a href="welcome.jsp" class="button">Back to Home</a>
</form>
</body>
</html>
