package com.klef.jfsd.springboot.service;



import java.util.List;

import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.model.Restaurant;


public interface RestaurantService {

  public String addresturent(Restaurant res);
  public String updateResturent(Restaurant res);
  public Restaurant vieweProfile(int id);
  public Restaurant viewrestaurantbyid(int rid);
  public Restaurant checkreslogin(String email,String password);
  public List<Restaurant> viewrest();
  public String additems(Items item);
  public String deleteitems(int id);
  public List<Items> viewitems(int restid);
  public Items itembyid(int id);

}