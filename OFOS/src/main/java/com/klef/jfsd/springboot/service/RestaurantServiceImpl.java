package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.model.Restaurant;
import com.klef.jfsd.springboot.repository.ItemsRepository;
import com.klef.jfsd.springboot.repository.RestaurantRepository;
@Service
public class RestaurantServiceImpl implements RestaurantService{

  @Autowired
  private RestaurantRepository resrepo;
  
  @Autowired
  private ItemsRepository itemsRepository;
  public String addresturent(Restaurant res) {
    resrepo.save(res);
    return "Restaurent added Sucessfully";
  }

  
  public String updateResturent(Restaurant res) {
    Restaurant  r= resrepo.findById(res.getId()).get();    
      
        r.setName(res.getName());
        r.setEmail(res.getEmail());
        r.setPassword(res.getPassword());
        r.setLocation(res.getLocation());
        r.setContactno(res.getContactno());
      
      resrepo.save(r);
      
      return "Resturent Updated Successfully";
  }

  @Override
  public Restaurant vieweProfile(int id) {
    Optional<Restaurant> obj =  resrepo.findById(id);
        
        if(obj.isPresent())
        {
          Restaurant res = obj.get();
          
          return res;
        }
        else
        {
          return null;
        }
  }

  @Override
  public Restaurant checkreslogin(String email, String password) {
    return resrepo.checklogin(email, password);
  }

  @Override
  public List<Items> viewitems(int restid) {
	  
    return itemsRepository.checkitems(restid);
  }


@Override
public String additems(Items item) {
	itemsRepository.save(item);
    return "items added sucessful";
}


@Override
public String deleteitems(int id) {
	Optional<Items> obj = itemsRepository.findById(id);
    
    String msg = null;
    
    if(obj.isPresent())
    {
      Items item = obj.get();
      
      itemsRepository.delete(item);;
      
      msg = "Item Deleted Successfully";
    }
    else
    {
      msg = "Restaurant Not Found";
    }
    
    return msg;
	}


@Override
public Restaurant viewrestaurantbyid(int rid) {
	Optional<Restaurant> obj =  resrepo.findById(rid);
    
    if(obj.isPresent())
    {
      Restaurant r = obj.get();
      
      return r;
    }
    else
    {
      return null;
    }
}

public List<Restaurant> viewrest() {
	return resrepo.findAll();
}

}