package com.okestudio.booking.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.City;

public interface CityRepository extends JpaRepository<City, Long> {
    
    Page<City> findAll(Pageable pageable);

    Page<City> findByNameContainingIgnoreCase(String name, Pageable pageable);

}
