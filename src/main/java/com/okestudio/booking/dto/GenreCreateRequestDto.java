package com.okestudio.booking.dto;

import lombok.Data;

@Data
public class GenreCreateRequestDto {
    private String name;
    private String description;
    private Boolean isActive;
}
