package com.okestudio.booking.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.okestudio.booking.view.AvailableFilmView;

public interface AvailableFilmService {

    Page<AvailableFilmView> findAll(Pageable pageable);

    // Page<AvailableFilmsView> findByTitleContaining(String title, Pageable pageable);

}
