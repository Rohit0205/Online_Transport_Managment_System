<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
    body {
        
        color: #ffffff;
        font-family: Arial, sans-serif;
        background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    h1 {
        text-align: center;
        margin-top: 50px;
        color: Orange;
    }
    form {
        background-color: #1e1e1e;
        border-radius: 8px;
        padding: 20px;
        max-width: 400px;
        margin: 50px auto;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    label {
        width: 100%;
        margin: 10px 0 5px;
        text-align: left;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 20px;
        border: 1px solid #333;
        border-radius: 4px;
        background-color: #333;
        color: #fff;
    }
    .button-group {
        display: flex;
        width: 100%;
        justify-content: space-between;
    }
    input[type="submit"], input[type="reset"], .button-link {
        width: 48%;
        padding: 10px;
        margin: 10px 1%;
        border: none;
        border-radius: 4px;
        background-color: #6200ea;
        color: #fff;
        cursor: pointer;
        text-align: center;
        text-decoration: none; /* Remove underline */
        display: inline-block;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, .button-link:hover {
        background-color: orange;
    }
</style>
</head>
<body>
<h1>Admin Login</h1>
<form action="adminlogin" method="post">
    <label for="uname">Admin Name:</label>
    <input type="text" id="uname" name="uname">
    <label for="pass">Password:</label>
    <input type="password" id="pass" name="pass">
    <div class="button-group">
        <input type="submit" value="Login">
        
        <a href="welcome.jsp" class="button-link">Back To Home</a>
    </div>
     
</form>
</body>
</html>
