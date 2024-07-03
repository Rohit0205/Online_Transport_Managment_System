<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Register</title>
    <style>
        body {
            background-color: #111;
            color: #eee;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
        }
        h1 {
            color:orange;
            text-align: center;
        }
        form {
            width: 400px;
            margin: 0 auto;
            padding:10px;
            border:1.5px solid white;
            color:white;
            font-size: 20px;
            background: rgba(0, 0, 0, 0.5);
        }
        .input-group {
            clear: both;
            margin-bottom: 20px;
            overflow: hidden;
            position: relative;
        }
        .input-group label {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 150px;
            margin-right: 10px;
            line-height: 32px;
        }
        .input-group input[type="text"],
        .input-group input[type="password"],
        .input-group input[type="email"],
        .input-group input[type="number"] {
            width: calc(50% - 85px);
            padding: 10px;
            background-color: #333;
            border: 1px solid #666;
            color: #eee;
            border-radius: 5px;
            float: left;
            margin-left: 160px;
        }
        input[type="submit"] {
            clear: both;
            display: block;
            width: 50%;
            padding: 10px;
            background-color: blue;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Customer Register</h1>
    <form action="cutomerReg" method="post">
        <div class="input-group">
            <label for="uname">UserName:</label>
            <input type="text" id="uname" name="uname" required>
        </div>
        <div class="input-group">
            <label for="fname">FirstName:</label>
            <input type="text" id="fname" name="fname" required>
        </div>
        <div class="input-group">
            <label for="lname">LastName:</label>
            <input type="text" id="lname" name="lname" required>
        </div>
        <div class="input-group">
            <label for="pass">Set-Password:</label>
            <input type="password" id="pass" name="pass" required>
        </div>
        <div class="input-group">
            <label for="repass">Re-Password:</label>
            <input type="password" id="repass" name="repass" required>
        </div>
        <div class="input-group">
            <label for="email">Emial-Id:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="input-group">
            <label for="pno">Phone:</label>
            <input type="number" id="pno" name="pno" required>
        </div>
        <input type="submit" value="Register">
    </form>
</body>
</html>
