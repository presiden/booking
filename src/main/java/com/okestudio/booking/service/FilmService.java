package com.okestudio.booking.service;

import com.okestudio.booking.dto.FilmDetailResponseDto;

public interface FilmService {

    public FilmDetailResponseDto getFilmById(Long id);

}
