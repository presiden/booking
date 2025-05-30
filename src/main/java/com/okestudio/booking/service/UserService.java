package com.okestudio.booking.service;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;

public interface UserService {

    public UserDetailsResponseDto createUserProfile(UserCreateRequestDto createRequestDto);

    public UserResponseDto getUserProfile(String username);

}
