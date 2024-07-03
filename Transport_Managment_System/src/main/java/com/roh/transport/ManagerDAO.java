package com.roh.transport;

import java.lang.reflect.Executable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;

import javax.xml.crypto.dsig.spec.ExcC14NParameterSpec;

import org.apache.catalina.ha.backend.CollectedInfo;

import jakarta.annotation.ManagedBean;

public class ManagerDAO {

	public static int managerCreate(String branch,String uname,String password,String  dofj,String dob,Double salary,int id)
	{
		int i=0;
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("insert into transport_manager values(?,?,?,?,?,?,?)");
			
			pstmt.setString(1,branch);
			pstmt.setString(2,uname );
			pstmt.setString(3, password);
			pstmt.setString(4, dofj);
			pstmt.setString(5, dob);
			pstmt.setDouble(6,salary);
			pstmt.setInt(7, id);
			
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
	
	public static MangaerBean managerLogin(String branch,String uname,String password)
	{
		MangaerBean mb=null;
		
		try
		{
			Connection con= DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from transport_manager where branch=? and username=? and password=?");
			
			pstmt.setString(1, branch);
			pstmt.setString(2,uname);
			pstmt.setString(3, password);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				mb=new MangaerBean();
				mb.setUsername(rs.getString("uname"));;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
			
		
		return mb;
	}
	
	public static int updateManager( String branch,String name,String password,Double salary,int id)
	{
		int i=0;
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("update TRANSPORT_MANAGER set branch=?,username=?,password=?,salary=?,id=? ");
			
			pstmt.setString(1, branch);
			pstmt.setString(2, name);
			pstmt.setString(3, password);
			pstmt.setDouble(4, salary);
			pstmt.setInt(5, id);
			
			i=pstmt.executeUpdate();
			
		}
		catch (Exception e) 
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
	
	public static MangaerBean managerDetails(int id,String name)
	{
		MangaerBean mb=null;
		
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from transport_manager where id=? and username=?");
			
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				mb=new MangaerBean();
				
				mb.setBranch(rs.getString("branch"));
				mb.setUsername(rs.getString("username"));
				mb.setId(rs.getInt("id"));
				mb.setDateofjoin(rs.getString("dateofjoin"));
				mb.setSalary(rs.getDouble("salary"));
				mb.setPassword(rs.getString("password"));
				
				
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
				
		return mb;
	}
	
	
	public static ArrayList<MangaerBean> findManager(String branch , String name)
	{
		ArrayList<MangaerBean> al=new ArrayList<MangaerBean>();
		
		try
		{
			Connection con=DBConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement(" select * from transport_manager where username like ? and branch=?");
			
			pstmt.setString(1, name+"%");
			pstmt.setString(2, branch);
			
			ResultSet rs= pstmt.executeQuery();
			
			while(rs.next())
			{
				MangaerBean mb=new MangaerBean();
				
				
				mb.setUsername(rs.getString("username"));
				mb.setId(rs.getInt("id"));
				mb.setSalary(rs.getDouble("salary"));
				
				al.add(mb);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return al;
	}
	
	
	public static MangaerBean detailsbyId(int id)
	{
		MangaerBean mb=null;
		
		
		try
		{
			
		Connection con=	DBConnection.getconnection();
		
		PreparedStatement pstmt=con.prepareStatement("select *from transport_manager where id=?");
		
		pstmt.setInt(1, id);
		
		  ResultSet rs= pstmt.executeQuery();
		  
		  if(rs.next())
		  {
			  mb=new MangaerBean();
			  
			  mb.setId(rs.getInt("id"));
			  mb.setUsername(rs.getString("username"));
			  mb.setBranch(rs.getString("branch"));
			  mb.setSalary(rs.getDouble("salary"));
			  mb.setDateofjoin(rs.getString("dateofjoin"));
			  
			  
		  }
			
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return mb;
		
		}
	
	
}
