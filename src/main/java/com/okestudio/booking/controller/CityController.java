package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.AvailableFilmsDto;

import com.okestudio.booking.dto.CityResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.service.CityService;

@RestController
@RequestMapping("/api/v1/cities")
public class CityController {

    private final CityService cityService;

    public CityController(CityService cityService) {
        this.cityService = cityService;
    }
    
    @GetMapping
    public ResponseEntity<ResultPageResponseDto<CityResponseDto>> getAllCities(
            @RequestParam(required = false) String name,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        ResultPageResponseDto<CityResponseDto> dto = cityService.getAllCities(name, page, size);
        return ResponseEntity.ok(dto);
    }

    @GetMapping("/{cityId}/films")
    public ResponseEntity<ResultPageResponseDto<AvailableFilmsDto>> getFilmsByCityAndTitle(@PathVariable Long cityId,
            @RequestParam(required = false) String title,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "title") String sortBy,
            @RequestParam(defaultValue = "ASC") String sortDirection) {
        ResultPageResponseDto<AvailableFilmsDto> dto = cityService.getFilmsByCityAndTitle(cityId, title, page, size, sortBy,
                sortDirection);
        return ResponseEntity.ok(dto);
    }

}
