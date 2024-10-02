package com.example.crm_system.crm.repository;

import com.example.crm_system.crm.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepositoryImpl extends JpaRepository<Customer, Long> {

}
