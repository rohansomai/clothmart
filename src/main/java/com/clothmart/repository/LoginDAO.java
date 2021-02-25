package com.clothmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Login;

public interface LoginDAO extends JpaRepository<Login, Long>{
	
	Login findByEmail(String email);
	
	Login findByEmailAndRole(String email, String role);

}
