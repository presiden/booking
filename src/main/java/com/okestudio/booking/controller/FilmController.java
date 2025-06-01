package com.okestudio.booking.controller;

import java.net.URI;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.okestudio.booking.dto.FilmRequestDto;
import com.okestudio.booking.dto.FilmCreateRequestDto;
import com.okestudio.booking.dto.FilmDetailResponseDto;
import com.okestudio.booking.dto.FilmResponseDto;
import com.okestudio.booking.dto.ResultPageResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.service.FilmService;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/api/v1/films")
public class FilmController {

    private final FilmService filmService;

    public FilmController(FilmService filmService) {
        this.filmService = filmService;
    }

    @PostMapping
    public ResponseEntity<FilmDetailResponseDto> createUser(@RequestBody @Valid FilmCreateRequestDto dto) {
        FilmDetailResponseDto filmDetails = filmService.createFilm(dto);
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(filmDetails.id())
                .toUri();

        return ResponseEntity.created(location).body(filmDetails);
    } 

    @GetMapping("/{id}")
    public ResponseEntity<FilmDetailResponseDto> getFilm(@PathVariable Long id) {
        FilmDetailResponseDto result = filmService.getFilmById(id);
        return ResponseEntity.ok(result);
    }
    
    
}
