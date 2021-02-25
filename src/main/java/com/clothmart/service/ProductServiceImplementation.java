package com.clothmart.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Product;
import com.clothmart.model.Retailer;
import com.clothmart.repository.ProductDAO;

@Service
@Transactional
public class ProductServiceImplementation implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<Product> getProducts() {

		return this.productDAO.findAll();

	}

	@Override
	public List<Product> getProductsByRetailer(Retailer retailer) {
		
		return this.productDAO.findByRetailer(retailer);

	}

}
