package com.okestudio.booking.service.impl;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Shows;
import com.okestudio.booking.entity.Film;
import com.okestudio.booking.entity.Theater;
import com.okestudio.booking.entity.TheaterRoom;
import com.okestudio.booking.repository.ShowsRepository;
import com.okestudio.booking.service.ShowsService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class ShowsServiceImpl implements ShowsService {

    // private final ShowsRepository showsRepository;

    // @Override
    // public Shows save(Shows show) {
    //     return showsRepository.save(show);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Shows> findAll() {
    //     return showsRepository.findAll();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Optional<Shows> findById(Long id) {
    //     return showsRepository.findById(id);
    // }

    // @Override
    // public Shows update(Shows show) {
    //     return showsRepository.save(show);
    // }

    // @Override
    // public void deleteById(Long id) {
    //     showsRepository.deleteById(id);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Shows> findByDate(LocalDate date) {
    //     return showsRepository.findAll().stream()
    //             .filter(show -> show.getDate().equals(date))
    //             .toList();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Shows> findByFilm(Film film) {
    //     return showsRepository.findAll().stream()
    //             .filter(show -> show.getFilm().equals(film))
    //             .toList();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Shows> findByTheater(Theater theater) {
    //     return showsRepository.findAll().stream()
    //             .filter(show -> show.getTheater().equals(theater))
    //             .toList();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Shows> findByTheaterRoom(TheaterRoom theaterRoom) {
    //     return showsRepository.findAll().stream()
    //             .filter(show -> show.getTheaterRoom().equals(theaterRoom))
    //             .toList();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Shows> findByDateAndTheater(LocalDate date, Theater theater) {
    //     return showsRepository.findAll().stream()
    //             .filter(show -> show.getDate().equals(date) && 
    //                     show.getTheater().equals(theater))
    //             .toList();
    // }
}