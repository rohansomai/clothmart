package com.clothmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clothmart.model.Feedback;

public interface FeedbackDAO extends JpaRepository<Feedback, Long>{

}
