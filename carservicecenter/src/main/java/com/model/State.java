package main.java.com.model;

public class State 
{
	private int id;
	private String statename;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getStatename() {
		return statename;
	}
	public void setStatename(String statename) {
		this.statename = statename;
	}
	@Override
	public String toString() {
		return "State [id=" + id + ", statename=" + statename + "]";
	}
	
	
	
	
}
