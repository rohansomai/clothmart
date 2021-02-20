package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Feedback;

public interface FeedbackService {

	List<Feedback> getFeedbacks();

	void delete(Feedback feedback);

}
