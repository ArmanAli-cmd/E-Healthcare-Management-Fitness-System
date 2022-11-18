package com.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DbConnect {
	public static Connection takeConnection()
	{
		Connection con = null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String user="root";
			String pass="Arman@786";
			String path="jdbc:mysql://localhost:3306/healthcare";
			
			con = DriverManager.getConnection(path,user,pass);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
	public static boolean checkLogin(String username, String password)
	{
		boolean status= false;
		try
		{
			Connection con = DbConnect.takeConnection();
			String query = "select * from admin where username=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				status =true;
				break;
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static boolean doctorLogin(String email, String password)
	{
		boolean status= false;
		try
		{
			Connection con = DbConnect.takeConnection();
			String query = "select * from doctor where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				status =true;
				break;
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static boolean patientLogin(String email, String password)
	{
		boolean status= false;
		try
		{
			Connection con = DbConnect.takeConnection();
			String query = "select * from patient where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				status =true;
				break;
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}