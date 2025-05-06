package com.okestudio.util;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

public class PaginationUtil {
    
    public static Sort.Direction getSortDirection(String sortDirection) {
        return "DESC".equalsIgnoreCase(String.valueOf(sortDirection)) ? Sort.Direction.DESC : Sort.Direction.ASC;
    }

    public static Pageable getPageable(int page, int size, String sortBy, String sortDirection) {
        return PageRequest.of(page, size, getSortDirection(sortDirection), sortBy);
    }
    
}