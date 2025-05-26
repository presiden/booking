package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Users;

public interface UsersRepository extends JpaRepository<Users, Long> {
    Users findByUsername(String username);
    Users findByEmail(String email);
    boolean existsByUsername(String username);
    boolean existsByEmail(String email);
    boolean existsByPhoneNumber(String phoneNumber);
}
