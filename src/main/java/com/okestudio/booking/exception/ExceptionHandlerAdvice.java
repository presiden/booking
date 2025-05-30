package com.okestudio.booking.exception;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
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
        for (ObjectError error : ex.getBindingResult().getAllErrors()) {
            details.add(error.getDefaultMessage());
        }

        ErrorMessageDto dto = new ErrorMessageDto(
                HttpStatus.BAD_REQUEST.value(),
                details);

        return ResponseEntity.badRequest().body(dto);
    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ErrorMessageDto> handleRuntimeException(RuntimeException ex) {
        List<String> errors = new ArrayList<>();
        errors.add(ex.getMessage());

        ErrorMessageDto dto = new ErrorMessageDto(
                HttpStatus.INTERNAL_SERVER_ERROR.value(),
                errors);

        return new ResponseEntity<>(dto, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(NoSuchElementException.class)
    public ResponseEntity<ErrorMessageDto> handleNoSuchElementException(NoSuchElementException ex) {
        List<String> errors = new ArrayList<>();
        errors.add(ex.getMessage());

        ErrorMessageDto dto = new ErrorMessageDto(
                HttpStatus.NOT_FOUND.value(),
                errors);

        return new ResponseEntity<>(dto, HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(DataIntegrityViolationException.class)
    public ResponseEntity<ErrorMessageDto> handleDataIntegrityViolation(DataIntegrityViolationException ex) {
        String message = ex.getRootCause() != null ? ex.getRootCause().getMessage() : ex.getMessage();

        List<String> errors = new ArrayList<>();
        errors.add(message);

        ErrorMessageDto dto = new ErrorMessageDto(
                HttpStatus.NOT_FOUND.value(),
                errors);

        return new ResponseEntity<>(dto, HttpStatus.CONFLICT);
    }
}
