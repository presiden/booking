package com.okestudio.booking.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.service.FilmService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
@RequestMapping("/api/v1/films")
public class FilmController {

    private final FilmService filmService;

    public FilmController(FilmService filmService) {
        this.filmService = filmService;
    }

    @GetMapping("/{id}")
    public FilmDetailResponseDto getFilm(@PathVariable Long id) {
        FilmDetailResponseDto result = filmService.getFilmById(id);
        return result;
    }
    
    
}
