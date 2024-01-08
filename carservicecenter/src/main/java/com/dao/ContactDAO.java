package main.java.com.dao;

import java.util.ArrayList;

import main.java.com.model.Contact;
import main.java.com.model.State;

public interface ContactDAO 
{
	public int saveUser(Contact contact);
	public ArrayList<Contact> getrequestList();
}
