package com.okestudio.booking.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
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

    @Column(length = 30, nullable = false, unique = true)
    private String username;

    @Column(length = 50, nullable = false)
    private String name;

    @Column(length = 50, nullable = false, unique = true)
    private String email;

    @Column(length = 20)
    private String phone;

    @Column(length = 512, nullable = false)
    private String password;

    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Column(name = "image_path", length = 512)
    private String imagePath;

    @Column(name = "is_active")
    private Boolean isActive;

}