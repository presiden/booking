package com.okestudio.booking.service;

import org.springframework.web.multipart.MultipartFile;

import com.okestudio.booking.dto.PresignedUrlResponseDto;

public interface FileService {

    public void uploadFile(MultipartFile file) throws Exception;

    public PresignedUrlResponseDto generateUploadLink(String fileName) throws Exception;

    public PresignedUrlResponseDto generateDownloadLink(String fileName) throws Exception;
    
}
