package com.okestudio.booking.validation;

import org.springframework.stereotype.Component;

import com.okestudio.booking.repository.UsersRepository;
import com.okestudio.booking.validation.annotation.UniquePhoneNumber;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class UniquePhoneNumberValidator implements ConstraintValidator<UniquePhoneNumber, String> {

    private final UsersRepository usersRepository;

    public UniquePhoneNumberValidator(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public boolean isValid(String phoneNumber, ConstraintValidatorContext context) {
        return !usersRepository.existsByPhoneNumber(phoneNumber);
    }

}
