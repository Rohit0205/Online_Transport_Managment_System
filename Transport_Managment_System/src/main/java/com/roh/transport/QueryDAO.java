package com.roh.transport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class QueryDAO {

	public static int customerQuery(String name,String emial,long phone,String msg)
	{
		int i=0;
		
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("insert into contact_viewer values(?,?,?,?)");
			
			pstmt.setString(1, name);
			pstmt.setString(2, emial);
			pstmt.setLong(3, phone);
			pstmt.setString(4, msg);
			
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
	
	public static ArrayList<ContactBean> viewContacterDetails()
	{
		ArrayList<ContactBean> al=new ArrayList<ContactBean>();
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from contact_viewer");
			
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
			{
			ContactBean	cb=new ContactBean();
				
				cb.setName(rs.getString("name"));
				cb.setEmail(rs.getString("email"));
				cb.setMobile(rs.getLong("phone"));
				cb.setMsg(rs.getString("message"));
				
				al.add(cb);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return al;
				
	}
}
