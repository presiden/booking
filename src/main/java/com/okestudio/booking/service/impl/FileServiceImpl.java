package com.okestudio.booking.service.impl;

import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.okestudio.booking.config.MinioProperties;
import com.okestudio.booking.dto.PresignedUrlResponseDto;
import com.okestudio.booking.service.FileService;

import io.minio.GetPresignedObjectUrlArgs;
import io.minio.MinioClient;
import io.minio.PutObjectArgs;
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

    @Override
    public PresignedUrlResponseDto generateUploadLink(String fileName) throws Exception {
        String url = minioClient.getPresignedObjectUrl(
                GetPresignedObjectUrlArgs.builder()
                        .bucket(minioProperties.getBucketName())
                        .object("testing/" + fileName)
                        .expiry(10, TimeUnit.MINUTES)
                        .method(Method.PUT)
                        .build());
    
        return new PresignedUrlResponseDto(url, fileName);      
    }

    @Override
    public PresignedUrlResponseDto generateDownloadLink(String fileName) throws Exception {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'generateDownloadLink'");
    }

}
