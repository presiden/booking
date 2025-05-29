package com.okestudio.booking.validation;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import com.okestudio.booking.validation.annotation.ValidUsername;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class ValidUsernameValidator implements ConstraintValidator<ValidUsername, String> {

    private static final String USERNAME_PATTERN = "^[a-zA-Z0-9_.]+$";

    @Override
    public boolean isValid(String username, ConstraintValidatorContext context) {
        return Pattern.matches(USERNAME_PATTERN, username);
    }

}
