package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.cart;

@Repository
public interface cartrepo extends JpaRepository<cart, Integer>{
	@Query("from cart c where c.cid=?1")// from res_items r where r.restaurant.id=?1 
	public List<cart> viewcart(int cid);
	
	@Query("select count(c) from cart c where c.item.id=?1 and c.cid=?2")
	  public int count(int itemid,int cid);
	
	@Modifying
	  @Query("update cart c set c.quantity = ?1 where c.cid = ?2 and c.item.id=?3")
	  @Transactional
	  public void updateQuantity(int quantity, int cid,int itmid);
}
