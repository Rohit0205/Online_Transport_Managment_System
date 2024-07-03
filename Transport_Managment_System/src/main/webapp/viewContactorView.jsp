<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Details</title>
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
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #1f1f1f;
    }
    th, td {
        border: 1px solid #333333;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #333333;
    }
    h2 {
        text-align: center;
        color: orange;
    }
    h1{
     text-align: center;
        color: Orange;
    }
</style>
</head>
<body>
<jsp:include page="adminview.jsp" />
<%@page import="com.roh.transport.ContactBean"%>

<% List<ContactBean> details = (List<ContactBean>)request.getAttribute("al"); %>
<%
if(details != null && !details.isEmpty()) {
%>

<h1>The All About Infomatioin Whos Tried to Query: </h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email-Id</th>
                <th>Phone No.</th>
                <th>Query</th>
            </tr>
        </thead>
        <tbody>
        
<%
    for(ContactBean cb : details) {
%>
            <tr>
                <td><%= cb.getName() %></td>
                <td><%= cb.getEmail() %></td>
                <td><%= cb.getMobile() %></td>
                <td><%= cb.getMsg() %></td>
            </tr>
<%
    }
%>
        </tbody>
    </table>
<%
} else {
%>
    <h2>There is no person who has tried to query</h2>
<%
}
%>   

</body>
</html>
