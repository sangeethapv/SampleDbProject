package com.login.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.register.view.RegisterView;


public class RegisterService {

	public boolean register(RegisterView rv)
	
	{
		String url = "jdbc:mysql://localhost:3306/tibil";
		String u = "root";
		String p = "tibil4127";
		
		try
		{
			 
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,u,p);  
			PreparedStatement stmt=con.prepareStatement("insert into user "
					+ "(fname,lname,mname,gender,department,faname,moname,email,phone,address,hobby,flag) values "
					+ "(?,?,?,?,?,?,?,?,?,?,?,?)"); 
			 
			stmt.setString(1, rv.getFirstname());
			stmt.setString(2, rv.getLastname());
			stmt.setString(3, rv.getMiddlename());
			stmt.setString(4, rv.getGender());
		 
			stmt.setString(5, rv.getDepartment());
			stmt.setString(6, rv.getFathername());
			stmt.setString(7, rv.getMothername());
			stmt.setString(8, rv.getEmail());
			stmt.setLong(9, rv.getPhone());
			stmt.setString(10, rv.getAddress());
			stmt.setString(11, rv.getCheckbox());
			stmt.setString(12, "1");
		 
			int rs = stmt.executeUpdate();
			//if(rs.next())
			////{
				return true;
			//}

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return false;
	}
	
}
