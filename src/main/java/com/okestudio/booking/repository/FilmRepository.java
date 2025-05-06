package com.okestudio.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.okestudio.booking.entity.Film;

public interface FilmRepository extends JpaRepository<Film, Long>, JpaSpecificationExecutor<Film> {
    // Custom query methods can be defined here if needed
    // Film findByTitle(String title);
    // Film findByDirector(String director);
    // Film findByGenre(String genre);
    // Film findByReleaseDate(String releaseDate);

}
