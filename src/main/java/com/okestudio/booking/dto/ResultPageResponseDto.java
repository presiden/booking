package com.okestudio.booking.dto;

import java.util.List;

public record ResultPageResponseDto<T>(
        List<T> content,
        Long totalElements,
        Integer totalPages,
        Integer pageSize,
        Integer pageNumber) {
}
