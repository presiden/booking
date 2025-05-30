package com.okestudio.booking.service;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;

public interface UserService {

    public UserDetailsResponseDto createUser(UserCreateRequestDto createRequestDto);

    public UserResponseDto getUser(String username);

    public UserDetailsResponseDto getUserDetails(String username);

}
