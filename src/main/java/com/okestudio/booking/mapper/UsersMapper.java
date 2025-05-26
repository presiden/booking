package com.okestudio.booking.mapper;

import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValuePropertyMappingStrategy;
import org.mapstruct.factory.Mappers;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
import com.okestudio.booking.dto.UsersCreateRequestDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;
import com.okestudio.booking.entity.Users;

@Mapper(componentModel = "spring")
public interface UsersMapper {

    UserProfileResponseDto toUserProfileResponseDto(Users entity);

    UserProfileDetailsResponseDto toUserProfileDetailsResponseDto(Users entity);
    
    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    void updateUserFromDto(UsersUpdateRequestDto dto, @MappingTarget Users users);
    
    Users toUsers(UsersCreateRequestDto dto);

}
