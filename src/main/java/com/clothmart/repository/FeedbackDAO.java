package com.clothmart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Feedback;
import com.clothmart.model.Product;

public interface FeedbackDAO extends JpaRepository<Feedback, Long>{

	List<Feedback> findByProduct(Product product);
}
