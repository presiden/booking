package com.okestudio.booking.view;

import org.hibernate.annotations.Immutable;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Getter
@Entity
@Table(name = "available_film_view")
@Immutable
public class AvailableFilmView {

    @Id
    @Column(name = "film_id", nullable = false)
    private Long filmId;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "image_path", nullable = false)
    private String imagePath;

    @Column(name = "rating", nullable = true)
    private String rating;

    @Column(name = "city_id", nullable = false)
    private Long cityId;
    
    @Column(name = "genres", nullable = false)
    private String genres;

}
