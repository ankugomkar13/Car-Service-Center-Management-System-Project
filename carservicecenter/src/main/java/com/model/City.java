package main.java.com.model;

public class City 
{
	private int id;
	private int stateid;
	private String cityname;
	
	
	@Override
	public String toString() {
		return "City [id=" + id + ", stateid=" + stateid + ", cityname=" + cityname + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setStateid(int stateid) {
		this.stateid = stateid;
	}
	public String getcityName() {
		return cityname;
	}
	public void setcityName(String cityname) {
		this.cityname = cityname;
	}
	
	
	
}
