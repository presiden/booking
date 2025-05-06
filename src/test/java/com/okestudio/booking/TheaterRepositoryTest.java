package com.okestudio.booking;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import lombok.Builder;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
// import org.springframework.test.context.TestPropertySource;

import com.okestudio.booking.dto.TheaterResponseDto;
import com.okestudio.booking.entity.Theater;
import com.okestudio.booking.mapper.TheaterMapper;
import com.okestudio.booking.repository.TheaterRepository;

@Slf4j
@ActiveProfiles("test")
@SpringBootTest
// @TestPropertySource(properties = {
// "spring.datasource.url=jdbc:postgresql://localhost:5432/booking_test",
// "spring.jpa.hibernate.ddl-auto=create-drop"
// })
public class TheaterRepositoryTest {

    @Autowired
    private TheaterRepository theaterRepository;

    private Theater theater1;
    private Theater theater2;

    @BeforeEach
    void setUp() {
        theater1 = new Theater();
        theater1.setName("CGV Grand Indonesia");
        theater1.setCode("CGV01");
        theater1.setEmail("cgv.gi@cgv.com");
        theater1.setPhone("021-12345678");
        theater1.setImagePath("/images/theaters/cgv-gi.jpg");

        theater2 = new Theater();
        theater2.setName("CGV Pacific Place");
        theater2.setCode("CGV02");
        theater2.setEmail("cgv.pp@cgv.com");
        theater2.setPhone("021-87654321");
        theater2.setImagePath("/images/theaters/cgv-pp.jpg");
    }

    @Test
    void testSaveTheater() {
        // Save the theater
        Theater savedTheater = theaterRepository.save(theater1);
        log.info("testSaveTheater {}", theater1);
        // TheaterDTO dto = TheaterMapper.INSTANCE.toDTO(savedTheater);

        // Verify the saved theater
        assertNotNull(savedTheater.getId());
        assertEquals("CGV Grand Indonesia", savedTheater.getName());
        assertEquals("CGV01", savedTheater.getCode());
        assertEquals("cgv.gi@cgv.com", savedTheater.getEmail());
        assertEquals("021-12345678", savedTheater.getPhone());
        assertEquals("/images/theaters/cgv-gi.jpg", savedTheater.getImagePath());

        // Verify audit fields
        assertNotNull(savedTheater.getCreatedDate());
        assertNotNull(savedTheater.getCreatedBy());
    }

    @Test
    void testFindByName() {
        theaterRepository.save(theater1);
        theaterRepository.save(theater2);

        // Test finding by name
        List<Theater> foundTheaters = theaterRepository.findByName("CGV Pacific Place");
        
        log.info("{}", foundTheaters);

        // Verify the results
        assertEquals(1, foundTheaters.size());
        assertEquals("CGV Pacific Place", foundTheaters.get(0).getName());
        assertEquals("CGV02", foundTheaters.get(0).getCode());
    }

    @Test
    void testUpdateTheater() {
        // Create and save initial theater
        Theater savedTheater = theaterRepository.save(theater1);
        Long theaterId = savedTheater.getId();

        // Update theater details
        savedTheater.setName("CGV Grand Indonesia - Mall");
        savedTheater.setEmail("gi.mall@cgv.com");
        savedTheater.setPhone("021-87654321");

        // Save the updated theater
        Theater updatedTheater = theaterRepository.save(savedTheater);

        // Verify the updates
        assertEquals(theaterId, updatedTheater.getId()); // ID should not change
        assertEquals("CGV Grand Indonesia - Mall", updatedTheater.getName());
        assertEquals("CGV01", updatedTheater.getCode()); // Code remains unchanged
        assertEquals("gi.mall@cgv.com", updatedTheater.getEmail());
        assertEquals("021-87654321", updatedTheater.getPhone());

        // Verify audit fields are updated
        assertNotNull(updatedTheater.getModifiedDate());
        assertNotNull(updatedTheater.getModifiedBy());
        assertEquals(theater1.getCreatedDate(), updatedTheater.getCreatedDate()); // Creation date should not change
    }
}
