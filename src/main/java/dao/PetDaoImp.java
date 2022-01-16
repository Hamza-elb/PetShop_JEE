package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.Pet;

public class PetDaoImp implements IPetDao {

	
	public List<Pet> getPets() {
		
		List<Pet> pets = new ArrayList<Pet>();

	    Connection connection = SingletonConnection.getConnection();
	    try {
	      PreparedStatement ps = connection.prepareStatement("SELECT * FROM tbl_pet");
	      ResultSet rs = ps.executeQuery();

	      while (rs.next()) {
	        Pet pet = new Pet();
	        pet.setPet_name(rs.getString("pet_name"));
	        pet.setPet_id(rs.getInt("pet_id"));
	        pet.setPet_description(rs.getString("pet_description"));
	        pet.setPet_category_id(rs.getInt("pet_category_id"));
	        pet.setPet_images(rs.getString("pet_images"));
	        pet.setPet_status(rs.getString("pet_status"));
	        pet.setPrice(rs.getDouble("price"));
	        pets.add(pet);

	      }
	      ps.close();

	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	    return pets;
	  }
	

}
