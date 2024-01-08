package main.java.com.controller;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.CityDAO;
import main.java.com.dao.StateDAO;
import main.java.com.dao.jdbcdao.JdbcCityDao;
import main.java.com.dao.jdbcdao.JdbcStateDao;
import main.java.com.model.City;
import main.java.com.model.State;

public class RegistrationFormController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		Connection connection = null;
		try 
		{
			connection = ConnectionProvider.getConnection();
			CityDAO cityDAO = new JdbcCityDao(connection);
			ArrayList<City> citylist = cityDAO.getCityList();
			request.setAttribute("citylist",citylist);
			StateDAO stateDAO = new JdbcStateDao(connection);
			ArrayList<State> statelist = stateDAO.getStateList();
			request.setAttribute("statelist",statelist);
			RequestDispatcher rd = request.getRequestDispatcher("pages/registrationform.jsp");
			rd.include(request,response);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
