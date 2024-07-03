<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transport Management</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    color: white; /* Adjust color as needed for visibility */
  }
  .overlay {
    background: rgba(0, 0, 0, 0.5); /* Semi-transparent black overlay */
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .content {
    width: 60%; /* Adjust width as needed */
    margin: auto;
    margin-top: 0px;
  }
  h1 {
    text-align: center;
    color: Orange;
    text-shadow: 2px 3px 3px black;
     background: rgba(128, 128, 128, 0.8);
     font-style: serif;
     font-family: Georgia, serif;
  font-style: italic;
  text-transform: uppercase;
      
  }
  .logo {
    width: 20%; /* Adjust the logo size relative to the heading */
    max-width: 350px; /* Maximum width for the logo */
    margin: 0 auto 20px; /* Center the logo and add some bottom margin */
    display: flex; /* Make sure the logo is a block element */
    margin-top: 20px;
  }
  .navigation-container {
    text-align: center;
    margin: 20px auto;
    padding: 20px;
    background: rgba(0, 0, 0, 0.4); /* Semi-transparent gray background */
    border-radius: 10px;
  }
  .navigation {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin-bottom: 20px;
  }
  .navigation a, .navigation input[type="submit"] {
    text-decoration: none;
    background-color: gray; 
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    display: inline-block;
    font-size: 16px;
    margin: 10px;
    cursor: pointer;
    border-radius: 5px;
  }
  .navigation a:hover, .navigation input[type="submit"]:hover {
    background-color: orange;
  }
  .login-section {
  display: flex;
  flex-direction: row; /* Display buttons in a row */
  justify-content: center; /* Center items horizontally */
  align-items: center;
  margin-top: 20px; /* Add some top margin for separation */
}

.login-section a,
.login-section input[type="submit"] {
  text-decoration: none;
  background-color: gray;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  margin: 10px;
  cursor: pointer;
  border-radius: 5px;
}

.login-section a:hover,
.login-section input[type="submit"]:hover {
  background-color: orange;
}

</style>
</head>
<body>

<div class="overlay">
  <div class="content">
    <img src="logo2.jpg" alt="Logo" class="logo">
    <h1>Sahyadri Transport Services</h1>

    <div class="navigation-container">
      <div class="navigation">
        <form action="status23" method="post">
          <input type="submit" value="Status">
        </form>
        <form action="recentlyTrucks" method="post">
          <input type="submit" value="Recently installed Trucks">
        </form>
        <a href="towardsHere.jsp">Towards Here</a>
        <a href="checkServices.html">Services</a>
        <a href="QueryContact.jsp">Contact us</a>
      </div>

      <div class="login-section">
        <a href="customerlogin.jsp">Customer Login</a>
        <a href="adminlogin.jsp">Login As Admin</a>
        <a href="managerLogin.jsp">Login As Manager</a>
      </div>
    </div>
  </div>
</div>

</body>
</html>
