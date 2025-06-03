package com.okestudio.booking.dto;

import com.okestudio.booking.validation.annotation.UniqueEmail;
import com.okestudio.booking.validation.annotation.UniquePhoneNumber;
import com.okestudio.booking.validation.annotation.UniqueUsername;
import com.okestudio.booking.validation.annotation.ValidPassword;
import com.okestudio.booking.validation.annotation.ValidPhoneNumber;
import com.okestudio.booking.validation.annotation.ValidUsername;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record UserCreateRequestDto(
        @NotBlank(message = "Full name is required") 
        String fullname,
        @NotBlank(message = "Username is required") @UniqueUsername @ValidUsername
        String username,
        @NotBlank(message = "Email is required") @UniqueEmail @Email(message = "Invalid email format")
        String email,
        @NotBlank(message = "Phone number is required") @UniquePhoneNumber @ValidPhoneNumber
        String phoneNumber,
        @NotBlank(message = "Password is required")
        @ValidPassword
        String password,
        String imagePath,
        String birthDate,
        String addressLine) {
}
