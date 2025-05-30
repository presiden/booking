package com.okestudio.booking.service.impl;

import java.util.NoSuchElementException;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserUpdateRequestDto;
import com.okestudio.booking.entity.User;
import com.okestudio.booking.mapper.UserMapper;
import com.okestudio.booking.repository.UserRepository;
import com.okestudio.booking.service.UserService;

import jakarta.transaction.Transactional;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository usersRepository;

    private final UserMapper usersMapper;

    public UserServiceImpl(UserRepository usersRepository,
            UserMapper usersMapper) {
        this.usersRepository = usersRepository;
        this.usersMapper = usersMapper;
    }

    @Override
    @Transactional
    public UserDetailsResponseDto createUserProfile(UserCreateRequestDto createRequestDto) {
        User user = usersMapper.toUsers(createRequestDto);
        user = usersRepository.save(user);

        return usersMapper.toUserProfileDetailsResponseDto(user);
    }

    @Override
    public UserResponseDto getUserProfile(String username) {
        User user = usersRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        return usersMapper.toUserProfileResponseDto(user);
    }

    @Override
    public UserDetailsResponseDto getUserProfileDetails(String username) {
        User user = usersRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        return usersMapper.toUserProfileDetailsResponseDto(user);
    }

    @Override
    @Transactional
    public UserDetailsResponseDto updateUserProfile(String username, UserUpdateRequestDto updateRequestDto) {
        User users = usersRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        usersMapper.updateUserFromDto(updateRequestDto, users);

        return usersMapper.toUserProfileDetailsResponseDto(users);
    }

}
