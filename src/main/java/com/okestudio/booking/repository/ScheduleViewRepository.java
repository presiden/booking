package com.okestudio.booking.repository;

import java.time.LocalDate;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.view.ScheduleView;

public interface ScheduleViewRepository extends JpaRepository<ScheduleView, Long>{
    Page<ScheduleView> findByCityIdAndFilmIdAndShowDate(Long cityId, Long filmId, LocalDate showDate, Pageable pageable);
}
