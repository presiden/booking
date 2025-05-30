package com.okestudio.booking.dto;

import com.okestudio.booking.validation.annotation.UniquePhoneNumber;
import com.okestudio.booking.validation.annotation.UniqueUserFields;
import com.okestudio.booking.validation.annotation.ValidPhoneNumber;
import com.okestudio.booking.validation.annotation.ValidUsername;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@UniqueUserFields
public record UserUpdateRequestDto(
        @NotNull(message = "ID cannot be null")
        Long id,
        @NotBlank(message = "Full name cannot be blank") 
        String fullname,
        @NotBlank(message = "Username cannot be blank") @UniquePhoneNumber @ValidUsername
        String username,
        @NotBlank(message = "Email cannot be blank") @Email(message = "Invalid email format")
        String email,
        @NotBlank(message = "Phone number cannot be blank") @ValidPhoneNumber
        String phoneNumber,
        String birthDate,
        String addressLine) {
}
