package com.okestudio.booking.entity;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.Set;

import com.okestudio.booking.enums.Rating;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "film")
public class Film extends BaseEntity {

    @Column(name = "title", nullable = false, length = 50)
    private String title;

    @Column(name = "description", nullable = true, length = 1024)
    private String description;

    @ManyToMany
    @JoinTable(
        name = "film_genre",
        joinColumns = @JoinColumn(name = "film_id"),
        inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private Set<Genre> genre;

    @ManyToOne
    @JoinColumn(name = "languages_id", nullable = false)
    private Languages languages;

    @ManyToMany
    @JoinTable(
        name = "film_subtitle",
        joinColumns = @JoinColumn(name = "film_id"),
        inverseJoinColumns = @JoinColumn(name = "subtitle_id")
    )
    private Set<Languages> subtitle;

    @Column(name = "duration", nullable = false)
    private Integer duration;

    // @ManyToOne
    // @JoinColumn(name = "director_id", nullable = true)
    // private Person director;

    @Column(name = "image_path", nullable = true, length = 512)
    private String imagePath;

    @Column(name = "trailer_path", nullable = true, length = 512)
    private String trailerPath;

    @Column(name = "release_date", nullable = true)
    private LocalDateTime releaseDate;

    @Column(name = "rating", nullable = true, length = 10)
    private String rating;

    // @ManyToMany
    // @JoinTable(
    //     name = "film_writer",
    //     joinColumns = @JoinColumn(name = "film_id"),
    //     inverseJoinColumns = @JoinColumn(name = "writer_id")
    // )
    // private Set<Person> writers;

    // @ManyToMany
    // @JoinTable(
    //     name = "film_star",
    //     joinColumns = @JoinColumn(name = "film_id"),
    //     inverseJoinColumns = @JoinColumn(name = "star_id")
    // )
    // private Set<Person> stars;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;

}