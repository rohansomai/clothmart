package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Product;
import com.clothmart.model.Retailer;

public interface ProductService {
	
	List<Product> getProducts();

	List<Product> getProductsByRetailer(Retailer retailer);

}
