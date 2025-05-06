package com.okestudio.booking.service;

import java.util.List;
import java.util.Optional;
import com.okestudio.booking.entity.Seat;
import com.okestudio.booking.entity.TheaterRoom;

public interface SeatService {
    Seat save(Seat seat);
    List<Seat> findAll();
    Optional<Seat> findById(Long id);
    Seat update(Seat seat);
    void deleteById(Long id);
    List<Seat> findByTheaterRoom(TheaterRoom theaterRoom);
    Seat findByRowLabelAndSeatNumber(String rowLabel, Integer seatNumber);
    List<Seat> findByTheaterRoomAndSeatType(TheaterRoom theaterRoom, String seatType);
}