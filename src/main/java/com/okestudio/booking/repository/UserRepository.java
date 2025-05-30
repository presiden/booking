package com.okestudio.booking.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
    Optional<User> findByEmail(String email);
    boolean existsByUsername(String username);
    boolean existsByEmail(String email);
    boolean existsByPhoneNumber(String phoneNumber);
    boolean existsByUsernameAndIdNot(String username, Long id);
    boolean existsByEmailAndIdNot(String email, Long id);
    boolean existsByPhoneNumberAndIdNot(String phoneNumber, Long id);
}
