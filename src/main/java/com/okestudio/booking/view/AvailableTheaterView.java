package com.okestudio.booking.view;

import java.util.List;
import java.util.Set;

import org.hibernate.annotations.Immutable;

import com.okestudio.booking.converter.GenreListConverter;
import com.okestudio.booking.dto.GenreResponseDto;

import jakarta.persistence.Column;
import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Getter
@Entity
@Table(name = "available_theater_view")
@Immutable
public class AvailableTheaterView {

    @Id
    @Column(name = "theater_id", nullable = false)
    private Long theaterId;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "city_id", nullable = false)
    private Long cityId;

}
