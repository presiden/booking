package com.okestudio.booking.mapper;

import org.mapstruct.Mapper;

import com.okestudio.booking.dto.ScheduleViewDto;
import com.okestudio.booking.view.ScheduleView;

@Mapper(componentModel = "spring")
public interface ScheduleViewMapper {

    ScheduleViewDto toScheduleViewDto(ScheduleView entity);

}
