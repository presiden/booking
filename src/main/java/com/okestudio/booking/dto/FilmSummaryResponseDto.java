package com.okestudio.booking.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class FilmSummaryResponseDto {
    Long id;
    String title;
    BigDecimal ratingAverage;
    LocalDateTime releaseDate;
    String imagePath;
}
