package com.okestudio.booking.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.okestudio.booking.entity.Person;
import com.okestudio.booking.repository.PersonRepository;
import com.okestudio.booking.service.PersonService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class PersonServiceImpl implements PersonService {

    private final PersonRepository personRepository;

    @Override
    public Person save(Person person) {
        return personRepository.save(person);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Person> findAll() {
        return personRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Person> findById(Long id) {
        return personRepository.findById(id);
    }

    @Override
    public Person update(Person person) {
        return personRepository.save(person);
    }

    @Override
    public void deleteById(Long id) {
        personRepository.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Person findByName(String name) {
        return personRepository.findByName(name);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Person> findByWriterTrue() {
        return personRepository.findAll().stream()
                .filter(Person::getWriter)
                .toList();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Person> findByDirectorTrue() {
        return personRepository.findAll().stream()
                .filter(Person::getDirector)
                .toList();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Person> findByStarTrue() {
        return personRepository.findAll().stream()
                .filter(Person::getStar)
                .toList();
    }
}