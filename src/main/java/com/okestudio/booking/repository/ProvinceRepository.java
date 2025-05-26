package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Province;

public interface ProvinceRepository extends JpaRepository<Province, Long> {
    // Custom query methods can be defined here if needed
    Province findByName(String name);
    // Province findByCountry(String country);

}
