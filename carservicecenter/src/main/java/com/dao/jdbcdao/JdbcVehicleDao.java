package main.java.com.dao.jdbcdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import main.java.com.connection.JDBCBaseDAO;
import main.java.com.dao.VehicleDAO;
import main.java.com.model.City;
import main.java.com.model.User;
import main.java.com.model.Vehicle;

public class JdbcVehicleDao extends JDBCBaseDAO implements VehicleDAO  {

	public JdbcVehicleDao(Connection connection) {
		this.connection = connection;

	}
	@Override
	public ArrayList<Vehicle> getvehicleList() {
		ArrayList<Vehicle> vehiclelist = new ArrayList<Vehicle>();
		try 
		{
			String sqlQuery ="SELECT vehicle_id,vehicle_model,vehicle_owner_name,vehicle_mobile,vehicle_email,vehicle_company,vehicle_in_date,vehicle_out_date FROM vehicle";
			PreparedStatement ps= connection.prepareStatement(sqlQuery);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Vehicle vehicle = new Vehicle();
				vehicle.setVehicle_id(rs.getInt("vehicle_id"));
				vehicle.setVehicle_model(rs.getString("vehicle_model"));
				vehicle.setVehicle_owner_name(rs.getString("vehicle_owner_name"));
				vehicle.setVehicle_mobile(rs.getString("vehicle_mobile"));
				vehicle.setVehicle_email(rs.getString("vehicle_email"));
				vehicle.setVehicle_company(rs.getString("vehicle_company"));
				vehicle.setCheck_in_data(rs.getString("vehicle_in_date"));
				vehicle.setCheck_out_date(rs.getString("vehicle_out_date") );
				
				vehiclelist.add(vehicle);
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return vehiclelist;
	}

	@Override
	public int savevehicle(Vehicle vehicle) {
		int response = 0;
		try
		{
			StringBuffer sqlQuery = new StringBuffer();
			
			sqlQuery.append("INSERT INTO vehicle ");
			sqlQuery.append("(vehicle_model,vehicle_owner_name,vehicle_mobile,vehicle_email,vehicle_company,vehicle_in_date,vehicle_out_date) ");
			sqlQuery.append("VALUES ");
			sqlQuery.append("(?,?,?,?,?,?,? )");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setString(1,vehicle.getVehicle_model());
			ps.setString(2,vehicle.getVehicle_owner_name());
			ps.setString(3,vehicle.getVehicle_mobile());
			ps.setString(4,vehicle.getVehicle_email());
			ps.setString(5,vehicle.getVehicle_company());
			ps.setString(6,vehicle.getCheck_in_data());
			ps.setString(7,vehicle.getCheck_out_date());
		
			response = ps.executeUpdate();
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return response;
	}

	@Override
	public int updatevehicle(Vehicle vehicle) 
	{
		int response = 0;
		{
			try
			{
				StringBuffer sqlQuery = new StringBuffer(); 
				sqlQuery.append("UPDATE vehicle SET ");
				sqlQuery.append("vehicle_model = ?,vehicle_owner_name = ?,vehicle_mobile = ?,vehicle_email = ?,vehicle_company = ?,vehicle_in_date = ?,vehicle_out_date = ? ");
				sqlQuery.append("WHERE vehicle_id = ?");
				PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			        ps.setString(1, vehicle.getVehicle_model());
			        ps.setString(2,vehicle.getVehicle_owner_name() );
			        ps.setString(3,vehicle.getVehicle_mobile());
			        ps.setString(4, vehicle.getVehicle_email());
			        ps.setString(5,vehicle.getVehicle_company());
			        ps.setString(6,vehicle.getCheck_in_data());
			        ps.setString(7,vehicle.getCheck_out_date());
			        ps.setInt(8,vehicle.getVehicle_id());
				
			        response = ps.executeUpdate();
			        
			}
			catch (Exception e) {
				System.out.println(e);
			}
			return response;
		}}


	@Override
	public Vehicle findvehicleById(int vehicle_id) {
		 Vehicle vehicle = new  Vehicle();
		try 
		{
			StringBuffer sqlQuery = new StringBuffer();
			sqlQuery.append(
					"vehicle_id,vehicle_model,vehicle_owner_name,vehicle_mobile,vehicle_email,vehicle_company,vehicle_in_date,vehicle_out_date FROM vehicle WHERE vehicle_id = ? ;");
			PreparedStatement ps = connection.prepareStatement(sqlQuery.toString());
			ps.setInt(1,vehicle_id);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				vehicle.setVehicle_id(rs.getInt("vehicle_id"));
				vehicle.setVehicle_model(rs.getString("vehicle_model"));
				vehicle.setVehicle_owner_name(rs.getString("vehicle_owner_name"));
				vehicle.setVehicle_mobile(rs.getString("vehicle_mobile"));
				vehicle.setVehicle_email(rs.getString("vehicle_email"));
				vehicle.setVehicle_company(rs.getString("vehicle_company"));
				vehicle.setCheck_in_data(rs.getString("vehicle_in_date"));
				vehicle.setCheck_out_date(rs.getString("vehicle_out_date") );
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vehicle;
	}

}
