 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.Connection , java.sql.DriverManager, java.sql.*,  java.sql.ResultSet"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="update" method="post"> 
<h3>
UPDATE EMPLOEE DETAILS
</h3>
	<%
try
{
 
	
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/tibil";
String u="root";
String p="tibil4127";
String query="select * from user where id=?";
Connection con=DriverManager.getConnection(url,u,p);
PreparedStatement stmt=con.prepareStatement(query);
stmt.setString(1, request.getParameter("id"));
ResultSet rs=stmt.executeQuery();
while(rs.next())
{
%>

<table border="3">
<tr>

 	<td>TIBIL ID</td>
 	<td><input type="hidden" value='<%=rs.getInt("id") %>' name="id-txt" id="id-txt"></td>
</tr>
<tr>
 	<td>First Name</td>
 	<td><input class="form-control" type="text" name="fname-txt" id="fname-txt" placeholder="First name" required="required" value='<%=rs.getString("fname") %>'>	</td>
</tr>
<tr>
	<td>Gender</td>
	<td><input type="text" name="radio" id="radio1" value= '<%=rs.getString("gender") %>'></td>
</tr>
<tr>
	<td>Department</td>
	<td>
	<select id="select-txt" class="required" name="select" style="margin-left:-1px;padding-right:85px;">
             	  	    		      <option value="select" disabled="disabled">Select</option>
             	  	    		      <option value="Development">Development</option>
             	  	    		      <option value="Analytics">Analytics</option>
             	  	    		      <option value="Admin">Admin</option>
             	  	    		      <option value="HR">HR</option>
             	  	    		      <option value="Finance">Finance</option>
             	  	    	     </select>
</td>
</tr>
<tr>
	<td>email</td>
	<td><input class="form-control" type="text" name="email-txt" id="email-txt"   placeholder="Email" required="required" value='<%=rs.getString("email") %>'></td>
</tr>
<tr>
	<td>phone</td>
	<td><input class="form-control" type="text" name="phone-txt" id="phone-txt"   placeholder="Phone" required="required" value='<%=rs.getString("phone") %>'></td>
</tr>
<%
}
%>
 	
</table><br>
<input type="submit" value="Update" >
<%
    rs.close();
    stmt.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }

%>
</form>
</body>
</html>