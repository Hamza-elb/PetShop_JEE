package metier;

import java.io.Serializable;

public class Order implements Serializable {
	
	private int order_id;
	private int user_id;
	private int pet_id;
	
	public Order() {
	
	}

	public Order(int order_id, int user_id, int pet_id) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.pet_id = pet_id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getPet_id() {
		return pet_id;
	}

	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	
	

}
