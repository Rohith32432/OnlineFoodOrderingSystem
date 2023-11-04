package com.klef.jfsd.springboot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "items_table")
public class Items {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="item_id")
    private int id;
	@Column(name="item_name",nullable=false,length = 50)
    private String name;
	@Column(name = "item_url",nullable=false, length=1000)
	private String url;
	@Column(name = "item_price",nullable=false)
	private int price;
	
	//foreign key creation for session
	@ManyToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "rest_id")
	private Restaurant restaurant;
	
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
	@Override
	public String toString() {
		return "Items [id=" + id + ", name=" + name + ", url=" + url + ", price=" + price + ", restaurant=" + restaurant
				+ "]";
	}
	
}
