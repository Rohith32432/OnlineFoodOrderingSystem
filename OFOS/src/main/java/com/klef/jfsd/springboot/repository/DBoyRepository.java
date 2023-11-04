package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.DBoy;

@Repository
public interface DBoyRepository extends JpaRepository<DBoy, Integer> {
	
	
	@Query("select d from DBoy d where d.username=?1 and d.password=?2")
	  public DBoy checkdboylogin(String uname,String msg);
}
