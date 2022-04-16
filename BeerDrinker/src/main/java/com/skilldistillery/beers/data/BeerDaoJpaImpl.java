package com.skilldistillery.beers.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.servlet.http.Cookie;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beers.entities.Beer;

@Service
@Transactional
public class BeerDaoJpaImpl implements BeersDAO {
	
	@PersistenceContext
	private EntityManager em;
	private static EntityManagerFactory emf;

	@Override
	public Beer findbyId(int id) {
		
		return em.find(Beer.class, id);
	}

}
