package com.okestudio.booking.service;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;

public interface UsersService {

    public UserProfileResponseDto getUserProfile(Long userId);

    public UserProfileDetailsResponseDto getUserProfileDetails(Long userId);

    public UserProfileDetailsResponseDto updateUserProfile(Long userId, UsersUpdateRequestDto updateRequestDto);

}
