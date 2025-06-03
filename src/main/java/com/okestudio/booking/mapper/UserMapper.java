package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValuePropertyMappingStrategy;
import org.mapstruct.factory.Mappers;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserUpdateRequestDto;
import com.okestudio.booking.entity.User;

@Mapper(componentModel = "spring")
public interface UserMapper {
    
    User toUsers(UserCreateRequestDto dto);

    UserResponseDto toUserResponseDto(User entity);

    UserDetailsResponseDto toUserDetailsResponseDto(User entity);
    
    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    void updateUserFromDto(UserUpdateRequestDto dto, @MappingTarget User user);

}
