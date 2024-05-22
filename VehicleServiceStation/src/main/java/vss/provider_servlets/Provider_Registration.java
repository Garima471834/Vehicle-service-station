package vss.provider_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import vss.beans.Provider;
import vss.dao.ProviderDao;

import vss.utils.UserMessages;

/**
 * Servlet implementation class Provider_Registration
 */
@WebServlet("/Provider_Registration")
public class Provider_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Provider_Registration() {
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
		String id=request.getParameter("userid");
		String password=request.getParameter("password");
		String companyname =request.getParameter("companyname");
		String ownername=request.getParameter("ownername");
		
		String contact=request.getParameter("phone");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		String description=request.getParameter("description");
		
		
		
		//Creating bean class  object
		java.util.Date d=new java.util.Date();
		java.sql.Date todayDate=new java.sql.Date(d.getTime());
		
		
		Provider p=new Provider(id,password,companyname,ownername,contact,email,city,address,description,todayDate);
		
		//Creating Dao class object
		ProviderDao dao=new ProviderDao();
		int status= dao.addProviderRegistration(p);//calling dao class method and passing bean class object
		if(status>0) 
		{
			System.out.println("thank you for your registration");
			request.setAttribute("msg",UserMessages.PROVIDER_REGISTRATION);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/provider_registeration.jsp");//relative path
			rd.forward(request, response);//forward the request
		}
		else 
		{
			request.setAttribute("msg",UserMessages.USER_EXISTENCE);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/provider_registeration.jsp");//relative path
			rd.forward(request, response);//forward the request
			
		}
	}

}
