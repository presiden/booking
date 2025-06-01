package com.okestudio.booking.dto;

import com.okestudio.booking.validation.annotation.UniquePhoneNumber;
import com.okestudio.booking.validation.annotation.UniqueUserFields;
import com.okestudio.booking.validation.annotation.ValidPassword;
import com.okestudio.booking.validation.annotation.ValidPhoneNumber;
import com.okestudio.booking.validation.annotation.ValidUsername;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@UniqueUserFields
public record UserUpdateRequestDto(
        @NotNull(message = "ID cannot be null")
        Long id,
        @NotBlank(message = "Full name is required") 
        String fullname,
        @NotBlank(message = "Username is required") @UniquePhoneNumber @ValidUsername
        String username,
        @NotBlank(message = "Email is required") @Email(message = "Invalid email format")
        String email,
        @NotBlank(message = "Phone number is required") @ValidPhoneNumber
        String phoneNumber,
        @NotBlank(message = "Password is required")
        @ValidPassword
        String password,
        String imagePath,
        String birthDate,
        String addressLine) {
}
