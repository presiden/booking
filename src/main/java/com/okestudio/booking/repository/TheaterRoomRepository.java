package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.TheaterRoom;

public interface TheaterRoomRepository extends JpaRepository<TheaterRoom, Long> {
    

}
