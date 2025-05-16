package com.okestudio.booking;

import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.okestudio.booking.entity.Genre;
import com.okestudio.booking.repository.GenreRepository;

@SpringBootTest
public class GenreRepositoryTest {

    @Autowired
    private GenreRepository genreRepository;

    @Test
    void testGetAllGenres() {
        // Implement the test logic here
        // For example, you can use Mockito to mock the GenreRepository and test the method
        // that retrieves all genres.
        // Example:
        // GenreRepository genreRepository = Mockito.mock(GenreRepository.class);
        // Mockito.when(genreRepository.findAll()).thenReturn(List.of(new Genre("Action"), new Genre("Drama")));
        List<Genre> genres = genreRepository.findAll();
        Assertions.assertEquals(10, genres.size());
        // Assertions.assertEquals("Action", genres.get(0).getName());      
        
    }

}
