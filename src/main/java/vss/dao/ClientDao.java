package vss.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vss.beans.BookingServices;
import vss.beans.Client;
import vss.beans.Employees;
import vss.beans.Services;
import vss.dbinfo.DBConnection;

public class ClientDao {
	
	
	//view Booking Status
	public ArrayList<BookingServices> viewBookingStatus(String client_id) {
		ArrayList<BookingServices>Statuslist = new ArrayList<>();
		ResultSet rs= null;
		PreparedStatement ps= null;
		Employees e= null;
		BookingServices bs= null;
		Services s= null;
		Client c= null;
		Connection con = DBConnection.openConnection();
		String selectQuery="select bs.provider_response,bs.booking_status,s.service_name,s.service_charge,e.name,e.phone,e.emp_id from employee e,bookservice bs,services s,client c where bs.employee_id=e.emp_id and bs.service_id=s.service_id and c.client_id=? ";
		
		try {
			ps=con.prepareStatement(selectQuery);
			ps.setString(1, client_id);
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				String eid=rs.getString("emp_id");
				String ename=rs.getString("name");
				String sname=rs.getString("service_name");
				String phone=rs.getString("phone");
				String bstatus=rs.getString("booking_status");
				String res=rs.getString("provider_response");
				String charge=rs.getString("service_charge");
				int service_charge = Integer.parseInt(charge);
				
				e= new Employees();
				e.setName(ename);;
				e.setPhone(phone);
				
				s= new Services();
				s.setService_name(sname);
				s.setService_charge(service_charge);
				
				bs= new BookingServices();
				bs.setBooking_status(bstatus);
				bs.setProvider_response(res);
				
				bs.setServices(s);
				bs.setClient(c);
				bs.setEmployees(e);
				
				Statuslist.add(bs);
				
			}
			
		} catch (SQLException se) {

			se.printStackTrace();
		}
		
		return Statuslist;
	}
				
				
				
				
				
				
				
				
				
				
				
	// viewProfile
	public Client viewProfile(String id) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String selectQuery = "select * from client where client_ID=?";
		Client c = null;
		try {
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, id);
			System.out.println(ps);
			rs = ps.executeQuery();// execute the query

			// client_ID, client_password, client_name, email_ID, contact_number, city,
			// address, date

			rs.next();// put the cursor on the specified row
			String name = rs.getString("client_name");
			String email = rs.getString("email_ID");
			String phone = rs.getString("contact_number");
			String pass = rs.getString("client_password");
			String city = rs.getString("city");
			String address = rs.getString("address");

			c = new Client();// Admin class object
			c.setClient_name(name);
			c.setEmail_ID(email);
			c.setContact_number(phone);
			c.setClient_password(pass);
			c.setCity(city);
			c.setAddress(address);

		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			// close all resources
		}
		return c;
	}

	public int addClientRegistration(Client c) {
		String id = c.getClient_ID();
		String password = c.getClient_password();
		String name = c.getClient_name();
		String email = c.getEmail_ID();
		String phone = c.getContact_number();
		String city = c.getCity();
		String address = c.getAddress();

		Connection con = DBConnection.openConnection();// connection establish with database
		String insertQuery = "insert into client(client_ID, client_password, client_name, email_ID, contact_number, city, address, date)values(?,?,?,?,?,?,?,?)";
		int status = 0;
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insertQuery);// passes query to mySQl->compiler compiles the query and store the
													// compiled query into buffer and give reference to ps

			ps.setString(1, id);
			ps.setString(2, password);
			ps.setString(3, name);
			ps.setString(4, email);
			ps.setString(5, phone);
			ps.setString(6, city);
			ps.setString(7, address);
			ps.setDate(8, c.getDate());
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
		String selectQuery = "select * from client where client_ID=? and client_password=?";
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

//client_ID, client_password, client_name, email_ID, contact_number, city, address, date

	public int editProfile(Client c) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String updateQuery = "update client set client_name=?,email_ID=?,contact_number=?,city=?,address=? where client_ID=?";
		int status = 0;
		try {
			ps = con.prepareStatement(updateQuery);
			ps.setString(1, c.getClient_name());
			ps.setString(2, c.getEmail_ID());
			ps.setString(3, c.getContact_number());
			ps.setString(4, c.getCity());
			ps.setString(5, c.getAddress());
			ps.setString(6, c.getClient_ID());

			System.out.println(ps);
			status = ps.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return status;

	}

	public int bookservices(BookingServices bs) {

		// Booking_id, client_id, service_id, provider_id, date, Booking_status,
		// provider_response

		Connection con = DBConnection.openConnection();
		String insertQuery = "insert into bookservice(client_id, service_id, provider_id, date)values(?,?,?,?)";
		int status = 0;
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insertQuery);

			for (int i = 0; i < bs.getService_id().length; i++) {
				String s_id = bs.getService_id()[i];
				int service_id = Integer.parseInt(s_id);

				ps.setString(1, bs.getClient_id());

				ps.setInt(2, service_id);
				ps.setString(3, bs.getProvider_id());
				ps.setDate(4, bs.getDate());

				// add more fileds
				// System.out.println(ps);
				// status= ps.executeUpdate();
				ps.addBatch();

			}

			int[] arr = ps.executeBatch();// all queery will pass to dbms at once
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
