package com.okestudio.booking.service.impl;

import java.util.NoSuchElementException;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
import com.okestudio.booking.dto.UsersCreateRequestDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;
import com.okestudio.booking.entity.Users;
import com.okestudio.booking.mapper.UsersMapper;
import com.okestudio.booking.repository.UsersRepository;
import com.okestudio.booking.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {

    private final UsersRepository usersRepository;

    private final UsersMapper usersMapper;

    public UsersServiceImpl(UsersRepository usersRepository,
            UsersMapper usersMapper) {
        this.usersRepository = usersRepository;
        this.usersMapper = usersMapper;
    }

    @Override
    public UserProfileDetailsResponseDto createUserProfile(UsersCreateRequestDto createRequestDto) {
        Users user = usersMapper.toUsers(createRequestDto);
        user = usersRepository.save(user);

        return usersMapper.toUserProfileDetailsResponseDto(user);
    }

    @Override
    public UserProfileResponseDto getUserProfile(String username) {
        Users user = usersRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        return usersMapper.toUserProfileResponseDto(user);
    }

    @Override
    public UserProfileDetailsResponseDto getUserProfileDetails(String username) {
        Users user = usersRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        return usersMapper.toUserProfileDetailsResponseDto(user);
    }

    @Override
    public UserProfileDetailsResponseDto updateUserProfile(String username, UsersUpdateRequestDto updateRequestDto) {
        Users users = usersRepository.findByUsername(username)
                .orElseThrow(() -> new NoSuchElementException("User not found with username: " + username));
        usersMapper.updateUserFromDto(updateRequestDto, users);
        usersRepository.save(users);

        return usersMapper.toUserProfileDetailsResponseDto(users);
    }

}
