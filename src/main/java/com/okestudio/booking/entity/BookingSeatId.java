package com.okestudio.booking.entity;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingSeatId implements Serializable {
    private Long booking;
    private Long seat;
}