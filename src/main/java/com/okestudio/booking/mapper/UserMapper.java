package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.entity.User;

@Mapper(componentModel = "spring")
public interface UserMapper {
    
    User toUsers(UserCreateRequestDto dto);

    UserDetailsResponseDto toUserProfileDetailsResponseDto(User entity);

}
