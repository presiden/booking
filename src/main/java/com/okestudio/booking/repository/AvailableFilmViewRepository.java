package com.okestudio.booking.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.view.AvailableFilmView;


public interface AvailableFilmViewRepository extends JpaRepository<AvailableFilmView, Long> {

    Page<AvailableFilmView> findByCityIdAndTitleContainingIgnoreCase(Long cityId, String title, Pageable pageable);

    Page<AvailableFilmView> findByCityId(Long cityId, Pageable pageable);

}
