package com.roh.transport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AdminDAO {

	public static AdminBean adminLogin(String uname,String password)
	{
		AdminBean ab=null;
		
		try
		{
			Connection con= DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from transport_admin where  aname=? and password=?");
			
			
			pstmt.setString(1,uname);
			pstmt.setString(2, password);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				ab=new AdminBean();
				ab.setUname(rs.getString(""));;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
			
		
		return ab;
	}
	
	
	
	
}
