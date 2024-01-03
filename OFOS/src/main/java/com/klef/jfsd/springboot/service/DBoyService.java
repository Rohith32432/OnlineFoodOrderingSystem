package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.DBoy;
import com.klef.jfsd.springboot.model.DBoyDetails;

public interface DBoyService {
  
  public DBoyDetails checkdboylogin(String uname,String pwd);
  
}