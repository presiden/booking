package com.okestudio.booking.dto;

public record UserProfileResponseDto(
        String fullname,
        String email,
        String phoneNumber) {
}
