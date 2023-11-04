package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.DBoy;

public interface DBoyService {
	
	public DBoy checkdboylogin(String uname,String pwd);
	
}
