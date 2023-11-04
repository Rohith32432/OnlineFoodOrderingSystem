package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.DBoyDetails;
import com.klef.jfsd.springboot.model.Restaurant;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.RestaurantRepository;
import com.klef.jfsd.springboot.repository.DBoyDetailsRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	  private AdminRepository adminRepository;
	  
	  @Autowired
	  private RestaurantRepository restaurantRepository;
	  
	  @Autowired
	  private CustomerRepository customerRepository;
	  
	  @Autowired
	  private DBoyDetailsRepository dboydetailsRepository;
	  
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<Customer> viewallcustomers() {
		
		return customerRepository.findAll();
	}

	@Override
	public String deleterestaurant(int eid) {
       Optional<Restaurant> obj = restaurantRepository.findById(eid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Restaurant rest = obj.get();
          
          restaurantRepository.delete(rest);
          
          msg = "Restaurant Deleted Successfully";
        }
        else
        {
          msg = "Restaurant Not Found";
        }
        
        return msg;
	}

	@Override
	public long customercount() {
		
		return customerRepository.count();
	}

	@Override
	public String addrestaurant(Restaurant rest) {
		restaurantRepository.save(rest);
		return "Restaurant Added Successfully";
	}

	@Override
	public List<Restaurant> viewallrestaurants() {
		return restaurantRepository.findAll();
	}

	@Override
	public Restaurant viewrestaurantbyid(int eid) {
        Optional<Restaurant> obj = restaurantRepository.findById(eid);
       
        if(obj.isPresent())
        {
          Restaurant rest = obj.get();
          return rest;
        }
        return null;
	}

	@Override
	public long restcount() {
		return restaurantRepository.count();
	}

	@Override
	public Customer viewcustomerbyid(int eid) {
		Optional<Customer> obj = customerRepository.findById(eid);
	       
        if(obj.isPresent())
        {
          Customer cust = obj.get();
          return cust;
        }
        return null;
	}

	@Override
	  public String adddboy(DBoyDetails db) {
	    dboydetailsRepository.save(db);
	    return "Delivery Boy added Successfully";

	    
	    
	  }

}
