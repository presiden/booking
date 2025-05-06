package com.okestudio.booking.service;

import java.util.List;
import java.util.Optional;
import com.okestudio.booking.entity.Person;

public interface PersonService {
    Person save(Person person);
    List<Person> findAll();
    Optional<Person> findById(Long id);
    Person update(Person person);
    void deleteById(Long id);
    Person findByName(String name);
    List<Person> findByWriterTrue();
    List<Person> findByDirectorTrue();
    List<Person> findByStarTrue();
}