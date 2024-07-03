<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Login</title>
<style>
    body {
        background-color: #000;
        color: #fff;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    .container {
        width: 25%;
        margin: 100px auto;
        background-color: rgba(255, 255, 255, 0.1);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        color:black;
    }
    h1 {
        text-align: center;
        color:orange;
    }
    form {
        text-align: center;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="submit"],
    a.button {
        width: 70%;
        padding: 10px;
        margin: 5px 0;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        display: inline-block;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
    }
    input[type="submit"] {
        background-color: blue;
        color: white;
    }
    input[type="submit"]:hover {
        background-color: orange;
    }
    a.button {
        background-color: blue;
        margin-left: 50px;
        color:white;
        width:64%;
    }
    a.button:hover {
        color:orange;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Customer Login</h1>
    <form action="custLogin" method="post">
        <label for="uname">Username:</label><br>
        <input type="text" id="uname" name="uname" ><br><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" ><br><br>
        <label for="pass">Password:</label><br>
        <input type="password" id="pass" name="pass" ><br><br>
        <input type="submit" value="Login" class="button">
    </form>
    <a href="coustomerReg.jsp" class="button">Create New User</a>
    <a href="welcome.jsp" class="button">Back to Home</a>
</div>
</body>
</html>
