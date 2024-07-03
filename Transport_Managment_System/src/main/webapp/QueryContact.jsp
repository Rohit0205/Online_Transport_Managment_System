<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
    body {
        background-color: #333;
        color: #fff;
        font-family: Arial, sans-serif;
        margin-top: 60px;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh; /* Reduced height */
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    form {
        background-color: #444;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 250px;
    }
    input[type="text"], input[type="number"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #666;
        border-radius: 5px;
        background-color: #555;
        color: #fff;
    }
    input[type="submit"], a.button {
        display: inline-block;
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        text-align: center;
        background-color: #666;
        border: 1px solid #666;
        border-radius: 5px;
        color: #fff;
        text-decoration: none;
        box-sizing: border-box;
    }
    input[type="submit"]:hover, a.button:hover {
        background-color: orange;
    }
    h1 {
        text-align: center;
        color: orange;
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<form action="querytoContact" method="post">
    <h1>Contact Us</h1>
    <label for="uname">Name:</label><br>
    <input type="text" id="uname" name="uname"><br><br>
    
    <label for="email">Email:</label><br>
    <input type="text" id="email" name="email"><br><br>
    
    <label for="phno">Phone:</label><br>
    <input type="number" id="phno" name="phno"><br><br>
    
    <label for="msg">Message:</label><br>
    <input type="text" id="msg" name="msg"><br><br>
    
    <input type="submit" value="Submit">
    <a href="welcome.jsp" class="button">Back To Home</a>
</form>

</body>
</html>
