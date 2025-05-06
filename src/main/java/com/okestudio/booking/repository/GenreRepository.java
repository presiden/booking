package com.okestudio.booking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.okestudio.booking.entity.Genre;

public interface GenreRepository extends JpaRepository<Genre, Long> {
    List<Genre> findByNameContainingIgnoreCase(String name);
}
