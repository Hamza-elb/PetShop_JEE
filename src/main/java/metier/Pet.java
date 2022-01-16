package metier;

import java.io.Serializable;

public class Pet implements Serializable {

	int pet_id;
	private String pet_description;
	private int pet_category_id;
	private String pet_images;
	private String pet_status;
	private double price;
	private String pet_name;

	public Pet() {

	}

	public Pet(int pet_id, String pet_description, int pet_category_id, String pet_images, String pet_status,
			double price, String pet_name) {
		super();
		this.pet_id = pet_id;
		this.pet_description = pet_description;
		this.pet_category_id = pet_category_id;
		this.pet_images = pet_images;
		this.pet_status = pet_status;
		this.price = price;
		this.pet_name = pet_name;
	}

	public int getPet_id() {
		return pet_id;
	}

	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}

	public String getPet_description() {
		return pet_description;
	}

	public void setPet_description(String pet_description) {
		this.pet_description = pet_description;
	}

	public int getPet_category_id() {
		return pet_category_id;
	}

	public void setPet_category_id(int pet_category_id) {
		this.pet_category_id = pet_category_id;
	}

	public String getPet_images() {
		return pet_images;
	}

	public void setPet_images(String pet_images) {
		this.pet_images = pet_images;
	}

	public String getPet_status() {
		return pet_status;
	}

	public void setPet_status(String pet_status) {
		this.pet_status = pet_status;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getPet_name() {
		return pet_name;
	}

	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}

}
