package com.okestudio.booking.dto;

public record UserResponseDto(
        String fullname,
        String email,
        String phoneNumber,
        String imagePath) {
}
