package vss.provider_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vss.beans.Services;
import vss.dao.ProviderDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class Provider_Services
 */
@WebServlet("/Provider_Services")
public class Provider_Services extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Provider_Services() {
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
		String sname=request.getParameter("servicename");
		
		
		String scharge=request.getParameter("charge");
		 
			int charge=Integer.parseInt(scharge);	 
		String description=request.getParameter("description");
		
		HttpSession hs=request.getSession(false);
		String provider_id=(String) hs.getAttribute("sessionKey");
		System.out.println(provider_id);
		System.out.println(" service name is"+sname);
		
		System.out.println("service charge is "+charge);
		System.out.println("Description is "+description);
		Services s=new Services(charge,provider_id,sname,description);	
		ProviderDao dao=new ProviderDao();
		int status=dao.addProviderServices(s);
		if (status>0)
		{
			System.out.println("Services Added Successfully");
			request.setAttribute("msg",UserMessages.PROVIDER_SERVICES);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/services.jsp");//relative path
			rd.forward(request, response);//forward the request
		}
		
		}
	}


