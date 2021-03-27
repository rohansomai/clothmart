package com.clothmart.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Complaint")
public class Complaint {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "subject")
	private String subject;

	@Column(name = "description")
	@Length(max = 5000)
	private String description;

	@DateTimeFormat(pattern = "dd-MM-yyyy HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "complaint_date_and_time")
	private Date complaint_date_and_time;
	
	@DateTimeFormat(pattern = "dd-MM-yyyy HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "reply_date_and_time")
	private Date reply_date_and_time;

	@Column(name = "status")
	private String status;

	@Column(name = "reply")
	@Length(max = 5000)
	private String reply;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "complaint_user_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getComplaint_date_and_time() {
		return complaint_date_and_time;
	}

	public void setComplaint_date_and_time(Date complaint_date_and_time) {
		this.complaint_date_and_time = complaint_date_and_time;
	}

	public Date getReply_date_and_time() {
		return reply_date_and_time;
	}

	public void setReply_date_and_time(Date reply_date_and_time) {
		this.reply_date_and_time = reply_date_and_time;
	}

	@Override
	public String toString() {
		return "Complaint [id=" + id + ", subject=" + subject + ", description=" + description
				+ ", complaint_date_and_time=" + complaint_date_and_time + ", reply_date_and_time="
				+ reply_date_and_time + ", status=" + status + ", reply=" + reply + ", user=" + user + "]";
	}

	
	

}


