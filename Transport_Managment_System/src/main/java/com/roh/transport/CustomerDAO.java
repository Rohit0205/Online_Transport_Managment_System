package com.roh.transport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAO {

	public static int customerRegister(String cname,String fname,String lname,String password,String emial,Long phone)
	{ 
		int i=0;
		
		try
		{
			Connection con= DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("insert into transport_cust values(?,?,?,?,?,?)");
			
			pstmt.setString(1, cname);
			pstmt.setString(2, fname);
			pstmt.setString(3, lname);
			pstmt.setString(4, password);
			pstmt.setString(5, emial);
			pstmt.setLong(6, phone);
			
			i=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		if(i>0)
		{
			return 1;
		}
		
		else
		{
			return 0;
		}
		
		
		
	}
	
	public static CustomerBean custLogin(String name,String email,String password)
	{
		CustomerBean cb=null;
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from transport_cust where cname=? and email=? and password=? ");
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				cb=new CustomerBean();
				
				cb.setCname(rs.getString("cname"));
						
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cb;
	}
}
