package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import metier.User;

public class UserDaoImp implements IUserDao {

	
	public User regester(User u) {
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("INSERT INTO tbl_user (username, password, email, phone, Company, Adrres) VALUES (?,?,?,?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPhone());
			ps.setString(5, u.getCompany());
			ps.setString(6, u.getAdrres());
			ps.executeUpdate();
			PreparedStatement ps2 = connection.prepareStatement("SELECT MAX(user_id) AS MAX_ID FROM tbl_user");
			ResultSet rs = ps2.executeQuery();
			if(rs.next()) {
				u.setUser_id(rs.getInt("MAX_ID"));
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}

	
	public int login(String user, String pass) {
		int id =-1;
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT user_id AS MAX_ID FROM tbl_user where username like ? and  password like ?");
			ps.setString(1, user);
			ps.setString(2, pass);
		
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				id=rs.getInt("MAX_ID");
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return id;
	}

	
	public String select(int id) {
		String name="";
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT  username FROM tbl_user where user_id = ?");
			ps.setInt(1, id);
			
		
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				name=rs.getString("username");
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return name;
	}
	

}
