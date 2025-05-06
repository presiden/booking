package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import com.okestudio.booking.dto.TheaterResponseDto;
import com.okestudio.booking.entity.Theater;

@Mapper
public interface TheaterMapper {
    TheaterMapper INSTANCE = Mappers.getMapper(TheaterMapper.class);

    TheaterResponseDto toDTO(Theater theater);
    Theater toEntity(TheaterResponseDto theaterDTO);
}
