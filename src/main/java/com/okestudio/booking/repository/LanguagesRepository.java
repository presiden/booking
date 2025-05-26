package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Languages;

public interface LanguagesRepository extends JpaRepository<Languages, Long>{
    // Custom query methods can be defined here if needed
    Languages findByName(String name);

}
