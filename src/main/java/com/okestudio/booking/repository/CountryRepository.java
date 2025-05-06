package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Country;

public interface CountryRepository extends JpaRepository<Country, Long> {
    // Custom query methods can be defined here if needed
    CountryRepository findByName(String name);
    CountryRepository findByCode(String code);

}
