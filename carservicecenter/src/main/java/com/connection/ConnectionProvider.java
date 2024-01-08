package main.java.com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

import main.java.com.constants.Constant;
public class ConnectionProvider 
{
	public static Connection getConnection()
	{
		Connection connection=null;
	try {
		Class.forName(Constant.MySql_Driver);
		connection = DriverManager.getConnection(Constant.url,Constant.userId,Constant.password);
		
	} catch (Exception e) {
		e.getStackTrace();
	}
	return connection; 
	}
}
