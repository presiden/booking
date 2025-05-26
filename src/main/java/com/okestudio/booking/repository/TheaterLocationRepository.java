package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.TheaterAddress;

public interface TheaterLocationRepository extends JpaRepository<TheaterAddress, Long> {
    

}
