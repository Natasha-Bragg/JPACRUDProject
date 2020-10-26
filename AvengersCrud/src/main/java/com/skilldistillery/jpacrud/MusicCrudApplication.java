package com.skilldistillery.jpacrud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpacrud")
public class MusicCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(MusicCrudApplication.class, args);
	}

}
