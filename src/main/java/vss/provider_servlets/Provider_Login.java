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
 * Servlet implementation class Provider_Login
 */
@WebServlet("/Provider_Login")
public class Provider_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Provider_Login() {
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
		String uid=request.getParameter("username");
		String pass=request.getParameter("password");
		
		System.out.println("User ID is : "+uid);
		System.out.println("User Password is :"+pass);
		
		ProviderDao dao=new ProviderDao();
		boolean status=dao.login(uid, pass);
		if(status==true) {
			HttpSession hs=request.getSession();//creating new session
			//String sessionId=hs.getId();
			//System.out.println("session id is"+sessionId);
			
			hs.setAttribute("sessionKey", uid);//binding admin id in session
			hs.setAttribute("role", "provider");
			
			
			
			
			response.sendRedirect("/VehicleServiceStation/provider/provider_home.jsp");
		}
		else {
			request.setAttribute("msg",UserMessages.LOGIN_ERROR);
			RequestDispatcher rd=request.getRequestDispatcher("/provider/provider_login.jsp");//relative path
			rd.forward(request, response);//forward the request
			
		}
	}

}
