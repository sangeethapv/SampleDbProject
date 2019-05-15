<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.Connection , java.sql.DriverManager, java.sql.*,  java.sql.ResultSet ,javax.swing.JFrame,
 javax.swing.JOptionPane"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try
{
 
	
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/tibil";
String u="root";
String p="tibil4127";
String query="update user set flag=0 where id=?";
Connection con=DriverManager.getConnection(url,u,p);
PreparedStatement stmt=con.prepareStatement(query);
stmt.setString(1, request.getParameter("id"));
int rs=stmt.executeUpdate();

 
	JFrame parent = new JFrame();

    JOptionPane.showMessageDialog(parent, "Successfully Deleted");
   
    
    
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