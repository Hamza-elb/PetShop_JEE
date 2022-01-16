package web;

import java.util.ArrayList;
import java.util.List;

import metier.Pet;

public class PetModel {
	
	private List<Pet> pets = new ArrayList<Pet>();

	public List<Pet> getPets() {
		return pets;
	}

	public void setPets(List<Pet> pets) {
		this.pets = pets;
	}

}
                     