package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Restaurant;

@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Integer>{
  @Query("select r from Restaurant r where r.email=?1 and r.password=?2")
  public Restaurant checklogin(String uname,String pwd);

}