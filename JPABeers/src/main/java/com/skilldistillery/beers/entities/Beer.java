package com.skilldistillery.beers.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Beer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String description;
	
	private double abv;
	
	private int ibu;
	
	private String type;
	

	
	public Beer() {
		super();
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public double getAbv() {
		return abv;
	}



	public void setAbv(double abv) {
		this.abv = abv;
	}



	public int getIbu() {
		return ibu;
	}



	public void setIbu(int ibu) {
		this.ibu = ibu;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Beer Id: ");
		builder.append(id);
		builder.append(" Name: ");
		builder.append(name);
		builder.append(" Description: ");
		builder.append(description);
		builder.append(" ABV: ");
		builder.append(abv);
		builder.append(" IBU: ");
		builder.append(ibu);
		builder.append(" Type: ");
		builder.append(type);
		
		return builder.toString();
	}





	

}
