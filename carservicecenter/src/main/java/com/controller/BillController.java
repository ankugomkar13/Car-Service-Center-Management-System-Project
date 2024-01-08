package main.java.com.controller;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.UserProfileDAO;
import main.java.com.dao.jdbcdao.JDBCUserProfileDAO;
import main.java.com.model.User;



public class BillController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		Connection connection = null;
		try 
		{
			connection = ConnectionProvider.getConnection();
			UserProfileDAO userProfileDAO = new JDBCUserProfileDAO(connection);
			ArrayList<User> userlist = userProfileDAO.getUserList();
			request.setAttribute("userlist",userlist);
			RequestDispatcher rd = request.getRequestDispatcher("pages/bill1.jsp");
			rd.include(request, response);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
}
}
