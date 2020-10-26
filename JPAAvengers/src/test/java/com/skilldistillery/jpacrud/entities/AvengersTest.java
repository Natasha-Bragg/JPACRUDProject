package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class AvengersTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Avengers avengers;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("AvengersPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		avengers = em.find(Avengers.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		avengers = null;
	}

	@Test
	void test_Avenger_entity_mapping() {
		assertNotNull(avengers);
		assertEquals("Tony",	avengers.getFirstName());
		assertEquals("Stark",	avengers.getLastName());
		assertEquals("Iron Man",	avengers.getSuperheroName());
		assertEquals("Genius level intellect Proficient scientist and engineer Highly skilled martial artist and hand-to-hand combatant Powered armor suit: Superhuman strength and durability (when using his armor) Supersonic flight Energy repulsor and missile projection Regenerative life support",	avengers.getPowers());
		assertEquals(11,	avengers.getNumberOfMovies());
		assertEquals(null,	avengers.getFunFacts());
		assertEquals(1,	avengers.getAvengerRank());
		assertEquals("ENTP",	avengers.getMyersBriggsType());
		assertEquals("\"I love you 3000.\" “Genius, billionaire, playboy philanthropist”",	avengers.getQuote());
		
	}


}
