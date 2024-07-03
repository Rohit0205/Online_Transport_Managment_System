<%@ page import="java.util.ArrayList" %>

<%@page import="com.roh.transport.TruckBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Truck Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    .container {
        width: 80%;
        margin: auto;
        overflow: hidden;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        margin: 20px 0;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-right: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    th:last-child, td:last-child {
        border-right: none; /* Remove right border from last cell in each row */
    }
    a.button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        color: #fff;
        background-color: #007BFF;
        text-decoration: none;
        border-radius: 5px;
        text-align: center;
        margin-top: 20px;
        display: block;
        width: 200px;
        margin-left: auto;
        margin-right: auto;
    }
    a.button:hover {
        background-color: #0056b3;
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
       <%  ArrayList<TruckBean> al = (ArrayList<TruckBean>) request.getAttribute("al"); %>
       
       <% if (al != null && !al.isEmpty()) { %>
           <h2>Trucks Coming to Your Branch</h2>
           <table>
               <tr>
                   <th>Model</th>
                   <th>Truck No</th>
                   <th>Owner</th>
                   <th>Status</th>
                   <th>From</th>
               </tr>
               <% for (TruckBean tb : al) { %>
               <tr>
                   <td><%= tb.getModel() %></td>
                   <td><%= tb.getTruckno() %></td>
                   <td><%=tb.getOwner() %>
                   <td><%= tb.getStatus() %></td>
                   <td><%= tb.getStratpoint() %></td>
               </tr>
               <% } %>
           </table>
       <% } else { %>
           <h2>No Trucks Coming to Your Branch</h2>
       <% } %>
       
       <button class="button" onclick="goBack()">Go Back</button>
    </div>
</body>
</html>
