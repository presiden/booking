package com.okestudio.booking.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Province;
import com.okestudio.booking.repository.ProvinceRepository;
import com.okestudio.booking.service.ProvinceService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class ProvinceServiceImpl implements ProvinceService {

    // private final ProvinceRepository provinceRepository;

    // @Override
    // public Province save(Province province) {
    //     return provinceRepository.save(province);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public List<Province> findAll() {
    //     return provinceRepository.findAll();
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Optional<Province> findById(Long id) {
    //     return provinceRepository.findById(id);
    // }

    // @Override
    // public Province update(Province province) {
    //     return provinceRepository.save(province);
    // }

    // @Override
    // public void deleteById(Long id) {
    //     provinceRepository.deleteById(id);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Province findByName(String name) {
    //     return provinceRepository.findByName(name);
    // }

    // @Override
    // @Transactional(readOnly = true)
    // public Province findByCountry(String country) {
    //     return provinceRepository.findByCountry(country);
    // }
}