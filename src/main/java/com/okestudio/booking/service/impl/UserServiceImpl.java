package com.okestudio.booking.service.impl;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
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

}
