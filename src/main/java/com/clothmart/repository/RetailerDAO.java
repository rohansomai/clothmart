package com.clothmart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Login;
import com.clothmart.model.Retailer;

public interface RetailerDAO extends JpaRepository<Retailer, Long>{
	
	List<Retailer> findByLogin(Login login);

}
