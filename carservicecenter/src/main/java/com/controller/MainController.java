package main.java.com.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		try {
			RequestDispatcher rd = request.getRequestDispatcher("pages/login.jsp");
			rd.include(request,response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
