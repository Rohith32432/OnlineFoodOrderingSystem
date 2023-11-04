package com.klef.jfsd.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FosApplication {

	public static void main(String[] args) {
		SpringApplication.run(FosApplication.class, args);
		System.out.println("Online Food Ordering System");
	}

}
