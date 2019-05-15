<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ page import="java.sql.Connection , java.sql.DriverManager, java.sql.Statement,  java.sql.ResultSet"%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h3>EMPLOYEE DETAILS</h3>
 <hr>
 
 <table border="2">
 	<tr>
 	    <td><b>TIBIL ID</b></td>
 		<td><b>First Name</b></td>
 		<td><b>Gender</b></td>
 		<td><b>Department</b></td>
 		<td><b>Email</b></td>
 		<td><b>Phone</b></td>
 		 
 	</tr>
 	<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/tibil";
String u="root";
String p="tibil4127";
String query="select * from user where flag=1";
Connection con=DriverManager.getConnection(url,u,p);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
%>
 <tr>
    <td><%=rs.getInt("id") %>	</td>
 	<td><%=rs.getString("fname") %>	</td>
 	<td><%=rs.getString("gender") %></td>
 	<td><%=rs.getString("department") %></td>
 	<td><%=rs.getString("email") %></td>
 	<td><%=rs.getLong("phone") %></td>
 	<td><input type="button" onclick="location.href='edit.jsp?id=<%=rs.getInt("id") %>';" value="Edit" /></td>
 	 
    <td><input type="submit" onclick="location.href='delete.jsp?id=<%=rs.getInt("id") %>';" value="Delete" action="delete"/></td>
    
 </tr>
 <%  
}
%>
</table>

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

</body>
</html>