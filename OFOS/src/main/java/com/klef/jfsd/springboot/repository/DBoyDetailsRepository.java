package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.DBoy;
import com.klef.jfsd.springboot.model.DBoyDetails;

public interface DBoyDetailsRepository extends JpaRepository<DBoyDetails, Integer>{
  
  @Query("select d from DBoyDetails d where d.username=?1 and d.password=?2")
    public DBoyDetails checkdboylogin(String uname,String msg);
}