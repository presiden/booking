package com.okestudio.booking.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "seat")
public class Seat extends BaseEntity {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "theater_room_id", nullable = false)
    private TheaterRoom theaterRoom;

    @Column(name = "row_label", nullable = false, length = 5)
    private String rowLabel;

    @Column(name = "seat_number", nullable = false)
    private Integer seatNumber;

    @Column(name = "seat_type", nullable = false, length = 20)
    private String seatType;

    @Column(name = "x_coordinate", nullable = true, length = 10)
    private String xCoordinate;

    @Column(name = "y_coordinate", nullable = true, length = 10)
    private String yCoordinate;
    
    @Column(name = "additional_price", nullable = false)
    private BigDecimal additionalPrice = BigDecimal.ZERO;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;

    @ManyToMany
    @JoinTable(
        name = "booking_seat",
        joinColumns = @JoinColumn(name = "seat_id"),
        inverseJoinColumns = @JoinColumn(name = "booking_id")
    )
    private Set<Booking> bookings = new HashSet<>();
    
}