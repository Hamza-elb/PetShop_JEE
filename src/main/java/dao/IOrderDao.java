package dao;

import java.util.List;

import metier.Order;

public interface IOrderDao {
	
	public List < Order > getOrders();
	
	public void insert(int user_id, int pet_id);

}
