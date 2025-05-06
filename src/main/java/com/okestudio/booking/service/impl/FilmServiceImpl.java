package com.okestudio.booking.service.impl;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.FilmRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmSummaryResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.mapper.FilmMapper;
import com.okestudio.booking.repository.FilmRepository;
import com.okestudio.booking.repository.GenreRepository;
import com.okestudio.booking.service.FilmService;
import com.okestudio.booking.specification.FilmSpecification;
import com.okestudio.util.PaginationUtil;

import jakarta.persistence.EntityNotFoundException;

@Service
public class FilmServiceImpl implements FilmService {

    private final FilmRepository filmRepository;
    private final GenreRepository genreRepository;

    public FilmServiceImpl(FilmRepository filmRepository, GenreRepository genreRepository) {
        this.filmRepository = filmRepository;
        this.genreRepository = genreRepository;
    }

    @Override
    public ResultPageResponseDto<FilmSummaryResponseDto> getFilms(Integer page, Integer size, String sortBy, String sortDirection,
            FilmRequestDto dto) {
        Pageable pageable = PaginationUtil.getPageable(page, size, sortBy, sortDirection);
        Page<Film> films = filmRepository.findAll(FilmSpecification.filter(dto), pageable);
        List<FilmSummaryResponseDto> filmResponseDtos = FilmMapper.INSTANCE.toSummaryDtos(films.getContent());

        return new ResultPageResponseDto<>(filmResponseDtos, films.getTotalElements(), films.getTotalPages(),
                films.getSize(), films.getNumber());
    }

    @Override
    public FilmDetailResponseDto getFilmById(Long id) {
        Film film = findFilmOrThrow(id);

        return FilmMapper.INSTANCE.toDto(film);
    }

    private Film findFilmOrThrow(Long id) {
        return filmRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Film not found with id: " + id));
    }

}
