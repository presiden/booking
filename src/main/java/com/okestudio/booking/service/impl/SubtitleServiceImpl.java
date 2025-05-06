package com.okestudio.booking.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Subtitle;
import com.okestudio.booking.repository.SubtitleRepository;
import com.okestudio.booking.service.SubtitleService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class SubtitleServiceImpl implements SubtitleService {

    // private final SubtitleRepository subtitleRepository;

    // @Override
    // public Subtitle save(Subtitle subtitle) {
    //     return subtitleRepository.save(subtitle);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Subtitle> findAll() {
    //     return subtitleRepository.findAll();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Optional<Subtitle> findById(Long id) {
    //     return subtitleRepository.findById(id);
    // }

    // @Override
    // public Subtitle update(Subtitle subtitle) {
    //     return subtitleRepository.save(subtitle);
    // }

    // @Override
    // public void deleteById(Long id) {
    //     subtitleRepository.deleteById(id);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Subtitle findByName(String name) {
    //     return subtitleRepository.findByName(name);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Subtitle findByCode(String code) {
    //     return subtitleRepository.findByCode(code);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Subtitle> findByIsActive(Boolean isActive) {
    //     return subtitleRepository.findAll().stream()
    //             .filter(subtitle -> subtitle.getIsActive().equals(isActive))
    //             .toList();
    // }
}