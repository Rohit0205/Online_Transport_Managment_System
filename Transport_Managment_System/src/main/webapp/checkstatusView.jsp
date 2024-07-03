<%@ page import="com.roh.transport.TruckBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Truck Status</title>
<style>
    body {
        background-color: #121212;
        color: #E0E0E0;
        font-family: Arial, sans-serif;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    h2 {
        color: orange;
    }
    table {
        width: 80%;
        margin: 50px auto;
        border-collapse: collapse;
        background-color: #333333;
    }
    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #444444;
    }
    th {
        background-color: #444444;
    }
    tr:hover {
        background-color: #555555;
    }
    .container {
        text-align: center;
    }
    .button {
        display: inline-block;
        padding: 10px 20px;
        margin: 20px 0;
        background-color: blue;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .button:hover {
        background-color: orange;
    }
</style>
</head>
<body>
    <div class="container">
        <%
            TruckBean tb = (TruckBean) request.getAttribute("tb");
            if (tb != null) {
        %>
            <h2>Your Truck Status</h2>
            <table>
                <tr>
                   
                    <th>Model</th>
                     <th>Truck No</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Status</th>
                </tr>
                <tr>
                    
                    <td><%= tb.getModel() %></td>
                    <td><%= tb.getTruckno() %></td>
                    <td><%= tb.getStratpoint() %></td>
                    <td><%= tb.getEndpoint() %></td>
                    <td><%= tb.getStatus() %></td>
                </tr>
            </table>
        <%
            } else {
        %>
            <h2>No truck available of this number</h2>
        <%
            }
        %>
        <a href="welcome.jsp" class="button">Back To Home</a>
    </div>
</body>
</html>
