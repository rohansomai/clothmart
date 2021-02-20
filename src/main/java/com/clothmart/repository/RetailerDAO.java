package com.clothmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Retailer;

public interface RetailerDAO extends JpaRepository<Retailer, Long>{

}
