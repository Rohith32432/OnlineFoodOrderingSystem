package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class cart {
	
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;
	  @Column(name = "cust_id")
	  private int cid;
	  
	  private int quantity;
	  
	  @ManyToOne()
	  @JoinColumn(name = "item_id")
	  private Items item;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Items getItem() {
		return item;
	}

	public void setItem(Items item) {
		this.item = item;
	}

	
	
	
}
