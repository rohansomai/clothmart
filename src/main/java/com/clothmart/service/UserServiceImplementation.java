package com.clothmart.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Login;
import com.clothmart.model.User;
import com.clothmart.repository.UserDAO;

@Service
@Transactional
public class UserServiceImplementation implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private LoginService loginService;

	@Override
	public void insert(User user) {

		user.setStatus(true);
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

//		this.userDAO.delete(user);
		User user2 = this.userDAO.findById(user.getId()).get();
		user2.setStatus(false);
		this.userDAO.save(user2);
	}

	@Override
	public boolean checkEmailAlreadyExists(String email) //true if user already exists
	{
		
		Login login = this.loginService.findByEmailAndRole(email,"ROLE_USER"); 
		if(login!=null)
			return true;
		else 
			return false;
	}

}
