package com.okestudio.booking.specification;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.StringUtils;
import jakarta.persistence.criteria.Predicate;

import com.okestudio.booking.dto.FilmRequestDto;
import com.okestudio.booking.entity.Film;

public class FilmSpecification {
    public static Specification<Film> filter(FilmRequestDto dto) {
        return (root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();

            if (StringUtils.hasText(dto.getTitle())) {
                predicates.add(cb.like(cb.lower(root.get("title")), "%" + dto.getTitle().toLowerCase() + "%"));
            }

            if (dto.getGenreIds() != null && !dto.getGenreIds().isEmpty()) {
                predicates.add(root.get("genre").get("id").in(dto.getGenreIds()));
            }

            if (dto.getDurationMin() != null) {
                predicates.add(cb.greaterThanOrEqualTo(root.get("duration"), dto.getDurationMin()));
            }

            if (dto.getDurationMax() != null) {
                predicates.add(cb.lessThanOrEqualTo(root.get("duration"), dto.getDurationMax()));
            }

            if (dto.getRatingMin() != null) {
                predicates.add(cb.greaterThanOrEqualTo(root.get("rating_average"), dto.getRatingMin()));
            }

            if (dto.getRatingMax() != null) {
                predicates.add(cb.lessThanOrEqualTo(root.get("rating_average"), dto.getRatingMax()));
            }

            if (dto.getReleaseStart() != null) {
                predicates.add(cb.greaterThanOrEqualTo(root.get("release_date"), dto.getReleaseStart()));
            }

            if (dto.getReleaseEnd() != null) {
                predicates.add(cb.lessThanOrEqualTo(root.get("release_date"), dto.getReleaseEnd()));
            }

            return cb.and(predicates.toArray(new Predicate[0]));
        };
    }
}
