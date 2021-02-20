package com.clothmart.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Login;
import com.clothmart.repository.LoginDAO;

@Service
@Transactional
public class LoginServiceImplementation implements LoginService {

	@Autowired
	private LoginDAO loginDAO;

	@Override
	public void insert(Login loginData) {

		this.loginDAO.save(loginData);

	}

	@Override
	public void delete(Login login) {

//		this.loginDAO.delete(login);
		this.loginDAO.deleteById(login.getId());

	}

}
