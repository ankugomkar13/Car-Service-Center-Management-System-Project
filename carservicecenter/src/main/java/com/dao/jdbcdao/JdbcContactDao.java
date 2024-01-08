package main.java.com.dao.jdbcdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import main.java.com.connection.JDBCBaseDAO;
import main.java.com.dao.ContactDAO;
import main.java.com.model.Contact;
import main.java.com.model.State;

public class JdbcContactDao extends JDBCBaseDAO implements ContactDAO
{
	public JdbcContactDao(Connection connection) {
		this.connection = connection;
	}

	@Override
	public int saveUser(Contact contact) {
		int response = 0;
		try {
				StringBuffer sqlQuery = new StringBuffer();
			
			sqlQuery.append("INSERT INTO contact_request ");
			sqlQuery.append("(request_name,request_email,request_mobile,request_message) ");
			sqlQuery.append("VALUES ");
			sqlQuery.append("(?,?,?,?)");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setString(1,contact.getContact_name());
			ps.setString(2,contact.getContact_email());
			ps.setString(3,contact.getContact_mobile());
			ps.setString(4,contact.getContact_message());
			
			response = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return  response ;
	}

	@Override
	public ArrayList<Contact> getrequestList() {
		ArrayList<Contact> requestlist = new ArrayList<Contact>();
		try 
		{
			String sqlQuery ="SELECT contact_id,request_name,request_email,request_mobile,request_message FROM contact_request";
			PreparedStatement ps= connection.prepareStatement(sqlQuery);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Contact contact = new Contact();
				
				
				contact.setContact_id(rs.getInt("contact_id"));
				contact.setContact_name(rs.getString("request_name"));
				contact.setContact_email(rs.getString("request_email"));
				contact.setContact_mobile(rs.getString("request_mobile"));
				contact.setContact_message(rs.getString("request_message "));
				
				requestlist.add(contact);
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return requestlist;
	
	}
	
	
}
