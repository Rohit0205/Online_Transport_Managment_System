<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Login</title>
<style>
body {
	background-color: #000;
	color: #fff;
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url('truck6.jpg');
	/* Add your background image path */
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

h1 {
	color: orange;
	text-align: center;
}

.form-container {
	background-color: #333;
	padding: 20px;
	border-radius: 10px;
	width: 300px;
}

form {
	margin: 0 auto;
}

input[type="text"], input[type="password"], select, input[type="submit"],
	input[type="reset"], a {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	display: inline-block;
	text-decoration: none;
	text-align: center;
	color: white;
}

input[type="submit"], input[type="reset"], a {
	background-color: blue;
}

input[type="submit"]:hover, input[type="reset"]:hover, a:hover {
	background-color: orange;
}

select {
	padding: 10px;
	margin: 8px 0;
	border: none;
	border-radius: 5px;
	background-color: #555;
	color: white;
}

select option {
	background-color: #333;
	color: white;
}

input[type="text"], input[type="password"] {
	background-color: #555;
	color: white;
}

input[type="text"]::placeholder, input[type="password"]::placeholder {
	color: #ccc;
}
</style>
</head>
<body>
	<div class="form-container">
		<h1>Manager Login</h1>
		<form action="loginManager" method="post">
			<select name="branch">
				<option value="select Branch">Select Branch</option>
				<option value="Pune">Pune</option>
				<option value="Mumbai">Mumbai</option>
				<option value="New Mumbai">New Mumbai</option>
				<option value="Kalyan">Kalyan</option>
				<option value="Bhivandi">Bhivandi</option>
				<option value="Nashik">Nashik</option>
				<option value="Nagpur">Nagpur</option>
				<option value="Amaravti">Amaravti</option>
				<option value="Jalgaon">Jalgaon</option>
				<option value="Hyderabad">Hyderabad</option>
				<option value="Banglore">Banglore</option>
				<option value="Channai">Channai</option>
				<option value="Delhi">Delhi</option>
				<option value="Jaipur">Jaipur</option>
				<option value="Punjab">Punjab</option>
				<option value="Kolakata">Kolakata</option>
				<option value="Kerla">Kerla</option>
				<option value="UttraKhand">UttraKhand</option>
				<option value="Assam">Assam</option>
				<option value="Rajkot">Rajkot</option>
				<option value="Ahembdabad">Ahembdabad</option>
				<option value="Haryana">Haryana</option>
				<option value="Kshmir">Kshmir</option>
				<option value="ShreeNager">ShreeNager</option>
				<option value="Patana">Patana</option>
				
			</select><br> UserName: <input type="text" name="uname"
				placeholder="Enter Username"><br> Password: <input
				type="password" name="pass" placeholder="Enter Password"><br>
			<input type="submit" value="Login"> <a href="welcome.jsp">Back
				to Home</a>
		</form>
	</div>
</body>
</html>
