package main.java.com.dao.jdbcdao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import main.java.com.connection.JDBCBaseDAO;
import main.java.com.dao.StateDAO;
import main.java.com.model.State;

public class JdbcStateDao extends JDBCBaseDAO implements StateDAO
{
	public JdbcStateDao(Connection connection) 
	{
		this.connection = connection;
	}
	
	@Override
	public ArrayList<State> getStateList() {
		ArrayList<State> statelist = new ArrayList<State>();
		try 
		{
			String sqlQuery ="SELECT id,state_name FROM state";
			PreparedStatement ps= connection.prepareStatement(sqlQuery);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				State state = new State();
				state.setId(rs.getInt("id"));
				state.setStatename(rs.getString("state_name"));
				statelist.add(state);
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return statelist;
	}

	
}
