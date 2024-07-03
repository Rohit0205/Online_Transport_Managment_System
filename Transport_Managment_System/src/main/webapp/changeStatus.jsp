<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Truck Status</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: black;
        color: white;
        margin: 0;
        padding: 0;
        background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }

    .container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
       background-color:#333,0.1;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(255, 255, 255, 10);
    }

    h1 {
        text-align: center;
        color: orange;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    label {
        margin-bottom: 10px;
        color: #aaa;
    }

    input[type="text"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #555;
        border-radius: 4px;
        transition: border-color 0.3s ease;
        background-color: #444;
        color: white;
    }

    input[type="text"]:focus {
        border-color: #007bff;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
<script>
    function goBack() {
        window.history.back();
    }
</script>
</head>
<body>

<div class="container">
    <h1>Change Truck Status</h1>
    <form action="changestatus" method="post">
        <label for="truckno">Truck No</label>
        <input type="text" id="truckno" name="truckno">
        <label for="changedStatus">Change Status</label>
        <input type="text" id="changedStatus" name="changedStatus">
        <input type="submit" value="Change">
    </form><br><br>
    <button class="button" onclick="goBack()">Go Back</button>
</div>
</body>
</html>
