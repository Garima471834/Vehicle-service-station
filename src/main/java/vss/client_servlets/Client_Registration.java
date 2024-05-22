package vss.client_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vss.beans.Client;

import vss.dao.ClientDao;

import vss.utils.UserMessages;

/**
 * Servlet implementation class Client_Registration
 */
@WebServlet("/Client_Registration")
public class Client_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Client_Registration() {
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
		String id=request.getParameter("clientid");
		String password=request.getParameter("password");
		String name =request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("phone");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		
		
		//Creating bean class  object
				java.util.Date d=new java.util.Date();
				java.sql.Date todayDate=new java.sql.Date(d.getTime());
			
				
				
				Client c=new Client(id,password,name,email,contact,city,address,todayDate);
				
				//Creating Dao class object
				ClientDao dao=new ClientDao();
				int status= dao.addClientRegistration(c);//calling dao class method and passing bean class object
				if(status>0) 
				{
					System.out.println("Registration Done Successfully");
					request.setAttribute("msg",UserMessages.CLIENT_REGISTRATION);
					RequestDispatcher rd=request.getRequestDispatcher("/client/client_registeration.jsp");//relative path
					rd.forward(request, response);//forward the request
				}
				else 
				{
					request.setAttribute("msg",UserMessages.USER_EXISTENCE);
					RequestDispatcher rd=request.getRequestDispatcher("/client/client_registeration.jsp");//relative path
					rd.forward(request, response);//forward the request
					
				}	
	}

}
