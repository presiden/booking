package com.okestudio.booking.service;

import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;

public interface CityService {

    public ResultPageResponseDto<CityResponseDto> getAllCities(String name, Integer page, Integer size);
         
}
