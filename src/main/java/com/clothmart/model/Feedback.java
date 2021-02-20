package com.clothmart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "feedback")
public class Feedback {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "starRating")
	private Integer starRating;

	@Column(name = "feedback")
	@Length(max = 5000)
	private String feedback;

	@ManyToOne
	@JoinColumn(name = "feedback_user_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getStarRating() {
		return starRating;
	}

	public void setStarRating(Integer starRating) {
		this.starRating = starRating;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Feedback [id=" + id + ", starRating=" + starRating + ", feedback=" + feedback + ", user=" + user + "]";
	}

	
	
}
