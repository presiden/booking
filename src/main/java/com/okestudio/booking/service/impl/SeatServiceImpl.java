package com.okestudio.booking.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Seat;
import com.okestudio.booking.entity.TheaterRoom;
import com.okestudio.booking.repository.SeatRepository;
import com.okestudio.booking.service.SeatService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class SeatServiceImpl implements SeatService {

    private final SeatRepository seatRepository;

    @Override
    public Seat save(Seat seat) {
        return seatRepository.save(seat);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Seat> findAll() {
        return seatRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Seat> findById(Long id) {
        return seatRepository.findById(id);
    }

    @Override
    public Seat update(Seat seat) {
        return seatRepository.save(seat);
    }

    @Override
    public void deleteById(Long id) {
        seatRepository.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Seat> findByTheaterRoom(TheaterRoom theaterRoom) {
        return seatRepository.findAll().stream()
                .filter(seat -> seat.getTheaterRoom().equals(theaterRoom))
                .toList();
    }

    @Override
    @Transactional(readOnly = true)
    public Seat findByRowLabelAndSeatNumber(String rowLabel, Integer seatNumber) {
        return seatRepository.findAll().stream()
                .filter(seat -> seat.getRowLabel().equals(rowLabel) && 
                        seat.getSeatNumber().equals(seatNumber))
                .findFirst()
                .orElse(null);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Seat> findByTheaterRoomAndSeatType(TheaterRoom theaterRoom, String seatType) {
        return seatRepository.findAll().stream()
                .filter(seat -> seat.getTheaterRoom().equals(theaterRoom) && 
                        seat.getSeatType().equals(seatType))
                .toList();
    }
}