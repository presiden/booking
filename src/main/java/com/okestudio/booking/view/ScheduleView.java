package com.okestudio.booking.view;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.data.annotation.Immutable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Getter
@Entity
@Table(name = "schedule_view")
@Immutable
public class ScheduleView {

    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "film_id", nullable = false)
    private Long filmId;

    @Column(name = "show_date", nullable = false)
    private LocalDate showDate;

    @Column(name = "theater_name", nullable = false)
    private String theaterName;

    @Column(name = "room_name", nullable = false)
    private String roomName;

    @Column(name = "theater_address", nullable = false)
    private String theaterAddress;

    @Column(name = "show_time", nullable = false)
    private LocalTime showTime;

    @Column(name = "city_id", nullable = false)
    private Long cityId;

    @Column(name = "number_of_seats", nullable = false)
    private Long numberOfSeats;

    @Column(name = "completed_booking", nullable = false)
    private Long completedBooking;

    @Column(name = "available", nullable = false)
    private boolean available;
    
}
