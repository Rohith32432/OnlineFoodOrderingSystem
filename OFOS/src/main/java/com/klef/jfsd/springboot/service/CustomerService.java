package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.model.cart;

public interface CustomerService {

	public String addcustomer(Customer customer);
	public String updatecustomer(Customer cust);
	public Customer viewcustomerbyid(int cid);
	public Customer checkcustomerlogin(String email,String pwd);
	
	public List<cart> viewcartitems();
	public List<cart> custitems(int id);
	public Items cartbyid(int id);
	public String addcart(cart c);
	public String remove(int id);
}
