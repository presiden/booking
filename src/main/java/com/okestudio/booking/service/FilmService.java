package com.okestudio.booking.service;

import com.okestudio.booking.dto.FilmRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmSummaryResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;

public interface FilmService {

    public ResultPageResponseDto<FilmSummaryResponseDto> getFilms(Integer page, Integer size, String sortBy, String sortDirection, FilmRequestDto dto);

    public FilmDetailResponseDto getFilmById(Long id);
}
