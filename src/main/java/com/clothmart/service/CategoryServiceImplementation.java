package com.clothmart.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Category;
import com.clothmart.repository.CategoryDAO;

@Service
@Transactional
public class CategoryServiceImplementation implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public void insert(Category category) {

		category.setStatus(true);
		this.categoryDAO.save(category);
		

	}

	public List<Category> getCategoryList() {

		return this.categoryDAO.findAll();
	}

	public Category getEditList(Category category) {

		Optional<Category> o = this.categoryDAO.findById(category.getCid());
		return o.get();
	}

	public void deleteCategory(Category category) {
		
		Optional<Category> o = this.categoryDAO.findById(category.getCid());
		Category category2 = o.get();
		category2.setStatus(false);
		this.categoryDAO.save(category2);

	}

}
