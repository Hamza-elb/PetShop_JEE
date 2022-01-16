package dao;

import metier.User;

public interface IUserDao {
	
	public User regester(User u);
	
	public int login(String user, String pass);
	
	public String select(int id);

}
