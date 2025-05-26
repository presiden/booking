package com.okestudio.booking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.City;

public interface CityRepository extends JpaRepository<City, Long> {
    // Custom query methods can be defined here if needed
    City findByName(String name);

    List<City> findAllByIsActiveTrue();

}
