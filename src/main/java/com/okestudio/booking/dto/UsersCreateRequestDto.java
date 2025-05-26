package com.okestudio.booking.dto;

import com.okestudio.booking.validation.annotation.UniqueUsername;

import jakarta.validation.constraints.NotBlank;

public record UsersCreateRequestDto(
        @NotBlank(message = "Full name cannot be blank") String fullname,
        @NotBlank(message = "Username cannot be blank") @UniqueUsername String username,
        @NotBlank(message = "Email cannot be blank") String email,
        @NotBlank(message = "Phone number cannot be blank") String phoneNumber,
        String birthDate,
        String addressLine) {
}
