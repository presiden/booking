package com.okestudio.booking.dto;

import lombok.Data;

@Data
public class LanguagesResponseDto {
    private Long id;
    private String name;
    private String description;
    private boolean isActive = true;
}
