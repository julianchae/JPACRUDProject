package com.skilldistillery.beers.data;

import com.skilldistillery.beers.entities.Beer;

public interface BeersDAO {
	Beer findbyId(int id);
}
