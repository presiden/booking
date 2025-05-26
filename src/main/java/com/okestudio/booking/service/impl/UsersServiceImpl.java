package com.okestudio.booking.service.impl;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;
import com.okestudio.booking.entity.Users;
import com.okestudio.booking.mapper.UsersMapper;
import com.okestudio.booking.repository.UsersRepository;
import com.okestudio.booking.service.UsersService;

import jakarta.transaction.Transactional;

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
    public UserProfileResponseDto getUserProfile(Long userId) {
        UserProfileResponseDto dto = usersRepository.findById(userId)
                .map(user -> usersMapper.toUserProfileResponseDto(user))
                .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));
        return dto;
    }

    @Override
    public UserProfileDetailsResponseDto getUserProfileDetails(Long userId) {
        UserProfileDetailsResponseDto dto = usersRepository.findById(userId)
                .map(user -> usersMapper.toUserProfileDetailsResponseDto(user))
                .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));
        return dto;
    }

    @Transactional
    @Override
    public UserProfileDetailsResponseDto updateUserProfile(Long userId, UsersUpdateRequestDto updateRequestDto) {

        Users users = usersRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));
        usersMapper.updateUserFromDto(updateRequestDto, users);

        return usersMapper.toUserProfileDetailsResponseDto(users);
        
    }

}
