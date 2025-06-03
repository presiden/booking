package com.okestudio.booking.service;

import com.okestudio.booking.dto.PresignedUrlResponseDto;

public interface FileService {

    public PresignedUrlResponseDto generateUploadLink(String fileName) throws Exception;

    public PresignedUrlResponseDto generateDownloadLink(String fileName) throws Exception;
    
}
