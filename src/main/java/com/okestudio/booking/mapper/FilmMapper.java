package com.okestudio.booking.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import com.okestudio.booking.dto.FilmCreateRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmSummaryResponseDto;
import com.okestudio.booking.entity.Film;

@Mapper
public interface FilmMapper {
    FilmMapper INSTANCE = Mappers.getMapper(FilmMapper.class);

    FilmDetailResponseDto toDto(Film entity);
    
    Film toEntity(FilmCreateRequestDto dto);

    List<FilmSummaryResponseDto> toSummaryDtos(List<Film> entities);

    List<Film> toEntities(List<FilmDetailResponseDto> dtos);
    
}
