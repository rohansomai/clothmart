package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Subcategory;

public interface SubcategoryService {

	void insert(Subcategory subcategory);

	List<Subcategory> getSubcategoryList();

	Subcategory getEditList(Subcategory subcategory);
	
	void delete(Subcategory subcategory);

	Subcategory findBySid(Long sid);
}
