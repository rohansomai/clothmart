package com.clothmart.service;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Complaint;
import com.clothmart.repository.ComplaintDAO;

@Service
@Transactional
public class ComplaintServiceImplementation implements ComplaintService {

	@Autowired
	private ComplaintDAO complaintDAO;

	@Override
	public List<Complaint> getComplaints() {

		Iterable<Complaint> complaintsList = this.complaintDAO.findAll();
		return (List<Complaint>) complaintsList;
	}

	@Override
	public Complaint getComplaint(Complaint complaint) {

		Optional<Complaint> o = this.complaintDAO.findById(complaint.getId());
		return o.get();

	}

	@Override
	public void insert(Complaint complaint) {

		long millis = System.currentTimeMillis();
		Date date = new java.sql.Date(millis);
		complaint.setStatus("replied");
		complaint.setReply_date_and_time(date);
		this.complaintDAO.save(complaint);
	}

	@Override
	public void delete(Complaint complaint) {

		this.complaintDAO.delete(complaint);

	}

}
