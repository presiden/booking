package com.okestudio.booking.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import com.okestudio.booking.dto.GenreCreateRequestDto;
import com.okestudio.booking.dto.GenreResponseDto;
import com.okestudio.booking.entity.Genre;

@Mapper
public interface GenreMapper {

    GenreMapper INSTANCE = Mappers.getMapper(GenreMapper.class);

    GenreResponseDto toDto(Genre theater);
    
    Genre toEntity(GenreCreateRequestDto genreDto);

    List<GenreResponseDto> toDto(List<Genre> theater);

    List<Genre> toEntity(List<GenreResponseDto> genreDto);

}
