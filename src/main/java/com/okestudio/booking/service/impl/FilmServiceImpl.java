package com.okestudio.booking.service.impl;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.mapper.FilmMapper;
import com.okestudio.booking.repository.AvailableFilmViewRepository;
import com.okestudio.booking.repository.FilmRepository;
import com.okestudio.booking.repository.GenreRepository;
import com.okestudio.booking.service.FilmService;

import jakarta.persistence.EntityNotFoundException;

@Service
public class FilmServiceImpl implements FilmService {

    private final FilmRepository filmRepository;
    private final FilmMapper filmMapper;

    public FilmServiceImpl(FilmRepository filmRepository, GenreRepository genreRepository,
            AvailableFilmViewRepository availableFilmViewRepository, FilmMapper filmMapper) {
        this.filmRepository = filmRepository;
        this.filmMapper = filmMapper;
    }

    @Override
    public FilmDetailResponseDto getFilmById(Long id) {
        Film film = filmRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Film not found with id: " + id));

        return filmMapper.toFilmDetailResponseDto(film);
    }

}
