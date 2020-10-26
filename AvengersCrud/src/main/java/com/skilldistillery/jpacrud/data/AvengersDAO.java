package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Avengers;

public interface AvengersDAO {

	Avengers findById(int id);

	Avengers create(Avengers avenger);

	boolean destroyAvenger(int id);

	Avengers updateAvenger(Avengers avenger);

	List<Avengers> findAll();

}
