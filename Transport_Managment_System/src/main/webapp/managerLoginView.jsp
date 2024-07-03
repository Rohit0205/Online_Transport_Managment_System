
<%@page import="com.roh.transport.MangaerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ManagerLogged</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: black;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
     background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
  }
  .container {
    background: #fff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    border-radius: 10px;
    text-align: center;
    animation: fadeIn 1s ease-in-out;
  }
  h2, h4 {
    color: orange;
  }
  .button, .link-button {
    display: inline-block;
    margin: 10px 5px;
    padding: 10px 20px;
    background-color: gray;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.2s ease;
  }
  .button:hover, .link-button:hover {
    background-color: orange;
  }
  @keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
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
    <% MangaerBean mb = (MangaerBean) request.getAttribute("mb"); %>
    
    <% if (mb != null) { %>
      <h4>You Have Logged In Successfully!</h4>
      <form action="recentlyTrucks" method="post">
        <input type="submit" value="Recently Installed Trucks" class="button">
      </form>
      <a href="changeStatus.jsp" class="link-button">Change Truck Status</a>
      <a href="towards" class="link-button">Toward Truck To Your Branch</a>
      <a href="#" class="link-button">Service</a>
      <a href="#" class="link-button">Contact To Admin</a>
    <% } else { %>
      <h2>Invalid Username/Password</h2>
    <% } %>
    <button class="button" onclick="goBack()" class="link-button">Go Back</button>
  </div>

  
 
</body>
</html>
