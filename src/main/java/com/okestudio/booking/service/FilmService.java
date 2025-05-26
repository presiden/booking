package com.okestudio.booking.service;

import com.okestudio.booking.dto.FilmRequestDto;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.view.AvailableFilmView;

public interface FilmService {

    public ResultPageResponseDto<FilmResponseDto> getFilms(Integer page, Integer size, String sortBy, String sortDirection, FilmRequestDto dto);

    public FilmDetailResponseDto getFilmById(Long id);

    ResultPageResponseDto<AvailableFilmView> getAll(Pageable pageable);

    ResultPageResponseDto<AvailableFilmView> getByTitleContaining(String title, Pageable pageable);

}
