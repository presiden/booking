package com.okestudio.booking.service.impl;

import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Service;

import com.okestudio.booking.config.MinioProperties;
import com.okestudio.booking.dto.PresignedUrlResponseDto;
import com.okestudio.booking.service.FileService;

import io.minio.GetPresignedObjectUrlArgs;
import io.minio.MinioClient;
import io.minio.http.Method;

@Service
public class FileServiceImpl implements FileService {

    private final MinioClient minioClient;
    private final MinioProperties minioProperties;

    public FileServiceImpl(MinioClient minioClient, MinioProperties minioProperties) {
        super();
        this.minioClient = minioClient;
        this.minioProperties = minioProperties;
    }
    @Override
    public PresignedUrlResponseDto generateUploadLink(String fileName) throws Exception {
        String url = minioClient.getPresignedObjectUrl(
                GetPresignedObjectUrlArgs.builder()
                        .bucket(minioProperties.getBucketName())
                        .object(fileName)
                        .expiry(10, TimeUnit.MINUTES)
                        .method(Method.PUT)
                        .build());
    
        return new PresignedUrlResponseDto(url, fileName);      
    }
    
    @Override
    public PresignedUrlResponseDto generateDownloadLink(String fileName) throws Exception {
        String url = minioClient.getPresignedObjectUrl(
                GetPresignedObjectUrlArgs.builder()
                        .bucket(minioProperties.getBucketName())
                        .object(fileName)
                        .expiry(10, TimeUnit.MINUTES)
                        .method(Method.GET)
                        .build());
    
        return new PresignedUrlResponseDto(url, fileName);    
    }
}
