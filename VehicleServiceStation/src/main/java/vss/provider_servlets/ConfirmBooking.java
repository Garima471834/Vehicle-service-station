package vss.provider_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import vss.dao.ProviderDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class ConfirmBooking
 */
@WebServlet("/ConfirmBooking")
public class ConfirmBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmBooking() {
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
		String[]bkid=request.getParameterValues("chkbkid");
		
		
		HttpSession hs=request.getSession(false);
		String provider_id=(String) hs.getAttribute("sessionKey");
		System.out.println(provider_id);
		String answer=request.getParameter("details");
		String empid=request.getParameter("employees");
		
		for(String b:bkid)
		{
			
			
			System.out.println("service id is "+b);
		}
       System.out.println("  Booking id is"+bkid);
		
		System.out.println("Response is "+answer);
		System.out.println("Employee id is "+empid);
		
		
		ProviderDao dao=new ProviderDao();
		int status=dao.confirmbooking(bkid,provider_id,answer,empid);
		if(status>0) 
		{
			/* System.out.println("Booking done sucessfully"); */
			request.setAttribute("msg",UserMessages.BOOKING_SERVICES);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/booking_request.jsp");//relative path
			rd.forward(request, response);//forward the request	
		}
		
	}

}
