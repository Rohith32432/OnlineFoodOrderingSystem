package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "rest_table")
public class Restaurant {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="rest_id")
    private int id;
	@Column(name="rest_name",nullable=false,length = 50)
    private String name;
	@Column(name="rest_email",nullable=false,unique = true,length = 50)
    private String email;
	@Column(name="rest_password",nullable=false,length = 30)
    private String password;
	private Blob image;
    @Column(name="rest_location",nullable=false)
    private String location;
    @Column(name="rest_contactno",nullable=false,unique = true)
    private String contactno;
    //foreign key creation for session
    @OneToMany(mappedBy = "restaurant",cascade = CascadeType.ALL,orphanRemoval = true)
    private List<Items> resitems=new ArrayList<Items>();
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public List<Items> getResitems() {
		return resitems;
	}
	public void setResitems(List<Items> resitems) {
		this.resitems = resitems;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	
}
