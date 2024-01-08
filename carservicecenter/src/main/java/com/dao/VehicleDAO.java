package main.java.com.dao;

import java.util.ArrayList;

import main.java.com.model.User;
import main.java.com.model.Vehicle;

public interface VehicleDAO 
{
	public ArrayList<Vehicle> getvehicleList();
	
	public int savevehicle(Vehicle vehicle);
	
	public int updatevehicle(Vehicle vehicle );
	
	public Vehicle findvehicleById(int vehicle_id);
}
