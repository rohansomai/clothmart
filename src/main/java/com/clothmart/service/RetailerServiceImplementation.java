package com.clothmart.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Login;
import com.clothmart.model.Retailer;
import com.clothmart.repository.RetailerDAO;

@Service
@Transactional
public class RetailerServiceImplementation implements RetailerService {

	@Autowired
	private RetailerDAO retailerDAO;

	@Override
	public void insert(Retailer retailer) {

		retailer.setStatus(true);
		this.retailerDAO.save(retailer);

	}

	public List<Retailer> getRetailersList() {

		return this.retailerDAO.findAll();

	}

	public Retailer getEditList(Retailer retailer) {
		Optional<Retailer> o = this.retailerDAO.findById(retailer.getId());
		return o.get();
	}

	public void delete(Retailer retailer) {
//		this.retailerDAO.delete(retailer);
		Retailer retailer2 = this.retailerDAO.findById(retailer.getId()).get();
		retailer2.setStatus(false);
		this.retailerDAO.save(retailer2);
	}

	@Override
	public Retailer getRetailerByLogin(Login login) {

		System.out.println(login);
		return this.retailerDAO.findByLogin(login).get(0);
		
	}
}
