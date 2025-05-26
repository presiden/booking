package com.okestudio.booking.mapper;

import java.util.List;

import org.mapstruct.Mapper;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.okestudio.booking.dto.AvailableFilmsDto;
import com.okestudio.booking.view.AvailableFilmView;

@Mapper(componentModel = "spring")
public interface AvailableFilmMapper {

    AvailableFilmsDto toAvailableFilmsDto(AvailableFilmView entity);

}
