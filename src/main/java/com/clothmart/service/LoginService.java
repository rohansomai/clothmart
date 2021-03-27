package com.clothmart.service;

import com.clothmart.model.Login;

public interface LoginService {

	void insert(Login loginData);
	
	void delete(Login login);
	
	Login findByEmail(String email);

	Login findByEmailAndRole(String email, String role);

	void updatePassword(Login login);
	
	String getLoggedInUser();

	Login getLoginDetails(String email);

}
