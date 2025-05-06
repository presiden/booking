package com.okestudio.booking.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Languages;
import com.okestudio.booking.repository.LanguagesRepository;
import com.okestudio.booking.service.LanguagesService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class LanguagesServiceImpl implements LanguagesService {

    private final LanguagesRepository languagesRepository;

    @Override
    public Languages save(Languages language) {
        return languagesRepository.save(language);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Languages> findAll() {
        return languagesRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Languages> findById(Long id) {
        return languagesRepository.findById(id);
    }

    @Override
    public Languages update(Languages language) {
        return languagesRepository.save(language);
    }

    @Override
    public void deleteById(Long id) {
        languagesRepository.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Languages findByName(String name) {
        return languagesRepository.findByName(name);
    }
}