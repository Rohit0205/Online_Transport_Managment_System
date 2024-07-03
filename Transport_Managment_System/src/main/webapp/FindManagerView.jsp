



<%@page import="com.roh.transport.MangaerBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Details</title>
<style>
body {
	background-image: url('truck6.jpg');
	/* Add your background image path */
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

.container {
	width: 50%;
	margin: 20px auto;
	margin-top: 0px;
}
table
{
width: 50%;
border-collapse: collapse;
	margin: 20px auto; /* Center the table */
	background-color: gray;
}

table,  td {
	border: 1px solid black;
	color:white;
	text-decoration: bold;
}
th
{
border: 1px solid black;
	color:black;
	text-decoration: bold;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

h1, h2 {
	text-align: center; /* Center the headings */
	background-color: orange;
}
</style>
</head>

<body>
	<%
	List<MangaerBean> list = (List<MangaerBean>) request.getAttribute("al");
	%>

	<%
	if (list != null && !list.isEmpty()) {
	%>
	
	<div class="container">
	<h1>Following Manger Available in Your Branch</h1>
		<table>
		
		
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (MangaerBean mb : list) {
			%>
			<tr>
				<td><a href="myservlet?id=<%=mb.getId()%>" ><%=mb.getId()%></a></td>
				<td><%=mb.getUsername()%></td>
				<td><%=mb.getSalary()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	</div>
	<%
	} else {
	%>
	<h2>We don't have any manager of this name</h2>
	
	<%
	}
	%>
    __________________________________________________________________________________________________________
</body>
</html>
