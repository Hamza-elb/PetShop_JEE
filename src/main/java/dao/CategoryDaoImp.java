package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.Category;

public class CategoryDaoImp implements ICategoryDao {

	
	public List<Category> getCategorys() {
		List < Category > categorys = new ArrayList < Category > ();

	    Connection connection = SingletonConnection.getConnection();
	    try {
	      PreparedStatement ps = connection.prepareStatement("SELECT * FROM tbl_pet_category");
	      ResultSet rs = ps.executeQuery();
	      while (rs.next()) {
	        Category category = new Category();
	        category.setPet_category_id(rs.getInt("pet_category_id"));
	        category.setPet_category_name(rs.getString("pet_category_name"));
	        categorys.add(category);
	      }
	      ps.close();

	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	    return categorys;
	  }

}
