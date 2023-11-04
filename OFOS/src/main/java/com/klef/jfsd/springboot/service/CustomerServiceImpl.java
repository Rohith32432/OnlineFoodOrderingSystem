package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.model.cart;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ItemsRepository;
import com.klef.jfsd.springboot.repository.cartrepo;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private ItemsRepository itemrepo;
	@Autowired
	private cartrepo cartrepo;
	@Override
	public String addcustomer(Customer customer) {
		customerRepository.save(customer);
		return "Customer Added Successfully";
	}

	@Override
	public String updatecustomer(Customer cust) {
		Customer c = customerRepository.findById(cust.getId()).get();    
	    
	      c.setName(cust.getName());
	      c.setDateofbirth(cust.getDateofbirth());
	      c.setEmail(cust.getEmail());
	      c.setPassword(cust.getPassword());
	      c.setLocation(cust.getLocation());
	      c.setContact(cust.getContact());
	    
	    customerRepository.save(c);
	    
	    return "Customer Updated Successfully";
	}

	@Override
	public Customer viewcustomerbyid(int cid) {
        Optional<Customer> obj =  customerRepository.findById(cid);
        
        if(obj.isPresent())
        {
          Customer c = obj.get();
          
          return c;
        }
        else
        {
          return null;
        }
	}

	@Override
	public Customer checkcustomerlogin(String email, String pwd) {
		return customerRepository.checkemplogin(email, pwd);
	}

	@Override
	public List<cart> viewcartitems() {
		return cartrepo.findAll();
	}


	@Override
	public List<cart> custitems(int id) {
		return cartrepo.viewcart(id);
	}


	@Override
	public Items cartbyid(int id) {
		return itemrepo.findById(id).get();
	}

	public String addcart(cart c) {
		 cartrepo.save(c);
		 return "added suceessful";
	}


	@Override
	public String remove(int id) {
		cartrepo.deleteById(id);
		return "deleted";
	}

}
