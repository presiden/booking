package com.okestudio.booking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Theater;

public interface TheaterRepository extends JpaRepository<Theater, Long> {
    List<Theater> findByName(String name);
}
