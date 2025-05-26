package com.okestudio.booking.converter;

import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.okestudio.booking.dto.GenreResponseDto;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = false)
public class GenreListConverter implements AttributeConverter<List<GenreResponseDto>, String> {

    private final ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public String convertToDatabaseColumn(List<GenreResponseDto> attribute) {
        try {
            return objectMapper.writeValueAsString(attribute);
        } catch (JsonProcessingException e) {
            throw new IllegalArgumentException("Could not convert genre list to JSON", e);
        }
    }

    @Override
    public List<GenreResponseDto> convertToEntityAttribute(String dbData) {
        if (dbData == null || dbData.isBlank()) {
            return Collections.emptyList();
        }
        try {
            return objectMapper.readValue(dbData, objectMapper.getTypeFactory().constructCollectionType(List.class, GenreResponseDto.class));
        } catch (JsonProcessingException e) {
            throw new IllegalArgumentException("Could not convert JSON to genre list", e);
        }
    }
}
