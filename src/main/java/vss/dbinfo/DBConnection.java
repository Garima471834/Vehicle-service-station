package vss.dbinfo;
import java.sql.*;
public class DBConnection 
{
	private static Connection con;//Connection holds the address of database
	
	/*
	 * int sum; public int add() { return sum; }
	 */
	public static Connection openConnection() 
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");//factory method is used to create object
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vss_db","root","root");
		}
		catch(SQLException|ClassNotFoundException se) 
		{
			se.printStackTrace();
			}
		return con;
	}
	/*
	 * public static void main(String[] args) { Connection
	 * c=DBConnection.openConnection(); System.out.println(c); }
	 */
}
