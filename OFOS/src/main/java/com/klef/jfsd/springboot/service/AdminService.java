package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.DBoyDetails;
import com.klef.jfsd.springboot.model.Restaurant;

public interface AdminService
{
	//-------------------------Admin methods------------------------------
	public Admin checkadminlogin(String uname,String pwd);
	
	
	//-------------------------Customer methods------------------------------
  
  public List<Customer> viewallcustomers();
  public Customer viewcustomerbyid(int eid);
  public long customercount();//count(*)
  
  
//-------------------------Restaurant methods------------------------------
  public String addrestaurant(Restaurant rest);
  public String deleterestaurant(int eid);
  public List<Restaurant> viewallrestaurants();
  public Restaurant viewrestaurantbyid(int eid);
  public long restcount(); //count(*)
  
//-------------------------DBoy methods------------------------------
//  public long dboycount(); //count(*)
//  public int updatedboystatus(boolean status,int eid);
  public String adddboy(DBoyDetails db); 
  
}