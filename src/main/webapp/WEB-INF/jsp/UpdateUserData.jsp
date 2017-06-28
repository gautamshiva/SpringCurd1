<%@page import="java.util.*"%>
<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="updateForm" modelAttribute="update" action="saveUpdate" method="post">
		<div class="container">
			<center>

				<table>
					<%
						if (request.getAttribute("userValues") != null) {

							UserModel hs = (UserModel) request.getAttribute("userValues");
							System.out.println("values----------->>> : " + hs);
					%>
					<tr>
						<td><label><b>First Name : </b></label></td>
						<td><input type="text" placeholder="Enter Student Name"
							name="Studentname" id="Studentname" value="<%=hs.getStudentname()%>"
							required></td>
					</tr>


					<tr>
						<td><label><b>Roll no : </b></label></td>
						<td><input type="text" placeholder="Enter Roll no"
							name="Rollno" id="Rollno" value="<%=hs.getRollno()%>"
							required></td>
					</tr>

					<tr>
						<td><label><b>Email : </b></label></td>
						<td><input type="text" placeholder="Enter Email" name="email"
							id="email" value="<%=hs.getEmail()%>" required></td>
					</tr>
					<tr>
						<td><label><b>Mobile No. : </b></label></td>
						<td><input type="text" placeholder="Enter Mobile number"
							name="mobile" id="mobile" readonly="readonly" value="<%=hs.getMobile()%>"  required></td>
					</tr>
					<tr>
						<td><label><b>City : </b></label></td>
						<td><input type="text" placeholder="Enter City" name="city"
							id="city" value="<%=hs.getCity()%>" required></td>
					</tr>
					<%
						}
					%>
				</table>

				<br> <br>
				<button id="register" name="saveUpdate">Update</button>
				
				<br>
				<br>
				<a href="../ShowUserData">Go Back</a>
				<a href="../index">Create new user</a>
				</center>
</body>
</html>