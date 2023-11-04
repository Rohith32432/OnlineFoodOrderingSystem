package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.cart;

@Repository
public interface cartrepo extends JpaRepository<cart, Integer>{
	@Query("from cart c where c.cid=?1")// from res_items r where r.restaurant.id=?1 
	public List<cart> viewcart(int cid);
}
