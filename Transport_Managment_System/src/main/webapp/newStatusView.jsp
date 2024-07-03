<%@page import="com.roh.transport.TruckDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.roh.transport.TruckBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Truck Status</title>
<style>
    body {
        background-color: #000000;
        color: #ffffff;
        font-family: Arial, sans-serif;
        background-image: url('truck6.jpg'); /* Add your background image path */
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
    }
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        margin-top: 50px;
        background-color: #ffffff; /* White background for the table */
        color: #000000; /* Black text color for better readability */
    }
    th, td {
        border: 1px solid #000000; /* Black border */
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: #333333;
        color: #ffffff; /* White text for header cells */
    }
    td.status {
        color: #0000ff; /* Blue color for status */
    }
    h2 {
        text-align: center;
        color: #ff0000;
        margin-top: 50px;
    }
    
     .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #333333;
        color: #ffffff;
        text-decoration: none;
        border-radius: 5px;
        border: 1px solid #ffffff;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    /* Hover effect */
    .button:hover {
        background-color: #ffffff;
        color: #333333;
    }
</style>
</head>
<body>

<div class="container">
<% ArrayList<TruckBean> al = TruckDAO.updatedStatus(); %>

<% if (al != null) { %>
    <table>
        <thead>
            <tr>
                <th>Model</th>
                <th>Truck No</th>
                <th>From</th>
                <th>To</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <% for (TruckBean tb : al) { %>
            <tr>
                <td><%= tb.getModel() %></td>
                <td><%= tb.getTruckno() %></td>
                <td><%= tb.getStratpoint() %></td>
                <td><%= tb.getEndpoint() %></td>
                <td class="status"><%= tb.getStatus() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
<% } else { %>
    <h2>No Trucks Available</h2>
<% } %>
</div><br><br>
<center>
    <a href="welcome.jsp" class="button">Back To Home</a>
</center>
</body>
</html>
