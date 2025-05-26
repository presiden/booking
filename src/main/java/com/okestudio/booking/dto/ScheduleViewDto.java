package com.okestudio.booking.dto;

import java.time.LocalDate;
import java.time.LocalTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ScheduleViewDto {
    
    private Long id;

    private LocalDate showDate;

    private String theaterName;

    private String roomName;

    private String theaterAddress;

    private LocalTime showTime;

    private Long numberOfSeats;

    private Long completedBooking;

    private boolean available;
    
}
