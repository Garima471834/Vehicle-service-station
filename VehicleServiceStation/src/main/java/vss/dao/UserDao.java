package vss.dao;


import vss.beans.Contacts;
import vss.beans.Offers_Scheme;
import vss.beans.Provider;
import vss.beans.Services;
import vss.beans.feedbacks;
import vss.dbinfo.DBConnection;

import java.sql.*;
import java.util.ArrayList;
public class UserDao {
	
	//Search Provider
	public ArrayList<Provider>searchProvider(String cityname)
	{
		ArrayList<Provider>Plist=new ArrayList<>();
		Provider p=null;
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from provider where city=?";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//provider_id, password, company_name, contact_number, owner_name, email_ID, city, address, about_company, date
			ps=con.prepareStatement(selectQuery);
		
			ps.setString(1, cityname);
			System.out.println(ps);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				String name=rs.getString("company_name");
				String ownername=rs.getString("owner_name");
				String email=rs.getString("email_ID");
				String phone=rs.getString("contact_number");
				String aboutcompany=rs.getString("about_company");
				String address=rs.getString("address");
				
				p=new Provider(name,ownername,email,phone,aboutcompany,address);//Provider class object
				p.setCompany_name(name);
				p.setOwner_name(ownername);
				p.setEmail_ID(email);
				
				p.setContact_number(phone);
				
				p.setAbout_company(aboutcompany);
				p.setAddress(address);
				
				Plist.add(p);
			}
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			System.out.println(se);
	
		}
	return Plist;	
		
	}
	
	
	
	
	
	
	
	
	//view scheme
	
	public ArrayList<Offers_Scheme>viewScheme(String service_id )
	
	{
		ArrayList<Offers_Scheme>Schemelist=new ArrayList<>();
		Offers_Scheme os=null;//bean class reference variable
		
	
		Connection con=DBConnection.openConnection();
		String selectQuery="select os.discount_offers,os.provider_id,os.date,os.service_id, sr.service_name from offers_scheme os,services sr where os.service_id=sr.service_id and os.service_id=?"  ;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//scheme_id, discount_offers, date, provider_id, service_id
			ps=con.prepareStatement(selectQuery);
			ps.setString(1, service_id);
			
			System.out.println(ps);
			rs=ps.executeQuery();
			//String id=rs.getString("provider_id");
		
					while(rs.next()) 
					{
						
						//fetching data from columns
						String discount_scheme=rs.getString("discount_offers");
						Date d=rs.getDate("date");
						String provider_id=rs.getString("provider_id");
						int s_id=rs.getInt("service_id");
						
						
						Services s=new Services();
						
							s.setService_name(rs.getString("service_name"));
							
						os=new Offers_Scheme();//object creation using fetched record
						os.setDiscount_offers(discount_scheme);
						os.setDate(d);
						os.setProvider_id(provider_id);
						os.setService_id(s_id);
						os.setSr(s);//Has A relationship
						Schemelist.add(os);//adding object into Arraylist
					}
			
			}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	return Schemelist;	
	}
	
		
//view services
	
public ArrayList<Services>viewServices(String provider_id )
	
	{
		ArrayList<Services>Servicelist=new ArrayList<>();
		Services s=null;//bean class reference variable
		
	
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from services where provider_id=?"  ;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//service_id, provider_id, service_name, service_charge, description
			ps=con.prepareStatement(selectQuery);
			ps.setString(1, provider_id);
			System.out.println(ps);
			rs=ps.executeQuery();
			//String id=rs.getString("provider_id");
		
					while(rs.next()) 
					{
						
						//fetching data from columns
						String servicename=rs.getString("service_name");
						int charge=rs.getInt("service_charge");
						String description=rs.getString("description");
						
						
						s=new Services();//object creation using fetched record
						s.setProvider_id(provider_id);
						s.setService_name(servicename);
						s.setService_charge(charge);
						s.setDescription(description);
						s.setService_id(rs.getInt("service_id"));
						Servicelist.add(s);//adding object into Arraylist
					}
			
			}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	return Servicelist;	
	}
	
	
	
	
	//end services
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//view Providers
public ArrayList<Provider>viewProviders()
	
	{
		ArrayList<Provider>Providerlist=new ArrayList<>();
		Provider p=null;//bean class reference variable
		
	
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from provider"  ;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//provider_id, password, company_name, contact_number, owner_name, email_ID, city, address, about_company
			ps=con.prepareStatement(selectQuery);
			rs=ps.executeQuery();
			while(rs.next()) {
				String id=rs.getString("provider_id");//fetching data from columns
				String companyname=rs.getString("company_name");
				String phone=rs.getString("contact_number");
				String ownername=rs.getString("owner_name");
				String email=rs.getString("email_ID");
				String city=rs.getString("city");
				String address=rs.getString("address");
				String aboutcompany=rs.getString("about_company");
				
				
				p=new Provider();//object creation using fetched record
				p.setProvider_id(id);
				p.setCompany_name(companyname);
				p.setContact_number(phone);
				p.setOwner_name(ownername);
				p.setEmail_ID(email);
				p.setCity(city);
				p.setAddress(address);
				p.setAbout_company(aboutcompany);
				
				Providerlist.add(p);//adding object into Arraylist
					}
			
			}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	return Providerlist;	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//end Providers
	//view feedback
public ArrayList<feedbacks>viewfeedbacks()
	
	{
		ArrayList<feedbacks>feedbacklist=new ArrayList<>();
		feedbacks feedback=null;//bean class reference variable
		
		
		Connection con=DBConnection.openConnection();
		String selectQuery="select * from feedbacks  where ratings=5 or ratings=4  order by date desc limit 9";
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

	public int addContact(Contacts c)
	
	
	{
		String name=c.getUser_name();
		String email=c.getUser_email();
		String phone=c.getUser_phone();
		String query=c.getUser_question();
		
		
		/*
		 * System.out.println("From Dao class Output");
		 * System.out.println(name+email+phone+query);
		 */
		Connection con=DBConnection.openConnection();//connection establish with database
		String insertQuery="insert into contacts(user_name, user_email, user_phone, user_question, date)values(?,?,?,?,?)";
		int status=0;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(insertQuery);//passes query to mySQl->compiler compiles the query and store the compiled query into buffer and give reference to ps
			
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, query);
			ps.setDate(5, c.getDate());
			System.out.println(ps);
			status=ps.executeUpdate();//insert/update/delete
			}
		catch(SQLException se) 
		{
			
		}
		finally {
			try {
				if(ps!=null)
					ps.close();
				if(con!=null)
					con.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return status;
		
	}//method close
	//add feedback

	public int addFeedbacks(feedbacks f)
	{
		int rating=f.getRatings();
		String username=f.getName();
		String email=f.getEmail();
		String remarks=f.getRemarks();
		
		
		/*
		 * System.out.println("From Dao class Output");
		 * System.out.println(username+emailid+num+comment);
		 */
		Connection con=DBConnection.openConnection();//connection establish with database
		String insertQuery="insert into feedbacks(name, email, remarks, ratings, date)values(?,?,?,?,?)";
		int status=0;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(insertQuery);//passes query to mySQl->compiler compiles the query and store the compiled query into buffer and give reference to ps
			
			
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, remarks);
			ps.setInt(4, rating);
			ps.setDate(5, f.getDate());
			System.out.println(ps);
			status=ps.executeUpdate();//insert/update/delete
			}
		catch(SQLException se) 
		{
			
		}
		finally {
			try {
				if(ps!=null)
					ps.close();
				if(con!=null)
					con.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return status;
		
		
		
	}

}
