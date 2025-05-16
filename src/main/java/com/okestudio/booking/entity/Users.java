package com.okestudio.booking.entity;

import java.time.LocalDate;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
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
@Table(name = "users")
public class Users extends BaseEntity {

    @Column(name = "username", nullable = false, unique = true, length = 30)
    private String username;

    @Column(name = "name", nullable = false, length = 50)
    private String name;

    @Column(name = "email", nullable = false, unique = true, length = 50)
    private String email;

    @Column(name = "phone", nullable = false, unique = true, length = 20)
    private String phone;

    @Column(name = "password", nullable = false, length = 512)
    private String password;

    @Column(name = "birth_date", nullable = true)
    private LocalDate birthDate;

    @Column(name = "image_path", nullable = true, length = 512)
    private String imagePath;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;

    @OneToMany(mappedBy = "users")
    private Set<Booking> bookings;

    public void addBooking(Booking booking) {
        this.bookings.add(booking);
        booking.setUsers(this);
    }

    public void removeBooking(Booking booking) {
        this.bookings.remove(booking);
        booking.setUsers(null);
    }

}