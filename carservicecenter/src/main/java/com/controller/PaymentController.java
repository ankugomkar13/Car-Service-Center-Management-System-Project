package main.java.com.controller;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.connection.ConnectionProvider;
import main.java.com.dao.PaymentDAO;
import main.java.com.dao.jdbcdao.JdbcPaymentDao;
import main.java.com.model.Payment;

public class PaymentController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest  request,HttpServletResponse response)
	{
		try {
			RequestDispatcher rd = request.getRequestDispatcher("pages/payment.jsp");
			rd.include(request,response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Connection connection = null;
		try 
		{
			String card_holder = request.getParameter("cardholder");
			String card_no = request.getParameter("cardno");
			String exp_date = request.getParameter("expdate");
			String cvv = request.getParameter("cvv");
			
			Payment payment = new Payment();
			payment.setCard_holder_name(card_holder);
			payment.setCard_number(card_no);
			payment.setExp_date(exp_date);
			payment.setCcv(cvv);
			
			connection = ConnectionProvider.getConnection();
			PaymentDAO paymentdao = new JdbcPaymentDao(connection);
			int status = paymentdao.savePayment(payment);
			
			
			if(status == 1)
			{
				
				RequestDispatcher rd1 = request.getRequestDispatcher("pages/thanks.jsp");
				rd1.forward(request, response);
			}
			else
			{
				PrintWriter out = response.getWriter();
				out.append("<b><center>Fail To Pay Try After SomeTime</center></b>");
				RequestDispatcher rd1 = request.getRequestDispatcher("pages/payment.jsp");
				rd1.forward(request, response);
			}
			
			
	}catch (Exception e) {
			e.printStackTrace();
		}

}}
