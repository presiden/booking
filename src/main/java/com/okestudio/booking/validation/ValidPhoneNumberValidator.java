package com.okestudio.booking.validation;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import com.okestudio.booking.validation.annotation.ValidPhoneNumber;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class ValidPhoneNumberValidator implements ConstraintValidator<ValidPhoneNumber, String> {

    private static final String PHONE_NUMBER_PATTERN = "^08[0-9]{8,13}$";

    @Override
    public boolean isValid(String phoneNumber, ConstraintValidatorContext context) {
        return Pattern.matches(PHONE_NUMBER_PATTERN, phoneNumber);
    }

}
