package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;

import com.okestudio.booking.dto.AvailableFilmsDto;
import com.okestudio.booking.view.AvailableFilmView;

@Mapper(componentModel = "spring")
public interface AvailableFilmMapper {

    AvailableFilmsDto toAvailableFilmsDto(AvailableFilmView entity);

}
