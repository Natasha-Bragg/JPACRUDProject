package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Avengers {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	
	@Column(name="last_name")
	private String lastName;
	
	
	@Column(name="superhero_name")
	private String superheroName;
	
	
	private String powers;
	
	
	@Column(name="number_of_movies")
	private int numberOfMovies;
	
	
	@Column(name="fun_facts")
	private String funFacts;
	
	
	@Column(name="avenger_rank")
	private int avengerRank;
	
	
	@Column(name="myers_briggs_type")
	private String myersBriggsType;
	
	
	private String quote;

	
	public Avengers() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getSuperheroName() {
		return superheroName;
	}


	public void setSuperheroName(String superheroName) {
		this.superheroName = superheroName;
	}


	public String getPowers() {
		return powers;
	}


	public void setPowers(String powers) {
		this.powers = powers;
	}


	public int getNumberOfMovies() {
		return numberOfMovies;
	}


	public void setNumberOfMovies(int numberOfMovies) {
		this.numberOfMovies = numberOfMovies;
	}


	public String getFunFacts() {
		return funFacts;
	}


	public void setFunFacts(String funFacts) {
		this.funFacts = funFacts;
	}


	public int getAvengerRank() {
		return avengerRank;
	}


	public void setAvengerRank(int avengerRank) {
		this.avengerRank = avengerRank;
	}


	public String getMyersBriggsType() {
		return myersBriggsType;
	}


	public void setMyersBriggsType(String myersBriggsType) {
		this.myersBriggsType = myersBriggsType;
	}


	public String getQuote() {
		return quote;
	}


	public void setQuote(String quote) {
		this.quote = quote;
	}


	@Override
	public String toString() {
		return "Avengers [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", superheroName="
				+ superheroName + ", powers=" + powers + ", numberOfMovies=" + numberOfMovies + ", funFacts=" + funFacts
				+ ", avengerRank=" + avengerRank + ", myersBriggsType=" + myersBriggsType + ", quote=" + quote + "]";
	}
	
	


	
}
