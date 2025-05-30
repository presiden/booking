package com.okestudio.booking.mapper;

import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValuePropertyMappingStrategy;

import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserUpdateRequestDto;
import com.okestudio.booking.entity.City;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.entity.User;

@Mapper(componentModel = "spring")
public interface CityMapper {

    CityResponseDto toCityResponseDto(City entity);

}
