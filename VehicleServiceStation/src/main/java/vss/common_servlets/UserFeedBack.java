package vss.common_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vss.beans.feedbacks;
/*import vss.beans.Feedbacks;*/
import vss.dao.UserDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class UserFeedBack
 */
@WebServlet("/UserFeedBack")
public class UserFeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/* private static final Object UserMessage = null; */

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserFeedBack() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 String ratings=request.getParameter("rating"); 
		int r=Integer.parseInt(ratings);	 
        String name=request.getParameter("username");
        String email=request.getParameter("email");
        String remarks=request.getParameter("remarks");
  
  
  System.out.println("ratings is"+ratings); 
   
  System.out.println("name is "+name);
  
  System.out.println("email is "+email);
  System.out.println("remarks is "+remarks);
  
  
  java.util.Date d=new java.util.Date();
  java.sql.Date todayDate=new java.sql.Date(d.getTime());
  
  
  
  feedbacks f=new feedbacks(r,name,email,remarks,todayDate); //Creating Dao class object
 UserDao dao=new UserDao();
 
 int status= dao.addFeedbacks(f);//calling dao class method and passing bean class object
  
  if(status>0)
  { 
	  request.setAttribute("msg",UserMessages.FEEDBACK_MESSAGE);
  
  
  RequestDispatcher rd=request.getRequestDispatcher("/commonjsp/feedback.jsp");//relative path
  rd.forward(request, response); //forward the request } 
  }
 
  
}
		/*String username=request.getParameter("username");
		String emailid=request.getParameter("email");
	    String num=request.getParameter("cnum");
		String comment=request.getParameter("textcomment");
		
		 * String rating=request.getParameter("rating");
		 *  int r=Integer.parseInt(rating);
		 
		
		System.out.println("User Name is : "+username);
		System.out.println("User Email is : "+emailid);
		System.out.println("User Phone Number is : "+num);
		System.out.println("FeedBack Given By User : "+comment);
		
		
		 * java.util.Date d=new java.util.Date(); java.sql.Date todayDate=new
		 * java.sql.Date(d.getTime());
		 
		feedbacks f=new feedbacks(username, emailid, num, comment);
		
		UserDao dao=new UserDao();
		int status=dao.addFeedbacks(f);
		if(status>0) {
			request.setAttribute("msg",UserMessages.FEEDBACK_MESSAGE);
			
			RequestDispatcher rd=request.getRequestDispatcher("/commonjsp/feedback.jsp");//relative path
			rd.forward(request, response);//forward the request
			
		}
		
	}
*/
}