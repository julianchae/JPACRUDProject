package com.skilldistillery.beers.data;

import java.util.List;

import com.skilldistillery.beers.entities.Beer;

public interface BeersDAO {
	Beer findbyId(int id);
	
	Beer findByName(String name);
	
	List<Beer>findByType(String type);
	
	Beer addBeer(Beer beer);
	
	Beer deleteBeer(int id);
	
	List <Beer>listAll();
	
	
	
}
