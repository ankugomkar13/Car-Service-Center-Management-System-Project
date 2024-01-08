package main.java.com.dao.jdbcdao;

import java.sql.*;
import java.util.ArrayList;

import main.java.com.connection.JDBCBaseDAO;
import main.java.com.dao.UserProfileDAO;
import main.java.com.model.User;
public class JDBCUserProfileDAO extends JDBCBaseDAO implements UserProfileDAO
{

	public JDBCUserProfileDAO(Connection connection) {
		this.connection=connection;
	}

	@Override
	public int saveUser(User user) 
	{
		int response = 0;
		try
		{
			StringBuffer sqlQuery = new StringBuffer();
			
			sqlQuery.append("INSERT INTO user ");
			sqlQuery.append("(name,address,contact,gender,stateid,cityid,email,dob,vehicle_name,reg_date,last_modified,isadmine) ");
			sqlQuery.append("VALUES ");
			sqlQuery.append("(?,?,?,?,?,?,?,?,?,?,?,? )");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString(),Statement.RETURN_GENERATED_KEYS);
			ps.setString(1,user.getName());
			ps.setString(2,user.getAddress());
			ps.setString(3,user.getContact());
			ps.setString(4,user.getGender());
			ps.setInt(5,user.getStateid());
			ps.setInt(6,user.getCityid());
			ps.setString(7,user.getEmail());
			ps.setString(8,user.getDob());
			ps.setString(9,user.getVehicle_name());
			ps.setString(10,user.getReg_date());
			ps.setString(11,user.getLast_modified());
			ps.setInt(12,user.getIsadmin());
			
			response = ps.executeUpdate();
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return response;
	}


	
	@Override
	public ArrayList<User> getUserList() {
		ArrayList<User> userlist = new ArrayList<User>();
		try 
		{
			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append(
					"SELECT name,address,contact,gender,stateid,cityid,email,dob,reg_date,last_modified,vehicle_name,isadmin FROM user ;");
			
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setContact(rs.getString("contact"));
				user.setGender(rs.getString("gender"));
				user.setStateid(rs.getInt("stateid"));
				user.setCityid(rs.getInt("cityid"));
				user.setEmail(rs.getString("email"));
				user.setDob(rs.getString("dob"));
				user.setReg_date(rs.getString("reg_date"));
				user.setReg_date(rs.getString("last_modified"));
				user.setVehicle_name("vehicle_name");
				user.setIsadmin(rs.getInt("isadmin"));
				
				userlist.add(user);
				
				
			}
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return userlist;
	}

		@Override
	public int updateUser(User user){
	int response = 0;
	{
		try
		{
			StringBuffer sqlQuery = new StringBuffer(); 
			sqlQuery.append("UPDATE user SET ");
			sqlQuery.append("name = ?,address = ? ,contact = ?,gender = ?,stateid = ?,cityid = ?,email = ?,dob = ?,vehicle_name = ? ");
			sqlQuery.append("WHERE id = ?");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
		        ps.setString(1, user.getName());
		        ps.setString(2, user.getAddress());
		        ps.setString(3, user.getContact());
		        ps.setString(4, user.getGender());
		        ps.setInt(5,user.getStateid());
		        ps.setInt(6,user.getStateid());
		        ps.setString(7, user.getEmail());
		        ps.setString(8, user.getDob());
		        ps.setString(9,user.getVehicle_name());
		        ps.setInt(10,user.getId());
			
		        response = ps.executeUpdate();
		        
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return response;
	}}

	@Override
	public User findUserById(int id) {
		User user = new User();
		try 
		{
			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append(
					"SELECT id,name,address,contact,gender,stateid,cityid,email,dob,vehicle_name FROM user WHERE id=? ;");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setContact(rs.getString("contact"));
				user.setGender(rs.getString("gender"));
				user.setStateid(rs.getInt("stateid"));
				user.setCityid(rs.getInt("cityid"));
				user.setEmail(rs.getString("email"));
				user.setDob(rs.getString("dob"));
				user.setVehicle_name("vehicle_name");
			
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;
		
	}

	@Override
	public boolean checkUserCreds(String userid, String password) {
		boolean response = false;
		try {

			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append("SELECT id FROM user_creds");
			sqlQuery.append(" WHERE userid = ? AND password = ? ;");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setString(1,userid);
			ps.setString(2,password);
			ResultSet rs = ps.executeQuery();
			response = rs.next()?true:false;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return response;
	}

	@Override
	public int saveUserCreds(String userid, String password) {
		int response =0;
		try {
			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append("INSERT INTO user_creds ");
			sqlQuery.append("(userid,password)");
			sqlQuery.append("VALUES ");
			sqlQuery.append("(?,?);");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setString(1,userid);
			ps.setString(2,password);
			response = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	@Override
	public int updateDelectStatus(int id, int status) {
		int response = 0;
		try 
		{
			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append("DELETE FROM user");
			sqlQuery.append(" WHERE id = ? ;");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setInt(1,id);
			response = ps.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	@Override
	public User userbilldata() 
	{
		User user = new User();
		try 
		{
			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append(
					"SELECT id,name,address,contact,gender,stateid,cityid,email,dob,vehicle_name FROM user ");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setContact(rs.getString("contact"));
				user.setGender(rs.getString("gender"));
				user.setStateid(rs.getInt("stateid"));
				user.setCityid(rs.getInt("cityid"));
				user.setEmail(rs.getString("email"));
				user.setDob(rs.getString("dob"));
				user.setVehicle_name("vehicle_name");
			
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;
	}}
