package main.java.com.controller;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.ContactDAO;
import main.java.com.dao.ServiceDAO;
import main.java.com.dao.VehicleDAO;
import main.java.com.dao.jdbcdao.JdbcContactDao;
import main.java.com.dao.jdbcdao.JdbcSerivceDao;
import main.java.com.dao.jdbcdao.JdbcVehicleDao;
import main.java.com.model.Contact;
import main.java.com.model.Service;
import main.java.com.model.Vehicle;

public class ServiceController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		try {
			RequestDispatcher rd = request.getRequestDispatcher("pages/service.jsp");
			rd.include(request,response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		Connection connection = null;
		try 
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String contact = request.getParameter("phone");
			String indate = request.getParameter("check-in-date");
			String outdate = request.getParameter("check-out-date");
			String carmodel = request.getParameter("car");
			String carcmp = request.getParameter("carcmp");
			String service1 = request.getParameter("service1");
			String service2 = request.getParameter("service2");
			String service3 = request.getParameter("service3");
			String service4 = request.getParameter("service4");
			String service5 = request.getParameter("service5");
			String service6 = request.getParameter("service6");
			String service7 = request.getParameter("service7");
			String addreq = request.getParameter("additional");
			
			Service service = new Service();
			
			service.setService1_name(service1);
			service.setService2_name(service2);
			service.setService3_name(service3);
			service.setService4_name(service4);
			service.setService5_name(service5);
			service.setService6_name(service6);
			service.setService7_name(service7);
			service.setAdditional_service(addreq);
			
			Vehicle vehicle = new Vehicle();
			vehicle.setVehicle_owner_name(name);
			vehicle.setVehicle_email(email);
			vehicle.setVehicle_mobile(contact);
			vehicle.setCheck_in_data(indate);
			vehicle.setCheck_out_date(outdate);
			vehicle.setVehicle_model(carmodel);
			vehicle.setVehicle_company(carcmp);
			
			
			connection = ConnectionProvider.getConnection();
			ServiceDAO serviceDao = new JdbcSerivceDao(connection);
			int status1 = serviceDao.saveService(service);
			
			VehicleDAO vehicleDao = new JdbcVehicleDao(connection);
			int status2 = vehicleDao.savevehicle(vehicle);
			
			
			if(status1 == 1)
			{

				if(status2 == 1)
				{
					RequestDispatcher rd = request.getRequestDispatcher("pages/bill.jsp");
					rd.forward(request, response);
				}
			}}
		catch (Exception e) {
			e.printStackTrace();
		}}}
	

