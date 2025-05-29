package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.PresignedUrlResponseDto;
import com.okestudio.booking.service.FileService;

@RestController
@RequestMapping("/api/v1/files")
public class FileResource {

    private final FileService fileService;

    public FileResource(FileService fileService) {
        this.fileService = fileService;
    }

    @GetMapping("/link/{fileName}")
    public ResponseEntity<PresignedUrlResponseDto> generateUploadLink(@PathVariable String fileName) throws Exception {
        return ResponseEntity.ok(fileService.generateUploadLink(fileName));
    }
}
