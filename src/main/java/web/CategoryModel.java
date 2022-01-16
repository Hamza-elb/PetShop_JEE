package web;

import java.util.ArrayList;
import java.util.List;

import metier.Category;

public class CategoryModel {
	
	private List<metier.Category> categorys = new ArrayList<Category>();

	public List<Category> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<metier.Category> categorys) {
		this.categorys = categorys;
	}

}
