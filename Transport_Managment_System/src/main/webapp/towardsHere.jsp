<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Entry Form</title>
<style>
    html, body {
        height: 50%;
        margin: 0;
        padding: 0;
    }
    body {
    background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        margin-top:30px;
        height: 90vh;
         
        
    }

    .form-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        height: 23%;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    h1 {
        text-align: center;
        color: orange;
        text-shadow: 2px 2px 2px lightgray;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
        height: 30%;
        justify-content: space-between;
        margin-bottom: 100px;
    }

    .form-row {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
        flex: 1;
    }

    .form-row input[type="text"] {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        flex: 1;
    }

    input[type="submit"] {
        padding: 10px;
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        align-self: center;
        width:40%;
    }

    input[type="submit"]:hover {
        background-color: orange;
    }
</style>
</head>
<body>
<div class="form-container">
    <h1>Enter Your Branch</h1>
    <form action="towards123" method="post">
        <div class="form-row">
            <input type="text" id="branch" name="branch">
        </div>
        <input type="submit" value="View">
        <a href="welcome.jsp">Back</a>
    </form>
</div>
</body>
</html>
