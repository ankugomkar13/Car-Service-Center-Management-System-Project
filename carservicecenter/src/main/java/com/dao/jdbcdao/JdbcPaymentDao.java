package main.java.com.dao.jdbcdao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import main.java.com.connection.JDBCBaseDAO;
import main.java.com.dao.PaymentDAO;
import main.java.com.model.Payment;

public class JdbcPaymentDao extends JDBCBaseDAO implements PaymentDAO
{
	public JdbcPaymentDao(Connection connection) {
		this.connection = connection;
	}

	@Override
	public int savePayment(Payment payment) {
		int response=0;
		try {
			StringBuffer sqlQuery = new StringBuffer();
		
		sqlQuery.append("INSERT INTO payment ");
		sqlQuery.append("(card_name,card_number,exp_date,ccv) ");
		sqlQuery.append("VALUES ");
		sqlQuery.append("(?,?,?,?)");
		PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
		ps.setString(1,payment.getCard_holder_name());
		ps.setString(2,payment.getCard_number());
		ps.setString(3,payment.getExp_date());
		ps.setString(4,payment.getCcv());
		
		response = ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return  response ;
}


}
