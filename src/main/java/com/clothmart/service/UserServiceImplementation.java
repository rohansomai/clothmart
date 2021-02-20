package com.clothmart.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.User;
import com.clothmart.repository.UserDAO;

@Service
@Transactional
public class UserServiceImplementation implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void insert(User user) {
		
		this.userDAO.save(user);
		
	}

	@Override
	public List<User> getUsersList() {
		
		return this.userDAO.findAll();
	}

	@Override
	public User getEditList(User user) {
		
		Optional<User> o = this.userDAO.findById(user.getId());
		return o.get();
		
	}

	@Override
	public void delete(User user) {
		
		this.userDAO.delete(user);
		
	}

}
