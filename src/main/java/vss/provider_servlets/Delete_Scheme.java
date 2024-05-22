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
 * Servlet implementation class Delete_Scheme
 */
@WebServlet("/Delete_Scheme")
public class Delete_Scheme extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_Scheme() {
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
		String[]schemeid=request.getParameterValues("chkid");
		HttpSession hs=request.getSession(false);
		String provider_id=(String) hs.getAttribute("sessionKey");
		System.out.println(provider_id);
		ProviderDao dao=new ProviderDao();
		int status=dao.deleteScheme(schemeid,provider_id);
		if(status>0) 
		{
			request.setAttribute("msg",UserMessages.BOOKING_SERVICES);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/offers_scheme2.jsp");//relative path
			rd.forward(request, response);//forward the request	
		}
		
	}

}
