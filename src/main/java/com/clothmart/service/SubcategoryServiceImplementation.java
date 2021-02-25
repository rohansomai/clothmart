package com.clothmart.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Subcategory;
import com.clothmart.repository.SubcategoryDAO;

@Service
public class SubcategoryServiceImplementation implements SubcategoryService {

	@Autowired
	private SubcategoryDAO subcategoryDAO;
	
	@Override
	public void insert(Subcategory subcategory) {
		
		subcategory.setStatus(true);
		this.subcategoryDAO.save(subcategory);
		
	}

	@Override
	public List<Subcategory> getSubcategoryList() {
		
		return this.subcategoryDAO.findAll();
	}

	@Override
	public Subcategory getEditList(Subcategory subcategory) {
		
		Optional<Subcategory> o = this.subcategoryDAO.findById(subcategory.getSid());
		return o.get();
	}
	
	public void delete(Subcategory subcategory)
	{
		Optional<Subcategory> o = this.subcategoryDAO.findById(subcategory.getSid());
		Subcategory subcategory2 = o.get();
		subcategory2.setStatus(false);
		this.subcategoryDAO.save(subcategory2);
	}
	

}
