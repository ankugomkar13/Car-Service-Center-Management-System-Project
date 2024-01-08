package main.java.com.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.UserProfileDAO;
import main.java.com.dao.jdbcdao.JDBCUserProfileDAO;

public class LoginController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		Connection connection = null;
		try 
		{
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			connection = ConnectionProvider.getConnection();
			
			UserProfileDAO userProfileDAO = new JDBCUserProfileDAO(connection);
			boolean isUserExist = userProfileDAO.checkUserCreds(userid,password);
			
			if(!isUserExist)
			{
				PrintWriter out = response.getWriter();
				out.append("<b><center>Wrong userid or Password</center></b>");
				RequestDispatcher rd = request.getRequestDispatcher("pages/login.jsp");
				rd.forward(request,response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("pages/home.jsp");
				rd.include(request,response);
			}
		} 
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		finally
		{
			try 
			{
				connection.close();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
	}
	}
