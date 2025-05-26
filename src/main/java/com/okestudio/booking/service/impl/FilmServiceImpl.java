package com.okestudio.booking.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.FilmRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.mapper.AvailableFilmMapper;
import com.okestudio.booking.mapper.FilmMapper;
import com.okestudio.booking.repository.AvailableFilmViewRepository;
import com.okestudio.booking.repository.FilmRepository;
import com.okestudio.booking.repository.GenreRepository;
import com.okestudio.booking.service.FilmService;
import com.okestudio.booking.specification.FilmSpecification;
import com.okestudio.booking.view.AvailableFilmView;
import com.okestudio.util.PaginationUtil;

import jakarta.persistence.EntityNotFoundException;

@Service
public class FilmServiceImpl implements FilmService {

    private final FilmRepository filmRepository;
    private final GenreRepository genreRepository;
    private final AvailableFilmViewRepository availableFilmViewRepository;
    private final FilmMapper filmMapper;

    public FilmServiceImpl(FilmRepository filmRepository, GenreRepository genreRepository,
            AvailableFilmViewRepository availableFilmViewRepository, FilmMapper filmMapper) {
        this.filmRepository = filmRepository;
        this.genreRepository = genreRepository;
        this.availableFilmViewRepository = availableFilmViewRepository;
        this.filmMapper = filmMapper;
    }

    @Override
    public ResultPageResponseDto<FilmResponseDto> getFilms(Integer page, Integer size, String sortBy,
            String sortDirection,
            FilmRequestDto dto) {
        Pageable pageable = PaginationUtil.getPageable(page, size, sortBy, sortDirection);
        Page<Film> films = filmRepository.findAll(FilmSpecification.filter(dto), pageable);
        List<FilmResponseDto> filmResponseDtos = new ArrayList<>();// =
                                                                   // FilmMapper.INSTANCE.toSummaryDtos(films.getContent());

        return new ResultPageResponseDto<>(filmResponseDtos, films.getTotalElements(), films.getTotalPages(),
                films.getSize(), films.getNumber());
    }

    @Override
    public FilmDetailResponseDto getFilmById(Long id) {
        Film film = filmRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Film not found with id: " + id));

        return filmMapper.toFilmDetailResponseDto(film);
    }

    private Film findFilmOrThrow(Long id) {
        return filmRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Film not found with id: " + id));
    }

    @Override
    public ResultPageResponseDto<AvailableFilmView> getAll(Pageable pageable) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'findAll'");
    }

    @Override
    public ResultPageResponseDto<AvailableFilmView> getByTitleContaining(String title, Pageable pageable) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'findByTitleContaining'");
    }

}
