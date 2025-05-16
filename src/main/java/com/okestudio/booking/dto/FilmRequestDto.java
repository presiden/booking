package com.okestudio.booking.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class FilmRequestDto {

    private String title;
    private List<Long> genreIds;
    private Integer durationMin;
    private Integer durationMax;
    private LocalDateTime releaseStart;
    private LocalDateTime releaseEnd;

}
