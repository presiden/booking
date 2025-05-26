package com.okestudio.booking.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import com.okestudio.booking.dto.FilmCreateRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.entity.Film;

@Mapper(componentModel = "spring")
public interface FilmMapper {

    FilmResponseDto toFilmResponseDto(Film entity);

    FilmDetailResponseDto toFilmDetailResponseDto(Film entity);
    
    Film toEntity(FilmCreateRequestDto dto);

    List<FilmResponseDto> toSummaryDtos(List<Film> entities);

    // List<Film> toEntities(List<FilmDetailResponseDto> dtos);
    
}
