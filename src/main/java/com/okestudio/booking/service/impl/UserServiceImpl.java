package com.okestudio.booking.service.impl;

import java.util.NoSuchElementException;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.entity.User;
import com.okestudio.booking.mapper.UserMapper;
import com.okestudio.booking.repository.UserRepository;
import com.okestudio.booking.service.UserService;

import jakarta.transaction.Transactional;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    private final UserMapper userMapper;

    public UserServiceImpl(UserRepository userRepository,
            UserMapper userMapper) {
        this.userRepository = userRepository;
        this.userMapper = userMapper;
    }

    @Override
    @Transactional
    public UserDetailsResponseDto createUser(UserCreateRequestDto createRequestDto) {
        User user = userMapper.toUsers(createRequestDto);
        user = userRepository.save(user);

        return userMapper.toUserDetailsResponseDto(user);
    }

    @Override
    public UserResponseDto getUser(String username) {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        return userMapper.toUserResponseDto(user);
    }

    @Override
    public UserDetailsResponseDto getUserDetails(String username) {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        return userMapper.toUserDetailsResponseDto(user);
    }

}
