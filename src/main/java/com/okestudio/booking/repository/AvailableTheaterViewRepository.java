package com.okestudio.booking.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.okestudio.booking.view.AvailableTheaterView;


public interface AvailableTheaterViewRepository extends JpaRepository<AvailableTheaterView, Long> {

    Page<AvailableTheaterView> findByCityIdAndNameContainingIgnoreCase(Long cityId, String title, Pageable pageable);

    Page<AvailableTheaterView> findByCityId(Long cityId, Pageable pageable);

}
