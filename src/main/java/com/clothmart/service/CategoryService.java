package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Category;

public interface CategoryService {

	void insert(Category category);

	List<Category> getCategoryList();

	Category getEditList(Category category);
	
	void deleteCategory(Category category);

}
