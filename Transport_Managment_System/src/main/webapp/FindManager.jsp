<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Find Manager</title>
    <style>
        body {
            font-family: Arial, sans-serif;
             /* Transparent black background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-bottom: 300px;
        }
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .container form {
            display: flex;
            flex-direction: column;
        }
        .container select, .container input[type="text"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .container .buttons {
            display: flex;
            justify-content: space-between;
        }
        .container .buttons input[type="submit"], .container .buttons button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .container .buttons button {
            background-color: #f44336;
        }
        .container .buttons input[type="submit"]:hover, .container .buttons button:hover {
            opacity: 0.8;
        }
        h2
        {
        color: orange;
        }
        label 
        {
        color:orange;
        }
	

    </style>
</head>
<body>
    <div class="container">
        <h2>Find Manager</h2>
        <form action="findmanager" method="post">
            <label for="branch">Branch:</label>
            <select name="branch" id="branch">
                <option value="select Branch">Select Branch</option>
                <option value="Pune">Pune</option>
                <option value="Mumbai">Mumbai</option>
                <option value="New Mumbai">New Mumbai</option>
                <option value="Kalyan">Kalyan</option>
                <option value="Bhivandi">Bhivandi</option>
                <option value="Nashik">Nashik</option>
                <option value="Nagpur">Nagpur</option>
                <option value="Amaravti">Amaravti</option>
                <option value="Jalgaon">Jalgaon</option>
                <option value="Hyderabad">Hyderabad</option>
                <option value="Banglore">Banglore</option>
                <option value="Channai">Channai</option>
                <option value="Delhi">Delhi</option>
                <option value="Jaipur">Jaipur</option>
                <option value="Punjab">Punjab</option>
                <option value="Kolakata">Kolakata</option>
                <option value="Kerla">Kerla</option>
                <option value="UttraKhand">UttraKhand</option>
                <option value="Assam">Assam</option>
                <option value="Rajkot">Rajkot</option>
                <option value="Ahembdabad">Ahembdabad</option>
                <option value="Haryana">Haryana</option>
                <option value="Kshmir">Kshmir</option>
                <option value="ShreeNager">ShreeNager</option>
                <option value="Patana">Patana</option>
            </select>
            <label for="name">Find Manager:</label>
            <input type="text" name="name" id="name" maxlength="1">
            <div class="buttons">
                <input type="submit" value="Find">
                <button type="button" onclick="goBack()">Go Back</button>
            </div>
        </form>
    </div>
    <br><br>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
