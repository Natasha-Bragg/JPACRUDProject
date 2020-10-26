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
		emf = Persistence.createEntityManagerFactory("MusicPU");
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
	void test_Music_entity_mapping() {
		assertNotNull(avengers);
		assertEquals("Michael",	avengers.getName());
		
	}

}
