<%@page import="com.roh.transport.ServiceBean"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Services</title>
<style>
    body {
        background-color: #121212;
        color: #ffffff;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    h2 {
        margin-top: 20px;
        color: #ffcc00;
    }
    table {
        margin-top: 20px;
        border-collapse: collapse;
        width: 80%;
        background-color: #1e1e1e;
    }
    th, td {
        border: 1px solid #444444;
        text-align: left;
        padding: 10px;
    }
    th {
        background-color: #333333;
    }
    tr:nth-child(even) {
        background-color: #2a2a2a;
    }
</style>
<script>
    function goBack() {
        window.history.back();
    }
</script>
</head>
<body>
  
  <% List<ServiceBean> list=(List<ServiceBean>)request.getAttribute("al"); %>
  
  <% if (list != null && !list.isEmpty()) { %>
      <h2>Following Services Available For Your Route</h2>
      <table>
          <thead>
              <tr>
                  <th>Model</th>
                  <th>Truck No</th>
                  <th>From</th>
                  <th>To</th>
                  <th>Status</th>
                  <th>Contact</th>
              </tr>
          </thead>
          <tbody>
              <% for (ServiceBean tb : list) { %>
              <tr>
                  <td><%= tb.getModel() %></td>
                  <td><%= tb.getTruckno() %></td>
                  <td><%= tb.getStratpoint() %></td>
                  <td><%= tb.getEndpoint() %></td>
                  <td><%= tb.getStatus() %></td>
                  <td><%= tb.getPhone() %></td>
              </tr>
              <% } %>
          </tbody>
      </table>
  <% } else { %>
      <h2>Sorry...! We Don't Have Any Service For Your Route</h2>
  <% } %>
  <bR>
          <button class="button" onclick="goBack()" >Go Back</button>
  

</body>
</html>
