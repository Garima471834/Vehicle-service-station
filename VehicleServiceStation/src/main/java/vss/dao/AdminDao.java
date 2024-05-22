package vss.dao;
import java.sql.*;
import java.sql.Date;
import java.util.*;

import vss.beans.Admin;
import vss.beans.Contacts;
import vss.beans.feedbacks;
import vss.dbinfo.DBConnection;
public class AdminDao {

	//viewProfile
public	 Admin viewProfile(String id)
	{
		 Connection con=DBConnection.openConnection();
			PreparedStatement ps=null;
			ResultSet rs=null;
			String selectQuery="select * from admin where admin_id=?";
			Admin a=null;
			try {
				ps=con.prepareStatement(selectQuery);
				ps.setString(1,id);
				System.out.println(ps);
				rs=ps.executeQuery();//execute the query
				//admin_id, admin_pass, name, email, phone
				rs.next();//put the cursor on the specified row
				String name=rs.getString("name");
				String email=rs.getString("email");
				String phone=rs.getString("phone");
				String pass=rs.getString("admin_pass");
				
				a=new Admin();//Admin class object
				a.setEmail(email);
				a.setName(name);
				a.setPhone(phone);
				a.setAdmin_pass(pass);
				
				
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			finally {
				//close all resources
			}
			return a;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//view contacts method
	
	public ArrayList<Contacts>viewContacts()
	
	{
		ArrayList<Contacts>contactlist=new ArrayList<>();
		Contacts contact=null;//bean class reference variable
		
		
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from contacts order by date desc";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//contact_id, user_name, user_email, user_phone, user_question, date
			ps=con.prepareStatement(selectQuery);
			rs=ps.executeQuery();
			while(rs.next()) {
				String name=rs.getString("user_name");//fetching data from columns
				String email=rs.getString("user_email");
				String phone=rs.getString("user_phone");
				String question=rs.getString("user_question");
				Date d=rs.getDate("date");
				contact=new Contacts(name,email,phone,question,d);//object creation using fetched record
				contactlist.add(contact);//adding object into Arraylist
				
				
				
			}
			
			
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	return contactlist;	
	}
	
//end contact method
	
	//view feedback method
	
public ArrayList<feedbacks>viewfeedbacks()
	
	{
		ArrayList<feedbacks>feedbacklist=new ArrayList<>();
		feedbacks feedback=null;//bean class reference variable
		
		
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from feedbacks order by date desc";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//feedback_id, name, email, remarks, ratings, date
			ps=con.prepareStatement(selectQuery);
			rs=ps.executeQuery();
			while(rs.next()) {
				String name=rs.getString("name");//fetching data from columns
				String email=rs.getString("email");
				String remark=rs.getString("remarks");
				int rating=rs.getInt("ratings");
				Date d=rs.getDate("date");
				feedback=new feedbacks(rating, name, email, remark, d);//object creation using fetched record
				feedbacklist.add(feedback);//adding object into Arraylist
					}
			
			}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	return feedbacklist;	
	}
	
	
	
	//end view feedback
	
	public boolean login(String uid, String pass) {
		
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from admin where admin_id=? and admin_pass=?";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps=con.prepareStatement(selectQuery);
			ps.setString(1, uid);
			ps.setString(2, pass);
			System.out.println(ps);
			rs=ps.executeQuery();
			//boolean b= rs.next();
			if(rs.next()==true)//it will put the cursor on the row and check whether there is date or not if there is data it will return true
				return true;
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		
		
		return false;
	}






//Admin Edit Profile method

public int editProfile(Admin a) 
{
	Connection con=DBConnection.openConnection();
	PreparedStatement ps=null;
		String updateQuery="update admin set name=?,email=?,phone=? where admin_id=?";
		int status=0;
		try 
		{
		ps=con.prepareStatement(updateQuery);
		ps.setString(1, a.getName());
		ps.setString(2, a.getEmail());
		ps.setString(3, a.getPhone());
		ps.setString(4, a.getAdmin_id());
		System.out.println(ps);
		status=ps.executeUpdate();
		}
		catch(SQLException se) 
		{
			se.printStackTrace();
		}
		return status;
	}

}
