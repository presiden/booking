package com.okestudio.booking.controller;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.okestudio.booking.dto.PresignedUrlResponseDto;
import com.okestudio.booking.service.FileService;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController
@RequestMapping("/api/v1/files")
public class FileController {

    private final FileService fileService;

    public FileController(FileService fileService) {
        this.fileService = fileService;
    }

    @PostMapping
    public ResponseEntity<Void> uploadFile(@RequestParam("file") MultipartFile file) throws Exception {
        fileService.uploadFile(file);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/upload/{fileName}")
    public ResponseEntity<PresignedUrlResponseDto> generateUploadLink(@PathVariable String fileName) throws Exception {
        return ResponseEntity.ok(fileService.generateUploadLink(fileName));
    }

    @GetMapping("/download/{fileName}")
    public ResponseEntity<PresignedUrlResponseDto> generateDownloadLink(@PathVariable String fileName) throws Exception {
        return ResponseEntity.ok(fileService.generateDownloadLink(fileName));
    }

    @GetMapping("/delete/{fileName}")
    public ResponseEntity<PresignedUrlResponseDto> generateDeleteLink(@PathVariable String fileName) throws Exception {
        return ResponseEntity.ok(fileService.generateDeleteLink(fileName));
    }
}
