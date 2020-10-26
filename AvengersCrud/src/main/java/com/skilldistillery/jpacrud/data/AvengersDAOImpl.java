package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Avengers;

@Transactional
@Service
public class AvengersDAOImpl implements AvengersDAO {
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("AvengersPU");
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Avengers findById(int id) {
		return em.find(Avengers.class, id);
	}
	
	@Override
	public Avengers create(Avengers avenger) {
		em = emf.createEntityManager();

	    em.getTransaction().begin();
	    em.persist(avenger);
	    em.flush();
	    em.getTransaction().commit();
		em.close();
		return avenger;
	}
	
	@Override
	public Avengers updateAvenger(Avengers avenger) {
		
		Avengers updateAvenger = em.find(Avengers.class, avenger.getId());
		  updateAvenger.setFirstName(avenger.getFirstName());
		  updateAvenger.setLastName(avenger.getLastName());
		  updateAvenger.setSuperheroName(avenger.getSuperheroName());
		  updateAvenger.setPowers(avenger.getPowers());
		  updateAvenger.setNumberOfMovies(avenger.getNumberOfMovies());
		  updateAvenger.setFunFacts(avenger.getFunFacts());
		  updateAvenger.setAvengerRank(avenger.getAvengerRank());
		  updateAvenger.setMyersBriggsType(avenger.getMyersBriggsType());
		  updateAvenger.setQuote(avenger.getQuote());
		  
		  em.flush();
//		  em.getTransaction().commit();
//		  
//		  em.close();
		return updateAvenger;
	}
	
	
	
	@Override
	public boolean destroyAvenger(int id) {
		
		Avengers poorAvenger = em.find(Avengers.class, id);
		em.getTransaction().begin();
		em.remove(poorAvenger);
		boolean avengerWasDeleted =   ! em.contains(poorAvenger);
		em.flush();
		em.getTransaction().commit();
		em.close();
		return avengerWasDeleted;
	}
	

	@Override
	public List<Avengers> findAll() {
		String jpql = "SELECT f FROM Avengers f";
		return em.createQuery(jpql, Avengers.class).getResultList();
	}

	

}
