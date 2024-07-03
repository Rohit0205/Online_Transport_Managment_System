<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Manager Form</title>
<style>
    body {
        background-color: #121212;
        color: #ffffff;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    h1 {
        color: Orange;
        text-shadow:2px 1px 2px gray;
        text-align: center;
        margin-top: 20px;
        margin-bottom: 20px;
    }
    form {
        max-width: 600px; /* Increased width for two columns */
        margin: 20px auto; /* Reduced top margin */
        padding: 15px; /* Reduced padding */
        border: 1px solid #333333;
        border-radius: 10px;
        background-color: #1e1e1e;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .form-group {
        width: 48%; /* Adjust width for two columns */
        margin-bottom: 12px;
    }
    input[type="text"], input[type="number"], input[type="password"], input[type="date"] {
        width: 100%;
        padding: 8px; /* Reduced padding */
        margin: 6px 0; /* Reduced margin */
        box-sizing: border-box;
        border: 1px solid #555555;
        border-radius: 5px;
        background-color: #333333;
        color: #ffffff;
    }
    input[type="submit"], input[type="reset"] {
        width: 48%;
        padding: 8px; /* Reduced padding */
        margin: 6px 1%; /* Reduced margin */
        box-sizing: border-box;
        border: none;
        border-radius: 5px;
        background-color: #007BFF;
        color: #ffffff;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: orange;
    }
    label {
        display: block;
        margin: 6px 0 4px; /* Adjusted margin */
    }
    
</style>
</head>
<body>
<jsp:include page="adminview.jsp" />
    
    <form action="createmanager" method="post">
    
    <h1>Create New Manager </h1>
    
        <div class="form-group">
            <label for="id">Manager-Id:</label>
            <input type="number" id="id" name="id">
        </div>
        <div class="form-group">
            <label for="branch">Branch:</label>
            <input type="text" id="branch" name="branch">
        </div>
        <div class="form-group">
            <label for="mname">Manager Name:</label>
            <input type="text" id="mname" name="mname">
        </div>
        <div class="form-group">
            <label for="pass">Set Password:</label>
            <input type="password" id="pass" name="pass">
        </div>
        <div class="form-group">
            <label for="repass">Re-password:</label>
            <input type="password" id="repass" name="repass">
        </div>
        <div class="form-group">
            <label for="doj">Date-of-Join:</label>
            <input type="date" id="doj" name="doj">
        </div>
        <div class="form-group">
            <label for="dob">Date-of-Birth:</label>
            <input type="date" id="dob" name="dob">
        </div>
        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="number" id="salary" name="salary">
        </div>
        <input type="submit" value="Submit">
        <input type="reset" value="Clear">
    </form>
</body>
</html>
