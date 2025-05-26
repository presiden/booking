package com.okestudio.booking.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.okestudio.booking.config.MinioProperties;
import com.okestudio.booking.service.FileService;

import io.minio.MinioClient;
import io.minio.PutObjectArgs;

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
    public void uploadFile(MultipartFile file) throws Exception {
        // Implement the logic to upload the file to MinIO
        // Use the MinioClient to perform the upload operation
        // Example:
        // minioClient.putObject(bucketName, file.getOriginalFilename(), file.getInputStream(), file.getSize(), null, null, null);
        minioClient.putObject(PutObjectArgs.builder()
                .bucket(minioProperties.getBucketName())
                .object(file.getOriginalFilename())
                .stream(file.getInputStream(), file.getSize(), -1)
                // .contentType(file.getContentType())
                .build());
    }
    // Implement other methods as needed

}
