package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Login;
import com.clothmart.model.User;

public interface UserService {
	
	void insert(User user);
	
	List<User> getUsersList();
	
	User getEditList(User user);
	
	void delete(User user);

	boolean checkEmailAlreadyExists(String email, String role);
	
	void sendMail(String from, String to, String subject, String message) throws Exception;

	User getUserByLogin(Login login);

}
