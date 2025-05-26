package com.okestudio.booking.dto;

import java.util.List;

import lombok.Data;

@Data
public class FilmResponseDto {
    Long id;
    String title;
    String rating;
    List<GenreResponseDto> genres;
    String imagePath;
}
