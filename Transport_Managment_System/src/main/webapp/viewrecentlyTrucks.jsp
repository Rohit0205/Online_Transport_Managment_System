<%@page import="java.util.ArrayList"%>
<%@page import="com.roh.transport.TruckBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Truck Information</title>
<style>
    body {
        background-color: #121212;
        color: #ffffff;
        font-family: Arial, sans-serif;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    h1 {
        text-align: center;
        color: #ffa500;
    }
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        border: 1px solid #ffffff;
    }
    th, td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ffffff;
    }
    th {
        background-color: #333333;
    }
    tr:nth-child(even) {
        background-color: #444444;
    }
    tr:hover {
        background-color: #555555;
    }
    
</style>
<script>
    function goBack() {
        window.history.back();
    }
</script>
</head>
<body>
<% ArrayList<TruckBean> al= (ArrayList<TruckBean>)request.getAttribute("al"); %>

<% if(al != null && !al.isEmpty()) { %>
    <h1>Recently Installed Trucks</h1>
    <table>
        <thead>
            <tr>
                <th>Model</th>
                <th>Truck No</th>
                <th>Owner</th>
                <th>From</th>
                <th>To</th>
                <th>Insurance</th>
                <th>Status</th>
                <th>Join Date</th>
            </tr>
        </thead>
        <tbody>
        <% for(TruckBean tb : al) { %>
            <tr>
                <td><%= tb.getModel() %></td>
                <td><%= tb.getTruckno() %></td>
                <td><%= tb.getOwner() %></td>
                <td><%= tb.getStratpoint() %></td>
                <td><%= tb.getEndpoint() %></td>
                <td><%=tb.getInsurance() %>
                <td><%= tb.getStatus() %></td>
                <td><%= tb.getDate() %></td>
            </tr>
        <% } %>
        </tbody>
    </table>
<% } else { %>
    <h1>No Trucks Available Here</h1>
<% } %><br><br>
<button class="button" onclick="goBack()" >Go Back</button>
</body>
</html>
