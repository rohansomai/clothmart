package com.clothmart.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Product;
import com.clothmart.model.Retailer;
import com.clothmart.model.Subcategory;
import com.clothmart.repository.ProductDAO;

@Service
@Transactional
public class ProductServiceImplementation implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private AmazonClient amazonClient;

	@Override
	public List<Product> getProducts() {

		return this.productDAO.findAll();

	}

	@Override
	public List<Product> getProductsByRetailer(Retailer retailer) {

		return this.productDAO.findByRetailer(retailer);

	}

	@Override
	public void insert(Product product) {

		this.productDAO.save(product);

	}

	@Override
	public void delete(Product product) {
		try {
			String keyName = this.productDAO.findById(product.getPid()).get().getImageFileName();
			this.amazonClient.delete(keyName);
			System.out.println("IMAGE DELETED" + keyName);
			this.productDAO.deleteById(product.getPid());
		} catch (Exception exception) {
			exception.printStackTrace();
		}
	}

	@Override
	public Product getEditList(Product product) {

		return this.productDAO.findById(product.getPid()).get();
	}

	@Override
	public void deleteImage(Product product) {

		try {
			String keyName = this.productDAO.findById(product.getPid()).get().getImageFileName();
			this.amazonClient.delete(keyName);
		} catch (Exception exception) {
			exception.printStackTrace();
		}

	}

	@Override
	public List<Product> getProductBySubcategory(Subcategory subcategory) {

		return this.productDAO.findBySubcategory(subcategory);
	}

	@Override
	public List<Product> getAllProductsList() {

		return this.productDAO.findAll();
	}

	@Override
	public Product getProduct(Product product) {

		return this.productDAO.findById(product.getPid()).get();
	}

}
