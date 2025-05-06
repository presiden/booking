package com.okestudio.booking.service;

import java.util.List;
import java.util.Optional;
import com.okestudio.booking.entity.Languages;

public interface LanguagesService {
    Languages save(Languages language);
    List<Languages> findAll();
    Optional<Languages> findById(Long id);
    Languages update(Languages language);
    void deleteById(Long id);
    Languages findByName(String name);
}