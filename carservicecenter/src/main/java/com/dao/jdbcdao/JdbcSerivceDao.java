package main.java.com.dao.jdbcdao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import main.java.com.connection.JDBCBaseDAO;
import main.java.com.dao.ServiceDAO;
import main.java.com.model.Service;

public class JdbcSerivceDao extends JDBCBaseDAO implements ServiceDAO
{
	public JdbcSerivceDao(Connection connection) {
		this.connection = connection;
	}
	@Override
	public int saveService(Service service) 
	{
		int response = 0;
		try {
				StringBuffer sqlQuery = new StringBuffer();
			
			sqlQuery.append("INSERT INTO services ");
			sqlQuery.append("(services_description,service1,service2,service3,service4,service5,service6,service7) ");
			sqlQuery.append("VALUES ");
			sqlQuery.append("(?,?,?,?,?,?,?,?)");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setString(1,service.getAdditional_service());
			ps.setString(2,service.getService1_name());
			ps.setString(3,service.getService2_name());
			ps.setString(4,service.getService3_name());
			ps.setString(5,service.getService4_name());
			ps.setString(6,service.getService5_name());
			ps.setString(7,service.getService6_name());
			ps.setString(8,service.getService7_name());
			
			
			response = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return  response ;
	}
	
}
