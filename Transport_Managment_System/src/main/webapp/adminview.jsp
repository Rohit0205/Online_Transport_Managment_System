<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Logined</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-image: url('truck.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    margin: 0;
    padding: 0;
    background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
  }
  
  h1 {
    text-align: center;
    padding: 20px 0;
    color: orange;
  }
  
  .button-container {
    text-align: center;
    margin-top: 20px;
    background-color: rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
  }
  
  .button, .form-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #444;
    text-align: center;
    text-decoration: none;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin: 5px;
  }
  
  .button:hover, .form-button:hover {
    background-color: orange;
    font-style: bold;
    color: black;
  }
  
  .form-container {
    display: inline-block;
  }
  
  .form-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #444;
    text-align: center;
    text-decoration: none;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin: 5px;
  }
  
  .form-button:hover {
    background-color: orange;
    font-style: bold;
    color: black;
  }
</style>
</head>
<body>

  <h1>AdminLoginView</h1>
  <div class="button-container">
    <a href="changeStatus.jsp" class="button">Change Truck Status</a>
    <a href="installedNewTruck.jsp" class="button">Installed New Trucks</a>
    <a href="createManager.jsp" class="button">Create New Manager</a>
    <a href="infoupdatManager.jsp" class="button">UpdatManager Details</a>
    <a href="truckDetails.jsp" class="button">View Trucks</a>
    <a href="FindManager.jsp" class="button">Find Manager</a>
    <form action="recentlyTrucks" method="post">
    <input type="submit" value="Recently installed Trucks" class="button">
  </form>
    
    <div class="form-container">
      <form action="viewContactorr" method="post">
        <input type="submit" value="View Contactor Details" class="form-button">
      </form>
    </div>
  </div>
</body>
</html>
