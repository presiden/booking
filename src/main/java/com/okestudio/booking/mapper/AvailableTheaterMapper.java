package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;

import com.okestudio.booking.dto.AvailableTheaterDto;
import com.okestudio.booking.view.AvailableTheaterView;

@Mapper(componentModel = "spring")
public interface AvailableTheaterMapper {

    AvailableTheaterDto toAvailableTheaterDto(AvailableTheaterView entity);

}
