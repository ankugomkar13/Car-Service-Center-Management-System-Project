<%@page import="java.util.ArrayList"%>
<%@page import="main.java.com.model.State"%>
<%@page import="main.java.com.model.City"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			background: linear-gradient(rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.2)) ,url('https://wp.technologyreview.com/wp-content/uploads/2020/02/screen-shot-2020-02-18-at-3.41.19-pm-2.png');
		}
		h1 {
			color: #333;
			text-align: center;
		}
		form {
			background-color: #fff;
			border: 2px solid #ccc;
			border-radius: 5px;
			padding: 20px;
			margin: auto;
			max-width: 500px;
		}
		input[type="text"], input[type="email"], input[type="password"] {
			width: 100%;
			padding: 12px;
			margin: 8px 0;
			box-sizing: border-box;
			border: none;
			border-radius: 4px;
			background-color: #f2f2f2;
		}
		input[type="reset"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			float: right;
			margin : 4px;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			float: right;
			margin : 4px;
		}
		input[type="submit"]:hover {
			background-color: #45a049;
		}
		input[type="reset"]:hover {
			background-color: #45a049;
		}
</style>
<% ArrayList<State> statelist = (ArrayList<State>) request.getAttribute("statelist");
	ArrayList<City> citylist = (ArrayList<City>) request.getAttribute("citylist"); %>
<body>
	<h1>Registration Form</h1>
	<form action="register">
		<label for="name">Name :</label>
		<input type="text" id="name" name="name"  placeholder="Enter your full name">
		
		
		<label for="name">Address :</label>
		<input type="text" id="name" name="address"  placeholder="Enter your address">
		
		<label for="state"> State :</label>
		<select name="stateid" >
						<option value="0">select state</option>
						<% for(State state : statelist ) { %>
						<option value = "<%out.print(state.getId()); %>"> <% out.print(state.getStatename());%>
						<%} %>
					</select><br><br>
					
		<label for="city"> City  :</label>
		<select name="cityid" >
						<option value="0"> Select City</option>
						<% for(City city :citylist ) { %>
						<option value ="<%out.print(city.getId()); %>"> <%out.print(city.getcityName());%>
						<%} %>
					</select><br><br>
					
		<label for="contact">Contact:</label>
		<input type="text" id="contact" name="contact" placeholder="Enter your contact"><br>

		<label for="email">Email Address:</label>
		<input type="email" id="email" name="email" placeholder="Enter your email address"><br>
		
		<label for="dob">Date Of Birth :</label>
		<input type="date" id="dob" name="dob"><br><br>
		
		<label for="gender">Gender:</label>
			Male<input type="radio" name="gender" value="male">
			Female <input type="radio" name="gender" value="female"><br><br>
		
		<label for="vehicle">Vehicle Name:</label>
		<input type="text" id="vehicle" name="vehiclename" placeholder="Enter your vehile model name"><br>
		
		<label for="userid">User Id:</label>
		<input type="text" id="userid" name="userid" placeholder="Enter your User id"><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" placeholder="Enter your password"><br>

		<label for="admin">Isadmin:</label>
		<input type="text" name="isadmin" placeholder="if you admin then enter 1 otherwise 0  required="required">

		<input type="reset" value="Reset">
		<input type="submit" value="Submit">
	</form>	
</body>
</html>