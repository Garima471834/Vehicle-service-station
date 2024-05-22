package vss.provider_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import vss.beans.Provider;

import vss.dao.ProviderDao;

/**
 * Servlet implementation class Provider_EditProfile
 */
@WebServlet("/Provider_EditProfile")
public class Provider_EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Provider_EditProfile() {
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
		String provider_id=(String)hs.getAttribute("sessionKey");
		String name=request.getParameter("companyname");
		String ownername=request.getParameter("ownername");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		String aboutcompany=request.getParameter("description");
	
		Provider p=new Provider();
		p.setCompany_name(name);
		p.setOwner_name(ownername);
		p.setContact_number(phone);
		p.setEmail_ID(email);
		p.setCity(city);
		p.setAddress(address);
		p.setAbout_company(aboutcompany);
		p.setProvider_id(provider_id);
		ProviderDao dao=new ProviderDao();
		int status= dao.editProfile(p);//passing Admin Object for updation on the basis of
		if(status>0) 
		{
			response.sendRedirect("/VehicleServiceStation/provider/provider_profile.jsp");
		}
	}
		
	

}
