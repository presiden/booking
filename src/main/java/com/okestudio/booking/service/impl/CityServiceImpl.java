package com.okestudio.booking.service.impl;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.AvailableFilmsDto;
import com.okestudio.booking.dto.AvailableTheaterDto;
import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.entity.City;
import com.okestudio.booking.mapper.AvailableFilmMapper;
import com.okestudio.booking.mapper.AvailableTheaterMapper;
import com.okestudio.booking.mapper.CityMapper;
import com.okestudio.booking.repository.AvailableFilmViewRepository;
import com.okestudio.booking.repository.AvailableTheaterViewRepository;
import com.okestudio.booking.repository.CityRepository;
import com.okestudio.booking.service.CityService;
import com.okestudio.booking.view.AvailableFilmView;
import com.okestudio.booking.view.AvailableTheaterView;
import com.okestudio.util.PaginationUtil;

@Service
public class CityServiceImpl implements CityService {

    private final CityRepository cityRepository;
    private final CityMapper cityMapper;
    private final AvailableFilmViewRepository availableFilmViewRepository;
    private final AvailableFilmMapper availableFilmsMapper;
    private final AvailableTheaterViewRepository availableTheaterViewRepository;
    private final AvailableTheaterMapper availableTheaterMapper;

    public CityServiceImpl(
            CityRepository cityRepository,
            CityMapper cityMapper,
            AvailableFilmViewRepository availableFilmViewRepository,
            AvailableFilmMapper availableFilmsMapper,
            AvailableTheaterViewRepository availableTheaterViewRepository,
            AvailableTheaterMapper availableTheaterMapper) {
        this.cityRepository = cityRepository;
        this.cityMapper = cityMapper;
        this.availableFilmViewRepository = availableFilmViewRepository;
        this.availableFilmsMapper = availableFilmsMapper;
        this.availableTheaterViewRepository = availableTheaterViewRepository;
        this.availableTheaterMapper = availableTheaterMapper;
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

    @Override
    public ResultPageResponseDto<AvailableFilmsDto> getFilmsByCityAndTitle(Long cityId, String title, Integer page, Integer size,
            String sortBy, String sortDirection) {
        Pageable pageable = PaginationUtil.getPageable(page, size, sortBy, sortDirection);

        Page<AvailableFilmView> availableFilms;
        if(title == null || title.isBlank()) {
            availableFilms = availableFilmViewRepository.findByCityId(cityId, pageable);
        } else {
            availableFilms = availableFilmViewRepository.findByCityIdAndTitleContainingIgnoreCase(cityId, title, pageable);
        }

        List<AvailableFilmsDto> dtoList = availableFilms
            .map(availableFilmsMapper::toAvailableFilmsDto)
            .getContent();

        return new ResultPageResponseDto<>(dtoList, availableFilms.getTotalElements(), availableFilms.getTotalPages(),
                availableFilms.getSize(), availableFilms.getNumber());
    }

    @Override
    public ResultPageResponseDto<AvailableTheaterDto> getTheaterByCityAndName(Long cityId, String name, Integer page,
            Integer size, String sortBy, String sortDirection) {
        Pageable pageable = PaginationUtil.getPageable(page, size, sortBy, sortDirection);
        Page<AvailableTheaterView> availableTheater;
        
        if(name == null || name.isBlank()) {
            availableTheater = availableTheaterViewRepository.findByCityId(cityId, pageable);
        } else {
            availableTheater = availableTheaterViewRepository.findByCityIdAndNameContainingIgnoreCase(cityId, name, pageable);
        }

        List<AvailableTheaterDto> dtoList = availableTheater
            .map(availableTheaterMapper::toAvailableTheaterDto)
            .getContent();

        return new ResultPageResponseDto<>(dtoList, availableTheater.getTotalElements(), availableTheater.getTotalPages(),
                availableTheater.getSize(), availableTheater.getNumber());
    }

}
