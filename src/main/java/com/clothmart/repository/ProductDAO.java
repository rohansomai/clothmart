package com.clothmart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Product;
import com.clothmart.model.Retailer;
import com.clothmart.model.Subcategory;

public interface ProductDAO extends JpaRepository<Product, Long> {

	List<Product> findByRetailer(Retailer retailer);
	
	List<Product> findBySubcategory(Subcategory subcategory);
	
	
}
