package com.clothmart.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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

		loginData.setStatus(true);
		this.loginDAO.save(loginData);

	}

	@Override
	public void delete(Login login) {

//		this.loginDAO.deleteById(login.getId());
		Login login2 = this.loginDAO.findById(login.getId()).get();
		login2.setStatus(false);
		this.loginDAO.save(login2);
	}

	@Override
	public Login findByEmail(String email) {

		return this.loginDAO.findByEmail(email);
	}

	@Override
	public Login findByEmailAndRole(String email, String role) {

		return this.loginDAO.findByEmailAndRole(email, role);
	}

	@Override
	public void updatePassword(Login login) {

		Login login2 = this.loginDAO.findByEmail(login.getEmail());
		login2.setPassword(login.getPassword());
		this.loginDAO.save(login2);
	}

	@Override
	public String getLoggedInUser() {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken))
			return authentication.getName();
		else
			return null;
	}

	@Override
	public Login getLoginDetails(String email) {

		return this.loginDAO.findByEmail(email);
	}

}
