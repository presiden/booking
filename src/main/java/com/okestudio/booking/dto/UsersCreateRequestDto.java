package com.okestudio.booking.dto;

import com.okestudio.booking.validation.annotation.UniqueEmail;
import com.okestudio.booking.validation.annotation.UniquePhoneNumber;
import com.okestudio.booking.validation.annotation.UniqueUsername;
import com.okestudio.booking.validation.annotation.ValidPhoneNumber;
import com.okestudio.booking.validation.annotation.ValidUsername;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record UsersCreateRequestDto(
        @NotBlank(message = "Full name cannot be blank") 
        String fullname,
        @NotBlank(message = "Username cannot be blank") @UniqueUsername @ValidUsername
        String username,
        @NotBlank(message = "Email cannot be blank") @UniqueEmail @Email(message = "Invalid email format")
        String email,
        @NotBlank(message = "Phone number cannot be blank") @UniquePhoneNumber @ValidPhoneNumber
        String phoneNumber,
        String birthDate,
        String addressLine) {
}
