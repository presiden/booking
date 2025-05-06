package com.okestudio.booking.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class Film extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String description;

    @ManyToMany
    @JoinTable(
        name = "film_genre",
        joinColumns = @JoinColumn(name = "film_id"),
        inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private Set<Genre> genre;

    @ManyToOne
    @JoinColumn(name = "languages_id")
    private Languages languages;

    @ManyToMany
    @JoinTable(
        name = "film_subtitle",
        joinColumns = @JoinColumn(name = "film_id"),
        inverseJoinColumns = @JoinColumn(name = "subtitle_id")
    )
    private Set<Subtitle> subtitle;

    private Integer duration;

    @ManyToOne
    @JoinColumn(name = "director_id")
    private Person director;

    private String imagePath;

    private String trailerPath;

    private LocalDateTime releaseDate;

    private BigDecimal ratingAverage;

    @ManyToMany
    @JoinTable(
        name = "film_writer",
        joinColumns = @JoinColumn(name = "film_id"),
        inverseJoinColumns = @JoinColumn(name = "writer_id")
    )
    private Set<Person> writers;

    @ManyToMany
    @JoinTable(
        name = "film_star",
        joinColumns = @JoinColumn(name = "film_id"),
        inverseJoinColumns = @JoinColumn(name = "star_id")
    )
    private Set<Person> stars;
}