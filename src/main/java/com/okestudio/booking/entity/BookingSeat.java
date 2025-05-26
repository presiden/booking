// package com.okestudio.booking.entity;

// import jakarta.persistence.Entity;
// import jakarta.persistence.FetchType;
// import jakarta.persistence.Id;
// import jakarta.persistence.IdClass;
// import jakarta.persistence.JoinColumn;
// import jakarta.persistence.ManyToOne;
// import jakarta.persistence.Table;
// import lombok.AllArgsConstructor;
// import lombok.EqualsAndHashCode;
// import lombok.Getter;
// import lombok.NoArgsConstructor;
// import lombok.Setter;

// @Getter
// @Setter
// @NoArgsConstructor
// @AllArgsConstructor
// @Entity
// @Table(name = "booking_seat")
// @IdClass(BookingSeatId.class)
// public class BookingSeat {

//     @Id
//     @ManyToOne(fetch = FetchType.LAZY)
//     @JoinColumn(name = "booking_id")
//     private Booking booking;

//     @Id
//     @ManyToOne(fetch = FetchType.LAZY)
//     @JoinColumn(name = "seat_id")
//     private Seat seat;
    
// }