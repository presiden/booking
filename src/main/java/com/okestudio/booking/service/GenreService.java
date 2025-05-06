package com.okestudio.booking.service;

import java.util.List;

import com.okestudio.booking.dto.GenreCreateRequestDto;
import com.okestudio.booking.dto.GenreResponseDto;
import com.okestudio.booking.dto.GenreUpdateRequestDto;

public interface GenreService {
    GenreResponseDto create(GenreCreateRequestDto genreDto);
    GenreResponseDto update(Long id, GenreUpdateRequestDto genreDto);
    void updateStatus(Long id, boolean active);
    GenreResponseDto findById(Long id);
    List<GenreResponseDto> findByName(String name);
    List<GenreResponseDto> findAll();
}
