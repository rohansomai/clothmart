package com.clothmart.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Feedback;
import com.clothmart.repository.FeedbackDAO;

@Service
@Transactional
public class FeedbackServiceImplementation implements FeedbackService {

	@Autowired
	private FeedbackDAO feedbackDAO;

	@Override
	public List<Feedback> getFeedbacks() {

		return this.feedbackDAO.findAll();

	}

	@Override
	public void delete(Feedback feedback) {
		
		this.feedbackDAO.delete(feedback);
		
	}

}
