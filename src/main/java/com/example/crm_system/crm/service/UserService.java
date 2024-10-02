package com.example.crm_system.crm.service;

import com.example.crm_system.crm.model.User;
import com.example.crm_system.crm.repository.UserRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepositoryImpl userRepository;

    public User findByUserName(String userName){
        return userRepository.findByUserName(userName);
    }

    public User saveUser(User user) {
        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        return userRepository.save(user);
    }
}
