package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Items;

@Repository
public interface ItemsRepository extends JpaRepository<Items, Integer>{

	//foreign key creation for session
	@Query(" from Items r where r.restaurant.id=?1 ")
	public List<Items> checkitems(int restid);
}