package com.clothmart.service;

import java.util.List;

import com.clothmart.model.Complaint;

public interface ComplaintService {

	List<Complaint> getComplaints();

	Complaint getComplaint(Complaint complaint);

	void insert(Complaint complaint);

	void delete(Complaint complaint);
	
}
