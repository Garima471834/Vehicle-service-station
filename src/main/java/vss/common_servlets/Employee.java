package vss.common_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vss.beans.Employees;

import vss.dao.EmpDao;
import vss.utils.UserMessages;

/**
 * Servlet implementation class Employee
 */
@WebServlet("/Employee")
public class Employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employee() {
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
		String pid=request.getParameter("providerid");
	
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String empid=request.getParameter("empid");
		
		System.out.println("Provider ID is : "+pid);
		
		System.out.println("Employee Name is : "+name);
		System.out.println("Employee Email ID is : "+email);
		System.out.println("Employee contact number is : "+phone);
		
		Employees e=new Employees(pid,name,email,phone,empid);
	EmpDao dao=new EmpDao()	;
			int status=dao.addDetails(e);
	if(status>0)
	{
		request.setAttribute("msg",UserMessages.CLIENT_REGISTRATION);
		RequestDispatcher rd=request.getRequestDispatcher("/commonjsp/employee.jsp");
	rd.forward(request, response);//forward the request
	}
	else {
		request.setAttribute("msg",UserMessages.CLIENT_REGISTRATION);
		RequestDispatcher rd=request.getRequestDispatcher("/commonjsp/employee.jsp");
	rd.forward(request, response);//forward the request
	}
		
	}	
		
	}


