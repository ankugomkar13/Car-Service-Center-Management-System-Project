package main.java.com.controller;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.ContactDAO;
import main.java.com.dao.jdbcdao.JdbcContactDao;
import main.java.com.model.Contact;

public class ContactController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		try {
			RequestDispatcher rd = request.getRequestDispatcher("pages/contact.jsp");
			rd.include(request,response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		Connection connection = null;
		try 
		{
			String reqname = request.getParameter("request_name");
			String reqemail = request.getParameter("request_email");
			String reqcontact = request.getParameter("request_phone");
			String reqmessage = request.getParameter("request_message");
			
			Contact contact = new Contact();
			contact.setContact_name(reqname);
			contact.setContact_email(reqemail);
			contact.setContact_mobile(reqcontact);
			contact.setContact_message(reqmessage);
			
			connection = ConnectionProvider.getConnection();
			ContactDAO contactDao = new JdbcContactDao(connection);
			int status = contactDao.saveUser(contact);
			
			if(status == 1)
			{
				
				RequestDispatcher rd1 = request.getRequestDispatcher("pages/thanks.jsp");
				rd1.forward(request, response);
			}
			else
			{
				PrintWriter out = response.getWriter();
				out.append("<b><center>Fail To Contact Us Try After SomeTime</center></b>");
				RequestDispatcher rd1 = request.getRequestDispatcher("pages/contact.jsp");
				rd1.forward(request, response);
			}

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
