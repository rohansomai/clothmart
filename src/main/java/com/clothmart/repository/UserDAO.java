package com.clothmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.User;

public interface UserDAO extends JpaRepository<User, Long>{
	
	

}
