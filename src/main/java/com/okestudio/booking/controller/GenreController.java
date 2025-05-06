package com.okestudio.booking.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.GenreCreateRequestDto;
import com.okestudio.booking.dto.GenreResponseDto;
import com.okestudio.booking.dto.GenreUpdateRequestDto;
import com.okestudio.booking.service.GenreService;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/api/v1/genres")
public class GenreController {

    private final GenreService genreService;
    
    public GenreController(GenreService genreService) {
        this.genreService = genreService;
    }

    @PostMapping
    public ResponseEntity<GenreResponseDto> createGenre(@RequestBody GenreCreateRequestDto dto) { 
        GenreResponseDto createdGenre = genreService.create(dto);
        return ResponseEntity.status(201).body(createdGenre);
    }

    @PutMapping("/{id}")
    public ResponseEntity<GenreResponseDto> updateGenre(@PathVariable Long id, @RequestBody GenreUpdateRequestDto dto) {
        GenreResponseDto updatedGenre = genreService.update(id, dto);
        return ResponseEntity.ok(updatedGenre);
    }

    @PatchMapping("/{id}/status")
    public ResponseEntity<Void> updateGenreStatus(@PathVariable Long id, @RequestParam boolean active) {
        genreService.updateStatus(id, active);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}")
    public ResponseEntity<GenreResponseDto> getGenreById(@PathVariable Long id) {
        GenreResponseDto genre = genreService.findById(id);
        return ResponseEntity.ok(genre);
    }
    
    @GetMapping
    public ResponseEntity<List<GenreResponseDto>> getAllGenres() {
        List<GenreResponseDto> genres = genreService.findAll();
        return ResponseEntity.ok(genres);
    }

}
