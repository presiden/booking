package com.okestudio.booking.service;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserUpdateRequestDto;

public interface UserService {

    public UserDetailsResponseDto createUserProfile(UserCreateRequestDto createRequestDto);

    public UserResponseDto getUserProfile(String username);

    public UserDetailsResponseDto getUserProfileDetails(String username);

    public UserDetailsResponseDto updateUserProfile(String username, UserUpdateRequestDto updateRequestDto);

}
