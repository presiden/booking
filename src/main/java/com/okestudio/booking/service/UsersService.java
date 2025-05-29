package com.okestudio.booking.service;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
import com.okestudio.booking.dto.UsersCreateRequestDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;

public interface UsersService {

    public UserProfileDetailsResponseDto createUserProfile(UsersCreateRequestDto createRequestDto);

    public UserProfileResponseDto getUserProfile(String username);

    public UserProfileDetailsResponseDto getUserProfileDetails(String username);

    public UserProfileDetailsResponseDto updateUserProfile(String username, UsersUpdateRequestDto updateRequestDto);

}
