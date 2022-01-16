package metier;

import java.io.Serializable;

public class Category implements Serializable {
	
	int pet_category_id;
	String pet_category_name;
	
	
	public Category() {

	}


	public Category(int pet_category_id, String pet_category_name) {
		super();
		this.pet_category_id = pet_category_id;
		this.pet_category_name = pet_category_name;
	}


	public int getPet_category_id() {
		return pet_category_id;
	}


	public void setPet_category_id(int pet_category_id) {
		this.pet_category_id = pet_category_id;
	}


	public String getPet_category_name() {
		return pet_category_name;
	}


	public void setPet_category_name(String pet_category_name) {
		this.pet_category_name = pet_category_name;
	}
	
	
	
	

}
