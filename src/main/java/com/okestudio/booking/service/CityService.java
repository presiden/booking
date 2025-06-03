package com.okestudio.booking.service;

import com.okestudio.booking.dto.AvailableFilmsDto;
import com.okestudio.booking.dto.AvailableTheaterDto;
import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;

public interface CityService {

    public ResultPageResponseDto<CityResponseDto> getAllCities(String name, Integer page, Integer size);
    
    public ResultPageResponseDto<AvailableFilmsDto> getFilmsByCityAndTitle(Long cityId, String title, Integer page, Integer size,
            String sortBy, String sortDirection);
            
    public ResultPageResponseDto<AvailableTheaterDto> getTheaterByCityAndName(Long cityId, String name, Integer page, Integer size,
            String sortBy, String sortDirection);
    
}
