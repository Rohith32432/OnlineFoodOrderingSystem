package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="dboy_creds")
public class DBoy {
	 @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private int id;
	  @Column(nullable = false,unique = true)
	  private String username;
	  @Column(nullable = false)
	  private String password;
	  
	  
	 
}
