package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.UsersAddress;

public interface UsersAddressRepository extends JpaRepository<UsersAddress, Long> {
    

}
