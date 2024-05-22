package vss.common_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vss.beans.Contacts;
import vss.dao.UserDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	String name=request.getParameter("username");
	String email=request.getParameter("useremail");
	String phone=request.getParameter("userphone");
	String query=request.getParameter("userquery");
	
	System.out.println("name is"+name);
	System.out.println("email is"+email);
	System.out.println("phone is "+phone);
	System.out.println("query is "+query);
	
	//Creating bean class  object
	java.util.Date d=new java.util.Date();
	java.sql.Date todayDate=new java.sql.Date(d.getTime());
	
	
	Contacts c=new Contacts(name,email,phone,query,todayDate);
	
	//Creating Dao class object
	UserDao dao=new UserDao();
	int status= dao.addContact(c);//calling dao class method and passing bean class object
	
	if(status>0) 
	{
		request.setAttribute("msg",UserMessages.CONTACT_MESSAGE);
		
		RequestDispatcher rd=request.getRequestDispatcher("/commonjsp/contactus.jsp"); //relative path
		rd.forward(request, response); //forward the request
	}
	}

}
