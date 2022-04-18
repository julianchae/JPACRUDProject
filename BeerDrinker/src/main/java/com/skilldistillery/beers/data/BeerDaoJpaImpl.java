package com.skilldistillery.beers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
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
	public Beer findbyId(Integer id) {
		if(id!=null) {
			
			return em.find(Beer.class, id);
		}
		else {
			return null;
		}
		
		
	}

	@Override
	public Beer findByName(String name) {
		Beer beer = null;
		String query = "SELECT b FROM Beer b WHERE name LIKE :n ";
				
		List<Beer> beers = em.createQuery(query, Beer.class).setParameter("n", "%"+name+"%").getResultList();
		
		if (beers.size() > 0) {
			beer = beers.get(0);
		}
		
		
		return beer;
	}

	@Override
	public List<Beer> findByType(String type) {
		
		String query = "SELECT b FROM Beer b WHERE type LIKE :n ";
		
		List<Beer> beers = em.createQuery(query, Beer.class).setParameter("n", "%"+type+"%").getResultList();
		
		return beers;
	}

	public Beer addBeer(Beer beer) {
	

		em.persist(beer);
		
		
		em.flush();
		
		
		return beer;
		
		
		
	}

	@Override
	public Beer deleteBeer(int id) {
		
		Beer beer = em.find(Beer.class, id);
		
		em.remove(beer);

		return beer;
	}

	@Override
	public List<Beer> listAll() {
		
		String jpql = "SELECT b from Beer b";
		List<Beer> beers = em.createQuery(jpql, Beer.class).getResultList();
		
		return beers;
	}

	@Override
	public Beer updateBeer(int id, Beer beer) {
		
		Beer managed = em.find(Beer.class, id);
		
		managed.setName(beer.getName());
		managed.setDescription(beer.getDescription());
		managed.setAbv(beer.getAbv());
		managed.setIbu(beer.getIbu());
		managed.setType(beer.getType());
		
		
		
		
		
		return managed;
	}
	
	
	
}
