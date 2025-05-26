package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.FilmRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.service.FilmService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/api/v1/films")
public class FilmController {

    private final FilmService filmService;

    public FilmController(FilmService filmService) {
        this.filmService = filmService;
    }

    // @GetMapping
    // public ResponseEntity<ResultPageResponseDto<FilmResponseDto>> getFilms(
    //         @RequestParam(defaultValue = "0") int page,
    //         @RequestParam(defaultValue = "10") int size,
    //         @RequestParam(defaultValue = "id") String sortBy,
    //         @RequestParam(defaultValue = "ASC") String sortDirection,
    //         FilmRequestDto dto) {
    //     ResultPageResponseDto<FilmResponseDto> result = filmService.getFilms(page, size, sortBy, sortDirection, dto);
    //     return ResponseEntity.ok(result);
    // }

    @GetMapping("/{id}")
    public FilmDetailResponseDto getFilm(@PathVariable Long id) {
        FilmDetailResponseDto result = filmService.getFilmById(id);
        return result;
    }
    
    
}
