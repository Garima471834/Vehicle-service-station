package vss.provider_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vss.beans.Offers_Scheme;
import vss.dao.ProviderDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class Provider_Offers
 */
@WebServlet("/Provider_Offers")
public class Provider_Offers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Provider_Offers() {
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
		String service_id=request.getParameter("servicelist");
		
		int s_id=Integer.parseInt(service_id);
		String offer=request.getParameter("offers");
		//System.out.println("servicelist is"+servicelist );
		System.out.println("Offers and Scheme"+offer);
		
		/*
		 * HttpSession hs=request.getSession(false); String provider_id=(String)
		 * hs.getAttribute("sessionKey");
		 */
		
		HttpSession hs=request.getSession(false);
		String p_id=(String) hs.getAttribute("sessionKey");

		//Creating bean class  object
		java.util.Date d=new java.util.Date();
		java.sql.Date todayDate=new java.sql.Date(d.getTime());
		
		
		Offers_Scheme os =new Offers_Scheme(s_id,p_id,offer,todayDate);
		ProviderDao dao=new ProviderDao();
		int status=dao.addProviderScheme(os);
		if(status>0) 
		{
			System.out.println("Services Added Successfully");
			request.setAttribute("msg",UserMessages.PROVIDER_SERVICES);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/offers_scheme.jsp");//relative path
			rd.forward(request, response);//forward the request
		}
		
	}

}
