package vss.client_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vss.beans.Admin;
import vss.beans.Client;
import vss.dao.AdminDao;
import vss.dao.ClientDao;

/**
 * Servlet implementation class Client_EditProfile
 */
@WebServlet("/Client_EditProfile")
public class Client_EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Client_EditProfile() {
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
		HttpSession hs=request.getSession(false);//
		String client_ID=(String)hs.getAttribute("sessionKey");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
	
		Client c=new Client();
		c.setClient_name(name);
		c.setEmail_ID(email);
		c.setContact_number(phone);
		c.setCity(city);
		c.setAddress(address);
		c.setClient_ID(client_ID);
		ClientDao dao=new ClientDao();
		int status= dao.editProfile(c);//passing Admin Object for updation on the basis of
		if(status>0) 
		{
			response.sendRedirect("/VehicleServiceStation/client/client_profile.jsp");
		}
	}

		
	

}
