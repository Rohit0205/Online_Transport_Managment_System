


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
 background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
}
h1{
color:white;
}

</style>
</head>
<body bgcolor="red">


<% 
  String truckno= request.getParameter("id");
   System.out.println(truckno);
%>

 

<form action="newstatus" method="post">
<input type="hidden" name="tno" value=<%= truckno %> >
<h1>Enter New Status<input type="text" name="status"></h1>
<input type="submit" value="change">
</form>


</body>
</html>
