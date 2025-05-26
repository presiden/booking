package com.okestudio.booking.mapper;

import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValuePropertyMappingStrategy;

import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UsersCreateRequestDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;
import com.okestudio.booking.entity.City;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.entity.Users;

@Mapper(componentModel = "spring")
public interface CityMapper {

    CityResponseDto toCityResponseDto(City entity);

}
