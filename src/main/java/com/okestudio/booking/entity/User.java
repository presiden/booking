package com.okestudio.booking.entity;

import java.time.LocalDate;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;
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
public class User extends BaseEntity {

    @Size(min = 5, max = 20, message = "Username must be between 5 and 20 characters")
    @Column(name = "username", nullable = false, unique = true, length = 20)
    private String username;

    @Size(min = 5, max = 50, message = "Fullname must be between 5 and 50 characters")
    @Column(name = "fullname", nullable = false, length = 50)
    private String fullname;

    @Column(name = "email", nullable = false, unique = true, length = 50)
    private String email;

    @Column(name = "phoneNumber", nullable = false, unique = true, length = 15)
    private String phoneNumber;

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

}