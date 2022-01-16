package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.Order;

public class OrderDaoImp implements IOrderDao {

	
	public List<Order> getOrders() {
		 List < Order > orders = new ArrayList < Order > ();

		    Connection connection = SingletonConnection.getConnection();
		    try {
		      PreparedStatement ps = connection.prepareStatement("SELECT * FROM `order`");
		      ResultSet rs = ps.executeQuery();

		      while (rs.next()) {
		        Order order = new Order();
		        order.setUser_id(rs.getInt("user_id"));
		        order.setPet_id(rs.getInt("pet_id"));
		        order.setOrder_id(rs.getInt("order_id"));

		        orders.add(order);

		      }
		      ps.close();

		    } catch (SQLException e) {
		      e.printStackTrace();
		    }
		    return orders;
	}

	
	public void insert(int user_id, int pet_id) {
		Connection connection = SingletonConnection.getConnection();
	    try {
	      PreparedStatement ps = connection.prepareStatement("INSERT INTO `order` ( `user_id`, `pet_id`) VALUES (?,?)");

	      ps.setInt(1, user_id);
	      ps.setInt(2, pet_id);
	      ps.executeUpdate();
	      System.out.println("insert");
	      ps.close();

	    } catch (SQLException e) {
	      e.printStackTrace();
	    }

	  
	}

}
