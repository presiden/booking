package com.okestudio.booking.exception;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.okestudio.booking.dto.ErrorMessageDto;

@ControllerAdvice
public class ExceptionHandlerAdvice extends ResponseEntityExceptionHandler {
    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request) {

        List<String> details = new ArrayList<>();
        for(ObjectError error: ex.getBindingResult().getAllErrors()) {
            details.add(error.getDefaultMessage());
        }

        ErrorMessageDto dto = new ErrorMessageDto(
                HttpStatus.BAD_REQUEST.value(),
                details
                // "Validation failed: " + String.join(", ", details)
        );

        // List<ErrorMessageDto> errorMessages = ex.getBindingResult().getFieldErrors().stream()
        //         .map(error -> new ErrorMessageDto(
        //                 HttpStatus.BAD_REQUEST.value(),
        //                 error.getField() + ": " + error.getDefaultMessage()))
        //         .collect(Collectors.toList());

        return ResponseEntity.badRequest().body(dto);
    }
}
