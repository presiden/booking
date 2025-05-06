package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Users;

public interface UsersRepository extends JpaRepository<Users, Long> {
    // Custom query methods can be defined here if needed
    Users findByUsername(String username);
    Users findByEmail(String email);
    // Users findByPhoneNumber(String phoneNumber);

}
