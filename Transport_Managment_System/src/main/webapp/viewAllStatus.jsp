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
    }
    th, td {
        border: 1px solid #ffffff;
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: #333333;
    }
    h2 {
        text-align: center;
        color: orange;
        margin-top: 50px;
    }
    #content {
        margin-top: 50px;
        text-align: center;
        color: orange;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function loadStatusPage(truckNo) {
        $.ajax({
            url: 'newStatus2.jsp',
            type: 'GET',
            data: { id: truckNo },
            success: function(response) {
                $('#content').html(response);
            },
            error: function() {
                alert('Error loading the status page.');
            }
        });
    }
</script>
</head>
<body>
    <%
        ArrayList<TruckBean> list = (ArrayList<TruckBean>) request.getAttribute("al");
        if (list != null) {
    %>
    <h2>Clicked Status link for Update Status</h2>
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
            <%
                for (TruckBean tb : list) {
            %>
            <tr>
                <td><%= tb.getModel() %></td>
                <td><%= tb.getTruckno() %></td>
                <td><%= tb.getStratpoint() %></td>
                <td><%= tb.getEndpoint() %></td>
                <td><a href="javascript:void(0);" onclick="loadStatusPage('<%= tb.getTruckno() %>');"><%= tb.getStatus() %></a></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <div id="content"></div>
    <%
        } else {
    %>
    <h2>No Trucks Available</h2>
    <%
        }
    %>
</body>
</html>
