package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Seat;

public interface SeatRepository extends JpaRepository<Seat, Long> {
    

}
