package com.roh.transport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RecentlyTrucksDAO {

	public static ArrayList<TruckBean> recntlytrucks()
	{
		ArrayList<TruckBean> al=new ArrayList<TruckBean>();
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement(" select *from transport_truck order by dateofjoin desc");
			
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				TruckBean tb=new TruckBean();
				
				tb.setModel(rs.getString("model"));
				tb.setTruckno(rs.getString("truckno"));
				tb.setOwner(rs.getString("owner"));
				tb.setStratpoint(rs.getString("stratpoint"));
				tb.setEndpoint(rs.getString("endpoint"));
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
