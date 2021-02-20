package com.clothmart.service;

import java.util.List;

import com.clothmart.model.User;

public interface UserService {
	
	void insert(User user);
	
	List<User> getUsersList();
	
	User getEditList(User user);
	
	void delete(User user);

}
