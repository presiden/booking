package com.okestudio.booking.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Set;

import com.okestudio.booking.entity.Person;

import lombok.Data;

@Data
public class FilmDetailResponseDto {
    
    private Long id;

    private String title;

    private String description;

    private Set<GenreResponseDto> genre;

    private LanguagesResponseDto languages;

    private Set<SubtitleResponseDto> subtitle;

    private Integer duration;

    private Person director;

    private String imagePath;

    private String trailerPath;

    private LocalDateTime releaseDate;

    private BigDecimal ratingAverage;

    private Set<WriterResponseDto> writers;

    private Set<StarResponseDto> stars;

}
