<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="main.java.com.model.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

	/*
  You can easily make changes in the CSS with the variables below.

  All variables are done in HSL(hue saturation light / opacity):
  - hue:        0 to 360;
  - saturation: 0 to 100 (%);
  - light:      0 to 100 (%);
  - / opacity:  0.00 to 1 (1 by default)
*/

:root {
  --text-color: hsl(0 0% 100%);
  
  --table-background-hue: 255;
  --table-background-saturation: 20%;
  --table-background-light: 20%;
  
  --th-opacity: 0.5;
  --th-2n: 0.15;
}

html {
  color-scheme: dark;
}

body {
  color: var(--text-color);
  font-size: 1.125rem;
  font-family: system-ui;
  line-height: 1.5;
}



/* All the code below is for "Sources" and "Testing" sections. They're not necessary to make the table itself.*/
h1 {
  color: #fafafa;  
}

section {
  margin-bottom: 2rem;
  color: #fafafa;
}
section h3 {
  line-height: 2rem;
}

span.code-css {
  background-color: hsl(210 100% 50%);
  color: hsl(0 0% 100%);
  padding: 0.25rem 0.5rem;
  border-radius: 0.5rem;
}
span.code {
  background-color: hsl(0 0% 0% / 0.25);
  font-style: italic;
  color: hsl(0 0% 80%);
  padding: 0.25rem 0.5rem;
  border-radius: 0.5rem;
}

a:link, a:visited {
  background-color: transparent;
  color: hsl(120 100% 50%);
  text-decoration: none;
  border-radius: .25rem;
  line-height: 2rem;
  transition: .3s;
}
a:hover, a:active {
  color: hsl(120 100% 0%);
  background-color: hsl(120 100% 50%);
  padding: 0.25rem 0.5rem;
}
/* ------------------------------------ */





.wrapper {
  width: min(900px, 100% - 3rem);
  margin-inline: auto;
}

table {
  width: 100%;
  background: hsl(var(--table-background-hue) var(--table-background-saturation) var(--table-background-light));
  border-collapse: collapse;
}

caption, 
th, 
td {
  padding: 1rem;
}

caption,
th {
  text-align: left;
}

caption {
  background: hsl(0 0% 0%);
  font-size: 1.5rem;
  font-weight: 700;
  text-transform: uppercase;
}

th {
  background: hsl(0 0% 0% / var(--th-opacity));
}

tr:nth-of-type(2n) {
  background: hsl(0 0% 0% / var(--th-2n));
}



@media (max-width: 650px) {
  th {
    display: none;
  }
  
  td {
    display: grid;
    gap: 0.5rem;
    grid-template-columns: 18ch auto;
    padding: 0.5rem 1rem;
  }  
  
  td:first-child {
    padding-top: 2rem;
  }
  td:last-child {
    padding-bottom: 2rem;
  }
  td::before {
    content: attr(data-cell) ": ";
    font-weight: 700;
    text-transform: capitalize;
  }
}
</style>
</head>
<% 
ArrayList<User> userlist = (ArrayList<User>) request.getAttribute("userlist");
%>
<body>
	<main>
  <div class="wrapper">
    <h1>Customer Detail Tables</h1>
    
    <section>
      <h3>UserDetails:</h3>
    </section>
   	<table>
      <caption>
        All Login Customer Information
      </caption>
      <thead>
      <tr>
        <th>sr no.</th>
        <th>Customer Name</th>
         <th>Address</th>
        <th>Contact No.</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Registration Date</th>
        <th>Update</th>
		<th>Delete</th>
      </tr>
	</thead>
	<tbody>
			<%  for(User user : userlist) { %>
			<tr>
				<td><% out.print(user.getId()); %> </td>
				<td><% out.print(user.getName()); %> </td>
				<td><% out.print(user.getAddress()); %> </td>
				<td><% out.print(user.getContact()); %> </td>
				<td><% out.print(user.getEmail()); %> </td>
				<td><% out.print(user.getGender()); %> </td>
				<td><% out.print(user.getReg_date()); %> </td>
				<td><a href = "fetchuser?id=<%=user.getId()%>" >edit</a></td>
				<td>Delete</td>
			</tr>
		<% } %>
		</tbody>
    </table>
  </div>
</main>
</body>
</html>