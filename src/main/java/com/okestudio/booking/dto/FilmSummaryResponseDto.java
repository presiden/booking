package com.okestudio.booking.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class FilmSummaryResponseDto {
    Long id;
    String title;
    String rating;
    LocalDate releaseDate;
    String imagePath;
}
