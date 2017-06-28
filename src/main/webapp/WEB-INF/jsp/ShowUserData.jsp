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
	<center>
		<table border="2">
		<tr>
				<td>Student Name</td>
				<td>Roll no</td>
				<td>Email</td>
				<td>Mobile Number</td>
				<td>City</td>
				<td>Update</td>
				<td>Delete</td>
				
			</tr>
			<tr>
			
				<%
					if (request.getAttribute("Data") != null) {

						HashMap<Integer, UserModel> hs = (HashMap<Integer, UserModel>) request.getAttribute("Data");
						System.out.println(hs);
						for (HashMap.Entry<Integer, UserModel> entrySet : hs.entrySet()) {

							UserModel temp = entrySet.getValue();
							System.out.println(temp);
							String user = temp.getStudentname();
				%>
			<tr>
				<td><%=temp.getStudentname()%></td>
				<td><%=temp.getRollno()%></td>
				<td><%=temp.getEmail()%></td>
				<td><%=temp.getMobile()%></td>
				<td><%=temp.getCity()%></td>

				<td><form action="update/<%=temp.getMobile()%>"
						method="get">
						<input type="submit" value="Update">
					</form></td>

				<td><form action="delete/<%=temp.getMobile()%>"
						method="get">
						<input type="submit" value="Delete">
					</form></td>
						</tr>
			<%
				}

				}
			%>
		</table>
		<br>
		<br>
		<a href="index">Create new User</a>
	</center>
</body>
</html>