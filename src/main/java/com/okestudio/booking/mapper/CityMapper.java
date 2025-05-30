package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;

import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.entity.City;

@Mapper(componentModel = "spring")
public interface CityMapper {

    CityResponseDto toCityResponseDto(City entity);

}
