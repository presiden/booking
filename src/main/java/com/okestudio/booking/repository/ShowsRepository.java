package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Shows;

public interface ShowsRepository extends JpaRepository<Shows, Long> {
    

}
