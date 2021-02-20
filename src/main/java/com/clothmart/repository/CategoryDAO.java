package com.clothmart.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Category;

public interface CategoryDAO extends JpaRepository<Category, Long>{
	

}
