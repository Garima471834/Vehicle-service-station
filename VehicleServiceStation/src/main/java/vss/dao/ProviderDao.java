package vss.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vss.beans.BookingServices;
import vss.beans.Client;
import vss.beans.Employees;
import vss.beans.Offers_Scheme;
import vss.beans.Provider;
import vss.beans.Services;
import vss.dbinfo.DBConnection;

public class ProviderDao {
	
	//view services
	
		public ArrayList<Offers_Scheme>viewoffer(String provider_id)
			
			{
				ArrayList<Offers_Scheme>offerlist=new ArrayList<>();
				Offers_Scheme s=null;//bean class reference variable
				
			
				Connection con=DBConnection.openConnection();
				String selectQuery="select * from offers_scheme where provider_id=?"  ;
				PreparedStatement ps=null;
				ResultSet rs=null;
				try {
					// scheme_id, discount_offers, date, provider_id, service_id
					// service_id, provider_id, service_name, service_charge, description
					ps=con.prepareStatement(selectQuery);
					ps.setString(1, provider_id);
					System.out.println(ps);
					rs=ps.executeQuery();
					//String id=rs.getString("provider_id");
				
							while(rs.next()) 
							{
								
								//fetching data from columns
								
								
								s=new Offers_Scheme();//object creation using fetched record
								s.setDiscount_offers(rs.getString("discount_offers"));
								s.setService_id(rs.getInt("service_id"));
								
								s.setScheme_id(rs.getInt("scheme_id"));
								System.out.println("schemeid "+rs.getInt("scheme_id"));
								s.setProvider_id(rs.getString("provider_id"));
								s.setDate(rs.getDate("date"));
								offerlist.add(s);//adding object into Arraylist
							}
					
					}
				catch(SQLException se)
				{
					se.printStackTrace();
				}
			return offerlist;	
			}
			
			
			
			
			//end services
	
	
	
	//view services
	
	public ArrayList<Services>viewservices(String provider_id)
		
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
							
							System.out.println(servicename);
							System.out.println(charge);
							System.out.println(description);
							
							
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
	
	//View Confirmed Booking Method
	
		public ArrayList<BookingServices> viewConfirmBooking(String provider_id) {
			ArrayList<BookingServices>ConfirmBookingList = new ArrayList<>();
			ResultSet rs= null;
			PreparedStatement ps= null;
			Employees e= null;
			BookingServices bs= null;
			Services s= null;
			Client c= null;
			Connection con = DBConnection.openConnection();
			String selectQuery="select bs.provider_response,bs.Booking_status,s.service_name,s.service_charge,s.service_id,e.name,e.phone,e.emp_id,c.client_name from employee e,bookservice bs,services s,client c where bs.provider_id=e.provider_id and bs.service_id=s.service_id and bs.client_ID=c.client_ID and bs.provider_id=? and bs.Booking_status='true'";
			
			try {
				ps=con.prepareStatement(selectQuery);
				ps.setString(1, provider_id);
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					String eid=rs.getString("emp_id");
					String ename=rs.getString("name");
					String sname=rs.getString("service_name");
					String phone=rs.getString("phone");
					String bstatus=rs.getString("booking_status");
					String res=rs.getString("provider_response");
					String c_name=rs.getString("client_name");
			    	String s_charge=rs.getString("service_charge");
			    	int service_charge=Integer.parseInt(s_charge);
			    	String s_id=rs.getString("service_id");
			    	int service_id=Integer.parseInt(s_id);
			    	
			    	System.out.println(res);
					e= new Employees();
					e.setName(ename);;
					e.setPhone(phone);
					e.setEmp_id(eid); 
					
					c=new Client();
					c.setClient_name(c_name);
					
					s= new Services();
					s.setService_name(sname);
					s.setService_charge(service_charge);
					s.setService_id(service_id);
					
					bs= new BookingServices();
					bs.setBooking_status(bstatus);
					bs.setProvider_response(res);
					
					bs.setServices(s);
					bs.setClient(c);
					bs.setEmployees(e);
					
					ConfirmBookingList.add(bs);
					
				}
				
			} catch (SQLException se) {

				se.printStackTrace();
			}
			
			return ConfirmBookingList;
		}
	  //end Confirmed Booking Method
// view employee
	
	public ArrayList<Employees> viewEmployee(String provider_id) {
		ArrayList<Employees> emplist = new ArrayList<>();
		Employees e=null;
		Connection con = DBConnection.openConnection();
		String selectQuery = "select * from employee where provider_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, provider_id);
			System.out.println(ps);
			rs = ps.executeQuery();
			while (rs.next()) {
//serial_number, provider_id, name, email, phone
				// fetching data from columns
				
				String name = rs.getString("name");
				String email = rs.getString("email");
				
				String phone = rs.getString("phone");

				e = new Employees();// object creation using fetched record
				
				e.setProvider_id(provider_id);
				e.setName(name);
				e.setEmail(email);
				e.setPhone(phone);
				e.setEmp_id(rs.getString("emp_id"));
				emplist.add(e);// adding object into Arraylist
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}
		return emplist;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// view booking

	public ArrayList<BookingServices> viewBooking(String provider_id) {
		ArrayList<BookingServices> bookinglist = new ArrayList<>();
		BookingServices bs = null;// bean class reference variable
		Client c = null;
		Services s = null;
		Connection con = DBConnection.openConnection();
		String selectQuery = "select c.client_name,c.client_ID,c.email_ID,c.contact_number,c.address,bs.provider_id,bs.booking_status,"
				+ "bs.service_id,bs.booking_id,sr.service_name,sr.service_charge from client c,"
				+ "bookservice bs,services sr where bs.client_ID=c.client_ID and bs.provider_id=?"
				+ "and bs.booking_status ='false' and bs.service_id=sr.service_id";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			// Booking_id, client_id, service_id, provider_id, date, Booking_status,
			// provider_response
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, provider_id);
			System.out.println(ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				String c_id = rs.getString("client_ID");

				String c_name = rs.getString("client_name");
				String phone = rs.getString("contact_number");
				String email_id = rs.getString("email_ID");
				String address = rs.getString("address");
				String s_name = rs.getString("service_name");
				String s_id = rs.getString("service_id");
				String s_charge = rs.getString("service_charge");
				System.out.println("name  and id is " + s_name + " " + s_id);
				c = new Client();
				c.setClient_ID(c_id);
				c.setClient_name(c_name);
				c.setContact_number(phone);
				c.setEmail_ID(email_id);
				c.setAddress(address);
				// services class object

				s = new Services();
				s.setService_name(s_name);
				s.setService_id(Integer.parseInt(s_id));
				s.setService_charge(Integer.parseInt(s_charge));

				bs = new BookingServices();
				bs.setBooking_id(rs.getInt("booking_id"));
				bs.setClient(c);// HAS A with Client
				bs.setServices(s);// Has with Services bean

				bookinglist.add(bs);

			}

			System.out.println(bookinglist.size());

		} catch (SQLException se) {
			se.printStackTrace();
		}
		return bookinglist;
	}

	// view services

	public ArrayList<Services> viewServices(String provider_id)

	{
		ArrayList<Services> Servicelist = new ArrayList<>();
		Services s = null;// bean class reference variable

		Connection con = DBConnection.openConnection();
		String selectQuery = "select * from services where provider_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			// service_id, provider_id, service_name, service_charge, description
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, provider_id);
			System.out.println(ps);
			rs = ps.executeQuery();
			// String id=rs.getString("provider_id");

			while (rs.next()) {

				// fetching data from columns
				int service_id = rs.getInt("service_id");
				String servicename = rs.getString("service_name");
				int charge = rs.getInt("service_charge");
				String description = rs.getString("description");

				s = new Services();// object creation using fetched record
				s.setService_id(service_id);
				s.setProvider_id(provider_id);
				s.setService_name(servicename);
				s.setService_charge(charge);
				s.setDescription(description);
				Servicelist.add(s);// adding object into Arraylist
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}
		return Servicelist;
	}

	// viewProfile
	public Provider viewProfile(String id) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String selectQuery = "select * from provider where provider_id=?";
		Provider p = null;
		try {
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, id);
			System.out.println(ps);
			rs = ps.executeQuery();// execute the query
			// provider_id, password, company_name, contact_number, owner_name, email_ID,
			// city, address, about_company, date
			rs.next();// put the cursor on the specified row
			String name = rs.getString("company_name");
			String ownername = rs.getString("owner_name");
			String email = rs.getString("email_ID");
			String phone = rs.getString("contact_number");
			String pass = rs.getString("password");
			String city = rs.getString("city");
			String address = rs.getString("address");
			String aboutcompany = rs.getString("about_company");
			p = new Provider();// Admin class object
			p.setEmail_ID(email);
			p.setCompany_name(name);
			p.setContact_number(phone);
			p.setPassword(pass);
			p.setOwner_name(ownername);
			p.setCity(city);
			p.setAddress(address);
			p.setAbout_company(aboutcompany);

		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			// close all resources
		}
		return p;
	}

	public int addProviderRegistration(Provider p)

	{
		String id = p.getProvider_id();
		String password = p.getPassword();
		String companyname = p.getCompany_name();
		String ownername = p.getOwner_name();
		String phone = p.getContact_number();
		String email = p.getEmail_ID();
		String city = p.getCity();
		String address = p.getAddress();
		String description = p.getAbout_company();

		Connection con = DBConnection.openConnection();// connection establish with database
		String insertQuery = "insert into provider(provider_id, password, company_name, contact_number, owner_name, email_ID, city, address, about_company, date)values(?,?,?,?,?,?,?,?,?,?)";
		int status = 0;
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insertQuery);// passes query to mySQl->compiler compiles the query and store the
													// compiled query into buffer and give reference to ps

			ps.setString(1, id);
			ps.setString(2, password);
			ps.setString(3, companyname);
			ps.setString(4, ownername);
			ps.setString(5, phone);
			ps.setString(6, email);
			ps.setString(7, city.toLowerCase());
			ps.setString(8, address);
			ps.setString(9, description);
			ps.setDate(10, p.getDate());
			System.out.println(ps);
			status = ps.executeUpdate();// insert/update/delete
		} catch (SQLException se) {
			se.printStackTrace();
			status = 0;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return status;

	}

	public boolean login(String uid, String pass) {

		Connection con = DBConnection.openConnection();
		String selectQuery = "select * from provider where provider_id=? and password=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, uid);
			ps.setString(2, pass);
			System.out.println(ps);
			rs = ps.executeQuery();
			// boolean b= rs.next();
			if (rs.next() == true)// it will put the cursor on the row and check whether there is date or not if
									// there is data it will return true
				return true;
		} catch (SQLException se) {
			se.printStackTrace();
		}

		return false;
	}

//provider_id, password, company_name, contact_number, owner_name, email_ID, city, address, about_company, date

	public int editProfile(Provider p) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String updateQuery = "update provider set company_name=?,email_ID=?,contact_number=?,owner_name=?,city=?,address=?,about_company=? where provider_id=?";
		int status = 0;
		try {
			ps = con.prepareStatement(updateQuery);
			ps.setString(1, p.getCompany_name());
			ps.setString(2, p.getEmail_ID());
			ps.setString(3, p.getContact_number());
			ps.setString(4, p.getOwner_name());
			ps.setString(5, p.getCity());
			ps.setString(6, p.getAddress());
			ps.setString(7, p.getAbout_company());
			ps.setString(8, p.getProvider_id());

			System.out.println(ps);
			status = ps.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return status;

	}

	public int addProviderServices(Services s) {
		Connection con = DBConnection.openConnection();// connection establish with database
		String insertQuery = "insert into services(provider_id, service_name, service_charge, description)values(?,?,?,?)";
		int status = 0;
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insertQuery);// passes query to mySQl->compiler compiles the query and store the
													// compiled query into buffer and give reference to ps

			ps.setString(1, s.getProvider_id());
			ps.setString(2, s.getService_name());
			ps.setInt(3, s.getService_charge());
			ps.setString(4, s.getDescription());

			System.out.println(ps);
			status = ps.executeUpdate();// insert/update/delete
		} catch (SQLException se) {
			se.printStackTrace();
			status = 0;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return status;
	}

	public int addProviderScheme(Offers_Scheme os) {
		Connection con = DBConnection.openConnection();// connection establish with database
		String insertQuery = "insert into offers_scheme(discount_offers, date, provider_id, service_id)values(?,?,?,?)";
		int status = 0;
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insertQuery);// passes query to mySQl->compiler compiles the query and store the
													// compiled query into buffer and give reference to ps

			ps.setString(1, os.getDiscount_offers());
			ps.setDate(2, os.getDate());
			ps.setString(3, os.getProvider_id());
			ps.setInt(4, os.getService_id());

			System.out.println(ps);
			status = ps.executeUpdate();// insert/update/delete
		} catch (SQLException se) {
			se.printStackTrace();
			status = 0;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}

		return status;

	}













	public int confirmbooking(String[] bkid, String provider_id, String answer, String empid) 
	{
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		//BookingServices bks= null;
		String updateQuery = "update bookservice set provider_response=?,employee_id=?,Booking_status='true' where Booking_id=?";
		int status = 0;
		try {
			ps = con.prepareStatement(updateQuery);
			for(int i=0;i<bkid.length;i++)
			{
				int bid=Integer.parseInt(bkid[i]);
				
			ps.setString(1, answer);
			ps.setString(2, empid);
		
			ps.setInt(3,bid);
			//ps.executeUpdate();
			ps.addBatch();
			}
			
			/*System.out.println(ps);
			status = ps.executeUpdate();*/
			
			
		
		int[] arr = ps.executeBatch();
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] > 0)
				status = 1;
			else
				break;

		}
			
	} catch (SQLException se) {
		se.printStackTrace();
		status = 0;
	} finally {
		try {
			if (ps != null)
				ps.close();
			if (con != null)
				con.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		
	}
	
	return status;
	
	
	}




	public int deleteScheme(String[] schemeid, String provider_id) 
	{
		
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String deleteQString="delete from offers_scheme where scheme_id=? and Provider_id=?";
		int status = 0;
		try {
			ps = con.prepareStatement(deleteQString);
			for(int i=0;i<schemeid.length;i++)
			{
				int sid=Integer.parseInt(schemeid[i]);
				ps.setInt(1, sid);
				ps.setString(2, provider_id);
				ps.addBatch();
			}
			int[] arr = ps.executeBatch();
			for (int i = 0; i < arr.length; i++) {
				if (arr[i] > 0)
					status = 1;
				else
					break;

			}
				
		} catch (SQLException se) {
			se.printStackTrace();
			status = 0;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
		}
				
		return status;
	}

}
