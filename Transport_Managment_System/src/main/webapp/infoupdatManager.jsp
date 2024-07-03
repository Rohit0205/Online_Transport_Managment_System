<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Update Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: black;
        margin: 0;
        padding: 0;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    .container {
        width: 50%;
        margin: 0 auto;
        background: #333;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 50px;
        border: 2px orange solid;
        text-align: center; /* Centering the submit button */
    }
    h2 {
        color: #333;
    }
    input[type="text"] {
        width: 50%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background: blue;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background: orange;
    }
    .black-theme {
        background: #333;
        color: #fff;
        padding: 20px;
        margin-top: 20px;
        border-radius: 5px;
    }
    h1 {
        text-align: center;
        color: orange;
    }
    h2 {
        color: silver;
        text-decoration: underline;
        text-align: center;
    }
    label {
        font-size: 50x;
        color: white;
    }
</style>
</head>
<body>

    <div class="container">
        <h1>Enter Id And Name of Manager</h1>
        <form action="infoUpdateManger" method="post">
            <h2>Enter Manager Information to Update</h2>
            <label for="baseId">Enter Manager-Id</label>
            <input type="text" name="baseId" id="baseId"><br><br>
            <label for="basedName">Enter Manager-Name</label>
            <input type="text" name="basedName" id="basedName"><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
    <h2>____________________________________________________________________________</h2>
</body>
</html>
