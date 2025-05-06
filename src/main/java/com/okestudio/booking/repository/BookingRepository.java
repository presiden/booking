package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Booking;

public interface BookingRepository extends JpaRepository<Booking, Long> {
    

}
