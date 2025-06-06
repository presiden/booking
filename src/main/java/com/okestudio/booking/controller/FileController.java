package com.okestudio.booking.controller;

import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.PresignedUrlResponseDto;
import com.okestudio.booking.service.FileService;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController
@RequestMapping("/api/v1/files")
public class FileController {

    private final FileService fileService;

    public FileController(FileService fileService) {
        this.fileService = fileService;
    }

    @GetMapping("/upload/{fileName}")
    public ResponseEntity<PresignedUrlResponseDto> generateUploadLink(@PathVariable String fileName) throws Exception {
        return ResponseEntity.ok(fileService.generateUploadLink(fileName));
    }

    @GetMapping("/download/{fileName}")
    public ResponseEntity<PresignedUrlResponseDto> generateDownloadLink(@PathVariable String fileName) throws Exception {
        return ResponseEntity.ok(fileService.generateDownloadLink(fileName));
    }

}
