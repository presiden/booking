package com.okestudio.booking.dto;

public record UserProfileDetailsResponseDto(
        Long id,
        String fullname,
        String username,
        String email,
        String phoneNumber,
        String birthDate,
        String addressLine) {
}
