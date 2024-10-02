package com.example.crm_system.crm.repository;

import com.example.crm_system.crm.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepositoryImpl extends JpaRepository<User, Long> {
    User findByUserName(String userName);
}
