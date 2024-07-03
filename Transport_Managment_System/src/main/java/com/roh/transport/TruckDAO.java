package com.roh.transport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.xml.crypto.dsig.spec.ExcC14NParameterSpec;

public class TruckDAO {

	public static int installedTruck(String model,String truckNo,String owner,String startpoint,String endpoint,Long phone,String insurance,String status,String date)
	{
		int i=0;
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("insert into transport_truck values(?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1, model);
			pstmt.setString(2, truckNo);
			pstmt.setString(3, owner);
			pstmt.setString(4, startpoint);
			pstmt.setString(5, endpoint);
			pstmt.setLong(6, phone);
			pstmt.setString(7, insurance);
			pstmt.setString(8, status);
			pstmt.setString(9, date);
			
			i= pstmt.executeUpdate();
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
	
	public static int changedStatus(String status,String truckno )
	{
		int i=0;
       try
       {
    	   Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("update transport_truck set status=? where truckno=?");
			
			pstmt.setString(1, status);
			pstmt.setString(2, truckno);
			
			i=pstmt.executeUpdate();
			
			
       }
       catch(Exception e)
       {
    	   e.printStackTrace();
       }
      
      return i;
	}
	
	public static TruckBean truckdetails(String truckno,String spoint,String epoint)
	{
		TruckBean tb=null;
		
		try
		{
		 Connection con= DBConnection.getconnection();
		 
		 PreparedStatement pstmt=con.prepareStatement("select *from transport_truck where truckno=? and stratpoint=? and endpoint=?");
		 pstmt.setString(1, truckno);
		 pstmt.setString(2, spoint);
		 pstmt.setString(3, epoint);
		 
		 ResultSet rs=pstmt.executeQuery();
		 
		 while(rs.next())
		 {
			 tb=new TruckBean();
			 
			 tb.setModel(rs.getString("model"));
			 tb.setTruckno(rs.getString("truckno"));
			 tb.setOwner(rs.getString("owner"));
			 tb.setStratpoint(rs.getString("stratpoint"));
			 tb.setEndpoint(rs.getString("endpoint"));
			 tb.setPhone(rs.getLong("phone"));
			 tb.setInsurance(rs.getString("insurance"));
			 tb.setStatus(rs.getString("status"));
			 tb.setDate(rs.getString("dateofjoin"));
			 
			 
			 
			
		 }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return tb;
	}
	
	public static ArrayList<TruckBean> checkStatus()
	{
		ArrayList<TruckBean> al=new ArrayList<TruckBean>();
		
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement(" select * from transport_truck ");
			
			
			
		ResultSet rs= pstmt.executeQuery();
		
		while(rs.next())
		{
			TruckBean tb=new TruckBean();
			 
			 tb.setTruckno(rs.getString("truckno"));
			 tb.setModel(rs.getString("model"));
			 tb.setStratpoint(rs.getString("stratpoint"));
			 tb.setEndpoint(rs.getString("endpoint"));
			 tb.setStatus(rs.getString("status"));
			 
			 al.add(tb);
			
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return al;
	}
	
	public static ArrayList<TruckBean> towardTrucks(String branch)
	{
		ArrayList<TruckBean> al=new ArrayList<TruckBean>();
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select * from transport_truck where endpoint=?");
			pstmt.setString(1, branch);
			
			ResultSet rs=pstmt.executeQuery();
			
			
			while(rs.next())
			{
				TruckBean tb=new TruckBean();
				
				tb.setStatus(rs.getString("status"));
				tb.setTruckno(rs.getString("truckno"));
				tb.setOwner(rs.getString("owner"));
				 tb.setModel(rs.getString("model"));
				 tb.setStratpoint(rs.getString("stratpoint"));
				 
				 
				 al.add(tb);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return al;
	}
	
	//---------------------------------------------------------------
	
	public static ArrayList<TruckBean> updatedStatus()
	{
		ArrayList<TruckBean> al=new ArrayList<TruckBean>();
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from transport_truck ");
			
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
			{
			TruckBean tb=new TruckBean();
				 
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
