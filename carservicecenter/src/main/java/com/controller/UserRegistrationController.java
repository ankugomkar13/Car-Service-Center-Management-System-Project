package main.java.com.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.UserProfileDAO;
import main.java.com.dao.jdbcdao.JDBCUserProfileDAO;
import main.java.com.model.User;

public class UserRegistrationController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest request,HttpServletResponse response)
	{
		Connection connection = null;
		try { 
			//getParameter having String return type
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String contact = request.getParameter("contact");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String stateid = request.getParameter("stateid");
			String cityid = request.getParameter("cityid");
			String date_of_birth = request.getParameter("dob");
			String userid = request.getParameter("userid");
			String vehiclename = request.getParameter("vehiclename");
			String password = request.getParameter("password");
			String isadmin = request.getParameter("isadmin");

			
			User user = new User();
			user.setName(name);
			user.setAddress(address);
			user.setContact(contact);
			user.setEmail(email);
			user.setUserid(userid);
			user.setGender(gender);
			user.setPassword(password);
			user.setDob(date_of_birth);
			user.setVehicle_name(vehiclename);
			user.setStateid(Integer.parseInt(stateid));
			user.setCityid(Integer.parseInt(cityid));
			user.setIsadmin(Integer.parseInt(isadmin));
		
			LocalDateTime currentdatetime = LocalDateTime.now();
			DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
			String formatDateTime = currentdatetime.format(format);
			
			user.setReg_date(formatDateTime);
			user.setLast_modified(formatDateTime);
		
			
			connection = ConnectionProvider.getConnection();
			UserProfileDAO userProfileDAO = new JDBCUserProfileDAO(connection);
			
			int status =  userProfileDAO.saveUser(user);
			if(status == 1)
			{
				status = userProfileDAO.saveUserCreds(userid,password);
				if(status == 1)
				{
					RequestDispatcher rd = request.getRequestDispatcher("pages/login.jsp");
					rd.include(request,response);
				}
				else
				{
					PrintWriter out = response.getWriter();
					out.append("<b>Failed to register ,please try after sometime...</b>");
					RequestDispatcher rd = request.getRequestDispatcher("/registrationform");
					rd.include(request,response);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
