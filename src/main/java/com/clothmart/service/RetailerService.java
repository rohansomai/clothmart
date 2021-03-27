package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Login;
import com.clothmart.model.Retailer;

public interface RetailerService {

	void insert(Retailer retailer);

	List<Retailer> getRetailersList();
	
	 Retailer getEditList(Retailer retailer);
	
	void delete(Retailer retailer);
	
	Retailer getRetailerByLogin(Login login);
	
}
