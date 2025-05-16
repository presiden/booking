package com.okestudio.booking.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class GenreCreateRequestDto {

    @NotBlank
    @Size(min = 1, max = 50)
    private String name;

    private String description;
    
    private Boolean isActive;
}
