package com.okestudio.booking.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.entity.Rating;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.entity.Users;

public interface RatingRepository extends JpaRepository<Rating, Long> {
    
}
