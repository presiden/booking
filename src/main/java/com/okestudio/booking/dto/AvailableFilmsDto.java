package com.okestudio.booking.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AvailableFilmsDto {
    
    private Long filmId;

    private String title;

    private String imagePath;

    private String rating;

    private String genres;
}
