package com.okestudio.booking.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Rating;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.entity.Users;
import com.okestudio.booking.repository.RatingRepository;
import com.okestudio.booking.service.RatingService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class RatingServiceImpl implements RatingService {

    private final RatingRepository ratingRepository;

    // @Override
    // public Rating save(Rating rating) {
    //     return ratingRepository.save(rating);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Rating> findAll() {
    //     return ratingRepository.findAll();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Optional<Rating> findById(Long id) {
    //     return ratingRepository.findById(id);
    // }

    // @Override
    // public Rating update(Rating rating) {
    //     return ratingRepository.save(rating);
    // }

    // @Override
    // public void deleteById(Long id) {
    //     ratingRepository.deleteById(id);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Rating> findByFilm(Film film) {
    //     return ratingRepository.findByFilm(film);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Rating> findByUsers(Users users) {
    //     return ratingRepository.findByUsers(users);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Double getAverageRatingForFilm(Film film) {
    //     List<Rating> ratings = findByFilm(film);
    //     if (ratings.isEmpty()) {
    //         return 0.0;
    //     }
    //     return ratings.stream()
    //             .mapToInt(Rating::getValue)
    //             .average()
    //             .orElse(0.0);
    // }
}