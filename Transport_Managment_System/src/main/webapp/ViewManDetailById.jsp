
<%@ page import="com.roh.transport.MangaerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Details</title>
<style>
    body {
        background: rgba(0, 0, 0, 0.5);
        color: white;
        font-family: Arial, sans-serif;
          background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    table {
        width: 50%;
        margin: auto;
        border-collapse: collapse;
        background: rgba(255, 255, 255, 0.1);
    }
    th, td {
        padding: 10px;
        border: 1px solid white;
        text-align: left;
    }
    th {
        background: rgba(0, 0, 0, 0.7);
    }
    td {
        background: rgba(0, 0, 0, 0.5);
    }
    h2 {
        text-align: center;
        color:black;
    }
</style>
</head>
<body>
       
    <%
        MangaerBean mb = (MangaerBean) request.getAttribute("mb");
        if (mb != null) {
    %>
        <h2>Manager Full Details</h2>
        <table>
            <tr>
                <th>Id</th>
                <td><%= mb.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= mb.getUsername() %></td>
            </tr>
            <tr>
                <th>Branch</th>
                <td><%= mb.getBranch() %></td>
            </tr>
            <tr>
                <th>Salary</th>
                <td><%= mb.getSalary() %></td>
            </tr>
            <tr>
                <th>Date Of Join</th>
                <td><%= mb.getDateofjoin() %></td>
            </tr>
        </table>
    <%
        } else {
    %>
        <h2>No Any Manager Available Of This Id</h2>
        
    <%
        }
    %>
</body>
</html>
