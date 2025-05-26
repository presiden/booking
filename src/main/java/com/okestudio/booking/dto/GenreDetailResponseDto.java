package com.okestudio.booking.dto;

import lombok.Data;

@Data
public class GenreDetailResponseDto {
    private Long id;
    private String name;
    private String description;
    private boolean isActive = true;
}
