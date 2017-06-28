<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
<h2>Hello World!</h2>
<form id="regForm" modelAttribute="user" action="registerProcess"  method="post">
  <div class="container">
  <center>
  <table>
  <tr>
  <td>
  <label><b>Student Name : </b></label></td>
  <td>
    <input type="text" placeholder="Enter Student Name" name="Studentname" id="name" required>
    </td></tr>

<tr><td>
<label><b>Roll no: </b></label></td>
<td>
    <input type="text" placeholder="Enter Roll no" name="Rollno" id="Rollno" required>
   </td> </tr>

<tr><td>
    <label><b>Email : </b></label></td>
    <td>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>
    </td> </tr>

<tr><td>
    <label><b>Mobile No. : </b></label></td>
    <td>
    <input type="text" placeholder="Enter Mobile number" name="mobile" id="mobile" required>
    </td> </tr>

<tr><td>
    <label><b>City : </b></label>
    </td>
    <td>
    <input type="text" placeholder="Enter City" name="city" id="city" required>
    </td> </tr>
    </table>
    
    <br>
    <label>-------------- OR --------------</label>
    <br>
    <br>
   
    <br>
    <br>
    <button id="register" name="register">Register</button>
    
   
  
    </center>
  </div>
</form>
</body>
</html>