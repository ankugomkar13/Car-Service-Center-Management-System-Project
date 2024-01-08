package main.java.com.dao;

import java.util.ArrayList;

import main.java.com.model.User;

public interface UserProfileDAO 
{
	public ArrayList<User> getUserList();
	
	public int saveUser(User user);
	
	public int updateUser(User user);
	
	public User findUserById(int id);
	
	public boolean checkUserCreds(String userid,String password);
	
	public int saveUserCreds(String userid,String password);
	
	public int updateDelectStatus(int id,int status);
	
	public User userbilldata();
}
