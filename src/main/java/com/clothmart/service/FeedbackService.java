package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Feedback;
import com.clothmart.model.Product;

public interface FeedbackService {

	List<Feedback> getFeedbacks();

	void delete(Feedback feedback);

	List<Feedback> getFeedback(Product product);
	
	

}
