package vss.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vss.beans.Employees;
import vss.dbinfo.DBConnection;

public class EmpDao {

	public int addDetails(Employees e) 
	{
		String pid=e.getProvider_id();
		
		String name=e.getName();
		String email=e.getEmail();
		String phone=e.getPhone();
        String empid=e.getEmp_id();
			Connection con=DBConnection.openConnection();
			String insertQuery="insert into employee(provider_id,name,email,phone,emp_id)values(?,?,?,?,?)";
			int status=0;
			PreparedStatement ps=null;
			try {
				
				ps=con.prepareStatement(insertQuery);
				ps.setString(1, pid);
				
				ps.setString(2, name);
				ps.setString(3, email);
				ps.setString(4, phone);
				ps.setString(5, empid);
				System.out.println(ps);
				status=ps.executeUpdate();
				
				
			}catch(SQLException se)
			{
				se.printStackTrace();
			}
			
		
		return status;
	}

	
	
	
}
