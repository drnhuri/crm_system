package com.example.crm_system.crm.service;

import com.example.crm_system.crm.model.Customer;
import java.util.stream.Collectors;
import com.example.crm_system.crm.repository.CustomerRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepositoryImpl customerRepository;

    public List<Customer> findAll(){
        return customerRepository.findAll();
    }

    public Customer save(Customer customer){
        return customerRepository.save(customer);
    }

    public void deleteById(Long id) {
        customerRepository.deleteById(id);
    }

    public Customer findById(Long id) {
        return customerRepository.findById(id).orElse(null);
    }

    //Filtreleme ve Java Streams Kullanımı
    public List<Customer> getCustomersByRegion(String region) {
        return customerRepository.findAll()
                .stream()
                .filter(customer -> customer.getRegion().equalsIgnoreCase(region))
                .collect(Collectors.toList());
    }
}
