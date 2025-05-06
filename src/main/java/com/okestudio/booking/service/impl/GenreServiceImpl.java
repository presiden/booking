package com.okestudio.booking.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.okestudio.booking.dto.GenreCreateRequestDto;
import com.okestudio.booking.dto.GenreResponseDto;
import com.okestudio.booking.dto.GenreUpdateRequestDto;
import com.okestudio.booking.entity.Genre;
import com.okestudio.booking.mapper.GenreMapper;
import com.okestudio.booking.repository.GenreRepository;
import com.okestudio.booking.service.GenreService;

import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;

@Service
public class GenreServiceImpl implements GenreService{

    private final GenreRepository genreRepository;

    public GenreServiceImpl(GenreRepository genreRepository) {
        this.genreRepository = genreRepository;
    }

    @Transactional
    @Override
    public GenreResponseDto create(GenreCreateRequestDto genreDto) {
        Genre genre = GenreMapper.INSTANCE.toEntity(genreDto);
        Genre savedGenre = genreRepository.save(genre);

        return GenreMapper.INSTANCE.toDto(savedGenre);
    }

    @Transactional
    @Override
    public GenreResponseDto update(Long id, GenreUpdateRequestDto genreDto) {
        Genre genre = findGenreOrThrow(id);
        genre.setName(genreDto.getName());
        genre.setDescription(genreDto.getDescription());
        genre.setIsActive(genreDto.getIsActive());
        Genre updatedGenre = genreRepository.save(genre);

        return GenreMapper.INSTANCE.toDto(updatedGenre);
    }

    @Transactional
    @Override
    public void updateStatus(Long id, boolean active) {
        Genre genre = findGenreOrThrow(id);
        if(genre.getIsActive() == active) {
            return;
        }

        genre.setIsActive(active);
        
        return;
    }

    @Override
    public GenreResponseDto findById(Long id) {
        Genre genre = findGenreOrThrow(id);

        return GenreMapper.INSTANCE.toDto(genre);
    }

    @Override
    public List<GenreResponseDto> findByName(String name) {
        List<Genre> genres = genreRepository.findByNameContainingIgnoreCase(name);
        return GenreMapper.INSTANCE.toDto(genres);
    }

    @Override
    public List<GenreResponseDto> findAll() {
        List<Genre> genres = genreRepository.findAll();
        if (genres.isEmpty()) {
            return List.of();
        }
        List<GenreResponseDto> genreDtos = GenreMapper.INSTANCE.toDto(genres);
        return genreDtos;
    }

    private Genre findGenreOrThrow(Long id) {
        return genreRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Genre not found with id: " + id));
    }

}
