package com.okestudio.booking.service.impl;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.entity.City;
import com.okestudio.booking.mapper.CityMapper;
import com.okestudio.booking.repository.CityRepository;
import com.okestudio.booking.service.CityService;
import com.okestudio.util.PaginationUtil;

@Service
public class CityServiceImpl implements CityService {

    private final CityRepository cityRepository;
    private final CityMapper cityMapper;

    public CityServiceImpl(
            CityRepository cityRepository,
            CityMapper cityMapper) {
        this.cityRepository = cityRepository;
        this.cityMapper = cityMapper;
    }

    @Override
    public ResultPageResponseDto<CityResponseDto> getAllCities(String name, Integer page, Integer size) {
        Sort sort = Sort.by(Sort.Order.asc("name"));
        Pageable pageable = PaginationUtil.getPageable(page, size, sort);
        Page<City> citiesPage;

        if(name == null || name.isBlank()) {
            citiesPage = cityRepository.findAll(pageable);
        } else {
            citiesPage = cityRepository.findByNameContainingIgnoreCase(name, pageable);
        }

        List<CityResponseDto> dtoList = citiesPage
            .map(cityMapper::toCityResponseDto)
            .getContent();

        return new ResultPageResponseDto<>(dtoList, citiesPage.getTotalElements(), citiesPage.getTotalPages(),
                citiesPage.getSize(), citiesPage.getNumber());
    }
}
