<%@page import="com.roh.transport.TruckBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Truck Details</title>
<style>
    body {
        background-color: #000;
        color: #fff;
        font-family: Arial, sans-serif;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    table {
        width: 50%;
        border-collapse: collapse;
        margin: 50px auto;
    }
    th, td {
        border: 1px solid #fff;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #333;
    }
    tr:nth-child(even) {
        background-color: #555;
    }
    .head
    {
    text-align: center;
    color:orange;
    }
    h2
    {
      text-align: center;
      border: 2px solid white;
     width:200px;
      color:orange;
      width: auto; 
    }
</style>
</head>
<body>
    <% TruckBean tb=(TruckBean)request.getAttribute("tb"); %>
    <h2>Details of <%=tb.getModel() %> Are:  </h2>
    <table>
        <tr>
        
            <th colspan="2" class="head"><%=tb.getModel() %></th>
        </tr>
        <tr>
            <td>Truck Model</td>
            <td><%=tb.getModel() %></td>
        </tr>
        <tr>
            <td>Truck Number</td>
            <td><%=tb.getTruckno() %></td>
        </tr>
        <tr>
            <td>Owner</td>
            <td><%=tb.getOwner()%></td>
        </tr>
        <tr>
            <td>Phone No</td>
            <td><%=tb.getPhone() %></td>
        </tr>
        <tr>
            <td>Status</td>
            <td><%=tb.getStatus() %></td>
        </tr>
        <tr>
            <td>From</td>
            <td><%=tb.getStratpoint() %></td>
        </tr>
        <tr>
            <td>To</td>
            <td><%=tb.getEndpoint() %></td>
        </tr>
    </table>
</body>
</html>
