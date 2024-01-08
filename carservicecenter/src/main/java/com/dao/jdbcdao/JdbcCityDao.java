package main.java.com.dao.jdbcdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import main.java.com.dao.CityDAO;
import main.java.com.model.City;

public class JdbcCityDao extends main.java.com.connection.JDBCBaseDAO implements CityDAO 
{
	public JdbcCityDao(Connection connection) {
		this.connection = connection;
	}
	@Override
	public ArrayList<City> getCityList() {
		ArrayList<City> citylist = new ArrayList<City>();
		try 
		{
			String sqlQuery ="SELECT city_id,stateid,city_name FROM city";
			PreparedStatement ps= connection.prepareStatement(sqlQuery);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				City city = new City();
				city.setId(rs.getInt("city_id"));
				city.setStateid(rs.getInt("stateid"));
				city.setcityName(rs.getString("city_name"));
				citylist.add(city);
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return citylist;
	}

	

}
