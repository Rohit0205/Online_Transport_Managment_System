<%@page import="com.roh.transport.MangaerBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Manager Details</title>
<style>
    body {
        background-color: #121212;
        color: #FFFFFF;
        font-family: Arial, sans-serif;
         background-image: url('truck6.jpg'); /* Add your background image path */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    }
    h1, h3,h2 {
        text-align: center;
    }
    h2
    {
    color:orange;
    }
    .form-container {
        display: flex;
        justify-content: center;
        margin: 20px;
    }
    .form-section {
        width: 45%;
        margin: 10px;
    }
    input[type="text"], input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #333;
        border-radius: 5px;
        background-color: #222;
        color: #FFF;
    }
    input[type="submit"] {
        width: 30%;
        padding: 10px;
        margin: 20px auto;
        border: none;
        border-radius: 5px;
        background-color: blue;
        color: #FFF;
        display: block;
    }
     input[type="submit"]:hover {
        background: orange;
    }
    form {
        width: 60%;
        margin: auto;
        border: 2px orange solid;
    }
    .h3{
    color:blue;
    
    }
</style>
</head>

<body>

<% MangaerBean mb = (MangaerBean) request.getAttribute("mb"); %>
<iframe src="infoupdatManager.jsp" style="width: 100%; height: 500px; border: none;"></iframe>
<h2>Update Details of  Manager <%= mb.getUsername()%> Which You wants</h2>
<h3>Update Manager Details As per Requirements</h3>




<form action="updateManger" method="post">
    
    <h3 class="h3" >All about Following Details of Manager <%= mb.getUsername() %></h3>

    <div class="form-container">
        <div class="form-section">
            Update ID:<input type="text" name="id" value="<%= mb.getId() %>"><br><br>
            Update Branch:<input type="text" name="branch" value="<%= mb.getBranch() %>"><br><br>
            Update Name:<input type="text" name="name" value="<%= mb.getUsername() %>"><br><br>
        </div>
        <div class="form-section">
            Update password:<input type="password" name="pass" value="<%= mb.getPassword() %>"><br><br>
            Re-Enter password:<input type="password" name="repass"><br><br>
            Update Salary:<input type="text" name="salary" value="<%= mb.getSalary() %>"><br><br>
        </div>
    </div>
    <input type="submit" value="Update">
</form>

<!-- Including the external JSP page in an iframe -->



</body>
</html>
