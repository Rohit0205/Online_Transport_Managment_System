<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Installed Truck</title>
  <style>
    .container {
      width: 500px; /* Adjust as needed */
      margin: 0 auto; /* Center the container horizontally */
      border:2px solid black;
    }
    body {
      background-color: black;
      color: #fff;
      font-family: Arial, sans-serif;
      padding: 20px; /* Add some padding for spacing */
      box-shadow: 0 0 20px black(0,0,0,0.4); /* Add shadow border */
       background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
      
    }
    h1 {
      color: orange;
      background-color: #333;
      text-align: center;
      border: 2px gray solid;
      margin-bottom: 10px; /* Reduced bottom margin */
      padding: 5px; /* Reduced padding */
    }
    form {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      max-width: 500px;
      margin: 0 auto;
    }
    .form-group {
      flex: 1 1 calc(50% - 10px); /* Flex property to take 50% width minus margin */
      display: flex;
      flex-direction: column;
      margin-bottom: 10px; /* Reduced margin-bottom */
    }
    .form-group.full-width {
      flex: 1 1 100%;
    }
    input[type="text"],
    input[type="number"],
    input[type="date"],
    input[type="submit"],
    input[type="reset"],
    input[type="radio"],
    textarea {
      width: 80%; /* Decreased width */
      padding: 5px; /* Reduced padding */
      margin: 3px 0; /* Reduced margin */
      border: none;
      border-radius: 5px;
      background-color: #444;
      color: #fff;
    }
    input[type="submit"],
    input[type="reset"] {
      background-color: #007bff;
      cursor: pointer;
      width: 48%; /* Adjust width for submit and reset buttons */
      padding: 5px; /* Reduced padding */
      margin: 3px 1%; /* Reduced margin */
    }
    input[type="radio"] {
      margin-right: 5px;
    }
    label {
      display: block;
      margin-bottom: 3px; /* Reduced margin-bottom */
    }
    .radio-group {
      display: flex;
      align-items: center;
      margin-top: 5px; /* Reduced margin-top */
    }
    .radio-group label {
      margin-right: 10px;
    }
  </style>
</head>
<jsp:include page="adminview.jsp" />
<body>

<div class="container">
  <h1>Installed Truck</h1> 
  <form action="installedTruck" method="post">
    <div class="form-group">
      <label for="model">Model:</label>
      <input type="text" id="model" name="model">
    </div>
    <div class="form-group">
      <label for="truckno">Truck Number:</label>
      <input type="text" id="truckno" name="truckno">
    </div>
    <div class="form-group">
      <label for="owner">Owner:</label>
      <input type="text" id="owner" name="owner">
    </div>
    <div class="form-group">
      <label for="spoint">Starting Point:</label>
      <input type="text" id="spoint" name="spoint">
    </div>
    <div class="form-group">
      <label for="epoint">Ending Point:</label>
      <input type="text" id="epoint" name="epoint">
    </div>
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="number" id="phone" name="phone">
    </div>
    <div class="form-group">
      <label for="status">Status:</label>
      <input type="text" id="status" name="status">
    </div>
    <div class="form-group">
      <label for="date">Date of Join:</label>
      <input type="date" id="date" name="date">
    </div>
    <div class="form-group full-width">
      <label>Insured:</label>
      <div class="radio-group">
        <label>Yes</label>
        <input type="radio" name="yes" value="yes">
        <label>No</label>
        <input type="radio" name="no" value="no">
      </div>
    </div>
    <div class="form-group full-width">
      <label for="insurance">Insurance Company Name:</label>
      <input type="text" id="insurance" name="insurance">
    </div>
    <div class="form-group full-width">
      <input type="submit" value="Add Truck">
      <input type="reset" value="Clear">
    </div>
  </form>
</div>

</body>
</html>
