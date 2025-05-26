package com.okestudio.booking.service.impl;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.AvailableFilmsDto;
import com.okestudio.booking.dto.AvailableTheaterDto;
import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.dto.ScheduleViewDto;
import com.okestudio.booking.mapper.AvailableFilmMapper;
import com.okestudio.booking.mapper.AvailableTheaterMapper;
import com.okestudio.booking.mapper.ScheduleViewMapper;
import com.okestudio.booking.mapper.CityMapper;
import com.okestudio.booking.repository.AvailableFilmViewRepository;
import com.okestudio.booking.repository.AvailableTheaterViewRepository;
import com.okestudio.booking.repository.CityRepository;
import com.okestudio.booking.repository.ScheduleViewRepository;
import com.okestudio.booking.service.CityService;
import com.okestudio.booking.view.AvailableFilmView;
import com.okestudio.booking.view.AvailableTheaterView;
import com.okestudio.booking.view.ScheduleView;
import com.okestudio.util.PaginationUtil;

@Service
public class CityServiceImpl implements CityService {

    private final CityRepository cityRepository;
    private final CityMapper cityMapper;
    private final AvailableFilmViewRepository availableFilmViewRepository;
    private final AvailableFilmMapper availableFilmsMapper;
    private final AvailableTheaterViewRepository availableTheaterViewRepository;
    private final AvailableTheaterMapper availableTheaterMapper;
    private final ScheduleViewRepository scheduleViewRepository;
    private final ScheduleViewMapper scheduleViewMapper;

    public CityServiceImpl(
            CityRepository cityRepository,
            CityMapper cityMapper,
            AvailableFilmViewRepository availableFilmViewRepository,
            AvailableFilmMapper availableFilmsMapper,
            AvailableTheaterViewRepository availableTheaterViewRepository,
            AvailableTheaterMapper availableTheaterMapper,
            ScheduleViewRepository scheduleViewRepository,
            ScheduleViewMapper scheduleViewMapper) {
        this.cityRepository = cityRepository;
        this.cityMapper = cityMapper;
        this.availableFilmViewRepository = availableFilmViewRepository;
        this.availableFilmsMapper = availableFilmsMapper;
        this.availableTheaterViewRepository = availableTheaterViewRepository;
        this.availableTheaterMapper = availableTheaterMapper;
        this.scheduleViewRepository = scheduleViewRepository;
        this.scheduleViewMapper = scheduleViewMapper;
    }

    @Override
    public List<CityResponseDto> getAllCities() {
        return cityRepository.findAllByIsActiveTrue()
                .stream()
                .map(cityMapper::toCityResponseDto)
                .toList();
    }

    @Override
    public ResultPageResponseDto<AvailableFilmsDto> getFilmsByCityAndTitle(Long cityId, String title, Integer page, Integer size,
            String sortBy, String sortDirection) {
        Pageable pageable = PaginationUtil.getPageable(page, size, sortBy, sortDirection);

        Page<AvailableFilmView> availableFilms;
        if(title == null || title.isBlank()) {
            availableFilms = availableFilmViewRepository.findByCityId(cityId, pageable);
        } else {
            availableFilms = availableFilmViewRepository.findByCityIdAndTitleContaining(cityId, title, pageable);
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
            availableTheater = availableTheaterViewRepository.findByCityIdAndNameContaining(cityId, name, pageable);
        }

        List<AvailableTheaterDto> dtoList = availableTheater
            .map(availableTheaterMapper::toAvailableTheaterDto)
            .getContent();

        return new ResultPageResponseDto<>(dtoList, availableTheater.getTotalElements(), availableTheater.getTotalPages(),
                availableTheater.getSize(), availableTheater.getNumber());
    }

    @Override
    public ResultPageResponseDto<ScheduleViewDto> getScheduleByCityAndFilmAndShowDate(Long cityId, Long filmId,
            String showDate, Integer page, Integer size) {
        Pageable pageable = PaginationUtil.getPageable(page, size, "theaterName", "ASC");
        LocalDate showDateParsed = parseDate(showDate);

        Page<ScheduleView> scheduleView = scheduleViewRepository.findByCityIdAndFilmIdAndShowDate(cityId, filmId, showDateParsed, pageable);

        List<ScheduleViewDto> dtoList = scheduleView
            .map(scheduleViewMapper::toScheduleViewDto)
            .getContent();

        return new ResultPageResponseDto<>(dtoList, scheduleView.getTotalElements(), scheduleView.getTotalPages(),
                scheduleView.getSize(), scheduleView.getNumber());
    }

    private LocalDate parseDate(String dateString) {
        if (dateString == null) {
            return LocalDate.now();
        }
        
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        try {
            return LocalDate.parse(dateString, formatter);
        } catch (DateTimeParseException e) {
            return LocalDate.now();
        }
    }

}
