package com.roh.transport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ServiceDAO {

	public static ArrayList<ServiceBean> checkService(String from,String to)
	{
		ArrayList<ServiceBean> al=new ArrayList<ServiceBean>();
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from transport_truck where stratpoint=? and endpoint=?");
			
			pstmt.setString(1, from);
			pstmt.setString(2, to);
			
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				ServiceBean tb=new ServiceBean();
				
				tb.setModel(rs.getString("model"));
				 tb.setTruckno(rs.getString("truckno"));
				 tb.setOwner(rs.getString("owner"));
				 tb.setStratpoint(rs.getString("stratpoint"));
				 tb.setEndpoint(rs.getString("endpoint"));
				 tb.setPhone(rs.getLong("phone"));
				 tb.setInsurance(rs.getString("insurance"));
				 tb.setStatus(rs.getString("status"));
				 tb.setDate(rs.getString("dateofjoin"));
				 
				 al.add(tb);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
				
		
		return al;
	}
}
