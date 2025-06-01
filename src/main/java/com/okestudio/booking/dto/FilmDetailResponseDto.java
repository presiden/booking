package com.okestudio.booking.dto;

import java.time.LocalDateTime;
import java.util.Set;

public record FilmDetailResponseDto (
    Long id,
    String title,
    String description,
    Set<GenreResponseDto> genre,
    LanguagesResponseDto languages,
    Set<SubtitleResponseDto> subtitle,
    Integer duration,
    String imagePath,
    String trailerPath,
    LocalDateTime releaseDate,
    String rating){
}

