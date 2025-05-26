package com.okestudio.booking.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.okestudio.booking.repository.AvailableFilmViewRepository;
import com.okestudio.booking.service.AvailableFilmService;
import com.okestudio.booking.view.AvailableFilmView;


@Service
public class AvailableFilmImpl implements AvailableFilmService {

    private final AvailableFilmViewRepository availableFilmViewRepository;

    public AvailableFilmImpl(AvailableFilmViewRepository availableFilmsViewRepository) {
        this.availableFilmViewRepository = availableFilmsViewRepository;
    }

    @Override
    public Page<AvailableFilmView> findAll(Pageable pageable) {
        return availableFilmViewRepository.findAll(pageable);
    }

    // @Override
    // public Page<AvailableFilmsView> findByTitleContaining(String title, Pageable pageable) {
    //     return availableFilmsViewRepository.findByCityIdAndTitleContaining(title, pageable);
    // }

}
