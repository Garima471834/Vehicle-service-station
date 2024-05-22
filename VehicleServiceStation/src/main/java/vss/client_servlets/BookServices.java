package vss.client_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vss.beans.BookingServices;
import vss.dao.ClientDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class BookServices
 */
@WebServlet("/BookServices")
public class BookServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServices() {
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
		String[]services=request.getParameterValues("service");
		String providerid=request.getParameter("pid");
		HttpSession hs=request.getSession(false);
		String client_ID=(String) hs.getAttribute("sessionKey");
		
		System.out.println("client Id is"+client_ID);
		int i=0;
		for(i=0;i<services.length;i++) {
			
		
		System.out.println("service name"+services[i]);
		System.out.println("provider id is"+providerid);
		}
		java.util.Date d=new java.util.Date();
		java.sql.Date todayDate=new java.sql.Date(d.getTime());
	
		
		
		BookingServices bs=new BookingServices(client_ID, providerid, services, todayDate);
		
		
		
		
        ClientDao dao=new ClientDao();
		
		int status=dao.bookservices( bs);
		//if()
		
		if(status>0) 
		{
			/* System.out.println("Booking done sucessfully"); */
			request.setAttribute("msg",UserMessages.BOOKING_SERVICES);
			RequestDispatcher rd=request.getRequestDispatcher("/client/view_services.jsp");//relative path
			rd.forward(request, response);//forward the request	
		}
	}

}
