package com.clothmart.repository;

import org.springframework.data.repository.CrudRepository;

import com.clothmart.model.Complaint;

public interface ComplaintDAO extends CrudRepository<Complaint, Long>{

}
