package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Product;
import com.clothmart.model.Retailer;
import com.clothmart.model.Subcategory;

public interface ProductService {
	
	List<Product> getProducts();

	List<Product> getProductsByRetailer(Retailer retailer);

	void insert(Product product);

	void delete(Product product);

	Product getEditList(Product product);

	void deleteImage(Product product);

	List<Product> getProductBySubcategory(Subcategory subcategory);

	List<Product> getAllProductsList();

	Product getProduct(Product product);


}
